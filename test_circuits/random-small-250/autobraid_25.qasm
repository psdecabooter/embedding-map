OPENQASM 2.0;
include "qelib1.inc";
qreg q[51];
// Layer 0
cx q[40], q[30];
cx q[3], q[9];
cx q[20], q[46];
cx q[34], q[37];
cx q[26], q[41];
cx q[45], q[8];
cx q[12], q[42];
cx q[17], q[35];
cx q[13], q[33];
cx q[28], q[48];
cx q[10], q[5];
cx q[49], q[18];
cx q[29], q[36];
cx q[0], q[39];
cx q[38], q[50];
cx q[21], q[32];
cx q[47], q[43];
cx q[14], q[23];
cx q[15], q[25];
cx q[4], q[31];
cx q[22], q[19];
cx q[11], q[6];
cx q[7], q[16];
cx q[27], q[1];
cx q[2], q[44];
t q[24];
// Layer 1
cx q[0], q[21];
cx q[13], q[14];
t q[16];
t q[29];
// Layer 2
cx q[14], q[10];
// Layer 3
cx q[10], q[0];