OPENQASM 2.0;
include "qelib1.inc";
qreg q[14];
// Layer 0
cx q[10], q[1];
cx q[12], q[8];
cx q[5], q[7];
cx q[4], q[9];
cx q[13], q[0];
cx q[11], q[2];
t q[3];
t q[6];
// Layer 1
cx q[7], q[2];
cx q[12], q[10];
cx q[6], q[9];
cx q[8], q[4];
cx q[11], q[13];
cx q[1], q[3];
cx q[0], q[5];
// Layer 2
cx q[0], q[12];
cx q[2], q[7];
cx q[8], q[6];
cx q[5], q[10];
cx q[1], q[9];
cx q[11], q[3];
cx q[4], q[13];
// Layer 3
cx q[5], q[13];
cx q[7], q[3];
cx q[2], q[8];
cx q[0], q[1];
cx q[9], q[11];
cx q[12], q[6];
cx q[10], q[4];
// Layer 4
cx q[6], q[3];
// Layer 5
cx q[3], q[0];
// Layer 6
cx q[3], q[6];