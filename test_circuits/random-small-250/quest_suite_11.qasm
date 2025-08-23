OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
// Layer 0
cx q[1], q[7];
cx q[2], q[5];
cx q[9], q[8];
cx q[6], q[0];
cx q[3], q[4];
// Layer 1
cx q[2], q[1];
cx q[9], q[8];
cx q[6], q[0];
cx q[5], q[7];
cx q[4], q[3];
// Layer 2
cx q[5], q[0];
cx q[1], q[2];
cx q[9], q[4];
cx q[6], q[7];
cx q[8], q[3];
// Layer 3
cx q[2], q[6];
cx q[1], q[8];
cx q[5], q[3];
cx q[9], q[0];
cx q[4], q[7];
// Layer 4
cx q[5], q[6];
cx q[2], q[1];
cx q[7], q[9];
cx q[3], q[8];
cx q[4], q[0];
// Layer 5
cx q[4], q[9];
t q[3];
// Layer 6
t q[9];
t q[4];
// Layer 7
cx q[9], q[0];
// Layer 8
cx q[0], q[9];
// Layer 9
cx q[9], q[0];