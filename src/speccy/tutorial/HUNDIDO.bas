Check ADCBB555
Auto 8224

# Run-time Variables

Var a$: Str = "AAAAA"

# End Run-time Variables

  10 REM **********************
  15 REM **** J.M.Mayoral  ****
  20 REM **********************
  25 POKE 23658,8
  30 DIM C(12,12): DIM S(12,12)
  40 GO TO 1800
  45 GO SUB 590
 590 LET A$="abcdefghijkl"
 595 RESTORE 600
 600 DATA 32,50,57,60,63,59,63,62
 605 DATA 0,0,0,160,225,195,138,221
 610 DATA 16,56,124,252,248,248,240,240
 615 DATA 31,15,7,3,1,0,0,0
