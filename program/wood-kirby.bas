1 REM WOOD KIRBY BY HODOC
10 ' --- wood 1
15 SCREEN 4,3,0: color 1,15,3: CLS
20 ' color 1
30 DATA &H00,&H00,&H00,&H00,&H07,&H78,&H80,&H80
40 DATA &H80,&H80,&H80,&H80,&H80,&H80,&H80,&H80
50 DATA &H00,&H00,&H01,&H3E,&HC0,&H00,&H00,&H00
60 DATA &H00,&H00,&H00,&H00,&H00,&H00,&H00,&H00
70 ' color 14
80 DATA &H00,&H00,&H00,&H00,&H08,&H84,&H00,&H00
90 DATA &H00,&H00,&H00,&H00,&H00,&H00,&H00,&H00
100 DATA &H00,&H00,&H02,&H41,&H20,&H00,&H00,&H00
110 DATA &H00,&H00,&H00,&H00,&H00,&H00,&H00,&H00
120 ' 
130 ' --- wood 2
140 ' color 1
150 DATA &H00,&H0F,&HF0,&H00,&H00,&H00,&H00,&H00
160 DATA &H00,&H00,&H00,&H00,&H00,&H00,&H00,&H00
170 DATA &H7E,&H83,&H03,&H03,&H03,&H03,&H03,&H03
180 DATA &H03,&H03,&H03,&H03,&H03,&H03,&H03,&H03
190 ' color 14
200 DATA &H00,&H10,&H08,&H00,&H00,&H00,&H00,&H00
210 DATA &H00,&H00,&H00,&H00,&H00,&H00,&H00,&H00
220 DATA &H81,&H44,&H00,&H00,&H00,&H00,&H00,&H00
230 DATA &H00,&H00,&H00,&H00,&H00,&H00,&H00,&H00
240 ' 
250 ' --- kirby 1
260 ' color 1
270 DATA &H80,&H80,&H80,&H80,&H87,&H7F,&H38,&H00
280 DATA &H00,&H00,&H00,&H00,&H00,&H00,&H00,&H00
290 DATA &H00,&H00,&H01,&H3F,&HFE,&HC4,&H04,&H04
300 DATA &H05,&H3A,&H44,&H48,&H08,&H80,&H80,&H80
310 ' color 14
320 DATA &H00,&H00,&H00,&H03,&H78,&H80,&H44,&H00
330 DATA &H00,&H00,&H00,&H00,&H00,&H00,&H00,&H00
340 DATA &H00,&H00,&H1E,&HC0,&H01,&H21,&H01,&H01
350 DATA &H02,&H05,&H28,&H00,&HC0,&H08,&H10,&H10
360 ' 
370 ' --- Kirby 2
380 ' color 1
390 DATA &H00,&H0F,&HFF,&HF0,&H80,&H80,&H80,&HFE
400 DATA &H81,&H00,&H00,&H00,&H22,&H22,&H22,&H22
410 DATA &H7E,&HFC,&H80,&H00,&H00,&H00,&H00,&H00
420 DATA &H80,&H60,&H10,&H08,&H04,&H04,&H02,&H02
430 ' color 14
440 DATA &H07,&HF0,&H00,&H08,&H00,&H00,&H00,&H00
450 DATA &H00,&H00,&H00,&H00,&H00,&H00,&H00,&H00
460 DATA &H81,&H02,&H40,&H00,&H00,&H00,&H00,&H00
470 DATA &H40,&H80,&H20,&H10,&H08,&H02,&H04,&H01
480 ' 
490 ' --- Kirby 3
500 ' color 1
510 DATA &H00,&H00,&H00,&H00,&H00,&H00,&H00,&H00
520 DATA &H00,&H00,&H00,&H00,&H00,&H00,&H00,&H00
530 DATA &H80,&H80,&H80,&H80,&H80,&H80,&H40,&H40
540 DATA &H40,&H20,&H20,&H10,&H78,&H86,&H83,&HFF
550 ' color 14
560 DATA &H00,&H00,&H00,&H00,&H00,&H00,&H00,&H00
570 DATA &H00,&H00,&H00,&H00,&H00,&H00,&H00,&H00
580 DATA &H00,&H00,&H00,&H00,&H40,&H40,&H00,&H20
590 DATA &H20,&H00,&H10,&H08,&H04,&H79,&H7C,&H00
600 ' 
610 ' --- kirby 4
620 ' color 1
630 DATA &H22,&H00,&H00,&H00,&H00,&H08,&H00,&H00
640 DATA &H00,&H00,&H00,&H00,&H00,&H00,&H81,&HFF
650 DATA &H01,&H01,&H01,&H01,&H01,&H01,&H11,&H12
660 DATA &H0E,&H04,&H04,&H08,&H1E,&H61,&HC1,&H7F
670 ' color 14
680 DATA &H00,&H00,&H00,&H00,&H00,&H00,&H00,&H00
690 DATA &H00,&H00,&H00,&H00,&H00,&H00,&H7E,&H00
700 DATA &H02,&H00,&H00,&H08,&H10,&H10,&H02,&H0C
710 DATA &H00,&H00,&H00,&H00,&H00,&H1E,&H3E,&H00
720 DATA *
730 GOSUB 10000
740 X=96:S=32:T=0
750 FOR Y=32 TO 96 STEP 32
760 GOSUB 900
765 T=T+4
770 NEXT Y
800 OPEN "GRP:"AS#1
810 PSET(105,52)
820 PRINT#1,"HELLO!"
850 GOTO 850
900 REM -- DRAW 2
910 PUT SPRITE T,(X,Y),1,T:PUT SPRITE T+1,(X,Y),14,T+1
920 PUT SPRITE T+2,(X+S,Y),1,T+2:PUT SPRITE T+3,(X+S,Y),14,T+3
930 RETURN
10000 REM -- LOAD SPRITES
10010 S=BASE(9)
10020 READ R$: IF R$="*" THEN RETURN ELSE VPOKE S,VAL(R$):S=S+1:GOTO 10020
