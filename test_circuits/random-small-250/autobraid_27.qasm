OPENQASM 2.0;
include "qelib1.inc";
qreg q[46];
// Layer 0
cx q[5], q[12];
cx q[9], q[41];
cx q[21], q[0];
cx q[17], q[39];
cx q[37], q[33];
cx q[24], q[40];
cx q[26], q[18];
cx q[14], q[38];
cx q[22], q[6];
cx q[7], q[32];
cx q[42], q[15];
cx q[13], q[2];
cx q[1], q[19];
cx q[43], q[31];
cx q[35], q[11];
cx q[28], q[16];
cx q[36], q[4];
cx q[27], q[34];
cx q[3], q[20];
cx q[10], q[45];
cx q[44], q[23];
cx q[29], q[30];
t q[25];
// Layer 1
cx q[25], q[8];
// Layer 2
cx q[25], q[27];
// Layer 3
cx q[25], q[43];
// Layer 4
cx q[25], q[44];
// Layer 5
cx q[25], q[19];
// Layer 6
cx q[25], q[36];
// Layer 7
cx q[25], q[34];
// Layer 8
cx q[25], q[15];
// Layer 9
t q[25];