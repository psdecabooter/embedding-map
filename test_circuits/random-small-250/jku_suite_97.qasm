OPENQASM 2.0;
include "qelib1.inc";
qreg q[8];
// Layer 0
cx q[3], q[6];
cx q[7], q[5];
cx q[0], q[2];
t q[1];
// Layer 1
cx q[5], q[4];
cx q[7], q[6];
t q[2];
// Layer 2
cx q[5], q[6];
cx q[2], q[1];
t q[4];
// Layer 3
cx q[1], q[7];
cx q[2], q[6];
t q[5];
// Layer 4
t q[5];
t q[7];
t q[6];
// Layer 5
cx q[7], q[6];
t q[5];
// Layer 6
cx q[5], q[6];
t q[7];
// Layer 7
cx q[5], q[0];
t q[6];
// Layer 8
cx q[5], q[7];
t q[6];
// Layer 9
cx q[5], q[3];
t q[7];
// Layer 10
cx q[7], q[1];
t q[3];
// Layer 11
t q[7];
// Layer 12
t q[7];
// Layer 13
t q[7];
// Layer 14
t q[7];