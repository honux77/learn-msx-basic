10 CLS:SCREEN 2: COLOR 15,4,12
20 OPEN "GRP:"AS#1
30 c = 0
40 FOR Y = 0 TO 32 STEP 32
50 FOR X = 0 TO 224 STEP 32
60 line (X,Y)-(X+32,Y+32),C,B
70 PAINT(X+10,Y+10),C
72 PSET(X+8,Y+10),C: PRINT#1,C
80 c = c + 1
90 if c > 15 then c=0
100 next X
110 next Y
120 FOR X = 0 TO 256 STEP 32 
130 LINE (X,0)-(X,192)
140 NEXT X
150 FOR Y = 0 TO 192 STEP 32
160 LINE (0,Y)-(256,Y)
170 NEXT Y
180 CIRCLE(128,96),64,15
190 CIRCLE(32,32),32,15
200 CIRCLE(224,32),32,15
210 CIRCLE(32,160),32,15
220 CIRCLE(224,160),32,15
230 CIRCLE(16,80),16,15
240 CIRCLE(16,112),16,15
250 CIRCLE(48,96),16,15
260 CIRCLE(208,96),16,15
270  CIRCLE(240,80),16,15
280  CIRCLE(240,112),16,15

900 PSET(82,174): PRINT#1,"PRESS ANY KEY"
910 Z$=INPUT$(1)
920 REM 2022 HONUX
930 END
 