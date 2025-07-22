from ..dascot.src.dascot import (
    TimeoutException,
    timeout_handler,
    extract_qubits_from_gates,
)
from ..dascot.src.phased_graph import build_phased_map
from ..dascot.src.sarouting import sim_anneal_route
from .types import Mapping, Routing, Circuit, qasm_from_gates, parse_route_unsafe
from dataclasses import asdict
import signal


class Dascot:
    def __init__(self, mapping_timeout: int, routing_timeout: int):
        self.map_timeout = mapping_timeout
        self.route_timeout = routing_timeout

    def bootstrapped_map(self, mapping: Mapping) -> Mapping:
        qcircuit = qasm_from_gates(mapping.gates, len(mapping.arch.alg_qubits))
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
            extract_qubits_from_gates(mapping.gates),
            qcircuit,
            mapping.arch.__dict__,
            initial_mapping=initial_mapping,  # Pass in the mapping as the initial mapping
            include_t=True,
            timeout=self.map_timeout,
            *scaled_sim_anneal_params,
        )
        # Turn the phased map into a dict
        map_dict = {q: p for (q, p) in phased_map}  # Taken from sarouting.py
        return Mapping(arch=mapping.arch, gates=mapping.gates, map=map_dict)  # type: ignore

    def map(self, circuit: Circuit) -> Mapping:
        qcircuit = qasm_from_gates(circuit.gates, len(circuit.arch.alg_qubits))
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
            extract_qubits_from_gates(circuit.gates),
            qcircuit,
            circuit.arch.__dict__,
            include_t=True,
            timeout=self.map_timeout,
            *scaled_sim_anneal_params,
        )
        # Turn the phased map into a dict
        map_dict = {q: p for (q, p) in phased_map}  # Taken from sarouting.py
        return Mapping(arch=circuit.arch, gates=circuit.gates, map=map_dict)  # type: ignore

    def route(self, mapping: Mapping) -> Routing | None:
        signal.signal(signal.SIGALRM, timeout_handler)
        signal.alarm(self.route_timeout)
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
