OPENQASM 2.0;
include "qelib1.inc";
qreg q[8];
// Layer 0
cx q[6], q[3];
cx q[0], q[2];
cx q[4], q[5];
cx q[7], q[1];
// Layer 1
cx q[6], q[0];
cx q[2], q[3];
cx q[1], q[4];
cx q[7], q[5];
// Layer 2
cx q[0], q[3];
cx q[7], q[4];
cx q[1], q[6];
cx q[5], q[2];
// Layer 3
cx q[1], q[4];
cx q[6], q[0];
t q[2];
// Layer 4
t q[1];
t q[4];
// Layer 5
cx q[4], q[6];
// Layer 6
cx q[4], q[7];
// Layer 7
cx q[4], q[7];
// Layer 8
cx q[4], q[6];
// Layer 9
cx q[6], q[1];
// Layer 10
cx q[1], q[4];
// Layer 11
cx q[1], q[7];
// Layer 12
cx q[7], q[1];
// Layer 13
cx q[7], q[2];
// Layer 14
cx q[7], q[2];
// Layer 15
cx q[7], q[2];
// Layer 16
cx q[7], q[2];
// Layer 17
cx q[2], q[7];
// Layer 18
cx q[7], q[4];
// Layer 19
t q[7];