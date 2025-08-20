OPENQASM 2.0;
include "qelib1.inc";
qreg q[12];
// Layer 0
cx q[5], q[10];
cx q[8], q[11];
cx q[4], q[0];
cx q[3], q[2];
t q[9];
// Layer 1
cx q[11], q[7];
cx q[5], q[6];
cx q[9], q[1];
t q[2];
// Layer 2
cx q[9], q[2];
cx q[7], q[1];
cx q[5], q[0];
t q[11];
// Layer 3
cx q[1], q[0];
cx q[5], q[10];
t q[9];
// Layer 4
cx q[10], q[1];
t q[9];
// Layer 5
cx q[9], q[4];
t q[1];
// Layer 6
cx q[1], q[0];
t q[4];
// Layer 7
cx q[0], q[10];
t q[4];
// Layer 8
cx q[4], q[7];
t q[10];
// Layer 9
cx q[4], q[8];
t q[7];
// Layer 10
cx q[7], q[8];
t q[4];
// Layer 11
cx q[8], q[2];
t q[7];
// Layer 12
cx q[8], q[3];
t q[7];
// Layer 13
cx q[7], q[5];
t q[8];
// Layer 14
cx q[8], q[7];
t q[5];
// Layer 15
cx q[5], q[10];
// Layer 16
cx q[10], q[1];
// Layer 17
cx q[1], q[5];
// Layer 18
cx q[5], q[3];
// Layer 19
cx q[3], q[5];
// Layer 20
cx q[5], q[11];
// Layer 21
cx q[5], q[1];
// Layer 22
cx q[1], q[11];
// Layer 23
cx q[1], q[2];
// Layer 24
cx q[1], q[9];
// Layer 25
cx q[1], q[11];
// Layer 26
cx q[1], q[2];
// Layer 27
cx q[1], q[10];
// Layer 28
cx q[1], q[7];
// Layer 29
cx q[7], q[1];
// Layer 30
cx q[7], q[8];
// Layer 31
cx q[8], q[7];
// Layer 32
cx q[8], q[0];
// Layer 33
cx q[8], q[0];
// Layer 34
cx q[0], q[8];
// Layer 35
cx q[0], q[4];
// Layer 36
cx q[4], q[11];
// Layer 37
cx q[4], q[11];
// Layer 38
cx q[4], q[3];
// Layer 39
cx q[3], q[11];
// Layer 40
cx q[11], q[3];
// Layer 41
cx q[11], q[9];
// Layer 42
cx q[9], q[11];
// Layer 43
cx q[11], q[0];
// Layer 44
cx q[11], q[0];
// Layer 45
cx q[0], q[1];
// Layer 46
cx q[1], q[9];
// Layer 47
cx q[1], q[10];
// Layer 48
cx q[1], q[11];
// Layer 49
cx q[1], q[9];
// Layer 50
t q[9];
// Layer 51
t q[9];
// Layer 52
t q[9];
// Layer 53
t q[9];
// Layer 54
t q[9];
// Layer 55
t q[9];
// Layer 56
t q[9];
// Layer 57
t q[9];
// Layer 58
t q[9];
// Layer 59
t q[9];
// Layer 60
t q[9];
// Layer 61
t q[9];
// Layer 62
t q[9];
// Layer 63
t q[9];
// Layer 64
t q[9];
// Layer 65
t q[9];
// Layer 66
t q[9];
// Layer 67
t q[9];
// Layer 68
t q[9];
// Layer 69
t q[9];
// Layer 70
t q[9];
// Layer 71
t q[9];
// Layer 72
t q[9];
// Layer 73
t q[9];
// Layer 74
t q[9];
// Layer 75
t q[9];
// Layer 76
t q[9];
// Layer 77
t q[9];
// Layer 78
t q[9];