OPENQASM 2.0;
include "qelib1.inc";
qreg q[25];
// Layer 0
cx q[16], q[1];
cx q[13], q[21];
cx q[17], q[11];
cx q[9], q[10];
cx q[14], q[8];
cx q[2], q[22];
cx q[5], q[20];
cx q[18], q[24];
cx q[0], q[7];
cx q[19], q[15];
cx q[3], q[6];
cx q[12], q[4];
t q[23];
// Layer 1
cx q[21], q[11];
cx q[17], q[13];
cx q[24], q[16];
cx q[0], q[10];
cx q[19], q[22];
cx q[8], q[4];
cx q[1], q[18];
cx q[2], q[14];
cx q[12], q[20];
cx q[9], q[15];
cx q[6], q[3];
cx q[7], q[23];
t q[5];
// Layer 2
cx q[14], q[21];
cx q[10], q[12];
cx q[5], q[9];
cx q[6], q[0];
cx q[19], q[7];
cx q[22], q[18];
cx q[13], q[16];
cx q[20], q[17];
cx q[4], q[1];
cx q[8], q[24];
cx q[15], q[3];
cx q[2], q[11];
t q[23];
// Layer 3
cx q[8], q[22];
cx q[18], q[0];
cx q[6], q[15];
cx q[7], q[20];
cx q[9], q[21];
cx q[14], q[13];
cx q[2], q[23];
cx q[1], q[3];
cx q[16], q[4];
cx q[5], q[19];
cx q[10], q[24];
cx q[12], q[17];
t q[11];
// Layer 4
cx q[0], q[17];
cx q[21], q[5];
cx q[23], q[4];
cx q[9], q[6];
cx q[12], q[10];
cx q[18], q[3];
cx q[19], q[13];
cx q[2], q[15];
cx q[1], q[16];
cx q[20], q[11];
cx q[14], q[22];
cx q[8], q[24];
t q[7];
// Layer 5
cx q[6], q[8];
cx q[19], q[24];
cx q[17], q[3];
cx q[5], q[9];
cx q[22], q[2];
cx q[21], q[14];
cx q[1], q[7];
cx q[11], q[12];
cx q[13], q[10];
cx q[16], q[0];
cx q[15], q[23];
cx q[18], q[4];
t q[20];
// Layer 6
cx q[2], q[16];
cx q[18], q[24];
cx q[11], q[5];
cx q[21], q[8];
cx q[14], q[15];
cx q[7], q[19];
cx q[13], q[0];
cx q[3], q[10];
cx q[6], q[4];
cx q[17], q[22];
cx q[1], q[20];
cx q[9], q[12];
t q[23];
// Layer 7
cx q[23], q[3];
t q[11];
t q[24];
// Layer 8
cx q[23], q[8];
// Layer 9
cx q[23], q[19];
// Layer 10
cx q[19], q[0];
// Layer 11
cx q[19], q[21];
// Layer 12
cx q[19], q[12];
// Layer 13
cx q[12], q[8];
// Layer 14
cx q[12], q[14];
// Layer 15
cx q[12], q[23];