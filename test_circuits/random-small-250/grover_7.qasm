OPENQASM 2.0;
include "qelib1.inc";
qreg q[6];
// Layer 0
cx q[1], q[4];
cx q[2], q[5];
t q[3];
t q[0];
// Layer 1
t q[5];
t q[1];
t q[2];
t q[0];
// Layer 2
t q[0];
// Layer 3
t q[0];
// Layer 4
t q[0];
// Layer 5
t q[0];
// Layer 6
t q[0];
// Layer 7
t q[0];
// Layer 8
t q[0];
// Layer 9
t q[0];
// Layer 10
t q[0];
// Layer 11
t q[0];
// Layer 12
t q[0];
// Layer 13
t q[0];
// Layer 14
t q[0];
// Layer 15
t q[0];
// Layer 16
t q[0];
// Layer 17
t q[0];
// Layer 18
t q[0];
// Layer 19
t q[0];
// Layer 20
t q[0];
// Layer 21
t q[0];
// Layer 22
t q[0];
// Layer 23
t q[0];
// Layer 24
t q[0];
// Layer 25
t q[0];