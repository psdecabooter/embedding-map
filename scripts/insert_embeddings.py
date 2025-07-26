from embeddings import db_connection
import sys

CONNECTION = db_connection.ConnectionConfig(
    # host="172.25.208.1",
    host="localhost",
    port=5432,
    user="postgres",
    password="postgres",
    dbname="postgres",
)


def main():
    if len(sys.argv) != 2:
        print("Usage: Expects the path to the embedding data json")
        exit(1)
    db = db_connection.EmbeddingConnection(CONNECTION)
    db.create_mappings_table(vector_size=384)
    db.insert_mappings(sys.argv[1])
    db.close_connection()


if __name__ == "__main__":
    main()
