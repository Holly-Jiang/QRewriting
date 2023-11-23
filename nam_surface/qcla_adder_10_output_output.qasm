OPENQASM 2.0;
include "qelib1.inc";
qreg q[36];
ry(-pi/2) q[2];
x q[2];
y q[2];
ry(-pi/2) q[5];
x q[5];
y q[5];
ry(-pi/2) q[8];
x q[8];
y q[8];
ry(-pi/2) q[9];
x q[9];
y q[9];
ry(-pi/2) q[12];
x q[12];
y q[12];
ry(-pi/2) q[15];
x q[15];
y q[15];
ry(-pi/2) q[16];
x q[16];
y q[16];
ry(-pi/2) q[19];
x q[19];
y q[19];
ry(-pi/2) q[20];
x q[20];
y q[20];
ry(-pi/2) q[23];
x q[23];
y q[23];
ry(-pi/2) q[24];
x q[24];
y q[24];
ry(-pi/2) q[27];
x q[27];
y q[27];
ry(-pi/2) q[30];
x q[30];
y q[30];
ry(-pi/2) q[31];
x q[31];
y q[31];
ry(-pi/2) q[34];
x q[34];
y q[34];
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
ry(pi/2) q[3];
rx(pi/4) q[3];
ry(-pi/2) q[3];
ry(pi/2) q[4];
rx(pi/4) q[4];
ry(-pi/2) q[4];
ry(-pi/2) q[3];
cz q[5],q[3];
ry(pi/2) q[3];
ry(-pi/2) q[5];
cz q[4],q[5];
ry(pi/2) q[5];
ry(pi/2) q[3];
rx(-pi/4) q[3];
ry(-pi/2) q[3];
ry(pi/2) q[5];
rx(-pi/4) q[5];
ry(-pi/2) q[5];
ry(-pi/2) q[3];
cz q[4],q[3];
ry(pi/2) q[3];
ry(-pi/2) q[5];
cz q[4],q[5];
ry(pi/2) q[5];
ry(pi/2) q[3];
rx(pi/4) q[3];
ry(-pi/2) q[3];
ry(-pi/2) q[3];
cz q[5],q[3];
ry(pi/2) q[3];
ry(pi/2) q[3];
rx(-pi/4) q[3];
ry(-pi/2) q[3];
ry(pi/2) q[5];
rx(pi/4) q[5];
ry(-pi/2) q[5];
ry(-pi/2) q[3];
cz q[4],q[3];
ry(pi/2) q[3];
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
ry(pi/2) q[10];
rx(pi/4) q[10];
ry(-pi/2) q[10];
ry(pi/2) q[11];
rx(pi/4) q[11];
ry(-pi/2) q[11];
ry(-pi/2) q[10];
cz q[12],q[10];
ry(pi/2) q[10];
ry(-pi/2) q[12];
cz q[11],q[12];
ry(pi/2) q[12];
ry(pi/2) q[10];
rx(-pi/4) q[10];
ry(-pi/2) q[10];
ry(pi/2) q[12];
rx(-pi/4) q[12];
ry(-pi/2) q[12];
ry(-pi/2) q[10];
cz q[11],q[10];
ry(pi/2) q[10];
ry(-pi/2) q[12];
cz q[11],q[12];
ry(pi/2) q[12];
ry(pi/2) q[10];
rx(pi/4) q[10];
ry(-pi/2) q[10];
ry(-pi/2) q[10];
cz q[12],q[10];
ry(pi/2) q[10];
ry(pi/2) q[10];
rx(-pi/4) q[10];
ry(-pi/2) q[10];
ry(pi/2) q[12];
rx(pi/4) q[12];
ry(-pi/2) q[12];
ry(-pi/2) q[10];
cz q[11],q[10];
ry(pi/2) q[10];
ry(pi/2) q[13];
rx(pi/4) q[13];
ry(-pi/2) q[13];
ry(pi/2) q[14];
rx(pi/4) q[14];
ry(-pi/2) q[14];
ry(-pi/2) q[13];
cz q[16],q[13];
ry(pi/2) q[13];
ry(-pi/2) q[16];
cz q[14],q[16];
ry(pi/2) q[16];
ry(pi/2) q[13];
rx(-pi/4) q[13];
ry(-pi/2) q[13];
ry(pi/2) q[16];
rx(-pi/4) q[16];
ry(-pi/2) q[16];
ry(-pi/2) q[13];
cz q[14],q[13];
ry(pi/2) q[13];
ry(-pi/2) q[16];
cz q[14],q[16];
ry(pi/2) q[16];
ry(pi/2) q[13];
rx(pi/4) q[13];
ry(-pi/2) q[13];
ry(-pi/2) q[13];
cz q[16],q[13];
ry(pi/2) q[13];
ry(pi/2) q[13];
rx(-pi/4) q[13];
ry(-pi/2) q[13];
ry(pi/2) q[16];
rx(pi/4) q[16];
ry(-pi/2) q[16];
ry(-pi/2) q[13];
cz q[14],q[13];
ry(pi/2) q[13];
ry(pi/2) q[17];
rx(pi/4) q[17];
ry(-pi/2) q[17];
ry(pi/2) q[18];
rx(pi/4) q[18];
ry(-pi/2) q[18];
ry(-pi/2) q[17];
cz q[20],q[17];
ry(pi/2) q[17];
ry(-pi/2) q[20];
cz q[18],q[20];
ry(pi/2) q[20];
ry(pi/2) q[17];
rx(-pi/4) q[17];
ry(-pi/2) q[17];
ry(pi/2) q[20];
rx(-pi/4) q[20];
ry(-pi/2) q[20];
ry(-pi/2) q[17];
cz q[18],q[17];
ry(pi/2) q[17];
ry(-pi/2) q[20];
cz q[18],q[20];
ry(pi/2) q[20];
ry(pi/2) q[17];
rx(pi/4) q[17];
ry(-pi/2) q[17];
ry(-pi/2) q[17];
cz q[20],q[17];
ry(pi/2) q[17];
ry(pi/2) q[17];
rx(-pi/4) q[17];
ry(-pi/2) q[17];
ry(pi/2) q[20];
rx(pi/4) q[20];
ry(-pi/2) q[20];
ry(-pi/2) q[17];
cz q[18],q[17];
ry(pi/2) q[17];
ry(pi/2) q[21];
rx(pi/4) q[21];
ry(-pi/2) q[21];
ry(pi/2) q[22];
rx(pi/4) q[22];
ry(-pi/2) q[22];
ry(-pi/2) q[21];
cz q[24],q[21];
ry(pi/2) q[21];
ry(-pi/2) q[24];
cz q[22],q[24];
ry(pi/2) q[24];
ry(pi/2) q[21];
rx(-pi/4) q[21];
ry(-pi/2) q[21];
ry(pi/2) q[24];
rx(-pi/4) q[24];
ry(-pi/2) q[24];
ry(-pi/2) q[21];
cz q[22],q[21];
ry(pi/2) q[21];
ry(-pi/2) q[24];
cz q[22],q[24];
ry(pi/2) q[24];
ry(pi/2) q[21];
rx(pi/4) q[21];
ry(-pi/2) q[21];
ry(-pi/2) q[21];
cz q[24],q[21];
ry(pi/2) q[21];
ry(pi/2) q[21];
rx(-pi/4) q[21];
ry(-pi/2) q[21];
ry(pi/2) q[24];
rx(pi/4) q[24];
ry(-pi/2) q[24];
ry(-pi/2) q[21];
cz q[22],q[21];
ry(pi/2) q[21];
ry(pi/2) q[25];
rx(pi/4) q[25];
ry(-pi/2) q[25];
ry(pi/2) q[26];
rx(pi/4) q[26];
ry(-pi/2) q[26];
ry(-pi/2) q[25];
cz q[27],q[25];
ry(pi/2) q[25];
ry(-pi/2) q[27];
cz q[26],q[27];
ry(pi/2) q[27];
ry(pi/2) q[25];
rx(-pi/4) q[25];
ry(-pi/2) q[25];
ry(pi/2) q[27];
rx(-pi/4) q[27];
ry(-pi/2) q[27];
ry(-pi/2) q[25];
cz q[26],q[25];
ry(pi/2) q[25];
ry(-pi/2) q[27];
cz q[26],q[27];
ry(pi/2) q[27];
ry(pi/2) q[25];
rx(pi/4) q[25];
ry(-pi/2) q[25];
ry(-pi/2) q[25];
cz q[27],q[25];
ry(pi/2) q[25];
ry(pi/2) q[25];
rx(-pi/4) q[25];
ry(-pi/2) q[25];
ry(pi/2) q[27];
rx(pi/4) q[27];
ry(-pi/2) q[27];
ry(-pi/2) q[25];
cz q[26],q[25];
ry(pi/2) q[25];
ry(pi/2) q[28];
rx(pi/4) q[28];
ry(-pi/2) q[28];
ry(pi/2) q[29];
rx(pi/4) q[29];
ry(-pi/2) q[29];
ry(-pi/2) q[28];
cz q[31],q[28];
ry(pi/2) q[28];
ry(-pi/2) q[31];
cz q[29],q[31];
ry(pi/2) q[31];
ry(pi/2) q[28];
rx(-pi/4) q[28];
ry(-pi/2) q[28];
ry(pi/2) q[31];
rx(-pi/4) q[31];
ry(-pi/2) q[31];
ry(-pi/2) q[28];
cz q[29],q[28];
ry(pi/2) q[28];
ry(-pi/2) q[31];
cz q[29],q[31];
ry(pi/2) q[31];
ry(pi/2) q[28];
rx(pi/4) q[28];
ry(-pi/2) q[28];
ry(-pi/2) q[28];
cz q[31],q[28];
ry(pi/2) q[28];
ry(pi/2) q[28];
rx(-pi/4) q[28];
ry(-pi/2) q[28];
ry(pi/2) q[31];
rx(pi/4) q[31];
ry(-pi/2) q[31];
ry(-pi/2) q[28];
cz q[29],q[28];
ry(pi/2) q[28];
ry(pi/2) q[32];
rx(pi/4) q[32];
ry(-pi/2) q[32];
ry(pi/2) q[33];
rx(pi/4) q[33];
ry(-pi/2) q[33];
ry(-pi/2) q[32];
cz q[34],q[32];
ry(pi/2) q[32];
ry(-pi/2) q[34];
cz q[33],q[34];
ry(pi/2) q[34];
ry(pi/2) q[32];
rx(-pi/4) q[32];
ry(-pi/2) q[32];
ry(pi/2) q[34];
rx(-pi/4) q[34];
ry(-pi/2) q[34];
ry(-pi/2) q[32];
cz q[33],q[32];
ry(pi/2) q[32];
ry(-pi/2) q[34];
cz q[33],q[34];
ry(pi/2) q[34];
ry(pi/2) q[32];
rx(pi/4) q[32];
ry(-pi/2) q[32];
ry(-pi/2) q[32];
cz q[34],q[32];
ry(pi/2) q[32];
ry(pi/2) q[32];
rx(-pi/4) q[32];
ry(-pi/2) q[32];
ry(pi/2) q[34];
rx(pi/4) q[34];
ry(-pi/2) q[34];
ry(-pi/2) q[32];
cz q[33],q[32];
ry(pi/2) q[32];
ry(-pi/2) q[4];
cz q[3],q[4];
ry(pi/2) q[4];
ry(-pi/2) q[7];
cz q[6],q[7];
ry(pi/2) q[7];
ry(-pi/2) q[11];
cz q[10],q[11];
ry(pi/2) q[11];
ry(-pi/2) q[14];
cz q[13],q[14];
ry(pi/2) q[14];
ry(-pi/2) q[18];
cz q[17],q[18];
ry(pi/2) q[18];
ry(-pi/2) q[22];
cz q[21],q[22];
ry(pi/2) q[22];
ry(-pi/2) q[26];
cz q[25],q[26];
ry(pi/2) q[26];
ry(-pi/2) q[29];
cz q[28],q[29];
ry(pi/2) q[29];
ry(-pi/2) q[33];
cz q[32],q[33];
ry(pi/2) q[33];
ry(pi/2) q[7];
rx(pi/4) q[7];
ry(-pi/2) q[7];
ry(pi/2) q[11];
rx(pi/4) q[11];
ry(-pi/2) q[11];
ry(-pi/2) q[7];
cz q[8],q[7];
ry(pi/2) q[7];
ry(-pi/2) q[8];
cz q[11],q[8];
ry(pi/2) q[8];
ry(pi/2) q[7];
rx(-pi/4) q[7];
ry(-pi/2) q[7];
ry(pi/2) q[8];
rx(-pi/4) q[8];
ry(-pi/2) q[8];
ry(-pi/2) q[7];
cz q[11],q[7];
ry(pi/2) q[7];
ry(-pi/2) q[8];
cz q[11],q[8];
ry(pi/2) q[8];
ry(pi/2) q[7];
rx(pi/4) q[7];
ry(-pi/2) q[7];
ry(-pi/2) q[7];
cz q[8],q[7];
ry(pi/2) q[7];
ry(pi/2) q[7];
rx(-pi/4) q[7];
ry(-pi/2) q[7];
ry(pi/2) q[8];
rx(pi/4) q[8];
ry(-pi/2) q[8];
ry(-pi/2) q[7];
cz q[11],q[7];
ry(pi/2) q[7];
ry(pi/2) q[14];
rx(pi/4) q[14];
ry(-pi/2) q[14];
ry(pi/2) q[18];
rx(pi/4) q[18];
ry(-pi/2) q[18];
ry(-pi/2) q[14];
cz q[15],q[14];
ry(pi/2) q[14];
ry(-pi/2) q[15];
cz q[18],q[15];
ry(pi/2) q[15];
ry(pi/2) q[14];
rx(-pi/4) q[14];
ry(-pi/2) q[14];
ry(pi/2) q[15];
rx(-pi/4) q[15];
ry(-pi/2) q[15];
ry(-pi/2) q[14];
cz q[18],q[14];
ry(pi/2) q[14];
ry(-pi/2) q[15];
cz q[18],q[15];
ry(pi/2) q[15];
ry(pi/2) q[14];
rx(pi/4) q[14];
ry(-pi/2) q[14];
ry(-pi/2) q[14];
cz q[15],q[14];
ry(pi/2) q[14];
ry(pi/2) q[14];
rx(-pi/4) q[14];
ry(-pi/2) q[14];
ry(pi/2) q[15];
rx(pi/4) q[15];
ry(-pi/2) q[15];
ry(-pi/2) q[14];
cz q[18],q[14];
ry(pi/2) q[14];
ry(pi/2) q[22];
rx(pi/4) q[22];
ry(-pi/2) q[22];
ry(pi/2) q[26];
rx(pi/4) q[26];
ry(-pi/2) q[26];
ry(-pi/2) q[22];
cz q[23],q[22];
ry(pi/2) q[22];
ry(-pi/2) q[23];
cz q[26],q[23];
ry(pi/2) q[23];
ry(pi/2) q[22];
rx(-pi/4) q[22];
ry(-pi/2) q[22];
ry(pi/2) q[23];
rx(-pi/4) q[23];
ry(-pi/2) q[23];
ry(-pi/2) q[22];
cz q[26],q[22];
ry(pi/2) q[22];
ry(-pi/2) q[23];
cz q[26],q[23];
ry(pi/2) q[23];
ry(pi/2) q[22];
rx(pi/4) q[22];
ry(-pi/2) q[22];
ry(-pi/2) q[22];
cz q[23],q[22];
ry(pi/2) q[22];
ry(pi/2) q[22];
rx(-pi/4) q[22];
ry(-pi/2) q[22];
ry(pi/2) q[23];
rx(pi/4) q[23];
ry(-pi/2) q[23];
ry(-pi/2) q[22];
cz q[26],q[22];
ry(pi/2) q[22];
ry(pi/2) q[29];
rx(pi/4) q[29];
ry(-pi/2) q[29];
ry(pi/2) q[33];
rx(pi/4) q[33];
ry(-pi/2) q[33];
ry(-pi/2) q[29];
cz q[30],q[29];
ry(pi/2) q[29];
ry(-pi/2) q[30];
cz q[33],q[30];
ry(pi/2) q[30];
ry(pi/2) q[29];
rx(-pi/4) q[29];
ry(-pi/2) q[29];
ry(pi/2) q[30];
rx(-pi/4) q[30];
ry(-pi/2) q[30];
ry(-pi/2) q[29];
cz q[33],q[29];
ry(pi/2) q[29];
ry(-pi/2) q[30];
cz q[33],q[30];
ry(pi/2) q[30];
ry(pi/2) q[29];
rx(pi/4) q[29];
ry(-pi/2) q[29];
ry(-pi/2) q[29];
cz q[30],q[29];
ry(pi/2) q[29];
ry(pi/2) q[29];
rx(-pi/4) q[29];
ry(-pi/2) q[29];
ry(pi/2) q[30];
rx(pi/4) q[30];
ry(-pi/2) q[30];
ry(-pi/2) q[29];
cz q[33],q[29];
ry(pi/2) q[29];
ry(-pi/2) q[2];
x q[2];
y q[2];
ry(-pi/2) q[8];
x q[8];
y q[8];
ry(-pi/2) q[9];
x q[9];
y q[9];
ry(-pi/2) q[15];
x q[15];
y q[15];
ry(-pi/2) q[16];
x q[16];
y q[16];
ry(-pi/2) q[23];
x q[23];
y q[23];
ry(-pi/2) q[24];
x q[24];
y q[24];
ry(-pi/2) q[30];
x q[30];
y q[30];
ry(-pi/2) q[31];
x q[31];
y q[31];
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
ry(pi/2) q[9];
rx(pi/4) q[9];
ry(-pi/2) q[9];
ry(pi/2) q[11];
rx(pi/4) q[11];
ry(-pi/2) q[11];
ry(-pi/2) q[9];
cz q[12],q[9];
ry(pi/2) q[9];
ry(-pi/2) q[12];
cz q[11],q[12];
ry(pi/2) q[12];
ry(pi/2) q[9];
rx(-pi/4) q[9];
ry(-pi/2) q[9];
ry(pi/2) q[12];
rx(-pi/4) q[12];
ry(-pi/2) q[12];
ry(-pi/2) q[9];
cz q[11],q[9];
ry(pi/2) q[9];
ry(-pi/2) q[12];
cz q[11],q[12];
ry(pi/2) q[12];
ry(pi/2) q[9];
rx(pi/4) q[9];
ry(-pi/2) q[9];
ry(-pi/2) q[9];
cz q[12],q[9];
ry(pi/2) q[9];
ry(pi/2) q[9];
rx(-pi/4) q[9];
ry(-pi/2) q[9];
ry(pi/2) q[12];
rx(pi/4) q[12];
ry(-pi/2) q[12];
ry(-pi/2) q[9];
cz q[11],q[9];
ry(pi/2) q[9];
ry(pi/2) q[16];
rx(pi/4) q[16];
ry(-pi/2) q[16];
ry(pi/2) q[18];
rx(pi/4) q[18];
ry(-pi/2) q[18];
ry(-pi/2) q[16];
cz q[20],q[16];
ry(pi/2) q[16];
ry(-pi/2) q[20];
cz q[18],q[20];
ry(pi/2) q[20];
ry(pi/2) q[16];
rx(-pi/4) q[16];
ry(-pi/2) q[16];
ry(pi/2) q[20];
rx(-pi/4) q[20];
ry(-pi/2) q[20];
ry(-pi/2) q[16];
cz q[18],q[16];
ry(pi/2) q[16];
ry(-pi/2) q[20];
cz q[18],q[20];
ry(pi/2) q[20];
ry(pi/2) q[16];
rx(pi/4) q[16];
ry(-pi/2) q[16];
ry(-pi/2) q[16];
cz q[20],q[16];
ry(pi/2) q[16];
ry(pi/2) q[16];
rx(-pi/4) q[16];
ry(-pi/2) q[16];
ry(pi/2) q[20];
rx(pi/4) q[20];
ry(-pi/2) q[20];
ry(-pi/2) q[16];
cz q[18],q[16];
ry(pi/2) q[16];
ry(pi/2) q[24];
rx(pi/4) q[24];
ry(-pi/2) q[24];
ry(pi/2) q[26];
rx(pi/4) q[26];
ry(-pi/2) q[26];
ry(-pi/2) q[24];
cz q[27],q[24];
ry(pi/2) q[24];
ry(-pi/2) q[27];
cz q[26],q[27];
ry(pi/2) q[27];
ry(pi/2) q[24];
rx(-pi/4) q[24];
ry(-pi/2) q[24];
ry(pi/2) q[27];
rx(-pi/4) q[27];
ry(-pi/2) q[27];
ry(-pi/2) q[24];
cz q[26],q[24];
ry(pi/2) q[24];
ry(-pi/2) q[27];
cz q[26],q[27];
ry(pi/2) q[27];
ry(pi/2) q[24];
rx(pi/4) q[24];
ry(-pi/2) q[24];
ry(-pi/2) q[24];
cz q[27],q[24];
ry(pi/2) q[24];
ry(pi/2) q[24];
rx(-pi/4) q[24];
ry(-pi/2) q[24];
ry(pi/2) q[27];
rx(pi/4) q[27];
ry(-pi/2) q[27];
ry(-pi/2) q[24];
cz q[26],q[24];
ry(pi/2) q[24];
ry(pi/2) q[31];
rx(pi/4) q[31];
ry(-pi/2) q[31];
ry(pi/2) q[33];
rx(pi/4) q[33];
ry(-pi/2) q[33];
ry(-pi/2) q[31];
cz q[34],q[31];
ry(pi/2) q[31];
ry(-pi/2) q[34];
cz q[33],q[34];
ry(pi/2) q[34];
ry(pi/2) q[31];
rx(-pi/4) q[31];
ry(-pi/2) q[31];
ry(pi/2) q[34];
rx(-pi/4) q[34];
ry(-pi/2) q[34];
ry(-pi/2) q[31];
cz q[33],q[31];
ry(pi/2) q[31];
ry(-pi/2) q[34];
cz q[33],q[34];
ry(pi/2) q[34];
ry(pi/2) q[31];
rx(pi/4) q[31];
ry(-pi/2) q[31];
ry(-pi/2) q[31];
cz q[34],q[31];
ry(pi/2) q[31];
ry(pi/2) q[31];
rx(-pi/4) q[31];
ry(-pi/2) q[31];
ry(pi/2) q[34];
rx(pi/4) q[34];
ry(-pi/2) q[34];
ry(-pi/2) q[31];
cz q[33],q[31];
ry(pi/2) q[31];
ry(pi/2) q[15];
rx(pi/4) q[15];
ry(-pi/2) q[15];
ry(pi/2) q[23];
rx(pi/4) q[23];
ry(-pi/2) q[23];
ry(-pi/2) q[15];
cz q[19],q[15];
ry(pi/2) q[15];
ry(-pi/2) q[19];
cz q[23],q[19];
ry(pi/2) q[19];
ry(pi/2) q[15];
rx(-pi/4) q[15];
ry(-pi/2) q[15];
ry(pi/2) q[19];
rx(-pi/4) q[19];
ry(-pi/2) q[19];
ry(-pi/2) q[15];
cz q[23],q[15];
ry(pi/2) q[15];
ry(-pi/2) q[19];
cz q[23],q[19];
ry(pi/2) q[19];
ry(pi/2) q[15];
rx(pi/4) q[15];
ry(-pi/2) q[15];
ry(-pi/2) q[15];
cz q[19],q[15];
ry(pi/2) q[15];
ry(pi/2) q[15];
rx(-pi/4) q[15];
ry(-pi/2) q[15];
ry(pi/2) q[19];
rx(pi/4) q[19];
ry(-pi/2) q[19];
ry(-pi/2) q[15];
cz q[23],q[15];
ry(pi/2) q[15];
ry(-pi/2) q[5];
x q[5];
y q[5];
ry(-pi/2) q[19];
x q[19];
y q[19];
ry(-pi/2) q[20];
x q[20];
y q[20];
ry(pi/2) q[5];
rx(pi/4) q[5];
ry(-pi/2) q[5];
ry(pi/2) q[8];
rx(pi/4) q[8];
ry(-pi/2) q[8];
ry(-pi/2) q[5];
cz q[12],q[5];
ry(pi/2) q[5];
ry(-pi/2) q[12];
cz q[8],q[12];
ry(pi/2) q[12];
ry(pi/2) q[5];
rx(-pi/4) q[5];
ry(-pi/2) q[5];
ry(pi/2) q[12];
rx(-pi/4) q[12];
ry(-pi/2) q[12];
ry(-pi/2) q[5];
cz q[8],q[5];
ry(pi/2) q[5];
ry(-pi/2) q[12];
cz q[8],q[12];
ry(pi/2) q[12];
ry(pi/2) q[5];
rx(pi/4) q[5];
ry(-pi/2) q[5];
ry(-pi/2) q[5];
cz q[12],q[5];
ry(pi/2) q[5];
ry(pi/2) q[5];
rx(-pi/4) q[5];
ry(-pi/2) q[5];
ry(pi/2) q[12];
rx(pi/4) q[12];
ry(-pi/2) q[12];
ry(-pi/2) q[5];
cz q[8],q[5];
ry(pi/2) q[5];
ry(pi/2) q[20];
rx(pi/4) q[20];
ry(-pi/2) q[20];
ry(pi/2) q[23];
rx(pi/4) q[23];
ry(-pi/2) q[23];
ry(-pi/2) q[20];
cz q[27],q[20];
ry(pi/2) q[20];
ry(-pi/2) q[27];
cz q[23],q[27];
ry(pi/2) q[27];
ry(pi/2) q[20];
rx(-pi/4) q[20];
ry(-pi/2) q[20];
ry(pi/2) q[27];
rx(-pi/4) q[27];
ry(-pi/2) q[27];
ry(-pi/2) q[20];
cz q[23],q[20];
ry(pi/2) q[20];
ry(-pi/2) q[27];
cz q[23],q[27];
ry(pi/2) q[27];
ry(pi/2) q[20];
rx(pi/4) q[20];
ry(-pi/2) q[20];
ry(-pi/2) q[20];
cz q[27],q[20];
ry(pi/2) q[20];
ry(pi/2) q[20];
rx(-pi/4) q[20];
ry(-pi/2) q[20];
ry(pi/2) q[27];
rx(pi/4) q[27];
ry(-pi/2) q[27];
ry(-pi/2) q[20];
cz q[23],q[20];
ry(pi/2) q[20];
ry(-pi/2) q[12];
x q[12];
y q[12];
ry(-pi/2) q[20];
x q[20];
y q[20];
ry(pi/2) q[12];
rx(pi/4) q[12];
ry(-pi/2) q[12];
ry(pi/2) q[19];
rx(pi/4) q[19];
ry(-pi/2) q[19];
ry(-pi/2) q[12];
cz q[27],q[12];
ry(pi/2) q[12];
ry(-pi/2) q[27];
cz q[19],q[27];
ry(pi/2) q[27];
ry(pi/2) q[12];
rx(-pi/4) q[12];
ry(-pi/2) q[12];
ry(pi/2) q[27];
rx(-pi/4) q[27];
ry(-pi/2) q[27];
ry(-pi/2) q[12];
cz q[19],q[12];
ry(pi/2) q[12];
ry(-pi/2) q[27];
cz q[19],q[27];
ry(pi/2) q[27];
ry(pi/2) q[12];
rx(pi/4) q[12];
ry(-pi/2) q[12];
ry(-pi/2) q[12];
cz q[27],q[12];
ry(pi/2) q[12];
ry(pi/2) q[12];
rx(-pi/4) q[12];
ry(-pi/2) q[12];
ry(pi/2) q[27];
rx(pi/4) q[27];
ry(-pi/2) q[27];
ry(-pi/2) q[12];
cz q[19],q[12];
ry(pi/2) q[12];
ry(pi/2) q[12];
rx(pi/4) q[12];
ry(-pi/2) q[12];
ry(pi/2) q[15];
rx(pi/4) q[15];
ry(-pi/2) q[15];
ry(-pi/2) q[12];
cz q[20],q[12];
ry(pi/2) q[12];
ry(-pi/2) q[20];
cz q[15],q[20];
ry(pi/2) q[20];
ry(pi/2) q[12];
rx(-pi/4) q[12];
ry(-pi/2) q[12];
ry(pi/2) q[20];
rx(-pi/4) q[20];
ry(-pi/2) q[20];
ry(-pi/2) q[12];
cz q[15],q[12];
ry(pi/2) q[12];
ry(-pi/2) q[20];
cz q[15],q[20];
ry(pi/2) q[20];
ry(pi/2) q[12];
rx(pi/4) q[12];
ry(-pi/2) q[12];
ry(-pi/2) q[12];
cz q[20],q[12];
ry(pi/2) q[12];
ry(pi/2) q[12];
rx(-pi/4) q[12];
ry(-pi/2) q[12];
ry(pi/2) q[20];
rx(pi/4) q[20];
ry(-pi/2) q[20];
ry(-pi/2) q[12];
cz q[15],q[12];
ry(pi/2) q[12];
ry(-pi/2) q[27];
x q[27];
y q[27];
ry(-pi/2) q[20];
x q[20];
y q[20];
ry(-pi/2) q[9];
x q[9];
y q[9];
ry(-pi/2) q[16];
x q[16];
y q[16];
ry(-pi/2) q[24];
x q[24];
y q[24];
ry(-pi/2) q[31];
x q[31];
y q[31];
ry(-pi/2) q[19];
x q[19];
y q[19];
ry(pi/2) q[5];
rx(pi/4) q[5];
ry(-pi/2) q[5];
ry(pi/2) q[7];
rx(pi/4) q[7];
ry(-pi/2) q[7];
ry(-pi/2) q[5];
cz q[9],q[5];
ry(pi/2) q[5];
ry(-pi/2) q[9];
cz q[7],q[9];
ry(pi/2) q[9];
ry(pi/2) q[5];
rx(-pi/4) q[5];
ry(-pi/2) q[5];
ry(pi/2) q[9];
rx(-pi/4) q[9];
ry(-pi/2) q[9];
ry(-pi/2) q[5];
cz q[7],q[5];
ry(pi/2) q[5];
ry(-pi/2) q[9];
cz q[7],q[9];
ry(pi/2) q[9];
ry(pi/2) q[5];
rx(pi/4) q[5];
ry(-pi/2) q[5];
ry(-pi/2) q[5];
cz q[9],q[5];
ry(pi/2) q[5];
ry(pi/2) q[5];
rx(-pi/4) q[5];
ry(-pi/2) q[5];
ry(pi/2) q[9];
rx(pi/4) q[9];
ry(-pi/2) q[9];
ry(-pi/2) q[5];
cz q[7],q[5];
ry(pi/2) q[5];
ry(pi/2) q[12];
rx(pi/4) q[12];
ry(-pi/2) q[12];
ry(pi/2) q[14];
rx(pi/4) q[14];
ry(-pi/2) q[14];
ry(-pi/2) q[12];
cz q[16],q[12];
ry(pi/2) q[12];
ry(-pi/2) q[16];
cz q[14],q[16];
ry(pi/2) q[16];
ry(pi/2) q[12];
rx(-pi/4) q[12];
ry(-pi/2) q[12];
ry(pi/2) q[16];
rx(-pi/4) q[16];
ry(-pi/2) q[16];
ry(-pi/2) q[12];
cz q[14],q[12];
ry(pi/2) q[12];
ry(-pi/2) q[16];
cz q[14],q[16];
ry(pi/2) q[16];
ry(pi/2) q[12];
rx(pi/4) q[12];
ry(-pi/2) q[12];
ry(-pi/2) q[12];
cz q[16],q[12];
ry(pi/2) q[12];
ry(pi/2) q[12];
rx(-pi/4) q[12];
ry(-pi/2) q[12];
ry(pi/2) q[16];
rx(pi/4) q[16];
ry(-pi/2) q[16];
ry(-pi/2) q[12];
cz q[14],q[12];
ry(pi/2) q[12];
ry(pi/2) q[20];
rx(pi/4) q[20];
ry(-pi/2) q[20];
ry(pi/2) q[22];
rx(pi/4) q[22];
ry(-pi/2) q[22];
ry(-pi/2) q[20];
cz q[24],q[20];
ry(pi/2) q[20];
ry(-pi/2) q[24];
cz q[22],q[24];
ry(pi/2) q[24];
ry(pi/2) q[20];
rx(-pi/4) q[20];
ry(-pi/2) q[20];
ry(pi/2) q[24];
rx(-pi/4) q[24];
ry(-pi/2) q[24];
ry(-pi/2) q[20];
cz q[22],q[20];
ry(pi/2) q[20];
ry(-pi/2) q[24];
cz q[22],q[24];
ry(pi/2) q[24];
ry(pi/2) q[20];
rx(pi/4) q[20];
ry(-pi/2) q[20];
ry(-pi/2) q[20];
cz q[24],q[20];
ry(pi/2) q[20];
ry(pi/2) q[20];
rx(-pi/4) q[20];
ry(-pi/2) q[20];
ry(pi/2) q[24];
rx(pi/4) q[24];
ry(-pi/2) q[24];
ry(-pi/2) q[20];
cz q[22],q[20];
ry(pi/2) q[20];
ry(pi/2) q[27];
rx(pi/4) q[27];
ry(-pi/2) q[27];
ry(pi/2) q[29];
rx(pi/4) q[29];
ry(-pi/2) q[29];
ry(-pi/2) q[27];
cz q[31],q[27];
ry(pi/2) q[27];
ry(-pi/2) q[31];
cz q[29],q[31];
ry(pi/2) q[31];
ry(pi/2) q[27];
rx(-pi/4) q[27];
ry(-pi/2) q[27];
ry(pi/2) q[31];
rx(-pi/4) q[31];
ry(-pi/2) q[31];
ry(-pi/2) q[27];
cz q[29],q[27];
ry(pi/2) q[27];
ry(-pi/2) q[31];
cz q[29],q[31];
ry(pi/2) q[31];
ry(pi/2) q[27];
rx(pi/4) q[27];
ry(-pi/2) q[27];
ry(-pi/2) q[27];
cz q[31],q[27];
ry(pi/2) q[27];
ry(pi/2) q[27];
rx(-pi/4) q[27];
ry(-pi/2) q[27];
ry(pi/2) q[31];
rx(pi/4) q[31];
ry(-pi/2) q[31];
ry(-pi/2) q[27];
cz q[29],q[27];
ry(pi/2) q[27];
ry(pi/2) q[27];
rx(pi/4) q[27];
ry(-pi/2) q[27];
ry(pi/2) q[30];
rx(pi/4) q[30];
ry(-pi/2) q[30];
ry(-pi/2) q[27];
cz q[34],q[27];
ry(pi/2) q[27];
ry(-pi/2) q[34];
cz q[30],q[34];
ry(pi/2) q[34];
ry(pi/2) q[27];
rx(-pi/4) q[27];
ry(-pi/2) q[27];
ry(pi/2) q[34];
rx(-pi/4) q[34];
ry(-pi/2) q[34];
ry(-pi/2) q[27];
cz q[30],q[27];
ry(pi/2) q[27];
ry(-pi/2) q[34];
cz q[30],q[34];
ry(pi/2) q[34];
ry(pi/2) q[27];
rx(pi/4) q[27];
ry(-pi/2) q[27];
ry(-pi/2) q[27];
cz q[34],q[27];
ry(pi/2) q[27];
ry(pi/2) q[27];
rx(-pi/4) q[27];
ry(-pi/2) q[27];
ry(pi/2) q[34];
rx(pi/4) q[34];
ry(-pi/2) q[34];
ry(-pi/2) q[27];
cz q[30],q[27];
ry(pi/2) q[27];
ry(pi/2) q[15];
rx(pi/4) q[15];
ry(-pi/2) q[15];
ry(pi/2) q[23];
rx(pi/4) q[23];
ry(-pi/2) q[23];
ry(-pi/2) q[15];
cz q[19],q[15];
ry(pi/2) q[15];
ry(-pi/2) q[19];
cz q[23],q[19];
ry(pi/2) q[19];
ry(pi/2) q[15];
rx(-pi/4) q[15];
ry(-pi/2) q[15];
ry(pi/2) q[19];
rx(-pi/4) q[19];
ry(-pi/2) q[19];
ry(-pi/2) q[15];
cz q[23],q[15];
ry(pi/2) q[15];
ry(-pi/2) q[19];
cz q[23],q[19];
ry(pi/2) q[19];
ry(pi/2) q[15];
rx(pi/4) q[15];
ry(-pi/2) q[15];
ry(-pi/2) q[15];
cz q[19],q[15];
ry(pi/2) q[15];
ry(pi/2) q[15];
rx(-pi/4) q[15];
ry(-pi/2) q[15];
ry(pi/2) q[19];
rx(pi/4) q[19];
ry(-pi/2) q[19];
ry(-pi/2) q[15];
cz q[23],q[15];
ry(pi/2) q[15];
ry(-pi/2) q[9];
x q[9];
y q[9];
ry(-pi/2) q[16];
x q[16];
y q[16];
ry(-pi/2) q[24];
x q[24];
y q[24];
ry(-pi/2) q[31];
x q[31];
y q[31];
ry(-pi/2) q[34];
x q[34];
y q[34];
ry(-pi/2) q[19];
x q[19];
y q[19];
ry(-pi/2) q[8];
x q[8];
y q[8];
ry(-pi/2) q[15];
x q[15];
y q[15];
ry(-pi/2) q[23];
x q[23];
y q[23];
ry(-pi/2) q[30];
x q[30];
y q[30];
ry(pi/2) q[7];
rx(pi/4) q[7];
ry(-pi/2) q[7];
ry(pi/2) q[11];
rx(pi/4) q[11];
ry(-pi/2) q[11];
ry(-pi/2) q[7];
cz q[8],q[7];
ry(pi/2) q[7];
ry(-pi/2) q[8];
cz q[11],q[8];
ry(pi/2) q[8];
ry(pi/2) q[7];
rx(-pi/4) q[7];
ry(-pi/2) q[7];
ry(pi/2) q[8];
rx(-pi/4) q[8];
ry(-pi/2) q[8];
ry(-pi/2) q[7];
cz q[11],q[7];
ry(pi/2) q[7];
ry(-pi/2) q[8];
cz q[11],q[8];
ry(pi/2) q[8];
ry(pi/2) q[7];
rx(pi/4) q[7];
ry(-pi/2) q[7];
ry(-pi/2) q[7];
cz q[8],q[7];
ry(pi/2) q[7];
ry(pi/2) q[7];
rx(-pi/4) q[7];
ry(-pi/2) q[7];
ry(pi/2) q[8];
rx(pi/4) q[8];
ry(-pi/2) q[8];
ry(-pi/2) q[7];
cz q[11],q[7];
ry(pi/2) q[7];
ry(pi/2) q[14];
rx(pi/4) q[14];
ry(-pi/2) q[14];
ry(pi/2) q[18];
rx(pi/4) q[18];
ry(-pi/2) q[18];
ry(-pi/2) q[14];
cz q[15],q[14];
ry(pi/2) q[14];
ry(-pi/2) q[15];
cz q[18],q[15];
ry(pi/2) q[15];
ry(pi/2) q[14];
rx(-pi/4) q[14];
ry(-pi/2) q[14];
ry(pi/2) q[15];
rx(-pi/4) q[15];
ry(-pi/2) q[15];
ry(-pi/2) q[14];
cz q[18],q[14];
ry(pi/2) q[14];
ry(-pi/2) q[15];
cz q[18],q[15];
ry(pi/2) q[15];
ry(pi/2) q[14];
rx(pi/4) q[14];
ry(-pi/2) q[14];
ry(-pi/2) q[14];
cz q[15],q[14];
ry(pi/2) q[14];
ry(pi/2) q[14];
rx(-pi/4) q[14];
ry(-pi/2) q[14];
ry(pi/2) q[15];
rx(pi/4) q[15];
ry(-pi/2) q[15];
ry(-pi/2) q[14];
cz q[18],q[14];
ry(pi/2) q[14];
ry(pi/2) q[22];
rx(pi/4) q[22];
ry(-pi/2) q[22];
ry(pi/2) q[26];
rx(pi/4) q[26];
ry(-pi/2) q[26];
ry(-pi/2) q[22];
cz q[23],q[22];
ry(pi/2) q[22];
ry(-pi/2) q[23];
cz q[26],q[23];
ry(pi/2) q[23];
ry(pi/2) q[22];
rx(-pi/4) q[22];
ry(-pi/2) q[22];
ry(pi/2) q[23];
rx(-pi/4) q[23];
ry(-pi/2) q[23];
ry(-pi/2) q[22];
cz q[26],q[22];
ry(pi/2) q[22];
ry(-pi/2) q[23];
cz q[26],q[23];
ry(pi/2) q[23];
ry(pi/2) q[22];
rx(pi/4) q[22];
ry(-pi/2) q[22];
ry(-pi/2) q[22];
cz q[23],q[22];
ry(pi/2) q[22];
ry(pi/2) q[22];
rx(-pi/4) q[22];
ry(-pi/2) q[22];
ry(pi/2) q[23];
rx(pi/4) q[23];
ry(-pi/2) q[23];
ry(-pi/2) q[22];
cz q[26],q[22];
ry(pi/2) q[22];
ry(pi/2) q[29];
rx(pi/4) q[29];
ry(-pi/2) q[29];
ry(pi/2) q[33];
rx(pi/4) q[33];
ry(-pi/2) q[33];
ry(-pi/2) q[29];
cz q[30],q[29];
ry(pi/2) q[29];
ry(-pi/2) q[30];
cz q[33],q[30];
ry(pi/2) q[30];
ry(pi/2) q[29];
rx(-pi/4) q[29];
ry(-pi/2) q[29];
ry(pi/2) q[30];
rx(-pi/4) q[30];
ry(-pi/2) q[30];
ry(-pi/2) q[29];
cz q[33],q[29];
ry(pi/2) q[29];
ry(-pi/2) q[30];
cz q[33],q[30];
ry(pi/2) q[30];
ry(pi/2) q[29];
rx(pi/4) q[29];
ry(-pi/2) q[29];
ry(-pi/2) q[29];
cz q[30],q[29];
ry(pi/2) q[29];
ry(pi/2) q[29];
rx(-pi/4) q[29];
ry(-pi/2) q[29];
ry(pi/2) q[30];
rx(pi/4) q[30];
ry(-pi/2) q[30];
ry(-pi/2) q[29];
cz q[33],q[29];
ry(pi/2) q[29];
ry(-pi/2) q[35];
cz q[1],q[35];
ry(pi/2) q[35];
ry(-pi/2) q[2];
cz q[4],q[2];
ry(pi/2) q[2];
ry(-pi/2) q[5];
cz q[7],q[5];
ry(pi/2) q[5];
ry(-pi/2) q[9];
cz q[11],q[9];
ry(pi/2) q[9];
ry(-pi/2) q[12];
cz q[14],q[12];
ry(pi/2) q[12];
ry(-pi/2) q[16];
cz q[18],q[16];
ry(pi/2) q[16];
ry(-pi/2) q[20];
cz q[22],q[20];
ry(pi/2) q[20];
ry(-pi/2) q[24];
cz q[26],q[24];
ry(pi/2) q[24];
ry(-pi/2) q[27];
cz q[29],q[27];
ry(pi/2) q[27];
ry(-pi/2) q[30];
cz q[33],q[30];
ry(pi/2) q[30];
ry(-pi/2) q[35];
cz q[0],q[35];
ry(pi/2) q[35];
ry(-pi/2) q[4];
cz q[3],q[4];
ry(pi/2) q[4];
ry(-pi/2) q[7];
cz q[6],q[7];
ry(pi/2) q[7];
ry(-pi/2) q[11];
cz q[10],q[11];
ry(pi/2) q[11];
ry(-pi/2) q[14];
cz q[13],q[14];
ry(pi/2) q[14];
ry(-pi/2) q[18];
cz q[17],q[18];
ry(pi/2) q[18];
ry(-pi/2) q[22];
cz q[21],q[22];
ry(pi/2) q[22];
ry(-pi/2) q[26];
cz q[25],q[26];
ry(pi/2) q[26];
ry(-pi/2) q[29];
cz q[28],q[29];
ry(pi/2) q[29];
ry(-pi/2) q[33];
cz q[32],q[33];
ry(pi/2) q[33];
ry(-pi/2) q[8];
x q[8];
y q[8];
ry(-pi/2) q[15];
x q[15];
y q[15];
ry(-pi/2) q[23];
x q[23];
y q[23];
ry(-pi/2) q[30];
x q[30];
y q[30];