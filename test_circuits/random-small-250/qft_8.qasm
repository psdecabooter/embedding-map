OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
// Layer 0
cx q[8], q[17];
t q[0];
t q[4];
t q[1];
t q[16];
t q[6];
t q[18];
t q[15];
t q[11];
t q[10];
t q[13];
t q[7];
t q[12];
t q[2];
t q[19];
t q[3];
t q[5];
t q[14];
t q[9];
// Layer 1
t q[17];
t q[10];
t q[3];
t q[16];
t q[8];
t q[7];
t q[19];
// Layer 2
t q[3];
// Layer 3
t q[3];
// Layer 4
t q[3];
// Layer 5
t q[3];
// Layer 6
t q[3];
// Layer 7
t q[3];