OPENQASM 2.0;
include "qelib1.inc";
qreg q[59];
// Layer 0
cx q[19], q[32];
cx q[40], q[45];
cx q[29], q[53];
cx q[16], q[28];
cx q[35], q[27];
cx q[46], q[41];
cx q[20], q[36];
cx q[26], q[37];
cx q[9], q[12];
cx q[25], q[54];
cx q[6], q[14];
cx q[24], q[7];
cx q[2], q[47];
cx q[0], q[34];
cx q[51], q[3];
cx q[30], q[11];
cx q[33], q[15];
cx q[42], q[21];
cx q[52], q[58];
cx q[8], q[31];
cx q[13], q[10];
cx q[38], q[17];
cx q[48], q[43];
cx q[22], q[39];
cx q[55], q[44];
cx q[50], q[56];
cx q[1], q[23];
cx q[5], q[18];
t q[57];
t q[4];
// Layer 1
cx q[33], q[49];
// Layer 2
cx q[49], q[4];