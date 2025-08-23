OPENQASM 2.0;
include "qelib1.inc";
qreg q[15];
// Layer 0
cx q[2], q[0];
cx q[14], q[8];
cx q[1], q[13];
cx q[3], q[4];
cx q[10], q[5];
cx q[12], q[6];
cx q[7], q[11];
t q[9];
// Layer 1
cx q[7], q[14];
cx q[2], q[12];
cx q[6], q[9];
cx q[0], q[10];
cx q[3], q[11];
cx q[13], q[4];
cx q[8], q[5];
t q[1];
// Layer 2
cx q[5], q[8];
cx q[14], q[7];
cx q[10], q[12];
cx q[4], q[11];
cx q[1], q[13];
cx q[0], q[6];
cx q[3], q[9];
t q[2];
// Layer 3
cx q[0], q[11];
cx q[6], q[3];
t q[14];
t q[10];
// Layer 4
cx q[6], q[2];
// Layer 5
cx q[2], q[6];
// Layer 6
cx q[2], q[11];
// Layer 7
cx q[11], q[4];