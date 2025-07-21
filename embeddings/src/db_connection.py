import psycopg
from psycopg import sql
import pandas as pd
from dataclasses import dataclass


@dataclass
class ConnectionConfig:
    host: str
    port: int
    user: str
    password: str
    dbname: str


class EmbeddingConnection(object):
    def __init__(self, config: ConnectionConfig):
        print("Attempting to connect...")
        self.connection = psycopg.connect(
            host=config.host,
            port=config.port,
            user=config.user,
            password=config.password,
            dbname=config.dbname,
        )
        self.cursor = self.connection.cursor()
        print("Connection Created")

    def close_connection(self):
        self.cursor.close()
        self.connection.close()
        print("Connection Closed")

    def create_mappings_table(self, vector_size: int):
        create_table_sql = sql.SQL("""
        CREATE TABLE IF NOT EXISTS mappings (
            mapping JSONB NOT NULL,
            embedding_text JSONB NOT NULL,
            embedding VECTOR({})
        );
        """).format(vector_size)
        self.cursor.execute(create_table_sql)
        self.connection.commit()
        print("Table Created")

    def insert_mappings(self, mappings_path: str):
        mappings_df = pd.read_json(mappings_path)

        values = [
            (row.mapping, row.embedding_text, row.embedding)
            for row in mappings_df.itertuples()
        ]

        insert_statement = """
        INSERT INTO mappings (mapping, embedding_text, embedding)
        VALUES (%s, %s, %s)
        """

        self.cursor.executemany(insert_statement, values)
        self.connection.commit()
        print("Data Inserted")
