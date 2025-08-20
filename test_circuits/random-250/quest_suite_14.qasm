OPENQASM 2.0;
include "qelib1.inc";
qreg q[15];
// Layer 0
cx q[14], q[11];
cx q[10], q[7];
cx q[6], q[5];
cx q[2], q[8];
cx q[1], q[12];
cx q[9], q[3];
cx q[13], q[4];
t q[0];
// Layer 1
cx q[14], q[8];
cx q[7], q[13];
cx q[0], q[12];
cx q[11], q[6];
cx q[2], q[1];
cx q[3], q[9];
cx q[10], q[4];
t q[5];
// Layer 2
cx q[11], q[1];
cx q[2], q[6];
cx q[7], q[9];
cx q[13], q[5];
cx q[14], q[12];
cx q[3], q[10];
cx q[0], q[8];
t q[4];
// Layer 3
cx q[11], q[12];
cx q[4], q[6];
cx q[9], q[3];
cx q[1], q[14];
cx q[13], q[8];
cx q[7], q[2];
cx q[10], q[0];
t q[5];
// Layer 4
cx q[1], q[12];
cx q[9], q[2];
cx q[6], q[4];
cx q[0], q[5];
cx q[13], q[3];
cx q[14], q[8];
cx q[11], q[10];
t q[7];
// Layer 5
cx q[2], q[12];
cx q[14], q[4];
cx q[9], q[10];
cx q[3], q[0];
cx q[5], q[6];
cx q[7], q[11];
cx q[1], q[8];
t q[13];
// Layer 6
cx q[13], q[5];
cx q[10], q[6];
cx q[14], q[9];
cx q[4], q[0];
cx q[2], q[1];
cx q[3], q[12];
cx q[7], q[11];
t q[8];
// Layer 7
cx q[2], q[4];
cx q[9], q[12];
cx q[10], q[11];
cx q[8], q[3];
cx q[13], q[1];
cx q[6], q[14];
cx q[0], q[5];
t q[7];
// Layer 8
cx q[14], q[4];
cx q[0], q[12];
cx q[8], q[10];
cx q[9], q[7];
cx q[13], q[1];
cx q[3], q[5];
cx q[11], q[6];
t q[2];
// Layer 9
cx q[5], q[0];
cx q[3], q[12];
cx q[4], q[1];
cx q[14], q[8];
cx q[10], q[7];
cx q[2], q[6];
cx q[13], q[11];
t q[9];
// Layer 10
cx q[13], q[9];
cx q[0], q[5];
cx q[12], q[11];
cx q[4], q[3];
cx q[6], q[10];
cx q[1], q[14];
cx q[2], q[8];
t q[7];
// Layer 11
cx q[5], q[0];
cx q[12], q[3];
cx q[7], q[11];
cx q[14], q[13];
cx q[10], q[9];
cx q[2], q[6];
cx q[8], q[4];
t q[1];
// Layer 12
cx q[8], q[13];
t q[6];
t q[9];
// Layer 13
cx q[6], q[10];
// Layer 14
cx q[10], q[7];
// Layer 15
cx q[7], q[10];