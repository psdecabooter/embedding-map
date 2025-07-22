from dataclasses import dataclass
from typing import Any
from qiskit import QuantumCircuit


@dataclass
class ConnectionConfig:
    host: str
    port: int
    user: str
    password: str
    dbname: str


@dataclass
class Architecture:
    height: int
    width: int
    alg_qubits: list[int]
    magic_states: list[int]

    def to_dict(self) -> dict[str, Any]:
        return {
            "height": self.height,
            "width": self.width,
            "alg_qubits": self.alg_qubits,
            "magic_states": self.magic_states,
        }


@dataclass
class Mapping:
    map: dict[str, int]
    arch: Architecture
    gates: list[list[int]]

    def to_dict(self) -> dict[str, Any]:
        return {"map": self.map, "arch": self.arch.to_dict(), "gates": self.gates}


@dataclass
class Circuit:
    arch: Architecture
    gates: list[list[int]]

    def to_dict(self) -> dict[str, Any]:
        return {"arch": self.arch.to_dict(), "gates": self.gates}


@dataclass
class Route:
    id: int
    op: str
    qubits: list[int]
    path: list[int]


@dataclass
class Routing:
    map: dict[str, int]
    steps: list[Route]
    arch: Architecture
    gates: list[list[int]]


def qasm_from_gates(gates: list[list[int]]) -> QuantumCircuit:
    qcircuit = QuantumCircuit()
    for gate in gates:
        if len(gate) == 1:
            qcircuit.t(gate[0])
        else:
            qcircuit.cx(gate[0], gate[1])
    return qcircuit


def gates_depth(gates: list[list[int]]) -> dict[int, int]:
    """
    Gets the depth of the gates of the circuit per qubit.
    """
    depth_dict: dict[int, int] = {}
    for gate in gates:
        for qubit in gate:
            if qubit not in depth_dict:
                depth_dict[qubit] = 0
            depth_dict[qubit] += 1
    return depth_dict


def parse_architecture_safe(source: dict) -> Architecture:
    """
    Type safe parsing of an architecture from a dict.
    """
    assert "height" in source
    assert isinstance(source["height"], int)
    assert "width" in source
    assert isinstance(source["width"], int)
    assert "alg_qubits" in source
    assert isinstance(source["alg_qubits"], list) and all(
        isinstance(qubit, int) for qubit in source["alg_qubits"]
    )
    assert "magic_states" in source
    assert isinstance(source["magic_states"], list) and all(
        isinstance(qubit, int) for qubit in source["magic_states"]
    )
    return Architecture(
        source["height"], source["width"], source["alg_qubits"], source["magic_states"]
    )


def parse_mapping_safe(source: dict) -> Mapping:
    """
    Type safe parsing of a mapping from a dict.
    """
    assert "map" in source
    assert isinstance(source["map"], dict) and all(
        isinstance(k, str) and isinstance(v, int) for k, v in source["map"].items()
    )
    assert "arch" in source
    assert isinstance(source["arch"], dict)
    arch = parse_architecture_safe(source["arch"])
    assert "gates" in source
    assert isinstance(source["gates"], list) and all(
        isinstance(gate, list) and all(isinstance(qubit, int) for qubit in gate)
        for gate in source["gates"]
    )
    return Mapping(source["map"], arch, source["gates"])


def parse_circuit_safe(source: dict) -> Circuit:
    """
    Type safe parsing of a circuit from a dict.
    """
    assert "arch" in source
    assert isinstance(source["arch"], dict)
    arch = parse_architecture_safe(source["arch"])
    assert "gates" in source
    assert isinstance(source["gates"], list) and all(
        isinstance(gate, list) and all(isinstance(qubit, int) for qubit in gate)
        for gate in source["gates"]
    )
    return Circuit(arch, source["gates"])


def parse_route_unsafe(step: list[tuple]) -> list[Route]:
    """
    Squishes t and tdg gates to the same thing: t
    """
    routes: list[Route] = []
    for route in step:
        op = "t" if len(route[1]) == 1 else "cx"
        routes.append(Route(route[0], op, route[1], route[2]))
    return routes
