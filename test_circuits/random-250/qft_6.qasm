OPENQASM 2.0;
include "qelib1.inc";
qreg q[8];
// Layer 0
t q[2];
t q[0];
t q[6];
t q[7];
t q[1];
t q[5];
t q[3];
t q[4];
// Layer 1
t q[4];
t q[3];
t q[1];
t q[6];
t q[5];
t q[2];
t q[7];
t q[0];
// Layer 2
t q[7];
t q[5];
t q[1];
t q[6];
t q[4];
t q[0];
t q[3];
t q[2];
// Layer 3
t q[2];
t q[6];
t q[7];
t q[4];
t q[3];
t q[5];
t q[1];
t q[0];
// Layer 4
t q[4];
t q[3];
t q[1];
t q[2];
t q[5];
t q[0];
t q[6];
t q[7];
// Layer 5
cx q[5], q[2];
t q[7];
t q[1];
t q[3];
t q[4];
t q[0];
t q[6];
// Layer 6
t q[5];
t q[0];
t q[3];
t q[2];
// Layer 7
t q[2];
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