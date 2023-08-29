.export Main
.segment "CODE"

.proc Main
  lda #25
  sta $00
  lda #20
  sta $01
  lda #0
  sta $02

  lda $01
  cmp $00
  bcc not_lethal

  lda #1
  sta $01

not_lethal:
  rts
  
.endproc