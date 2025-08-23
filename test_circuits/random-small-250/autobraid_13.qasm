OPENQASM 2.0;
include "qelib1.inc";
qreg q[31];
// Layer 0
cx q[19], q[15];
cx q[25], q[2];
cx q[26], q[11];
cx q[28], q[10];
cx q[22], q[21];
cx q[12], q[4];
cx q[8], q[0];
cx q[24], q[6];
cx q[20], q[30];
cx q[17], q[27];
cx q[16], q[9];
cx q[14], q[7];
cx q[29], q[18];
cx q[13], q[1];
cx q[23], q[5];
t q[3];
// Layer 1
cx q[9], q[1];
cx q[22], q[8];
cx q[19], q[24];
cx q[17], q[2];
cx q[7], q[0];
cx q[14], q[12];
t q[25];
// Layer 2
t q[17];
t q[14];
// Layer 3
cx q[17], q[0];
// Layer 4
cx q[17], q[3];
// Layer 5
cx q[3], q[4];
// Layer 6
cx q[3], q[11];
// Layer 7
cx q[11], q[24];
// Layer 8
cx q[24], q[11];
// Layer 9
cx q[11], q[5];