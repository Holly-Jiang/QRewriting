OPENQASM 2.0;
include "qelib1.inc";
qreg q[20];
x q[6];
cx q[6],q[14];
cx q[9],q[13];
x q[12];
x q[13];
x q[9];
cx q[12],q[17];
cx q[9],q[13];
cx q[19],q[13];
cx q[15],q[6];
cx q[0],q[13];
x q[0];
cx q[15],q[0];
cx q[0],q[18];
x q[17];
x q[0];
cx q[6],q[1];
cx q[17],q[6];
cx q[4],q[15];
cx q[0],q[18];
x q[17];
x q[11];
cx q[11],q[19];
cx q[17],q[0];
x q[9];
x q[1];
cx q[9],q[18];
x q[14];
cx q[18],q[1];
x q[16];
cx q[1],q[14];
x q[9];
cx q[8],q[14];
x q[11];
cx q[11],q[9];
x q[1];
cx q[0],q[13];
x q[6];
x q[9];
cx q[6],q[1];
cx q[9],q[0];
x q[6];
cx q[6],q[1];
cx q[8],q[1];
cx q[11],q[9];
cx q[1],q[14];
cx q[18],q[1];
x q[4];
x q[14];
cx q[6],q[1];
x q[8];
x q[10];
x q[12];
x q[6];
x q[3];
x q[7];
x q[19];
cx q[1],q[14];
x q[15];
x q[0];
cx q[6],q[14];
cx q[3],q[12];
x q[1];
x q[3];
cx q[17],q[6];
