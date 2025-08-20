OPENQASM 2.0;
include "qelib1.inc";
qreg q[15];
// Layer 0
cx q[11], q[9];
cx q[7], q[5];
cx q[8], q[3];
cx q[12], q[0];
cx q[1], q[13];
cx q[10], q[14];
cx q[6], q[4];
t q[2];
// Layer 1
cx q[5], q[0];
cx q[7], q[6];
cx q[3], q[11];
cx q[13], q[2];
cx q[14], q[1];
cx q[4], q[8];
cx q[10], q[9];
t q[12];
// Layer 2
cx q[2], q[12];
cx q[1], q[14];
cx q[10], q[13];
cx q[3], q[7];
cx q[0], q[11];
cx q[8], q[6];
cx q[5], q[4];
t q[9];
// Layer 3
cx q[12], q[2];
cx q[8], q[13];
cx q[7], q[6];
cx q[4], q[9];
cx q[5], q[0];
cx q[3], q[11];
cx q[14], q[1];
t q[10];
// Layer 4
cx q[14], q[1];
cx q[11], q[5];
cx q[6], q[4];
cx q[8], q[7];
cx q[9], q[10];
cx q[12], q[13];
cx q[3], q[2];
t q[0];
// Layer 5
cx q[13], q[10];
cx q[11], q[4];
cx q[3], q[8];
cx q[2], q[7];
cx q[9], q[14];
cx q[5], q[0];
cx q[6], q[12];
t q[1];
// Layer 6
cx q[11], q[6];
cx q[7], q[12];
cx q[2], q[4];
cx q[8], q[5];
cx q[3], q[9];
cx q[0], q[13];
cx q[14], q[10];
t q[1];
// Layer 7
cx q[5], q[11];
cx q[10], q[2];
cx q[4], q[7];
cx q[13], q[14];
cx q[3], q[1];
cx q[6], q[8];
cx q[0], q[12];
t q[9];
// Layer 8
cx q[2], q[0];
cx q[13], q[5];
cx q[1], q[7];
cx q[4], q[6];
cx q[3], q[8];
cx q[11], q[10];
cx q[12], q[14];
t q[9];
// Layer 9
cx q[14], q[10];
cx q[11], q[6];
cx q[9], q[8];
cx q[2], q[4];
cx q[3], q[13];
cx q[12], q[5];
cx q[0], q[1];
t q[7];
// Layer 10
cx q[6], q[0];
cx q[9], q[7];
cx q[14], q[1];
cx q[4], q[5];
cx q[8], q[3];
cx q[11], q[10];
t q[13];
t q[2];
// Layer 11
cx q[13], q[14];
// Layer 12
cx q[13], q[12];
// Layer 13
cx q[12], q[3];
// Layer 14
cx q[12], q[0];
// Layer 15
cx q[12], q[8];
// Layer 16
cx q[12], q[14];
// Layer 17
cx q[14], q[12];
// Layer 18
cx q[14], q[12];
// Layer 19
cx q[14], q[10];
// Layer 20
cx q[14], q[10];
// Layer 21
cx q[10], q[14];
// Layer 22
cx q[14], q[10];
// Layer 23
cx q[14], q[12];
// Layer 24
cx q[12], q[14];