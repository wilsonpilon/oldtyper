org $8000
  ld bc, STRING

LOOP
  ld a, (bc)
  cp 0
  jr z, EXIT
  rst $10
  inc bc
  jr LOOP

EXIT
  ret

STRING
  defb "Hello World!"
  defb 13, 0