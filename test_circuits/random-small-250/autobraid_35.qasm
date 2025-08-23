OPENQASM 2.0;
include "qelib1.inc";
qreg q[52];
// Layer 0
cx q[35], q[13];
cx q[22], q[5];
cx q[49], q[11];
cx q[0], q[44];
cx q[41], q[50];
cx q[3], q[45];
cx q[28], q[33];
cx q[18], q[1];
cx q[29], q[19];
cx q[40], q[24];
cx q[31], q[43];
cx q[42], q[30];
cx q[14], q[12];
cx q[36], q[15];
cx q[46], q[7];
cx q[16], q[48];
cx q[23], q[6];
cx q[51], q[4];
cx q[2], q[21];
cx q[27], q[17];
cx q[20], q[32];
cx q[34], q[10];
cx q[8], q[47];
t q[25];
t q[38];
// Layer 1
cx q[33], q[9];
// Layer 2
cx q[33], q[37];
// Layer 3
cx q[33], q[39];
// Layer 4
cx q[33], q[26];
// Layer 5
cx q[33], q[24];
// Layer 6
cx q[24], q[31];
// Layer 7
cx q[24], q[17];