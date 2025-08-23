OPENQASM 2.0;
include "qelib1.inc";
qreg q[9];
// Layer 0
cx q[5], q[6];
cx q[3], q[0];
cx q[7], q[1];
cx q[4], q[2];
t q[8];
// Layer 1
cx q[7], q[2];
t q[3];
// Layer 2
cx q[7], q[6];
// Layer 3
cx q[6], q[4];
// Layer 4
cx q[6], q[3];
// Layer 5
cx q[6], q[1];
// Layer 6
cx q[1], q[0];
// Layer 7
cx q[0], q[4];
// Layer 8
cx q[0], q[3];
// Layer 9
cx q[3], q[5];
// Layer 10
cx q[5], q[2];
// Layer 11
cx q[5], q[2];
// Layer 12
cx q[2], q[7];
// Layer 13
cx q[2], q[3];
// Layer 14
cx q[3], q[5];
// Layer 15
cx q[5], q[0];
// Layer 16
cx q[5], q[1];
// Layer 17
cx q[1], q[6];
// Layer 18
cx q[6], q[0];
// Layer 19
cx q[6], q[5];
// Layer 20
cx q[5], q[4];
// Layer 21
cx q[5], q[2];
// Layer 22
cx q[5], q[4];
// Layer 23
cx q[5], q[7];
// Layer 24
cx q[5], q[4];
// Layer 25
t q[4];
// Layer 26
t q[4];