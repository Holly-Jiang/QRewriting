OPENQASM 2.0;
include "qelib1.inc";
qreg q[30];
h q[20];
t q[9];
t q[11];
cx q[20],q[9];
cx q[11],q[20];
tdg q[9];
tdg q[20];
cx q[11],q[9];
cx q[11],q[20];
t q[9];
cx q[20],q[9];
tdg q[9];
t q[20];
cx q[11],q[9];
h q[20];
h q[20];
t q[8];
t q[12];
cx q[20],q[8];
cx q[12],q[20];
tdg q[8];
tdg q[20];
cx q[12],q[8];
cx q[12],q[20];
t q[8];
cx q[20],q[8];
tdg q[8];
t q[20];
cx q[12],q[8];
h q[20];
h q[20];
t q[7];
t q[13];
cx q[20],q[7];
cx q[13],q[20];
tdg q[7];
tdg q[20];
cx q[13],q[7];
cx q[13],q[20];
t q[7];
cx q[20],q[7];
tdg q[7];
t q[20];
cx q[13],q[7];
h q[20];
h q[20];
t q[6];
t q[14];
cx q[20],q[6];
cx q[14],q[20];
tdg q[6];
tdg q[20];
cx q[14],q[6];
cx q[14],q[20];
t q[6];
cx q[20],q[6];
tdg q[6];
t q[20];
cx q[14],q[6];
h q[20];
h q[20];
t q[5];
t q[15];
cx q[20],q[5];
cx q[15],q[20];
tdg q[5];
tdg q[20];
cx q[15],q[5];
cx q[15],q[20];
t q[5];
cx q[20],q[5];
tdg q[5];
t q[20];
cx q[15],q[5];
h q[20];
h q[20];
t q[4];
t q[16];
cx q[20],q[4];
cx q[16],q[20];
tdg q[4];
tdg q[20];
cx q[16],q[4];
cx q[16],q[20];
t q[4];
cx q[20],q[4];
tdg q[4];
t q[20];
cx q[16],q[4];
h q[20];
h q[20];
t q[3];
t q[17];
cx q[20],q[3];
cx q[17],q[20];
tdg q[3];
tdg q[20];
cx q[17],q[3];
cx q[17],q[20];
t q[3];
cx q[20],q[3];
tdg q[3];
t q[20];
cx q[17],q[3];
h q[20];
h q[20];
t q[2];
t q[18];
cx q[20],q[2];
cx q[18],q[20];
tdg q[2];
tdg q[20];
cx q[18],q[2];
cx q[18],q[20];
t q[2];
cx q[20],q[2];
tdg q[2];
t q[20];
cx q[18],q[2];
h q[20];
h q[20];
t q[1];
t q[19];
cx q[20],q[1];
cx q[19],q[20];
tdg q[1];
tdg q[20];
cx q[19],q[1];
cx q[19],q[20];
t q[1];
cx q[20],q[1];
tdg q[1];
t q[20];
cx q[19],q[1];
h q[20];
h q[21];
t q[9];
t q[12];
cx q[21],q[9];
cx q[12],q[21];
tdg q[9];
tdg q[21];
cx q[12],q[9];
cx q[12],q[21];
t q[9];
cx q[21],q[9];
tdg q[9];
t q[21];
cx q[12],q[9];
h q[21];
h q[21];
t q[8];
t q[13];
cx q[21],q[8];
cx q[13],q[21];
tdg q[8];
tdg q[21];
cx q[13],q[8];
cx q[13],q[21];
t q[8];
cx q[21],q[8];
tdg q[8];
t q[21];
cx q[13],q[8];
h q[21];
h q[21];
t q[7];
t q[14];
cx q[21],q[7];
cx q[14],q[21];
tdg q[7];
tdg q[21];
cx q[14],q[7];
cx q[14],q[21];
t q[7];
cx q[21],q[7];
tdg q[7];
t q[21];
cx q[14],q[7];
h q[21];
h q[21];
t q[6];
t q[15];
cx q[21],q[6];
cx q[15],q[21];
tdg q[6];
tdg q[21];
cx q[15],q[6];
cx q[15],q[21];
t q[6];
cx q[21],q[6];
tdg q[6];
t q[21];
cx q[15],q[6];
h q[21];
h q[21];
t q[5];
t q[16];
cx q[21],q[5];
cx q[16],q[21];
tdg q[5];
tdg q[21];
cx q[16],q[5];
cx q[16],q[21];
t q[5];
cx q[21],q[5];
tdg q[5];
t q[21];
cx q[16],q[5];
h q[21];
h q[21];
t q[4];
t q[17];
cx q[21],q[4];
cx q[17],q[21];
tdg q[4];
tdg q[21];
cx q[17],q[4];
cx q[17],q[21];
t q[4];
cx q[21],q[4];
tdg q[4];
t q[21];
cx q[17],q[4];
h q[21];
h q[21];
t q[3];
t q[18];
cx q[21],q[3];
cx q[18],q[21];
tdg q[3];
tdg q[21];
cx q[18],q[3];
cx q[18],q[21];
t q[3];
cx q[21],q[3];
tdg q[3];
t q[21];
cx q[18],q[3];
h q[21];
h q[21];
t q[2];
t q[19];
cx q[21],q[2];
cx q[19],q[21];
tdg q[2];
tdg q[21];
cx q[19],q[2];
cx q[19],q[21];
t q[2];
cx q[21],q[2];
tdg q[2];
t q[21];
cx q[19],q[2];
h q[21];
h q[22];
t q[9];
t q[13];
cx q[22],q[9];
cx q[13],q[22];
tdg q[9];
tdg q[22];
cx q[13],q[9];
cx q[13],q[22];
t q[9];
cx q[22],q[9];
tdg q[9];
t q[22];
cx q[13],q[9];
h q[22];
h q[22];
t q[8];
t q[14];
cx q[22],q[8];
cx q[14],q[22];
tdg q[8];
tdg q[22];
cx q[14],q[8];
cx q[14],q[22];
t q[8];
cx q[22],q[8];
tdg q[8];
t q[22];
cx q[14],q[8];
h q[22];
h q[22];
t q[7];
t q[15];
cx q[22],q[7];
cx q[15],q[22];
tdg q[7];
tdg q[22];
cx q[15],q[7];
cx q[15],q[22];
t q[7];
cx q[22],q[7];
tdg q[7];
t q[22];
cx q[15],q[7];
h q[22];
h q[22];
t q[6];
t q[16];
cx q[22],q[6];
cx q[16],q[22];
tdg q[6];
tdg q[22];
cx q[16],q[6];
cx q[16],q[22];
t q[6];
cx q[22],q[6];
tdg q[6];
t q[22];
cx q[16],q[6];
h q[22];
h q[22];
t q[5];
t q[17];
cx q[22],q[5];
cx q[17],q[22];
tdg q[5];
tdg q[22];
cx q[17],q[5];
cx q[17],q[22];
t q[5];
cx q[22],q[5];
tdg q[5];
t q[22];
cx q[17],q[5];
h q[22];
h q[22];
t q[4];
t q[18];
cx q[22],q[4];
cx q[18],q[22];
tdg q[4];
tdg q[22];
cx q[18],q[4];
cx q[18],q[22];
t q[4];
cx q[22],q[4];
tdg q[4];
t q[22];
cx q[18],q[4];
h q[22];
h q[22];
t q[3];
t q[19];
cx q[22],q[3];
cx q[19],q[22];
tdg q[3];
tdg q[22];
cx q[19],q[3];
cx q[19],q[22];
t q[3];
cx q[22],q[3];
tdg q[3];
t q[22];
cx q[19],q[3];
h q[22];
h q[23];
t q[9];
t q[14];
cx q[23],q[9];
cx q[14],q[23];
tdg q[9];
tdg q[23];
cx q[14],q[9];
cx q[14],q[23];
t q[9];
cx q[23],q[9];
tdg q[9];
t q[23];
cx q[14],q[9];
h q[23];
h q[23];
t q[8];
t q[15];
cx q[23],q[8];
cx q[15],q[23];
tdg q[8];
tdg q[23];
cx q[15],q[8];
cx q[15],q[23];
t q[8];
cx q[23],q[8];
tdg q[8];
t q[23];
cx q[15],q[8];
h q[23];
h q[23];
t q[7];
t q[16];
cx q[23],q[7];
cx q[16],q[23];
tdg q[7];
tdg q[23];
cx q[16],q[7];
cx q[16],q[23];
t q[7];
cx q[23],q[7];
tdg q[7];
t q[23];
cx q[16],q[7];
h q[23];
h q[23];
t q[6];
t q[17];
cx q[23],q[6];
cx q[17],q[23];
tdg q[6];
tdg q[23];
cx q[17],q[6];
cx q[17],q[23];
t q[6];
cx q[23],q[6];
tdg q[6];
t q[23];
cx q[17],q[6];
h q[23];
h q[23];
t q[5];
t q[18];
cx q[23],q[5];
cx q[18],q[23];
tdg q[5];
tdg q[23];
cx q[18],q[5];
cx q[18],q[23];
t q[5];
cx q[23],q[5];
tdg q[5];
t q[23];
cx q[18],q[5];
h q[23];
h q[23];
t q[4];
t q[19];
cx q[23],q[4];
cx q[19],q[23];
tdg q[4];
tdg q[23];
cx q[19],q[4];
cx q[19],q[23];
t q[4];
cx q[23],q[4];
tdg q[4];
t q[23];
cx q[19],q[4];
h q[23];
h q[24];
t q[9];
t q[15];
cx q[24],q[9];
cx q[15],q[24];
tdg q[9];
tdg q[24];
cx q[15],q[9];
cx q[15],q[24];
t q[9];
cx q[24],q[9];
tdg q[9];
t q[24];
cx q[15],q[9];
h q[24];
h q[24];
t q[8];
t q[16];
cx q[24],q[8];
cx q[16],q[24];
tdg q[8];
tdg q[24];
cx q[16],q[8];
cx q[16],q[24];
t q[8];
cx q[24],q[8];
tdg q[8];
t q[24];
cx q[16],q[8];
h q[24];
h q[24];
t q[7];
t q[17];
cx q[24],q[7];
cx q[17],q[24];
tdg q[7];
tdg q[24];
cx q[17],q[7];
cx q[17],q[24];
t q[7];
cx q[24],q[7];
tdg q[7];
t q[24];
cx q[17],q[7];
h q[24];
h q[24];
t q[6];
t q[18];
cx q[24],q[6];
cx q[18],q[24];
tdg q[6];
tdg q[24];
cx q[18],q[6];
cx q[18],q[24];
t q[6];
cx q[24],q[6];
tdg q[6];
t q[24];
cx q[18],q[6];
h q[24];
h q[24];
t q[5];
t q[19];
cx q[24],q[5];
cx q[19],q[24];
tdg q[5];
tdg q[24];
cx q[19],q[5];
cx q[19],q[24];
t q[5];
cx q[24],q[5];
tdg q[5];
t q[24];
cx q[19],q[5];
h q[24];
h q[25];
t q[9];
t q[16];
cx q[25],q[9];
cx q[16],q[25];
tdg q[9];
tdg q[25];
cx q[16],q[9];
cx q[16],q[25];
t q[9];
cx q[25],q[9];
tdg q[9];
t q[25];
cx q[16],q[9];
h q[25];
h q[25];
t q[8];
t q[17];
cx q[25],q[8];
cx q[17],q[25];
tdg q[8];
tdg q[25];
cx q[17],q[8];
cx q[17],q[25];
t q[8];
cx q[25],q[8];
tdg q[8];
t q[25];
cx q[17],q[8];
h q[25];
h q[25];
t q[7];
t q[18];
cx q[25],q[7];
cx q[18],q[25];
tdg q[7];
tdg q[25];
cx q[18],q[7];
cx q[18],q[25];
t q[7];
cx q[25],q[7];
tdg q[7];
t q[25];
cx q[18],q[7];
h q[25];
h q[25];
t q[6];
t q[19];
cx q[25],q[6];
cx q[19],q[25];
tdg q[6];
tdg q[25];
cx q[19],q[6];
cx q[19],q[25];
t q[6];
cx q[25],q[6];
tdg q[6];
t q[25];
cx q[19],q[6];
h q[25];
h q[26];
t q[9];
t q[17];
cx q[26],q[9];
cx q[17],q[26];
tdg q[9];
tdg q[26];
cx q[17],q[9];
cx q[17],q[26];
t q[9];
cx q[26],q[9];
tdg q[9];
t q[26];
cx q[17],q[9];
h q[26];
h q[26];
t q[8];
t q[18];
cx q[26],q[8];
cx q[18],q[26];
tdg q[8];
tdg q[26];
cx q[18],q[8];
cx q[18],q[26];
t q[8];
cx q[26],q[8];
tdg q[8];
t q[26];
cx q[18],q[8];
h q[26];
h q[26];
t q[7];
t q[19];
cx q[26],q[7];
cx q[19],q[26];
tdg q[7];
tdg q[26];
cx q[19],q[7];
cx q[19],q[26];
t q[7];
cx q[26],q[7];
tdg q[7];
t q[26];
cx q[19],q[7];
h q[26];
h q[27];
t q[9];
t q[18];
cx q[27],q[9];
cx q[18],q[27];
tdg q[9];
tdg q[27];
cx q[18],q[9];
cx q[18],q[27];
t q[9];
cx q[27],q[9];
tdg q[9];
t q[27];
cx q[18],q[9];
h q[27];
h q[27];
t q[8];
t q[19];
cx q[27],q[8];
cx q[19],q[27];
tdg q[8];
tdg q[27];
cx q[19],q[8];
cx q[19],q[27];
t q[8];
cx q[27],q[8];
tdg q[8];
t q[27];
cx q[19],q[8];
h q[27];
h q[28];
t q[9];
t q[19];
cx q[28],q[9];
cx q[19],q[28];
tdg q[9];
tdg q[28];
cx q[19],q[9];
cx q[19],q[28];
t q[9];
cx q[28],q[9];
tdg q[9];
t q[28];
cx q[19],q[9];
h q[28];
cx q[28],q[21];
cx q[27],q[20];
cx q[26],q[29];
cx q[25],q[28];
cx q[24],q[27];
cx q[23],q[26];
cx q[22],q[25];
cx q[21],q[24];
cx q[20],q[23];
h q[29];
t q[9];
t q[10];
cx q[29],q[9];
cx q[10],q[29];
tdg q[9];
tdg q[29];
cx q[10],q[9];
cx q[10],q[29];
t q[9];
cx q[29],q[9];
tdg q[9];
t q[29];
cx q[10],q[9];
h q[29];
h q[29];
t q[8];
t q[11];
cx q[29],q[8];
cx q[11],q[29];
tdg q[8];
tdg q[29];
cx q[11],q[8];
cx q[11],q[29];
t q[8];
cx q[29],q[8];
tdg q[8];
t q[29];
cx q[11],q[8];
h q[29];
h q[29];
t q[7];
t q[12];
cx q[29],q[7];
cx q[12],q[29];
tdg q[7];
tdg q[29];
cx q[12],q[7];
cx q[12],q[29];
t q[7];
cx q[29],q[7];
tdg q[7];
t q[29];
cx q[12],q[7];
h q[29];
h q[29];
t q[6];
t q[13];
cx q[29],q[6];
cx q[13],q[29];
tdg q[6];
tdg q[29];
cx q[13],q[6];
cx q[13],q[29];
t q[6];
cx q[29],q[6];
tdg q[6];
t q[29];
cx q[13],q[6];
h q[29];
h q[29];
t q[5];
t q[14];
cx q[29],q[5];
cx q[14],q[29];
tdg q[5];
tdg q[29];
cx q[14],q[5];
cx q[14],q[29];
t q[5];
cx q[29],q[5];
tdg q[5];
t q[29];
cx q[14],q[5];
h q[29];
h q[29];
t q[4];
t q[15];
cx q[29],q[4];
cx q[15],q[29];
tdg q[4];
tdg q[29];
cx q[15],q[4];
cx q[15],q[29];
t q[4];
cx q[29],q[4];
tdg q[4];
t q[29];
cx q[15],q[4];
h q[29];
h q[29];
t q[3];
t q[16];
cx q[29],q[3];
cx q[16],q[29];
tdg q[3];
tdg q[29];
cx q[16],q[3];
cx q[16],q[29];
t q[3];
cx q[29],q[3];
tdg q[3];
t q[29];
cx q[16],q[3];
h q[29];
h q[29];
t q[2];
t q[17];
cx q[29],q[2];
cx q[17],q[29];
tdg q[2];
tdg q[29];
cx q[17],q[2];
cx q[17],q[29];
t q[2];
cx q[29],q[2];
tdg q[2];
t q[29];
cx q[17],q[2];
h q[29];
h q[29];
t q[1];
t q[18];
cx q[29],q[1];
cx q[18],q[29];
tdg q[1];
tdg q[29];
cx q[18],q[1];
cx q[18],q[29];
t q[1];
cx q[29],q[1];
tdg q[1];
t q[29];
cx q[18],q[1];
h q[29];
h q[29];
t q[0];
t q[19];
cx q[29],q[0];
cx q[19],q[29];
tdg q[0];
tdg q[29];
cx q[19],q[0];
cx q[19],q[29];
t q[0];
cx q[29],q[0];
tdg q[0];
t q[29];
cx q[19],q[0];
h q[29];
h q[28];
t q[8];
t q[10];
cx q[28],q[8];
cx q[10],q[28];
tdg q[8];
tdg q[28];
cx q[10],q[8];
cx q[10],q[28];
t q[8];
cx q[28],q[8];
tdg q[8];
t q[28];
cx q[10],q[8];
h q[28];
h q[28];
t q[7];
t q[11];
cx q[28],q[7];
cx q[11],q[28];
tdg q[7];
tdg q[28];
cx q[11],q[7];
cx q[11],q[28];
t q[7];
cx q[28],q[7];
tdg q[7];
t q[28];
cx q[11],q[7];
h q[28];
h q[28];
t q[6];
t q[12];
cx q[28],q[6];
cx q[12],q[28];
tdg q[6];
tdg q[28];
cx q[12],q[6];
cx q[12],q[28];
t q[6];
cx q[28],q[6];
tdg q[6];
t q[28];
cx q[12],q[6];
h q[28];
h q[28];
t q[5];
t q[13];
cx q[28],q[5];
cx q[13],q[28];
tdg q[5];
tdg q[28];
cx q[13],q[5];
cx q[13],q[28];
t q[5];
cx q[28],q[5];
tdg q[5];
t q[28];
cx q[13],q[5];
h q[28];
h q[28];
t q[4];
t q[14];
cx q[28],q[4];
cx q[14],q[28];
tdg q[4];
tdg q[28];
cx q[14],q[4];
cx q[14],q[28];
t q[4];
cx q[28],q[4];
tdg q[4];
t q[28];
cx q[14],q[4];
h q[28];
h q[28];
t q[3];
t q[15];
cx q[28],q[3];
cx q[15],q[28];
tdg q[3];
tdg q[28];
cx q[15],q[3];
cx q[15],q[28];
t q[3];
cx q[28],q[3];
tdg q[3];
t q[28];
cx q[15],q[3];
h q[28];
h q[28];
t q[2];
t q[16];
cx q[28],q[2];
cx q[16],q[28];
tdg q[2];
tdg q[28];
cx q[16],q[2];
cx q[16],q[28];
t q[2];
cx q[28],q[2];
tdg q[2];
t q[28];
cx q[16],q[2];
h q[28];
h q[28];
t q[1];
t q[17];
cx q[28],q[1];
cx q[17],q[28];
tdg q[1];
tdg q[28];
cx q[17],q[1];
cx q[17],q[28];
t q[1];
cx q[28],q[1];
tdg q[1];
t q[28];
cx q[17],q[1];
h q[28];
h q[28];
t q[0];
t q[18];
cx q[28],q[0];
cx q[18],q[28];
tdg q[0];
tdg q[28];
cx q[18],q[0];
cx q[18],q[28];
t q[0];
cx q[28],q[0];
tdg q[0];
t q[28];
cx q[18],q[0];
h q[28];
h q[27];
t q[7];
t q[10];
cx q[27],q[7];
cx q[10],q[27];
tdg q[7];
tdg q[27];
cx q[10],q[7];
cx q[10],q[27];
t q[7];
cx q[27],q[7];
tdg q[7];
t q[27];
cx q[10],q[7];
h q[27];
h q[27];
t q[6];
t q[11];
cx q[27],q[6];
cx q[11],q[27];
tdg q[6];
tdg q[27];
cx q[11],q[6];
cx q[11],q[27];
t q[6];
cx q[27],q[6];
tdg q[6];
t q[27];
cx q[11],q[6];
h q[27];
h q[27];
t q[5];
t q[12];
cx q[27],q[5];
cx q[12],q[27];
tdg q[5];
tdg q[27];
cx q[12],q[5];
cx q[12],q[27];
t q[5];
cx q[27],q[5];
tdg q[5];
t q[27];
cx q[12],q[5];
h q[27];
h q[27];
t q[4];
t q[13];
cx q[27],q[4];
cx q[13],q[27];
tdg q[4];
tdg q[27];
cx q[13],q[4];
cx q[13],q[27];
t q[4];
cx q[27],q[4];
tdg q[4];
t q[27];
cx q[13],q[4];
h q[27];
h q[27];
t q[3];
t q[14];
cx q[27],q[3];
cx q[14],q[27];
tdg q[3];
tdg q[27];
cx q[14],q[3];
cx q[14],q[27];
t q[3];
cx q[27],q[3];
tdg q[3];
t q[27];
cx q[14],q[3];
h q[27];
h q[27];
t q[2];
t q[15];
cx q[27],q[2];
cx q[15],q[27];
tdg q[2];
tdg q[27];
cx q[15],q[2];
cx q[15],q[27];
t q[2];
cx q[27],q[2];
tdg q[2];
t q[27];
cx q[15],q[2];
h q[27];
h q[27];
t q[1];
t q[16];
cx q[27],q[1];
cx q[16],q[27];
tdg q[1];
tdg q[27];
cx q[16],q[1];
cx q[16],q[27];
t q[1];
cx q[27],q[1];
tdg q[1];
t q[27];
cx q[16],q[1];
h q[27];
h q[27];
t q[0];
t q[17];
cx q[27],q[0];
cx q[17],q[27];
tdg q[0];
tdg q[27];
cx q[17],q[0];
cx q[17],q[27];
t q[0];
cx q[27],q[0];
tdg q[0];
t q[27];
cx q[17],q[0];
h q[27];
h q[26];
t q[6];
t q[10];
cx q[26],q[6];
cx q[10],q[26];
tdg q[6];
tdg q[26];
cx q[10],q[6];
cx q[10],q[26];
t q[6];
cx q[26],q[6];
tdg q[6];
t q[26];
cx q[10],q[6];
h q[26];
h q[26];
t q[5];
t q[11];
cx q[26],q[5];
cx q[11],q[26];
tdg q[5];
tdg q[26];
cx q[11],q[5];
cx q[11],q[26];
t q[5];
cx q[26],q[5];
tdg q[5];
t q[26];
cx q[11],q[5];
h q[26];
h q[26];
t q[4];
t q[12];
cx q[26],q[4];
cx q[12],q[26];
tdg q[4];
tdg q[26];
cx q[12],q[4];
cx q[12],q[26];
t q[4];
cx q[26],q[4];
tdg q[4];
t q[26];
cx q[12],q[4];
h q[26];
h q[26];
t q[3];
t q[13];
cx q[26],q[3];
cx q[13],q[26];
tdg q[3];
tdg q[26];
cx q[13],q[3];
cx q[13],q[26];
t q[3];
cx q[26],q[3];
tdg q[3];
t q[26];
cx q[13],q[3];
h q[26];
h q[26];
t q[2];
t q[14];
cx q[26],q[2];
cx q[14],q[26];
tdg q[2];
tdg q[26];
cx q[14],q[2];
cx q[14],q[26];
t q[2];
cx q[26],q[2];
tdg q[2];
t q[26];
cx q[14],q[2];
h q[26];
h q[26];
t q[1];
t q[15];
cx q[26],q[1];
cx q[15],q[26];
tdg q[1];
tdg q[26];
cx q[15],q[1];
cx q[15],q[26];
t q[1];
cx q[26],q[1];
tdg q[1];
t q[26];
cx q[15],q[1];
h q[26];
h q[26];
t q[0];
t q[16];
cx q[26],q[0];
cx q[16],q[26];
tdg q[0];
tdg q[26];
cx q[16],q[0];
cx q[16],q[26];
t q[0];
cx q[26],q[0];
tdg q[0];
t q[26];
cx q[16],q[0];
h q[26];
h q[25];
t q[5];
t q[10];
cx q[25],q[5];
cx q[10],q[25];
tdg q[5];
tdg q[25];
cx q[10],q[5];
cx q[10],q[25];
t q[5];
cx q[25],q[5];
tdg q[5];
t q[25];
cx q[10],q[5];
h q[25];
h q[25];
t q[4];
t q[11];
cx q[25],q[4];
cx q[11],q[25];
tdg q[4];
tdg q[25];
cx q[11],q[4];
cx q[11],q[25];
t q[4];
cx q[25],q[4];
tdg q[4];
t q[25];
cx q[11],q[4];
h q[25];
h q[25];
t q[3];
t q[12];
cx q[25],q[3];
cx q[12],q[25];
tdg q[3];
tdg q[25];
cx q[12],q[3];
cx q[12],q[25];
t q[3];
cx q[25],q[3];
tdg q[3];
t q[25];
cx q[12],q[3];
h q[25];
h q[25];
t q[2];
t q[13];
cx q[25],q[2];
cx q[13],q[25];
tdg q[2];
tdg q[25];
cx q[13],q[2];
cx q[13],q[25];
t q[2];
cx q[25],q[2];
tdg q[2];
t q[25];
cx q[13],q[2];
h q[25];
h q[25];
t q[1];
t q[14];
cx q[25],q[1];
cx q[14],q[25];
tdg q[1];
tdg q[25];
cx q[14],q[1];
cx q[14],q[25];
t q[1];
cx q[25],q[1];
tdg q[1];
t q[25];
cx q[14],q[1];
h q[25];
h q[25];
t q[0];
t q[15];
cx q[25],q[0];
cx q[15],q[25];
tdg q[0];
tdg q[25];
cx q[15],q[0];
cx q[15],q[25];
t q[0];
cx q[25],q[0];
tdg q[0];
t q[25];
cx q[15],q[0];
h q[25];
h q[24];
t q[4];
t q[10];
cx q[24],q[4];
cx q[10],q[24];
tdg q[4];
tdg q[24];
cx q[10],q[4];
cx q[10],q[24];
t q[4];
cx q[24],q[4];
tdg q[4];
t q[24];
cx q[10],q[4];
h q[24];
h q[24];
t q[3];
t q[11];
cx q[24],q[3];
cx q[11],q[24];
tdg q[3];
tdg q[24];
cx q[11],q[3];
cx q[11],q[24];
t q[3];
cx q[24],q[3];
tdg q[3];
t q[24];
cx q[11],q[3];
h q[24];
h q[24];
t q[2];
t q[12];
cx q[24],q[2];
cx q[12],q[24];
tdg q[2];
tdg q[24];
cx q[12],q[2];
cx q[12],q[24];
t q[2];
cx q[24],q[2];
tdg q[2];
t q[24];
cx q[12],q[2];
h q[24];
h q[24];
t q[1];
t q[13];
cx q[24],q[1];
cx q[13],q[24];
tdg q[1];
tdg q[24];
cx q[13],q[1];
cx q[13],q[24];
t q[1];
cx q[24],q[1];
tdg q[1];
t q[24];
cx q[13],q[1];
h q[24];
h q[24];
t q[0];
t q[14];
cx q[24],q[0];
cx q[14],q[24];
tdg q[0];
tdg q[24];
cx q[14],q[0];
cx q[14],q[24];
t q[0];
cx q[24],q[0];
tdg q[0];
t q[24];
cx q[14],q[0];
h q[24];
h q[23];
t q[3];
t q[10];
cx q[23],q[3];
cx q[10],q[23];
tdg q[3];
tdg q[23];
cx q[10],q[3];
cx q[10],q[23];
t q[3];
cx q[23],q[3];
tdg q[3];
t q[23];
cx q[10],q[3];
h q[23];
h q[23];
t q[2];
t q[11];
cx q[23],q[2];
cx q[11],q[23];
tdg q[2];
tdg q[23];
cx q[11],q[2];
cx q[11],q[23];
t q[2];
cx q[23],q[2];
tdg q[2];
t q[23];
cx q[11],q[2];
h q[23];
h q[23];
t q[1];
t q[12];
cx q[23],q[1];
cx q[12],q[23];
tdg q[1];
tdg q[23];
cx q[12],q[1];
cx q[12],q[23];
t q[1];
cx q[23],q[1];
tdg q[1];
t q[23];
cx q[12],q[1];
h q[23];
h q[23];
t q[0];
t q[13];
cx q[23],q[0];
cx q[13],q[23];
tdg q[0];
tdg q[23];
cx q[13],q[0];
cx q[13],q[23];
t q[0];
cx q[23],q[0];
tdg q[0];
t q[23];
cx q[13],q[0];
h q[23];
h q[22];
t q[2];
t q[10];
cx q[22],q[2];
cx q[10],q[22];
tdg q[2];
tdg q[22];
cx q[10],q[2];
cx q[10],q[22];
t q[2];
cx q[22],q[2];
tdg q[2];
t q[22];
cx q[10],q[2];
h q[22];
h q[22];
t q[1];
t q[11];
cx q[22],q[1];
cx q[11],q[22];
tdg q[1];
tdg q[22];
cx q[11],q[1];
cx q[11],q[22];
t q[1];
cx q[22],q[1];
tdg q[1];
t q[22];
cx q[11],q[1];
h q[22];
h q[22];
t q[0];
t q[12];
cx q[22],q[0];
cx q[12],q[22];
tdg q[0];
tdg q[22];
cx q[12],q[0];
cx q[12],q[22];
t q[0];
cx q[22],q[0];
tdg q[0];
t q[22];
cx q[12],q[0];
h q[22];
h q[21];
t q[1];
t q[10];
cx q[21],q[1];
cx q[10],q[21];
tdg q[1];
tdg q[21];
cx q[10],q[1];
cx q[10],q[21];
t q[1];
cx q[21],q[1];
tdg q[1];
t q[21];
cx q[10],q[1];
h q[21];
h q[21];
t q[0];
t q[11];
cx q[21],q[0];
cx q[11],q[21];
tdg q[0];
tdg q[21];
cx q[11],q[0];
cx q[11],q[21];
t q[0];
cx q[21],q[0];
tdg q[0];
t q[21];
cx q[11],q[0];
h q[21];
h q[20];
t q[0];
t q[10];
cx q[20],q[0];
cx q[10],q[20];
tdg q[0];
tdg q[20];
cx q[10],q[0];
cx q[10],q[20];
t q[0];
cx q[20],q[0];
tdg q[0];
t q[20];
cx q[10],q[0];
h q[20];
