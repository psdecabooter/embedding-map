OPENQASM 2.0;
include "qelib1.inc";
qreg q[24];
// Layer 0
cx q[12], q[18];
cx q[5], q[23];
cx q[11], q[0];
cx q[14], q[13];
cx q[3], q[19];
cx q[8], q[4];
cx q[7], q[15];
cx q[22], q[21];
cx q[17], q[1];
cx q[10], q[2];
cx q[9], q[20];
cx q[6], q[16];
// Layer 1
cx q[12], q[22];
cx q[3], q[18];
cx q[11], q[15];
cx q[10], q[5];
cx q[16], q[21];
cx q[23], q[14];
cx q[17], q[13];
cx q[0], q[20];
cx q[9], q[6];
cx q[2], q[4];
cx q[1], q[8];
cx q[19], q[7];
// Layer 2
cx q[10], q[15];
cx q[3], q[5];
cx q[2], q[4];
t q[13];
t q[18];
// Layer 3
cx q[2], q[21];
// Layer 4
cx q[2], q[14];
// Layer 5
cx q[2], q[20];