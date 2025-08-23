OPENQASM 2.0;
include "qelib1.inc";
qreg q[44];
// Layer 0
cx q[3], q[21];
cx q[26], q[42];
cx q[28], q[25];
cx q[35], q[8];
cx q[23], q[12];
cx q[2], q[15];
cx q[38], q[6];
cx q[32], q[17];
cx q[31], q[10];
cx q[41], q[19];
cx q[16], q[14];
cx q[5], q[39];
cx q[20], q[37];
cx q[29], q[34];
cx q[9], q[18];
cx q[40], q[36];
cx q[4], q[33];
cx q[11], q[13];
cx q[0], q[7];
cx q[1], q[27];
cx q[30], q[22];
cx q[24], q[43];
// Layer 1
cx q[42], q[38];
cx q[25], q[36];
cx q[21], q[31];
cx q[7], q[17];
cx q[22], q[5];
t q[43];
t q[27];
// Layer 2
cx q[5], q[16];
// Layer 3
cx q[5], q[1];
// Layer 4
cx q[1], q[21];