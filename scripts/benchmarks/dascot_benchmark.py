import pandas as pd
import json
import sys
import os
import time
from similarity_mapping import dascot_connection
from similarity_mapping.types import parse_arch_type, Mapping

NUM_MAPPINGS = 5
NUM_ROUTINGS = 5


def main():
    if len(sys.argv) != 4:
        print(
            """Usage: Expects the path of the benchmark file, 
            then the path to the circuits directory, 
            then the architecture type"""
        )
        exit(1)
    file_path = sys.argv[1]
    circuits_directory = sys.argv[2]
    arch_type = parse_arch_type(sys.argv[3])
    if arch_type is None:
        print(
            "Architecture type must either be: square_sparse_layout or compact_layout"
        )
        exit(1)
    benchmark_df = pd.read_csv(file_path)
    best_mappings = []
    route_average = []
    map_time_average = []
    best_map_route_avg = []

    # Run dascot on each circuit
    for circuit in benchmark_df["file_names"]:
        qasm_file_path = os.path.join(circuits_directory, circuit)
        if not os.path.exists(qasm_file_path):
            continue
        dascot = dascot_connection.Dascot(0, 0)
        circuit = dascot.extract_circuit_from_file(qasm_file_path, arch_type)
        # Save useful data per file
        routing_sum = 0
        map_time_sum = 0
        best_routing_avg = 0
        best_mapping: Mapping | None = None
        for i in range(NUM_MAPPINGS):
            # Map
            start_map = time.perf_counter()
            mapping = dascot.map(circuit)
            map_time_sum += time.perf_counter() - start_map
            # Route
            current_routing_sum = 0
            for k in range(NUM_ROUTINGS):
                routing = dascot.route(mapping)
                if routing is None:
                    continue
                routing_sum += len(routing.steps)
                current_routing_sum += len(routing.steps)
            # Check if best mapping
            if best_routing_avg < (current_routing_sum / NUM_ROUTINGS):
                best_routing_avg = current_routing_sum / NUM_ROUTINGS
                best_mapping = mapping
        # append to data
        assert best_mapping is not None  # Should never fail
        best_mappings.append(json.dumps(best_mapping.map))
        route_average.append(routing_sum / (NUM_ROUTINGS * NUM_MAPPINGS))
        map_time_average.append(map_time_sum / NUM_MAPPINGS)
        best_map_route_avg.append(best_routing_avg)

    # Record data
    benchmark_df["dascot_routing_avg"] = route_average
    benchmark_df["dascot_map_time_avg"] = map_time_average
    benchmark_df["dascot_best_mapping"] = best_mappings
    benchmark_df["dascot_best_mapping_route_avg"] = best_map_route_avg
    benchmark_df.to_csv(file_path, index=False)


if __name__ == "__main__":
    main()
