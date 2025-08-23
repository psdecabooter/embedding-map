OPENQASM 2.0;
include "qelib1.inc";
qreg q[56];
// Layer 0
cx q[48], q[27];
cx q[22], q[13];
cx q[17], q[50];
cx q[18], q[38];
cx q[32], q[23];
cx q[5], q[39];
cx q[35], q[29];
cx q[52], q[0];
cx q[7], q[1];
cx q[43], q[37];
cx q[34], q[2];
cx q[24], q[20];
cx q[51], q[44];
cx q[49], q[6];
cx q[9], q[15];
cx q[25], q[42];
cx q[3], q[47];
cx q[46], q[55];
cx q[36], q[28];
cx q[31], q[21];
cx q[10], q[8];
cx q[4], q[33];
cx q[14], q[19];
cx q[26], q[40];
cx q[53], q[45];
cx q[41], q[30];
cx q[54], q[11];
cx q[16], q[12];
// Layer 1
cx q[36], q[23];
t q[27];
// Layer 2
t q[27];
t q[36];