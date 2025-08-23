OPENQASM 2.0;
include "qelib1.inc";
qreg q[14];
// Layer 0
cx q[2], q[7];
cx q[11], q[0];
cx q[5], q[1];
t q[13];
// Layer 1
cx q[0], q[9];
cx q[11], q[12];
cx q[2], q[4];
t q[7];
// Layer 2
cx q[11], q[3];
cx q[2], q[6];
cx q[12], q[10];
t q[0];
// Layer 3
cx q[0], q[8];
cx q[6], q[2];
t q[10];
// Layer 4
cx q[6], q[10];
cx q[0], q[13];
t q[2];
// Layer 5
cx q[2], q[11];
cx q[13], q[0];
t q[6];
// Layer 6
cx q[2], q[0];
t q[11];
t q[13];
// Layer 7
t q[0];
t q[13];
t q[2];
// Layer 8
cx q[0], q[5];
t q[2];
// Layer 9
cx q[5], q[2];
t q[0];
// Layer 10
t q[0];