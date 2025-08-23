OPENQASM 2.0;
include "qelib1.inc";
qreg q[16];
// Layer 0
cx q[8], q[12];
cx q[7], q[0];
cx q[4], q[10];
cx q[3], q[6];
cx q[14], q[15];
cx q[11], q[9];
cx q[1], q[5];
t q[2];
// Layer 1
t q[11];
t q[7];
// Layer 2
cx q[11], q[13];
// Layer 3
cx q[13], q[5];
// Layer 4
cx q[13], q[11];
// Layer 5
cx q[13], q[1];
// Layer 6
cx q[1], q[10];
// Layer 7
cx q[10], q[8];
// Layer 8
cx q[10], q[8];
// Layer 9
cx q[10], q[4];
// Layer 10
cx q[10], q[5];
// Layer 11
cx q[5], q[10];
// Layer 12
cx q[10], q[0];
// Layer 13
cx q[10], q[4];
// Layer 14
cx q[10], q[2];
// Layer 15
cx q[10], q[9];
// Layer 16
cx q[10], q[14];
// Layer 17
cx q[10], q[13];
// Layer 18
cx q[13], q[4];
// Layer 19
cx q[13], q[0];
// Layer 20
cx q[0], q[6];
// Layer 21
cx q[6], q[4];
// Layer 22
t q[4];
// Layer 23
t q[4];