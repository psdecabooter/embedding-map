OPENQASM 2.0;
include "qelib1.inc";
qreg q[9];
// Layer 0
cx q[8], q[5];
cx q[3], q[4];
cx q[7], q[0];
cx q[1], q[2];
t q[6];
// Layer 1
cx q[0], q[3];
cx q[2], q[7];
cx q[1], q[8];
cx q[6], q[5];
t q[4];
// Layer 2
cx q[2], q[3];
cx q[1], q[5];
cx q[4], q[7];
cx q[0], q[6];
t q[8];
// Layer 3
cx q[8], q[5];
cx q[2], q[7];
cx q[1], q[6];
cx q[4], q[3];
t q[0];
// Layer 4
cx q[2], q[1];
cx q[5], q[4];
cx q[7], q[6];
cx q[0], q[8];
t q[3];
// Layer 5
cx q[3], q[6];
t q[2];
// Layer 6
t q[6];
t q[3];
// Layer 7
cx q[6], q[0];
// Layer 8
cx q[6], q[4];
// Layer 9
cx q[4], q[6];