OPENQASM 2.0;
include "qelib1.inc";
qreg q[24];
h q[16];
t q[7];
t q[9];
cx q[16],q[7];
cx q[9],q[16];
tdg q[7];
tdg q[16];
cx q[9],q[7];
cx q[9],q[16];
t q[7];
cx q[16],q[7];
tdg q[7];
t q[16];
cx q[9],q[7];
t q[6];
t q[10];
cx q[16],q[6];
cx q[10],q[16];
tdg q[6];
tdg q[16];
cx q[10],q[6];
cx q[10],q[16];
t q[6];
cx q[16],q[6];
tdg q[6];
t q[16];
cx q[10],q[6];
t q[5];
t q[11];
cx q[16],q[5];
cx q[11],q[16];
tdg q[5];
tdg q[16];
cx q[11],q[5];
cx q[11],q[16];
t q[5];
cx q[16],q[5];
tdg q[5];
t q[16];
cx q[11],q[5];
t q[4];
t q[12];
cx q[16],q[4];
cx q[12],q[16];
tdg q[4];
tdg q[16];
cx q[12],q[4];
cx q[12],q[16];
t q[4];
cx q[16],q[4];
tdg q[4];
t q[16];
cx q[12],q[4];
t q[3];
t q[13];
cx q[16],q[3];
cx q[13],q[16];
tdg q[3];
tdg q[16];
cx q[13],q[3];
cx q[13],q[16];
t q[3];
cx q[16],q[3];
tdg q[3];
t q[16];
cx q[13],q[3];
t q[2];
t q[14];
cx q[16],q[2];
cx q[14],q[16];
tdg q[2];
tdg q[16];
cx q[14],q[2];
cx q[14],q[16];
t q[2];
cx q[16],q[2];
tdg q[2];
t q[16];
cx q[14],q[2];
t q[1];
t q[15];
cx q[16],q[1];
cx q[15],q[16];
tdg q[1];
tdg q[16];
cx q[15],q[1];
cx q[15],q[16];
t q[1];
cx q[16],q[1];
tdg q[1];
t q[16];
cx q[15],q[1];
h q[16];
h q[17];
t q[7];
t q[10];
cx q[17],q[7];
cx q[10],q[17];
tdg q[7];
tdg q[17];
cx q[10],q[7];
cx q[10],q[17];
t q[7];
cx q[17],q[7];
tdg q[7];
t q[17];
cx q[10],q[7];
t q[6];
t q[11];
cx q[17],q[6];
cx q[11],q[17];
tdg q[6];
tdg q[17];
cx q[11],q[6];
cx q[11],q[17];
t q[6];
cx q[17],q[6];
tdg q[6];
t q[17];
cx q[11],q[6];
t q[5];
t q[12];
cx q[17],q[5];
cx q[12],q[17];
tdg q[5];
tdg q[17];
cx q[12],q[5];
cx q[12],q[17];
t q[5];
cx q[17],q[5];
tdg q[5];
t q[17];
cx q[12],q[5];
t q[4];
t q[13];
cx q[17],q[4];
cx q[13],q[17];
tdg q[4];
tdg q[17];
cx q[13],q[4];
cx q[13],q[17];
t q[4];
cx q[17],q[4];
tdg q[4];
t q[17];
cx q[13],q[4];
t q[3];
t q[14];
cx q[17],q[3];
cx q[14],q[17];
tdg q[3];
tdg q[17];
cx q[14],q[3];
cx q[14],q[17];
t q[3];
cx q[17],q[3];
tdg q[3];
t q[17];
cx q[14],q[3];
t q[2];
t q[15];
cx q[17],q[2];
cx q[15],q[17];
tdg q[2];
tdg q[17];
cx q[15],q[2];
cx q[15],q[17];
t q[2];
cx q[17],q[2];
tdg q[2];
t q[17];
cx q[15],q[2];
h q[17];
h q[18];
t q[7];
t q[11];
cx q[18],q[7];
cx q[11],q[18];
tdg q[7];
tdg q[18];
cx q[11],q[7];
cx q[11],q[18];
t q[7];
cx q[18],q[7];
tdg q[7];
t q[18];
cx q[11],q[7];
t q[6];
t q[12];
cx q[18],q[6];
cx q[12],q[18];
tdg q[6];
tdg q[18];
cx q[12],q[6];
cx q[12],q[18];
t q[6];
cx q[18],q[6];
tdg q[6];
t q[18];
cx q[12],q[6];
t q[5];
t q[13];
cx q[18],q[5];
cx q[13],q[18];
tdg q[5];
tdg q[18];
cx q[13],q[5];
cx q[13],q[18];
t q[5];
cx q[18],q[5];
tdg q[5];
t q[18];
cx q[13],q[5];
t q[4];
t q[14];
cx q[18],q[4];
cx q[14],q[18];
tdg q[4];
tdg q[18];
cx q[14],q[4];
cx q[14],q[18];
t q[4];
cx q[18],q[4];
tdg q[4];
t q[18];
cx q[14],q[4];
t q[3];
t q[15];
cx q[18],q[3];
cx q[15],q[18];
tdg q[3];
tdg q[18];
cx q[15],q[3];
cx q[15],q[18];
t q[3];
cx q[18],q[3];
tdg q[3];
t q[18];
cx q[15],q[3];
h q[18];
h q[19];
t q[7];
t q[12];
cx q[19],q[7];
cx q[12],q[19];
tdg q[7];
tdg q[19];
cx q[12],q[7];
cx q[12],q[19];
t q[7];
cx q[19],q[7];
tdg q[7];
t q[19];
cx q[12],q[7];
t q[6];
t q[13];
cx q[19],q[6];
cx q[13],q[19];
tdg q[6];
tdg q[19];
cx q[13],q[6];
cx q[13],q[19];
t q[6];
cx q[19],q[6];
tdg q[6];
t q[19];
cx q[13],q[6];
t q[5];
t q[14];
cx q[19],q[5];
cx q[14],q[19];
tdg q[5];
tdg q[19];
cx q[14],q[5];
cx q[14],q[19];
t q[5];
cx q[19],q[5];
tdg q[5];
t q[19];
cx q[14],q[5];
t q[4];
t q[15];
cx q[19],q[4];
cx q[15],q[19];
tdg q[4];
tdg q[19];
cx q[15],q[4];
cx q[15],q[19];
t q[4];
cx q[19],q[4];
tdg q[4];
t q[19];
cx q[15],q[4];
h q[19];
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
cx q[22],q[18];
cx q[22],q[17];
cx q[22],q[16];
cx q[21],q[17];
cx q[21],q[16];
cx q[21],q[23];
cx q[20],q[16];
cx q[20],q[23];
cx q[20],q[22];
cx q[19],q[23];
cx q[19],q[22];
cx q[19],q[21];
cx q[18],q[22];
cx q[18],q[21];
cx q[18],q[20];
cx q[17],q[21];
cx q[17],q[20];
cx q[17],q[19];
cx q[16],q[20];
cx q[16],q[19];
cx q[16],q[18];
h q[23];
t q[7];
t q[8];
cx q[23],q[7];
cx q[8],q[23];
tdg q[7];
tdg q[23];
cx q[8],q[7];
cx q[8],q[23];
t q[7];
cx q[23],q[7];
tdg q[7];
t q[23];
cx q[8],q[7];
t q[6];
t q[9];
cx q[23],q[6];
cx q[9],q[23];
tdg q[6];
tdg q[23];
cx q[9],q[6];
cx q[9],q[23];
t q[6];
cx q[23],q[6];
tdg q[6];
t q[23];
cx q[9],q[6];
t q[5];
t q[10];
cx q[23],q[5];
cx q[10],q[23];
tdg q[5];
tdg q[23];
cx q[10],q[5];
cx q[10],q[23];
t q[5];
cx q[23],q[5];
tdg q[5];
t q[23];
cx q[10],q[5];
t q[4];
t q[11];
cx q[23],q[4];
cx q[11],q[23];
tdg q[4];
tdg q[23];
cx q[11],q[4];
cx q[11],q[23];
t q[4];
cx q[23],q[4];
tdg q[4];
t q[23];
cx q[11],q[4];
t q[3];
t q[12];
cx q[23],q[3];
cx q[12],q[23];
tdg q[3];
tdg q[23];
cx q[12],q[3];
cx q[12],q[23];
t q[3];
cx q[23],q[3];
tdg q[3];
t q[23];
cx q[12],q[3];
t q[2];
t q[13];
cx q[23],q[2];
cx q[13],q[23];
tdg q[2];
tdg q[23];
cx q[13],q[2];
cx q[13],q[23];
t q[2];
cx q[23],q[2];
tdg q[2];
t q[23];
cx q[13],q[2];
t q[1];
t q[14];
cx q[23],q[1];
cx q[14],q[23];
tdg q[1];
tdg q[23];
cx q[14],q[1];
cx q[14],q[23];
t q[1];
cx q[23],q[1];
tdg q[1];
t q[23];
cx q[14],q[1];
t q[0];
t q[15];
cx q[23],q[0];
cx q[15],q[23];
tdg q[0];
tdg q[23];
cx q[15],q[0];
cx q[15],q[23];
t q[0];
cx q[23],q[0];
tdg q[0];
t q[23];
cx q[15],q[0];
h q[23];
h q[22];
t q[6];
t q[8];
cx q[22],q[6];
cx q[8],q[22];
tdg q[6];
tdg q[22];
cx q[8],q[6];
cx q[8],q[22];
t q[6];
cx q[22],q[6];
tdg q[6];
t q[22];
cx q[8],q[6];
t q[5];
t q[9];
cx q[22],q[5];
cx q[9],q[22];
tdg q[5];
tdg q[22];
cx q[9],q[5];
cx q[9],q[22];
t q[5];
cx q[22],q[5];
tdg q[5];
t q[22];
cx q[9],q[5];
t q[4];
t q[10];
cx q[22],q[4];
cx q[10],q[22];
tdg q[4];
tdg q[22];
cx q[10],q[4];
cx q[10],q[22];
t q[4];
cx q[22],q[4];
tdg q[4];
t q[22];
cx q[10],q[4];
t q[3];
t q[11];
cx q[22],q[3];
cx q[11],q[22];
tdg q[3];
tdg q[22];
cx q[11],q[3];
cx q[11],q[22];
t q[3];
cx q[22],q[3];
tdg q[3];
t q[22];
cx q[11],q[3];
t q[2];
t q[12];
cx q[22],q[2];
cx q[12],q[22];
tdg q[2];
tdg q[22];
cx q[12],q[2];
cx q[12],q[22];
t q[2];
cx q[22],q[2];
tdg q[2];
t q[22];
cx q[12],q[2];
t q[1];
t q[13];
cx q[22],q[1];
cx q[13],q[22];
tdg q[1];
tdg q[22];
cx q[13],q[1];
cx q[13],q[22];
t q[1];
cx q[22],q[1];
tdg q[1];
t q[22];
cx q[13],q[1];
t q[0];
t q[14];
cx q[22],q[0];
cx q[14],q[22];
tdg q[0];
tdg q[22];
cx q[14],q[0];
cx q[14],q[22];
t q[0];
cx q[22],q[0];
tdg q[0];
t q[22];
cx q[14],q[0];
h q[22];
h q[21];
t q[5];
t q[8];
cx q[21],q[5];
cx q[8],q[21];
tdg q[5];
tdg q[21];
cx q[8],q[5];
cx q[8],q[21];
t q[5];
cx q[21],q[5];
tdg q[5];
t q[21];
cx q[8],q[5];
t q[4];
t q[9];
cx q[21],q[4];
cx q[9],q[21];
tdg q[4];
tdg q[21];
cx q[9],q[4];
cx q[9],q[21];
t q[4];
cx q[21],q[4];
tdg q[4];
t q[21];
cx q[9],q[4];
t q[3];
t q[10];
cx q[21],q[3];
cx q[10],q[21];
tdg q[3];
tdg q[21];
cx q[10],q[3];
cx q[10],q[21];
t q[3];
cx q[21],q[3];
tdg q[3];
t q[21];
cx q[10],q[3];
t q[2];
t q[11];
cx q[21],q[2];
cx q[11],q[21];
tdg q[2];
tdg q[21];
cx q[11],q[2];
cx q[11],q[21];
t q[2];
cx q[21],q[2];
tdg q[2];
t q[21];
cx q[11],q[2];
t q[1];
t q[12];
cx q[21],q[1];
cx q[12],q[21];
tdg q[1];
tdg q[21];
cx q[12],q[1];
cx q[12],q[21];
t q[1];
cx q[21],q[1];
tdg q[1];
t q[21];
cx q[12],q[1];
t q[0];
t q[13];
cx q[21],q[0];
cx q[13],q[21];
tdg q[0];
tdg q[21];
cx q[13],q[0];
cx q[13],q[21];
t q[0];
cx q[21],q[0];
tdg q[0];
t q[21];
cx q[13],q[0];
h q[21];
h q[20];
t q[4];
t q[8];
cx q[20],q[4];
cx q[8],q[20];
tdg q[4];
tdg q[20];
cx q[8],q[4];
cx q[8],q[20];
t q[4];
cx q[20],q[4];
tdg q[4];
t q[20];
cx q[8],q[4];
t q[3];
t q[9];
cx q[20],q[3];
cx q[9],q[20];
tdg q[3];
tdg q[20];
cx q[9],q[3];
cx q[9],q[20];
t q[3];
cx q[20],q[3];
tdg q[3];
t q[20];
cx q[9],q[3];
t q[2];
t q[10];
cx q[20],q[2];
cx q[10],q[20];
tdg q[2];
tdg q[20];
cx q[10],q[2];
cx q[10],q[20];
t q[2];
cx q[20],q[2];
tdg q[2];
t q[20];
cx q[10],q[2];
t q[1];
t q[11];
cx q[20],q[1];
cx q[11],q[20];
tdg q[1];
tdg q[20];
cx q[11],q[1];
cx q[11],q[20];
t q[1];
cx q[20],q[1];
tdg q[1];
t q[20];
cx q[11],q[1];
t q[0];
t q[12];
cx q[20],q[0];
cx q[12],q[20];
tdg q[0];
tdg q[20];
cx q[12],q[0];
cx q[12],q[20];
t q[0];
cx q[20],q[0];
tdg q[0];
t q[20];
cx q[12],q[0];
h q[20];
h q[19];
t q[3];
t q[8];
cx q[19],q[3];
cx q[8],q[19];
tdg q[3];
tdg q[19];
cx q[8],q[3];
cx q[8],q[19];
t q[3];
cx q[19],q[3];
tdg q[3];
t q[19];
cx q[8],q[3];
t q[2];
t q[9];
cx q[19],q[2];
cx q[9],q[19];
tdg q[2];
tdg q[19];
cx q[9],q[2];
cx q[9],q[19];
t q[2];
cx q[19],q[2];
tdg q[2];
t q[19];
cx q[9],q[2];
t q[1];
t q[10];
cx q[19],q[1];
cx q[10],q[19];
tdg q[1];
tdg q[19];
cx q[10],q[1];
cx q[10],q[19];
t q[1];
cx q[19],q[1];
tdg q[1];
t q[19];
cx q[10],q[1];
t q[0];
t q[11];
cx q[19],q[0];
cx q[11],q[19];
tdg q[0];
tdg q[19];
cx q[11],q[0];
cx q[11],q[19];
t q[0];
cx q[19],q[0];
tdg q[0];
t q[19];
cx q[11],q[0];
h q[19];
h q[18];
t q[2];
t q[8];
cx q[18],q[2];
cx q[8],q[18];
tdg q[2];
tdg q[18];
cx q[8],q[2];
cx q[8],q[18];
t q[2];
cx q[18],q[2];
tdg q[2];
t q[18];
cx q[8],q[2];
t q[1];
t q[9];
cx q[18],q[1];
cx q[9],q[18];
tdg q[1];
tdg q[18];
cx q[9],q[1];
cx q[9],q[18];
t q[1];
cx q[18],q[1];
tdg q[1];
t q[18];
cx q[9],q[1];
t q[0];
t q[10];
cx q[18],q[0];
cx q[10],q[18];
tdg q[0];
tdg q[18];
cx q[10],q[0];
cx q[10],q[18];
t q[0];
cx q[18],q[0];
tdg q[0];
t q[18];
cx q[10],q[0];
h q[18];
h q[17];
t q[1];
t q[8];
cx q[17],q[1];
cx q[8],q[17];
tdg q[1];
tdg q[17];
cx q[8],q[1];
cx q[8],q[17];
t q[1];
cx q[17],q[1];
tdg q[1];
t q[17];
cx q[8],q[1];
t q[0];
t q[9];
cx q[17],q[0];
cx q[9],q[17];
tdg q[0];
tdg q[17];
cx q[9],q[0];
cx q[9],q[17];
t q[0];
cx q[17],q[0];
tdg q[0];
t q[17];
cx q[9],q[0];
h q[17];
h q[16];
t q[0];
t q[8];
cx q[16],q[0];
cx q[8],q[16];
tdg q[0];
tdg q[16];
cx q[8],q[0];
cx q[8],q[16];
t q[0];
cx q[16],q[0];
tdg q[0];
t q[16];
cx q[8],q[0];
h q[16];