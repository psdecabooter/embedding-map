OPENQASM 2.0;
include "qelib1.inc";
qreg q[8];
// Layer 0
cx q[4], q[3];
cx q[7], q[6];
cx q[0], q[2];
cx q[1], q[5];
// Layer 1
cx q[2], q[7];
cx q[3], q[6];
cx q[4], q[1];
cx q[0], q[5];
// Layer 2
cx q[5], q[2];
cx q[0], q[3];
cx q[6], q[1];
cx q[4], q[7];
// Layer 3
cx q[2], q[5];
cx q[6], q[7];
cx q[3], q[1];
cx q[4], q[0];
// Layer 4
cx q[1], q[7];
cx q[6], q[0];
cx q[4], q[3];
cx q[2], q[5];
// Layer 5
cx q[0], q[3];
cx q[4], q[5];
cx q[2], q[7];
t q[6];
// Layer 6
cx q[3], q[5];
cx q[2], q[1];
cx q[0], q[6];
t q[4];
// Layer 7
cx q[4], q[5];
cx q[6], q[1];
t q[2];
// Layer 8
cx q[4], q[7];
cx q[6], q[5];
t q[2];
// Layer 9
cx q[6], q[1];
cx q[2], q[7];
t q[5];
// Layer 10
cx q[2], q[1];
cx q[7], q[5];
t q[6];
// Layer 11
t q[2];
t q[1];
t q[6];
// Layer 12
cx q[1], q[2];
t q[6];
// Layer 13
cx q[1], q[2];
t q[6];
// Layer 14
cx q[2], q[0];
t q[6];
// Layer 15
cx q[0], q[3];
t q[2];
// Layer 16
cx q[0], q[6];
t q[3];
// Layer 17
cx q[6], q[4];
t q[0];
// Layer 18
cx q[0], q[4];
t q[6];
// Layer 19
cx q[4], q[1];
t q[0];
// Layer 20
cx q[0], q[3];
t q[4];
// Layer 21
cx q[0], q[3];
t q[4];
// Layer 22
cx q[0], q[3];
t q[4];
// Layer 23
cx q[3], q[7];
t q[4];
// Layer 24
cx q[3], q[6];
t q[7];
// Layer 25
cx q[7], q[6];
t q[3];
// Layer 26
cx q[3], q[2];
t q[7];
// Layer 27
cx q[2], q[6];
t q[7];
// Layer 28
cx q[2], q[5];
t q[7];
// Layer 29
cx q[7], q[4];
t q[2];
// Layer 30
cx q[4], q[7];
t q[2];
// Layer 31
cx q[7], q[4];
t q[2];
// Layer 32
cx q[4], q[2];
t q[7];
// Layer 33
cx q[7], q[2];
t q[4];
// Layer 34
cx q[4], q[2];
t q[7];
// Layer 35
cx q[7], q[6];
t q[4];
// Layer 36
cx q[6], q[2];
t q[7];
// Layer 37
cx q[6], q[5];
t q[2];
// Layer 38
cx q[5], q[6];
t q[2];
// Layer 39
cx q[6], q[3];
t q[5];
// Layer 40
t q[6];
// Layer 41
t q[6];
// Layer 42
t q[6];