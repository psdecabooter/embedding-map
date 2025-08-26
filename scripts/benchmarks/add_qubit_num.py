import pandas as pd
import os
import argparse

from similarity_mapping import dascot_connection
from similarity_mapping.types import (
    parse_arch_type,
    Mapping,
    ConnectionConfig,
    parse_mapping_safe,
)


def main():
    parser = argparse.ArgumentParser(
        description="A script for adding qubit numbers to the benchmark file"
    )
    parser.add_argument("bench", help="Path to the new benchmark file")
    parser.add_argument("circuits", help="Path to the circuits directory")
    parser.add_argument(
        "arch", help="Expects either compact_layout or square_sparse_layout"
    )
    args = parser.parse_args()
    if not os.path.exists(args.bench):
        print(f"Expected a benchmark file at {args.bench}")
        exit(1)
    if not os.path.exists(args.circuits) or not os.path.isdir(args.circuits):
        print(f"Expected a directory at {args.circuits}")
        exit(1)
    circuits_directory = args.circuits
    benchmark_df = pd.read_csv(args.bench)
    arch_type = parse_arch_type(args.arch)
    if arch_type is None:
        print(
            "Architecture type must either be: square_sparse_layout or compact_layout"
        )
        exit(1)

    q_nums = []
    for circuit in benchmark_df["file_names"]:
        qasm_file_path = os.path.join(circuits_directory, circuit)
        if not os.path.exists(qasm_file_path):
            continue
        dascot = dascot_connection.Dascot(3000, 3000)
        circuit = dascot.extract_circuit_from_file(qasm_file_path, arch_type)
        q_nums.append(len(circuit.arch.alg_qubits))

    benchmark_df["qubit_numbers"] = q_nums
    benchmark_df.to_csv(args.bench, index=False)


if __name__ == "__main__":
    main()
