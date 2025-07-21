from similarity_mapping.src.types import ConnectionConfig
from similarity_mapping.src import db_connection

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


def main():
    db = db_connection.MappingConnection(CONNECTION)
    db.close_connection()


if __name__ == "__main__":
    main()
