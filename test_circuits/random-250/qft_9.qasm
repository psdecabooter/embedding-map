OPENQASM 2.0;
include "qelib1.inc";
qreg q[16];
// Layer 0
t q[3];
t q[9];
t q[13];
t q[4];
t q[14];
t q[0];
t q[8];
t q[15];
t q[2];
t q[1];
t q[12];
t q[6];
t q[10];
t q[11];
t q[7];
t q[5];
// Layer 1
t q[13];
t q[1];
t q[15];
t q[14];
t q[10];
t q[5];
t q[6];
t q[9];
t q[12];
t q[8];
t q[11];
t q[7];
t q[2];
t q[0];
t q[3];
t q[4];
// Layer 2
t q[9];
t q[13];
t q[14];
t q[4];
t q[11];
t q[0];
t q[12];
t q[15];
t q[8];
t q[1];
t q[5];
t q[10];
t q[6];
t q[3];
t q[2];
t q[7];
// Layer 3
t q[5];
t q[2];
t q[11];
t q[15];
t q[0];
t q[13];
t q[1];
t q[7];
t q[4];
t q[9];
t q[8];
t q[3];
t q[12];
t q[6];
t q[10];
t q[14];
// Layer 4
cx q[4], q[6];
t q[14];
t q[9];
t q[2];
t q[5];
t q[12];
t q[3];
t q[7];
t q[13];
t q[1];
t q[15];
t q[11];
t q[10];
t q[0];
t q[8];
// Layer 5
t q[14];
t q[10];
t q[2];
t q[9];
t q[6];
t q[11];
t q[0];
t q[8];
t q[5];
t q[1];
t q[3];
t q[12];
// Layer 6
t q[3];
// Layer 7
t q[3];
// Layer 8
t q[3];
// Layer 9
t q[3];
// Layer 10
t q[3];
// Layer 11
t q[3];
// Layer 12
t q[3];
// Layer 13
t q[3];
// Layer 14
t q[3];
// Layer 15
t q[3];
// Layer 16
t q[3];