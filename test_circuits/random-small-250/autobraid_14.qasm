OPENQASM 2.0;
include "qelib1.inc";
qreg q[17];
// Layer 0
cx q[12], q[5];
cx q[7], q[15];
cx q[10], q[13];
cx q[16], q[3];
cx q[11], q[8];
cx q[2], q[1];
cx q[9], q[6];
cx q[4], q[0];
t q[14];
// Layer 1
cx q[12], q[4];
cx q[15], q[5];
cx q[3], q[9];
cx q[14], q[0];
cx q[8], q[10];
cx q[11], q[2];
cx q[16], q[7];
cx q[1], q[13];
t q[6];
// Layer 2
cx q[16], q[5];
cx q[2], q[4];
cx q[11], q[0];
t q[6];
// Layer 3
cx q[2], q[9];
// Layer 4
cx q[9], q[11];
// Layer 5
cx q[11], q[10];
// Layer 6
cx q[11], q[1];
// Layer 7
cx q[1], q[5];
// Layer 8
cx q[1], q[4];
// Layer 9
cx q[4], q[5];
// Layer 10
cx q[5], q[11];
// Layer 11
cx q[11], q[13];
// Layer 12
t q[11];