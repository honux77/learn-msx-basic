1 REM KIRBY SIGN BY HODOC
2 SCREEN 1:COLOR 15,4,7: CLS
3 PRINT "***********************"
4 PRINT "* SIMPLE KIRBY DRAW   *"
5 PRINT "*            BY HODOL *"
6 PRINT "*  (CAPTURE: ALT + G) *"
7 PRINT "***********************"
8 INPUT "INPUT MAX NUM AND ENTER "; A
9 N=INT(RND(-TIME)*A+1)
15 SCREEN 4,3,0: color 1,15,14: CLS
20 REM color 1
30 DATA 00,00,00,00,07,78,80,80
40 DATA 80,80,80,80,80,80,80,80
50 DATA 00,00,01,3E,C0,00,00,00
60 DATA 00,00,00,00,00,00,00,00
70 REM color 14
80 DATA 00,00,00,00,08,84,00,00
90 DATA 00,00,00,00,00,00,00,00
100 DATA 00,00,02,41,20,00,00,00
110 DATA 00,00,00,00,00,00,00,00
120 REM 
130 REM --- wood 2
140 REM color 1
150 DATA 00,0F,F0,00,00,00,00,00
160 DATA 00,00,00,00,00,00,00,00
170 DATA 7E,83,03,03,03,03,03,03
180 DATA 03,03,03,03,03,03,03,03
190 REM color 14
200 DATA 00,10,08,00,00,00,00,00
210 DATA 00,00,00,00,00,00,00,00
220 DATA 81,44,00,00,00,00,00,00
230 DATA 00,00,00,00,00,00,00,00
240 REM 
250 REM --- kirby 1
260 REM color 1
270 DATA 80,80,80,80,87,7F,38,00
280 DATA 00,00,00,00,00,00,00,00
290 DATA 00,00,01,3F,FE,C4,04,04
300 DATA 05,3A,44,48,08,80,80,80
310 REM color 14
320 DATA 00,00,00,03,78,80,44,00
330 DATA 00,00,00,00,00,00,00,00
340 DATA 00,00,1E,C0,01,21,01,01
350 DATA 02,05,28,00,C0,08,10,10
360 REM 
370 REM --- Kirby 2
380 REM color 1
390 DATA 00,0F,FF,F0,80,80,80,FE
400 DATA 81,00,00,00,22,22,22,22
410 DATA 7E,FC,80,00,00,00,00,00
420 DATA 80,60,10,08,04,04,02,02
430 REM color 14
440 DATA 07,F0,00,08,00,00,00,00
450 DATA 00,00,00,00,00,00,00,00
460 DATA 81,02,40,00,00,00,00,00
470 DATA 40,80,20,10,08,02,04,01
480 REM 
490 REM --- Kirby 3
500 REM color 1
510 DATA 00,00,00,00,00,00,00,00
520 DATA 00,00,00,00,00,00,00,00
530 DATA 80,80,80,80,80,80,40,40
540 DATA 40,20,20,10,78,86,83,FF
550 REM color 14
560 DATA 00,00,00,00,00,00,00,00
570 DATA 00,00,00,00,00,00,00,00
580 DATA 00,00,00,00,40,40,00,20
590 DATA 20,00,10,08,04,79,7C,00
600 REM 
610 REM --- kirby 4
620 REM color 1
630 DATA 22,00,00,00,00,08,00,00
640 DATA 00,00,00,00,00,00,81,FF
650 DATA 01,01,01,01,01,01,11,12
660 DATA 0E,04,04,08,1E,61,C1,7F
670 REM color 14
680 DATA 00,00,00,00,00,00,00,00
690 DATA 00,00,00,00,00,00,7E,00
700 DATA 02,00,00,08,10,10,02,0C
710 DATA 00,00,00,00,00,1E,3E,00
720 DATA *
730 GOSUB 1000
740 X=96:S=32:T=0
750 FOR Y=32 TO 96 STEP 32
760 GOSUB 900
765 T=T+4
770 NEXT Y
800 OPEN "GRP:"AS#1
810 PSET(100,52)
820 PRINT #1,"Win";N
830 pset(70,140)
840 print #1,"PRESS ANY KEY..."
850 Z$=INPUT$(1)
860 END
900 REM -- DRAW 2
910 PUT SPRITE T,(X,Y),1,T:PUT SPRITE T+1,(X,Y),14,T+1
920 PUT SPRITE T+2,(X+S,Y),1,T+2:PUT SPRITE T+3,(X+S,Y),14,T+3
930 RETURN
1000 REM -- LOAD SPRITES
1010 S=BASE(9)
1020 READ R$: IF R$="*" THEN RETURN ELSE VPOKE S,VAL("&H"+R$):S=S+1:GOTO 1020