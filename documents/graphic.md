# 화면 출력 및 그리기 관련 명령들

## COLOR

```
COLOR <ForegroundColor>,<BackgroundColor>,<BorderColor>
```

## SCREEN

- <https://www.msx.org/wiki/SCREEN>

```
screen 1, 2 
```

### screen 12



### 스프라이트 모드

```
0: Sprite size is 8 by 8 pixels (default value)
1: Sprite size is 8 by 8 pixels, magnified to 16 by 16 pixels
2: Sprite size is 16 by 16 pixels
3: Sprite size is 16 by 16 pixels, magnified to 32 by 32 pixels
```

## PUT SPRITE

- <https://www.msx.org/wiki/PUT_SPRITE>
-  Note that the maximum of sprites on the same horizontal line is limited to 4 on screens 1 to 3, to 8 on screens 4 to 8 and 10 to 12.

```
PUT SPRITE <SpriteNumber>,STEP(<X>,<Y>),<Color>,<PatternNumber>
```

## CIRCLE

- 동그라미를 그리는 명령
- https://www.msx.org/wiki/CIRCLE

## LINE

- 선을 그리는 명령

```basic
LINE STEP(<X1>,<Y1>)-STEP(<X2>,<Y2>),<Color>,<Shape>,<Operator>
LINE -STEP(<X2>,<Y2>),<Color>,<Shape>,<Operator>
```

## PAINT

- 색을 칠하는 명령


## 스프라이트 에디터

- http://msx.jannone.org/tinysprite/tinysprite.html
