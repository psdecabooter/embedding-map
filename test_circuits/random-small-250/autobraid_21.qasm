OPENQASM 2.0;
include "qelib1.inc";
qreg q[52];
// Layer 0
cx q[41], q[3];
cx q[2], q[29];
cx q[25], q[49];
cx q[23], q[51];
cx q[30], q[20];
cx q[34], q[10];
cx q[35], q[19];
cx q[21], q[6];
cx q[4], q[9];
cx q[17], q[47];
cx q[42], q[16];
cx q[26], q[14];
cx q[22], q[18];
cx q[38], q[43];
cx q[27], q[36];
cx q[13], q[28];
cx q[40], q[32];
cx q[39], q[50];
cx q[44], q[31];
cx q[48], q[7];
cx q[12], q[5];
cx q[15], q[11];
cx q[8], q[37];
cx q[1], q[0];
cx q[46], q[45];
cx q[24], q[33];
// Layer 1
cx q[36], q[28];
t q[32];
t q[50];
// Layer 2
cx q[32], q[26];
// Layer 3
cx q[32], q[48];
// Layer 4
cx q[32], q[5];