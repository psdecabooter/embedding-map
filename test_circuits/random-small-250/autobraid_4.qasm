OPENQASM 2.0;
include "qelib1.inc";
qreg q[43];
// Layer 0
cx q[36], q[17];
cx q[18], q[16];
cx q[11], q[23];
cx q[19], q[15];
cx q[37], q[33];
cx q[6], q[12];
cx q[14], q[29];
cx q[41], q[8];
cx q[5], q[22];
cx q[32], q[35];
cx q[9], q[21];
cx q[26], q[31];
cx q[28], q[30];
cx q[10], q[2];
cx q[39], q[40];
cx q[34], q[4];
cx q[20], q[42];
cx q[25], q[24];
cx q[38], q[13];
cx q[3], q[27];
cx q[0], q[7];
t q[1];
// Layer 1
cx q[31], q[5];
cx q[34], q[41];
cx q[29], q[20];
cx q[33], q[2];
cx q[27], q[39];
cx q[1], q[11];
t q[28];
// Layer 2
cx q[5], q[33];
// Layer 3
cx q[33], q[5];
// Layer 4
t q[33];