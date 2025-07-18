import os
import pandas as pd
import asyncio
import aiofiles
import json
# import torch
# from transformers import AutoTokenizer, AutoModel


class SemanticEmbeddingGenerator(object):
    def __init__(self, model_name: str):
        # self.model = AutoModel.from_pretrained(model_name)
        # self.tokenizer = AutoTokenizer.from_pretrained(model_name, device_map="auto")
        pass

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
        # print(os.listdir(directory_path)[:5])
        sparse_df, compact_df = asyncio.run(self.read_sat_data(directory_path))
        print(sparse_df.head)
        print(compact_df.head)
