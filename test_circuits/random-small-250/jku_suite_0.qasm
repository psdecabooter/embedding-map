OPENQASM 2.0;
include "qelib1.inc";
qreg q[14];
// Layer 0
cx q[7], q[10];
cx q[0], q[5];
cx q[11], q[12];
t q[1];
// Layer 1
cx q[12], q[8];
cx q[11], q[9];
cx q[10], q[3];
t q[7];
// Layer 2
cx q[7], q[4];
cx q[9], q[2];
t q[3];
// Layer 3
cx q[9], q[6];
cx q[7], q[13];
t q[2];
// Layer 4
t q[7];
t q[9];
t q[6];
// Layer 5
cx q[7], q[10];
t q[6];
// Layer 6
cx q[6], q[4];
t q[10];
// Layer 7
cx q[10], q[2];
t q[4];
// Layer 8
cx q[10], q[1];
t q[4];
// Layer 9
cx q[1], q[12];
t q[10];
// Layer 10
cx q[10], q[4];
cx q[12], q[11];
// Layer 11
cx q[11], q[0];
// Layer 12
cx q[0], q[9];
// Layer 13
t q[9];