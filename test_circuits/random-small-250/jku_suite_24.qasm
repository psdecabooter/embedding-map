OPENQASM 2.0;
include "qelib1.inc";
qreg q[18];
// Layer 0
cx q[12], q[9];
cx q[0], q[1];
cx q[7], q[14];
cx q[3], q[17];
cx q[4], q[16];
cx q[8], q[5];
// Layer 1
cx q[5], q[11];
cx q[7], q[6];
cx q[17], q[15];
cx q[3], q[13];
cx q[0], q[2];
cx q[8], q[10];
// Layer 2
cx q[7], q[13];
cx q[8], q[6];
cx q[15], q[2];
t q[11];
t q[17];
// Layer 3
cx q[2], q[11];
cx q[15], q[9];
cx q[7], q[14];
t q[17];
// Layer 4
cx q[15], q[16];
cx q[2], q[14];
t q[11];
t q[7];
// Layer 5
t q[14];
t q[11];
t q[15];
t q[2];
// Layer 6
cx q[15], q[14];
cx q[2], q[9];
cx q[11], q[17];