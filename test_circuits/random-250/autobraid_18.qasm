OPENQASM 2.0;
include "qelib1.inc";
qreg q[15];
// Layer 0
cx q[14], q[6];
cx q[7], q[2];
cx q[1], q[3];
cx q[8], q[0];
cx q[11], q[9];
cx q[4], q[5];
cx q[13], q[10];
t q[12];
// Layer 1
cx q[5], q[3];
cx q[4], q[12];
cx q[13], q[14];
cx q[2], q[8];
cx q[11], q[6];
cx q[1], q[10];
cx q[0], q[9];
t q[7];
// Layer 2
cx q[9], q[7];
cx q[12], q[4];
cx q[5], q[8];
cx q[2], q[13];
cx q[11], q[6];
cx q[10], q[0];
cx q[14], q[1];
t q[3];
// Layer 3
cx q[3], q[0];
cx q[11], q[14];
cx q[6], q[9];
cx q[7], q[2];
cx q[8], q[10];
cx q[5], q[13];
cx q[1], q[4];
t q[12];
// Layer 4
cx q[13], q[0];
cx q[12], q[1];
cx q[2], q[11];
cx q[9], q[5];
cx q[6], q[4];
cx q[3], q[10];
cx q[7], q[8];
t q[14];
// Layer 5
cx q[14], q[8];
cx q[13], q[9];
cx q[12], q[3];
cx q[0], q[4];
cx q[7], q[1];
cx q[11], q[10];
cx q[2], q[5];
t q[6];
// Layer 6
cx q[3], q[1];
cx q[2], q[4];
cx q[12], q[14];
cx q[8], q[5];
cx q[6], q[0];
cx q[9], q[10];
cx q[7], q[11];
t q[13];
// Layer 7
cx q[4], q[2];
cx q[14], q[0];
cx q[12], q[10];
cx q[9], q[13];
cx q[8], q[7];
cx q[3], q[6];
cx q[5], q[1];
t q[11];
// Layer 8
cx q[1], q[7];
cx q[6], q[8];
cx q[12], q[13];
cx q[4], q[0];
cx q[3], q[9];
cx q[5], q[2];
cx q[10], q[11];
t q[14];
// Layer 9
cx q[2], q[13];
cx q[12], q[0];
cx q[9], q[5];
cx q[8], q[7];
cx q[3], q[10];
cx q[14], q[11];
cx q[6], q[4];
t q[1];
// Layer 10
cx q[14], q[4];
cx q[8], q[9];
cx q[5], q[1];
cx q[6], q[12];
cx q[3], q[13];
cx q[0], q[11];
cx q[2], q[7];
t q[10];
// Layer 11
cx q[5], q[8];
cx q[2], q[6];
t q[12];
t q[10];
// Layer 12
cx q[8], q[4];
// Layer 13
cx q[4], q[7];
// Layer 14
cx q[4], q[12];
// Layer 15
cx q[12], q[0];
// Layer 16
cx q[12], q[4];
// Layer 17
cx q[12], q[9];
// Layer 18
cx q[9], q[14];
// Layer 19
cx q[9], q[13];
// Layer 20
cx q[13], q[5];
// Layer 21
cx q[13], q[1];