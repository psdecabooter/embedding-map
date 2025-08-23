OPENQASM 2.0;
include "qelib1.inc";
qreg q[57];
// Layer 0
cx q[34], q[10];
cx q[53], q[31];
cx q[3], q[36];
cx q[16], q[46];
cx q[5], q[32];
cx q[41], q[43];
cx q[18], q[35];
cx q[19], q[9];
cx q[14], q[1];
cx q[44], q[0];
cx q[27], q[25];
cx q[55], q[29];
cx q[54], q[17];
cx q[37], q[28];
cx q[48], q[52];
cx q[7], q[51];
cx q[30], q[33];
cx q[40], q[24];
cx q[47], q[38];
cx q[26], q[42];
cx q[2], q[21];
cx q[15], q[56];
cx q[50], q[11];
cx q[20], q[45];
cx q[49], q[13];
t q[22];
t q[6];
// Layer 1
cx q[36], q[4];
// Layer 2
cx q[36], q[23];
// Layer 3
cx q[23], q[39];
// Layer 4
cx q[23], q[12];
// Layer 5
cx q[23], q[8];