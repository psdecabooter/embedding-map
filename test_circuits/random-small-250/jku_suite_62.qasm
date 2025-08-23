OPENQASM 2.0;
include "qelib1.inc";
qreg q[14];
// Layer 0
cx q[10], q[5];
cx q[2], q[1];
cx q[4], q[8];
t q[3];
// Layer 1
cx q[5], q[12];
cx q[1], q[13];
cx q[2], q[0];
t q[3];
// Layer 2
cx q[12], q[7];
cx q[5], q[11];
cx q[0], q[9];
t q[2];
// Layer 3
cx q[5], q[6];
cx q[2], q[1];
cx q[7], q[8];
t q[12];
// Layer 4
cx q[8], q[1];
cx q[5], q[12];
t q[2];
t q[6];
// Layer 5
cx q[1], q[7];
cx q[5], q[8];
t q[12];
t q[2];
// Layer 6
cx q[7], q[10];
t q[8];
t q[1];
// Layer 7
cx q[1], q[6];
t q[8];
// Layer 8
cx q[1], q[6];
t q[8];
// Layer 9
t q[1];