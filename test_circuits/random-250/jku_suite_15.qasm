OPENQASM 2.0;
include "qelib1.inc";
qreg q[5];
// Layer 0
cx q[2], q[4];
cx q[3], q[1];
t q[0];
// Layer 1
cx q[0], q[1];
cx q[4], q[2];
t q[3];
// Layer 2
cx q[2], q[0];
cx q[3], q[1];
t q[4];
// Layer 3
cx q[0], q[2];
cx q[4], q[1];
// Layer 4
cx q[0], q[2];
cx q[1], q[4];
// Layer 5
cx q[4], q[1];
cx q[2], q[0];
// Layer 6
cx q[3], q[2];
cx q[4], q[0];
// Layer 7
cx q[4], q[0];
t q[3];
// Layer 8
cx q[4], q[2];
t q[3];
// Layer 9
cx q[3], q[4];
t q[2];
// Layer 10
cx q[2], q[0];
t q[3];
// Layer 11
cx q[0], q[2];
t q[3];
// Layer 12
cx q[2], q[0];
t q[3];
// Layer 13
cx q[2], q[0];
t q[3];
// Layer 14
cx q[2], q[0];
t q[3];
// Layer 15
cx q[0], q[2];
t q[3];
// Layer 16
cx q[2], q[0];
t q[3];
// Layer 17
cx q[0], q[2];
t q[3];
// Layer 18
cx q[2], q[3];
t q[0];
// Layer 19
cx q[3], q[1];
t q[2];
// Layer 20
cx q[2], q[0];
t q[3];
// Layer 21
cx q[2], q[0];
t q[3];
// Layer 22
cx q[0], q[2];
t q[3];
// Layer 23
cx q[3], q[0];
t q[2];
// Layer 24
cx q[2], q[0];
t q[3];
// Layer 25
cx q[0], q[3];
t q[2];
// Layer 26
cx q[2], q[4];
t q[0];
// Layer 27
cx q[2], q[0];
t q[4];
// Layer 28
cx q[0], q[2];
t q[4];
// Layer 29
cx q[0], q[4];
t q[2];
// Layer 30
cx q[4], q[2];
t q[0];
// Layer 31
cx q[2], q[0];
t q[4];
// Layer 32
cx q[4], q[0];
t q[2];
// Layer 33
cx q[0], q[4];
t q[2];
// Layer 34
cx q[4], q[0];
t q[2];
// Layer 35
cx q[0], q[4];
t q[2];
// Layer 36
cx q[2], q[4];
t q[0];
// Layer 37
cx q[2], q[4];
t q[0];
// Layer 38
cx q[2], q[0];
t q[4];
// Layer 39
cx q[4], q[0];
t q[2];
// Layer 40
cx q[2], q[0];
t q[4];
// Layer 41
cx q[0], q[4];
t q[2];
// Layer 42
cx q[2], q[4];
// Layer 43
cx q[2], q[4];
// Layer 44
cx q[4], q[0];
// Layer 45
cx q[0], q[4];
// Layer 46
cx q[0], q[1];
// Layer 47
t q[0];
// Layer 48
t q[0];
// Layer 49
t q[0];
// Layer 50
t q[0];
// Layer 51
t q[0];
// Layer 52
t q[0];
// Layer 53
t q[0];
// Layer 54
t q[0];
// Layer 55
t q[0];
// Layer 56
t q[0];