OPENQASM 2.0;
include "qelib1.inc";
qreg q[5];
// Layer 0
cx q[4], q[2];
cx q[3], q[0];
t q[1];
// Layer 1
cx q[1], q[4];
cx q[2], q[0];
t q[3];
// Layer 2
cx q[3], q[0];
cx q[4], q[1];
t q[2];
// Layer 3
cx q[0], q[2];
cx q[1], q[3];
// Layer 4
cx q[1], q[2];
cx q[3], q[0];
// Layer 5
cx q[1], q[3];
cx q[2], q[4];
// Layer 6
cx q[1], q[3];
cx q[4], q[2];
// Layer 7
cx q[1], q[3];
cx q[4], q[0];
// Layer 8
cx q[4], q[2];
t q[0];
// Layer 9
cx q[4], q[0];
t q[2];
// Layer 10
cx q[4], q[2];
// Layer 11
cx q[4], q[1];
// Layer 12
cx q[1], q[0];
// Layer 13
cx q[0], q[1];
// Layer 14
cx q[1], q[2];
// Layer 15
cx q[1], q[0];
// Layer 16
cx q[0], q[2];
// Layer 17
cx q[2], q[3];
// Layer 18
cx q[3], q[0];
// Layer 19
cx q[3], q[1];
// Layer 20
cx q[3], q[4];
// Layer 21
cx q[4], q[1];
// Layer 22
cx q[4], q[3];
// Layer 23
cx q[4], q[3];
// Layer 24
cx q[3], q[0];
// Layer 25
cx q[3], q[2];
// Layer 26
cx q[2], q[1];
// Layer 27
cx q[2], q[3];
// Layer 28
cx q[2], q[0];
// Layer 29
cx q[2], q[3];
// Layer 30
cx q[2], q[3];
// Layer 31
cx q[3], q[4];
// Layer 32
cx q[4], q[2];
// Layer 33
cx q[2], q[0];
// Layer 34
cx q[0], q[3];
// Layer 35
cx q[3], q[0];
// Layer 36
cx q[3], q[0];
// Layer 37
cx q[3], q[4];
// Layer 38
cx q[4], q[3];
// Layer 39
cx q[4], q[3];
// Layer 40
cx q[3], q[1];
// Layer 41
cx q[1], q[4];
// Layer 42
cx q[4], q[3];
// Layer 43
cx q[3], q[4];
// Layer 44
cx q[3], q[4];
// Layer 45
cx q[3], q[2];
// Layer 46
cx q[2], q[3];
// Layer 47
cx q[2], q[4];
// Layer 48
cx q[4], q[2];
// Layer 49
cx q[2], q[4];
// Layer 50
cx q[4], q[1];
// Layer 51
cx q[4], q[3];
// Layer 52
cx q[4], q[0];
// Layer 53
cx q[0], q[4];
// Layer 54
cx q[4], q[1];
// Layer 55
cx q[1], q[2];
// Layer 56
cx q[1], q[4];
// Layer 57
cx q[1], q[3];
// Layer 58
cx q[3], q[0];
// Layer 59
cx q[0], q[2];
// Layer 60
cx q[0], q[3];
// Layer 61
cx q[0], q[1];
// Layer 62
cx q[0], q[3];
// Layer 63
cx q[0], q[4];
// Layer 64
cx q[0], q[4];
// Layer 65
cx q[4], q[0];
// Layer 66
cx q[0], q[4];
// Layer 67
cx q[4], q[1];
// Layer 68
cx q[1], q[0];
// Layer 69
cx q[1], q[3];
// Layer 70
cx q[3], q[4];
// Layer 71
cx q[3], q[2];
// Layer 72
cx q[3], q[0];
// Layer 73
cx q[0], q[3];
// Layer 74
t q[3];
// Layer 75
t q[3];
// Layer 76
t q[3];
// Layer 77
t q[3];
// Layer 78
t q[3];
// Layer 79
t q[3];
// Layer 80
t q[3];
// Layer 81
t q[3];
// Layer 82
t q[3];
// Layer 83
t q[3];
// Layer 84
t q[3];
// Layer 85
t q[3];
// Layer 86
t q[3];
// Layer 87
t q[3];
// Layer 88
t q[3];