OPENQASM 2.0;
include "qelib1.inc";
qreg q[27];
// Layer 0
cx q[10], q[23];
cx q[3], q[1];
cx q[0], q[2];
cx q[19], q[26];
cx q[18], q[9];
cx q[20], q[25];
cx q[13], q[14];
cx q[22], q[16];
cx q[11], q[6];
cx q[7], q[17];
cx q[12], q[21];
cx q[4], q[5];
cx q[24], q[8];
t q[15];
// Layer 1
cx q[8], q[16];
cx q[26], q[22];
cx q[20], q[11];
cx q[6], q[13];
cx q[7], q[5];
cx q[19], q[14];
cx q[1], q[15];
cx q[17], q[24];
cx q[10], q[21];
cx q[9], q[4];
cx q[3], q[12];
cx q[23], q[18];
t q[0];
// Layer 2
cx q[11], q[13];
// Layer 3
cx q[13], q[19];
// Layer 4
cx q[13], q[5];
// Layer 5
cx q[5], q[10];
// Layer 6
t q[5];