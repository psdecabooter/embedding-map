import os
import pandas as pd
import asyncio
import aiofiles
import json
from sentence_transformers import SentenceTransformer
import torch
from embeddings.embedding_types import Circuit


class SemanticEmbeddingGenerator(object):
    def __init__(self, model_name: str, device: str):
        print("Loading model...")
        self.model_name = model_name
        self.device = device
        self.model = SentenceTransformer(model_name, device=device)
        print("Model loaded")

    async def process_sat_file(self, file_path: str) -> pd.DataFrame | None:
        async with aiofiles.open(file_path, "r") as f:
            content = await f.read()
            # remove blank entries
            if len(content) == 0:
                return None
            data = json.loads(content)
        # remove timedout entries
        if data["steps"] == "timeout":
            return None
        # Remove unnecessary data
        del data["steps"]
        mapping = json.dumps(data)
        del data["map"]
        embedding_text = json.dumps(data)
        # print(file_path)
        return pd.DataFrame([{"mapping": mapping, "embedding_text": embedding_text}])

    async def read_sat_data(self, directory_path: str):
        sparse_paths = []
        compact_paths = []
        for file_name in os.listdir(directory_path):
            path_group = compact_paths if "compact" in file_name else sparse_paths
            path_group.append(os.path.join(directory_path, file_name))
        # Gather sparse data
        sparse_tasks = [self.process_sat_file(file_path) for file_path in sparse_paths]
        sparse_data = await asyncio.gather(*sparse_tasks)
        # Gather compact data
        compact_tasks = [
            self.process_sat_file(file_path) for file_path in compact_paths
        ]
        compact_data = await asyncio.gather(*compact_tasks)
        return (
            pd.concat(filter(lambda x: x is not None, sparse_data), ignore_index=True),
            pd.concat(filter(lambda x: x is not None, compact_data), ignore_index=True),
        )

    def generate_embeddings(self, directory_path: str):
        # Get data from the json files
        sparse_df, compact_df = asyncio.run(self.read_sat_data(directory_path))
        # Add embeddings to the dataframes
        sparse_embeddings = self.model.encode(
            sparse_df["embedding_text"].to_list(),
            normalize_embeddings=True,
            show_progress_bar=True,
        )
        compact_embeddings = self.model.encode(
            compact_df["embedding_text"].to_list(),
            normalize_embeddings=True,
            show_progress_bar=True,
        )
        sparse_df["embedding"] = sparse_embeddings.tolist()
        compact_df["embedding"] = compact_embeddings.tolist()
        # Save the dataframes
        sparse_df.to_json(
            f"{self.model_name}_sparse_embedding_data.json", orient="records", indent=4
        )
        compact_df.to_json(
            f"{self.model_name}_compact_embedding_data.json", orient="records", indent=4
        )

    def generate_embedding_from_file(self, file_path: str) -> torch.Tensor:
        with open(file_path, "r") as f:
            data_json = json.loads(f.read())
        embedding_json = {}
        # Pull out necessary data
        embedding_json["arch"] = data_json["arch"]
        embedding_json["gates"] = data_json["gates"]
        embedding_text = json.dumps(embedding_json)
        return self.model.encode(embedding_text, normalize_embeddings=True)

    def generate_embedding_from_circuit(self, circuit: dict) -> torch.Tensor:
        embedding_json = {}
        embedding_json["arch"] = circuit["arch"]
        embedding_json["gates"] = circuit["gates"]
        embedding_text = json.dumps(embedding_json)
        return self.model.encode(embedding_text, normalize_embeddings=True)
