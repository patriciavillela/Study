.export Main
.segment "CODE"

; argument stack is on $0000-$0001
; capsule table is on $0002-$0003
; player table is on $0004-$0005
pickup:
    ldy $0001 ; capsule type
    cpy #0
    bne :+

    ; if capsule is of type health
    lda $0004
    clc
    adc $0000 ; add capsule amount
    sta $0004
    rts

:   lda $0005
    clc
    adc $0000
    sta $0005
    rts

.proc Main
    ; initialize capsule data
    lda #10 ; small capsule
    sta $0002

    lda #30 ; large capsule
    sta $0003

    ; initialize player data
    lda #50 ; health
    sta $0004

    lda #30 ; weapon amount
    sta $0005

    ; pickup small health capsule
    lda #0
    sta $0001
    lda $0002
    sta $0000
    jsr pickup

    ; pickup large health capsule
    lda #0
    sta $0001
    lda $0003
    sta $0000
    jsr pickup

    ; pickup small weapon capsule
    lda #1
    sta $0001
    lda $0002
    sta $0000
    jsr pickup

    ; pickup large weapon capsule
    lda #1
    sta $0001
    lda $0003
    sta $0000
    jsr pickup

    rts
.endproc