OPENQASM 2.0;
include "qelib1.inc";
qreg q[13];
// Layer 0
cx q[6], q[2];
cx q[5], q[3];
cx q[0], q[1];
cx q[4], q[11];
cx q[10], q[7];
cx q[9], q[12];
t q[8];
// Layer 1
cx q[0], q[2];
cx q[10], q[1];
cx q[11], q[12];
cx q[9], q[7];
cx q[3], q[6];
cx q[5], q[4];
t q[8];
// Layer 2
cx q[11], q[8];
// Layer 3
cx q[11], q[1];
// Layer 4
cx q[1], q[10];
// Layer 5
cx q[10], q[12];
// Layer 6
cx q[10], q[11];
// Layer 7
cx q[11], q[2];
// Layer 8
cx q[11], q[10];
// Layer 9
cx q[10], q[4];
// Layer 10
cx q[4], q[6];
// Layer 11
cx q[4], q[2];
// Layer 12
cx q[4], q[8];
// Layer 13
cx q[4], q[3];
// Layer 14
cx q[4], q[5];
// Layer 15
cx q[4], q[10];
// Layer 16
cx q[10], q[4];
// Layer 17
cx q[10], q[8];
// Layer 18
cx q[8], q[11];
// Layer 19
t q[8];