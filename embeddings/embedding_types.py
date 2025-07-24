from typing import Any
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

    def to_dict(self) -> dict[str, Any]:
        return {
            "height": self.height,
            "width": self.width,
            "alg_qubits": self.alg_qubits,
            "magic_states": self.magic_states,
        }


@dataclass
class Circuit:
    arch: Architecture
    gates: list[list[int]]

    def to_dict(self) -> dict[str, Any]:
        return {"arch": self.arch.to_dict(), "gates": self.gates}
