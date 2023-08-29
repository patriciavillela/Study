.export Main
.segment "CODE"

initial_monster_hp:
    .byte 80, 35, 75, 90, 180, 0, 15, 50

.proc Main
    ldx #7
initialize_hp_loop:
    lda initial_monster_hp, x
    sta $0300, x
    dex
    bpl initialize_hp_loop

    ldx #0
multi_attack_loop:
    lda $0300, x
    sec
    sbc #50

    bpl :+
    lda #0
:   sta $0300, x
    inx
    cpx #8
    bne multi_attack_loop

    rts
.endproc