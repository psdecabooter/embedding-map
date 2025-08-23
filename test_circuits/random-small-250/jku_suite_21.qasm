OPENQASM 2.0;
include "qelib1.inc";
qreg q[11];
// Layer 0
cx q[6], q[10];
cx q[3], q[0];
cx q[7], q[4];
cx q[5], q[8];
cx q[1], q[2];
t q[9];
// Layer 1
cx q[10], q[2];
cx q[6], q[5];
cx q[1], q[7];
cx q[8], q[9];
cx q[0], q[4];
t q[3];
// Layer 2
cx q[8], q[7];
cx q[6], q[3];
cx q[5], q[9];
cx q[1], q[0];
t q[10];
// Layer 3
cx q[7], q[6];
cx q[0], q[10];
t q[8];
// Layer 4
cx q[7], q[1];
cx q[10], q[3];
t q[8];
// Layer 5
cx q[1], q[8];
cx q[2], q[3];
t q[7];
// Layer 6
cx q[8], q[4];
t q[2];
// Layer 7
cx q[8], q[0];
// Layer 8
cx q[0], q[10];
// Layer 9
cx q[10], q[5];
// Layer 10
t q[10];