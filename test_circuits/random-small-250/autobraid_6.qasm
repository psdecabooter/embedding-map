OPENQASM 2.0;
include "qelib1.inc";
qreg q[54];
// Layer 0
cx q[22], q[30];
cx q[8], q[7];
cx q[50], q[36];
cx q[38], q[1];
cx q[2], q[4];
cx q[13], q[24];
cx q[32], q[23];
cx q[12], q[49];
cx q[43], q[45];
cx q[10], q[40];
cx q[44], q[35];
cx q[52], q[51];
cx q[20], q[48];
cx q[29], q[46];
cx q[16], q[17];
cx q[6], q[39];
cx q[53], q[15];
cx q[34], q[28];
cx q[0], q[37];
cx q[21], q[14];
cx q[5], q[42];
cx q[33], q[3];
cx q[41], q[18];
cx q[9], q[19];
cx q[27], q[26];
cx q[31], q[25];
cx q[11], q[47];
// Layer 1
cx q[8], q[15];
t q[35];
t q[32];
// Layer 2
cx q[8], q[39];
// Layer 3
cx q[39], q[30];