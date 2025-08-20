OPENQASM 2.0;
include "qelib1.inc";
qreg q[6];
// Layer 0
cx q[3], q[2];
cx q[0], q[5];
cx q[1], q[4];
// Layer 1
cx q[5], q[0];
cx q[2], q[4];
cx q[1], q[3];
// Layer 2
cx q[5], q[4];
cx q[2], q[3];
cx q[1], q[0];
// Layer 3
cx q[4], q[1];
cx q[0], q[3];
cx q[2], q[5];
// Layer 4
cx q[1], q[4];
cx q[0], q[2];
cx q[5], q[3];
// Layer 5
cx q[1], q[3];
cx q[0], q[2];
cx q[5], q[4];
// Layer 6
cx q[4], q[3];
cx q[1], q[2];
cx q[0], q[5];
// Layer 7
cx q[5], q[0];
cx q[1], q[4];
cx q[2], q[3];
// Layer 8
cx q[2], q[3];
cx q[4], q[1];
cx q[5], q[0];
// Layer 9
cx q[1], q[4];
cx q[2], q[5];
cx q[3], q[0];
// Layer 10
cx q[2], q[0];
cx q[5], q[3];
cx q[1], q[4];
// Layer 11
cx q[4], q[2];
cx q[5], q[3];
cx q[0], q[1];
// Layer 12
cx q[3], q[0];
cx q[5], q[2];
cx q[1], q[4];
// Layer 13
cx q[2], q[0];
cx q[3], q[5];
cx q[1], q[4];
// Layer 14
cx q[1], q[4];
cx q[5], q[3];
cx q[2], q[0];
// Layer 15
cx q[1], q[4];
cx q[2], q[0];
cx q[3], q[5];
// Layer 16
cx q[1], q[3];
cx q[5], q[4];
cx q[0], q[2];
// Layer 17
cx q[5], q[4];
cx q[3], q[1];
cx q[2], q[0];
// Layer 18
cx q[1], q[0];
cx q[4], q[2];
cx q[3], q[5];
// Layer 19
cx q[1], q[4];
cx q[5], q[3];
cx q[2], q[0];
// Layer 20
cx q[0], q[3];
cx q[2], q[5];
cx q[4], q[1];
// Layer 21
cx q[3], q[2];
cx q[4], q[1];
t q[0];
// Layer 22
cx q[4], q[5];
cx q[3], q[2];
t q[1];
// Layer 23
cx q[4], q[1];
cx q[5], q[2];
t q[3];
// Layer 24
cx q[1], q[3];
t q[4];
t q[5];
// Layer 25
cx q[3], q[1];
t q[5];
t q[4];
// Layer 26
cx q[1], q[0];
t q[4];
t q[3];
// Layer 27
cx q[1], q[4];
t q[0];
t q[3];
// Layer 28
cx q[1], q[3];
t q[0];
t q[4];
// Layer 29
t q[1];
t q[4];
t q[3];
// Layer 30
cx q[3], q[1];
t q[4];
// Layer 31
cx q[1], q[3];
t q[4];
// Layer 32
cx q[1], q[3];
t q[4];
// Layer 33
t q[3];
// Layer 34
t q[3];
// Layer 35
t q[3];
// Layer 36
t q[3];
// Layer 37
t q[3];
// Layer 38
t q[3];