OPENQASM 2.0;
include "qelib1.inc";
qreg q[11];
ry(-pi/2) q[4];
x q[4];
y q[4];
ry(pi/2) q[1];
rx(pi/4) q[1];
ry(-pi/2) q[1];
ry(pi/2) q[3];
rx(pi/4) q[3];
ry(-pi/2) q[3];
ry(-pi/2) q[1];
cz q[4],q[1];
ry(pi/2) q[1];
ry(-pi/2) q[4];
cz q[3],q[4];
ry(pi/2) q[4];
ry(pi/2) q[1];
rx(-pi/4) q[1];
ry(-pi/2) q[1];
ry(pi/2) q[4];
rx(-pi/4) q[4];
ry(-pi/2) q[4];
ry(-pi/2) q[1];
cz q[3],q[1];
ry(pi/2) q[1];
ry(-pi/2) q[4];
cz q[3],q[4];
ry(pi/2) q[4];
ry(pi/2) q[1];
rx(pi/4) q[1];
ry(-pi/2) q[1];
ry(-pi/2) q[1];
cz q[4],q[1];
ry(pi/2) q[1];
ry(pi/2) q[1];
rx(-pi/4) q[1];
ry(-pi/2) q[1];
ry(pi/2) q[4];
rx(pi/4) q[4];
ry(-pi/2) q[4];
ry(-pi/2) q[1];
cz q[3],q[1];
ry(pi/2) q[1];
ry(-pi/2) q[4];
x q[4];
y q[4];
x q[4];
x q[5];
ry(-pi/2) q[6];
x q[6];
y q[6];
ry(pi/2) q[4];
rx(pi/4) q[4];
ry(-pi/2) q[4];
ry(pi/2) q[5];
rx(pi/4) q[5];
ry(-pi/2) q[5];
ry(-pi/2) q[4];
cz q[6],q[4];
ry(pi/2) q[4];
ry(-pi/2) q[6];
cz q[5],q[6];
ry(pi/2) q[6];
ry(pi/2) q[4];
rx(-pi/4) q[4];
ry(-pi/2) q[4];
ry(pi/2) q[6];
rx(-pi/4) q[6];
ry(-pi/2) q[6];
ry(-pi/2) q[4];
cz q[5],q[4];
ry(pi/2) q[4];
ry(-pi/2) q[6];
cz q[5],q[6];
ry(pi/2) q[6];
ry(pi/2) q[4];
rx(pi/4) q[4];
ry(-pi/2) q[4];
ry(-pi/2) q[4];
cz q[6],q[4];
ry(pi/2) q[4];
ry(pi/2) q[4];
rx(-pi/4) q[4];
ry(-pi/2) q[4];
ry(pi/2) q[6];
rx(pi/4) q[6];
ry(-pi/2) q[6];
ry(-pi/2) q[4];
cz q[5],q[4];
ry(pi/2) q[4];
ry(-pi/2) q[6];
x q[6];
y q[6];
x q[5];
x q[4];
x q[6];
ry(-pi/2) q[9];
x q[9];
y q[9];
ry(pi/2) q[6];
rx(pi/4) q[6];
ry(-pi/2) q[6];
ry(pi/2) q[7];
rx(pi/4) q[7];
ry(-pi/2) q[7];
ry(-pi/2) q[6];
cz q[9],q[6];
ry(pi/2) q[6];
ry(-pi/2) q[9];
cz q[7],q[9];
ry(pi/2) q[9];
ry(pi/2) q[6];
rx(-pi/4) q[6];
ry(-pi/2) q[6];
ry(pi/2) q[9];
rx(-pi/4) q[9];
ry(-pi/2) q[9];
ry(-pi/2) q[6];
cz q[7],q[6];
ry(pi/2) q[6];
ry(-pi/2) q[9];
cz q[7],q[9];
ry(pi/2) q[9];
ry(pi/2) q[6];
rx(pi/4) q[6];
ry(-pi/2) q[6];
ry(-pi/2) q[6];
cz q[9],q[6];
ry(pi/2) q[6];
ry(pi/2) q[6];
rx(-pi/4) q[6];
ry(-pi/2) q[6];
ry(pi/2) q[9];
rx(pi/4) q[9];
ry(-pi/2) q[9];
ry(-pi/2) q[6];
cz q[7],q[6];
ry(pi/2) q[6];
ry(-pi/2) q[9];
x q[9];
y q[9];
x q[6];
x q[4];
x q[5];
ry(-pi/2) q[6];
x q[6];
y q[6];
ry(-pi/2) q[8];
x q[8];
y q[8];
ry(pi/2) q[4];
rx(pi/4) q[4];
ry(-pi/2) q[4];
ry(pi/2) q[5];
rx(pi/4) q[5];
ry(-pi/2) q[5];
ry(-pi/2) q[4];
cz q[6],q[4];
ry(pi/2) q[4];
ry(-pi/2) q[6];
cz q[5],q[6];
ry(pi/2) q[6];
ry(pi/2) q[4];
rx(-pi/4) q[4];
ry(-pi/2) q[4];
ry(pi/2) q[6];
rx(-pi/4) q[6];
ry(-pi/2) q[6];
ry(-pi/2) q[4];
cz q[5],q[4];
ry(pi/2) q[4];
ry(-pi/2) q[6];
cz q[5],q[6];
ry(pi/2) q[6];
ry(pi/2) q[4];
rx(pi/4) q[4];
ry(-pi/2) q[4];
ry(-pi/2) q[4];
cz q[6],q[4];
ry(pi/2) q[4];
ry(pi/2) q[4];
rx(-pi/4) q[4];
ry(-pi/2) q[4];
ry(pi/2) q[6];
rx(pi/4) q[6];
ry(-pi/2) q[6];
ry(-pi/2) q[4];
cz q[5],q[4];
ry(pi/2) q[4];
ry(pi/2) q[10];
rx(pi/4) q[10];
ry(-pi/2) q[10];
ry(pi/2) q[9];
rx(pi/4) q[9];
ry(-pi/2) q[9];
ry(-pi/2) q[10];
cz q[8],q[10];
ry(pi/2) q[10];
ry(-pi/2) q[8];
cz q[9],q[8];
ry(pi/2) q[8];
ry(pi/2) q[10];
rx(-pi/4) q[10];
ry(-pi/2) q[10];
ry(pi/2) q[8];
rx(-pi/4) q[8];
ry(-pi/2) q[8];
ry(-pi/2) q[10];
cz q[9],q[10];
ry(pi/2) q[10];
ry(-pi/2) q[8];
cz q[9],q[8];
ry(pi/2) q[8];
ry(pi/2) q[10];
rx(pi/4) q[10];
ry(-pi/2) q[10];
ry(-pi/2) q[10];
cz q[8],q[10];
ry(pi/2) q[10];
ry(pi/2) q[10];
rx(-pi/4) q[10];
ry(-pi/2) q[10];
ry(pi/2) q[8];
rx(pi/4) q[8];
ry(-pi/2) q[8];
ry(-pi/2) q[10];
cz q[9],q[10];
ry(pi/2) q[10];
ry(-pi/2) q[8];
x q[8];
y q[8];
x q[5];
x q[4];
ry(-pi/2) q[4];
x q[4];
y q[4];
ry(-pi/2) q[2];
x q[2];
y q[2];
ry(pi/2) q[1];
rx(pi/4) q[1];
ry(-pi/2) q[1];
ry(pi/2) q[3];
rx(pi/4) q[3];
ry(-pi/2) q[3];
ry(-pi/2) q[1];
cz q[4],q[1];
ry(pi/2) q[1];
ry(-pi/2) q[4];
cz q[3],q[4];
ry(pi/2) q[4];
ry(pi/2) q[1];
rx(-pi/4) q[1];
ry(-pi/2) q[1];
ry(pi/2) q[4];
rx(-pi/4) q[4];
ry(-pi/2) q[4];
ry(-pi/2) q[1];
cz q[3],q[1];
ry(pi/2) q[1];
ry(-pi/2) q[4];
cz q[3],q[4];
ry(pi/2) q[4];
ry(pi/2) q[1];
rx(pi/4) q[1];
ry(-pi/2) q[1];
ry(-pi/2) q[1];
cz q[4],q[1];
ry(pi/2) q[1];
ry(pi/2) q[1];
rx(-pi/4) q[1];
ry(-pi/2) q[1];
ry(pi/2) q[4];
rx(pi/4) q[4];
ry(-pi/2) q[4];
ry(-pi/2) q[1];
cz q[3],q[1];
ry(pi/2) q[1];
ry(-pi/2) q[0];
cz q[8],q[0];
ry(pi/2) q[0];
ry(-pi/2) q[1];
cz q[8],q[1];
ry(pi/2) q[1];
ry(-pi/2) q[5];
cz q[8],q[5];
ry(pi/2) q[5];
ry(pi/2) q[0];
rx(pi/4) q[0];
ry(-pi/2) q[0];
ry(pi/2) q[1];
rx(pi/4) q[1];
ry(-pi/2) q[1];
ry(-pi/2) q[0];
cz q[2],q[0];
ry(pi/2) q[0];
ry(-pi/2) q[2];
cz q[1],q[2];
ry(pi/2) q[2];
ry(pi/2) q[0];
rx(-pi/4) q[0];
ry(-pi/2) q[0];
ry(pi/2) q[2];
rx(-pi/4) q[2];
ry(-pi/2) q[2];
ry(-pi/2) q[0];
cz q[1],q[0];
ry(pi/2) q[0];
ry(-pi/2) q[2];
cz q[1],q[2];
ry(pi/2) q[2];
ry(pi/2) q[0];
rx(pi/4) q[0];
ry(-pi/2) q[0];
ry(-pi/2) q[0];
cz q[2],q[0];
ry(pi/2) q[0];
ry(pi/2) q[0];
rx(-pi/4) q[0];
ry(-pi/2) q[0];
ry(pi/2) q[2];
rx(pi/4) q[2];
ry(-pi/2) q[2];
ry(-pi/2) q[0];
cz q[1],q[0];
ry(pi/2) q[0];
ry(-pi/2) q[2];
x q[2];
y q[2];
x q[2];
ry(pi/2) q[2];
rx(pi/4) q[2];
ry(-pi/2) q[2];
ry(pi/2) q[3];
rx(pi/4) q[3];
ry(-pi/2) q[3];
ry(-pi/2) q[2];
cz q[4],q[2];
ry(pi/2) q[2];
ry(-pi/2) q[4];
cz q[3],q[4];
ry(pi/2) q[4];
ry(pi/2) q[2];
rx(-pi/4) q[2];
ry(-pi/2) q[2];
ry(pi/2) q[4];
rx(-pi/4) q[4];
ry(-pi/2) q[4];
ry(-pi/2) q[2];
cz q[3],q[2];
ry(pi/2) q[2];
ry(-pi/2) q[4];
cz q[3],q[4];
ry(pi/2) q[4];
ry(pi/2) q[2];
rx(pi/4) q[2];
ry(-pi/2) q[2];
ry(-pi/2) q[2];
cz q[4],q[2];
ry(pi/2) q[2];
ry(pi/2) q[2];
rx(-pi/4) q[2];
ry(-pi/2) q[2];
ry(pi/2) q[4];
rx(pi/4) q[4];
ry(-pi/2) q[4];
ry(-pi/2) q[2];
cz q[3],q[2];
ry(pi/2) q[2];
ry(-pi/2) q[4];
x q[4];
y q[4];
x q[2];
x q[4];
ry(pi/2) q[4];
rx(pi/4) q[4];
ry(-pi/2) q[4];
ry(pi/2) q[5];
rx(pi/4) q[5];
ry(-pi/2) q[5];
ry(-pi/2) q[4];
cz q[6],q[4];
ry(pi/2) q[4];
ry(-pi/2) q[6];
cz q[5],q[6];
ry(pi/2) q[6];
ry(pi/2) q[4];
rx(-pi/4) q[4];
ry(-pi/2) q[4];
ry(pi/2) q[6];
rx(-pi/4) q[6];
ry(-pi/2) q[6];
ry(-pi/2) q[4];
cz q[5],q[4];
ry(pi/2) q[4];
ry(-pi/2) q[6];
cz q[5],q[6];
ry(pi/2) q[6];
ry(pi/2) q[4];
rx(pi/4) q[4];
ry(-pi/2) q[4];
ry(-pi/2) q[4];
cz q[6],q[4];
ry(pi/2) q[4];
ry(pi/2) q[4];
rx(-pi/4) q[4];
ry(-pi/2) q[4];
ry(pi/2) q[6];
rx(pi/4) q[6];
ry(-pi/2) q[6];
ry(-pi/2) q[4];
cz q[5],q[4];
ry(pi/2) q[4];
ry(-pi/2) q[6];
x q[6];
y q[6];
x q[4];
x q[6];
ry(-pi/2) q[7];
x q[7];
y q[7];
ry(pi/2) q[6];
rx(pi/4) q[6];
ry(-pi/2) q[6];
ry(pi/2) q[8];
rx(pi/4) q[8];
ry(-pi/2) q[8];
ry(-pi/2) q[6];
cz q[7],q[6];
ry(pi/2) q[6];
ry(-pi/2) q[7];
cz q[8],q[7];
ry(pi/2) q[7];
ry(pi/2) q[6];
rx(-pi/4) q[6];
ry(-pi/2) q[6];
ry(pi/2) q[7];
rx(-pi/4) q[7];
ry(-pi/2) q[7];
ry(-pi/2) q[6];
cz q[8],q[6];
ry(pi/2) q[6];
ry(-pi/2) q[7];
cz q[8],q[7];
ry(pi/2) q[7];
ry(pi/2) q[6];
rx(pi/4) q[6];
ry(-pi/2) q[6];
ry(-pi/2) q[6];
cz q[7],q[6];
ry(pi/2) q[6];
ry(pi/2) q[6];
rx(-pi/4) q[6];
ry(-pi/2) q[6];
ry(pi/2) q[7];
rx(pi/4) q[7];
ry(-pi/2) q[7];
ry(-pi/2) q[6];
cz q[8],q[6];
ry(pi/2) q[6];
ry(-pi/2) q[7];
x q[7];
y q[7];
x q[6];
x q[4];
ry(-pi/2) q[6];
x q[6];
y q[6];
ry(pi/2) q[4];
rx(pi/4) q[4];
ry(-pi/2) q[4];
ry(pi/2) q[5];
rx(pi/4) q[5];
ry(-pi/2) q[5];
ry(-pi/2) q[4];
cz q[6],q[4];
ry(pi/2) q[4];
ry(-pi/2) q[6];
cz q[5],q[6];
ry(pi/2) q[6];
ry(pi/2) q[4];
rx(-pi/4) q[4];
ry(-pi/2) q[4];
ry(pi/2) q[6];
rx(-pi/4) q[6];
ry(-pi/2) q[6];
ry(-pi/2) q[4];
cz q[5],q[4];
ry(pi/2) q[4];
ry(-pi/2) q[6];
cz q[5],q[6];
ry(pi/2) q[6];
ry(pi/2) q[4];
rx(pi/4) q[4];
ry(-pi/2) q[4];
ry(-pi/2) q[4];
cz q[6],q[4];
ry(pi/2) q[4];
ry(pi/2) q[4];
rx(-pi/4) q[4];
ry(-pi/2) q[4];
ry(pi/2) q[6];
rx(pi/4) q[6];
ry(-pi/2) q[6];
ry(-pi/2) q[4];
cz q[5],q[4];
ry(pi/2) q[4];
ry(-pi/2) q[6];
x q[6];
y q[6];
x q[4];
ry(-pi/2) q[5];
x q[5];
y q[5];
ry(pi/2) q[4];
rx(pi/4) q[4];
ry(-pi/2) q[4];
ry(pi/2) q[8];
rx(pi/4) q[8];
ry(-pi/2) q[8];
ry(-pi/2) q[4];
cz q[5],q[4];
ry(pi/2) q[4];
ry(-pi/2) q[5];
cz q[8],q[5];
ry(pi/2) q[5];
ry(pi/2) q[4];
rx(-pi/4) q[4];
ry(-pi/2) q[4];
ry(pi/2) q[5];
rx(-pi/4) q[5];
ry(-pi/2) q[5];
ry(-pi/2) q[4];
cz q[8],q[4];
ry(pi/2) q[4];
ry(-pi/2) q[5];
cz q[8],q[5];
ry(pi/2) q[5];
ry(pi/2) q[4];
rx(pi/4) q[4];
ry(-pi/2) q[4];
ry(-pi/2) q[4];
cz q[5],q[4];
ry(pi/2) q[4];
ry(pi/2) q[4];
rx(-pi/4) q[4];
ry(-pi/2) q[4];
ry(pi/2) q[5];
rx(pi/4) q[5];
ry(-pi/2) q[5];
ry(-pi/2) q[4];
cz q[8],q[4];
ry(pi/2) q[4];
ry(-pi/2) q[5];
x q[5];
y q[5];
x q[2];
ry(-pi/2) q[4];
x q[4];
y q[4];
ry(pi/2) q[2];
rx(pi/4) q[2];
ry(-pi/2) q[2];
ry(pi/2) q[3];
rx(pi/4) q[3];
ry(-pi/2) q[3];
ry(-pi/2) q[2];
cz q[4],q[2];
ry(pi/2) q[2];
ry(-pi/2) q[4];
cz q[3],q[4];
ry(pi/2) q[4];
ry(pi/2) q[2];
rx(-pi/4) q[2];
ry(-pi/2) q[2];
ry(pi/2) q[4];
rx(-pi/4) q[4];
ry(-pi/2) q[4];
ry(-pi/2) q[2];
cz q[3],q[2];
ry(pi/2) q[2];
ry(-pi/2) q[4];
cz q[3],q[4];
ry(pi/2) q[4];
ry(pi/2) q[2];
rx(pi/4) q[2];
ry(-pi/2) q[2];
ry(-pi/2) q[2];
cz q[4],q[2];
ry(pi/2) q[2];
ry(pi/2) q[2];
rx(-pi/4) q[2];
ry(-pi/2) q[2];
ry(pi/2) q[4];
rx(pi/4) q[4];
ry(-pi/2) q[4];
ry(-pi/2) q[2];
cz q[3],q[2];
ry(pi/2) q[2];
ry(-pi/2) q[4];
x q[4];
y q[4];
x q[2];
x q[2];
ry(-pi/2) q[3];
x q[3];
y q[3];
ry(pi/2) q[2];
rx(pi/4) q[2];
ry(-pi/2) q[2];
ry(pi/2) q[8];
rx(pi/4) q[8];
ry(-pi/2) q[8];
ry(-pi/2) q[2];
cz q[3],q[2];
ry(pi/2) q[2];
ry(-pi/2) q[3];
cz q[8],q[3];
ry(pi/2) q[3];
ry(pi/2) q[2];
rx(-pi/4) q[2];
ry(-pi/2) q[2];
ry(pi/2) q[3];
rx(-pi/4) q[3];
ry(-pi/2) q[3];
ry(-pi/2) q[2];
cz q[8],q[2];
ry(pi/2) q[2];
ry(-pi/2) q[3];
cz q[8],q[3];
ry(pi/2) q[3];
ry(pi/2) q[2];
rx(pi/4) q[2];
ry(-pi/2) q[2];
ry(-pi/2) q[2];
cz q[3],q[2];
ry(pi/2) q[2];
ry(pi/2) q[2];
rx(-pi/4) q[2];
ry(-pi/2) q[2];
ry(pi/2) q[3];
rx(pi/4) q[3];
ry(-pi/2) q[3];
ry(-pi/2) q[2];
cz q[8],q[2];
ry(pi/2) q[2];
ry(-pi/2) q[3];
x q[3];
y q[3];
x q[2];
ry(-pi/2) q[2];
x q[2];
y q[2];
ry(pi/2) q[0];
rx(pi/4) q[0];
ry(-pi/2) q[0];
ry(pi/2) q[1];
rx(pi/4) q[1];
ry(-pi/2) q[1];
ry(-pi/2) q[0];
cz q[2],q[0];
ry(pi/2) q[0];
ry(-pi/2) q[2];
cz q[1],q[2];
ry(pi/2) q[2];
ry(pi/2) q[0];
rx(-pi/4) q[0];
ry(-pi/2) q[0];
ry(pi/2) q[2];
rx(-pi/4) q[2];
ry(-pi/2) q[2];
ry(-pi/2) q[0];
cz q[1],q[0];
ry(pi/2) q[0];
ry(-pi/2) q[2];
cz q[1],q[2];
ry(pi/2) q[2];
ry(pi/2) q[0];
rx(pi/4) q[0];
ry(-pi/2) q[0];
ry(-pi/2) q[0];
cz q[2],q[0];
ry(pi/2) q[0];
ry(pi/2) q[0];
rx(-pi/4) q[0];
ry(-pi/2) q[0];
ry(pi/2) q[2];
rx(pi/4) q[2];
ry(-pi/2) q[2];
ry(-pi/2) q[0];
cz q[1],q[0];
ry(pi/2) q[0];
ry(-pi/2) q[2];
x q[2];
y q[2];
x q[0];
ry(-pi/2) q[1];
x q[1];
y q[1];
ry(pi/2) q[0];
rx(pi/4) q[0];
ry(-pi/2) q[0];
ry(pi/2) q[8];
rx(pi/4) q[8];
ry(-pi/2) q[8];
ry(-pi/2) q[0];
cz q[1],q[0];
ry(pi/2) q[0];
ry(-pi/2) q[1];
cz q[8],q[1];
ry(pi/2) q[1];
ry(pi/2) q[0];
rx(-pi/4) q[0];
ry(-pi/2) q[0];
ry(pi/2) q[1];
rx(-pi/4) q[1];
ry(-pi/2) q[1];
ry(-pi/2) q[0];
cz q[8],q[0];
ry(pi/2) q[0];
ry(-pi/2) q[1];
cz q[8],q[1];
ry(pi/2) q[1];
ry(pi/2) q[0];
rx(pi/4) q[0];
ry(-pi/2) q[0];
ry(-pi/2) q[0];
cz q[1],q[0];
ry(pi/2) q[0];
ry(pi/2) q[0];
rx(-pi/4) q[0];
ry(-pi/2) q[0];
ry(pi/2) q[1];
rx(pi/4) q[1];
ry(-pi/2) q[1];
ry(-pi/2) q[0];
cz q[8],q[0];
ry(pi/2) q[0];
ry(-pi/2) q[1];
x q[1];
y q[1];
x q[0];
ry(-pi/2) q[8];
x q[8];
y q[8];
ry(pi/2) q[10];
rx(pi/4) q[10];
ry(-pi/2) q[10];
ry(pi/2) q[9];
rx(pi/4) q[9];
ry(-pi/2) q[9];
ry(-pi/2) q[10];
cz q[8],q[10];
ry(pi/2) q[10];
ry(-pi/2) q[8];
cz q[9],q[8];
ry(pi/2) q[8];
ry(pi/2) q[10];
rx(-pi/4) q[10];
ry(-pi/2) q[10];
ry(pi/2) q[8];
rx(-pi/4) q[8];
ry(-pi/2) q[8];
ry(-pi/2) q[10];
cz q[9],q[10];
ry(pi/2) q[10];
ry(-pi/2) q[8];
cz q[9],q[8];
ry(pi/2) q[8];
ry(pi/2) q[10];
rx(pi/4) q[10];
ry(-pi/2) q[10];
ry(-pi/2) q[10];
cz q[8],q[10];
ry(pi/2) q[10];
ry(pi/2) q[10];
rx(-pi/4) q[10];
ry(-pi/2) q[10];
ry(pi/2) q[8];
rx(pi/4) q[8];
ry(-pi/2) q[8];
ry(-pi/2) q[10];
cz q[9],q[10];
ry(pi/2) q[10];
ry(-pi/2) q[8];
x q[8];
y q[8];
