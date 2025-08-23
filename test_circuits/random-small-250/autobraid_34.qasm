OPENQASM 2.0;
include "qelib1.inc";
qreg q[46];
// Layer 0
cx q[44], q[0];
cx q[35], q[2];
cx q[40], q[12];
cx q[37], q[29];
cx q[32], q[16];
cx q[24], q[22];
cx q[1], q[23];
cx q[10], q[5];
cx q[25], q[3];
cx q[42], q[6];
cx q[31], q[13];
cx q[36], q[45];
cx q[15], q[7];
cx q[34], q[18];
cx q[4], q[41];
cx q[26], q[14];
cx q[38], q[9];
cx q[28], q[33];
cx q[20], q[21];
cx q[39], q[19];
cx q[8], q[43];
cx q[27], q[17];
cx q[30], q[11];
// Layer 1
cx q[27], q[10];
cx q[23], q[20];
cx q[34], q[26];
cx q[17], q[31];
t q[28];
// Layer 2
t q[17];
t q[23];
// Layer 3
cx q[17], q[5];
// Layer 4
cx q[17], q[36];