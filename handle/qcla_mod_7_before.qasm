OPENQASM 2.0;
include "qelib1.inc";
qreg q[26];
h q[0];
h q[3];
h q[4];
h q[7];
h q[8];
h q[11];
h q[12];
h q[15];
h q[18];
h q[19];
h q[22];
h q[23];
ccz q[1],q[2],q[4];
ccz q[5],q[6],q[8];
ccz q[9],q[10],q[12];
ccz q[13],q[14],q[15];
ccz q[16],q[17],q[19];
ccz q[20],q[21],q[23];
ccz q[24],q[25],q[0];
cx q[1],q[2];
cx q[5],q[6];
cx q[9],q[10];
cx q[13],q[14];
cx q[16],q[17];
cx q[20],q[21];
cx q[24],q[25];
ccz q[2],q[6],q[3];
ccz q[10],q[14],q[11];
ccz q[17],q[21],q[18];
h q[3];
h q[4];
h q[11];
h q[12];
h q[18];
h q[19];
ccz q[3],q[11],q[7];
ccz q[18],q[25],q[22];
ccz q[4],q[6],q[8];
ccz q[12],q[14],q[15];
ccz q[19],q[21],q[23];
h q[7];
h q[8];
h q[22];
h q[23];
ccz q[8],q[11],q[15];
h q[15];
ccz q[7],q[22],q[0];
ccz q[25],q[23],q[0];
ccz q[22],q[15],q[0];
h q[0];
h q[15];
ccz q[0],q[7],q[15];
h q[15];
h q[8];
h q[7];
h q[4];
h q[19];
h q[22];
h q[23];
ccz q[0],q[3],q[8];
ccz q[0],q[2],q[4];
ccz q[3],q[11],q[7];
ccz q[15],q[18],q[23];
ccz q[15],q[17],q[19];
ccz q[18],q[25],q[22];
h q[4];
h q[8];
h q[19];
h q[23];
h q[3];
h q[11];
h q[12];
h q[18];
ccz q[2],q[6],q[3];
ccz q[10],q[14],q[11];
ccz q[8],q[10],q[12];
ccz q[17],q[21],q[18];
h q[12];
cx q[0],q[2];
cx q[4],q[6];
cx q[8],q[10];
cx q[12],q[14];
cx q[15],q[17];
cx q[19],q[21];
cx q[23],q[25];
x q[2];
x q[6];
x q[10];
x q[14];
x q[17];
x q[21];
x q[25];
cx q[1],q[2];
cx q[5],q[6];
cx q[9],q[10];
cx q[13],q[14];
cx q[16],q[17];
cx q[20],q[21];
cx q[24],q[25];
h q[12];
ccz q[2],q[6],q[3];
ccz q[10],q[14],q[11];
ccz q[8],q[10],q[12];
ccz q[17],q[21],q[18];
h q[3];
h q[11];
h q[12];
h q[18];
h q[4];
h q[8];
h q[19];
h q[23];
ccz q[0],q[3],q[8];
ccz q[0],q[2],q[4];
ccz q[3],q[11],q[7];
ccz q[15],q[18],q[23];
ccz q[15],q[17],q[19];
ccz q[18],q[25],q[22];
h q[8];
h q[7];
h q[4];
h q[19];
h q[22];
h q[23];
h q[15];
ccz q[0],q[7],q[15];
h q[0];
h q[15];
ccz q[25],q[23],q[0];
ccz q[22],q[15],q[0];
h q[15];
ccz q[8],q[11],q[15];
h q[7];
h q[8];
h q[22];
h q[23];
ccz q[3],q[11],q[7];
ccz q[18],q[25],q[22];
ccz q[4],q[6],q[8];
ccz q[12],q[14],q[15];
ccz q[19],q[21],q[23];
h q[3];
h q[4];
h q[11];
h q[12];
h q[18];
h q[19];
ccz q[2],q[6],q[3];
ccz q[10],q[14],q[11];
ccz q[17],q[21],q[18];
cx q[1],q[2];
cx q[5],q[6];
cx q[9],q[10];
cx q[13],q[14];
cx q[16],q[17];
cx q[20],q[21];
cx q[24],q[25];
ccz q[1],q[2],q[4];
ccz q[5],q[6],q[8];
ccz q[9],q[10],q[12];
ccz q[13],q[14],q[15];
ccz q[16],q[17],q[19];
ccz q[20],q[21],q[23];
ccz q[24],q[25],q[0];
h q[0];
h q[3];
h q[4];
h q[7];
h q[8];
h q[11];
h q[12];
h q[15];
h q[18];
h q[19];
h q[22];
h q[23];
