OPENQASM 2.0;
include "qelib1.inc";
qreg q[12];
// Layer 0
cx q[1], q[7];
cx q[10], q[0];
t q[8];
t q[3];
// Layer 1
cx q[0], q[5];
t q[10];
// Layer 2
cx q[5], q[11];
t q[10];
// Layer 3
cx q[11], q[6];
t q[10];
// Layer 4
cx q[10], q[9];
t q[11];
// Layer 5
cx q[9], q[2];
// Layer 6
cx q[9], q[4];
// Layer 7
cx q[9], q[4];
// Layer 8
cx q[9], q[7];
// Layer 9
cx q[9], q[8];
// Layer 10
cx q[9], q[4];
// Layer 11
cx q[9], q[8];
// Layer 12
cx q[9], q[8];
// Layer 13
cx q[9], q[1];
// Layer 14
cx q[9], q[6];
// Layer 15
cx q[6], q[0];
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