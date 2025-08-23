OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
// Layer 0
cx q[3], q[0];
t q[1];
t q[2];
// Layer 1
cx q[0], q[3];
cx q[2], q[1];
// Layer 2
cx q[3], q[1];
cx q[0], q[2];
// Layer 3
cx q[0], q[3];
t q[1];
// Layer 4
cx q[1], q[2];
// Layer 5
cx q[1], q[3];
// Layer 6
cx q[3], q[0];
// Layer 7
cx q[3], q[1];
// Layer 8
cx q[3], q[0];
// Layer 9
cx q[0], q[3];
// Layer 10
cx q[3], q[0];
// Layer 11
cx q[0], q[3];
// Layer 12
cx q[3], q[1];
// Layer 13
t q[3];
// Layer 14
t q[3];
// Layer 15
t q[3];
// Layer 16
t q[3];
// Layer 17
t q[3];
// Layer 18
t q[3];
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