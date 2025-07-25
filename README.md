# Embedding mapper
Queries a vector database for the mapping of a similar circuit

## To run a limited benchmark, run commands in this order
docker compose up -d
uv run ./scripts/insert_embeddings.py ./compact_embedding_data.json
source scripts/benchmark_all.sh ./benchmark.csv ./test_circuits/random_100_len compact_layout sentence-transformers/all-MiniLM-L6-v2