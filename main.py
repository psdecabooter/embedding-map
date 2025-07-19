from embeddings.src import semantic_embeddings
import torch


def main():
    device = "cuda" if torch.cuda.is_available() else "cpu"
    embedding = semantic_embeddings.SemanticEmbeddingGenerator(
        "sentence-transformers/all-MiniLM-L6-v2", device
    )
    embedding.generate_embeddings("output/")


if __name__ == "__main__":
    main()
