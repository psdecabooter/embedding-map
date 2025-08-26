import argparse
import pandas as pd
import umap
import matplotlib.pyplot as plt


def main():
    print("starting")
    parser = argparse.ArgumentParser()
    parser.add_argument("path", help="Path to embeddings json")
    args = parser.parse_args()

    embed_df = pd.read_json(args.path)
    reducer = umap.UMAP(n_components=2, metric="euclidean", random_state=42)
    print(embed_df.columns)
    data_2d = reducer.fit_transform(list(embed_df["embedding"]))
    plt.figure(figsize=(12, 8))
    print("reducing")
    scatter = plt.scatter(data_2d[:, 0], data_2d[:, 1], c="b", cmap="Spectral", s=5)  # type: ignore
    plt.colorbar(scatter)
    plt.title("UMAP Projection of High-Dimensional Embeddings")
    plt.xlabel("UMAP 1")
    plt.ylabel("UMAP 2")
    plt.show()
    print("huh")


if __name__ == "__main__":
    main()
