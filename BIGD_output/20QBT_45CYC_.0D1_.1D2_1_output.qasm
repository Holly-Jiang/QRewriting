OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
cx q[1],q[13];
cx q[1],q[10];
cx q[8],q[13];
cx q[8],q[12];
cx q[11],q[12];
cx q[13],q[11];
cx q[18],q[11];
cx q[6],q[18];
cx q[18],q[8];
cx q[18],q[11];
cx q[6],q[18];
cx q[18],q[13];
cx q[13],q[10];
cx q[13],q[19];
cx q[10],q[12];
cx q[12],q[4];
cx q[1],q[13];
cx q[1],q[10];
cx q[3],q[1];
cx q[6],q[3];
cx q[14],q[3];
cx q[3],q[5];
cx q[5],q[2];
cx q[14],q[3];
cx q[14],q[2];
cx q[16],q[14];
