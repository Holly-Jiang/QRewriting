OPENQASM 2.0;
include "qelib1.inc";
qreg q[7];
ry(-pi/2) q[6];
x q[6];
y q[6];
ry(pi/2) q[3];
rx(pi/4) q[3];
ry(-pi/2) q[3];
ry(pi/2) q[5];
rx(pi/4) q[5];
ry(-pi/2) q[5];
ry(-pi/2) q[3];
cz q[6],q[3];
ry(pi/2) q[3];
ry(-pi/2) q[6];
cz q[5],q[6];
ry(pi/2) q[6];
ry(pi/2) q[3];
rx(-pi/4) q[3];
ry(-pi/2) q[3];
ry(pi/2) q[6];
rx(-pi/4) q[6];
ry(-pi/2) q[6];
ry(-pi/2) q[3];
cz q[5],q[3];
ry(pi/2) q[3];
ry(-pi/2) q[6];
cz q[5],q[6];
ry(pi/2) q[6];
ry(pi/2) q[3];
rx(pi/4) q[3];
ry(-pi/2) q[3];
ry(-pi/2) q[3];
cz q[6],q[3];
ry(pi/2) q[3];
ry(pi/2) q[3];
rx(-pi/4) q[3];
ry(-pi/2) q[3];
ry(pi/2) q[6];
rx(pi/4) q[6];
ry(-pi/2) q[6];
ry(-pi/2) q[3];
cz q[5],q[3];
ry(pi/2) q[3];
ry(-pi/2) q[5];
x q[5];
y q[5];
ry(pi/2) q[2];
rx(pi/4) q[2];
ry(-pi/2) q[2];
ry(pi/2) q[4];
rx(pi/4) q[4];
ry(-pi/2) q[4];
ry(-pi/2) q[2];
cz q[5],q[2];
ry(pi/2) q[2];
ry(-pi/2) q[5];
cz q[4],q[5];
ry(pi/2) q[5];
ry(pi/2) q[2];
rx(-pi/4) q[2];
ry(-pi/2) q[2];
ry(pi/2) q[5];
rx(-pi/4) q[5];
ry(-pi/2) q[5];
ry(-pi/2) q[2];
cz q[4],q[2];
ry(pi/2) q[2];
ry(-pi/2) q[5];
cz q[4],q[5];
ry(pi/2) q[5];
ry(pi/2) q[2];
rx(pi/4) q[2];
ry(-pi/2) q[2];
ry(-pi/2) q[2];
cz q[5],q[2];
ry(pi/2) q[2];
ry(pi/2) q[2];
rx(-pi/4) q[2];
ry(-pi/2) q[2];
ry(pi/2) q[5];
rx(pi/4) q[5];
ry(-pi/2) q[5];
ry(-pi/2) q[2];
cz q[4],q[2];
ry(pi/2) q[2];
ry(-pi/2) q[4];
x q[4];
y q[4];
ry(pi/2) q[0];
rx(pi/4) q[0];
ry(-pi/2) q[0];
ry(pi/2) q[1];
rx(pi/4) q[1];
ry(-pi/2) q[1];
ry(-pi/2) q[0];
cz q[4],q[0];
ry(pi/2) q[0];
ry(-pi/2) q[4];
cz q[1],q[4];
ry(pi/2) q[4];
ry(pi/2) q[0];
rx(-pi/4) q[0];
ry(-pi/2) q[0];
ry(pi/2) q[4];
rx(-pi/4) q[4];
ry(-pi/2) q[4];
ry(-pi/2) q[0];
cz q[1],q[0];
ry(pi/2) q[0];
ry(-pi/2) q[4];
cz q[1],q[4];
ry(pi/2) q[4];
ry(pi/2) q[0];
rx(pi/4) q[0];
ry(-pi/2) q[0];
ry(-pi/2) q[0];
cz q[4],q[0];
ry(pi/2) q[0];
ry(pi/2) q[0];
rx(-pi/4) q[0];
ry(-pi/2) q[0];
ry(pi/2) q[4];
rx(pi/4) q[4];
ry(-pi/2) q[4];
ry(-pi/2) q[0];
cz q[1],q[0];
ry(pi/2) q[0];
ry(-pi/2) q[4];
x q[4];
y q[4];
ry(pi/2) q[2];
rx(pi/4) q[2];
ry(-pi/2) q[2];
ry(pi/2) q[4];
rx(pi/4) q[4];
ry(-pi/2) q[4];
ry(-pi/2) q[2];
cz q[5],q[2];
ry(pi/2) q[2];
ry(-pi/2) q[5];
cz q[4],q[5];
ry(pi/2) q[5];
ry(pi/2) q[2];
rx(-pi/4) q[2];
ry(-pi/2) q[2];
ry(pi/2) q[5];
rx(-pi/4) q[5];
ry(-pi/2) q[5];
ry(-pi/2) q[2];
cz q[4],q[2];
ry(pi/2) q[2];
ry(-pi/2) q[5];
cz q[4],q[5];
ry(pi/2) q[5];
ry(pi/2) q[2];
rx(pi/4) q[2];
ry(-pi/2) q[2];
ry(-pi/2) q[2];
cz q[5],q[2];
ry(pi/2) q[2];
ry(pi/2) q[2];
rx(-pi/4) q[2];
ry(-pi/2) q[2];
ry(pi/2) q[5];
rx(pi/4) q[5];
ry(-pi/2) q[5];
ry(-pi/2) q[2];
cz q[4],q[2];
ry(pi/2) q[2];
ry(-pi/2) q[5];
x q[5];
y q[5];
ry(pi/2) q[3];
rx(pi/4) q[3];
ry(-pi/2) q[3];
ry(pi/2) q[5];
rx(pi/4) q[5];
ry(-pi/2) q[5];
ry(-pi/2) q[3];
cz q[6],q[3];
ry(pi/2) q[3];
ry(-pi/2) q[6];
cz q[5],q[6];
ry(pi/2) q[6];
ry(pi/2) q[3];
rx(-pi/4) q[3];
ry(-pi/2) q[3];
ry(pi/2) q[6];
rx(-pi/4) q[6];
ry(-pi/2) q[6];
ry(-pi/2) q[3];
cz q[5],q[3];
ry(pi/2) q[3];
ry(-pi/2) q[6];
cz q[5],q[6];
ry(pi/2) q[6];
ry(pi/2) q[3];
rx(pi/4) q[3];
ry(-pi/2) q[3];
ry(-pi/2) q[3];
cz q[6],q[3];
ry(pi/2) q[3];
ry(pi/2) q[3];
rx(-pi/4) q[3];
ry(-pi/2) q[3];
ry(pi/2) q[6];
rx(pi/4) q[6];
ry(-pi/2) q[6];
ry(-pi/2) q[3];
cz q[5],q[3];
ry(pi/2) q[3];
ry(-pi/2) q[6];
x q[6];
y q[6];
ry(-pi/2) q[5];
x q[5];
y q[5];
ry(pi/2) q[2];
rx(pi/4) q[2];
ry(-pi/2) q[2];
ry(pi/2) q[4];
rx(pi/4) q[4];
ry(-pi/2) q[4];
ry(-pi/2) q[2];
cz q[5],q[2];
ry(pi/2) q[2];
ry(-pi/2) q[5];
cz q[4],q[5];
ry(pi/2) q[5];
ry(pi/2) q[2];
rx(-pi/4) q[2];
ry(-pi/2) q[2];
ry(pi/2) q[5];
rx(-pi/4) q[5];
ry(-pi/2) q[5];
ry(-pi/2) q[2];
cz q[4],q[2];
ry(pi/2) q[2];
ry(-pi/2) q[5];
cz q[4],q[5];
ry(pi/2) q[5];
ry(pi/2) q[2];
rx(pi/4) q[2];
ry(-pi/2) q[2];
ry(-pi/2) q[2];
cz q[5],q[2];
ry(pi/2) q[2];
ry(pi/2) q[2];
rx(-pi/4) q[2];
ry(-pi/2) q[2];
ry(pi/2) q[5];
rx(pi/4) q[5];
ry(-pi/2) q[5];
ry(-pi/2) q[2];
cz q[4],q[2];
ry(pi/2) q[2];
ry(-pi/2) q[4];
x q[4];
y q[4];
ry(pi/2) q[0];
rx(pi/4) q[0];
ry(-pi/2) q[0];
ry(pi/2) q[1];
rx(pi/4) q[1];
ry(-pi/2) q[1];
ry(-pi/2) q[0];
cz q[4],q[0];
ry(pi/2) q[0];
ry(-pi/2) q[4];
cz q[1],q[4];
ry(pi/2) q[4];
ry(pi/2) q[0];
rx(-pi/4) q[0];
ry(-pi/2) q[0];
ry(pi/2) q[4];
rx(-pi/4) q[4];
ry(-pi/2) q[4];
ry(-pi/2) q[0];
cz q[1],q[0];
ry(pi/2) q[0];
ry(-pi/2) q[4];
cz q[1],q[4];
ry(pi/2) q[4];
ry(pi/2) q[0];
rx(pi/4) q[0];
ry(-pi/2) q[0];
ry(-pi/2) q[0];
cz q[4],q[0];
ry(pi/2) q[0];
ry(pi/2) q[0];
rx(-pi/4) q[0];
ry(-pi/2) q[0];
ry(pi/2) q[4];
rx(pi/4) q[4];
ry(-pi/2) q[4];
ry(-pi/2) q[0];
cz q[1],q[0];
ry(pi/2) q[0];
ry(-pi/2) q[4];
x q[4];
y q[4];
ry(pi/2) q[2];
rx(pi/4) q[2];
ry(-pi/2) q[2];
ry(pi/2) q[4];
rx(pi/4) q[4];
ry(-pi/2) q[4];
ry(-pi/2) q[2];
cz q[5],q[2];
ry(pi/2) q[2];
ry(-pi/2) q[5];
cz q[4],q[5];
ry(pi/2) q[5];
ry(pi/2) q[2];
rx(-pi/4) q[2];
ry(-pi/2) q[2];
ry(pi/2) q[5];
rx(-pi/4) q[5];
ry(-pi/2) q[5];
ry(-pi/2) q[2];
cz q[4],q[2];
ry(pi/2) q[2];
ry(-pi/2) q[5];
cz q[4],q[5];
ry(pi/2) q[5];
ry(pi/2) q[2];
rx(pi/4) q[2];
ry(-pi/2) q[2];
ry(-pi/2) q[2];
cz q[5],q[2];
ry(pi/2) q[2];
ry(pi/2) q[2];
rx(-pi/4) q[2];
ry(-pi/2) q[2];
ry(pi/2) q[5];
rx(pi/4) q[5];
ry(-pi/2) q[5];
ry(-pi/2) q[2];
cz q[4],q[2];
ry(pi/2) q[2];
ry(-pi/2) q[5];
x q[5];
y q[5];
