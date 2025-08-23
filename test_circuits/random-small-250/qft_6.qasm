OPENQASM 2.0;
include "qelib1.inc";
qreg q[7];
// Layer 0
t q[6];
t q[5];
t q[3];
t q[2];
t q[1];
t q[0];
t q[4];
// Layer 1
cx q[0], q[3];
t q[2];
t q[4];
t q[1];
t q[5];
t q[6];
// Layer 2
t q[1];
t q[2];
t q[4];
t q[6];
t q[3];
// Layer 3
t q[6];
// Layer 4
t q[6];
// Layer 5
t q[6];
// Layer 6
t q[6];
// Layer 7
t q[6];
// Layer 8
t q[6];
// Layer 9
t q[6];
// Layer 10
t q[6];
// Layer 11
t q[6];
// Layer 12
t q[6];
// Layer 13
t q[6];
// Layer 14
t q[6];
// Layer 15
t q[6];
// Layer 16
t q[6];