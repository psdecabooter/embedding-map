from dataclasses import asdict
import os

import pandas as pd
import torch
from embeddings.semantic_embeddings import SemanticEmbeddingGenerator
from similarity_mapping import dascot_connection, db_connection
from argparse import ArgumentParser
from similarity_mapping.types import (
    parse_arch_type,
    ConnectionConfig,
)

CONNECTION = ConnectionConfig(
    # host="172.25.208.1",
    host="localhost",
    port=5432,
    user="postgres",
    password="postgres",
    dbname="postgres",
)


def main():
    parser = ArgumentParser(description="A script to find similar mappings")
    parser.add_argument("path", help="Path to the benchmark file")
    parser.add_argument(
        "arch", help="Expects either compact_layout or square_sparse_layout"
    )
    parser.add_argument("model", help="Name of the semantic model")
    parser.add_argument("count", help="Number of similar mappings")
    parser.add_argument("output", help="Output path of similarity csv")
    args = parser.parse_args()
    num_similar = int(args.count)
    if not os.path.exists(args.path) or not str(args.path).endswith('.qasm'):
        print(f"Expected a qasm file at: {args.path}")
        exit(1)
    arch_type = parse_arch_type(args.arch)
    if arch_type is None:
        print(f"Expected compact_layout or square_sparse_layout, not {args.arch}")
        exit(1)
    assert arch_type is not None
    model_name = args.model
    # Start connection
    device = "cuda" if torch.cuda.is_available() else "cpu"
    embedder = SemanticEmbeddingGenerator(model_name, device)
    db = db_connection.MappingConnection(CONNECTION)

    sim_map = []
    sim_embed = []
    dascot = dascot_connection.Dascot(3000, 3000)
    circuit = dascot.extract_circuit_from_file(args.path, arch_type)
    # Similar mappings
    text_embedding = embedder.generate_embedding_from_circuit(asdict(circuit))
    similar_mappings = db.retrieve_similar(text_embedding, num_similar)
    for mapping in similar_mappings:
        sim_map.append(mapping[1])
        sim_embed.append(mapping[3])

    df = pd.DataFrame()
    df['similar_embeddings'] = sim_embed
    df['similar_mappings'] = sim_map
    df.to_csv(args.output, index=False)

    db.close_connection()


if __name__ == "__main__":
    main()
