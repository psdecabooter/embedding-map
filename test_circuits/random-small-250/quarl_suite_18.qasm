OPENQASM 2.0;
include "qelib1.inc";
qreg q[9];
// Layer 0
cx q[3], q[7];
cx q[0], q[2];
cx q[6], q[1];
cx q[5], q[8];
t q[4];
// Layer 1
cx q[2], q[5];
cx q[6], q[3];
cx q[8], q[7];
cx q[4], q[1];
t q[0];
// Layer 2
cx q[8], q[2];
cx q[4], q[1];
cx q[3], q[0];
cx q[6], q[7];
t q[5];
// Layer 3
cx q[2], q[6];
cx q[3], q[0];
t q[1];
// Layer 4
t q[6];
t q[1];
// Layer 5
cx q[6], q[2];
// Layer 6
cx q[6], q[4];
// Layer 7
cx q[6], q[8];
// Layer 8
cx q[6], q[0];
// Layer 9
cx q[6], q[7];
// Layer 10
cx q[7], q[6];
// Layer 11
cx q[6], q[3];
// Layer 12
cx q[3], q[4];
// Layer 13
cx q[3], q[2];
// Layer 14
cx q[2], q[4];
// Layer 15
cx q[4], q[2];
// Layer 16
cx q[4], q[0];