OPENQASM 2.0;
include "qelib1.inc";
qreg q[11];
// Layer 0
cx q[8], q[10];
cx q[5], q[1];
cx q[2], q[7];
cx q[4], q[0];
cx q[9], q[3];
t q[6];
// Layer 1
cx q[4], q[7];
cx q[6], q[1];
cx q[0], q[5];
cx q[2], q[10];
cx q[3], q[9];
t q[8];
// Layer 2
cx q[2], q[7];
cx q[6], q[0];
cx q[4], q[8];
cx q[9], q[3];
cx q[10], q[5];
t q[1];
// Layer 3
cx q[3], q[8];
cx q[1], q[0];
t q[6];
// Layer 4
t q[3];
t q[1];
// Layer 5
cx q[3], q[2];
// Layer 6
cx q[3], q[10];
// Layer 7
cx q[3], q[2];
// Layer 8
cx q[3], q[6];
// Layer 9
cx q[3], q[1];
// Layer 10
cx q[3], q[7];
// Layer 11
cx q[3], q[6];
// Layer 12
cx q[6], q[1];
// Layer 13
cx q[6], q[0];