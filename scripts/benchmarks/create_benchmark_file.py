import pandas as pd
import os
import argparse


def main():
    parser = argparse.ArgumentParser(
        description="A script for creting the benchmark file"
    )
    parser.add_argument("bench", help="Path to the new benchmark file")
    parser.add_argument("circuits", help="Path to the circuits directory")
    args = parser.parse_args()
    if not os.path.exists(args.circuits) or not os.path.isdir(args.circuits):
        print(f"Expected a directory at {args.circuits}")
        exit(1)
    file_path = args.bench
    circuits_directory = args.circuits
    benchmark_df = pd.DataFrame()
    benchmark_df["file_names"] = os.listdir(circuits_directory)
    benchmark_df.to_csv(file_path, index=False)


if __name__ == "__main__":
    main()
