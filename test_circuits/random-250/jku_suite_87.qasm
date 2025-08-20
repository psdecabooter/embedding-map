OPENQASM 2.0;
include "qelib1.inc";
qreg q[16];
// Layer 0
cx q[5], q[15];
cx q[10], q[13];
cx q[14], q[8];
cx q[12], q[11];
cx q[3], q[4];
cx q[1], q[7];
cx q[0], q[9];
t q[2];
// Layer 1
cx q[8], q[6];
cx q[12], q[14];
cx q[3], q[2];
cx q[15], q[11];
cx q[5], q[7];
cx q[9], q[10];
cx q[4], q[13];
t q[1];
// Layer 2
cx q[3], q[8];
cx q[1], q[11];
cx q[5], q[14];
cx q[2], q[15];
cx q[12], q[10];
cx q[7], q[13];
cx q[9], q[4];
t q[6];
// Layer 3
cx q[7], q[2];
cx q[10], q[8];
cx q[1], q[4];
cx q[11], q[12];
t q[14];
t q[6];
// Layer 4
cx q[2], q[3];
t q[8];
t q[7];
t q[6];
t q[1];
t q[10];
// Layer 5
cx q[2], q[9];
cx q[7], q[15];
cx q[10], q[14];
t q[8];
t q[6];
// Layer 6
cx q[6], q[2];
cx q[10], q[13];
cx q[9], q[5];
t q[15];
t q[7];
// Layer 7
cx q[13], q[2];
cx q[6], q[3];
cx q[5], q[8];
t q[15];
t q[9];
// Layer 8
cx q[6], q[8];
cx q[3], q[10];
t q[5];
t q[13];
t q[15];
// Layer 9
cx q[6], q[7];
cx q[8], q[12];
t q[15];
t q[5];
t q[3];
// Layer 10
cx q[6], q[1];
cx q[15], q[10];
t q[3];
t q[12];
t q[8];
// Layer 11
cx q[3], q[4];
cx q[15], q[7];
t q[1];
t q[12];
t q[10];
// Layer 12
cx q[3], q[12];
t q[1];
t q[10];
t q[7];
t q[15];
// Layer 13
cx q[12], q[3];
t q[15];
t q[1];
t q[10];
// Layer 14
cx q[10], q[0];
t q[15];
t q[3];
t q[12];
// Layer 15
cx q[3], q[1];
cx q[10], q[0];
t q[12];
t q[15];
// Layer 16
cx q[1], q[14];
t q[12];
t q[0];
t q[15];
// Layer 17
cx q[14], q[4];
t q[1];
t q[12];
t q[15];
// Layer 18
cx q[15], q[14];
t q[1];
t q[4];
t q[12];
// Layer 19
t q[15];
t q[4];