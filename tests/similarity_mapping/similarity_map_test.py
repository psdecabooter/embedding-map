from dataclasses import replace
from copy import deepcopy

from similarity_mapping.types import (
    Mapping,
    Circuit,
    Architecture,
    parse_architecture_safe,
)
from similarity_mapping.similarity_map import SimilarityMapper
from similarity_mapping.dascot.architecture import compact_layout, square_sparse_layout

TEST_ARCH_C4 = parse_architecture_safe(compact_layout(4, magic_states="all_sides"))
"""
Compact test architecture
Architecture(
    height=5,
    width=5,
    alg_qubits=[6, 16, 8, 18],
    magic_states=[1, 3, 9, 19, 23, 21, 5, 15]
)
"""

TEST_ARCH_S9 = parse_architecture_safe(
    square_sparse_layout(9, magic_states="all_sides")
)
"""
Architecture(
    height=9, 
    width=9, 
    alg_qubits=[20, 22, 24, 38, 40, 42, 56, 58, 60], 
    magic_states=[1, 3, 5, 7, 17, 35, 53, 71, 79, 77, 75, 73, 9, 27, 45, 63]
)
"""


def test_hard_map() -> None:
    """
    Test the hard mapping when given compatible and incompatible inputs.
    Testing them on the same architecture.
    """
    test_gates = [[0, 1], [2, 3]]
    test_circuit = Circuit(arch=TEST_ARCH_C4, gates=test_gates)
    saved_arch = deepcopy(test_circuit.arch)
    saved_gates = deepcopy(test_gates)
    test_map = {
        "0": 6,
        "1": 16,
        "2": 8,
        "3": 18,
    }
    test_similar_map = Mapping(map=test_map, arch=TEST_ARCH_C4, gates=[])
    mapper = SimilarityMapper(test_circuit, test_similar_map)
    hard_mapping = mapper.hard_map()

    # Ensure that the architecture or gates of the circuit don't change
    assert saved_arch == test_circuit.arch
    assert saved_gates == test_circuit.gates
    assert hard_mapping is not None
    assert len(hard_mapping.map.items()) == len(test_map.items())
    assert all([hard_mapping.map[k] == v for k, v in test_map.items()])

    # Test incompatible
    test_gates_incompatible = [[0]]
    test_circuit_incompatible = Circuit(
        arch=TEST_ARCH_C4, gates=test_gates_incompatible
    )
    mapper_incompatible = SimilarityMapper(test_circuit_incompatible, test_similar_map)
    hard_mapping_incompatible = mapper_incompatible.hard_map()
    assert hard_mapping_incompatible is None


def test_soft_map_same():
    """
    Test softmap when the similar mapping has the same number of qubits as
    the circuit, but different qubits.
    Testing them on the same architecture.
    """
    test_gates = [[0, 1], [3]]
    test_map = {"0": 6, "1": 16, "4": 18}
    test_circuit = Circuit(arch=TEST_ARCH_C4, gates=test_gates)
    test_mapping = Mapping(map=test_map, arch=TEST_ARCH_C4, gates=[])
    # Save archiecture and gates
    saved_arch = deepcopy(test_circuit.arch)
    saved_gates = deepcopy(test_gates)
    # Map it
    mapper = SimilarityMapper(test_circuit, test_mapping)
    soft_mapping = mapper.soft_map()

    # Ensure that the architecture or gates of the circuit don't change
    assert saved_arch == test_circuit.arch
    assert saved_gates == test_circuit.gates
    # Ensure partial application
    assert all(
        soft_mapping.map[k] == v
        for k, v in test_mapping.map.items()
        if k in soft_mapping.map
    )
    # Ensure the lengths of the mappings are the same
    assert len(soft_mapping.map) == len(test_mapping.map)
    # Test that the locations are the same
    assert set(test_mapping.map.values()) == set(soft_mapping.map.values())
    # Test that the soft map locations map the qubits used in the circuit
    qubits = set([str(qubit) for gate in test_circuit.gates for qubit in gate])
    assert qubits == set(soft_mapping.map.keys())


