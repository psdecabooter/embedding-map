OPENQASM 2.0;
include "qelib1.inc";
qreg q[6];
// Layer 0
cx q[2], q[3];
cx q[4], q[5];
t q[0];
t q[1];
// Layer 1
cx q[2], q[5];
cx q[0], q[3];
t q[4];
t q[1];
// Layer 2
cx q[3], q[0];
cx q[4], q[2];
cx q[1], q[5];
// Layer 3
t q[4];
t q[3];
t q[2];
// Layer 4
t q[4];
// Layer 5
t q[4];
// Layer 6
t q[4];
// Layer 7
t q[4];
// Layer 8
t q[4];
// Layer 9
t q[4];
// Layer 10
t q[4];
// Layer 11
t q[4];
// Layer 12
t q[4];
// Layer 13
t q[4];
// Layer 14
t q[4];
// Layer 15
t q[4];
// Layer 16
t q[4];
// Layer 17
t q[4];
// Layer 18
t q[4];
// Layer 19
t q[4];
// Layer 20
t q[4];
// Layer 21
t q[4];
// Layer 22
t q[4];
// Layer 23
t q[4];
// Layer 24
t q[4];
// Layer 25
t q[4];
// Layer 26
t q[4];
// Layer 27
t q[4];
// Layer 28
t q[4];
// Layer 29
t q[4];
// Layer 30
t q[4];
// Layer 31
t q[4];
// Layer 32
t q[4];
// Layer 33
t q[4];
// Layer 34
t q[4];
// Layer 35
t q[4];
// Layer 36
t q[4];
// Layer 37
t q[4];
// Layer 38
t q[4];
// Layer 39
t q[4];
// Layer 40
t q[4];
// Layer 41
t q[4];
// Layer 42
t q[4];
// Layer 43
t q[4];
// Layer 44
t q[4];
// Layer 45
t q[4];
// Layer 46
t q[4];
// Layer 47
t q[4];
// Layer 48
t q[4];
// Layer 49
t q[4];
// Layer 50
t q[4];
// Layer 51
t q[4];
// Layer 52
t q[4];
// Layer 53
t q[4];
// Layer 54
t q[4];
// Layer 55
t q[4];
// Layer 56
t q[4];
// Layer 57
t q[4];
// Layer 58
t q[4];
// Layer 59
t q[4];
// Layer 60
t q[4];
// Layer 61
t q[4];
// Layer 62
t q[4];
// Layer 63
t q[4];
// Layer 64
t q[4];
// Layer 65
t q[4];
// Layer 66
t q[4];
// Layer 67
t q[4];
// Layer 68
t q[4];
// Layer 69
t q[4];
// Layer 70
t q[4];
// Layer 71
t q[4];
// Layer 72
t q[4];
// Layer 73
t q[4];
// Layer 74
t q[4];
// Layer 75
t q[4];
// Layer 76
t q[4];
// Layer 77
t q[4];
// Layer 78
t q[4];
// Layer 79
t q[4];
// Layer 80
t q[4];
// Layer 81
t q[4];
// Layer 82
t q[4];
// Layer 83
t q[4];
// Layer 84
t q[4];
// Layer 85
t q[4];
// Layer 86
t q[4];
// Layer 87
t q[4];
// Layer 88
t q[4];
// Layer 89
t q[4];
// Layer 90
t q[4];
// Layer 91
t q[4];