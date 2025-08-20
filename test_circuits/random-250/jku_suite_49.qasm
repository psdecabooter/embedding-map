OPENQASM 2.0;
include "qelib1.inc";
qreg q[16];
// Layer 0
cx q[2], q[4];
cx q[11], q[10];
cx q[0], q[6];
cx q[15], q[3];
cx q[8], q[13];
cx q[12], q[9];
cx q[7], q[14];
t q[5];
// Layer 1
cx q[9], q[1];
cx q[10], q[0];
cx q[15], q[5];
cx q[11], q[2];
cx q[6], q[3];
cx q[8], q[12];
cx q[14], q[7];
t q[13];
// Layer 2
cx q[2], q[11];
cx q[5], q[0];
cx q[8], q[10];
cx q[13], q[1];
t q[12];
t q[15];
// Layer 3
cx q[11], q[13];
cx q[8], q[6];
cx q[10], q[2];
cx q[12], q[4];
t q[1];
t q[15];
// Layer 4
cx q[10], q[4];
cx q[1], q[15];
cx q[11], q[5];
cx q[2], q[3];
t q[13];
t q[8];
// Layer 5
cx q[3], q[7];
cx q[10], q[2];
cx q[1], q[14];
t q[4];
t q[8];
t q[15];
// Layer 6
cx q[4], q[7];
cx q[1], q[3];
cx q[8], q[15];
cx q[14], q[12];
t q[10];
t q[2];
// Layer 7
cx q[15], q[12];
cx q[1], q[7];
cx q[4], q[13];
cx q[14], q[8];
t q[10];
t q[2];
// Layer 8
cx q[8], q[5];
cx q[7], q[3];
t q[12];
t q[10];
t q[2];
t q[15];
// Layer 9
cx q[15], q[4];
cx q[5], q[11];
t q[10];
t q[12];
t q[8];
// Layer 10
cx q[5], q[0];
cx q[4], q[15];
t q[8];
t q[11];
t q[12];
// Layer 11
cx q[5], q[14];
cx q[12], q[6];
cx q[8], q[7];
t q[4];
t q[0];
// Layer 12
cx q[5], q[7];
cx q[14], q[6];
t q[12];
t q[0];
// Layer 13
cx q[6], q[10];
cx q[5], q[13];
t q[7];
t q[0];
// Layer 14
cx q[6], q[1];
cx q[10], q[15];
t q[0];
t q[13];
// Layer 15
cx q[0], q[4];
cx q[13], q[7];
t q[10];
t q[15];
// Layer 16
cx q[0], q[9];
cx q[7], q[11];
t q[13];
t q[15];
// Layer 17
cx q[0], q[11];
t q[15];
t q[7];
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