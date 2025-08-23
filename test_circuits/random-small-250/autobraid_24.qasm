OPENQASM 2.0;
include "qelib1.inc";
qreg q[33];
// Layer 0
cx q[4], q[14];
cx q[0], q[29];
cx q[7], q[22];
cx q[18], q[28];
cx q[32], q[12];
cx q[26], q[10];
cx q[15], q[13];
cx q[25], q[30];
cx q[31], q[21];
cx q[27], q[2];
cx q[1], q[6];
cx q[17], q[8];
cx q[19], q[9];
cx q[24], q[23];
cx q[11], q[3];
cx q[20], q[5];
t q[16];
// Layer 1
cx q[26], q[7];
cx q[12], q[15];
cx q[2], q[32];
cx q[17], q[24];
cx q[25], q[19];
t q[29];
t q[11];
// Layer 2
cx q[2], q[5];
// Layer 3
cx q[2], q[3];
// Layer 4
cx q[2], q[22];
// Layer 5
cx q[2], q[32];
// Layer 6
cx q[32], q[11];
// Layer 7
cx q[11], q[8];
// Layer 8
cx q[8], q[21];
// Layer 9
cx q[21], q[11];