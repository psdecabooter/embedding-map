OPENQASM 2.0;
include "qelib1.inc";
qreg q[11];
// Layer 0
cx q[3], q[5];
cx q[7], q[0];
cx q[6], q[10];
cx q[8], q[2];
t q[9];
// Layer 1
cx q[10], q[1];
cx q[9], q[4];
cx q[5], q[6];
t q[2];
// Layer 2
cx q[5], q[6];
cx q[2], q[4];
t q[9];
// Layer 3
cx q[2], q[9];
cx q[4], q[8];
t q[5];
// Layer 4
cx q[8], q[6];
cx q[9], q[2];
t q[4];
// Layer 5
cx q[9], q[4];
cx q[8], q[6];
t q[2];
// Layer 6
cx q[6], q[10];
cx q[8], q[9];
t q[4];
// Layer 7
cx q[9], q[5];
cx q[4], q[6];
t q[10];
// Layer 8
t q[6];
t q[9];
t q[10];
// Layer 9
cx q[6], q[7];
t q[10];