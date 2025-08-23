OPENQASM 2.0;
include "qelib1.inc";
qreg q[12];
// Layer 0
cx q[8], q[11];
cx q[5], q[1];
t q[9];
t q[6];
// Layer 1
cx q[8], q[3];
t q[11];
// Layer 2
cx q[8], q[0];
t q[3];
// Layer 3
cx q[8], q[10];
t q[0];
// Layer 4
cx q[8], q[2];
t q[10];
// Layer 5
cx q[10], q[7];
// Layer 6
cx q[7], q[4];
// Layer 7
cx q[4], q[1];
// Layer 8
cx q[4], q[2];
// Layer 9
cx q[2], q[4];
// Layer 10
cx q[2], q[10];
// Layer 11
cx q[10], q[0];
// Layer 12
cx q[10], q[3];
// Layer 13
cx q[3], q[4];
// Layer 14
cx q[4], q[7];
// Layer 15
cx q[7], q[3];
// Layer 16
t q[7];
// Layer 17
t q[7];
// Layer 18
t q[7];
// Layer 19
t q[7];
// Layer 20
t q[7];
// Layer 21
t q[7];
// Layer 22
t q[7];
// Layer 23
t q[7];
// Layer 24
t q[7];