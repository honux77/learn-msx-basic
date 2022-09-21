100 REM ----------------------------
110 REM
120 REM  CAPPUI LIFTER
130 REM
140 REM ----------------------------
150 REM
160 SCREEN 1,2:KEY OFF
170 LOCATE 0,21:PRINT "SCORE:"
180 LOCATE 0,22:PRINT "MISSILE LEFT:30"
190 FOR J=0 TO 3
200 FOR I=1 TO 32
210 READ A$:B$=B$+CHR$(VAL("&H"+A$))
220 NEXT I:SPRITE$(J)=B$
230 B$="":NEXT J
240 SPRITE ON
250 STRIG(0) ON
260 ON SPRITE GOSUB 640
270 ON STRIG GOSUB 510
280 X=200:Y=50:X1=150:Y1=200
290 MI=30
300 RESTORE 1230:FOR I=0 TO 13
310 READ D:SOUND I,D:NEXT I
320 REM
330 REM MOVE HERI
340 REM
350 IF X=0 THEN Y=INT(RND(.5)*100):X=250
360 PUT SPRITE 0,(X,Y),11,0
370 X=X-1
380 IF MI<0 THEN GOTO 930
390 IF H=0 THEN GOTO 330
400 PUT SPRITE 1,(X1,Y1),13,3
410 IF STICK(0)=7 THEN X1=X1-1
420 IF STICK(0)=3 THEN X1=X1+1
430 Y1=Y1-1
440 IF Y1>0 THEN GOTO 330
450 PUT SPRITE 1,(X1,209),13,3:STRIG(0) ON
460 IF MI=0 THEN GOTO 930
470 X1=150:Y1=200:H=0
480 SPRITE ON
490 GOTO 330
500 REM
510 REM MISSILE ON
520 REM
530 IF MI=0 THEN STRIG(0) OFF
540 H=1:MI=MI-1
550 LOCATE 0,22:PRINT "MISSLE LEFT:";MI;"  "
560 SPRITE ON:STRIG(0) OFF
570 RESTORE 1270:FOR I=0 TO 13
580 READ D:SOUND I,D:NEXT I
590 FOR I=1 TO 200:NEXT I
600 RESTORE 1230:FOR I=0 TO 13
610 READ D: SOUND I,D:NEXT I
620 RETURN
630 REM
640 REM
650 REM
660 PUT SPRITE 0,(X,209),11,0
670 PUT SPRITE 1,(X,209),13,3
680 PUT SPRITE 0,(X,Y),6,1
690 RESTORE 1250:FOR I=0 TO 13
700 READ D:SOUND I,D:NEXT I
710 SPRITE OFF
720 FOR I=1 TO 400:NEXT I
730 RESTORE 1290
740 FOR I=0 TO 13:READ D:SOUND I,D:NEXT I
750 FOR I=Y TO 200
760 SOUND 0,I+10
770 PUT SPRITE 1,(X,I),15,2
780 NEXT I
790 RESTORE 1310
800 FOR I=0 TO 13:READ D:SOUND I,D:NEXT I
810 FOR I=1 TO 100:NEXT I
820 PUT SPRITE 0,(X,209),6,1
830 PUT SPRITE 1,(X,209),15,2
840 H=0:X1=150:Y1=200
850 SC=SC+(100-INT(Y/10)*10)
860 LOCATE 5,21:PRINT SC
870 RESTORE 1230:FOR I=0 TO 13
880 READ D:SOUND I,D:NEXT I
890 STRIG(0) ON
900 IF MI=0 THEN 950
910 RETURN
920 REM
930 REM SUB
940 REM
950 KEY 5,"RUN"+CHR$(13)
960 FOR I=0 TO 13:SOUND I,0
970 NEXT I:LOCATE 8,10
980 PRINT "GAME OVER!!"
990 LOCATE 5,12:PRINT "<AGAIN?(YES-(F5)>"
1000 PRINT CHR$(11)
1010 END
1020 REM
1030 DATA 00,00,00,FF,02,0F,13,23
1040 DATA 4B,9B,8B,FF,7F,12,92,7F
1050 DATA 00,00,00,FE,00,00,80,C0
1060 DATA C7,FD,FD,87,00,00,00,E0
1070 REM
1080 DATA 18,7B,2E,C7,9F,67,45,CF
1090 DATA 9F,0D,1B,6C,8E,C1,01,00
1100 DATA C6,AD,F9,70,F8,F0,FC,BB
1110 DATA F8,EC,06,CB,75,A8,54,A0
1120 REM
1130 DATA 00,04,04,04,04,07,07,07
1140 DATA 0F,12,27,27,27,00,00,00
1150 DATA 00,40,40,40,80,00,00,00
1160 DATA 80,40,20,20,20,00,00,00
1170 REM
1180 DATA 04,04,04,04,04,04,04,04
1190 DATA 0E,1F,1F,04,00,00,00,00
1200 DATA 00,00,00,00,00,00,00,00
1210 DATA 00,00,00,00,00,00,00,00
1220 REM
1230 DATA 0,0,24,0,0,0,27,69,16,16,0,133,1,12
1240 REM
1250 DATA 111,2,24,0,0,0,20,55,16,0,0,239,60,9
1260 REM
1270 DATA 155,0,124,0,49,0,23,46,16,16,16,59,15,15
1280 REM
1290 DATA 55,0,0,0,0,0,0,62,10,0,0,0,0,0
1300 REM
1310 DATA 255,150,0,0,0,0,0,54,16,0,0,10,11,9
