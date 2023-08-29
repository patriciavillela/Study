.export Main
.segment "CODE"

.proc Main
    ; loads 0 to $00. This will become 1
    lda #%00000000
    sta $00

    ; loads 1 to $00. This will become 0
    lda #%00000001
    sta $01

    ; flips $00
    lda #%00000001
    eor $00
    sta $00

    ; flips $01
    lda #%00000001
    eor $01
    sta $01

    rts
.endproc