OPENQASM 2.0;
include "qelib1.inc";
qreg q[17];
// Layer 0
cx q[9], q[14];
cx q[12], q[4];
cx q[1], q[10];
cx q[5], q[3];
cx q[8], q[2];
cx q[15], q[13];
cx q[7], q[0];
cx q[16], q[6];
t q[11];
// Layer 1
cx q[7], q[2];
cx q[8], q[10];
cx q[16], q[0];
cx q[6], q[9];
cx q[12], q[5];
cx q[1], q[15];
cx q[14], q[13];
cx q[11], q[4];
t q[3];
// Layer 2
cx q[2], q[1];
// Layer 3
cx q[2], q[14];
// Layer 4
cx q[2], q[15];
// Layer 5
cx q[15], q[8];
// Layer 6
cx q[8], q[15];
// Layer 7
cx q[8], q[16];
// Layer 8
cx q[8], q[16];
// Layer 9
cx q[8], q[15];
// Layer 10
cx q[15], q[14];
// Layer 11
cx q[14], q[8];
// Layer 12
cx q[14], q[12];
// Layer 13
cx q[14], q[10];
// Layer 14
cx q[14], q[16];
// Layer 15
t q[16];