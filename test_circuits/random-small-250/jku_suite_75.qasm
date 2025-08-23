OPENQASM 2.0;
include "qelib1.inc";
qreg q[5];
// Layer 0
cx q[3], q[1];
cx q[2], q[0];
t q[4];
// Layer 1
cx q[4], q[3];
cx q[2], q[1];
t q[0];
// Layer 2
cx q[1], q[4];
cx q[2], q[3];
t q[0];
// Layer 3
cx q[4], q[2];
cx q[3], q[1];
t q[0];
// Layer 4
cx q[3], q[4];
cx q[0], q[1];
t q[2];
// Layer 5
cx q[1], q[0];
t q[4];
// Layer 6
cx q[0], q[1];
t q[4];
// Layer 7
cx q[0], q[1];
t q[4];
// Layer 8
cx q[1], q[0];
t q[4];
// Layer 9
cx q[1], q[3];
t q[0];
// Layer 10
cx q[3], q[4];
// Layer 11
cx q[3], q[4];
// Layer 12
cx q[3], q[4];
// Layer 13
cx q[4], q[1];
// Layer 14
t q[4];
// Layer 15
t q[4];
// Layer 16
t q[4];