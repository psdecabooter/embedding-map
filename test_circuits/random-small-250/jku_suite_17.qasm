OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
// Layer 0
cx q[0], q[3];
t q[2];
t q[1];
// Layer 1
cx q[2], q[3];
cx q[0], q[1];
// Layer 2
cx q[3], q[2];
// Layer 3
cx q[2], q[3];
// Layer 4
cx q[2], q[3];
// Layer 5
cx q[2], q[3];
// Layer 6
cx q[3], q[1];
// Layer 7
cx q[3], q[0];
// Layer 8
cx q[0], q[3];
// Layer 9
cx q[0], q[3];
// Layer 10
cx q[0], q[1];
// Layer 11
cx q[1], q[3];
// Layer 12
cx q[1], q[0];
// Layer 13
cx q[1], q[3];
// Layer 14
cx q[1], q[0];
// Layer 15
cx q[0], q[3];
// Layer 16
cx q[3], q[0];
// Layer 17
cx q[3], q[2];
// Layer 18
cx q[2], q[3];
// Layer 19
t q[3];
// Layer 20
t q[3];
// Layer 21
t q[3];
// Layer 22
t q[3];
// Layer 23
t q[3];
// Layer 24
t q[3];
// Layer 25
t q[3];
// Layer 26
t q[3];
// Layer 27
t q[3];
// Layer 28
t q[3];