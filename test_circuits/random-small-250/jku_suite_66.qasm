OPENQASM 2.0;
include "qelib1.inc";
qreg q[7];
// Layer 0
cx q[6], q[0];
cx q[3], q[5];
cx q[2], q[1];
t q[4];
// Layer 1
cx q[6], q[0];
cx q[1], q[4];
cx q[5], q[3];
// Layer 2
cx q[0], q[3];
cx q[1], q[6];
// Layer 3
cx q[6], q[0];
t q[3];
// Layer 4
cx q[6], q[1];
t q[0];
// Layer 5
cx q[0], q[1];
t q[6];
// Layer 6
cx q[6], q[0];
t q[1];
// Layer 7
t q[1];
t q[0];
// Layer 8
cx q[0], q[2];
// Layer 9
cx q[2], q[0];
// Layer 10
cx q[2], q[0];
// Layer 11
cx q[2], q[4];
// Layer 12
t q[2];
// Layer 13
t q[2];
// Layer 14
t q[2];
// Layer 15
t q[2];
// Layer 16
t q[2];
// Layer 17
t q[2];
// Layer 18
t q[2];
// Layer 19
t q[2];
// Layer 20
t q[2];