
10 REM -- HELLO KIRBY BY HOBAK
15 SCREEN 1,3,0: CLS: COLOR 1,15,14
20 SN=0:SX=10:SY=30
30 LOCATE 8, 1:? "HELLO, KIRBY"
110 ' --- Slot 2
120 ' color 1
130 DATA 03,0C,10,20,20,40,80,80,80,80,48,38,1C,23,41,3E
140 DATA E0,18,04,04,02,52,51,51,01,01,25,06,0C,F2,E1,3E
150 ' color 14
160 DATA 00,02,08,10,00,00,40,00,08,48,24,04,03,1C,3E,00
170 DATA 00,20,08,00,04,04,00,00,04,04,02,00,30,0C,1E,00
180 DATA *
190 GOSUB 1000
200 FOR I=0 TO 200
210 SX = SX + 1
220 GOSUB 500
230 NEXT I
350 GOTO 350
500 REM -- DRAW
510 PUT SPRITE SN,(SX,SY),1,SN:PUT SPRITE SN+1,(SX,SY),14,SN+1
520 RETURN
1000 REM -- LOAD SPRITES
1010 S=BASE(9)
1020 READ R$: IF R$="*" THEN RETURN ELSE VPOKE S,VAL("&H"+R$):S=S+1:GOTO 1020
