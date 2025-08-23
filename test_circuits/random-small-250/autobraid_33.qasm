OPENQASM 2.0;
include "qelib1.inc";
qreg q[51];
// Layer 0
cx q[35], q[47];
cx q[0], q[32];
cx q[34], q[23];
cx q[21], q[22];
cx q[15], q[4];
cx q[48], q[9];
cx q[37], q[36];
cx q[5], q[46];
cx q[26], q[38];
cx q[41], q[11];
cx q[42], q[13];
cx q[3], q[17];
cx q[1], q[40];
cx q[18], q[10];
cx q[50], q[16];
cx q[6], q[25];
cx q[8], q[24];
cx q[44], q[43];
cx q[49], q[2];
cx q[29], q[14];
cx q[12], q[19];
cx q[33], q[28];
cx q[31], q[30];
cx q[39], q[45];
cx q[27], q[20];
t q[7];
// Layer 1
cx q[27], q[6];
t q[0];
t q[43];
// Layer 2
cx q[0], q[19];
// Layer 3
cx q[19], q[35];
// Layer 4
cx q[35], q[20];