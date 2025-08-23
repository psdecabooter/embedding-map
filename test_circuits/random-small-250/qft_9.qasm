OPENQASM 2.0;
include "qelib1.inc";
qreg q[12];
// Layer 0
cx q[11], q[3];
t q[2];
t q[0];
t q[1];
t q[8];
t q[9];
t q[10];
t q[4];
t q[7];
t q[6];
t q[5];
// Layer 1
t q[1];
t q[5];
t q[0];
t q[2];
t q[6];
t q[7];
t q[8];
t q[3];
t q[4];
t q[11];
t q[10];
// Layer 2
t q[2];
// Layer 3
t q[2];
// Layer 4
t q[2];
// Layer 5
t q[2];
// Layer 6
t q[2];
// Layer 7
t q[2];
// Layer 8
t q[2];
// Layer 9
t q[2];
// Layer 10
t q[2];
// Layer 11
t q[2];