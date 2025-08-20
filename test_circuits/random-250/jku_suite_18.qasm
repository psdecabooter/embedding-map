OPENQASM 2.0;
include "qelib1.inc";
qreg q[8];
// Layer 0
cx q[1], q[5];
cx q[6], q[2];
cx q[3], q[4];
cx q[0], q[7];
// Layer 1
cx q[4], q[2];
cx q[5], q[3];
cx q[0], q[6];
t q[7];
// Layer 2
cx q[0], q[4];
cx q[6], q[5];
cx q[3], q[1];
// Layer 3
cx q[6], q[3];
cx q[1], q[7];
// Layer 4
cx q[6], q[1];
cx q[3], q[5];
// Layer 5
cx q[5], q[6];
cx q[3], q[7];
// Layer 6
cx q[7], q[6];
cx q[3], q[1];
// Layer 7
cx q[6], q[1];
cx q[3], q[4];
// Layer 8
cx q[4], q[7];
cx q[3], q[0];
// Layer 9
cx q[7], q[0];
cx q[4], q[1];
// Layer 10
cx q[1], q[0];
cx q[4], q[3];
// Layer 11
cx q[4], q[3];
cx q[0], q[6];
// Layer 12
cx q[6], q[2];
cx q[4], q[0];
// Layer 13
cx q[6], q[3];
cx q[0], q[1];
// Layer 14
cx q[3], q[6];
cx q[1], q[0];
// Layer 15
cx q[0], q[3];
t q[1];
// Layer 16
cx q[1], q[3];
t q[0];
// Layer 17
cx q[3], q[2];
t q[1];
// Layer 18
cx q[1], q[2];
t q[3];
// Layer 19
cx q[3], q[2];
t q[1];
// Layer 20
cx q[2], q[3];
t q[1];
// Layer 21
cx q[3], q[0];
t q[2];
// Layer 22
cx q[2], q[6];
t q[0];
// Layer 23
cx q[6], q[5];
t q[2];
// Layer 24
cx q[5], q[3];
t q[6];
// Layer 25
cx q[6], q[0];
t q[5];
// Layer 26
cx q[6], q[1];
t q[0];
// Layer 27
cx q[0], q[3];
// Layer 28
cx q[0], q[7];
// Layer 29
cx q[0], q[7];
// Layer 30
cx q[7], q[2];
// Layer 31
cx q[2], q[4];
// Layer 32
cx q[2], q[0];
// Layer 33
cx q[0], q[3];
// Layer 34
cx q[3], q[4];
// Layer 35
cx q[3], q[6];
// Layer 36
cx q[6], q[3];
// Layer 37
cx q[3], q[4];
// Layer 38
cx q[4], q[7];
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