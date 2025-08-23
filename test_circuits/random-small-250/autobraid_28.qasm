OPENQASM 2.0;
include "qelib1.inc";
qreg q[53];
// Layer 0
cx q[26], q[40];
cx q[27], q[49];
cx q[14], q[23];
cx q[8], q[5];
cx q[15], q[37];
cx q[24], q[46];
cx q[47], q[10];
cx q[1], q[45];
cx q[21], q[12];
cx q[2], q[7];
cx q[50], q[30];
cx q[20], q[51];
cx q[39], q[13];
cx q[35], q[25];
cx q[6], q[29];
cx q[31], q[36];
cx q[18], q[34];
cx q[16], q[0];
cx q[22], q[11];
cx q[43], q[52];
cx q[41], q[3];
cx q[19], q[44];
cx q[4], q[38];
cx q[28], q[42];
cx q[33], q[32];
cx q[17], q[9];
t q[48];
// Layer 1
cx q[8], q[24];
cx q[49], q[12];
t q[19];
t q[31];
// Layer 2
cx q[8], q[28];