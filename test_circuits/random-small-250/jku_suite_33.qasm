OPENQASM 2.0;
include "qelib1.inc";
qreg q[15];
// Layer 0
cx q[13], q[12];
cx q[8], q[1];
cx q[5], q[0];
cx q[2], q[3];
t q[4];
// Layer 1
cx q[13], q[9];
cx q[12], q[11];
cx q[0], q[7];
t q[8];
t q[5];
// Layer 2
cx q[9], q[6];
cx q[7], q[14];
t q[12];
t q[5];
// Layer 3
cx q[5], q[10];
cx q[6], q[0];
cx q[12], q[7];
t q[14];
// Layer 4
cx q[0], q[13];
t q[6];
t q[10];
t q[5];
// Layer 5
cx q[13], q[0];
cx q[10], q[8];
t q[6];
t q[5];
// Layer 6
cx q[0], q[12];
t q[8];
t q[13];
// Layer 7
t q[0];
// Layer 8
t q[0];
// Layer 9
t q[0];