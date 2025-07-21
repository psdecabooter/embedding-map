import psycopg
from psycopg import sql
import torch
from .types import ConnectionConfig


class MappingConnection:
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

    def retrieve_similar(self, query_embedding: torch.Tensor, retrieval_num: int):
        retrieve_command = sql.SQL("""
        SELECT *
        FROM mappings
        ORDER BY embedding <=> {}::vector
        LIMIT {};
        """).format(query_embedding, retrieval_num)
        self.cursor.execute(retrieve_command)
        similar_objects = self.cursor.fetchall()
        print(similar_objects)
