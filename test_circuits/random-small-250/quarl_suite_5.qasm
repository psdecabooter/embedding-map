OPENQASM 2.0;
include "qelib1.inc";
qreg q[13];
// Layer 0
cx q[4], q[6];
cx q[5], q[9];
cx q[1], q[7];
cx q[0], q[10];
cx q[3], q[11];
cx q[8], q[2];
t q[12];
// Layer 1
cx q[6], q[4];
cx q[10], q[11];
cx q[2], q[1];
cx q[3], q[5];
cx q[0], q[9];
cx q[12], q[8];
t q[7];
// Layer 2
cx q[1], q[6];
cx q[2], q[8];
cx q[12], q[10];
cx q[4], q[3];
cx q[7], q[5];
cx q[11], q[0];
t q[9];
// Layer 3
cx q[8], q[10];
cx q[2], q[0];
t q[11];
// Layer 4
cx q[8], q[12];
// Layer 5
cx q[8], q[7];
// Layer 6
cx q[7], q[8];
// Layer 7
cx q[7], q[1];
// Layer 8
cx q[7], q[1];
// Layer 9
cx q[1], q[2];
// Layer 10
cx q[1], q[11];
// Layer 11
t q[11];