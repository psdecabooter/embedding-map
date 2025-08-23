OPENQASM 2.0;
include "qelib1.inc";
qreg q[14];
// Layer 0
cx q[11], q[0];
t q[13];
t q[12];
t q[8];
t q[6];
// Layer 1
cx q[12], q[3];
cx q[0], q[7];
cx q[8], q[10];
t q[6];
// Layer 2
cx q[10], q[2];
cx q[0], q[4];
cx q[12], q[5];
t q[3];
// Layer 3
cx q[3], q[1];
cx q[4], q[9];
cx q[5], q[13];
t q[0];
// Layer 4
cx q[4], q[13];
cx q[0], q[2];
cx q[1], q[9];
// Layer 5
cx q[4], q[6];
t q[13];
t q[0];
// Layer 6
cx q[0], q[4];
cx q[6], q[11];
t q[13];
// Layer 7
cx q[6], q[12];
t q[13];
t q[4];
// Layer 8
t q[4];
t q[12];
t q[6];