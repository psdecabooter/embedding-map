import pandas as pd
import sys


def main():
    if len(sys.argv) != 3:
        print(
            "Usage: Expects the path of the benchmark file and the path to the circuits directory"
        )
        exit(1)
    file_path = sys.argv[0]
    circuits_directory = sys.argv[1]
    benchmark_df = pd.read_csv(file_path)
    for circuit in benchmark_df['file_names']:
        pass


if __name__ == "__main__":
    main()
