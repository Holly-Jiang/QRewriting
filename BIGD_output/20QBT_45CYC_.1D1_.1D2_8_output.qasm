OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
cx q[8],q[2];
cx q[5],q[2];
x q[4];
cx q[15],q[6];
x q[9];
x q[1];
x q[0];
x q[11];
cx q[15],q[7];
cx q[3],q[11];
cx q[0],q[8];
x q[0];
cx q[8],q[2];
x q[6];
cx q[5],q[3];
x q[17];
x q[3];
x q[5];
cx q[5],q[3];
cx q[0],q[8];
cx q[6],q[4];
x q[18];
x q[0];
cx q[5],q[8];
cx q[17],q[6];
cx q[13],q[18];
cx q[3],q[7];
x q[13];
x q[18];
cx q[9],q[8];
cx q[14],q[0];
cx q[7],q[6];
cx q[10],q[4];
x q[9];
cx q[9],q[13];
x q[13];
cx q[13],q[17];
x q[17];
x q[4];
cx q[0],q[8];
cx q[15],q[17];
cx q[17],q[7];
cx q[7],q[11];
cx q[17],q[18];
cx q[7],q[1];
cx q[5],q[8];
cx q[3],q[1];
cx q[5],q[3];
cx q[15],q[17];
cx q[8],q[2];
cx q[17],q[7];
x q[3];
cx q[13],q[17];
x q[6];
cx q[5],q[3];