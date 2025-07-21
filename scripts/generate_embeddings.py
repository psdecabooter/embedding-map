from embeddings.src import semantic_embeddings
import torch
import sys

MODEL_NAME: str = "sentence-transformers/all-MiniLM-L6-v2"


def main():
    if len(sys.argv) != 2:
        print("Usage: Expects the path to wisq outputs directory")
        exit(1)
    device = "cuda" if torch.cuda.is_available() else "cpu"
    embedding = semantic_embeddings.SemanticEmbeddingGenerator(MODEL_NAME, device)
    embedding.generate_embeddings(sys.argv[1])


if __name__ == "__main__":
    main()
