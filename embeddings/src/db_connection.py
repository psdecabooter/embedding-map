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


class DBConnection(object):
    def __init__(self, config: ConnectionConfig):
        self.connection = psycopg.connect(**config.__dict__)
        self.cursor = self.connection.cursor()

    def close_connection(self):
        self.cursor.close()
        self.connection.close()

    def create_mappings_table(self, vector_size: int):
        create_table_sql = """
        CREATE TABLE IF NOT EXISTS mappings (
            sat_solution JSONB NOT NULL,
            embedding_text JSONB NOT NULL,
            embedding VECTOR(%s)
        );
        """
        self.cursor.execute(create_table_sql, (vector_size,))
        self.connection.commit()

    def insert_mappings_df(self, mappings_path: str):
        mappings_df = pd.read_json(mappings_path)

        # Construct the INSERT statement
        values = [
            f"({solution}, {embtext}, {embed})"
            for solution, embtext, embed in mappings_df.itertuples()
        ]
        values_text = sql.SQL(",").join(map(sql.Identifier, values))
        copy_statement = sql.SQL(
            "INSERT INTO mappings (sat_solution, embedding_text, embedding) VALUES {}"
        ).format(values_text)

        self.cursor.execute(copy_statement)
        self.connection.commit()


# conn = psycopg.connect(
#     host="host.docker.internal",
#     port=5432,
#     user="postgres",
#     password="postgres",
#     dbname="postgres",
# )

# cur = conn.cursor()
# cur.execute("SELECT 'hello world'")
# print(cur.fetchone())

# create_table_command = """
# CREATE TABLE mappings (
#     sat_solution JSONB NOT NULL,
#     embedding VECTOR(3) --TODO: figure the size of the embedding
# );
# """

# cur.execute(create_table_command)
# conn.commit()

# insert_command = """
# INSERT INTO mappings (sat_solution, embedding)
# VALUES (%s, %s)
# """

# # Create sample data
# data = [
#     (json.dumps({"fart":1}), np.random.rand(3).tolist()),
#     (json.dumps({"fart":2}), np.random.rand(3).tolist()),
#     (json.dumps({"fart":3}), np.random.rand(3).tolist()),
#     (json.dumps({"fart":4}), np.random.rand(3).tolist()),
# ]

# for record in data:
#     cur.execute(insert_command, record)
# conn.commit()

# fetch_contents = """
# select * from mappings
# """

# cur.execute(fetch_contents)
# print(cur.fetchall())

# query_vector = np.random.rand(3).tolist()
# print(query_vector)
# retrieve_command = """
# SELECT *
# FROM mappings
# ORDER BY embedding <=> %s::vector
# LIMIT 5;
# """
# cur.execute(retrieve_command, (query_vector,))
# similar_objects = cur.fetchall()
# for obj in similar_objects:
#     print(obj)

# cur.close()
# conn.close()
