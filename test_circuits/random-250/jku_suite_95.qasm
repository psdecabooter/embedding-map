OPENQASM 2.0;
include "qelib1.inc";
qreg q[7];
// Layer 0
cx q[5], q[2];
cx q[1], q[0];
cx q[4], q[6];
t q[3];
// Layer 1
cx q[5], q[2];
cx q[3], q[0];
cx q[1], q[6];
t q[4];
// Layer 2
cx q[0], q[3];
cx q[4], q[2];
cx q[6], q[1];
t q[5];
// Layer 3
cx q[3], q[4];
cx q[5], q[6];
cx q[1], q[2];
t q[0];
// Layer 4
cx q[6], q[2];
cx q[1], q[3];
cx q[5], q[0];
t q[4];
// Layer 5
cx q[6], q[1];
cx q[5], q[2];
cx q[4], q[0];
// Layer 6
cx q[2], q[1];
t q[4];
// Layer 7
cx q[4], q[2];
t q[1];
// Layer 8
cx q[1], q[6];
t q[4];
// Layer 9
cx q[6], q[5];
t q[4];
// Layer 10
cx q[6], q[2];
t q[4];
// Layer 11
cx q[2], q[5];
t q[4];
// Layer 12
cx q[5], q[1];
t q[4];
// Layer 13
cx q[5], q[3];
t q[1];
// Layer 14
cx q[1], q[3];
t q[5];
// Layer 15
cx q[1], q[2];
t q[5];
// Layer 16
cx q[2], q[1];
t q[5];
// Layer 17
cx q[1], q[0];
t q[5];
// Layer 18
cx q[0], q[5];
t q[1];
// Layer 19
cx q[5], q[6];
t q[0];
// Layer 20
cx q[0], q[6];
t q[5];
// Layer 21
cx q[5], q[0];
t q[6];
// Layer 22
cx q[0], q[4];
t q[6];
// Layer 23
cx q[6], q[4];
t q[0];
// Layer 24
cx q[6], q[2];
t q[0];
// Layer 25
cx q[2], q[4];
t q[6];
// Layer 26
cx q[2], q[5];
t q[6];
// Layer 27
cx q[2], q[1];
t q[5];
// Layer 28
t q[2];
t q[1];
// Layer 29
cx q[1], q[5];
// Layer 30
cx q[1], q[2];
// Layer 31
cx q[2], q[6];
// Layer 32
cx q[6], q[0];
// Layer 33
cx q[6], q[2];
// Layer 34
cx q[6], q[2];
// Layer 35
cx q[2], q[1];
// Layer 36
cx q[1], q[6];
// Layer 37
cx q[1], q[3];
// Layer 38
cx q[1], q[6];
// Layer 39
cx q[6], q[1];
// Layer 40
cx q[1], q[6];
// Layer 41
cx q[6], q[0];
// Layer 42
cx q[0], q[1];
// Layer 43
cx q[0], q[4];
// Layer 44
cx q[0], q[4];
// Layer 45
cx q[0], q[3];
// Layer 46
t q[3];
// Layer 47
t q[3];
// Layer 48
t q[3];
// Layer 49
t q[3];
// Layer 50
t q[3];
// Layer 51
t q[3];
// Layer 52
t q[3];
// Layer 53
t q[3];
// Layer 54
t q[3];
// Layer 55
t q[3];
// Layer 56
t q[3];
// Layer 57
t q[3];
// Layer 58
t q[3];
// Layer 59
t q[3];
// Layer 60
t q[3];
// Layer 61
t q[3];