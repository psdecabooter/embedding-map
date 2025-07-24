import pandas as pd
import os
import sys


def main():
    if len(sys.argv) != 3:
        print(
            "Usage: Expects the path of the benchmarkfile, then the path to the circuits directory"
        )
        exit(1)
    file_path = sys.argv[1]
    circuits_directory = sys.argv[2]
    benchmark_df = pd.DataFrame()
    benchmark_df["file_names"] = os.listdir(circuits_directory)
    benchmark_df.to_csv(file_path, index=False)


if __name__ == "__main__":
    main()
