OPENQASM 2.0;
include "qelib1.inc";
qreg q[17];
// Layer 0
cx q[5], q[15];
cx q[1], q[3];
cx q[13], q[16];
cx q[7], q[0];
cx q[12], q[9];
cx q[8], q[6];
cx q[10], q[11];
cx q[14], q[4];
t q[2];
// Layer 1
cx q[9], q[1];
cx q[16], q[12];
cx q[14], q[15];
cx q[8], q[2];
cx q[6], q[4];
cx q[11], q[3];
cx q[0], q[13];
cx q[5], q[7];
t q[10];
// Layer 2
cx q[8], q[10];
cx q[6], q[14];
cx q[11], q[9];
cx q[3], q[16];
cx q[2], q[0];
cx q[4], q[5];
cx q[7], q[13];
cx q[12], q[15];
t q[1];
// Layer 3
cx q[16], q[3];
cx q[7], q[9];
cx q[5], q[14];
cx q[1], q[15];
cx q[4], q[6];
cx q[2], q[11];
cx q[13], q[8];
cx q[10], q[0];
t q[12];
// Layer 4
cx q[13], q[14];
cx q[10], q[0];
cx q[1], q[15];
cx q[7], q[8];
cx q[12], q[11];
cx q[16], q[5];
cx q[9], q[3];
cx q[2], q[4];
t q[6];
// Layer 5
cx q[4], q[8];
cx q[13], q[12];
cx q[16], q[1];
cx q[9], q[3];
cx q[15], q[14];
cx q[7], q[6];
cx q[5], q[10];
cx q[2], q[11];
t q[0];
// Layer 6
cx q[6], q[13];
cx q[1], q[0];
cx q[16], q[3];
cx q[9], q[7];
cx q[11], q[12];
cx q[8], q[2];
cx q[14], q[10];
cx q[4], q[15];
t q[5];
// Layer 7
cx q[6], q[7];
cx q[5], q[11];
cx q[2], q[0];
cx q[14], q[4];
cx q[12], q[13];
cx q[3], q[15];
cx q[1], q[8];
cx q[9], q[16];
t q[10];
// Layer 8
cx q[12], q[7];
cx q[16], q[11];
cx q[15], q[14];
cx q[10], q[1];
cx q[4], q[8];
cx q[2], q[9];
cx q[5], q[6];
cx q[0], q[13];
t q[3];
// Layer 9
cx q[3], q[1];
cx q[9], q[0];
cx q[14], q[5];
cx q[12], q[13];
cx q[16], q[7];
cx q[11], q[8];
cx q[15], q[4];
cx q[6], q[2];
t q[10];
// Layer 10
cx q[4], q[9];
cx q[14], q[6];
cx q[12], q[5];
cx q[8], q[15];
cx q[3], q[1];
cx q[13], q[16];
cx q[7], q[0];
t q[2];
t q[10];
// Layer 11
cx q[6], q[1];
// Layer 12
cx q[1], q[15];
// Layer 13
cx q[15], q[2];