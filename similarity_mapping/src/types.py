from dataclasses import dataclass


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


@dataclass
class Mapping:
    map: dict[str, int]
    arch: Architecture
    gates: list[list[int]]
