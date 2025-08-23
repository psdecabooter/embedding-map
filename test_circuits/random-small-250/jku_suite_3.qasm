OPENQASM 2.0;
include "qelib1.inc";
qreg q[16];
// Layer 0
cx q[11], q[0];
cx q[3], q[15];
cx q[13], q[14];
t q[8];
t q[7];
// Layer 1
cx q[3], q[1];
cx q[11], q[4];
t q[14];
// Layer 2
cx q[3], q[9];
t q[1];
// Layer 3
cx q[9], q[10];
t q[3];
// Layer 4
cx q[9], q[12];
t q[3];
// Layer 5
cx q[9], q[6];
t q[12];
// Layer 6
cx q[12], q[2];
t q[6];
// Layer 7
cx q[2], q[5];
t q[6];
// Layer 8
cx q[5], q[12];
t q[2];
// Layer 9
cx q[12], q[0];
t q[5];
// Layer 10
cx q[0], q[14];
// Layer 11
cx q[14], q[1];
// Layer 12
cx q[14], q[5];
// Layer 13
cx q[14], q[10];
// Layer 14
cx q[10], q[1];
// Layer 15
t q[1];
// Layer 16
t q[1];
// Layer 17
t q[1];