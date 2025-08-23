OPENQASM 2.0;
include "qelib1.inc";
qreg q[12];
// Layer 0
cx q[8], q[1];
cx q[6], q[11];
cx q[9], q[7];
cx q[2], q[10];
cx q[0], q[5];
cx q[4], q[3];
// Layer 1
cx q[9], q[5];
cx q[10], q[1];
cx q[3], q[7];
cx q[2], q[4];
cx q[0], q[8];
cx q[11], q[6];
// Layer 2
cx q[11], q[2];
cx q[0], q[10];
cx q[6], q[4];
cx q[5], q[3];
cx q[8], q[7];
t q[9];
// Layer 3
cx q[6], q[8];
cx q[11], q[10];
cx q[7], q[4];
t q[9];
// Layer 4
t q[10];
t q[9];
t q[4];
t q[11];
// Layer 5
cx q[4], q[7];
t q[10];
t q[11];
// Layer 6
cx q[10], q[7];
cx q[11], q[6];
cx q[4], q[5];