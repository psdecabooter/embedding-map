OPENQASM 2.0;
include "qelib1.inc";
qreg q[14];
// Layer 0
cx q[13], q[2];
cx q[8], q[3];
cx q[6], q[11];
cx q[5], q[0];
cx q[12], q[4];
cx q[10], q[1];
cx q[7], q[9];
// Layer 1
cx q[13], q[10];
cx q[12], q[11];
cx q[1], q[7];
cx q[6], q[9];
cx q[0], q[8];
cx q[4], q[5];
cx q[3], q[2];
// Layer 2
cx q[9], q[1];
cx q[8], q[7];
cx q[2], q[4];
cx q[6], q[11];
cx q[0], q[13];
cx q[10], q[12];
cx q[3], q[5];
// Layer 3
cx q[2], q[0];
cx q[4], q[13];
cx q[6], q[3];
t q[5];
// Layer 4
cx q[2], q[3];
// Layer 5
cx q[3], q[7];
// Layer 6
cx q[7], q[0];
// Layer 7
cx q[7], q[5];
// Layer 8
cx q[7], q[1];
// Layer 9
cx q[1], q[13];
// Layer 10
t q[1];