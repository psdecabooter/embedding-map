#!/bin/bash
# Command line arguments:
# 1 = name of benchmark file
# 2 = name of qasm directory
# 3 = name of the architecture
# 4 = name of the embedding model
touch $1
uv run -m scripts.benchmarks.create_benchmark_file $1 $2 $3
uv run -m scripts.benchmarks.dascot_benchmark $1 $2 $3
uv run -m scripts.benchmarks.similarity_benchmark $1 $2 $3 $4
uv run -m scripts.benchmarks.bootstrapped_benchmark $1 $2 $3 $4