OPENQASM 2.0;
include "qelib1.inc";
qreg q[57];
// Layer 0
cx q[25], q[45];
cx q[32], q[29];
cx q[44], q[0];
cx q[12], q[39];
cx q[47], q[7];
cx q[37], q[17];
cx q[1], q[23];
cx q[11], q[46];
cx q[9], q[10];
cx q[24], q[4];
cx q[20], q[16];
cx q[54], q[15];
cx q[27], q[41];
cx q[22], q[31];
cx q[34], q[51];
cx q[19], q[42];
cx q[6], q[28];
cx q[2], q[21];
cx q[35], q[33];
cx q[43], q[3];
cx q[8], q[26];
cx q[53], q[30];
cx q[14], q[48];
cx q[40], q[38];
cx q[36], q[56];
cx q[50], q[5];
cx q[55], q[52];
t q[18];
t q[13];
// Layer 1
cx q[24], q[49];
// Layer 2
cx q[24], q[18];
// Layer 3
cx q[24], q[4];