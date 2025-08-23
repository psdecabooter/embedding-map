OPENQASM 2.0;
include "qelib1.inc";
qreg q[12];
// Layer 0
cx q[11], q[9];
cx q[5], q[8];
cx q[4], q[3];
cx q[2], q[6];
cx q[10], q[0];
cx q[7], q[1];
// Layer 1
cx q[3], q[2];
cx q[11], q[6];
cx q[10], q[1];
t q[8];
// Layer 2
cx q[3], q[0];
cx q[1], q[4];
cx q[6], q[7];
t q[8];
// Layer 3
cx q[0], q[2];
cx q[7], q[4];
t q[3];
// Layer 4
cx q[2], q[4];
cx q[0], q[5];
t q[3];
// Layer 5
t q[4];
t q[2];
t q[0];
// Layer 6
cx q[0], q[1];
t q[2];
// Layer 7
cx q[1], q[10];
t q[0];
// Layer 8
cx q[0], q[5];
t q[1];
// Layer 9
cx q[0], q[9];
t q[5];
// Layer 10
t q[9];