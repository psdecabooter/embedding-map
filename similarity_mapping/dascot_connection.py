from similarity_mapping.dascot.dascot import (
    TimeoutException,
    timeout_handler,
    extract_qubits_from_gates,
    extract_gates_from_file,
)
from similarity_mapping.dascot.architecture import square_sparse_layout, compact_layout
from similarity_mapping.dascot.phased_graph import build_phased_map
from similarity_mapping.dascot.sarouting import sim_anneal_route
from .types import (
    Mapping,
    Routing,
    Circuit,
    qasm_from_gates,
    parse_route_unsafe,
    Architectures,
    parse_architecture_safe,
)
import signal


class Dascot:
    def __init__(self, mapping_timeout_sec: int, routing_timeout_sec: int):
        self.map_timeout_sec = mapping_timeout_sec
        self.route_timeout_sec = routing_timeout_sec

    def extract_circuit_from_file(
        self, file_path: str, arch_type: Architectures
    ) -> Circuit:
        gates, _ = extract_gates_from_file(file_path)
        qubits = extract_qubits_from_gates(gates)
        arch = {}
        if arch_type == Architectures.SQUARE_SPARSE:
            arch = square_sparse_layout(len(qubits), magic_states="all_sides")
        elif arch_type == Architectures.COMPACT:
            arch = compact_layout(len(qubits), magic_states="all_sides")
        return Circuit(gates=gates, arch=parse_architecture_safe(arch))

    def bootstrapped_map(self, mapping: Mapping) -> Mapping:
        qubits = extract_qubits_from_gates(mapping.gates)
        qcircuit = qasm_from_gates(mapping.gates, max(qubits) + 1)
        sim_anneal_params = [100, 0.1, 0.1]
        depth = qcircuit.depth(
            filter_function=lambda x: x[0].name in ["cx", "t", "tdg"]
        )
        scaled_sim_anneal_params = [
            sim_anneal_params[0],
            sim_anneal_params[1] / depth,
            10 * sim_anneal_params[2] / depth,
        ]
        initial_mapping = {int(k): v for k, v in mapping.map.items()}
        phased_map, _ = build_phased_map(
            qubits,
            qcircuit,
            mapping.arch.__dict__,
            initial_mapping=initial_mapping,  # Pass in the mapping as the initial mapping
            include_t=True,
            timeout=self.map_timeout_sec,
            *scaled_sim_anneal_params,
        )
        # Turn the phased map into a dict
        map_dict = {q: p for (q, p) in phased_map}  # Taken from sarouting.py
        return Mapping(arch=mapping.arch, gates=mapping.gates, map=map_dict)  # type: ignore

    def map(self, circuit: Circuit) -> Mapping:
        qubits = extract_qubits_from_gates(circuit.gates)
        qcircuit = qasm_from_gates(circuit.gates, max(qubits) + 1)
        sim_anneal_params = [100, 0.1, 0.1]
        depth = qcircuit.depth(
            filter_function=lambda x: x[0].name in ["cx", "t", "tdg"]
        )
        scaled_sim_anneal_params = [
            sim_anneal_params[0],
            sim_anneal_params[1] / depth,
            10 * sim_anneal_params[2] / depth,
        ]
        phased_map, _ = build_phased_map(
            qubits,
            qcircuit,
            circuit.arch.__dict__,
            include_t=True,
            timeout=self.map_timeout_sec,
            *scaled_sim_anneal_params,
        )
        # Turn the phased map into a dict
        map_dict = {q: p for (q, p) in phased_map}  # Taken from sarouting.py
        return Mapping(arch=circuit.arch, gates=circuit.gates, map=map_dict)  # type: ignore

    def route(self, mapping: Mapping) -> Routing | None:
        signal.signal(signal.SIGALRM, timeout_handler)
        signal.alarm(self.route_timeout_sec)
        steps: list | None = None
        map_dict = {int(k): v for k, v in mapping.map.items()}

        try:
            steps, _ = sim_anneal_route(
                mapping.gates,
                mapping.arch.__dict__,
                map_dict,
                reward_name="criticality",
                order_fraction=1,
                take_first_ms=False,
                *[10, 0.1, 0.1],
            )
            # Parse routes
            routes = [parse_route_unsafe(step) for step in steps]
        except TimeoutException:
            print("Routing Timed out")
        finally:
            signal.alarm(0)

        if steps is None:
            return None

        return Routing(
            map=mapping.map,
            arch=mapping.arch,
            gates=mapping.gates,
            steps=routes,  # type: ignore
        )
