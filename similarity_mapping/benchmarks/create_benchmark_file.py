import pandas as pd
import os
import sys


def main():
    if len(sys.argv) != 3:
        print(
            "Usage: Expects the path of the benchmarkfile and the path to the circuits directory"
        )
        exit(1)
    file_path = sys.argv[0]
    circuits_directory = sys.argv[1]
    benchmark_df = pd.DataFrame()
    benchmark_df["file_names"] = os.listdir(circuits_directory)
    benchmark_df.to_csv(file_path)


if __name__ == "__main__":
    main()
