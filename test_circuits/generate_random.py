import sys
import os
import random


def make_qasm_text(num_qubits: int, circ_len: int) -> str:
    text = ""
    text += "OPENQASM 2.0;\n"
    text += f"qreg q[{num_qubits}];\n"
    for i in range(circ_len):
        choice = random.randint(0, 2)
        qubit1 = random.randint(0, num_qubits - 1)
        qubit2 = random.randint(0, num_qubits - 1)
        if choice == 0:
            text += f"t q[{qubit1}];\n"
        elif choice == 1:
            text += f"tdg q[{qubit1}];\n"
        else:
            text += f"cx q[{qubit1}], q[{qubit2}];\n"
    return text


CIRCUIT_LENGTH = 100
QUBIT_MAX = 30
NUMBER_FILES = 200


def main():
    """
    Only generates t, tdg, or cs gates
    """
    if len(sys.argv) != 2:
        print("Usage: requires argument of a directory name")
        exit(1)
    directory = sys.argv[1]

    for i in range(NUMBER_FILES):
        qubits = random.randint(2, QUBIT_MAX)
        file_name = f"{qubits}q_{CIRCUIT_LENGTH}gates_{i}.qasm"
        file_text = make_qasm_text(qubits, CIRCUIT_LENGTH)
        with open(os.path.join(directory, file_name), "w") as f:
            f.write(file_text)


if __name__ == "__main__":
    main()
