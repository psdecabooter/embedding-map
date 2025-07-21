from embeddings.src import semantic_embeddings, db_connection
import psycopg
import torch

CONNECTION = db_connection.ConnectionConfig(
    # host="host.docker.internal",
    # host="localhost",
    # host="0.0.0.0",
    host="172.25.208.1",
    port=5432,
    user="postgres",
    password="postgres",
    dbname="postgres",
)


def main():
    # device = "cuda" if torch.cuda.is_available() else "cpu"
    # embedding = semantic_embeddings.SemanticEmbeddingGenerator(
    #     "sentence-transformers/all-MiniLM-L6-v2", device
    # )
    # embedding.generate_embeddings("output/")
    db = db_connection.EmbeddingConnection(CONNECTION)
    db.create_mappings_table(vector_size=384)
    db.insert_mappings("embeddings/embedding_tables/compact_embedding_data.json")
    db.close_connection()


if __name__ == "__main__":
    main()
