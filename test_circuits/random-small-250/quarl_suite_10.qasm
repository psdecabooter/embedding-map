OPENQASM 2.0;
include "qelib1.inc";
qreg q[16];
// Layer 0
cx q[8], q[7];
cx q[13], q[12];
cx q[14], q[5];
cx q[3], q[1];
cx q[9], q[15];
cx q[11], q[4];
cx q[10], q[2];
cx q[0], q[6];
// Layer 1
cx q[9], q[4];
cx q[5], q[14];
cx q[1], q[0];
cx q[7], q[2];
cx q[13], q[10];
cx q[3], q[11];
cx q[8], q[6];
cx q[12], q[15];
// Layer 2
cx q[11], q[5];
cx q[6], q[3];
t q[10];
// Layer 3
cx q[11], q[1];
// Layer 4
cx q[11], q[6];
// Layer 5
cx q[11], q[0];
// Layer 6
cx q[11], q[15];
// Layer 7
cx q[11], q[6];
// Layer 8
cx q[11], q[0];
// Layer 9
cx q[11], q[2];
// Layer 10
cx q[2], q[12];
// Layer 11
cx q[12], q[6];
// Layer 12
cx q[12], q[9];
// Layer 13
cx q[9], q[11];
// Layer 14
cx q[11], q[10];
// Layer 15
t q[11];