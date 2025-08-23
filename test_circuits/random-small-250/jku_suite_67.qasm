OPENQASM 2.0;
include "qelib1.inc";
qreg q[12];
// Layer 0
cx q[7], q[3];
cx q[0], q[8];
cx q[2], q[11];
cx q[9], q[6];
cx q[10], q[5];
cx q[1], q[4];
// Layer 1
cx q[9], q[0];
cx q[2], q[10];
cx q[1], q[4];
cx q[5], q[7];
t q[11];
t q[6];
// Layer 2
cx q[1], q[2];
cx q[11], q[9];
cx q[4], q[10];
t q[7];
// Layer 3
cx q[11], q[0];
cx q[10], q[7];
t q[2];
// Layer 4
cx q[2], q[8];
cx q[11], q[4];
t q[10];
// Layer 5
cx q[10], q[6];
cx q[11], q[5];
t q[4];
// Layer 6
cx q[4], q[7];
cx q[5], q[1];
t q[11];
// Layer 7
cx q[5], q[1];
cx q[4], q[0];
// Layer 8
t q[1];
t q[5];