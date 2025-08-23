OPENQASM 2.0;
include "qelib1.inc";
qreg q[53];
// Layer 0
cx q[45], q[31];
cx q[52], q[51];
cx q[37], q[17];
cx q[9], q[12];
cx q[19], q[32];
cx q[50], q[39];
cx q[41], q[4];
cx q[33], q[5];
cx q[8], q[16];
cx q[13], q[48];
cx q[22], q[3];
cx q[23], q[0];
cx q[18], q[24];
cx q[14], q[36];
cx q[11], q[40];
cx q[25], q[7];
cx q[21], q[35];
cx q[29], q[43];
cx q[34], q[42];
cx q[2], q[6];
cx q[20], q[28];
cx q[47], q[46];
cx q[10], q[26];
cx q[1], q[27];
cx q[38], q[44];
cx q[30], q[49];
t q[15];
// Layer 1
cx q[35], q[23];
cx q[37], q[33];
t q[17];
// Layer 2
t q[23];
t q[35];