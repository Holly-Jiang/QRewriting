OPENQASM 2.0;
include "qelib1.inc";
qreg q[9];
x q[2];
h q[7];
ccz q[0],q[2],q[7];
h q[7];
x q[2];
x q[0];
h q[6];
h q[8];
ccz q[1],q[7],q[6];
ccz q[0],q[2],q[8];
h q[8];
h q[6];
cx q[6],q[5];
cx q[6],q[3];
cx q[8],q[7];
x q[1];
x q[7];
h q[3];
h q[6];
ccz q[1],q[8],q[6];
ccz q[1],q[7],q[3];
h q[6];
h q[3];
x q[1];
cx q[6],q[4];
cx q[5],q[8];
h q[5];
h q[8];
ccz q[1],q[7],q[5];
ccz q[0],q[2],q[8];
h q[8];
h q[5];
x q[0];
x q[7];
cx q[5],q[8];
