10 SCREEN 5:COLOR 1,15,4
15 OPEN "GRP:"AS#1
20 W=256/5
30 H=212/3
40 X=W/2
50 Y=H/2
60 S=W*.3
70 C=0
100 FOR Y2 = 0 TO 2
110 FOR X2 = 0 TO 4
120 CIRCLE(X+X2*W,Y+Y2*H),S,C
130 PAINT(X+X2*W,Y+Y2*H),C
140 PSET(X+X2*W-12,Y+Y2*H-S-8)
150 PRINT#1,C
155 C=C+1
160 NEXT X2
170 NEXT Y2
180 PSET(180,200)
190 PRINT#1,"15:WHITE"
200 A$=INPUT$(1)
210 END