OPENQASM 2.0;
include "qelib1.inc";
qreg q[7];
// Layer 0
cx q[4], q[2];
cx q[1], q[3];
cx q[0], q[5];
// Layer 1
cx q[5], q[6];
cx q[3], q[2];
t q[1];
// Layer 2
cx q[3], q[0];
t q[1];
// Layer 3
cx q[3], q[5];
t q[1];
// Layer 4
cx q[3], q[6];
t q[1];
// Layer 5
cx q[3], q[6];
t q[1];
// Layer 6
cx q[1], q[3];
t q[6];
// Layer 7
cx q[1], q[2];
t q[3];
// Layer 8
cx q[1], q[0];
t q[3];
// Layer 9
t q[1];
t q[3];
// Layer 10
cx q[3], q[5];
// Layer 11
cx q[5], q[3];
// Layer 12
cx q[5], q[0];
// Layer 13
cx q[5], q[3];
// Layer 14
cx q[5], q[0];
// Layer 15
t q[5];
// Layer 16
t q[5];
// Layer 17
t q[5];
// Layer 18
t q[5];
// Layer 19
t q[5];