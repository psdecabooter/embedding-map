from .types import Mapping, Circuit, Architecture
import random


class SimilarityMapper:
    def __init__(self, circuit: Circuit, similar_mapping: Mapping) -> None:
        self.circuit = circuit
        self.similar_mapping = similar_mapping

    def find_closest_qubit_location(
        self,
        similar_location: int,
        circuit_locations: list[int],
    ) -> tuple[int, list[int]]:
        """
        Finds the closest physical qubit to the assignment location from the search locations.
        Chooses the location based on cardinal distance.
        """
        assignment_x = similar_location % self.similar_mapping.arch.width
        assignment_y = similar_location // self.similar_mapping.arch.height

        def distance(qubit_location) -> float:
            return (
                abs(assignment_x - qubit_location % self.circuit.arch.width) ** 2
                + abs(assignment_y - qubit_location // self.circuit.arch.height) ** 2
            )

        sorted_locations = sorted(circuit_locations, key=lambda x: distance(x))
        return sorted_locations[0], sorted_locations[1:]

    def hard_map(self) -> Mapping | None:
        """
        Tries to map the similar mapping to the ciruit 1-1.
        Returns none if the circuit and similar mapping have different qubits.

        Args:
            circuit (Circuit): the circuit to be mapped
            similar_mapping (Mapping): the mapping of a similar circuit

        Returns:
            Mapping: 1-1 transfered mapping for the input ciruit
        """
        circuit_qubits = set(
            [str(qubit) for gate in self.circuit.gates for qubit in gate]
        )
        mapping_qubits = set(self.similar_mapping.map.keys())
        if circuit_qubits != mapping_qubits:
            return None
        # Construct map
        locations_remaining = self.circuit.arch.alg_qubits.copy()
        new_map: dict[str, int] = {}
        for qubit in circuit_qubits:
            new_map[qubit], locations_remaining = self.find_closest_qubit_location(
                self.similar_mapping.map[qubit],
                locations_remaining,
            )
        return Mapping(new_map, self.circuit.arch, self.circuit.gates)

    def soft_map(self) -> Mapping:
        """
        First tries to map the similar mapping to the ciruit 1-1. Otherwise:
        - If the circuit uses different qubits, partially applies the mapping and converts the unmapped qubits.
        - If the circuit architecture has too few qubits, removes the excess qubits.
        - If the circuit architecture has too many qubits, randomly assigns the rest.

        Args:
            circuit (Circuit): the circuit to be mapped
            similar_mapping (Mapping): the mapping of a similar circuit

        Returns:
            Mapping: A semi-random transfered mapping for the input ciruit
        """
        hard_mapping = self.hard_map()
        if hard_mapping is not None:
            return hard_mapping

        circuit_qubits = set(
            [str(qubit) for gate in self.circuit.gates for qubit in gate]
        )
        mapping_qubits = set(self.similar_mapping.map.keys())
        new_map: dict[str, int] = {}
        # Partially apply mapping
        # Gives priority to similar qubits
        locations_remaining = self.circuit.arch.alg_qubits.copy()
        unmapped_mapping_qubits: set[str] = set()
        for qubit in mapping_qubits:
            if qubit in circuit_qubits:
                new_map[qubit], locations_remaining = self.find_closest_qubit_location(
                    self.similar_mapping.map[qubit], locations_remaining
                )
            else:
                unmapped_mapping_qubits.add(qubit)
        unmapped_circuit_qubits: set[str] = set(
            [qubit for qubit in circuit_qubits if qubit not in new_map]
        )

        len_difference = len(circuit_qubits) - len(mapping_qubits)
        if len_difference == 0:
            # Circuit and mapping have the same number of qubits
            for qubit in unmapped_circuit_qubits:
                new_map[qubit], locations_remaining = self.find_closest_qubit_location(
                    self.similar_mapping.map[unmapped_mapping_qubits.pop()],
                    locations_remaining,
                )
        elif len_difference > 0:
            # Circuit has more qubits than the mapping
            while len(unmapped_mapping_qubits) > 0:
                new_map[unmapped_circuit_qubits.pop()], locations_remaining = (
                    self.find_closest_qubit_location(
                        self.similar_mapping.map[unmapped_mapping_qubits.pop()],
                        locations_remaining,
                    )
                )
            # Randomly assign remaining locations
            for qubit in unmapped_circuit_qubits:
                random_location = locations_remaining.pop(
                    random.randrange(len(locations_remaining))
                )
                new_map[qubit] = random_location
        else:
            # Circuit has fewer qubits than the mapping
            while len(unmapped_circuit_qubits) > 0:
                new_map[unmapped_circuit_qubits.pop()], locations_remaining = (
                    self.find_closest_qubit_location(
                        self.similar_mapping.map[unmapped_mapping_qubits.pop()],
                        locations_remaining,
                    )
                )

        return Mapping(new_map, self.circuit.arch, self.circuit.gates)
