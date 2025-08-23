OPENQASM 2.0;
include "qelib1.inc";
qreg q[28];
// Layer 0
cx q[13], q[12];
cx q[20], q[14];
cx q[17], q[5];
cx q[25], q[16];
cx q[6], q[27];
cx q[22], q[10];
cx q[24], q[2];
cx q[9], q[19];
cx q[11], q[23];
cx q[8], q[18];
cx q[3], q[7];
cx q[15], q[0];
t q[4];
// Layer 1
cx q[17], q[21];
// Layer 2
cx q[17], q[26];
// Layer 3
cx q[26], q[1];
// Layer 4
cx q[26], q[21];
// Layer 5
cx q[21], q[26];
// Layer 6
cx q[21], q[27];
// Layer 7
cx q[27], q[20];
// Layer 8
cx q[27], q[9];
// Layer 9
cx q[9], q[20];
// Layer 10
cx q[9], q[10];
// Layer 11
cx q[10], q[8];
// Layer 12
cx q[8], q[10];
// Layer 13
cx q[10], q[17];
// Layer 14
cx q[17], q[19];
// Layer 15
cx q[19], q[18];
// Layer 16
cx q[18], q[6];
// Layer 17
cx q[18], q[7];
// Layer 18
cx q[18], q[26];
// Layer 19
t q[18];