OPENQASM 2.0;
include "qelib1.inc";
qreg q[46];
// Layer 0
cx q[38], q[41];
cx q[43], q[8];
cx q[14], q[30];
cx q[16], q[20];
cx q[13], q[37];
cx q[24], q[40];
cx q[21], q[29];
cx q[5], q[9];
cx q[27], q[23];
cx q[3], q[26];
cx q[42], q[28];
cx q[17], q[19];
cx q[4], q[2];
cx q[25], q[32];
cx q[33], q[1];
cx q[39], q[22];
cx q[35], q[36];
cx q[45], q[34];
cx q[7], q[10];
cx q[44], q[11];
cx q[12], q[31];
cx q[18], q[6];
cx q[15], q[0];
// Layer 1
cx q[24], q[3];
cx q[35], q[33];
cx q[16], q[13];
cx q[41], q[1];
cx q[12], q[14];
t q[45];
t q[38];
// Layer 2
cx q[38], q[32];
// Layer 3
cx q[32], q[45];