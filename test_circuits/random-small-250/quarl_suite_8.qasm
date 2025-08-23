OPENQASM 2.0;
include "qelib1.inc";
qreg q[11];
// Layer 0
cx q[4], q[10];
cx q[9], q[5];
cx q[1], q[7];
cx q[0], q[2];
cx q[6], q[3];
t q[8];
// Layer 1
cx q[3], q[10];
cx q[6], q[9];
cx q[2], q[0];
cx q[8], q[7];
cx q[1], q[4];
t q[5];
// Layer 2
cx q[1], q[6];
cx q[5], q[7];
cx q[4], q[2];
cx q[0], q[10];
cx q[3], q[9];
t q[8];
// Layer 3
cx q[6], q[2];
cx q[0], q[3];
t q[4];
// Layer 4
cx q[3], q[5];
// Layer 5
cx q[3], q[9];
// Layer 6
cx q[9], q[2];
// Layer 7
cx q[2], q[7];
// Layer 8
cx q[7], q[8];
// Layer 9
cx q[8], q[10];
// Layer 10
cx q[8], q[6];
// Layer 11
cx q[8], q[1];
// Layer 12
cx q[8], q[9];
// Layer 13
cx q[8], q[2];
// Layer 14
t q[8];