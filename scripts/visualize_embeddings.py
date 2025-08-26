import argparse
import pandas as pd


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("path", help="Path to embeddings json")
    args = parser.parse_args()

    embed_df = pd.read_json(args.path)
    # TODO: finish later


if __name__ == "__name__":
    main()
