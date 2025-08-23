OPENQASM 2.0;
include "qelib1.inc";
qreg q[38];
// Layer 0
cx q[12], q[2];
cx q[25], q[28];
cx q[34], q[6];
cx q[24], q[13];
cx q[21], q[22];
cx q[3], q[31];
cx q[26], q[23];
cx q[27], q[37];
cx q[36], q[35];
cx q[8], q[30];
cx q[0], q[9];
cx q[20], q[18];
cx q[15], q[10];
cx q[11], q[7];
cx q[4], q[16];
t q[29];
// Layer 1
cx q[6], q[19];
// Layer 2
cx q[6], q[5];
// Layer 3
cx q[5], q[14];
// Layer 4
cx q[14], q[33];
// Layer 5
cx q[33], q[1];
// Layer 6
cx q[33], q[17];
// Layer 7
cx q[17], q[32];
// Layer 8
cx q[17], q[11];
// Layer 9
cx q[17], q[34];
// Layer 10
cx q[34], q[4];
// Layer 11
cx q[34], q[7];
// Layer 12
cx q[34], q[35];
// Layer 13
cx q[35], q[23];
// Layer 14
cx q[35], q[28];
// Layer 15
cx q[28], q[36];
// Layer 16
t q[28];