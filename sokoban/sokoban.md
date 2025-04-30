# MSX BASIC SOKOBAN

## 키 입력 확인하기

https://www.msx.org/wiki/INKEY$

### 구현할 내용

화살표 키 - 이동
스페이스 - 되돌리기
F1 - 처음부터

keytest.bas로 누른 키의 아스키값 확인

```basic
5 REM MSX BASIC SPECIAL KEY CODE TEST
10 A$=INKEY$
30 PRINT "YOU PRESS ";ASC(A$)
40 IF A$="q" THEN END
50  GOTO 10
```

