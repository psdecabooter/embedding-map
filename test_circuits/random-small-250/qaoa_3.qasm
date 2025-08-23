OPENQASM 2.0;
include "qelib1.inc";
qreg q[21];
// Layer 0
cx q[16], q[20];
cx q[10], q[19];
cx q[15], q[14];
cx q[7], q[0];
cx q[12], q[18];
cx q[4], q[8];
cx q[6], q[2];
cx q[11], q[13];
cx q[17], q[1];
cx q[9], q[3];
t q[5];
// Layer 1
cx q[12], q[15];
cx q[20], q[17];
cx q[13], q[7];
cx q[18], q[16];
cx q[11], q[14];
cx q[9], q[2];
cx q[0], q[6];
cx q[4], q[8];
cx q[19], q[3];
cx q[5], q[10];
t q[1];
// Layer 2
cx q[8], q[19];
cx q[12], q[20];
cx q[0], q[13];
cx q[7], q[17];
cx q[9], q[6];
cx q[1], q[15];
t q[18];
t q[14];
// Layer 3
cx q[13], q[6];
// Layer 4
cx q[13], q[0];