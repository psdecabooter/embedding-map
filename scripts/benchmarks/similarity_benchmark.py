import argparse
import pandas as pd
import json
import os
from similarity_mapping import dascot_connection, db_connection
from similarity_mapping.similarity_map import SimilarityMapper
from similarity_mapping.types import (
    parse_arch_type,
    Mapping,
    parse_mapping_safe,
)
from embeddings.semantic_embeddings import SemanticEmbeddingGenerator

NUM_ROUTINGS = 5


def main():
    parser = argparse.ArgumentParser(
        description="A script for creting the benchmark file"
    )
    parser.add_argument("bench", help="Path to the benchmark file")
    parser.add_argument("circuits", help="Path to the circuits directory")
    parser.add_argument(
        "arch", help="Expects either compact_layout or square_sparse_layout"
    )
    parser.add_argument("similar", help="Path to the saved similar mappings per file")
    args = parser.parse_args()
    if not os.path.exists(args.bench):
        print(f"Expected a benchmark file at {args.bench}")
        exit(1)
    if not os.path.exists(args.similar):
        print(f"Expected similar mapping file at {args.similar}")
    if not os.path.exists(args.circuits) or not os.path.isdir(args.circuits):
        print(f"Expected a directory at {args.circuits}")
        exit(1)
    file_path = args.bench
    circuits_directory = args.circuits
    arch_type = parse_arch_type(args.arch)
    if arch_type is None:
        print(
            "Architecture type must either be: square_sparse_layout or compact_layout"
        )
        exit(1)
    similar_df = pd.read_csv(args.similar)
    similar_columns = list(similar_df.columns)[1:]
    num_similar = len(similar_columns)

    print("Start similarity")

    benchmark_df = pd.read_csv(file_path)
    best_mappings = []
    route_average = []
    best_map_route_avg = []

    # Run dascot on each circuit
    for circuit_name in benchmark_df["file_names"]:
        qasm_file_path = os.path.join(circuits_directory, circuit_name)
        if not os.path.exists(qasm_file_path):
            continue
        dascot = dascot_connection.Dascot(3000, 3000)
        circuit = dascot.extract_circuit_from_file(qasm_file_path, arch_type)
        # Similar mappings
        similar_mappings = similar_df.loc[
            similar_df["file_names"] == circuit_name, similar_columns
        ].iloc[0]
        # Save useful data per file
        routing_sum = 0
        best_routing_avg = len(circuit.gates)
        best_mapping: Mapping | None = None
        for _, similar_mapping in similar_mappings.items():
            similar_mapping = str(similar_mapping).replace("'", '"')
            # Create soft mapping
            similar_mapping = parse_mapping_safe(json.loads(similar_mapping))
            mapper = SimilarityMapper(circuit=circuit, similar_mapping=similar_mapping)
            mapping = mapper.soft_map()
            # Route
            current_routing_sum = 0
            for _ in range(NUM_ROUTINGS):
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
        route_average.append(routing_sum / (NUM_ROUTINGS * num_similar))
        best_map_route_avg.append(best_routing_avg)

    # Record data
    benchmark_df["similarity_routing_avg"] = route_average
    benchmark_df["similarity_best_mapping"] = best_mappings
    benchmark_df["similarity_best_mapping_route_avg"] = best_map_route_avg
    benchmark_df.to_csv(file_path, index=False)


if __name__ == "__main__":
    main()
