OPENQASM 2.0;
include "qelib1.inc";
qreg q[19];
// Layer 0
cx q[11], q[15];
cx q[16], q[18];
cx q[9], q[13];
cx q[2], q[10];
cx q[17], q[12];
cx q[3], q[8];
cx q[7], q[14];
cx q[1], q[6];
cx q[0], q[5];
t q[4];
// Layer 1
cx q[17], q[11];
cx q[9], q[15];
cx q[2], q[7];
cx q[13], q[12];
cx q[16], q[5];
cx q[3], q[8];
cx q[10], q[6];
cx q[1], q[14];
cx q[18], q[0];
t q[4];
// Layer 2
cx q[3], q[14];
cx q[0], q[16];
cx q[7], q[6];
cx q[15], q[1];
cx q[18], q[12];
t q[11];
// Layer 3
cx q[18], q[10];
// Layer 4
cx q[10], q[5];
// Layer 5
cx q[5], q[6];
// Layer 6
cx q[5], q[3];
// Layer 7
cx q[5], q[7];
// Layer 8
t q[7];