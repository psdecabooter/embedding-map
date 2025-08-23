OPENQASM 2.0;
include "qelib1.inc";
qreg q[48];
// Layer 0
cx q[4], q[20];
cx q[3], q[1];
cx q[43], q[13];
cx q[9], q[44];
cx q[30], q[32];
cx q[10], q[38];
cx q[39], q[21];
cx q[0], q[33];
cx q[46], q[19];
cx q[24], q[5];
cx q[8], q[37];
cx q[17], q[40];
cx q[22], q[6];
cx q[35], q[11];
cx q[18], q[28];
cx q[29], q[7];
cx q[23], q[34];
cx q[36], q[16];
cx q[45], q[2];
cx q[26], q[12];
cx q[42], q[27];
cx q[14], q[47];
cx q[31], q[41];
cx q[15], q[25];
// Layer 1
cx q[40], q[12];
cx q[0], q[20];
cx q[10], q[24];
cx q[14], q[6];
t q[33];
// Layer 2
t q[10];
t q[6];
// Layer 3
cx q[10], q[22];