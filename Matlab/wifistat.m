wfnumber=[2 56343;6 33763;5 37348;10 20682;11 18732;20 5642;19 6151;7 31219;3 48623;4 42065;15 10688;9 23875;16 9259;1 69216;14 12392;18 6990;23 3578;8 27532;22 4114;25 2755;13 13784;12 15702;17 7899;27 1963;24 3152;48 192;74 23;41 425;66 63;83 17;86 5;38 523;32 1526;26 2799;53 157;62 78;21 4679;29 1980;28 1752;34 927;35 868;47 202;36 770;37 711;42 376;31 1758;44 261;30 1335;40 468;61 80;33 1145;45 304;85 14;43 331;49 169;51 165;60 62;65 55;76 34;71 36;56 127;99 10;59 83;57 101;64 54;55 117;54 145;52 141;50 138;67 55;88 17;69 42;58 111;181 1;79 20;75 32;46 251;63 62;39 517;68 48;114 3;112 2;93 15;72 44;73 29;84 8;94 14;78 24;77 26;90 14;80 18;89 9;111 1;91 20;100 4;102 5;117 1;135 1;82 22;122 13;92 14;87 11;81 16;70 40;95 7;96 5;164 1;104 5;188 1;200 9;106 6;147 1;113 5;179 2;180 1;110 2;98 6;143 1;97 7;101 13;130 2;144 1;133 1;145 1;155 2;151 2;108 6;120 1;105 4;118 3;162 1;127 3;161 1;137 2;152 1;126 1;123 1;139 1;132 1;115 1;150 2;103 2;109 1;190 1;170 1;128 1;157 1;153 2;124 1;148 1];
[~,idx]=sort(wfnumber(:,1));
wfnumber(:,1)=wfnumber(idx,1);
wfnumber(:,2)=wfnumber(idx,2);
wifioccur=[4,44909;1,2584476;2,414270;3,112494;23,146;14012,1;5,21399;10,2857;13,1054;12,1520;1183,1;105,12;206,2;666,1;505,1;681,1;1079,1;164,1;61,13;44,14;46,20;59,16;7,7608;20,367;6,12239;8,5262;9,3717;25,111;24,161;19,300;497,25;498,1;62,23;29,134;21,258;30,84;14,928;185,3;177,1;181,1;121,2;36,35;178,1;11,1545;22,188;15,710;18,537;17,562;52,3;40,50;144,3;72,7;70,4;63,10;16,555;79,7;273,46;272,6;543,6;274,3;271,15;82,7;83,1;65,24;53,14;27,83;87,3;76,6;86,4;187,1;260,1;232,1;123,3;237,1;170,1;150,1;97,1;32,64;38,26;35,33;736,1;152,5;85,1;26,181;33,62;90,9;56,14;49,19;47,27;28,171;31,92;101,1;262,1;34,48;180,2;41,25;37,42;43,18;42,40;48,23;107,2;45,14;68,5;58,13;129,2;110,6;118,1;66,10;141,1;108,1;981,1;962,1;971,2;979,1;953,1;959,1;696,1;313,1;857,1;947,1;919,1;312,1;509,1;195,1;71,5;78,23;73,1;117,3;77,3;759,1;576,1;725,1;147,1;120,3;939,1;888,1;456,1;50,12;109,1;837,1;474,1;442,1;703,1;698,1;392,1;99,1;60,15;39,50;95,1;74,5;319,1;210,1;156,1;57,10;64,4;128,3;75,1;397,1;100,1;54,7;81,3;115,3;88,1;140,1;67,1;92,3;182,3;174,1;51,21;98,5;134,1;55,6;299,1;151,1;80,3;94,6;791,7;772,1;632,1;782,1;751,1;354,1;320,1;763,1;514,1;433,1;89,3;407,1;616,1;119,1;133,1;126,5;111,1;106,3;183,1;138,1;137,1;139,1;131,2;69,4;93,1;173,1;218,1;217,2;213,3;188,1;149,1;162,2;148,1;104,1;276,1;124,1;102,1;296,3;224,1;242,1;127,6;103,1;163,1;179,1;166,5;167,1];
[~,idx]=sort(wifioccur(:,1));
wifioccur(:,1)=wifioccur(idx,1);
wifioccur(:,2)=wifioccur(idx,2);
figure
box on
hold on
for i=1:100
    fill([i-0.5,i+0.5,i+0.5,i-0.5],[1,1,wfnumber(i,2),wfnumber(i,2)],'w')
end
set(gca,'yscale','log')
set(gca,'xlim',[0,100])
set(gcf,'position',[100,200,400,300])
xlabel('一条记录中的WiFi AP数量')
ylabel('记录的数量')
hold off
figure
box on
hold on
for i=1:100
    fill([i-0.5,i+0.5,i+0.5,i-0.5],[1,1,wifioccur(i,2),wifioccur(i,2)],'w')
end
set(gca,'yscale','log')
set(gca,'xlim',[0,100])
set(gcf,'position',[500,200,400,300])
xlabel('WiFi AP的出现次数')
ylabel('AP的数量')
hold off