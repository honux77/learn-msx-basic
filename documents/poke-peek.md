# POKE, PEEK, VPOKE, VPEEK

- MSX 베이식에서 가장 이해하기 어려웠던 명령들
- 근데 사실은 그냥 메모리에 값을 쓰는 명령이다.

## POKE

- (https://www.msx.org/wiki/POKE)

```asm
POKE <address>,<value>
```

- <address> must be in the range -32768 to 65535.
- If <address> is negative the binary complement is used. This means POKE-1,0=POKE(65536-1),0.
- <value> is a decimal number between 0 and 255. It can also be a numeric expression.


## PEEK

- POKE와 반대로 값을 읽는 명령

## VPOKE, VPEEK

- <https://www.msx.org/wiki/VPOKE>
- PEEK, POKE와 유사하게 VRAM에서 값을 읽고 쓰는 명령

## 예제 코드

```
10 POKE 60000, 11
20 PRINT PEEK(60000)
RUN
11
```
