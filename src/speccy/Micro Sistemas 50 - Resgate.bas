Check 54EF5ACD
Auto 8224

# Run-time Variables

Var s: Num = 54
Var c: Num = 94
Var l: Num = 87
Var f: Num = 10
Var a: Num = 2
Var rr: Num = 39
Var ro: Num = 1
Var dp: Num = 13
Var re: Num = 3
Var l: NumArray(2) = 3, 18
Var c: NumArray(2) = 9, 5
Var x: NumFOR = 16, 15, 1, 6000, 2
Var q: NumFOR = 51, 50, 1, 4, 2
Var r: NumFOR = 8, 7, 1, 5, 3
Var n: NumFOR = 3, 4, -1, 2000, 3
Var a$: Str = " \a "
Var b$: Str = " \b "

# End Run-time Variables

   1 GO SUB 4000
   2 GO SUB 6000
   3 LET rr=39: PAPER 0: BORDER 1: INK 7: CLS
   4 FOR q=1 TO 50: LET c=INT (RND*255)+1: LET l=INT (RND*175)+1: PLOT INK 6; BRIGHT 1;c,l: NEXT q
   5 LET ro=1: FOR r=1 TO 7: CIRCLE 24,164,r: NEXT r
   6 LET dp=0: LET re=0: PRINT ; INK 6;AT 20,2; BRIGHT 1;"Disparo N.=>";dp;"  ";AT 21,2;"Recolhidos=>";dp;"  ";AT 20,20;"Rodada:"; INVERSE 1;ro: INVERSE 0
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
  70 LET a=a+1: IF a=f THEN PRINT AT l(2),c(2);"  ": GO TO 12
  75 PRINT INK 7; BRIGHT 1;AT l(2),c(2);b$
 100 GO TO 20
1000 PLOT OVER 1;c(1)*8+12,144: DRAW BRIGHT 1; OVER 1;0,(58-175): PAUSE 18: PLOT OVER 1;c(1)*8+12,144: DRAW OVER 1; INK 0;0,(58-175)
1005 LET dp=dp+1: PRINT INK 6; BRIGHT 1;AT 20,14;dp
1010 BEEP .025,0: LET c=INT (RND*255)+1: LET l=INT (RND*175)+1: PLOT BRIGHT 1;c,l
1020 IF c(1)=c(2) THEN GO TO 2000
1028 IF dp=100 AND re<25 THEN GO TO 3000
1030 RETURN
2000 BEEP .8,-30: FOR n=l(2) TO l(1)+1 STEP -1: PRINT BRIGHT 1;AT n,c(1)+1;"\b": BEEP .025,2: PRINT AT n,c(1)+1;" ": NEXT n: LET re=re+1: PRINT INK 6; BRIGHT 1;AT 21,15;re
2020 GO TO 12
2030 IF re=25 THEN LET ro=ro+1
2035 IF re=25 THEN LET ro=ro-5
2040 IF re=25 THEN PRINT INK 0;AT l(1),c(1);"   ": GO TO 6
3000 PRINT AT 6,0; INVERSE 1;" Voce chegou na rodada n.";ro,: PRINT FLASH 1;ro;: PRINT AT 7,0; INVERSE 1;" mas, nesta rodada nao resgatou  25 companheiros",''' FLASH 1;"       Novamente ? (s/n)",
3010 IF INKEY$="s" THEN BEEP s,-28: RUN 3
3020 IF INKEY$="n" THEN STOP
3030 GO TO 3010
4000 BORDER 6: PAPER 0: INK 6: CLS : PRINT AT 1,0; INVERSE 1;"        Operacao Resgate        "
4010 BRIGHT 1: PRINT '"    Voce esta no comando de uma  nave de resgate. Sua missao e'  recolher seus companheiros com  raios de tracao."''
4020 PRINT "    Apos 25 resgates, iniciara'  uma nova rodade, mas se em 100  disparos voce nao conseguir os  25 salvamentos, a missao sera'  encerrada."
4030 PRINT '"    Use joystick ou teclado :"''"  <6>  para a esquerda"'"  <7>  para a direita"'"  <0>  dispara."'' INVERSE 1; FLASH 1;"   pressione qualquer tecla     ": PAUSE 0: RETURN
6000 FOR x=0 TO 15: READ s: POKE USR "a"+x,s: NEXT x
6010 DATA 36,24,60,126,102,255,255,66,152,83,60,16,40,40,40,54: RETURN
6050 SAVE "resgate" LINE 1
9990 FOR n=0 TO 10000: NEXT n
