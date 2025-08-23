OPENQASM 2.0;
include "qelib1.inc";
qreg q[50];
// Layer 0
cx q[45], q[41];
cx q[9], q[5];
cx q[29], q[44];
cx q[37], q[42];
cx q[13], q[47];
cx q[4], q[28];
cx q[43], q[48];
cx q[7], q[31];
cx q[14], q[33];
cx q[18], q[34];
cx q[8], q[49];
cx q[21], q[40];
cx q[6], q[25];
cx q[1], q[10];
cx q[38], q[12];
cx q[15], q[24];
cx q[23], q[30];
cx q[0], q[17];
cx q[20], q[46];
cx q[16], q[36];
cx q[11], q[39];
cx q[22], q[19];
cx q[27], q[32];
cx q[26], q[35];
cx q[2], q[3];
// Layer 1
cx q[11], q[27];
cx q[35], q[33];
cx q[1], q[29];
t q[9];
t q[30];
// Layer 2
cx q[33], q[23];
// Layer 3
cx q[23], q[46];