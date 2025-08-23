OPENQASM 2.0;
include "qelib1.inc";
qreg q[5];
// Layer 0
cx q[4], q[0];
cx q[1], q[2];
// Layer 1
cx q[1], q[3];
t q[4];
// Layer 2
cx q[1], q[0];
t q[4];
// Layer 3
t q[0];
t q[1];
// Layer 4
cx q[0], q[3];
// Layer 5
cx q[0], q[1];
// Layer 6
cx q[0], q[3];
// Layer 7
cx q[0], q[4];
// Layer 8
cx q[4], q[1];
// Layer 9
cx q[1], q[2];
// Layer 10
cx q[1], q[3];
// Layer 11
cx q[1], q[0];
// Layer 12
cx q[0], q[1];
// Layer 13
cx q[1], q[2];
// Layer 14
cx q[1], q[4];
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