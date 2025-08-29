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
    parser.add_argument("path", help="Path to the benchmark directory")
    parser.add_argument(
        "arch", help="Expects either compact_layout or square_sparse_layout"
    )
    parser.add_argument("model", help="Name of the semantic model")
    parser.add_argument("count", help="Number of similar mappings")
    parser.add_argument("output", help="Output path of similarity csv")
    args = parser.parse_args()
    num_similar = int(args.count)
    if not os.path.exists(args.path) or not os.path.isdir(args.path):
        print(f"Expected a directory at: {args.path}")
        exit(1)
    dir_path = args.path
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
    qasm_names = [
        file_name
        for file_name in os.listdir(dir_path)
        if str(file_name).endswith(".qasm")
    ]
    qasm_files = [os.path.join(dir_path, file_name) for file_name in qasm_names]
    saved_similar = []
    columns = ["file_names", *[f"similar_{i}" for i in range(num_similar)]]

    for qasm_file_path, qasm_name in zip(qasm_files, qasm_names):
        print(qasm_file_path)
        similar = [qasm_name]
        dascot = dascot_connection.Dascot(3000, 3000)
        circuit = dascot.extract_circuit_from_file(qasm_file_path, arch_type)
        # Similar mappings
        text_embedding = embedder.generate_embedding_from_circuit(asdict(circuit))
        similar_mappings = db.retrieve_similar(text_embedding, num_similar)
        for mapping in similar_mappings:
            # similar.append(mapping[1])
            similar.append(mapping[0])
        saved_similar.append(similar)

    df = pd.DataFrame(saved_similar, columns=columns)
    df.to_csv(args.output, index=False)

    db.close_connection()


if __name__ == "__main__":
    main()
