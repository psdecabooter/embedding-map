from similarity_mapping.src.types import (
    ConnectionConfig,
    parse_mapping_safe,
    parse_circuit_safe,
)
from similarity_mapping.src import db_connection, similarity_map, dascot_connection
from embeddings.src import semantic_embeddings
from dataclasses import asdict
import json
import torch

CONNECTION = ConnectionConfig(
    # host="host.docker.internal",
    # host="localhost",
    # host="0.0.0.0",
    host="172.25.208.1",
    port=5432,
    user="postgres",
    password="postgres",
    dbname="postgres",
)
MODEL_NAME: str = "sentence-transformers/all-MiniLM-L6-v2"


def main():
    device = "cuda" if torch.cuda.is_available() else "cpu"
    embedder = semantic_embeddings.SemanticEmbeddingGenerator(MODEL_NAME, device)
    db = db_connection.MappingConnection(CONNECTION)
    test_embedding = embedder.generate_embedding("./test_mapping.json")
    close_mappings = db.retrieve_similar(test_embedding, 1)
    similar_mapping = parse_mapping_safe(close_mappings[0][0])
    circuit = parse_circuit_safe(close_mappings[0][1])
    mapper = similarity_map.SimilarityMapper(
        circuit=circuit, similar_mapping=similar_mapping
    )
    mapping = mapper.soft_map()
    print(mapping)
    dascot = dascot_connection.Dascot(300, 300)
    routing = dascot.route(mapping)
    assert routing is not None
    print(routing)
    with open("out.json", "w") as f:
        jstr = json.dumps(asdict(routing), indent=4)
        f.write(jstr)

    db.close_connection()


if __name__ == "__main__":
    main()
