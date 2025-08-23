OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
// Layer 0
cx q[5], q[6];
cx q[4], q[7];
cx q[2], q[0];
cx q[3], q[8];
cx q[1], q[9];
// Layer 1
cx q[7], q[2];
cx q[6], q[8];
cx q[1], q[4];
t q[3];
// Layer 2
cx q[6], q[7];
cx q[8], q[2];
t q[1];
// Layer 3
cx q[8], q[2];
cx q[7], q[5];
t q[1];
// Layer 4
cx q[5], q[0];
cx q[1], q[3];
t q[7];
// Layer 5
cx q[7], q[1];
cx q[3], q[9];
t q[0];
// Layer 6
cx q[1], q[6];
cx q[3], q[4];
t q[9];
// Layer 7
t q[3];
t q[9];
t q[4];
// Layer 8
cx q[3], q[9];
t q[4];
// Layer 9
cx q[3], q[1];
t q[4];
// Layer 10
t q[3];