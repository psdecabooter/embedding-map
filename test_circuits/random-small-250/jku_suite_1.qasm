OPENQASM 2.0;
include "qelib1.inc";
qreg q[6];
// Layer 0
cx q[0], q[1];
cx q[5], q[2];
t q[4];
t q[3];
// Layer 1
t q[0];
t q[3];
t q[4];
t q[1];
// Layer 2
cx q[3], q[2];
cx q[0], q[1];
cx q[4], q[5];
// Layer 3
cx q[5], q[4];
cx q[3], q[1];
cx q[0], q[2];
// Layer 4
cx q[4], q[3];
t q[0];
t q[5];
// Layer 5
cx q[3], q[1];
cx q[0], q[5];
t q[4];
// Layer 6
cx q[4], q[5];
t q[3];
t q[1];
// Layer 7
cx q[3], q[5];
t q[4];
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