OPENQASM 2.0;
include "qelib1.inc";
qreg q[12];
// Layer 0
cx q[5], q[1];
cx q[7], q[10];
cx q[0], q[6];
cx q[4], q[9];
t q[11];
// Layer 1
cx q[4], q[3];
cx q[0], q[8];
t q[1];
// Layer 2
cx q[4], q[2];
cx q[0], q[1];
t q[8];
// Layer 3
cx q[2], q[3];
cx q[1], q[6];
t q[0];
// Layer 4
cx q[1], q[9];
cx q[3], q[8];
t q[0];
// Layer 5
cx q[8], q[7];
t q[1];
// Layer 6
cx q[7], q[1];
t q[8];
// Layer 7
cx q[7], q[6];
t q[1];
// Layer 8
cx q[7], q[1];
t q[6];
// Layer 9
cx q[6], q[7];
t q[1];
// Layer 10
cx q[6], q[9];
t q[1];
// Layer 11
t q[9];
// Layer 12
t q[9];
// Layer 13
t q[9];