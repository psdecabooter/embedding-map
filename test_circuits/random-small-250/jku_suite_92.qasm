OPENQASM 2.0;
include "qelib1.inc";
qreg q[8];
// Layer 0
cx q[4], q[3];
cx q[6], q[2];
cx q[0], q[1];
cx q[5], q[7];
// Layer 1
cx q[2], q[7];
cx q[0], q[6];
cx q[1], q[3];
cx q[5], q[4];
// Layer 2
cx q[7], q[4];
cx q[3], q[1];
t q[0];
// Layer 3
cx q[4], q[5];
cx q[1], q[2];
// Layer 4
cx q[1], q[0];
t q[4];
// Layer 5
cx q[1], q[0];
t q[4];
// Layer 6
cx q[4], q[0];
t q[1];
// Layer 7
cx q[0], q[1];
t q[4];
// Layer 8
cx q[1], q[5];
t q[0];
// Layer 9
cx q[0], q[2];
t q[5];
// Layer 10
cx q[5], q[2];
// Layer 11
cx q[5], q[2];
// Layer 12
cx q[2], q[3];
// Layer 13
cx q[2], q[0];
// Layer 14
cx q[2], q[5];
// Layer 15
cx q[2], q[5];
// Layer 16
t q[5];