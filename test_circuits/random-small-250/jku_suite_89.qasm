OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
// Layer 0
cx q[2], q[1];
t q[0];
// Layer 1
cx q[2], q[0];
t q[1];
// Layer 2
t q[0];
t q[1];
// Layer 3
cx q[0], q[2];
// Layer 4
cx q[2], q[0];
// Layer 5
cx q[2], q[1];
// Layer 6
cx q[2], q[0];
// Layer 7
cx q[2], q[1];
// Layer 8
cx q[1], q[2];
// Layer 9
cx q[2], q[0];
// Layer 10
cx q[2], q[0];
// Layer 11
cx q[2], q[1];
// Layer 12
cx q[1], q[2];
// Layer 13
t q[1];
// Layer 14
t q[1];
// Layer 15
t q[1];
// Layer 16
t q[1];
// Layer 17
t q[1];
// Layer 18
t q[1];
// Layer 19
t q[1];
// Layer 20
t q[1];
// Layer 21
t q[1];
// Layer 22
t q[1];
// Layer 23
t q[1];
// Layer 24
t q[1];
// Layer 25
t q[1];
// Layer 26
t q[1];
// Layer 27
t q[1];
// Layer 28
t q[1];