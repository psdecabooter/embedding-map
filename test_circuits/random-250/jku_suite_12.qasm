OPENQASM 2.0;
include "qelib1.inc";
qreg q[14];
// Layer 0
cx q[6], q[5];
cx q[0], q[9];
cx q[8], q[1];
cx q[3], q[10];
cx q[11], q[7];
cx q[13], q[4];
cx q[12], q[2];
// Layer 1
cx q[3], q[11];
cx q[5], q[4];
cx q[1], q[0];
cx q[7], q[8];
cx q[12], q[9];
cx q[6], q[2];
cx q[13], q[10];
// Layer 2
cx q[5], q[6];
cx q[4], q[7];
cx q[2], q[10];
cx q[0], q[11];
cx q[13], q[8];
cx q[3], q[9];
cx q[1], q[12];
// Layer 3
cx q[2], q[9];
cx q[3], q[12];
cx q[4], q[6];
cx q[13], q[8];
cx q[0], q[5];
cx q[10], q[7];
cx q[11], q[1];
// Layer 4
cx q[11], q[4];
cx q[13], q[3];
cx q[5], q[1];
t q[9];
t q[0];
// Layer 5
cx q[13], q[9];
cx q[3], q[12];
cx q[1], q[10];
t q[0];
// Layer 6
cx q[1], q[7];
cx q[3], q[12];
cx q[10], q[8];
t q[9];
// Layer 7
cx q[10], q[11];
cx q[12], q[4];
t q[7];
// Layer 8
t q[12];
t q[4];
t q[11];
// Layer 9
cx q[12], q[2];
cx q[4], q[8];
// Layer 10
cx q[4], q[3];
t q[12];
// Layer 11
cx q[4], q[11];
t q[3];
// Layer 12
cx q[4], q[3];
t q[11];
// Layer 13
cx q[11], q[1];
t q[3];
// Layer 14
cx q[1], q[3];
t q[11];
// Layer 15
cx q[3], q[4];
t q[11];
// Layer 16
cx q[3], q[1];
t q[4];
// Layer 17
cx q[4], q[12];
t q[1];
// Layer 18
cx q[1], q[2];
t q[12];
// Layer 19
cx q[12], q[10];
t q[1];
// Layer 20
cx q[10], q[7];
t q[12];
// Layer 21
cx q[12], q[2];
t q[10];
// Layer 22
cx q[10], q[7];
t q[2];
// Layer 23
cx q[7], q[10];
t q[2];
// Layer 24
cx q[7], q[1];
t q[10];
// Layer 25
cx q[1], q[11];
t q[7];
// Layer 26
cx q[7], q[11];
t q[1];
// Layer 27
cx q[11], q[10];
t q[1];
// Layer 28
cx q[1], q[9];
t q[11];
// Layer 29
cx q[11], q[13];
t q[1];
// Layer 30
cx q[11], q[5];
t q[1];
// Layer 31
cx q[11], q[12];
t q[5];
// Layer 32
cx q[12], q[8];
t q[11];
// Layer 33
cx q[8], q[10];
t q[12];
// Layer 34
cx q[12], q[13];
t q[8];
// Layer 35
cx q[8], q[12];
// Layer 36
cx q[8], q[7];
// Layer 37
cx q[8], q[5];