Check B64E12A0
Auto 8224

# Run-time Variables

Var s: Num = 54
Var c: Num = 252
Var l: Num = 146
Var f: Num = 22
Var a: Num = 176
Var rr: Num = 39
Var ro: Num = 1
Var dp: Num = 0
Var re: Num = 0
Var l: NumArray(2) = 3, 18
Var c: NumArray(2) = 19, 15
Var x: NumFOR = 16, 15, 1, 6000, 2
Var q: NumFOR = 51, 50, 1, 4, 2
Var r: NumFOR = 8, 7, 1, 5, 3
Var a$: Str = " \a "
Var b$: Str = " \b "

# End Run-time Variables

   1 GO SUB 4000
   2 GO SUB 6000
   3 LET rr=39: PAPER 0: BORDER 1: INK 7: CLS
   4 FOR q=1 TO 50: LET c=INT (RND*255)+1: LET l=INT (RND*175)+1: PLOT INK 6; BRIGHT 1;c,l: NEXT q
   5 LET ro=1: FOR r=1 TO 7: CIRCLE 24,164,r: NEXT r
   6 LET dp=0: LET re=0: PRINT ; INK 6;AT 20,2; BRIGHT 1;"Disparo N.=>";dp;"  ";AT 21,2;"Recolhidos =>";dp;"  ";AT 20,20;"Rodada:"; INVERSE 1;ro: INVERSE 0
   7 IF rr<4 THEN LET rr=39
   8 LET a$=" \a ": LET b$=" \b ": DIM l(2): DIM c(2): LET l(1)=3: LET l(2)=18: LET c(1)=16: LET c(2)=16
   9 REM Salvador Rubens Marinho (08/85) 16Kb TK90x
  10 PLOT 0,20: DRAW 255,0: DRAW 0,(175-20): DRAW -255,0: DRAW 0,(20-175)
  12 LET f=INT (RND*rr)+1: PRINT AT l(2),c(2);" ": LET c(2)=INT (RND*30)+1: IF c(2)<2 OR c(2)>28 THEN GO TO 12
  14 LET a=0
  20 IF c(1)<2 THEN LET c(1)=2
  25 IF c(1)>28 THEN LET c(1)=28
  30 PRINT BRIGHT 1; INK 6;AT l(1),c(1);a$
  40 IF INKEY$="6" THEN LET c(1)=c(1)-1: BEEP .013,39
  50 IF INKEY$="7" THEN LET c(1)=c(1)+1: BEEP .013,39
  60 IF INKEY$="0" THEN GO SUB 1000
  70 LET a=a+1
  75 PRINT INK 7; BRIGHT 1;AT l(2),c(2);b$
 100 GO TO 20
3000 LIST
4000 RETURN
6000 FOR x=0 TO 15: READ s: POKE USR "a"+x,s: NEXT x
6010 DATA 36,24,60,126,102,255,255,66,152,83,60,16,40,40,40,54: RETURN
6050 SAVE "resgate" LINE 1
