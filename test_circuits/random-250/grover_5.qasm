OPENQASM 2.0;
include "qelib1.inc";
qreg q[6];
// Layer 0
t q[0];
t q[2];
t q[1];
t q[5];
t q[4];
t q[3];
// Layer 1
t q[0];
t q[5];
t q[3];
t q[2];
t q[1];
t q[4];
// Layer 2
cx q[2], q[0];
t q[5];
t q[1];
t q[3];
t q[4];
// Layer 3
cx q[1], q[3];
t q[0];
t q[4];
t q[2];
t q[5];
// Layer 4
cx q[0], q[1];
t q[5];
t q[3];
t q[4];
t q[2];
// Layer 5
cx q[3], q[1];
t q[5];
t q[2];
t q[4];
t q[0];
// Layer 6
cx q[3], q[4];
t q[1];
t q[2];
t q[5];
t q[0];
// Layer 7
cx q[3], q[0];
cx q[4], q[5];
t q[2];
t q[1];
// Layer 8
t q[2];
// Layer 9
t q[2];
// Layer 10
t q[2];
// Layer 11
t q[2];
// Layer 12
t q[2];
// Layer 13
t q[2];
// Layer 14
t q[2];
// Layer 15
t q[2];
// Layer 16
t q[2];
// Layer 17
t q[2];
// Layer 18
t q[2];
// Layer 19
t q[2];
// Layer 20
t q[2];
// Layer 21
t q[2];
// Layer 22
t q[2];
// Layer 23
t q[2];
// Layer 24
t q[2];
// Layer 25
t q[2];
// Layer 26
t q[2];
// Layer 27
t q[2];
// Layer 28
t q[2];
// Layer 29
t q[2];
// Layer 30
t q[2];
// Layer 31
t q[2];
// Layer 32
t q[2];
// Layer 33
t q[2];
// Layer 34
t q[2];
// Layer 35
t q[2];
// Layer 36
t q[2];
// Layer 37
t q[2];
// Layer 38
t q[2];
// Layer 39
t q[2];
// Layer 40
t q[2];
// Layer 41
t q[2];
// Layer 42
t q[2];
// Layer 43
t q[2];
// Layer 44
t q[2];
// Layer 45
t q[2];
// Layer 46
t q[2];
// Layer 47
t q[2];
// Layer 48
t q[2];
// Layer 49
t q[2];
// Layer 50
t q[2];
// Layer 51
t q[2];
// Layer 52
t q[2];
// Layer 53
t q[2];
// Layer 54
t q[2];
// Layer 55
t q[2];
// Layer 56
t q[2];
// Layer 57
t q[2];
// Layer 58
t q[2];
// Layer 59
t q[2];
// Layer 60
t q[2];
// Layer 61
t q[2];
// Layer 62
t q[2];
// Layer 63
t q[2];
// Layer 64
t q[2];
// Layer 65
t q[2];
// Layer 66
t q[2];
// Layer 67
t q[2];
// Layer 68
t q[2];