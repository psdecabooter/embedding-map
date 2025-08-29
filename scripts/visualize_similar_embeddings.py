import os
import json
import numpy as np
import argparse
import pandas as pd
import torch
import umap
import matplotlib.pyplot as plt
from dataclasses import asdict
from embeddings.semantic_embeddings import SemanticEmbeddingGenerator
from similarity_mapping import dascot_connection
from similarity_mapping.db_connection import MappingConnection, ConnectionConfig
from similarity_mapping.types import parse_arch_type

SIMILAR = 10
CONNECTION = ConnectionConfig(
    # host="172.25.208.1",
    host="localhost",
    port=5432,
    user="postgres",
    password="postgres",
    dbname="postgres",
)

def main():
    print("starting")
    parser = argparse.ArgumentParser()
    parser.add_argument("source", help="Source qasm")
    parser.add_argument("target", help="Target qasm")
    parser.add_argument("arch", help="Architecture for embedding")
    parser.add_argument("model", help="Model for embeddings")
    # parser.add_argument("path", help="Path to embeddings json")
    args = parser.parse_args()
    if not str(args.source).endswith(".qasm") or not os.path.exists(args.source):
        print(f"Expected a qasm file at {args.source}")
        exit(1)
    if not str(args.target).endswith(".qasm") or not os.path.exists(args.target):
        print(f"Expected a qasm file at {args.target}")
        exit(1)
    arch_type = parse_arch_type(args.arch)
    if arch_type is None:
        print(
            "Architecture type must either be: square_sparse_layout or compact_layout"
        )
        exit(1)
    model_name = args.model
    # Start connection
    device = "cuda" if torch.cuda.is_available() else "cpu"
    embedder = SemanticEmbeddingGenerator(model_name, device)
    dascot = dascot_connection.Dascot(3000,3000)
    conn = MappingConnection(CONNECTION)
    reducer = umap.UMAP(n_components=2, metric="euclidean", random_state=42)
    plt.figure(figsize=(12, 8))

    # Source
    source_circuit = dascot.extract_circuit_from_file(args.source, arch_type)
    source_embedding = embedder.generate_embedding_from_circuit(asdict(source_circuit))

    # Target
    target_circuit = dascot.extract_circuit_from_file(args.target, arch_type)
    target_embedding = embedder.generate_embedding_from_circuit(asdict(target_circuit))

    # Similar
    def tensorify(element):
        return torch.tensor(json.loads(element))
    # print(json.loads(pd.DataFrame(conn.retrieve_similar(source_embedding, SIMILAR),columns=['name','mapping','embedding_text','embedding'])['embedding'].to_list()[0]))
    similar_mappings = pd.DataFrame(conn.retrieve_similar(source_embedding, SIMILAR),columns=['name','mapping','embedding_text','embedding'])
    similar_embeddings = [tensorify(x) for x in similar_mappings['embedding']]
    print(similar_embeddings)
    # print(list(similar_embeddings)[:5])
    
    # Total data
    data = conn.retrieve_data(['embedding'])
    data_embeddings = [tensorify(x) for x in data['embedding']]
    print(source_embedding.shape, target_embedding.shape, similar_embeddings[0].shape, data_embeddings[0].shape)
    all_data = [source_embedding,target_embedding] + similar_embeddings + data_embeddings
    all_data_2d = reducer.fit_transform(all_data)
    assert isinstance(all_data_2d, np.ndarray)
    conn.close_connection()

    source_2d = all_data_2d[0:1]
    target_2d = all_data_2d[1:2]
    similar_2d = all_data_2d[2:2+SIMILAR]
    data_2d = all_data_2d[2+SIMILAR:]

    # Visualize data
    print(source_2d)
    print(target_2d)
    plt.title('UMAP Projection of Embeddings')
    plt.scatter(data_2d[:, 0], data_2d[:, 1], c="b", s=5)  # type: ignore
    plt.scatter(similar_2d[:, 0], similar_2d[:, 1], c="g", s=5)  # type: ignore
    plt.scatter(target_2d[:, 0], target_2d[:, 1], c="y", s=5)  # type: ignore
    plt.scatter(source_2d[:, 0], source_2d[:, 1], c="r", s=5)  # type: ignore
    plt.show()

if __name__ == "__main__":
    main()
