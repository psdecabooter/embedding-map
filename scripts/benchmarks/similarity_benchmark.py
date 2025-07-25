import pandas as pd
import json
import sys
import os
import torch
from similarity_mapping import dascot_connection, db_connection
from similarity_mapping.similarity_map import SimilarityMapper
from similarity_mapping.types import (
    parse_arch_type,
    Mapping,
    ConnectionConfig,
    parse_mapping_safe,
)
from embeddings.semantic_embeddings import SemanticEmbeddingGenerator
from dataclasses import asdict

CONNECTION = ConnectionConfig(
    host="172.25.208.1",
    port=5432,
    user="postgres",
    password="postgres",
    dbname="postgres",
)
NUM_SIMILAR_MAPPINGS = 5
NUM_ROUTINGS = 5


def main():
    if len(sys.argv) != 5:
        print(
            """Usage: Expects the path of the benchmark file, 
            then the path to the circuits directory,
            then the architecture type,
            then the model name"""
        )
        exit(1)
    file_path = sys.argv[1]
    circuits_directory = sys.argv[2]
    arch_type = parse_arch_type(sys.argv[3])
    if arch_type is None:
        print(
            "Architecture type must either be: square_sparse_layout or compact_layout"
        )
        exit(1)
    print("Start similarity")
    model_name = sys.argv[4]
    benchmark_df = pd.read_csv(file_path)
    best_mappings = []
    route_average = []
    best_map_route_avg = []

    # Start connection
    device = "cuda" if torch.cuda.is_available() else "cpu"
    embedder = SemanticEmbeddingGenerator(model_name, device)
    db = db_connection.MappingConnection(CONNECTION)

    # Run dascot on each circuit
    for circuit in benchmark_df["file_names"]:
        qasm_file_path = os.path.join(circuits_directory, circuit)
        if not os.path.exists(qasm_file_path):
            continue
        dascot = dascot_connection.Dascot(0, 0)
        circuit = dascot.extract_circuit_from_file(qasm_file_path, arch_type)
        # Similar mappings
        text_embedding = embedder.generate_embedding_from_circuit(asdict(circuit))
        similar_mappings = db.retrieve_similar(text_embedding, NUM_SIMILAR_MAPPINGS)
        # Save useful data per file
        routing_sum = 0
        best_routing_avg = len(circuit.gates)
        best_mapping: Mapping | None = None
        for similar_mapping in similar_mappings:
            # Create soft mapping
            similar_mapping = parse_mapping_safe(similar_mapping[0])
            mapper = SimilarityMapper(circuit=circuit, similar_mapping=similar_mapping)
            mapping = mapper.soft_map()
            # Route
            current_routing_sum = 0
            for k in range(NUM_ROUTINGS):
                routing = dascot.route(mapping)
                if routing is None:
                    continue
                routing_sum += len(routing.steps)
                current_routing_sum += len(routing.steps)
            # Check if best mapping
            if best_routing_avg >= (current_routing_sum / NUM_ROUTINGS):
                best_routing_avg = current_routing_sum / NUM_ROUTINGS
                best_mapping = mapping
        # append to data
        assert best_mapping is not None  # Should never fail
        best_mappings.append(json.dumps(best_mapping.map))
        route_average.append(routing_sum / (NUM_ROUTINGS * NUM_SIMILAR_MAPPINGS))
        best_map_route_avg.append(best_routing_avg)

    # Record data
    benchmark_df["similarity_routing_avg"] = route_average
    benchmark_df["similarity_best_mapping"] = best_mappings
    benchmark_df["similarity_best_mapping_route_avg"] = best_map_route_avg
    benchmark_df.to_csv(file_path, index=False)
    db.close_connection()


if __name__ == "__main__":
    main()
