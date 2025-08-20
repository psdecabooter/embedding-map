OPENQASM 2.0;
include "qelib1.inc";
qreg q[14];
// Layer 0
t q[12];
t q[2];
t q[11];
t q[4];
t q[9];
t q[7];
t q[10];
t q[1];
t q[8];
t q[3];
t q[6];
t q[13];
t q[0];
t q[5];
// Layer 1
t q[1];
t q[8];
t q[7];
t q[6];
t q[0];
t q[10];
t q[12];
t q[4];
t q[2];
t q[3];
t q[11];
t q[13];
t q[9];
t q[5];
// Layer 2
t q[2];
t q[1];
t q[6];
t q[12];
t q[11];
t q[13];
t q[9];
t q[10];
t q[5];
t q[3];
t q[7];
t q[8];
t q[4];
t q[0];
// Layer 3
t q[1];
t q[10];
t q[5];
t q[2];
t q[6];
t q[13];
t q[0];
t q[8];
t q[9];
t q[7];
t q[11];
t q[12];
t q[4];
t q[3];
// Layer 4
cx q[6], q[0];
t q[3];
t q[5];
t q[4];
t q[13];
t q[9];
t q[2];
t q[7];
t q[10];
t q[1];
t q[11];
t q[12];
t q[8];
// Layer 5
t q[2];
t q[1];
t q[6];
t q[0];
t q[13];
t q[8];
t q[9];
t q[5];
t q[11];
// Layer 6
t q[11];
// Layer 7
t q[11];
// Layer 8
t q[11];
// Layer 9
t q[11];
// Layer 10
t q[11];
// Layer 11
t q[11];
// Layer 12
t q[11];
// Layer 13
t q[11];
// Layer 14
t q[11];
// Layer 15
t q[11];
// Layer 16
t q[11];
// Layer 17
t q[11];
// Layer 18
t q[11];
// Layer 19
t q[11];
// Layer 20
t q[11];
// Layer 21
t q[11];
// Layer 22
t q[11];
// Layer 23
t q[11];
// Layer 24
t q[11];
// Layer 25
t q[11];
// Layer 26
t q[11];
// Layer 27
t q[11];
// Layer 28
t q[11];
// Layer 29
t q[11];