OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
// Layer 0
cx q[1], q[0];
cx q[2], q[3];
// Layer 1
cx q[2], q[0];
cx q[1], q[3];
// Layer 2
cx q[3], q[1];
cx q[0], q[2];
// Layer 3
cx q[2], q[1];
cx q[0], q[3];
// Layer 4
cx q[0], q[1];
cx q[2], q[3];
// Layer 5
cx q[0], q[3];
cx q[2], q[1];
// Layer 6
cx q[1], q[3];
cx q[2], q[0];
// Layer 7
cx q[3], q[1];
cx q[2], q[0];
// Layer 8
cx q[3], q[2];
t q[0];
// Layer 9
t q[3];
t q[2];
// Layer 10
cx q[2], q[3];
// Layer 11
cx q[2], q[3];
// Layer 12
cx q[3], q[2];
// Layer 13
cx q[3], q[2];
// Layer 14
cx q[2], q[3];
// Layer 15
cx q[2], q[3];
// Layer 16
cx q[3], q[2];
// Layer 17
cx q[2], q[3];
// Layer 18
cx q[3], q[2];
// Layer 19
cx q[3], q[2];
// Layer 20
cx q[2], q[3];
// Layer 21
t q[3];