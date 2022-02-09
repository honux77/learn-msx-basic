10 color 1,15,14;screen 10
20 for i = 0 to 100
30 x=int(rnd(1)*256)
40 y=int(rnd(1)*212)
50 c=int(rnd(1)*256)
60 pset(x,y),c
70 next i
80 goto 80
