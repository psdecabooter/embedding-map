from embeddings.src import semantic_embeddings


def main():
    embedding = semantic_embeddings.SemanticEmbeddingGenerator("fart")
    embedding.generate_embeddings("output/")


if __name__ == "__main__":
    main()