def test_soft_map_less():
    """
    Test softmap when the similar mapping has less qubits than the circuit.
    Testing them on the same architecture.
    """
    test_gates = [[0, 1], [2, 3]]
    test_map = {"0": 6, "1": 16, "3": 18}
    test_circuit = Circuit(arch=TEST_ARCH_C4, gates=test_gates)
    test_mapping = Mapping(map=test_map, arch=TEST_ARCH_C4, gates=[])
    # Save archiecture and gates
    saved_arch = deepcopy(test_circuit.arch)
    saved_gates = deepcopy(test_gates)
    # Map it
    mapper = SimilarityMapper(test_circuit, test_mapping)
    soft_mapping = mapper.soft_map()

    # Ensure that the architecture or gates of the circuit don't change
    assert saved_arch == test_circuit.arch
    assert saved_gates == test_circuit.gates
    # Ensure partial application
    assert all(
        soft_mapping.map[k] == v
        for k, v in test_mapping.map.items()
        if k in soft_mapping.map
    )
    # Ensure that the soft mapping has more qubits
    assert len(soft_mapping.map) > len(test_mapping.map)
    # Ensure that the soft map locations map the qubits used in the circuit
    qubits = set([str(qubit) for gate in test_circuit.gates for qubit in gate])
    assert qubits == set(soft_mapping.map.keys())
    # Ensure that the soft map only uses locations in the circuit architecture
    assert set(soft_mapping.map.values()) <= set(test_circuit.arch.alg_qubits)


def test_soft_map_more():
    """
    Test softmap when the similar mapping has more qubits than the circuit.
    Testing them on the same architecture.
    """
    test_gates = [[0, 1], [3]]
    test_map = {"0": 6, "1": 16, "2": 8, "3": 18}
    test_circuit = Circuit(arch=TEST_ARCH_C4, gates=test_gates)
    test_mapping = Mapping(map=test_map, arch=TEST_ARCH_C4, gates=[])
    # Save archiecture and gates
    saved_arch = deepcopy(test_circuit.arch)
    saved_gates = deepcopy(test_gates)
    # Map it
    mapper = SimilarityMapper(test_circuit, test_mapping)
    soft_mapping = mapper.soft_map()

    # Ensure that the architecture or gates of the circuit don't change
    assert saved_arch == test_circuit.arch
    assert saved_gates == test_circuit.gates
    # Ensure partial application
    assert all(
        soft_mapping.map[k] == v
        for k, v in test_mapping.map.items()
        if k in soft_mapping.map
    )
    # Ensure that the soft mapping has less qubits
    assert len(soft_mapping.map) < len(test_mapping.map)
    # Ensure that the soft map locations map the qubits used in the circuit
    qubits = set([str(qubit) for gate in test_circuit.gates for qubit in gate])
    assert qubits == set(soft_mapping.map.keys())
    # Ensure that the soft map only uses locations in the circuit architecture
    assert set(soft_mapping.map.values()) <= set(test_circuit.arch.alg_qubits)


def test_soft_map_different_arch():
    """
    Test softmap with different architectures, in the equal qubit number case.
    """
    test_gates = [[0, 3], [8], [4]]
    test_map = {"0": 6, "1": 16, "2": 8, "3": 18}
    test_circuit = Circuit(arch=TEST_ARCH_S9, gates=test_gates)
    test_mapping = Mapping(map=test_map, arch=TEST_ARCH_C4, gates=[])
    # Save archiecture and gates
    saved_arch = deepcopy(test_circuit.arch)
    saved_gates = deepcopy(test_gates)
    # Map it
    mapper = SimilarityMapper(test_circuit, test_mapping)
    soft_mapping = mapper.soft_map()

    # Ensure that the architecture or gates of the circuit don't change
    assert saved_arch == test_circuit.arch
    assert saved_gates == test_circuit.gates
    # Ensure the lengths of the mappings are the same
    assert len(soft_mapping.map) == len(test_mapping.map)
    # Ensure that the soft map locations map the qubits used in the circuit
    qubits = set([str(qubit) for gate in test_circuit.gates for qubit in gate])
    assert qubits == set(soft_mapping.map.keys())
    # Ensure that the soft map only uses locations in the circuit architecture
    assert set(soft_mapping.map.values()) <= set(test_circuit.arch.alg_qubits)
