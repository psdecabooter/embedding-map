OPENQASM 2.0;
include "qelib1.inc";
qreg q[50];
// Layer 0
cx q[30], q[9];
cx q[33], q[13];
cx q[37], q[7];
cx q[16], q[45];
cx q[41], q[3];
cx q[18], q[20];
cx q[1], q[6];
cx q[29], q[38];
cx q[25], q[5];
cx q[43], q[39];
cx q[14], q[24];
cx q[2], q[35];
cx q[22], q[36];
cx q[28], q[26];
cx q[40], q[0];
cx q[11], q[10];
cx q[27], q[8];
cx q[19], q[32];
cx q[48], q[31];
cx q[4], q[42];
cx q[49], q[34];
cx q[46], q[12];
cx q[21], q[17];
cx q[15], q[44];
cx q[47], q[23];
// Layer 1
cx q[26], q[38];
t q[22];
t q[40];
// Layer 2
cx q[40], q[3];
// Layer 3
cx q[3], q[27];
// Layer 4
cx q[3], q[14];
// Layer 5
cx q[14], q[22];