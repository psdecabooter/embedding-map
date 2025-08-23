OPENQASM 2.0;
include "qelib1.inc";
qreg q[40];
// Layer 0
cx q[20], q[34];
cx q[27], q[14];
cx q[4], q[12];
cx q[35], q[37];
cx q[9], q[26];
cx q[28], q[33];
cx q[10], q[36];
cx q[18], q[13];
cx q[24], q[31];
cx q[25], q[7];
cx q[1], q[19];
cx q[5], q[21];
cx q[39], q[15];
cx q[30], q[32];
cx q[0], q[16];
cx q[22], q[23];
cx q[6], q[2];
cx q[8], q[17];
cx q[11], q[3];
cx q[38], q[29];
// Layer 1
cx q[35], q[25];
cx q[0], q[31];
cx q[33], q[17];
cx q[6], q[3];
cx q[4], q[37];
cx q[39], q[14];
cx q[16], q[38];
cx q[18], q[11];
cx q[22], q[36];
t q[28];
t q[21];
// Layer 2
cx q[4], q[22];