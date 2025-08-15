import argparse
import os
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt


def main():
    parser = argparse.ArgumentParser(
        description="Script to visualize a benchmark file."
    )
    parser.add_argument("path", help="Path to benchmark file")
    args = parser.parse_args()
    if not os.path.exists(args.path) or not str(args.path).endswith(".csv"):
        print(f"Expected csv benchmark file at {args.path}")
        exit(1)

    bench_df = pd.read_csv(args.path)
    bench_df["sort_key"] = bench_df["file_names"].str.extract(r"^(\d+)").astype(int)
    bench_df = bench_df.sort_values("sort_key").drop("sort_key", axis=1)
    print(bench_df["file_names"])
    plt.figure(1)
    plt.title("Layers, ordered by qubits increasing")
    plt.scatter(
        range(len(bench_df["dascot_routing_avg"])),
        bench_df["dascot_routing_avg"],
        c="r",
        label="dascot_routing_avg",
    )
    plt.scatter(
        range(len(bench_df["dascot_routing_avg"])),
        bench_df["similarity_routing_avg"],
        c="g",
        label="similarity_routing_avg",
    )
    plt.scatter(
        range(len(bench_df["dascot_routing_avg"])),
        bench_df["bootstrapped_routing_avg"],
        c="b",
        label="bootstrapped_routing_avg",
    )
    plt.legend()

    plt.figure(2)
    plt.title("Dascot - Mapping (higher is better), ordered by qubits increasing")
    x = bench_df.index
    similarity_diffs = np.array(
        [
            dascot - similar
            for similar, dascot in zip(
                bench_df["similarity_routing_avg"], bench_df["dascot_routing_avg"]
            )
        ]
    )
    bootstrapped_diffs = np.array(
        [
            dascot - bootstrap
            for bootstrap, dascot in zip(
                bench_df["bootstrapped_routing_avg"], bench_df["dascot_routing_avg"]
            )
        ]
    )
    plt.scatter(
        x,
        similarity_diffs,
        c="g",
        label="similarity_routing_avg",
    )
    plt.scatter(
        x,
        bootstrapped_diffs,
        c="b",
        label="bootstrapped_routing_avg",
    )

    # Line of best fits
    dsct_coef = np.polyfit(x, similarity_diffs, 1)
    dsct_lobf = np.poly1d(dsct_coef)
    dsct_y_fit = dsct_lobf(x)
    boot_coef = np.polyfit(x, bootstrapped_diffs, 1)
    boot_lobf = np.poly1d(boot_coef)
    boot_y_fit = boot_lobf(x)
    plt.plot(
        x,
        dsct_y_fit,
        "r-",
        label=f"Line of best fit: y = {dsct_coef[0]:.3f}x + {dsct_coef[1]:.3f}",
        c="g",
    )
    plt.plot(
        x,
        boot_y_fit,
        "r-",
        label=f"Line of best fit: y = {boot_coef[0]:.3f}x + {boot_coef[1]:.3f}",
        c="b",
    )

    plt.legend()

    plt.figure(3)
    plt.title("Avg mapping time (seconds) per circuit, ordered by qubits increasing")
    plt.scatter(
        x,
        bench_df["dascot_map_time_avg"],
        c="r",
        label="dascot map time avg",
    )
    plt.scatter(
        x,
        # bench_df["bootstrapped_map_time_avg"],
        [
            x / 15 for x in bench_df["bootstrapped_map_time_avg"]
        ],  # correcting for the old broken measurements
        c="b",
        label="bootstrapped map time avg",
    )

    # Line of best fits
    dsct_coef = np.polyfit(x, bench_df["dascot_map_time_avg"], 1)
    dsct_lobf = np.poly1d(dsct_coef)
    dsct_y_fit = dsct_lobf(x)
    boot_coef = np.polyfit(
        x, [x / 15 for x in bench_df["bootstrapped_map_time_avg"]], 1
    )
    boot_lobf = np.poly1d(boot_coef)
    boot_y_fit = boot_lobf(x)
    plt.plot(
        x,
        dsct_y_fit,
        "r-",
        label=f"Line of best fit: y = {dsct_coef[0]:.3f}x + {dsct_coef[1]:.3f}",
        c="r",
    )
    plt.plot(
        x,
        boot_y_fit,
        "r-",
        label=f"Line of best fit: y = {boot_coef[0]:.3f}x + {boot_coef[1]:.3f}",
        c="b",
    )
    plt.legend()

    plt.show()


if __name__ == "__main__":
    main()
