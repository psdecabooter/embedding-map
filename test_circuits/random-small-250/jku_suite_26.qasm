OPENQASM 2.0;
include "qelib1.inc";
qreg q[9];
// Layer 0
cx q[4], q[5];
cx q[0], q[7];
cx q[8], q[3];
cx q[2], q[1];
t q[6];
// Layer 1
cx q[7], q[0];
cx q[3], q[8];
cx q[6], q[4];
t q[5];
// Layer 2
cx q[8], q[6];
cx q[7], q[1];
cx q[0], q[5];
t q[4];
// Layer 3
cx q[1], q[0];
t q[4];
t q[6];
t q[8];
// Layer 4
cx q[4], q[2];
cx q[0], q[3];
t q[8];
// Layer 5
cx q[4], q[3];
cx q[8], q[2];
t q[0];
// Layer 6
cx q[0], q[8];
t q[3];
// Layer 7
cx q[3], q[1];
t q[8];
// Layer 8
cx q[3], q[4];
t q[8];
// Layer 9
cx q[4], q[0];
// Layer 10
cx q[0], q[3];
// Layer 11
cx q[3], q[5];