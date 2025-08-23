OPENQASM 2.0;
include "qelib1.inc";
qreg q[6];
// Layer 0
t q[1];
t q[2];
t q[4];
t q[3];
t q[5];
t q[0];
// Layer 1
cx q[0], q[5];
t q[4];
t q[1];
t q[2];
t q[3];
// Layer 2
cx q[1], q[4];
t q[5];
t q[0];
t q[2];
t q[3];
// Layer 3
t q[5];
// Layer 4
t q[5];
// Layer 5
t q[5];
// Layer 6
t q[5];
// Layer 7
t q[5];
// Layer 8
t q[5];
// Layer 9
t q[5];
// Layer 10
t q[5];
// Layer 11
t q[5];
// Layer 12
t q[5];
// Layer 13
t q[5];
// Layer 14
t q[5];
// Layer 15
t q[5];
// Layer 16
t q[5];
// Layer 17
t q[5];
// Layer 18
t q[5];