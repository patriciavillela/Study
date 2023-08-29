.segment "HEADER"
  ; .byte "NES", $1A      ; iNES header identifier
  .byte $4E, $45, $53, $1A
  .byte 2               ; 2x 16KB PRG code
  .byte 1               ; 1x  8KB CHR data
  .byte $01, $00        ; mapper 0, vertical mirroring

.export Main
.segment "CODE"

.proc Main
    ldx #5
    ldy #5

    inx
    inx

    dex

    dey
    dey
    iny

    rts
.endproc