OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
// Layer 0
cx q[8], q[1];
cx q[3], q[9];
cx q[0], q[5];
t q[2];
t q[4];
// Layer 1
cx q[2], q[7];
cx q[9], q[6];
cx q[4], q[8];
cx q[3], q[1];
// Layer 2
cx q[3], q[0];
cx q[4], q[1];
t q[8];
// Layer 3
cx q[3], q[5];
cx q[4], q[8];
t q[1];
// Layer 4
cx q[5], q[8];
cx q[3], q[4];
t q[1];
// Layer 5
cx q[4], q[5];
t q[1];
// Layer 6
cx q[5], q[2];
t q[1];
// Layer 7
cx q[2], q[5];
t q[1];
// Layer 8
cx q[2], q[3];
t q[5];
// Layer 9
cx q[2], q[4];
t q[5];
// Layer 10
cx q[5], q[9];
cx q[4], q[3];
// Layer 11
t q[4];
t q[5];