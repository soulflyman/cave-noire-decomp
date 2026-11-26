; Disassembly of "Cave Noire (Japan).gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $001", ROMX[$4000], BANK[$1]

    dec l                                         ; $4000: $2d
    rst RST_28                                    ; $4001: $ef
    ld a, [hl]                                    ; $4002: $7e
    bit 7, a                                      ; $4003: $cb $7f
    jr z, jr_001_400c                             ; $4005: $28 $05

    ld hl, $c261                                  ; $4007: $21 $61 $c2
    set 1, [hl]                                   ; $400a: $cb $ce

jr_001_400c:
    inc bc                                        ; $400c: $03
    inc bc                                        ; $400d: $03
    ld a, [bc]                                    ; $400e: $0a
    bit 7, a                                      ; $400f: $cb $7f
    jr nz, jr_001_4021                            ; $4011: $20 $0e

    ld hl, $2d8b                                  ; $4013: $21 $8b $2d
    rst RST_28                                    ; $4016: $ef
    ld a, [hl]                                    ; $4017: $7e
    bit 7, a                                      ; $4018: $cb $7f
    jr z, jr_001_4021                             ; $401a: $28 $05

    ld hl, $c261                                  ; $401c: $21 $61 $c2
    set 0, [hl]                                   ; $401f: $cb $c6

jr_001_4021:
    ld a, [$c261]                                 ; $4021: $fa $61 $c2
    ld hl, $402d                                  ; $4024: $21 $2d $40
    rst RST_28                                    ; $4027: $ef
    ld a, [hl]                                    ; $4028: $7e
    dec bc                                        ; $4029: $0b
    ld [bc], a                                    ; $402a: $02
    jr jr_001_4073                                ; $402b: $18 $46

    add hl, bc                                    ; $402d: $09
    ld h, $27                                     ; $402e: $26 $27
    inc h                                         ; $4030: $24
    xor a                                         ; $4031: $af
    ld [$c261], a                                 ; $4032: $ea $61 $c2
    ld a, [$c262]                                 ; $4035: $fa $62 $c2
    call Call_000_2ef1                            ; $4038: $cd $f1 $2e
    ld a, $20                                     ; $403b: $3e $20
    rst RST_20                                    ; $403d: $e7
    ld a, [bc]                                    ; $403e: $0a
    bit 7, a                                      ; $403f: $cb $7f
    jr nz, jr_001_4051                            ; $4041: $20 $0e

    ld hl, $2d8b                                  ; $4043: $21 $8b $2d
    rst RST_28                                    ; $4046: $ef
    ld a, [hl]                                    ; $4047: $7e
    bit 7, a                                      ; $4048: $cb $7f
    jr z, jr_001_4051                             ; $404a: $28 $05

    ld hl, $c261                                  ; $404c: $21 $61 $c2
    set 0, [hl]                                   ; $404f: $cb $c6

jr_001_4051:
    ld a, $40                                     ; $4051: $3e $40
    rst RST_38                                    ; $4053: $ff
    ld a, [bc]                                    ; $4054: $0a
    bit 7, a                                      ; $4055: $cb $7f
    jr nz, jr_001_4067                            ; $4057: $20 $0e

    ld hl, $2d8b                                  ; $4059: $21 $8b $2d
    rst RST_28                                    ; $405c: $ef
    ld a, [hl]                                    ; $405d: $7e
    bit 7, a                                      ; $405e: $cb $7f
    jr z, jr_001_4067                             ; $4060: $28 $05

    ld hl, $c261                                  ; $4062: $21 $61 $c2
    set 1, [hl]                                   ; $4065: $cb $ce

jr_001_4067:
    ld a, $20                                     ; $4067: $3e $20
    rst RST_20                                    ; $4069: $e7
    ld a, [$c261]                                 ; $406a: $fa $61 $c2
    ld hl, $4086                                  ; $406d: $21 $86 $40
    rst RST_28                                    ; $4070: $ef
    ld a, [hl]                                    ; $4071: $7e
    ld [bc], a                                    ; $4072: $02

jr_001_4073:
    ld b, a                                       ; $4073: $47
    ld a, [$c500]                                 ; $4074: $fa $00 $c5
    ld c, a                                       ; $4077: $4f
    ld a, [$c262]                                 ; $4078: $fa $62 $c2
    cp c                                          ; $407b: $b9
    ret nz                                        ; $407c: $c0

    call Call_000_2ca5                            ; $407d: $cd $a5 $2c
    ld a, $43                                     ; $4080: $3e $43
    call Call_000_00d9                            ; $4082: $cd $d9 $00
    ret                                           ; $4085: $c9


    add hl, bc                                    ; $4086: $09
    jr z, jr_001_40b2                             ; $4087: $28 $29

    dec h                                         ; $4089: $25
    ld a, $01                                     ; $408a: $3e $01
    ld [$c267], a                                 ; $408c: $ea $67 $c2
    ld a, [$c500]                                 ; $408f: $fa $00 $c5
    ld hl, $c427                                  ; $4092: $21 $27 $c4
    cp [hl]                                       ; $4095: $be
    ld hl, $c428                                  ; $4096: $21 $28 $c4
    jr z, jr_001_409e                             ; $4099: $28 $03

    ld hl, $c427                                  ; $409b: $21 $27 $c4

jr_001_409e:
    ld a, [hl]                                    ; $409e: $7e
    ld [$c508], a                                 ; $409f: $ea $08 $c5
    ld hl, $206b                                  ; $40a2: $21 $6b $20
    call Call_000_041a                            ; $40a5: $cd $1a $04
    inc hl                                        ; $40a8: $23
    ld a, [hl+]                                   ; $40a9: $2a
    ld [$c202], a                                 ; $40aa: $ea $02 $c2
    ld a, [hl]                                    ; $40ad: $7e
    ld [$c203], a                                 ; $40ae: $ea $03 $c2
    ld b, a                                       ; $40b1: $47

jr_001_40b2:
    call Call_000_12e6                            ; $40b2: $cd $e6 $12
    call Call_000_2a92                            ; $40b5: $cd $92 $2a
    ld a, [$c508]                                 ; $40b8: $fa $08 $c5
    call Call_000_2db5                            ; $40bb: $cd $b5 $2d
    ld a, e                                       ; $40be: $7b
    ld [$c50b], a                                 ; $40bf: $ea $0b $c5
    ld a, d                                       ; $40c2: $7a
    ld [$c50c], a                                 ; $40c3: $ea $0c $c5
    ld a, [$c508]                                 ; $40c6: $fa $08 $c5
    call Call_001_57db                            ; $40c9: $cd $db $57
    ret nc                                        ; $40cc: $d0

    ld a, [$c508]                                 ; $40cd: $fa $08 $c5
    call Call_000_2ef1                            ; $40d0: $cd $f1 $2e
    ld a, [$c241]                                 ; $40d3: $fa $41 $c2
    cp $0b                                        ; $40d6: $fe $0b
    ret nz                                        ; $40d8: $c0

    xor a                                         ; $40d9: $af
    ld [$c267], a                                 ; $40da: $ea $67 $c2
    ret                                           ; $40dd: $c9


    ld a, $4a                                     ; $40de: $3e $4a
    call Call_000_00d9                            ; $40e0: $cd $d9 $00
    ld a, [$c267]                                 ; $40e3: $fa $67 $c2
    or a                                          ; $40e6: $b7
    ret nz                                        ; $40e7: $c0

    call Call_000_2ea0                            ; $40e8: $cd $a0 $2e
    ld a, [$c509]                                 ; $40eb: $fa $09 $c5
    ld [$c501], a                                 ; $40ee: $ea $01 $c5
    ld a, [$c50a]                                 ; $40f1: $fa $0a $c5
    ld [$c502], a                                 ; $40f4: $ea $02 $c5
    ld a, [$c50b]                                 ; $40f7: $fa $0b $c5
    ld [$c503], a                                 ; $40fa: $ea $03 $c5
    ld a, [$c50c]                                 ; $40fd: $fa $0c $c5
    ld [$c504], a                                 ; $4100: $ea $04 $c5
    ld a, [$c508]                                 ; $4103: $fa $08 $c5
    ld [$c500], a                                 ; $4106: $ea $00 $c5
    jp Jump_000_2e57                              ; $4109: $c3 $57 $2e


    call Call_000_32a3                            ; $410c: $cd $a3 $32
    call Call_000_32b2                            ; $410f: $cd $b2 $32
    ld a, [$c00f]                                 ; $4112: $fa $0f $c0
    and $40                                       ; $4115: $e6 $40
    ret z                                         ; $4117: $c8

    xor a                                         ; $4118: $af
    ld [$c25e], a                                 ; $4119: $ea $5e $c2
    call Call_001_4b95                            ; $411c: $cd $95 $4b
    ld a, $01                                     ; $411f: $3e $01
    ld [$c125], a                                 ; $4121: $ea $25 $c1
    ret                                           ; $4124: $c9


    ld a, [$c540]                                 ; $4125: $fa $40 $c5
    rst RST_00                                    ; $4128: $c7
    dec [hl]                                      ; $4129: $35
    ld b, c                                       ; $412a: $41
    ld b, c                                       ; $412b: $41
    ld b, c                                       ; $412c: $41
    ld l, e                                       ; $412d: $6b
    ld b, c                                       ; $412e: $41
    sub h                                         ; $412f: $94
    ld b, c                                       ; $4130: $41
    reti                                          ; $4131: $d9


    ld b, c                                       ; $4132: $41
    xor a                                         ; $4133: $af
    ld b, e                                       ; $4134: $43

Jump_001_4135:
jr_001_4135:
    xor a                                         ; $4135: $af
    ld [$c540], a                                 ; $4136: $ea $40 $c5
    jp Jump_000_348c                              ; $4139: $c3 $8c $34


Call_001_413c:
Jump_001_413c:
    ld hl, $c541                                  ; $413c: $21 $41 $c5
    inc [hl]                                      ; $413f: $34
    ret                                           ; $4140: $c9


    ld hl, $c542                                  ; $4141: $21 $42 $c5
    dec [hl]                                      ; $4144: $35
    jr nz, jr_001_414f                            ; $4145: $20 $08

    ld hl, $0000                                  ; $4147: $21 $00 $00
    call Call_000_0e42                            ; $414a: $cd $42 $0e
    jr jr_001_4135                                ; $414d: $18 $e6

jr_001_414f:
    ld a, [hl]                                    ; $414f: $7e
    and $07                                       ; $4150: $e6 $07
    ld hl, $415b                                  ; $4152: $21 $5b $41
    call Call_000_041a                            ; $4155: $cd $1a $04
    jp Jump_000_0e42                              ; $4158: $c3 $42 $0e


    cp $ff                                        ; $415b: $fe $ff
    ld [bc], a                                    ; $415d: $02
    ld bc, $fe01                                  ; $415e: $01 $01 $fe
    rst RST_38                                    ; $4161: $ff
    ld [bc], a                                    ; $4162: $02
    ld [bc], a                                    ; $4163: $02
    rst RST_38                                    ; $4164: $ff
    cp $ff                                        ; $4165: $fe $ff
    ld [bc], a                                    ; $4167: $02
    ld bc, $01fe                                  ; $4168: $01 $fe $01
    ld hl, $c541                                  ; $416b: $21 $41 $c5
    ld a, [hl+]                                   ; $416e: $2a
    or a                                          ; $416f: $b7
    jr nz, jr_001_4188                            ; $4170: $20 $16

    dec [hl]                                      ; $4172: $35
    ret nz                                        ; $4173: $c0

    dec hl                                        ; $4174: $2b
    inc [hl]                                      ; $4175: $34
    ld a, $54                                     ; $4176: $3e $54
    call Call_000_00d9                            ; $4178: $cd $d9 $00
    ld a, [$c510]                                 ; $417b: $fa $10 $c5
    rrca                                          ; $417e: $0f
    rrca                                          ; $417f: $0f
    ld [$c543], a                                 ; $4180: $ea $43 $c5
    ld a, $04                                     ; $4183: $3e $04
    jp Jump_000_0262                              ; $4185: $c3 $62 $02


jr_001_4188:
    ld a, [hl]                                    ; $4188: $7e
    cp $40                                        ; $4189: $fe $40
    ret c                                         ; $418b: $d8

    call Call_000_32a3                            ; $418c: $cd $a3 $32
    call Call_000_32b9                            ; $418f: $cd $b9 $32
    jr jr_001_4135                                ; $4192: $18 $a1

    ld a, [$c541]                                 ; $4194: $fa $41 $c5
    or a                                          ; $4197: $b7
    jr z, jr_001_41a7                             ; $4198: $28 $0d

    ld hl, $c542                                  ; $419a: $21 $42 $c5
    dec [hl]                                      ; $419d: $35
    ret nz                                        ; $419e: $c0

    ld a, [$c514]                                 ; $419f: $fa $14 $c5
    call Call_001_4ebc                            ; $41a2: $cd $bc $4e
    jr jr_001_4135                                ; $41a5: $18 $8e

jr_001_41a7:
    ld hl, $c542                                  ; $41a7: $21 $42 $c5
    dec [hl]                                      ; $41aa: $35
    jr nz, jr_001_41bd                            ; $41ab: $20 $10

    ld [hl], $18                                  ; $41ad: $36 $18
    xor a                                         ; $41af: $af
    ld [$c23d], a                                 ; $41b0: $ea $3d $c2
    inc a                                         ; $41b3: $3c
    ld [$c541], a                                 ; $41b4: $ea $41 $c5
    call Call_001_56d2                            ; $41b7: $cd $d2 $56
    jp Jump_001_4b95                              ; $41ba: $c3 $95 $4b


jr_001_41bd:
    ld a, [hl]                                    ; $41bd: $7e
    bit 1, a                                      ; $41be: $cb $4f
    ret z                                         ; $41c0: $c8

    ld hl, $c543                                  ; $41c1: $21 $43 $c5
    inc [hl]                                      ; $41c4: $34
    ld a, [hl]                                    ; $41c5: $7e
    cp $02                                        ; $41c6: $fe $02
    jr c, jr_001_41cc                             ; $41c8: $38 $02

    xor a                                         ; $41ca: $af
    ld [hl], a                                    ; $41cb: $77

jr_001_41cc:
    ld hl, $41d7                                  ; $41cc: $21 $d7 $41
    rst RST_28                                    ; $41cf: $ef
    ld a, [hl]                                    ; $41d0: $7e
    ld [$c23d], a                                 ; $41d1: $ea $3d $c2
    jp Jump_001_4b95                              ; $41d4: $c3 $95 $4b


    ld [hl], h                                    ; $41d7: $74
    ld [hl], b                                    ; $41d8: $70
    ld a, [$c541]                                 ; $41d9: $fa $41 $c5
    rst RST_00                                    ; $41dc: $c7
    di                                            ; $41dd: $f3
    ld b, c                                       ; $41de: $41
    add hl, hl                                    ; $41df: $29
    ld b, d                                       ; $41e0: $42
    ld b, l                                       ; $41e1: $45
    ld b, d                                       ; $41e2: $42
    ld d, [hl]                                    ; $41e3: $56
    ld b, d                                       ; $41e4: $42
    ld a, b                                       ; $41e5: $78
    ld b, d                                       ; $41e6: $42
    ld l, c                                       ; $41e7: $69
    ld b, d                                       ; $41e8: $42
    and a                                         ; $41e9: $a7
    ld b, d                                       ; $41ea: $42
    cp h                                          ; $41eb: $bc
    ld b, d                                       ; $41ec: $42
    add hl, bc                                    ; $41ed: $09
    ld b, e                                       ; $41ee: $43
    ld b, e                                       ; $41ef: $43
    ld b, e                                       ; $41f0: $43
    ld h, c                                       ; $41f1: $61
    ld b, e                                       ; $41f2: $43
    xor a                                         ; $41f3: $af
    ld [$c542], a                                 ; $41f4: $ea $42 $c5
    call Call_000_32a3                            ; $41f7: $cd $a3 $32
    call Call_000_32b2                            ; $41fa: $cd $b2 $32
    ld a, [$c521]                                 ; $41fd: $fa $21 $c5
    ld [$c256], a                                 ; $4200: $ea $56 $c2
    ld c, a                                       ; $4203: $4f
    ld a, [$c522]                                 ; $4204: $fa $22 $c5
    ld [$c257], a                                 ; $4207: $ea $57 $c2
    ld b, a                                       ; $420a: $47
    call Call_001_4c50                            ; $420b: $cd $50 $4c
    call Call_001_4382                            ; $420e: $cd $82 $43
    ld a, $0d                                     ; $4211: $3e $0d
    ld [$c253], a                                 ; $4213: $ea $53 $c2
    call Call_001_5614                            ; $4216: $cd $14 $56
    ld a, $40                                     ; $4219: $3e $40
    ld [$c543], a                                 ; $421b: $ea $43 $c5
    ld a, $20                                     ; $421e: $3e $20
    ld [$c03d], a                                 ; $4220: $ea $3d $c0
    call Call_000_33be                            ; $4223: $cd $be $33
    jp Jump_001_413c                              ; $4226: $c3 $3c $41


    ld hl, $c543                                  ; $4229: $21 $43 $c5
    ld a, [hl]                                    ; $422c: $7e
    or a                                          ; $422d: $b7
    jr z, jr_001_4231                             ; $422e: $28 $01

    dec [hl]                                      ; $4230: $35

jr_001_4231:
    call Call_001_439a                            ; $4231: $cd $9a $43
    call Call_001_5624                            ; $4234: $cd $24 $56
    ld a, [$c125]                                 ; $4237: $fa $25 $c1
    cp $00                                        ; $423a: $fe $00
    ret nz                                        ; $423c: $c0

    ld a, $15                                     ; $423d: $3e $15
    ld [$c125], a                                 ; $423f: $ea $25 $c1
    jp Jump_001_413c                              ; $4242: $c3 $3c $41


    call Call_001_439a                            ; $4245: $cd $9a $43
    ld hl, $c543                                  ; $4248: $21 $43 $c5
    ld a, [hl]                                    ; $424b: $7e
    or a                                          ; $424c: $b7
    jr z, jr_001_4251                             ; $424d: $28 $02

    dec [hl]                                      ; $424f: $35
    ret                                           ; $4250: $c9


jr_001_4251:
    ld [hl], $18                                  ; $4251: $36 $18
    jp Jump_001_413c                              ; $4253: $c3 $3c $41


    call Call_001_4269                            ; $4256: $cd $69 $42
    ret nz                                        ; $4259: $c0

    call Call_001_4da5                            ; $425a: $cd $a5 $4d
    ld a, $67                                     ; $425d: $3e $67
    jp z, Jump_000_00d9                           ; $425f: $ca $d9 $00

    ld hl, $c543                                  ; $4262: $21 $43 $c5
    ld [hl], $01                                  ; $4265: $36 $01
    jr jr_001_4285                                ; $4267: $18 $1c

Call_001_4269:
    call Call_001_439a                            ; $4269: $cd $9a $43
    ld hl, $c543                                  ; $426c: $21 $43 $c5
    dec [hl]                                      ; $426f: $35
    ret nz                                        ; $4270: $c0

    ld [hl], $07                                  ; $4271: $36 $07
    call Call_001_413c                            ; $4273: $cd $3c $41
    xor a                                         ; $4276: $af
    ret                                           ; $4277: $c9


    call Call_001_439a                            ; $4278: $cd $9a $43
    call Call_001_4292                            ; $427b: $cd $92 $42
    ld hl, $c543                                  ; $427e: $21 $43 $c5
    dec [hl]                                      ; $4281: $35
    ret nz                                        ; $4282: $c0

    ld [hl], $10                                  ; $4283: $36 $10

jr_001_4285:
    xor a                                         ; $4285: $af
    ld [$c23e], a                                 ; $4286: $ea $3e $c2
    call Call_001_5782                            ; $4289: $cd $82 $57
    call Call_001_4b95                            ; $428c: $cd $95 $4b
    jp Jump_001_413c                              ; $428f: $c3 $3c $41


Call_001_4292:
    ld a, [$c543]                                 ; $4292: $fa $43 $c5
    rra                                           ; $4295: $1f
    and $03                                       ; $4296: $e6 $03
    ld hl, $42a3                                  ; $4298: $21 $a3 $42
    rst RST_28                                    ; $429b: $ef
    ld a, [hl]                                    ; $429c: $7e
    ld [$c23e], a                                 ; $429d: $ea $3e $c2
    jp Jump_001_4b95                              ; $42a0: $c3 $95 $4b


    halt                                          ; $42a3: $76
    ld [hl], h                                    ; $42a4: $74
    ld [hl], d                                    ; $42a5: $72
    ld [hl], b                                    ; $42a6: $70
    call Call_001_439a                            ; $42a7: $cd $9a $43
    ld hl, $c543                                  ; $42aa: $21 $43 $c5
    dec [hl]                                      ; $42ad: $35
    ret nz                                        ; $42ae: $c0

    ld [hl], $08                                  ; $42af: $36 $08
    ld a, $0a                                     ; $42b1: $3e $0a
    ld hl, $6600                                  ; $42b3: $21 $00 $66
    call Call_001_65ec                            ; $42b6: $cd $ec $65
    jp Jump_001_413c                              ; $42b9: $c3 $3c $41


    ld hl, $c543                                  ; $42bc: $21 $43 $c5
    dec [hl]                                      ; $42bf: $35
    jr z, jr_001_42d8                             ; $42c0: $28 $16

    ld a, [$c510]                                 ; $42c2: $fa $10 $c5
    ld hl, $42f9                                  ; $42c5: $21 $f9 $42
    call Call_000_041a                            ; $42c8: $cd $1a $04
    ld a, [$da08]                                 ; $42cb: $fa $08 $da
    add l                                         ; $42ce: $85
    ld c, a                                       ; $42cf: $4f
    ld a, [$da09]                                 ; $42d0: $fa $09 $da
    add h                                         ; $42d3: $84
    ld b, a                                       ; $42d4: $47
    jp Jump_001_4382                              ; $42d5: $c3 $82 $43


jr_001_42d8:
    call Call_001_439a                            ; $42d8: $cd $9a $43
    ld a, [$c510]                                 ; $42db: $fa $10 $c5
    ld hl, $4301                                  ; $42de: $21 $01 $43
    rst RST_28                                    ; $42e1: $ef
    ld a, [hl]                                    ; $42e2: $7e
    ld [$c543], a                                 ; $42e3: $ea $43 $c5
    ld a, [$c510]                                 ; $42e6: $fa $10 $c5
    ld hl, $4305                                  ; $42e9: $21 $05 $43
    rst RST_28                                    ; $42ec: $ef
    ld a, [hl]                                    ; $42ed: $7e
    ld [$c544], a                                 ; $42ee: $ea $44 $c5
    ld a, $02                                     ; $42f1: $3e $02
    ld [$c545], a                                 ; $42f3: $ea $45 $c5
    jp Jump_001_413c                              ; $42f6: $c3 $3c $41


    nop                                           ; $42f9: $00
    ld bc, $ff00                                  ; $42fa: $01 $00 $ff
    rst RST_38                                    ; $42fd: $ff
    nop                                           ; $42fe: $00
    ld bc, $0000                                  ; $42ff: $01 $00 $00
    inc a                                         ; $4302: $3c
    ld e, $5a                                     ; $4303: $1e $5a
    ld a, c                                       ; $4305: $79
    ld a, c                                       ; $4306: $79
    ld a, c                                       ; $4307: $79
    sub a                                         ; $4308: $97
    call $4324                                    ; $4309: $cd $24 $43
    ld a, b                                       ; $430c: $78
    ld hl, $4320                                  ; $430d: $21 $20 $43
    rst RST_28                                    ; $4310: $ef
    ld a, [hl]                                    ; $4311: $7e
    ld [$c510], a                                 ; $4312: $ea $10 $c5
    call Call_000_32b2                            ; $4315: $cd $b2 $32
    ld hl, $c544                                  ; $4318: $21 $44 $c5
    dec [hl]                                      ; $431b: $35
    ret nz                                        ; $431c: $c0

    jp Jump_001_413c                              ; $431d: $c3 $3c $41


    nop                                           ; $4320: $00
    ld [bc], a                                    ; $4321: $02
    ld bc, $cd03                                  ; $4322: $01 $03 $cd
    db $ed                                        ; $4325: $ed
    db $10                                        ; $4326: $10
    push bc                                       ; $4327: $c5
    ld a, [$da00]                                 ; $4328: $fa $00 $da
    add l                                         ; $432b: $85
    ld c, a                                       ; $432c: $4f
    ld a, [$da01]                                 ; $432d: $fa $01 $da
    add h                                         ; $4330: $84
    ld b, a                                       ; $4331: $47
    call Call_001_4382                            ; $4332: $cd $82 $43
    ld a, [$c543]                                 ; $4335: $fa $43 $c5
    inc a                                         ; $4338: $3c
    cp $78                                        ; $4339: $fe $78
    jr c, jr_001_433e                             ; $433b: $38 $01

    xor a                                         ; $433d: $af

jr_001_433e:
    ld [$c543], a                                 ; $433e: $ea $43 $c5
    pop bc                                        ; $4341: $c1
    ret                                           ; $4342: $c9


    call Call_001_439a                            ; $4343: $cd $9a $43
    ld a, [$da08]                                 ; $4346: $fa $08 $da
    sub $01                                       ; $4349: $d6 $01
    ld [$da08], a                                 ; $434b: $ea $08 $da
    ld [$da0c], a                                 ; $434e: $ea $0c $da
    cp $f0                                        ; $4351: $fe $f0
    ret c                                         ; $4353: $d8

    ld a, $30                                     ; $4354: $3e $30
    ld [$c543], a                                 ; $4356: $ea $43 $c5
    ld a, $10                                     ; $4359: $3e $10
    ld [$c03d], a                                 ; $435b: $ea $3d $c0
    jp Jump_001_413c                              ; $435e: $c3 $3c $41


    ld hl, $c543                                  ; $4361: $21 $43 $c5
    dec [hl]                                      ; $4364: $35
    ret nz                                        ; $4365: $c0

    ld a, [$c514]                                 ; $4366: $fa $14 $c5
    call Call_001_4ebc                            ; $4369: $cd $bc $4e
    ld e, $01                                     ; $436c: $1e $01
    ld a, [$c16f]                                 ; $436e: $fa $6f $c1
    ld c, a                                       ; $4371: $4f
    call Call_000_0374                            ; $4372: $cd $74 $03
    ld a, c                                       ; $4375: $79
    ld [$c16f], a                                 ; $4376: $ea $6f $c1
    call Call_000_2b72_DrawObjectiveProgressTiles                            ; $4379: $cd $72 $2b
    call Call_000_314e                            ; $437c: $cd $4e $31
    jp Jump_001_4135                              ; $437f: $c3 $35 $41


Call_001_4382:
Jump_001_4382:
    ld a, c                                       ; $4382: $79
    ld [$da08], a                                 ; $4383: $ea $08 $da
    ld [$da0c], a                                 ; $4386: $ea $0c $da
    ld a, b                                       ; $4389: $78
    ld [$da09], a                                 ; $438a: $ea $09 $da
    add $08                                       ; $438d: $c6 $08
    ld [$da0d], a                                 ; $438f: $ea $0d $da
    ld a, $10                                     ; $4392: $3e $10
    ld [$da0b], a                                 ; $4394: $ea $0b $da
    ld [$da0f], a                                 ; $4397: $ea $0f $da

Call_001_439a:
    ld hl, $c542                                  ; $439a: $21 $42 $c5
    inc [hl]                                      ; $439d: $34
    bit 3, [hl]                                   ; $439e: $cb $5e
    ld a, $4c                                     ; $43a0: $3e $4c
    jr z, jr_001_43a6                             ; $43a2: $28 $02

    ld a, $50                                     ; $43a4: $3e $50

jr_001_43a6:
    ld [$da0a], a                                 ; $43a6: $ea $0a $da
    add $02                                       ; $43a9: $c6 $02
    ld [$da0e], a                                 ; $43ab: $ea $0e $da
    ret                                           ; $43ae: $c9


    ld a, [$c541]                                 ; $43af: $fa $41 $c5
    rst RST_00                                    ; $43b2: $c7
    cp l                                          ; $43b3: $bd
    ld b, e                                       ; $43b4: $43
    ld a, [hl+]                                   ; $43b5: $2a
    ld b, h                                       ; $43b6: $44
    ld c, l                                       ; $43b7: $4d
    ld b, h                                       ; $43b8: $44
    ld [hl], b                                    ; $43b9: $70
    ld b, h                                       ; $43ba: $44
    sub e                                         ; $43bb: $93
    ld b, h                                       ; $43bc: $44
    ld hl, $c542                                  ; $43bd: $21 $42 $c5
    dec [hl]                                      ; $43c0: $35
    jr z, jr_001_43fb_CheckMonsterSlot1                             ; $43c1: $28 $38

    ld a, [hl]                                    ; $43c3: $7e
    rrca                                          ; $43c4: $0f
    rrca                                          ; $43c5: $0f
    and $03                                       ; $43c6: $e6 $03
    ld hl, $59dd                                  ; $43c8: $21 $dd $59
    rst RST_28                                    ; $43cb: $ef
    ld a, [hl]                                    ; $43cc: $7e
    ld [$c543], a                                 ; $43cd: $ea $43 $c5
    ld a, [$c521]                                 ; $43d0: $fa $21 $c5
    ld c, a                                       ; $43d3: $4f
    ld a, [$c522]                                 ; $43d4: $fa $22 $c5
    ld b, a                                       ; $43d7: $47
    call Call_001_4c50                            ; $43d8: $cd $50 $4c
    ld hl, $44b9                                  ; $43db: $21 $b9 $44
    ld de, $da08                                  ; $43de: $11 $08 $da
    ld a, $0a                                     ; $43e1: $3e $0a

jr_001_43e3:
    push af                                       ; $43e3: $f5
    ld a, [$c543]                                 ; $43e4: $fa $43 $c5
    add [hl]                                      ; $43e7: $86
    add c                                         ; $43e8: $81
    ld [de], a                                    ; $43e9: $12
    inc hl                                        ; $43ea: $23
    inc e                                         ; $43eb: $1c
    ld a, [hl+]                                   ; $43ec: $2a
    add b                                         ; $43ed: $80
    ld [de], a                                    ; $43ee: $12
    inc e                                         ; $43ef: $1c
    ld a, [hl+]                                   ; $43f0: $2a
    ld [de], a                                    ; $43f1: $12
    inc e                                         ; $43f2: $1c
    ld a, [hl+]                                   ; $43f3: $2a
    ld [de], a                                    ; $43f4: $12
    inc e                                         ; $43f5: $1c
    pop af                                        ; $43f6: $f1
    dec a                                         ; $43f7: $3d
    jr nz, jr_001_43e3                            ; $43f8: $20 $e9

    ret                                           ; $43fa: $c9


; Checks up to 4 adjacent-monster slots in turn for an attack against the player.
; Slot N: $c524+N-1 = adjacency/position flag, $c528+N = damage value -> $c532,
; $c541 = current slot number (1-4). No manual "attack" button exists; combat is
; resolved automatically each turn based on slot adjacency (see Call_001_44aa_CheckMonsterSlotHit).
jr_001_43fb_CheckMonsterSlot1:
    call Call_000_32a3                            ; $43fb: $cd $a3 $32
    call Call_001_4b95                            ; $43fe: $cd $95 $4b
    call Call_000_32b2                            ; $4401: $cd $b2 $32
    ld a, $01                                     ; $4404: $3e $01
    ld [$c541], a                                 ; $4406: $ea $41 $c5
    ld a, [$c529]                                 ; $4409: $fa $29 $c5
    ld [$c532], a                                 ; $440c: $ea $32 $c5
    ld de, $c525                                  ; $440f: $11 $25 $c5
    call Call_001_44aa_CheckMonsterSlotHit                            ; $4412: $cd $aa $44
    jr z, jr_001_4438                             ; $4415: $28 $21

jr_001_4417:
    ld [$c524], a                                 ; $4417: $ea $24 $c5
    ld [$c533], a                                 ; $441a: $ea $33 $c5
    ld a, $01                                     ; $441d: $3e $01
    ld [$c523], a                                 ; $441f: $ea $23 $c5
    ld a, $17                                     ; $4422: $3e $17
    ld [$c530], a                                 ; $4424: $ea $30 $c5
    jp Jump_001_5a85                              ; $4427: $c3 $85 $5a


    call Call_001_5a91                            ; $442a: $cd $91 $5a
    ld a, [$c125]                                 ; $442d: $fa $25 $c1
    cp $00                                        ; $4430: $fe $00
    ret nz                                        ; $4432: $c0

    ld a, $15                                     ; $4433: $3e $15
    ld [$c125], a                                 ; $4435: $ea $25 $c1

jr_001_4438:
    ld a, $02                                     ; $4438: $3e $02
    ld [$c541], a                                 ; $443a: $ea $41 $c5
    ld a, [$c52a]                                 ; $443d: $fa $2a $c5
    ld [$c532], a                                 ; $4440: $ea $32 $c5
    ld de, $c526                                  ; $4443: $11 $26 $c5
    call Call_001_44aa_CheckMonsterSlotHit                            ; $4446: $cd $aa $44
    jr z, jr_001_445b                             ; $4449: $28 $10

    jr jr_001_4417                                ; $444b: $18 $ca

    call Call_001_5a91                            ; $444d: $cd $91 $5a
    ld a, [$c125]                                 ; $4450: $fa $25 $c1
    cp $00                                        ; $4453: $fe $00
    ret nz                                        ; $4455: $c0

    ld a, $15                                     ; $4456: $3e $15
    ld [$c125], a                                 ; $4458: $ea $25 $c1

jr_001_445b:
    ld a, $03                                     ; $445b: $3e $03
    ld [$c541], a                                 ; $445d: $ea $41 $c5
    ld a, [$c52b]                                 ; $4460: $fa $2b $c5
    ld [$c532], a                                 ; $4463: $ea $32 $c5
    ld de, $c527                                  ; $4466: $11 $27 $c5
    call Call_001_44aa_CheckMonsterSlotHit                            ; $4469: $cd $aa $44
    jr z, jr_001_447e                             ; $446c: $28 $10

    jr jr_001_4417                                ; $446e: $18 $a7

    call Call_001_5a91                            ; $4470: $cd $91 $5a
    ld a, [$c125]                                 ; $4473: $fa $25 $c1
    cp $00                                        ; $4476: $fe $00
    ret nz                                        ; $4478: $c0

    ld a, $15                                     ; $4479: $3e $15
    ld [$c125], a                                 ; $447b: $ea $25 $c1

jr_001_447e:
    ld a, $04                                     ; $447e: $3e $04
    ld [$c541], a                                 ; $4480: $ea $41 $c5
    ld a, [$c52c]                                 ; $4483: $fa $2c $c5
    ld [$c532], a                                 ; $4486: $ea $32 $c5
    ld de, $c528                                  ; $4489: $11 $28 $c5
    call Call_001_44aa_CheckMonsterSlotHit                            ; $448c: $cd $aa $44
    jr z, jr_001_44a1                             ; $448f: $28 $10

    jr jr_001_4417                                ; $4491: $18 $84

    call Call_001_5a91                            ; $4493: $cd $91 $5a
    ld a, [$c125]                                 ; $4496: $fa $25 $c1
    cp $00                                        ; $4499: $fe $00
    ret nz                                        ; $449b: $c0

    ld a, $15                                     ; $449c: $3e $15
    ld [$c125], a                                 ; $449e: $ea $25 $c1

jr_001_44a1:
    ld a, [$c514]                                 ; $44a1: $fa $14 $c5
    call Call_001_4ebc                            ; $44a4: $cd $bc $4e
    jp Jump_001_4135                              ; $44a7: $c3 $35 $41


Call_001_44aa_CheckMonsterSlotHit:
    ld a, [de]                                    ; $44aa: $1a
    sub $02                                       ; $44ab: $d6 $02
    jr c, jr_001_44b6                             ; $44ad: $38 $07

jr_001_44af:
    call Call_001_4b49                            ; $44af: $cd $49 $4b
    ld a, [hl]                                    ; $44b2: $7e
    or a                                          ; $44b3: $b7
    ld a, [de]                                    ; $44b4: $1a
    ret nz                                        ; $44b5: $c0

jr_001_44b6:
    xor a                                         ; $44b6: $af
    ld [de], a                                    ; $44b7: $12
    ret                                           ; $44b8: $c9


    ldh a, [$ff08]                                ; $44b9: $f0 $08
    ld [hl], b                                    ; $44bb: $70
    db $10                                        ; $44bc: $10
    ldh a, [rNR10]                                ; $44bd: $f0 $10
    ld [hl], d                                    ; $44bf: $72
    stop                                          ; $44c0: $10 $00
    nop                                           ; $44c2: $00
    ld [hl], h                                    ; $44c3: $74
    stop                                          ; $44c4: $10 $00
    ld [$1076], sp                                ; $44c6: $08 $76 $10
    nop                                           ; $44c9: $00
    db $10                                        ; $44ca: $10
    ld a, b                                       ; $44cb: $78
    stop                                          ; $44cc: $10 $00
    jr @+$76                                      ; $44ce: $18 $74

    jr nc, jr_001_44e2                            ; $44d0: $30 $10

    nop                                           ; $44d2: $00
    ld a, d                                       ; $44d3: $7a
    db $10                                        ; $44d4: $10
    db $10                                        ; $44d5: $10
    ld [$107c], sp                                ; $44d6: $08 $7c $10
    db $10                                        ; $44d9: $10
    db $10                                        ; $44da: $10
    ld a, h                                       ; $44db: $7c
    jr nc, @+$12                                  ; $44dc: $30 $10

    jr jr_001_455a                                ; $44de: $18 $7a

    jr nc, jr_001_44af                            ; $44e0: $30 $cd

jr_001_44e2:
    dec c                                         ; $44e2: $0d
    inc sp                                        ; $44e3: $33
    ld a, [$c540]                                 ; $44e4: $fa $40 $c5
    rst RST_00                                    ; $44e7: $c7
    db $ec                                        ; $44e8: $ec
    ld b, h                                       ; $44e9: $44
    inc c                                         ; $44ea: $0c
    ld b, l                                       ; $44eb: $45
    ld a, [$c00f]                                 ; $44ec: $fa $0f $c0
    and $30                                       ; $44ef: $e6 $30
    jr nz, jr_001_44f7                            ; $44f1: $20 $04

    call Call_001_6b62                            ; $44f3: $cd $62 $6b
    ret nz                                        ; $44f6: $c0

jr_001_44f7:
    ld a, $10                                     ; $44f7: $3e $10
    ld [$c03d], a                                 ; $44f9: $ea $3d $c0
    ld a, $10                                     ; $44fc: $3e $10
    ld [$c039], a                                 ; $44fe: $ea $39 $c0
    ld a, $00                                     ; $4501: $3e $00
    ld [$c03a], a                                 ; $4503: $ea $3a $c0
    ld a, $01                                     ; $4506: $3e $01
    ld [$c540], a                                 ; $4508: $ea $40 $c5
    ret                                           ; $450b: $c9


    call Call_001_6b62                            ; $450c: $cd $62 $6b
    ret nz                                        ; $450f: $c0

    call Call_000_32a3                            ; $4510: $cd $a3 $32
    call Call_000_32b2                            ; $4513: $cd $b2 $32
    call Call_000_314e                            ; $4516: $cd $4e $31
    call Call_001_525c                            ; $4519: $cd $5c $52
    jp Jump_000_348c                              ; $451c: $c3 $8c $34


    call Call_000_32a3                            ; $451f: $cd $a3 $32
    call Call_001_4539                            ; $4522: $cd $39 $45
    call Call_001_4946                            ; $4525: $cd $46 $49
    call Call_001_4b95                            ; $4528: $cd $95 $4b
    call Call_000_32b2                            ; $452b: $cd $b2 $32
    call Call_001_58d5                            ; $452e: $cd $d5 $58
    ld a, [$c238]                                 ; $4531: $fa $38 $c2
    cp $02                                        ; $4534: $fe $02
    ret z                                         ; $4536: $c8

    scf                                           ; $4537: $37
    ret                                           ; $4538: $c9


Call_001_4539:
jr_001_4539:
    ld a, [$c237]                                 ; $4539: $fa $37 $c2
    ld l, a                                       ; $453c: $6f
    ld h, $00                                     ; $453d: $26 $00
    add hl, hl                                    ; $453f: $29
    add hl, hl                                    ; $4540: $29
    add hl, hl                                    ; $4541: $29
    add hl, hl                                    ; $4542: $29
    ld de, $c5c0                                  ; $4543: $11 $c0 $c5
    add hl, de                                    ; $4546: $19
    ld a, [hl]                                    ; $4547: $7e
    or a                                          ; $4548: $b7
    jr nz, jr_001_455a                            ; $4549: $20 $0f

jr_001_454b:
    ld hl, $c237                                  ; $454b: $21 $37 $c2
    inc [hl]                                      ; $454e: $34
    ld a, [hl]                                    ; $454f: $7e
    cp $24                                        ; $4550: $fe $24
    jr c, jr_001_4539                             ; $4552: $38 $e5

    ld a, $02                                     ; $4554: $3e $02
    ld [$c238], a                                 ; $4556: $ea $38 $c2
    ret                                           ; $4559: $c9


jr_001_455a:
    call Call_001_4585                            ; $455a: $cd $85 $45
    ld a, [$d401]                                 ; $455d: $fa $01 $d4
    ld b, a                                       ; $4560: $47
    ld a, [$c420]                                 ; $4561: $fa $20 $c4
    cp b                                          ; $4564: $b8
    jr nz, jr_001_4579                            ; $4565: $20 $12

    ld a, $01                                     ; $4567: $3e $01
    ld [$c238], a                                 ; $4569: $ea $38 $c2
    call Call_001_78d7                            ; $456c: $cd $d7 $78
    call Call_001_4599                            ; $456f: $cd $99 $45
    ld a, [$c238]                                 ; $4572: $fa $38 $c2
    or a                                          ; $4575: $b7
    ret nz                                        ; $4576: $c0

    jr jr_001_454b                                ; $4577: $18 $d2

jr_001_4579:
    call Call_001_78d7                            ; $4579: $cd $d7 $78
    xor a                                         ; $457c: $af
    ld [$c238], a                                 ; $457d: $ea $38 $c2
    call Call_001_4599                            ; $4580: $cd $99 $45
    jr jr_001_454b                                ; $4583: $18 $c6

Call_001_4585:
    ld a, [$c237]                                 ; $4585: $fa $37 $c2
    ld l, a                                       ; $4588: $6f
    ld h, $00                                     ; $4589: $26 $00
    add hl, hl                                    ; $458b: $29
    add hl, hl                                    ; $458c: $29
    add hl, hl                                    ; $458d: $29
    add hl, hl                                    ; $458e: $29
    ld de, $c5c0                                  ; $458f: $11 $c0 $c5
    add hl, de                                    ; $4592: $19
    ld de, $d400                                  ; $4593: $11 $00 $d4
    jp Jump_000_04d5                              ; $4596: $c3 $d5 $04


Call_001_4599:
    ld a, [$c237]                                 ; $4599: $fa $37 $c2
    ld l, a                                       ; $459c: $6f
    ld h, $00                                     ; $459d: $26 $00
    add hl, hl                                    ; $459f: $29
    add hl, hl                                    ; $45a0: $29
    add hl, hl                                    ; $45a1: $29
    add hl, hl                                    ; $45a2: $29
    ld de, $c5c0                                  ; $45a3: $11 $c0 $c5
    add hl, de                                    ; $45a6: $19
    ld de, $d400                                  ; $45a7: $11 $00 $d4
    call Call_000_044b                            ; $45aa: $cd $4b $04
    jp Jump_000_04d5                              ; $45ad: $c3 $d5 $04


Jump_001_45b0:
    ld de, $0100                                  ; $45b0: $11 $00 $01
    call Call_001_47fd                            ; $45b3: $cd $fd $47
    ret nc                                        ; $45b6: $d0

    ld de, $0100                                  ; $45b7: $11 $00 $01
    call Call_001_4604                            ; $45ba: $cd $04 $46
    ret                                           ; $45bd: $c9


Jump_001_45be:
    ld de, $ff00                                  ; $45be: $11 $00 $ff
    call Call_001_47fd                            ; $45c1: $cd $fd $47
    ret nc                                        ; $45c4: $d0

    ld de, $ff00                                  ; $45c5: $11 $00 $ff
    call Call_001_4604                            ; $45c8: $cd $04 $46
    ret                                           ; $45cb: $c9


Jump_001_45cc:
    ld de, $00ff                                  ; $45cc: $11 $ff $00
    call Call_001_47fd                            ; $45cf: $cd $fd $47
    ret nc                                        ; $45d2: $d0

    ld de, $00ff                                  ; $45d3: $11 $ff $00
    call Call_001_4604                            ; $45d6: $cd $04 $46
    ret                                           ; $45d9: $c9


Jump_001_45da:
    ld de, $0001                                  ; $45da: $11 $01 $00
    call Call_001_47fd                            ; $45dd: $cd $fd $47
    ret nc                                        ; $45e0: $d0

    ld de, $0001                                  ; $45e1: $11 $01 $00
    call Call_001_4604                            ; $45e4: $cd $04 $46
    ret                                           ; $45e7: $c9


Call_001_45e8:
    ld de, $0100                                  ; $45e8: $11 $00 $01
    call Call_001_47fd                            ; $45eb: $cd $fd $47
    ret                                           ; $45ee: $c9


Call_001_45ef:
    ld de, $ff00                                  ; $45ef: $11 $00 $ff
    call Call_001_47fd                            ; $45f2: $cd $fd $47
    ret                                           ; $45f5: $c9


Call_001_45f6:
    ld de, $00ff                                  ; $45f6: $11 $ff $00
    call Call_001_47fd                            ; $45f9: $cd $fd $47
    ret                                           ; $45fc: $c9


Call_001_45fd:
    ld de, $0001                                  ; $45fd: $11 $01 $00
    call Call_001_47fd                            ; $4600: $cd $fd $47
    ret                                           ; $4603: $c9


Call_001_4604:
    ld a, [$c241]                                 ; $4604: $fa $41 $c2
    bit 7, a                                      ; $4607: $cb $7f
    ret nz                                        ; $4609: $c0

    ld a, [$c242]                                 ; $460a: $fa $42 $c2
    or a                                          ; $460d: $b7
    ret nz                                        ; $460e: $c0

    call Call_001_4817                            ; $460f: $cd $17 $48
    ret                                           ; $4612: $c9


    ld de, $0200                                  ; $4613: $11 $00 $02
    call Call_001_47fd                            ; $4616: $cd $fd $47
    ret nc                                        ; $4619: $d0

    ld de, $0100                                  ; $461a: $11 $00 $01
    call Call_001_469a                            ; $461d: $cd $9a $46
    ret                                           ; $4620: $c9


    ld de, $ff00                                  ; $4621: $11 $00 $ff
    call Call_001_47fd                            ; $4624: $cd $fd $47
    ret nc                                        ; $4627: $d0

    ld de, $ff00                                  ; $4628: $11 $00 $ff
    call Call_001_469a                            ; $462b: $cd $9a $46
    ret                                           ; $462e: $c9


    ld de, $00ff                                  ; $462f: $11 $ff $00
    call Call_001_47fd                            ; $4632: $cd $fd $47
    ret nc                                        ; $4635: $d0

    call Call_001_484d                            ; $4636: $cd $4d $48
    ld de, $01ff                                  ; $4639: $11 $ff $01
    call Call_001_47fd                            ; $463c: $cd $fd $47
    ret nc                                        ; $463f: $d0

    ld de, $00ff                                  ; $4640: $11 $ff $00
    call Call_001_468f                            ; $4643: $cd $8f $46
    ret                                           ; $4646: $c9


    ld de, $0001                                  ; $4647: $11 $01 $00
    call Call_001_47fd                            ; $464a: $cd $fd $47
    ret nc                                        ; $464d: $d0

    call Call_001_484d                            ; $464e: $cd $4d $48
    ld de, $0101                                  ; $4651: $11 $01 $01
    call Call_001_47fd                            ; $4654: $cd $fd $47
    ret nc                                        ; $4657: $d0

    ld de, $0001                                  ; $4658: $11 $01 $00
    call Call_001_468f                            ; $465b: $cd $8f $46
    ret                                           ; $465e: $c9


    ld de, $0200                                  ; $465f: $11 $00 $02
    call Call_001_47fd                            ; $4662: $cd $fd $47
    ret                                           ; $4665: $c9


    ld de, $ff00                                  ; $4666: $11 $00 $ff
    call Call_001_47fd                            ; $4669: $cd $fd $47
    ret                                           ; $466c: $c9


    ld de, $00ff                                  ; $466d: $11 $ff $00
    call Call_001_47fd                            ; $4670: $cd $fd $47
    ret nc                                        ; $4673: $d0

    call Call_001_484d                            ; $4674: $cd $4d $48
    ld de, $01ff                                  ; $4677: $11 $ff $01
    call Call_001_47fd                            ; $467a: $cd $fd $47
    ret                                           ; $467d: $c9


    ld de, $0001                                  ; $467e: $11 $01 $00
    call Call_001_47fd                            ; $4681: $cd $fd $47
    ret nc                                        ; $4684: $d0

    call Call_001_484d                            ; $4685: $cd $4d $48
    ld de, $0101                                  ; $4688: $11 $01 $01
    call Call_001_47fd                            ; $468b: $cd $fd $47
    ret                                           ; $468e: $c9


Call_001_468f:
    ld a, [$c24c]                                 ; $468f: $fa $4c $c2
    bit 7, a                                      ; $4692: $cb $7f
    ret nz                                        ; $4694: $c0

    ld a, [$c24d]                                 ; $4695: $fa $4d $c2
    or a                                          ; $4698: $b7
    ret nz                                        ; $4699: $c0

Call_001_469a:
    ld a, [$c241]                                 ; $469a: $fa $41 $c2
    bit 7, a                                      ; $469d: $cb $7f
    ret nz                                        ; $469f: $c0

    ld a, [$c242]                                 ; $46a0: $fa $42 $c2
    or a                                          ; $46a3: $b7
    ret nz                                        ; $46a4: $c0

    call Call_001_4817                            ; $46a5: $cd $17 $48
    ret                                           ; $46a8: $c9


    ld de, $0100                                  ; $46a9: $11 $00 $01
    call Call_001_47fd                            ; $46ac: $cd $fd $47
    ret nc                                        ; $46af: $d0

    call Call_001_484d                            ; $46b0: $cd $4d $48
    ld de, $0101                                  ; $46b3: $11 $01 $01
    call Call_001_47fd                            ; $46b6: $cd $fd $47
    ret nc                                        ; $46b9: $d0

    ld de, $0100                                  ; $46ba: $11 $00 $01
    call Call_001_4725                            ; $46bd: $cd $25 $47
    ret                                           ; $46c0: $c9


    ld de, $ff00                                  ; $46c1: $11 $00 $ff
    call Call_001_47fd                            ; $46c4: $cd $fd $47
    ret nc                                        ; $46c7: $d0

    call Call_001_484d                            ; $46c8: $cd $4d $48
    ld de, $ff01                                  ; $46cb: $11 $01 $ff
    call Call_001_47fd                            ; $46ce: $cd $fd $47
    ret nc                                        ; $46d1: $d0

    ld de, $ff00                                  ; $46d2: $11 $00 $ff
    call Call_001_4725                            ; $46d5: $cd $25 $47
    ret                                           ; $46d8: $c9


    ld de, $00ff                                  ; $46d9: $11 $ff $00
    call Call_001_47fd                            ; $46dc: $cd $fd $47
    ret nc                                        ; $46df: $d0

    ld de, $00ff                                  ; $46e0: $11 $ff $00
    call Call_001_4730                            ; $46e3: $cd $30 $47
    ret                                           ; $46e6: $c9


    ld de, $0002                                  ; $46e7: $11 $02 $00
    call Call_001_47fd                            ; $46ea: $cd $fd $47
    ret nc                                        ; $46ed: $d0

    ld de, $0001                                  ; $46ee: $11 $01 $00
    call Call_001_4730                            ; $46f1: $cd $30 $47
    ret                                           ; $46f4: $c9


    ld de, $0100                                  ; $46f5: $11 $00 $01
    call Call_001_47fd                            ; $46f8: $cd $fd $47
    ret nc                                        ; $46fb: $d0

    call Call_001_484d                            ; $46fc: $cd $4d $48
    ld de, $0101                                  ; $46ff: $11 $01 $01
    call Call_001_47fd                            ; $4702: $cd $fd $47
    ret                                           ; $4705: $c9


    ld de, $ff00                                  ; $4706: $11 $00 $ff
    call Call_001_47fd                            ; $4709: $cd $fd $47
    ret nc                                        ; $470c: $d0

    call Call_001_484d                            ; $470d: $cd $4d $48
    ld de, $ff01                                  ; $4710: $11 $01 $ff
    call Call_001_47fd                            ; $4713: $cd $fd $47
    ret                                           ; $4716: $c9


    ld de, $00ff                                  ; $4717: $11 $ff $00
    call Call_001_47fd                            ; $471a: $cd $fd $47
    ret                                           ; $471d: $c9


    ld de, $0002                                  ; $471e: $11 $02 $00
    call Call_001_47fd                            ; $4721: $cd $fd $47
    ret                                           ; $4724: $c9


Call_001_4725:
    ld a, [$c24c]                                 ; $4725: $fa $4c $c2
    bit 7, a                                      ; $4728: $cb $7f
    ret nz                                        ; $472a: $c0

    ld a, [$c24d]                                 ; $472b: $fa $4d $c2
    or a                                          ; $472e: $b7
    ret nz                                        ; $472f: $c0

Call_001_4730:
    ld a, [$c241]                                 ; $4730: $fa $41 $c2
    bit 7, a                                      ; $4733: $cb $7f
    ret nz                                        ; $4735: $c0

    ld a, [$c242]                                 ; $4736: $fa $42 $c2
    or a                                          ; $4739: $b7
    ret nz                                        ; $473a: $c0

    call Call_001_4817                            ; $473b: $cd $17 $48
    ret                                           ; $473e: $c9


    ld de, $0200                                  ; $473f: $11 $00 $02
    call Call_001_47fd                            ; $4742: $cd $fd $47
    ret nc                                        ; $4745: $d0

    call Call_001_484d                            ; $4746: $cd $4d $48
    ld de, $0201                                  ; $4749: $11 $01 $02
    call Call_001_47fd                            ; $474c: $cd $fd $47
    ret nc                                        ; $474f: $d0

    ld de, $0100                                  ; $4750: $11 $00 $01
    call Call_001_47e3                            ; $4753: $cd $e3 $47
    ret                                           ; $4756: $c9


    ld de, $ff00                                  ; $4757: $11 $00 $ff
    call Call_001_47fd                            ; $475a: $cd $fd $47
    ret nc                                        ; $475d: $d0

    call Call_001_484d                            ; $475e: $cd $4d $48
    ld de, $ff01                                  ; $4761: $11 $01 $ff
    call Call_001_47fd                            ; $4764: $cd $fd $47
    ret nc                                        ; $4767: $d0

    ld de, $ff00                                  ; $4768: $11 $00 $ff
    call Call_001_47e3                            ; $476b: $cd $e3 $47
    ret                                           ; $476e: $c9


    ld de, $00ff                                  ; $476f: $11 $ff $00
    call Call_001_47fd                            ; $4772: $cd $fd $47
    ret nc                                        ; $4775: $d0

    call Call_001_484d                            ; $4776: $cd $4d $48
    ld de, $01ff                                  ; $4779: $11 $ff $01
    call Call_001_47fd                            ; $477c: $cd $fd $47
    ret nc                                        ; $477f: $d0

    ld de, $00ff                                  ; $4780: $11 $ff $00
    call Call_001_47e3                            ; $4783: $cd $e3 $47
    ret                                           ; $4786: $c9


    ld de, $0002                                  ; $4787: $11 $02 $00
    call Call_001_47fd                            ; $478a: $cd $fd $47
    ret nc                                        ; $478d: $d0

    call Call_001_484d                            ; $478e: $cd $4d $48
    ld de, $0102                                  ; $4791: $11 $02 $01
    call Call_001_47fd                            ; $4794: $cd $fd $47
    ret nc                                        ; $4797: $d0

    ld de, $0001                                  ; $4798: $11 $01 $00
    call Call_001_47e3                            ; $479b: $cd $e3 $47
    ret                                           ; $479e: $c9


    ld de, $0200                                  ; $479f: $11 $00 $02
    call Call_001_47fd                            ; $47a2: $cd $fd $47
    ret nc                                        ; $47a5: $d0

    call Call_001_484d                            ; $47a6: $cd $4d $48
    ld de, $0201                                  ; $47a9: $11 $01 $02
    call Call_001_47fd                            ; $47ac: $cd $fd $47
    ret                                           ; $47af: $c9


    ld de, $ff00                                  ; $47b0: $11 $00 $ff
    call Call_001_47fd                            ; $47b3: $cd $fd $47
    ret nc                                        ; $47b6: $d0

    call Call_001_484d                            ; $47b7: $cd $4d $48
    ld de, $ff01                                  ; $47ba: $11 $01 $ff
    call Call_001_47fd                            ; $47bd: $cd $fd $47
    ret                                           ; $47c0: $c9


    ld de, $00ff                                  ; $47c1: $11 $ff $00
    call Call_001_47fd                            ; $47c4: $cd $fd $47
    ret nc                                        ; $47c7: $d0

    call Call_001_484d                            ; $47c8: $cd $4d $48
    ld de, $01ff                                  ; $47cb: $11 $ff $01
    call Call_001_47fd                            ; $47ce: $cd $fd $47
    ret                                           ; $47d1: $c9


    ld de, $0002                                  ; $47d2: $11 $02 $00
    call Call_001_47fd                            ; $47d5: $cd $fd $47
    ret nc                                        ; $47d8: $d0

    call Call_001_484d                            ; $47d9: $cd $4d $48
    ld de, $0102                                  ; $47dc: $11 $02 $01
    call Call_001_47fd                            ; $47df: $cd $fd $47
    ret                                           ; $47e2: $c9


Call_001_47e3:
    ld a, [$c241]                                 ; $47e3: $fa $41 $c2
    bit 7, a                                      ; $47e6: $cb $7f
    ret nz                                        ; $47e8: $c0

    ld a, [$c242]                                 ; $47e9: $fa $42 $c2
    or a                                          ; $47ec: $b7
    ret nz                                        ; $47ed: $c0

    ld a, [$c24c]                                 ; $47ee: $fa $4c $c2
    bit 7, a                                      ; $47f1: $cb $7f
    ret nz                                        ; $47f3: $c0

    ld a, [$c24d]                                 ; $47f4: $fa $4d $c2
    or a                                          ; $47f7: $b7
    ret nz                                        ; $47f8: $c0

    call Call_001_4817                            ; $47f9: $cd $17 $48
    ret                                           ; $47fc: $c9


Call_001_47fd:
    ld l, $02                                     ; $47fd: $2e $02
    ld a, [hl+]                                   ; $47ff: $2a

Call_001_4800:
    add e                                         ; $4800: $83
    or a                                          ; $4801: $b7
    ret z                                         ; $4802: $c8

    cp $07                                        ; $4803: $fe $07
    ret nc                                        ; $4805: $d0

    ld e, a                                       ; $4806: $5f
    ld a, [hl]                                    ; $4807: $7e
    add d                                         ; $4808: $82
    or a                                          ; $4809: $b7
    ret z                                         ; $480a: $c8

    cp $09                                        ; $480b: $fe $09
    ret nc                                        ; $480d: $d0

    ld d, a                                       ; $480e: $57
    call Call_000_2eee                            ; $480f: $cd $ee $2e
    call Call_000_2f25                            ; $4812: $cd $25 $2f
    scf                                           ; $4815: $37
    ret                                           ; $4816: $c9


Call_001_4817:
    ld l, $00                                     ; $4817: $2e $00
    ld a, [hl+]                                   ; $4819: $2a
    ld [$c224], a                                 ; $481a: $ea $24 $c2
    ld a, [hl+]                                   ; $481d: $2a
    ld [$c227], a                                 ; $481e: $ea $27 $c2
    ld a, [hl+]                                   ; $4821: $2a
    ld [$c225], a                                 ; $4822: $ea $25 $c2
    ld a, [hl+]                                   ; $4825: $2a
    ld [$c226], a                                 ; $4826: $ea $26 $c2
    ld a, [$c237]                                 ; $4829: $fa $37 $c2
    add $02                                       ; $482c: $c6 $02
    ld [$c23a], a                                 ; $482e: $ea $3a $c2
    push de                                       ; $4831: $d5
    push hl                                       ; $4832: $e5
    call Call_000_2eb6                            ; $4833: $cd $b6 $2e
    pop hl                                        ; $4836: $e1
    pop de                                        ; $4837: $d1
    ld l, $02                                     ; $4838: $2e $02
    ld a, e                                       ; $483a: $7b
    add [hl]                                      ; $483b: $86
    ld [hl+], a                                   ; $483c: $22
    ld [$c225], a                                 ; $483d: $ea $25 $c2
    ld a, d                                       ; $4840: $7a
    add [hl]                                      ; $4841: $86
    ld [hl], a                                    ; $4842: $77
    ld [$c226], a                                 ; $4843: $ea $26 $c2
    push hl                                       ; $4846: $e5
    call Call_000_2e6d                            ; $4847: $cd $6d $2e
    pop hl                                        ; $484a: $e1
    scf                                           ; $484b: $37
    ret                                           ; $484c: $c9


Call_001_484d:
    ld a, [$c240]                                 ; $484d: $fa $40 $c2
    ld [$c24b], a                                 ; $4850: $ea $4b $c2
    ld a, [$c241]                                 ; $4853: $fa $41 $c2
    ld [$c24c], a                                 ; $4856: $ea $4c $c2
    ld a, [$c242]                                 ; $4859: $fa $42 $c2
    ld [$c24d], a                                 ; $485c: $ea $4d $c2
    ret                                           ; $485f: $c9


    call Call_001_48e3                            ; $4860: $cd $e3 $48
    ret c                                         ; $4863: $d8

    call Call_001_48d5                            ; $4864: $cd $d5 $48
    ret c                                         ; $4867: $d8

    call Call_001_48ce                            ; $4868: $cd $ce $48
    ret c                                         ; $486b: $d8

    call Call_001_48dc                            ; $486c: $cd $dc $48
    ret                                           ; $486f: $c9


    ld l, $0f                                     ; $4870: $2e $0f
    ld a, [hl]                                    ; $4872: $7e
    and $03                                       ; $4873: $e6 $03
    rst RST_00                                    ; $4875: $c7
    adc $48                                       ; $4876: $ce $48
    call c, $d548                                 ; $4878: $dc $48 $d5
    ld c, b                                       ; $487b: $48
    db $e3                                        ; $487c: $e3
    ld c, b                                       ; $487d: $48
    call Call_001_48e3                            ; $487e: $cd $e3 $48
    ret c                                         ; $4881: $d8

    call Call_001_48ff                            ; $4882: $cd $ff $48
    ret c                                         ; $4885: $d8

    call Call_001_48d5                            ; $4886: $cd $d5 $48
    ret c                                         ; $4889: $d8

    call Call_001_4906                            ; $488a: $cd $06 $49
    ret c                                         ; $488d: $d8

    call Call_001_48dc                            ; $488e: $cd $dc $48
    ret c                                         ; $4891: $d8

    call Call_001_48f8                            ; $4892: $cd $f8 $48
    ret                                           ; $4895: $c9


    call Call_001_490d                            ; $4896: $cd $0d $49
    ret c                                         ; $4899: $d8

    call Call_001_48d5                            ; $489a: $cd $d5 $48
    ret c                                         ; $489d: $d8

    call Call_001_48f1                            ; $489e: $cd $f1 $48
    ret c                                         ; $48a1: $d8

    call Call_001_48ce                            ; $48a2: $cd $ce $48
    ret c                                         ; $48a5: $d8

    call Call_001_48ea                            ; $48a6: $cd $ea $48
    ret c                                         ; $48a9: $d8

    call Call_001_48dc                            ; $48aa: $cd $dc $48
    ret                                           ; $48ad: $c9


    call Call_001_490d                            ; $48ae: $cd $0d $49
    ret c                                         ; $48b1: $d8

    call Call_001_491b                            ; $48b2: $cd $1b $49
    ret c                                         ; $48b5: $d8

    call Call_001_48d5                            ; $48b6: $cd $d5 $48
    ret c                                         ; $48b9: $d8

    call Call_001_48f1                            ; $48ba: $cd $f1 $48
    ret c                                         ; $48bd: $d8

    call Call_001_4906                            ; $48be: $cd $06 $49
    ret c                                         ; $48c1: $d8

    call Call_001_4914                            ; $48c2: $cd $14 $49
    ret c                                         ; $48c5: $d8

    call Call_001_48dc                            ; $48c6: $cd $dc $48
    ret c                                         ; $48c9: $d8

    call Call_001_48f8                            ; $48ca: $cd $f8 $48
    ret                                           ; $48cd: $c9


Call_001_48ce:
    ld c, $00                                     ; $48ce: $0e $00
    ld de, $0100                                  ; $48d0: $11 $00 $01
    jr jr_001_4920                                ; $48d3: $18 $4b

Call_001_48d5:
    ld c, $01                                     ; $48d5: $0e $01
    ld de, $ff00                                  ; $48d7: $11 $00 $ff
    jr jr_001_4920                                ; $48da: $18 $44

Call_001_48dc:
    ld c, $02                                     ; $48dc: $0e $02
    ld de, $00ff                                  ; $48de: $11 $ff $00
    jr jr_001_4920                                ; $48e1: $18 $3d

Call_001_48e3:
    ld c, $03                                     ; $48e3: $0e $03
    ld de, $0001                                  ; $48e5: $11 $01 $00
    jr jr_001_4920                                ; $48e8: $18 $36

Call_001_48ea:
    ld c, $00                                     ; $48ea: $0e $00
    ld de, $0101                                  ; $48ec: $11 $01 $01
    jr jr_001_4920                                ; $48ef: $18 $2f

Call_001_48f1:
    ld c, $01                                     ; $48f1: $0e $01
    ld de, $ff01                                  ; $48f3: $11 $01 $ff
    jr jr_001_4920                                ; $48f6: $18 $28

Call_001_48f8:
    ld c, $02                                     ; $48f8: $0e $02
    ld de, $01ff                                  ; $48fa: $11 $ff $01
    jr jr_001_4920                                ; $48fd: $18 $21

Call_001_48ff:
    ld c, $03                                     ; $48ff: $0e $03
    ld de, $0101                                  ; $4901: $11 $01 $01
    jr jr_001_4920                                ; $4904: $18 $1a

Call_001_4906:
    ld c, $00                                     ; $4906: $0e $00
    ld de, $0200                                  ; $4908: $11 $00 $02
    jr jr_001_4920                                ; $490b: $18 $13

Call_001_490d:
    ld c, $03                                     ; $490d: $0e $03
    ld de, $0002                                  ; $490f: $11 $02 $00
    jr jr_001_4920                                ; $4912: $18 $0c

Call_001_4914:
    ld c, $00                                     ; $4914: $0e $00
    ld de, $0201                                  ; $4916: $11 $01 $02
    jr jr_001_4920                                ; $4919: $18 $05

Call_001_491b:
    ld c, $03                                     ; $491b: $0e $03
    ld de, $0102                                  ; $491d: $11 $02 $01

jr_001_4920:
    ld l, $02                                     ; $4920: $2e $02
    ld a, [hl+]                                   ; $4922: $2a
    add e                                         ; $4923: $83
    cp $08                                        ; $4924: $fe $08
    ret nc                                        ; $4926: $d0

    ld e, a                                       ; $4927: $5f
    ld a, [hl]                                    ; $4928: $7e
    add d                                         ; $4929: $82
    cp $0a                                        ; $492a: $fe $0a
    ret nc                                        ; $492c: $d0

    ld d, a                                       ; $492d: $57
    ld l, $01                                     ; $492e: $2e $01
    ld a, [hl]                                    ; $4930: $7e
    push bc                                       ; $4931: $c5
    push af                                       ; $4932: $f5
    ld l, $0d                                     ; $4933: $2e $0d
    bit 6, [hl]                                   ; $4935: $cb $76
    jr z, jr_001_493f                             ; $4937: $28 $06

    pop af                                        ; $4939: $f1
    call Call_001_57db                            ; $493a: $cd $db $57
    jr jr_001_4943                                ; $493d: $18 $04

jr_001_493f:
    pop af                                        ; $493f: $f1
    call Call_001_57f1                            ; $4940: $cd $f1 $57

jr_001_4943:
    pop bc                                        ; $4943: $c1
    ccf                                           ; $4944: $3f
    ret                                           ; $4945: $c9


Call_001_4946:
    ld hl, $c23b                                  ; $4946: $21 $3b $c2
    ld a, [hl]                                    ; $4949: $7e
    inc [hl]                                      ; $494a: $34
    and $0f                                       ; $494b: $e6 $0f
    ret nz                                        ; $494d: $c0

    ld hl, $c5c0                                  ; $494e: $21 $c0 $c5
    ld b, $24                                     ; $4951: $06 $24

jr_001_4953:
    push hl                                       ; $4953: $e5
    call Call_001_4960                            ; $4954: $cd $60 $49
    pop hl                                        ; $4957: $e1
    ld de, $0010                                  ; $4958: $11 $10 $00
    add hl, de                                    ; $495b: $19
    dec b                                         ; $495c: $05
    jr nz, jr_001_4953                            ; $495d: $20 $f4

    ret                                           ; $495f: $c9


Call_001_4960:
    ld a, [hl+]                                   ; $4960: $2a
    or a                                          ; $4961: $b7
    ret z                                         ; $4962: $c8

    inc l                                         ; $4963: $2c
    inc l                                         ; $4964: $2c
    inc l                                         ; $4965: $2c
    ld a, [hl+]                                   ; $4966: $2a
    xor [hl]                                      ; $4967: $ae
    dec l                                         ; $4968: $2d
    ld [hl], a                                    ; $4969: $77
    ret                                           ; $496a: $c9


    call Call_001_497e                            ; $496b: $cd $7e $49
    call Call_001_4997                            ; $496e: $cd $97 $49
    call Call_001_4d72                            ; $4971: $cd $72 $4d
    call Call_001_4b57                            ; $4974: $cd $57 $4b
    call Call_001_4d89                            ; $4977: $cd $89 $4d
    call Call_001_4b95                            ; $497a: $cd $95 $4b
    ret                                           ; $497d: $c9


Call_001_497e:
    ld hl, $d400                                  ; $497e: $21 $00 $d4
    ld b, $80                                     ; $4981: $06 $80
    xor a                                         ; $4983: $af

jr_001_4984:
    ld [hl+], a                                   ; $4984: $22
    dec b                                         ; $4985: $05
    jr nz, jr_001_4984                            ; $4986: $20 $fc

    ld hl, $c5c0                                  ; $4988: $21 $c0 $c5
    ld de, $0010                                  ; $498b: $11 $10 $00
    ld b, $24                                     ; $498e: $06 $24
    xor a                                         ; $4990: $af

jr_001_4991:
    ld [hl], a                                    ; $4991: $77
    add hl, de                                    ; $4992: $19
    dec b                                         ; $4993: $05
    jr nz, jr_001_4991                            ; $4994: $20 $fb

    ret                                           ; $4996: $c9


Call_001_4997:
    ld hl, $c300                                  ; $4997: $21 $00 $c3
    ld b, $09                                     ; $499a: $06 $09

jr_001_499c:
    push bc                                       ; $499c: $c5
    push hl                                       ; $499d: $e5
    ld a, [hl+]                                   ; $499e: $2a
    or a                                          ; $499f: $b7
    call nz, Call_001_49ad                        ; $49a0: $c4 $ad $49
    pop hl                                        ; $49a3: $e1
    ld de, $0020                                  ; $49a4: $11 $20 $00
    add hl, de                                    ; $49a7: $19
    pop bc                                        ; $49a8: $c1
    dec b                                         ; $49a9: $05
    jr nz, jr_001_499c                            ; $49aa: $20 $f0

    ret                                           ; $49ac: $c9


Call_001_49ad:
    ld [$c201], a                                 ; $49ad: $ea $01 $c2
    ld b, a                                       ; $49b0: $47
    ld a, [hl+]                                   ; $49b1: $2a
    ld [$c202], a                                 ; $49b2: $ea $02 $c2
    ld a, [hl+]                                   ; $49b5: $2a
    ld [$c203], a                                 ; $49b6: $ea $03 $c2
    ld a, $0e                                     ; $49b9: $3e $0e
    rst RST_28                                    ; $49bb: $ef
    push hl                                       ; $49bc: $e5
    xor a                                         ; $49bd: $af
    ld [$c228], a                                 ; $49be: $ea $28 $c2
    ld [$c220], a                                 ; $49c1: $ea $20 $c2
    call Call_000_135d                            ; $49c4: $cd $5d $13
    call Call_001_49d0                            ; $49c7: $cd $d0 $49
    pop hl                                        ; $49ca: $e1
    ld a, [$c228]                                 ; $49cb: $fa $28 $c2
    ld [hl], a                                    ; $49ce: $77
    ret                                           ; $49cf: $c9


Call_001_49d0:
jr_001_49d0:
    ld a, [$c220]                                 ; $49d0: $fa $20 $c2
    cp $04                                        ; $49d3: $fe $04
    ret nc                                        ; $49d5: $d0

    ld hl, $c445                                  ; $49d6: $21 $45 $c4
    rst RST_28                                    ; $49d9: $ef
    ld c, [hl]                                    ; $49da: $4e
    ld a, c                                       ; $49db: $79
    cp $02                                        ; $49dc: $fe $02
    jr c, jr_001_49f1                             ; $49de: $38 $11

    ld hl, $7931                                  ; $49e0: $21 $31 $79
    rst RST_28                                    ; $49e3: $ef
    ld b, [hl]                                    ; $49e4: $46
    push bc                                       ; $49e5: $c5
    call Call_001_49f7                            ; $49e6: $cd $f7 $49
    pop bc                                        ; $49e9: $c1
    ld a, [$c201]                                 ; $49ea: $fa $01 $c2
    ld b, a                                       ; $49ed: $47
    call Call_001_4a48                            ; $49ee: $cd $48 $4a

jr_001_49f1:
    ld hl, $c220                                  ; $49f1: $21 $20 $c2
    inc [hl]                                      ; $49f4: $34
    jr jr_001_49d0                                ; $49f5: $18 $d9

Call_001_49f7:
    ld a, [$c220]                                 ; $49f7: $fa $20 $c2
    ld hl, $c441                                  ; $49fa: $21 $41 $c4
    rst RST_28                                    ; $49fd: $ef
    ld e, [hl]                                    ; $49fe: $5e
    ld a, e                                       ; $49ff: $7b
    and $0f                                       ; $4a00: $e6 $0f
    ld l, a                                       ; $4a02: $6f
    ld a, e                                       ; $4a03: $7b
    swap a                                        ; $4a04: $cb $37
    and $0f                                       ; $4a06: $e6 $0f
    ld h, a                                       ; $4a08: $67
    ld a, b                                       ; $4a09: $78
    dec a                                         ; $4a0a: $3d
    rst RST_00                                    ; $4a0b: $c7
    inc d                                         ; $4a0c: $14
    ld c, d                                       ; $4a0d: $4a
    ld d, $4a                                     ; $4a0e: $16 $4a
    jr nz, jr_001_4a5c                            ; $4a10: $20 $4a

    add hl, hl                                    ; $4a12: $29
    ld c, d                                       ; $4a13: $4a
    jr jr_001_4a34                                ; $4a14: $18 $1e

    ld a, [$c203]                                 ; $4a16: $fa $03 $c2
    rra                                           ; $4a19: $1f
    rra                                           ; $4a1a: $1f
    jr nc, jr_001_4a1e                            ; $4a1b: $30 $01

    inc h                                         ; $4a1d: $24

jr_001_4a1e:
    jr jr_001_4a34                                ; $4a1e: $18 $14

    ld a, [$c203]                                 ; $4a20: $fa $03 $c2
    rra                                           ; $4a23: $1f
    jr nc, jr_001_4a27                            ; $4a24: $30 $01

    inc l                                         ; $4a26: $2c

jr_001_4a27:
    jr jr_001_4a34                                ; $4a27: $18 $0b

    ld a, [$c203]                                 ; $4a29: $fa $03 $c2
    rra                                           ; $4a2c: $1f
    jr nc, jr_001_4a30                            ; $4a2d: $30 $01

    inc l                                         ; $4a2f: $2c

jr_001_4a30:
    rra                                           ; $4a30: $1f
    jr nc, jr_001_4a34                            ; $4a31: $30 $01

    inc h                                         ; $4a33: $24

jr_001_4a34:
    ld a, [$c203]                                 ; $4a34: $fa $03 $c2
    ld b, a                                       ; $4a37: $47
    rr b                                          ; $4a38: $cb $18
    jr nc, jr_001_4a40                            ; $4a3a: $30 $04

    ld a, $07                                     ; $4a3c: $3e $07
    sub l                                         ; $4a3e: $95
    ld l, a                                       ; $4a3f: $6f

jr_001_4a40:
    rr b                                          ; $4a40: $cb $18
    ret nc                                        ; $4a42: $d0

    ld a, $09                                     ; $4a43: $3e $09
    sub h                                         ; $4a45: $94
    ld h, a                                       ; $4a46: $67
    ret                                           ; $4a47: $c9


Call_001_4a48:
    xor a                                         ; $4a48: $af
    ld [$c221], a                                 ; $4a49: $ea $21 $c2
    ld a, l                                       ; $4a4c: $7d
    ld [$c225], a                                 ; $4a4d: $ea $25 $c2
    ld a, h                                       ; $4a50: $7c
    ld [$c226], a                                 ; $4a51: $ea $26 $c2
    ld a, c                                       ; $4a54: $79
    ld [$c224], a                                 ; $4a55: $ea $24 $c2
    ld a, b                                       ; $4a58: $78
    ld [$c227], a                                 ; $4a59: $ea $27 $c2

jr_001_4a5c:
    ld a, [$c224]                                 ; $4a5c: $fa $24 $c2
    or a                                          ; $4a5f: $b7
    ret z                                         ; $4a60: $c8

    ld a, [$c227]                                 ; $4a61: $fa $27 $c2
    or a                                          ; $4a64: $b7
    ret z                                         ; $4a65: $c8

    call Call_000_2e28                            ; $4a66: $cd $28 $2e
    ret nz                                        ; $4a69: $c0

    call Call_001_4abe                            ; $4a6a: $cd $be $4a
    ret c                                         ; $4a6d: $d8

    call Call_001_4ae1                            ; $4a6e: $cd $e1 $4a
    ret nc                                        ; $4a71: $d0

    ld a, $01                                     ; $4a72: $3e $01
    ld [$c221], a                                 ; $4a74: $ea $21 $c2
    call Call_001_4a7b                            ; $4a77: $cd $7b $4a
    ret                                           ; $4a7a: $c9


Call_001_4a7b:
    ld hl, $c18e                                  ; $4a7b: $21 $8e $c1
    inc [hl]                                      ; $4a7e: $34

Jump_001_4a7f:
    ld hl, $c222                                  ; $4a7f: $21 $22 $c2
    rst RST_08                                    ; $4a82: $cf
    xor a                                         ; $4a83: $af
    ld [hl+], a                                   ; $4a84: $22
    ld [hl+], a                                   ; $4a85: $22
    ld [hl+], a                                   ; $4a86: $22
    ld [hl+], a                                   ; $4a87: $22
    ld [hl+], a                                   ; $4a88: $22
    ld [hl+], a                                   ; $4a89: $22
    ld [hl+], a                                   ; $4a8a: $22
    ld [hl+], a                                   ; $4a8b: $22
    ld [hl+], a                                   ; $4a8c: $22
    ld [hl+], a                                   ; $4a8d: $22
    ld [hl+], a                                   ; $4a8e: $22
    ld [hl+], a                                   ; $4a8f: $22
    ld [hl+], a                                   ; $4a90: $22
    ld [hl+], a                                   ; $4a91: $22
    ld [hl+], a                                   ; $4a92: $22
    ld [hl+], a                                   ; $4a93: $22
    ld hl, $c222                                  ; $4a94: $21 $22 $c2
    rst RST_08                                    ; $4a97: $cf
    ld a, [$c224]                                 ; $4a98: $fa $24 $c2
    ld [hl+], a                                   ; $4a9b: $22
    ld a, [$c227]                                 ; $4a9c: $fa $27 $c2
    ld [hl+], a                                   ; $4a9f: $22
    ld a, [$c225]                                 ; $4aa0: $fa $25 $c2
    ld [hl+], a                                   ; $4aa3: $22
    ld a, [$c226]                                 ; $4aa4: $fa $26 $c2
    ld [hl+], a                                   ; $4aa7: $22
    push hl                                       ; $4aa8: $e5
    call Call_000_1142                            ; $4aa9: $cd $42 $11
    call Call_001_75bb                            ; $4aac: $cd $bb $75
    pop hl                                        ; $4aaf: $e1
    ld a, [$c239]                                 ; $4ab0: $fa $39 $c2
    add $02                                       ; $4ab3: $c6 $02
    ld [$c23a], a                                 ; $4ab5: $ea $3a $c2
    call Call_000_2e6d                            ; $4ab8: $cd $6d $2e
    jp Jump_001_7899                              ; $4abb: $c3 $99 $78


Call_001_4abe:
    ld hl, $c5c0                                  ; $4abe: $21 $c0 $c5
    ld de, $0010                                  ; $4ac1: $11 $10 $00
    ld b, $00                                     ; $4ac4: $06 $00

jr_001_4ac6:
    ld a, [hl]                                    ; $4ac6: $7e
    and a                                         ; $4ac7: $a7
    jr z, jr_001_4ad3                             ; $4ac8: $28 $09

    add hl, de                                    ; $4aca: $19
    inc b                                         ; $4acb: $04
    ld a, b                                       ; $4acc: $78
    cp $24                                        ; $4acd: $fe $24
    jr c, jr_001_4ac6                             ; $4acf: $38 $f5

    scf                                           ; $4ad1: $37
    ret                                           ; $4ad2: $c9


jr_001_4ad3:
    ld a, b                                       ; $4ad3: $78
    ld [$c239], a                                 ; $4ad4: $ea $39 $c2
    ld a, l                                       ; $4ad7: $7d
    ld [$c222], a                                 ; $4ad8: $ea $22 $c2
    ld a, h                                       ; $4adb: $7c
    ld [$c223], a                                 ; $4adc: $ea $23 $c2
    xor a                                         ; $4adf: $af
    ret                                           ; $4ae0: $c9


Call_001_4ae1:
    ld a, [$c224]                                 ; $4ae1: $fa $24 $c2
    ld hl, $7915                                  ; $4ae4: $21 $15 $79
    rst RST_28                                    ; $4ae7: $ef
    ld a, [hl]                                    ; $4ae8: $7e
    ld hl, $c228                                  ; $4ae9: $21 $28 $c2
    add [hl]                                      ; $4aec: $86
    cp $15                                        ; $4aed: $fe $15
    ret nc                                        ; $4aef: $d0

    ld [hl], a                                    ; $4af0: $77
    scf                                           ; $4af1: $37
    ret                                           ; $4af2: $c9


Call_001_4af3:
    cp $80                                        ; $4af3: $fe $80
    ret nc                                        ; $4af5: $d0

    ld c, a                                       ; $4af6: $4f
    sub $02                                       ; $4af7: $d6 $02
    ret c                                         ; $4af9: $d8

    ld l, a                                       ; $4afa: $6f
    ld h, $00                                     ; $4afb: $26 $00
    add hl, hl                                    ; $4afd: $29
    add hl, hl                                    ; $4afe: $29
    add hl, hl                                    ; $4aff: $29
    add hl, hl                                    ; $4b00: $29
    ld de, $c5c0                                  ; $4b01: $11 $c0 $c5
    add hl, de                                    ; $4b04: $19
    ld a, [hl]                                    ; $4b05: $7e
    or a                                          ; $4b06: $b7
    ret z                                         ; $4b07: $c8

Call_001_4b08:
Jump_001_4b08:
    ld [$c224], a                                 ; $4b08: $ea $24 $c2
    ld de, $7915                                  ; $4b0b: $11 $15 $79
    rst RST_30                                    ; $4b0e: $f7
    ld a, [de]                                    ; $4b0f: $1a
    ld b, a                                       ; $4b10: $47
    ld a, c                                       ; $4b11: $79
    ld [$c23a], a                                 ; $4b12: $ea $3a $c2
    xor a                                         ; $4b15: $af
    ld [hl+], a                                   ; $4b16: $22
    ld a, [hl+]                                   ; $4b17: $2a
    ld [$c227], a                                 ; $4b18: $ea $27 $c2
    ld a, [hl+]                                   ; $4b1b: $2a
    ld [$c225], a                                 ; $4b1c: $ea $25 $c2
    ld a, [hl+]                                   ; $4b1f: $2a
    ld [$c226], a                                 ; $4b20: $ea $26 $c2
    ld a, [$c227]                                 ; $4b23: $fa $27 $c2
    ld hl, $206b                                  ; $4b26: $21 $6b $20
    call Call_000_041a                            ; $4b29: $cd $1a $04
    ld a, $11                                     ; $4b2c: $3e $11
    rst RST_28                                    ; $4b2e: $ef
    ld a, [hl]                                    ; $4b2f: $7e
    sub b                                         ; $4b30: $90
    ld [hl], a                                    ; $4b31: $77
    call Call_000_2eb6                            ; $4b32: $cd $b6 $2e
    ret                                           ; $4b35: $c9


Call_001_4b36:
    sub $02                                       ; $4b36: $d6 $02
    ret c                                         ; $4b38: $d8

    call Call_001_4b49                            ; $4b39: $cd $49 $4b
    ld a, [hl]                                    ; $4b3c: $7e
    or a                                          ; $4b3d: $b7
    ret z                                         ; $4b3e: $c8

    ld a, $06                                     ; $4b3f: $3e $06
    rst RST_28                                    ; $4b41: $ef
    ld c, [hl]                                    ; $4b42: $4e
    call Call_000_037b_SubtractBCD16Clamped                            ; $4b43: $cd $7b $03
    ld [hl], c                                    ; $4b46: $71
    ld a, c                                       ; $4b47: $79
    ret                                           ; $4b48: $c9


Call_001_4b49:
    push de                                       ; $4b49: $d5
    ld l, a                                       ; $4b4a: $6f
    ld h, $00                                     ; $4b4b: $26 $00
    add hl, hl                                    ; $4b4d: $29
    add hl, hl                                    ; $4b4e: $29
    add hl, hl                                    ; $4b4f: $29
    add hl, hl                                    ; $4b50: $29
    ld de, $c5c0                                  ; $4b51: $11 $c0 $c5
    add hl, de                                    ; $4b54: $19
    pop de                                        ; $4b55: $d1
    ret                                           ; $4b56: $c9


Call_001_4b57:
    ld a, $b0                                     ; $4b57: $3e $b0
    ld [$c035], a                                 ; $4b59: $ea $35 $c0
    xor a                                         ; $4b5c: $af
    ld hl, $d300                                  ; $4b5d: $21 $00 $d3
    ld b, $80                                     ; $4b60: $06 $80

jr_001_4b62:
    ld [hl+], a                                   ; $4b62: $22
    dec b                                         ; $4b63: $05
    jr nz, jr_001_4b62                            ; $4b64: $20 $fc

    ld hl, $c5c0                                  ; $4b66: $21 $c0 $c5
    ld b, $24                                     ; $4b69: $06 $24
    ld a, [$c420]                                 ; $4b6b: $fa $20 $c4
    ld c, a                                       ; $4b6e: $4f

jr_001_4b6f:
    push bc                                       ; $4b6f: $c5
    push hl                                       ; $4b70: $e5
    call Call_001_4b7e                            ; $4b71: $cd $7e $4b
    pop hl                                        ; $4b74: $e1
    ld de, $0010                                  ; $4b75: $11 $10 $00
    add hl, de                                    ; $4b78: $19
    pop bc                                        ; $4b79: $c1
    dec b                                         ; $4b7a: $05
    jr nz, jr_001_4b6f                            ; $4b7b: $20 $f2

    ret                                           ; $4b7d: $c9


Call_001_4b7e:
    ld a, [hl+]                                   ; $4b7e: $2a
    or a                                          ; $4b7f: $b7
    ret z                                         ; $4b80: $c8

    ld [$c236], a                                 ; $4b81: $ea $36 $c2
    ld a, [hl+]                                   ; $4b84: $2a
    cp c                                          ; $4b85: $b9
    ret nz                                        ; $4b86: $c0

    ld a, [$c236]                                 ; $4b87: $fa $36 $c2
    ld hl, $d300                                  ; $4b8a: $21 $00 $d3
    rst RST_28                                    ; $4b8d: $ef
    ld a, [hl]                                    ; $4b8e: $7e
    or a                                          ; $4b8f: $b7
    ret nz                                        ; $4b90: $c0

    call Call_000_1929                            ; $4b91: $cd $29 $19
    ret                                           ; $4b94: $c9


Call_001_4b95:
Jump_001_4b95:
    call Call_001_4d63                            ; $4b95: $cd $63 $4d
    ld a, $30                                     ; $4b98: $3e $30
    ld [$c233], a                                 ; $4b9a: $ea $33 $c2
    ld hl, $c5c0                                  ; $4b9d: $21 $c0 $c5
    ld b, $24                                     ; $4ba0: $06 $24
    ld a, [$c420]                                 ; $4ba2: $fa $20 $c4
    ld c, a                                       ; $4ba5: $4f

jr_001_4ba6:
    push bc                                       ; $4ba6: $c5
    push hl                                       ; $4ba7: $e5
    call Call_001_4bb5                            ; $4ba8: $cd $b5 $4b
    pop hl                                        ; $4bab: $e1
    ld de, $0010                                  ; $4bac: $11 $10 $00
    add hl, de                                    ; $4baf: $19
    pop bc                                        ; $4bb0: $c1
    dec b                                         ; $4bb1: $05
    jr nz, jr_001_4ba6                            ; $4bb2: $20 $f2

    ret                                           ; $4bb4: $c9


Call_001_4bb5:
    ld a, $01                                     ; $4bb5: $3e $01
    ld [$c260], a                                 ; $4bb7: $ea $60 $c2
    ld a, [hl+]                                   ; $4bba: $2a
    or a                                          ; $4bbb: $b7
    ret z                                         ; $4bbc: $c8

    ld [$c224], a                                 ; $4bbd: $ea $24 $c2
    ld a, [hl+]                                   ; $4bc0: $2a
    cp c                                          ; $4bc1: $b9
    ret nz                                        ; $4bc2: $c0

    ld a, [hl+]                                   ; $4bc3: $2a
    ld [$c229], a                                 ; $4bc4: $ea $29 $c2
    ld a, [hl+]                                   ; $4bc7: $2a
    ld [$c22a], a                                 ; $4bc8: $ea $2a $c2
    bit 7, [hl]                                   ; $4bcb: $cb $7e
    jr z, jr_001_4bd5                             ; $4bcd: $28 $06

    ld a, [$c233]                                 ; $4bcf: $fa $33 $c2
    ld [$c531], a                                 ; $4bd2: $ea $31 $c5

jr_001_4bd5:
    ld a, [hl]                                    ; $4bd5: $7e
    and $7f                                       ; $4bd6: $e6 $7f
    ld [$c235], a                                 ; $4bd8: $ea $35 $c2
    ld a, [$c224]                                 ; $4bdb: $fa $24 $c2
    ld hl, $d300                                  ; $4bde: $21 $00 $d3
    rst RST_28                                    ; $4be1: $ef
    ld a, [hl]                                    ; $4be2: $7e
    ld [$c22e], a                                 ; $4be3: $ea $2e $c2
    ld a, [$c224]                                 ; $4be6: $fa $24 $c2
    ld hl, $7915                                  ; $4be9: $21 $15 $79
    rst RST_28                                    ; $4bec: $ef
    ld b, [hl]                                    ; $4bed: $46
    srl b                                         ; $4bee: $cb $38
    call Call_000_1126                            ; $4bf0: $cd $26 $11
    ld hl, $c2e0                                  ; $4bf3: $21 $e0 $c2
    ld a, [$c233]                                 ; $4bf6: $fa $33 $c2
    ld e, a                                       ; $4bf9: $5f
    ld d, $da                                     ; $4bfa: $16 $da

jr_001_4bfc:
    push bc                                       ; $4bfc: $c5
    ld a, b                                       ; $4bfd: $78
    ld [$c23f], a                                 ; $4bfe: $ea $3f $c2
    ld a, [$c229]                                 ; $4c01: $fa $29 $c2
    add [hl]                                      ; $4c04: $86
    ld c, a                                       ; $4c05: $4f
    inc hl                                        ; $4c06: $23
    ld a, [$c22a]                                 ; $4c07: $fa $2a $c2
    add [hl]                                      ; $4c0a: $86
    ld b, a                                       ; $4c0b: $47
    inc hl                                        ; $4c0c: $23
    ld a, [hl+]                                   ; $4c0d: $2a
    ld [$c22b], a                                 ; $4c0e: $ea $2b $c2
    ld a, [hl+]                                   ; $4c11: $2a
    ld [$c22c], a                                 ; $4c12: $ea $2c $c2
    ld a, [hl+]                                   ; $4c15: $2a
    ld [$c22d], a                                 ; $4c16: $ea $2d $c2
    push hl                                       ; $4c19: $e5
    push de                                       ; $4c1a: $d5
    push bc                                       ; $4c1b: $c5
    call Call_001_4c5d                            ; $4c1c: $cd $5d $4c
    pop bc                                        ; $4c1f: $c1
    pop de                                        ; $4c20: $d1
    pop hl                                        ; $4c21: $e1
    call Call_001_4c50                            ; $4c22: $cd $50 $4c
    ld a, c                                       ; $4c25: $79
    ld [de], a                                    ; $4c26: $12
    inc e                                         ; $4c27: $1c
    ld a, b                                       ; $4c28: $78
    ld [de], a                                    ; $4c29: $12
    inc e                                         ; $4c2a: $1c
    ld a, [$c22f]                                 ; $4c2b: $fa $2f $c2
    ld [de], a                                    ; $4c2e: $12
    inc e                                         ; $4c2f: $1c
    ld a, [$c231]                                 ; $4c30: $fa $31 $c2
    ld [de], a                                    ; $4c33: $12
    inc e                                         ; $4c34: $1c
    ld a, c                                       ; $4c35: $79
    ld [de], a                                    ; $4c36: $12
    inc e                                         ; $4c37: $1c
    ld a, b                                       ; $4c38: $78
    add $08                                       ; $4c39: $c6 $08
    ld [de], a                                    ; $4c3b: $12
    inc e                                         ; $4c3c: $1c
    ld a, [$c230]                                 ; $4c3d: $fa $30 $c2
    ld [de], a                                    ; $4c40: $12
    inc e                                         ; $4c41: $1c
    ld a, [$c232]                                 ; $4c42: $fa $32 $c2
    ld [de], a                                    ; $4c45: $12
    inc e                                         ; $4c46: $1c
    pop bc                                        ; $4c47: $c1
    dec b                                         ; $4c48: $05
    jr nz, jr_001_4bfc                            ; $4c49: $20 $b1

    ld a, e                                       ; $4c4b: $7b
    ld [$c233], a                                 ; $4c4c: $ea $33 $c2
    ret                                           ; $4c4f: $c9


Call_001_4c50:
    ld a, c                                       ; $4c50: $79
    swap a                                        ; $4c51: $cb $37
    add $10                                       ; $4c53: $c6 $10
    ld c, a                                       ; $4c55: $4f
    ld a, b                                       ; $4c56: $78
    swap a                                        ; $4c57: $cb $37
    add $08                                       ; $4c59: $c6 $08
    ld b, a                                       ; $4c5b: $47
    ret                                           ; $4c5c: $c9


Call_001_4c5d:
    ld a, [$c23d]                                 ; $4c5d: $fa $3d $c2
    or a                                          ; $4c60: $b7
    jr nz, jr_001_4c9f                            ; $4c61: $20 $3c

    ld a, [$c23e]                                 ; $4c63: $fa $3e $c2
    or a                                          ; $4c66: $b7
    jr nz, jr_001_4cb0                            ; $4c67: $20 $47

    ld e, c                                       ; $4c69: $59
    ld d, b                                       ; $4c6a: $50
    ld a, [$c420]                                 ; $4c6b: $fa $20 $c4
    call Call_000_2dfe                            ; $4c6e: $cd $fe $2d
    call Call_000_0450                            ; $4c71: $cd $50 $04
    call Call_000_295d                            ; $4c74: $cd $5d $29
    bit 0, c                                      ; $4c77: $cb $41
    jr nz, jr_001_4cc0                            ; $4c79: $20 $45

    ld a, [$c22e]                                 ; $4c7b: $fa $2e $c2
    ld c, a                                       ; $4c7e: $4f
    ld a, [$c22b]                                 ; $4c7f: $fa $2b $c2
    add c                                         ; $4c82: $81
    ld [$c22f], a                                 ; $4c83: $ea $2f $c2
    ld a, [$c22e]                                 ; $4c86: $fa $2e $c2
    ld c, a                                       ; $4c89: $4f
    ld a, [$c22c]                                 ; $4c8a: $fa $2c $c2
    add c                                         ; $4c8d: $81
    ld [$c230], a                                 ; $4c8e: $ea $30 $c2
    ld a, [$c22d]                                 ; $4c91: $fa $2d $c2
    ld [$c231], a                                 ; $4c94: $ea $31 $c2
    ld [$c232], a                                 ; $4c97: $ea $32 $c2
    xor a                                         ; $4c9a: $af
    ld [$c260], a                                 ; $4c9b: $ea $60 $c2
    ret                                           ; $4c9e: $c9


jr_001_4c9f:
    ld [$c22f], a                                 ; $4c9f: $ea $2f $c2
    add $02                                       ; $4ca2: $c6 $02
    ld [$c230], a                                 ; $4ca4: $ea $30 $c2
    ld a, $10                                     ; $4ca7: $3e $10
    ld [$c231], a                                 ; $4ca9: $ea $31 $c2
    ld [$c232], a                                 ; $4cac: $ea $32 $c2
    ret                                           ; $4caf: $c9


jr_001_4cb0:
    ld [$c22f], a                                 ; $4cb0: $ea $2f $c2
    ld [$c230], a                                 ; $4cb3: $ea $30 $c2
    xor a                                         ; $4cb6: $af
    ld [$c231], a                                 ; $4cb7: $ea $31 $c2
    ld a, $20                                     ; $4cba: $3e $20
    ld [$c232], a                                 ; $4cbc: $ea $32 $c2
    ret                                           ; $4cbf: $c9


jr_001_4cc0:
    ld a, [$c235]                                 ; $4cc0: $fa $35 $c2
    rra                                           ; $4cc3: $1f
    rra                                           ; $4cc4: $1f
    rra                                           ; $4cc5: $1f
    and $03                                       ; $4cc6: $e6 $03
    ld hl, $4ce6                                  ; $4cc8: $21 $e6 $4c
    call Call_000_041a                            ; $4ccb: $cd $1a $04
    ld a, [$c23f]                                 ; $4cce: $fa $3f $c2
    dec a                                         ; $4cd1: $3d
    add a                                         ; $4cd2: $87
    add a                                         ; $4cd3: $87
    rst RST_28                                    ; $4cd4: $ef
    ld a, [hl+]                                   ; $4cd5: $2a
    ld [$c22f], a                                 ; $4cd6: $ea $2f $c2
    ld a, [hl+]                                   ; $4cd9: $2a
    ld [$c231], a                                 ; $4cda: $ea $31 $c2
    ld a, [hl+]                                   ; $4cdd: $2a
    ld [$c230], a                                 ; $4cde: $ea $30 $c2
    ld a, [hl+]                                   ; $4ce1: $2a
    ld [$c232], a                                 ; $4ce2: $ea $32 $c2
    ret                                           ; $4ce5: $c9


    xor $4c                                       ; $4ce6: $ee $4c
    ldh a, [c]                                    ; $4ce8: $f2
    ld c, h                                       ; $4ce9: $4c
    ld a, [$024c]                                 ; $4cea: $fa $4c $02
    ld c, l                                       ; $4ced: $4d
    adc h                                         ; $4cee: $8c
    db $10                                        ; $4cef: $10
    adc h                                         ; $4cf0: $8c
    jr nc, jr_001_4d3d                            ; $4cf1: $30 $4a

    db $10                                        ; $4cf3: $10
    ld c, d                                       ; $4cf4: $4a
    jr nc, @+$4a                                  ; $4cf5: $30 $48

    db $10                                        ; $4cf7: $10
    ld c, b                                       ; $4cf8: $48
    jr nc, @-$72                                  ; $4cf9: $30 $8c

    jr nc, jr_001_4d43                            ; $4cfb: $30 $46

    nop                                           ; $4cfd: $00
    ld b, [hl]                                    ; $4cfe: $46
    nop                                           ; $4cff: $00
    adc h                                         ; $4d00: $8c
    db $10                                        ; $4d01: $10
    ld c, d                                       ; $4d02: $4a
    jr nc, jr_001_4d4b                            ; $4d03: $30 $46

    nop                                           ; $4d05: $00
    ld b, [hl]                                    ; $4d06: $46
    nop                                           ; $4d07: $00
    ld c, d                                       ; $4d08: $4a
    db $10                                        ; $4d09: $10
    ld c, b                                       ; $4d0a: $48
    jr nc, jr_001_4d53                            ; $4d0b: $30 $46

    nop                                           ; $4d0d: $00
    ld b, [hl]                                    ; $4d0e: $46
    nop                                           ; $4d0f: $00
    ld c, b                                       ; $4d10: $48
    db $10                                        ; $4d11: $10
    call Call_001_4d63                            ; $4d12: $cd $63 $4d
    ld a, $02                                     ; $4d15: $3e $02
    ld [$c524], a                                 ; $4d17: $ea $24 $c5
    ld a, $30                                     ; $4d1a: $3e $30
    ld [$c233], a                                 ; $4d1c: $ea $33 $c2
    ld hl, $c5c0                                  ; $4d1f: $21 $c0 $c5
    ld b, $24                                     ; $4d22: $06 $24
    ld a, [$c420]                                 ; $4d24: $fa $20 $c4
    ld c, a                                       ; $4d27: $4f

jr_001_4d28:
    push bc                                       ; $4d28: $c5
    push hl                                       ; $4d29: $e5
    ld a, [$c233]                                 ; $4d2a: $fa $33 $c2
    ld [$c234], a                                 ; $4d2d: $ea $34 $c2
    call Call_001_4bb5                            ; $4d30: $cd $b5 $4b
    pop hl                                        ; $4d33: $e1
    push hl                                       ; $4d34: $e5
    call Call_001_4d46                            ; $4d35: $cd $46 $4d
    ld hl, $c524                                  ; $4d38: $21 $24 $c5
    inc [hl]                                      ; $4d3b: $34
    pop hl                                        ; $4d3c: $e1

jr_001_4d3d:
    ld de, $0010                                  ; $4d3d: $11 $10 $00
    add hl, de                                    ; $4d40: $19
    pop bc                                        ; $4d41: $c1
    dec b                                         ; $4d42: $05

jr_001_4d43:
    jr nz, jr_001_4d28                            ; $4d43: $20 $e3

    ret                                           ; $4d45: $c9


Call_001_4d46:
    ld a, [$c260]                                 ; $4d46: $fa $60 $c2
    or a                                          ; $4d49: $b7
    ret nz                                        ; $4d4a: $c0

jr_001_4d4b:
    ld a, [hl+]                                   ; $4d4b: $2a
    or a                                          ; $4d4c: $b7
    ret z                                         ; $4d4d: $c8

    ld a, [hl+]                                   ; $4d4e: $2a
    cp c                                          ; $4d4f: $b9
    ret nz                                        ; $4d50: $c0

    ld a, $04                                     ; $4d51: $3e $04

jr_001_4d53:
    rst RST_28                                    ; $4d53: $ef
    ld a, [hl]                                    ; $4d54: $7e
    ld [$c23c], a                                 ; $4d55: $ea $3c $c2
    ld a, [$c234]                                 ; $4d58: $fa $34 $c2
    ld l, a                                       ; $4d5b: $6f
    ld h, $da                                     ; $4d5c: $26 $da
    inc l                                         ; $4d5e: $2c
    inc l                                         ; $4d5f: $2c
    jp $59e9                                      ; $4d60: $c3 $e9 $59


Call_001_4d63:
    ld b, $1a                                     ; $4d63: $06 $1a
    ld hl, $da30                                  ; $4d65: $21 $30 $da
    ld de, $0004                                  ; $4d68: $11 $04 $00
    xor a                                         ; $4d6b: $af

jr_001_4d6c:
    ld [hl], a                                    ; $4d6c: $77
    add hl, de                                    ; $4d6d: $19
    dec b                                         ; $4d6e: $05
    jr nz, jr_001_4d6c                            ; $4d6f: $20 $fb

    ret                                           ; $4d71: $c9


Call_001_4d72:
    ld a, [$c105]                                 ; $4d72: $fa $05 $c1
    cp $07                                        ; $4d75: $fe $07
    jr c, jr_001_4d7b                             ; $4d77: $38 $02

    ld a, $07                                     ; $4d79: $3e $07

jr_001_4d7b:
    ld hl, $794d                                  ; $4d7b: $21 $4d $79
    add a                                         ; $4d7e: $87
    rst RST_28                                    ; $4d7f: $ef
    ld a, [hl+]                                   ; $4d80: $2a
    ld [$c264], a                                 ; $4d81: $ea $64 $c2
    ld a, [hl]                                    ; $4d84: $7e
    ld [$c265], a                                 ; $4d85: $ea $65 $c2
    ret                                           ; $4d88: $c9


Call_001_4d89:
    ld a, $f0                                     ; $4d89: $3e $f0
    ld [$c035], a                                 ; $4d8b: $ea $35 $c0
    ld a, [$c264]                                 ; $4d8e: $fa $64 $c2
    ld [$c236], a                                 ; $4d91: $ea $36 $c2
    call Call_000_1929                            ; $4d94: $cd $29 $19
    ld a, $f8                                     ; $4d97: $3e $f8
    ld [$c035], a                                 ; $4d99: $ea $35 $c0
    ld a, [$c265]                                 ; $4d9c: $fa $65 $c2
    ld [$c236], a                                 ; $4d9f: $ea $36 $c2
    jp Jump_000_1929                              ; $4da2: $c3 $29 $19


Call_001_4da5:
    ld hl, $c5c0                                  ; $4da5: $21 $c0 $c5
    ld de, $0010                                  ; $4da8: $11 $10 $00
    ld b, $24                                     ; $4dab: $06 $24
    ld a, [$c420]                                 ; $4dad: $fa $20 $c4
    ld c, a                                       ; $4db0: $4f

jr_001_4db1:
    ld a, [hl]                                    ; $4db1: $7e
    or a                                          ; $4db2: $b7
    jr z, jr_001_4db9                             ; $4db3: $28 $04

    inc l                                         ; $4db5: $2c
    ld a, [hl-]                                   ; $4db6: $3a
    cp c                                          ; $4db7: $b9
    ret z                                         ; $4db8: $c8

jr_001_4db9:
    add hl, de                                    ; $4db9: $19
    dec b                                         ; $4dba: $05
    jr nz, jr_001_4db1                            ; $4dbb: $20 $f4

    inc b                                         ; $4dbd: $04
    ret                                           ; $4dbe: $c9


    xor a                                         ; $4dbf: $af
    ld [$c02b], a                                 ; $4dc0: $ea $2b $c0
    ld [$c027], a                                 ; $4dc3: $ea $27 $c0
    ld [$c033], a                                 ; $4dc6: $ea $33 $c0
    ld [$c034], a                                 ; $4dc9: $ea $34 $c0
    ld a, $01                                     ; $4dcc: $3e $01
    ld [$c028], a                                 ; $4dce: $ea $28 $c0
    call Call_000_053f                            ; $4dd1: $cd $3f $05
    call Call_000_0e2d                            ; $4dd4: $cd $2d $0e
    call Call_000_0260                            ; $4dd7: $cd $60 $02
    call Call_000_0e6d                            ; $4dda: $cd $6d $0e
    call Call_000_1abb                            ; $4ddd: $cd $bb $1a
    call Call_000_1ac7                            ; $4de0: $cd $c7 $1a
    call Call_000_38c5                            ; $4de3: $cd $c5 $38
    call Call_000_38fd                            ; $4de6: $cd $fd $38
    call Call_001_4e7a                            ; $4de9: $cd $7a $4e
    call Call_001_4e5a                            ; $4dec: $cd $5a $4e
    ld a, c                                       ; $4def: $79
    or a                                          ; $4df0: $b7
    jr z, jr_001_4dfc                             ; $4df1: $28 $09

    call Call_001_4e0c                            ; $4df3: $cd $0c $4e
    call Call_000_2f90                            ; $4df6: $cd $90 $2f
    jp Jump_000_0e37                              ; $4df9: $c3 $37 $0e


jr_001_4dfc:
    ld a, $02                                     ; $4dfc: $3e $02
    ld [$c02b], a                                 ; $4dfe: $ea $2b $c0
    ld a, $03                                     ; $4e01: $3e $03
    ld [$c028], a                                 ; $4e03: $ea $28 $c0
    call Call_000_2f90                            ; $4e06: $cd $90 $2f
    jp Jump_000_0e37                              ; $4e09: $c3 $37 $0e


Call_001_4e0c:
    xor a                                         ; $4e0c: $af
    ld [$c520], a                                 ; $4e0d: $ea $20 $c5
    ld hl, $c140                                  ; $4e10: $21 $40 $c1

jr_001_4e13:
    ld a, [hl+]                                   ; $4e13: $2a
    or a                                          ; $4e14: $b7
    ret z                                         ; $4e15: $c8

    push hl                                       ; $4e16: $e5
    push af                                       ; $4e17: $f5
    call Call_000_1ad3                            ; $4e18: $cd $d3 $1a
    pop af                                        ; $4e1b: $f1
    call Call_001_4e2c                            ; $4e1c: $cd $2c $4e
    pop hl                                        ; $4e1f: $e1
    ld a, [$c520]                                 ; $4e20: $fa $20 $c5
    inc a                                         ; $4e23: $3c
    cp $08                                        ; $4e24: $fe $08
    ret nc                                        ; $4e26: $d0

    ld [$c520], a                                 ; $4e27: $ea $20 $c5
    jr jr_001_4e13                                ; $4e2a: $18 $e7

Call_001_4e2c:
    ld a, [$c520]                                 ; $4e2c: $fa $20 $c5
    ld hl, $4e4a                                  ; $4e2f: $21 $4a $4e
    call Call_000_041a                            ; $4e32: $cd $1a $04
    ld a, [$c520]                                 ; $4e35: $fa $20 $c5
    add a                                         ; $4e38: $87
    add a                                         ; $4e39: $87
    add $40                                       ; $4e3a: $c6 $40
    ld [hl+], a                                   ; $4e3c: $22
    add $02                                       ; $4e3d: $c6 $02
    ld [hl], a                                    ; $4e3f: $77
    ld de, $001f                                  ; $4e40: $11 $1f $00
    add hl, de                                    ; $4e43: $19
    dec a                                         ; $4e44: $3d
    ld [hl+], a                                   ; $4e45: $22
    add $02                                       ; $4e46: $c6 $02
    ld [hl], a                                    ; $4e48: $77
    ret                                           ; $4e49: $c9


    jp $c798                                      ; $4e4a: $c3 $98 $c7


    sbc b                                         ; $4e4d: $98
    res 3, b                                      ; $4e4e: $cb $98
    rst RST_08                                    ; $4e50: $cf
    sbc b                                         ; $4e51: $98
    ld b, e                                       ; $4e52: $43
    sbc c                                         ; $4e53: $99
    ld b, a                                       ; $4e54: $47
    sbc c                                         ; $4e55: $99
    ld c, e                                       ; $4e56: $4b
    sbc c                                         ; $4e57: $99
    ld c, a                                       ; $4e58: $4f
    sbc c                                         ; $4e59: $99

Call_001_4e5a:
    ld hl, $c140                                  ; $4e5a: $21 $40 $c1
    ld b, $08                                     ; $4e5d: $06 $08
    ld c, $00                                     ; $4e5f: $0e $00

jr_001_4e61:
    ld a, [hl+]                                   ; $4e61: $2a
    or a                                          ; $4e62: $b7
    jr z, jr_001_4e66                             ; $4e63: $28 $01

    inc c                                         ; $4e65: $0c

jr_001_4e66:
    dec b                                         ; $4e66: $05
    jr nz, jr_001_4e61                            ; $4e67: $20 $f8

    ret                                           ; $4e69: $c9


Call_001_4e6a:
    ld hl, $c140                                  ; $4e6a: $21 $40 $c1
    ld b, $08                                     ; $4e6d: $06 $08
    ld c, $00                                     ; $4e6f: $0e $00

jr_001_4e71:
    cp [hl]                                       ; $4e71: $be
    jr nz, jr_001_4e75                            ; $4e72: $20 $01

    inc c                                         ; $4e74: $0c

jr_001_4e75:
    inc hl                                        ; $4e75: $23
    dec b                                         ; $4e76: $05
    jr nz, jr_001_4e71                            ; $4e77: $20 $f8

    ret                                           ; $4e79: $c9


Call_001_4e7a:
    ld b, $08                                     ; $4e7a: $06 $08
    ld hl, $c140                                  ; $4e7c: $21 $40 $c1
    ld e, l                                       ; $4e7f: $5d
    ld d, h                                       ; $4e80: $54

jr_001_4e81:
    ld a, [hl+]                                   ; $4e81: $2a
    or a                                          ; $4e82: $b7
    jr z, jr_001_4e87                             ; $4e83: $28 $02

    ld [de], a                                    ; $4e85: $12
    inc de                                        ; $4e86: $13

jr_001_4e87:
    dec b                                         ; $4e87: $05
    jr nz, jr_001_4e81                            ; $4e88: $20 $f7

jr_001_4e8a:
    call Call_000_0332                            ; $4e8a: $cd $32 $03
    ret z                                         ; $4e8d: $c8

    xor a                                         ; $4e8e: $af
    ld [de], a                                    ; $4e8f: $12
    inc de                                        ; $4e90: $13
    jr jr_001_4e8a                                ; $4e91: $18 $f7

Call_001_4e93:
    ld b, $08                                     ; $4e93: $06 $08
    ld hl, $c140                                  ; $4e95: $21 $40 $c1

jr_001_4e98:
    cp [hl]                                       ; $4e98: $be
    ret z                                         ; $4e99: $c8

    inc hl                                        ; $4e9a: $23
    dec b                                         ; $4e9b: $05
    jr nz, jr_001_4e98                            ; $4e9c: $20 $fa

    dec b                                         ; $4e9e: $05
    ret                                           ; $4e9f: $c9


Call_001_4ea0:
    ld c, $1b                                     ; $4ea0: $0e $1b

jr_001_4ea2:
    ld a, c                                       ; $4ea2: $79
    call Call_001_4e93                            ; $4ea3: $cd $93 $4e
    ret z                                         ; $4ea6: $c8

    dec c                                         ; $4ea7: $0d
    ld a, c                                       ; $4ea8: $79
    cp $18                                        ; $4ea9: $fe $18
    jr nc, jr_001_4ea2                            ; $4eab: $30 $f5

    ret                                           ; $4ead: $c9


Call_001_4eae:
    ld c, $1f                                     ; $4eae: $0e $1f

jr_001_4eb0:
    ld a, c                                       ; $4eb0: $79
    call Call_001_4e93                            ; $4eb1: $cd $93 $4e
    ret z                                         ; $4eb4: $c8

    dec c                                         ; $4eb5: $0d
    ld a, c                                       ; $4eb6: $79
    cp $1c                                        ; $4eb7: $fe $1c
    jr nc, jr_001_4eb0                            ; $4eb9: $30 $f5

    ret                                           ; $4ebb: $c9


Call_001_4ebc:
    or a                                          ; $4ebc: $b7
    ret z                                         ; $4ebd: $c8

    call Call_001_4e93                            ; $4ebe: $cd $93 $4e
    ret nz                                        ; $4ec1: $c0

    xor a                                         ; $4ec2: $af
    ld [hl], a                                    ; $4ec3: $77
    ld [$c514], a                                 ; $4ec4: $ea $14 $c5
    ret                                           ; $4ec7: $c9


    ld a, [$c031]                                 ; $4ec8: $fa $31 $c0
    ld bc, $c140                                  ; $4ecb: $01 $40 $c1
    rst RST_38                                    ; $4ece: $ff
    ld a, [bc]                                    ; $4ecf: $0a
    or a                                          ; $4ed0: $b7
    jr nz, jr_001_4ed5                            ; $4ed1: $20 $02

    inc a                                         ; $4ed3: $3c
    ret                                           ; $4ed4: $c9


jr_001_4ed5:
    ld [$c18f], a                                 ; $4ed5: $ea $8f $c1
    ld a, [$c503]                                 ; $4ed8: $fa $03 $c5
    ld e, a                                       ; $4edb: $5f
    ld a, [$c504]                                 ; $4edc: $fa $04 $c5
    ld d, a                                       ; $4edf: $57
    ld a, [$c500]                                 ; $4ee0: $fa $00 $c5
    call Call_000_2ef1                            ; $4ee3: $cd $f1 $2e
    ld a, [$c240]                                 ; $4ee6: $fa $40 $c2
    and $80                                       ; $4ee9: $e6 $80
    ret nz                                        ; $4eeb: $c0

    push bc                                       ; $4eec: $c5
    call Call_001_4f0e                            ; $4eed: $cd $0e $4f
    pop bc                                        ; $4ef0: $c1
    ret nz                                        ; $4ef1: $c0

    ld a, [$c18f]                                 ; $4ef2: $fa $8f $c1
    ld [$c517], a                                 ; $4ef5: $ea $17 $c5
    call Call_001_4f30                            ; $4ef8: $cd $30 $4f
    ld a, [$c031]                                 ; $4efb: $fa $31 $c0
    ld bc, $c140                                  ; $4efe: $01 $40 $c1
    rst RST_38                                    ; $4f01: $ff
    xor a                                         ; $4f02: $af
    ld [bc], a                                    ; $4f03: $02
    call Call_001_50a2                            ; $4f04: $cd $a2 $50
    ld a, $39                                     ; $4f07: $3e $39
    call Call_000_00d9                            ; $4f09: $cd $d9 $00
    xor a                                         ; $4f0c: $af
    ret                                           ; $4f0d: $c9


Call_001_4f0e:
    ld hl, $d500                                  ; $4f0e: $21 $00 $d5
    ld b, $80                                     ; $4f11: $06 $80

jr_001_4f13:
    ld a, [hl]                                    ; $4f13: $7e
    or a                                          ; $4f14: $b7
    ret z                                         ; $4f15: $c8

    inc hl                                        ; $4f16: $23
    dec b                                         ; $4f17: $05
    jr nz, jr_001_4f13                            ; $4f18: $20 $f9

    dec b                                         ; $4f1a: $05
    ret                                           ; $4f1b: $c9


Jump_001_4f1c:
    ld a, [$c18f]                                 ; $4f1c: $fa $8f $c1
    or $80                                        ; $4f1f: $f6 $80
    ld [$c18f], a                                 ; $4f21: $ea $8f $c1

Jump_001_4f24:
    ld a, [$c201]                                 ; $4f24: $fa $01 $c2
    call Call_000_2ef1                            ; $4f27: $cd $f1 $2e
    push bc                                       ; $4f2a: $c5
    call Call_001_4f0e                            ; $4f2b: $cd $0e $4f
    pop bc                                        ; $4f2e: $c1
    ret nz                                        ; $4f2f: $c0

Call_001_4f30:
    ld a, [$c18f]                                 ; $4f30: $fa $8f $c1
    ld [hl], a                                    ; $4f33: $77
    ld h, $d6                                     ; $4f34: $26 $d6
    ld a, [bc]                                    ; $4f36: $0a
    ld [hl], a                                    ; $4f37: $77
    ld a, l                                       ; $4f38: $7d
    or $80                                        ; $4f39: $f6 $80
    ld [bc], a                                    ; $4f3b: $02
    ret                                           ; $4f3c: $c9


Jump_001_4f3d:
    call Call_000_348c                            ; $4f3d: $cd $8c $34
    ld a, $4c                                     ; $4f40: $3e $4c
    call Call_000_00d9                            ; $4f42: $cd $d9 $00
    ld a, [$c521]                                 ; $4f45: $fa $21 $c5
    ld e, a                                       ; $4f48: $5f
    ld a, [$c522]                                 ; $4f49: $fa $22 $c5
    ld d, a                                       ; $4f4c: $57
    ld a, [$c500]                                 ; $4f4d: $fa $00 $c5
    call Call_000_2ef1                            ; $4f50: $cd $f1 $2e
    ld a, [$c240]                                 ; $4f53: $fa $40 $c2
    and $7f                                       ; $4f56: $e6 $7f
    ld l, a                                       ; $4f58: $6f
    ld h, $d5                                     ; $4f59: $26 $d5
    res 7, [hl]                                   ; $4f5b: $cb $be
    ld c, [hl]                                    ; $4f5d: $4e

Jump_001_4f5e:
    ld a, c                                       ; $4f5e: $79
    ld bc, $2d6b                                  ; $4f5f: $01 $6b $2d
    rst RST_38                                    ; $4f62: $ff
    ld a, [bc]                                    ; $4f63: $0a
    swap a                                        ; $4f64: $cb $37
    and $0f                                       ; $4f66: $e6 $0f
    ld b, a                                       ; $4f68: $47
    ld a, [$c247]                                 ; $4f69: $fa $47 $c2
    ld e, a                                       ; $4f6c: $5f
    ld a, [$c248]                                 ; $4f6d: $fa $48 $c2
    ld d, a                                       ; $4f70: $57
    ld hl, $6688                                  ; $4f71: $21 $88 $66
    jp Jump_000_2cb1                              ; $4f74: $c3 $b1 $2c


Call_001_4f77:
    ld a, [$c533]                                 ; $4f77: $fa $33 $c5
    sub $02                                       ; $4f7a: $d6 $02
    ret c                                         ; $4f7c: $d8

    ld l, a                                       ; $4f7d: $6f
    ld h, $00                                     ; $4f7e: $26 $00
    add hl, hl                                    ; $4f80: $29
    add hl, hl                                    ; $4f81: $29
    add hl, hl                                    ; $4f82: $29
    add hl, hl                                    ; $4f83: $29
    ld de, $c5c0                                  ; $4f84: $11 $c0 $c5
    add hl, de                                    ; $4f87: $19
    ld a, [hl+]                                   ; $4f88: $2a
    or a                                          ; $4f89: $b7
    ret z                                         ; $4f8a: $c8

    ld b, a                                       ; $4f8b: $47
    inc hl                                        ; $4f8c: $23
    ld e, [hl]                                    ; $4f8d: $5e
    inc hl                                        ; $4f8e: $23
    ld d, [hl]                                    ; $4f8f: $56
    ld a, $07                                     ; $4f90: $3e $07
    rst RST_28                                    ; $4f92: $ef
    ld a, [hl]                                    ; $4f93: $7e
    or a                                          ; $4f94: $b7
    ret z                                         ; $4f95: $c8

    ld [$c18f], a                                 ; $4f96: $ea $8f $c1
    push de                                       ; $4f99: $d5
    call Call_000_10d9                            ; $4f9a: $cd $d9 $10
    rst RST_00                                    ; $4f9d: $c7
    and [hl]                                      ; $4f9e: $a6
    ld c, a                                       ; $4f9f: $4f
    xor c                                         ; $4fa0: $a9
    ld c, a                                       ; $4fa1: $4f
    xor l                                         ; $4fa2: $ad
    ld c, a                                       ; $4fa3: $4f
    or c                                          ; $4fa4: $b1
    ld c, a                                       ; $4fa5: $4f
    pop de                                        ; $4fa6: $d1
    jr jr_001_4fc5                                ; $4fa7: $18 $1c

    pop de                                        ; $4fa9: $d1
    inc d                                         ; $4faa: $14
    jr jr_001_4fc5                                ; $4fab: $18 $18

    pop de                                        ; $4fad: $d1
    inc e                                         ; $4fae: $1c
    jr jr_001_4fc5                                ; $4faf: $18 $14

    pop de                                        ; $4fb1: $d1
    push de                                       ; $4fb2: $d5
    call Call_001_4fc5                            ; $4fb3: $cd $c5 $4f
    pop de                                        ; $4fb6: $d1
    push de                                       ; $4fb7: $d5
    inc d                                         ; $4fb8: $14
    call Call_001_4fc5                            ; $4fb9: $cd $c5 $4f
    pop de                                        ; $4fbc: $d1
    push de                                       ; $4fbd: $d5
    inc e                                         ; $4fbe: $1c
    call Call_001_4fc5                            ; $4fbf: $cd $c5 $4f
    pop de                                        ; $4fc2: $d1
    inc d                                         ; $4fc3: $14
    inc e                                         ; $4fc4: $1c

Call_001_4fc5:
jr_001_4fc5:
    ld a, [$c500]                                 ; $4fc5: $fa $00 $c5
    call Call_000_2ef1                            ; $4fc8: $cd $f1 $2e
    ld a, [$c240]                                 ; $4fcb: $fa $40 $c2
    cp $80                                        ; $4fce: $fe $80
    ret nc                                        ; $4fd0: $d0

    ld a, [$c241]                                 ; $4fd1: $fa $41 $c2
    cp $00                                        ; $4fd4: $fe $00
    ret nz                                        ; $4fd6: $c0

    push bc                                       ; $4fd7: $c5
    call Call_001_4f0e                            ; $4fd8: $cd $0e $4f
    pop bc                                        ; $4fdb: $c1
    ret nz                                        ; $4fdc: $c0

    call Call_001_4f30                            ; $4fdd: $cd $30 $4f
    ld a, [$c18f]                                 ; $4fe0: $fa $8f $c1
    ld c, a                                       ; $4fe3: $4f
    jp Jump_001_4f5e                              ; $4fe4: $c3 $5e $4f


Call_001_4fe7:
    call Call_000_2ef1                            ; $4fe7: $cd $f1 $2e
    ld a, [$c240]                                 ; $4fea: $fa $40 $c2
    cp $80                                        ; $4fed: $fe $80
    ret c                                         ; $4fef: $d8

    and $7f                                       ; $4ff0: $e6 $7f
    ld l, a                                       ; $4ff2: $6f
    ld h, $d5                                     ; $4ff3: $26 $d5
    bit 7, [hl]                                   ; $4ff5: $cb $7e
    ret nz                                        ; $4ff7: $c0

    ld [hl], $00                                  ; $4ff8: $36 $00
    ld h, $d6                                     ; $4ffa: $26 $d6
    ld b, [hl]                                    ; $4ffc: $46
    ld hl, $c243                                  ; $4ffd: $21 $43 $c2
    rst RST_08                                    ; $5000: $cf
    ld [hl], b                                    ; $5001: $70
    ret                                           ; $5002: $c9


    call Call_000_0e2d                            ; $5003: $cd $2d $0e
    call Call_000_0260                            ; $5006: $cd $60 $02
    call Call_000_0e6d                            ; $5009: $cd $6d $0e
    ld a, [$c515]                                 ; $500c: $fa $15 $c5
    ld e, a                                       ; $500f: $5f
    ld a, [$c128]                                 ; $5010: $fa $28 $c1
    ld c, a                                       ; $5013: $4f
    call Call_000_0374                            ; $5014: $cd $74 $03
    ld a, c                                       ; $5017: $79
    ld [$c128], a                                 ; $5018: $ea $28 $c1
    call Call_000_1af2                            ; $501b: $cd $f2 $1a
    call Call_000_38c5                            ; $501e: $cd $c5 $38
    call Call_000_3919                            ; $5021: $cd $19 $39
    ld a, $48                                     ; $5024: $3e $48
    call Call_000_00d9                            ; $5026: $cd $d9 $00
    call Call_000_2f90                            ; $5029: $cd $90 $2f
    jp Jump_000_0e37                              ; $502c: $c3 $37 $0e


    ld a, [$c512]                                 ; $502f: $fa $12 $c5
    cp $05                                        ; $5032: $fe $05
    ret c                                         ; $5034: $d8

    xor a                                         ; $5035: $af
    ld [$c515], a                                 ; $5036: $ea $15 $c5
    call Call_000_30c5                            ; $5039: $cd $c5 $30
    jp Jump_000_348c                              ; $503c: $c3 $8c $34


    call Call_000_0e2d                            ; $503f: $cd $2d $0e
    call Call_000_0260                            ; $5042: $cd $60 $02
    ld b, $e4                                     ; $5045: $06 $e4
    ld c, $64                                     ; $5047: $0e $64
    call Call_000_0e71                            ; $5049: $cd $71 $0e
    ld a, [$c516]                                 ; $504c: $fa $16 $c5
    call Call_000_1b16                            ; $504f: $cd $16 $1b
    call Call_000_38c5                            ; $5052: $cd $c5 $38
    ld a, $01                                     ; $5055: $3e $01
    ld [$c518], a                                 ; $5057: $ea $18 $c5
    ld a, [$c123]                                 ; $505a: $fa $23 $c1
    call Call_000_03a4                            ; $505d: $cd $a4 $03
    add a                                         ; $5060: $87
    inc a                                         ; $5061: $3c
    ld [$c519], a                                 ; $5062: $ea $19 $c5
    call Call_000_392c                            ; $5065: $cd $2c $39
    call Call_001_50a2                            ; $5068: $cd $a2 $50
    call Call_000_2f90                            ; $506b: $cd $90 $2f
    call Call_000_0e37                            ; $506e: $cd $37 $0e
    ld a, [$c516]                                 ; $5071: $fa $16 $c5
    ld b, a                                       ; $5074: $47
    cp $18                                        ; $5075: $fe $18
    ld a, $37                                     ; $5077: $3e $37
    jp nc, Jump_000_00d9                          ; $5079: $d2 $d9 $00

    ld a, [$c101]                                 ; $507c: $fa $01 $c1
    cp $03                                        ; $507f: $fe $03
    jr nz, jr_001_508f                            ; $5081: $20 $0c

    ld a, b                                       ; $5083: $78
    cp $07                                        ; $5084: $fe $07
    ld a, $37                                     ; $5086: $3e $37
    jr z, jr_001_508c                             ; $5088: $28 $02

    ld a, $36                                     ; $508a: $3e $36

jr_001_508c:
    jp Jump_000_00d9                              ; $508c: $c3 $d9 $00


jr_001_508f:
    cp $04                                        ; $508f: $fe $04
    ld a, $36                                     ; $5091: $3e $36
    jp nz, Jump_000_00d9                          ; $5093: $c2 $d9 $00

    ld a, b                                       ; $5096: $78
    cp $14                                        ; $5097: $fe $14
    ld a, $37                                     ; $5099: $3e $37
    jr z, jr_001_509f                             ; $509b: $28 $02

    ld a, $36                                     ; $509d: $3e $36

jr_001_509f:
    jp Jump_000_00d9                              ; $509f: $c3 $d9 $00


Call_001_50a2:
    ld a, $07                                     ; $50a2: $3e $07
    call Call_001_4e6a                            ; $50a4: $cd $6a $4e
    ld a, c                                       ; $50a7: $79
    ld [$c16c], a                                 ; $50a8: $ea $6c $c1
    ret                                           ; $50ab: $c9


    call Call_000_392c                            ; $50ac: $cd $2c $39
    ld a, [$c512]                                 ; $50af: $fa $12 $c5
    cp $05                                        ; $50b2: $fe $05
    ret nz                                        ; $50b4: $c0

    xor a                                         ; $50b5: $af
    ld [$c515], a                                 ; $50b6: $ea $15 $c5
    ld a, [$c516]                                 ; $50b9: $fa $16 $c5
    cp $1c                                        ; $50bc: $fe $1c
    jp nc, Jump_001_52a4                          ; $50be: $d2 $a4 $52

    cp $18                                        ; $50c1: $fe $18
    jp nc, Jump_001_5261                          ; $50c3: $d2 $61 $52

    cp $06                                        ; $50c6: $fe $06
    jp z, Jump_001_52e7                           ; $50c8: $ca $e7 $52

    cp $12                                        ; $50cb: $fe $12
    jp z, Jump_001_5307                           ; $50cd: $ca $07 $53

    ld a, $07                                     ; $50d0: $3e $07
    call Call_001_4e6a                            ; $50d2: $cd $6a $4e
    ld a, c                                       ; $50d5: $79
    ld [$c16c], a                                 ; $50d6: $ea $6c $c1
    call Call_000_30c5                            ; $50d9: $cd $c5 $30
    jp Jump_000_348c                              ; $50dc: $c3 $8c $34


    ld a, c                                       ; $50df: $79
    cp $10                                        ; $50e0: $fe $10
    jr nz, jr_001_50ef                            ; $50e2: $20 $0b

    ld a, [$c104]                                 ; $50e4: $fa $04 $c1
    call Call_000_03a4                            ; $50e7: $cd $a4 $03
    srl a                                         ; $50ea: $cb $3f
    inc a                                         ; $50ec: $3c
    jr jr_001_50f7                                ; $50ed: $18 $08

jr_001_50ef:
    ld a, [$c123]                                 ; $50ef: $fa $23 $c1
    call Call_000_03a4                            ; $50f2: $cd $a4 $03
    srl a                                         ; $50f5: $cb $3f

jr_001_50f7:
    call Call_000_0456                            ; $50f7: $cd $56 $04
    inc a                                         ; $50fa: $3c
    call Call_000_03b7                            ; $50fb: $cd $b7 $03
    ld [$c515], a                                 ; $50fe: $ea $15 $c5
    ret                                           ; $5101: $c9


Call_001_5102:
    xor a                                         ; $5102: $af
    ld [$c12e], a                                 ; $5103: $ea $2e $c1
    ld [$c130], a                                 ; $5106: $ea $30 $c1
    ret                                           ; $5109: $c9


    ld bc, $0302                                  ; $510a: $01 $02 $03
    dec b                                         ; $510d: $05
    ld bc, $0302                                  ; $510e: $01 $02 $03
    dec b                                         ; $5111: $05

Call_001_5112:
    ld hl, $5125                                  ; $5112: $21 $25 $51
    call Call_001_518a                            ; $5115: $cd $8a $51
    ld [$c14c], a                                 ; $5118: $ea $4c $c1
    ret                                           ; $511b: $c9


Call_001_511c:
    ld hl, $512f                                  ; $511c: $21 $2f $51
    call Call_001_518a                            ; $511f: $cd $8a $51
    ld [$c12e], a                                 ; $5122: $ea $2e $c1
    ret                                           ; $5125: $c9


    dec b                                         ; $5126: $05
    ld b, $07                                     ; $5127: $06 $07
    ld [$1009], sp                                ; $5129: $08 $09 $10
    ld de, $1312                                  ; $512c: $11 $12 $13
    inc d                                         ; $512f: $14
    inc b                                         ; $5130: $04
    inc b                                         ; $5131: $04
    inc b                                         ; $5132: $04
    inc b                                         ; $5133: $04
    inc b                                         ; $5134: $04
    inc b                                         ; $5135: $04
    dec b                                         ; $5136: $05
    dec b                                         ; $5137: $05
    ld b, $06                                     ; $5138: $06 $06

Call_001_513a:
    ld hl, $514d                                  ; $513a: $21 $4d $51
    call Call_001_518a                            ; $513d: $cd $8a $51
    ld [$c14c], a                                 ; $5140: $ea $4c $c1
    ret                                           ; $5143: $c9


Call_001_5144:
    ld hl, $5157                                  ; $5144: $21 $57 $51
    call Call_001_518a                            ; $5147: $cd $8a $51
    ld [$c130], a                                 ; $514a: $ea $30 $c1
    ret                                           ; $514d: $c9


    dec b                                         ; $514e: $05
    ld b, $07                                     ; $514f: $06 $07
    ld [$1009], sp                                ; $5151: $08 $09 $10
    ld de, $1312                                  ; $5154: $11 $12 $13
    inc d                                         ; $5157: $14
    inc b                                         ; $5158: $04
    inc b                                         ; $5159: $04
    inc b                                         ; $515a: $04
    inc b                                         ; $515b: $04
    inc b                                         ; $515c: $04
    inc b                                         ; $515d: $04
    dec b                                         ; $515e: $05
    dec b                                         ; $515f: $05
    ld b, $06                                     ; $5160: $06 $06

Call_001_5162:
    ld hl, $516b                                  ; $5162: $21 $6b $51
    call Call_001_518a                            ; $5165: $cd $8a $51
    ld [$c14c], a                                 ; $5168: $ea $4c $c1
    ret                                           ; $516b: $c9


    ld [$0808], sp                                ; $516c: $08 $08 $08
    add hl, bc                                    ; $516f: $09
    add hl, bc                                    ; $5170: $09
    add hl, bc                                    ; $5171: $09
    db $10                                        ; $5172: $10
    ld [de], a                                    ; $5173: $12
    inc de                                        ; $5174: $13
    ld d, $21                                     ; $5175: $16 $21
    ld a, a                                       ; $5177: $7f
    ld d, c                                       ; $5178: $51
    call Call_001_518a                            ; $5179: $cd $8a $51
    ld [$c529], a                                 ; $517c: $ea $29 $c5
    ret                                           ; $517f: $c9


    ld [de], a                                    ; $5180: $12
    ld [de], a                                    ; $5181: $12
    ld [de], a                                    ; $5182: $12
    ld [de], a                                    ; $5183: $12
    ld [de], a                                    ; $5184: $12
    inc de                                        ; $5185: $13
    inc de                                        ; $5186: $13
    inc de                                        ; $5187: $13
    inc de                                        ; $5188: $13
    dec d                                         ; $5189: $15

Call_001_518a:
    ld a, [$c102]                                 ; $518a: $fa $02 $c1
    rst RST_28                                    ; $518d: $ef
    ld a, [hl]                                    ; $518e: $7e
    ret                                           ; $518f: $c9


    ld a, [$c031]                                 ; $5190: $fa $31 $c0
    ld hl, $c140                                  ; $5193: $21 $40 $c1
    rst RST_28                                    ; $5196: $ef
    ld a, [hl]                                    ; $5197: $7e
    ld [$c514], a                                 ; $5198: $ea $14 $c5
    dec a                                         ; $519b: $3d
    rst RST_00                                    ; $519c: $c7
    db $db                                        ; $519d: $db
    ld d, c                                       ; $519e: $51
    ld a, [bc]                                    ; $519f: $0a
    ld d, d                                       ; $51a0: $52
    ld l, $54                                     ; $51a1: $2e $54
    sbc h                                         ; $51a3: $9c
    ld d, e                                       ; $51a4: $53
    ld b, a                                       ; $51a5: $47
    ld d, l                                       ; $51a6: $55
    ld e, h                                       ; $51a7: $5c
    ld d, d                                       ; $51a8: $52
    xor h                                         ; $51a9: $ac
    ld d, l                                       ; $51aa: $55
    jr @+$54                                      ; $51ab: $18 $52

    add hl, sp                                    ; $51ad: $39
    ld d, d                                       ; $51ae: $52
    inc bc                                        ; $51af: $03
    ld d, h                                       ; $51b0: $54
    db $e4                                        ; $51b1: $e4
    ld d, c                                       ; $51b2: $51
    daa                                           ; $51b3: $27
    ld d, e                                       ; $51b4: $53
    ldh a, [rHDMA5]                               ; $51b5: $f0 $55
    ld a, [hl]                                    ; $51b7: $7e
    ld d, h                                       ; $51b8: $54
    ld e, h                                       ; $51b9: $5c
    ld d, d                                       ; $51ba: $52
    ld e, h                                       ; $51bb: $5c
    ld d, d                                       ; $51bc: $52
    ld e, h                                       ; $51bd: $5c
    ld d, d                                       ; $51be: $52
    ld e, h                                       ; $51bf: $5c
    ld d, d                                       ; $51c0: $52
    or e                                          ; $51c1: $b3
    ld d, [hl]                                    ; $51c2: $56
    ld h, $57                                     ; $51c3: $26 $57
    ld e, h                                       ; $51c5: $5c
    ld d, d                                       ; $51c6: $52
    ld e, h                                       ; $51c7: $5c
    ld d, d                                       ; $51c8: $52
    ld e, h                                       ; $51c9: $5c
    ld d, d                                       ; $51ca: $52
    ld e, h                                       ; $51cb: $5c
    ld d, d                                       ; $51cc: $52
    ld e, h                                       ; $51cd: $5c
    ld d, d                                       ; $51ce: $52
    ld e, h                                       ; $51cf: $5c
    ld d, d                                       ; $51d0: $52
    ld e, h                                       ; $51d1: $5c
    ld d, d                                       ; $51d2: $52
    ld e, h                                       ; $51d3: $5c
    ld d, d                                       ; $51d4: $52
    ld e, h                                       ; $51d5: $5c
    ld d, d                                       ; $51d6: $52
    ld e, h                                       ; $51d7: $5c
    ld d, d                                       ; $51d8: $52
    ld e, h                                       ; $51d9: $5c
    ld d, d                                       ; $51da: $52
    call Call_001_525a                            ; $51db: $cd $5a $52
    xor a                                         ; $51de: $af
    ld [$c51b], a                                 ; $51df: $ea $1b $c5
    jr jr_001_51ec                                ; $51e2: $18 $08

    call Call_001_525a                            ; $51e4: $cd $5a $52
    ld a, $06                                     ; $51e7: $3e $06
    ld [$c51b], a                                 ; $51e9: $ea $1b $c5

jr_001_51ec:
    ld a, [$c123]                                 ; $51ec: $fa $23 $c1
    ld e, a                                       ; $51ef: $5f
    ld a, [$c120]                                 ; $51f0: $fa $20 $c1
    ld c, a                                       ; $51f3: $4f
    call Call_000_0374                            ; $51f4: $cd $74 $03
    ld a, [$c124]                                 ; $51f7: $fa $24 $c1
    cp c                                          ; $51fa: $b9
    jr c, jr_001_51fe                             ; $51fb: $38 $01

    ld a, c                                       ; $51fd: $79

jr_001_51fe:
    ld [$c51a], a                                 ; $51fe: $ea $1a $c5

jr_001_5201:
    call Call_001_5d75                            ; $5201: $cd $75 $5d
    ld a, $0e                                     ; $5204: $3e $0e
    ld [$c125], a                                 ; $5206: $ea $25 $c1
    ret                                           ; $5209: $c9


    call Call_001_525a                            ; $520a: $cd $5a $52
    xor a                                         ; $520d: $af
    ld [$c131], a                                 ; $520e: $ea $31 $c1
    ld a, $05                                     ; $5211: $3e $05
    ld [$c51b], a                                 ; $5213: $ea $1b $c5
    jr jr_001_5201                                ; $5216: $18 $e9

    call Call_001_525a                            ; $5218: $cd $5a $52
    call Call_001_5102                            ; $521b: $cd $02 $51
    call Call_001_5d07                            ; $521e: $cd $07 $5d
    ld a, $08                                     ; $5221: $3e $08
    ld [$c14b], a                                 ; $5223: $ea $4b $c1
    call Call_001_5112                            ; $5226: $cd $12 $51
    call Call_001_511c                            ; $5229: $cd $1c $51
    call Call_001_5cf3                            ; $522c: $cd $f3 $5c
    ld [$c51a], a                                 ; $522f: $ea $1a $c5
    ld a, $02                                     ; $5232: $3e $02
    ld [$c51b], a                                 ; $5234: $ea $1b $c5
    jr jr_001_5201                                ; $5237: $18 $c8

    call Call_001_525a                            ; $5239: $cd $5a $52
    call Call_001_5102                            ; $523c: $cd $02 $51
    call Call_001_5cec                            ; $523f: $cd $ec $5c
    ld a, $09                                     ; $5242: $3e $09
    ld [$c14b], a                                 ; $5244: $ea $4b $c1
    call Call_001_513a                            ; $5247: $cd $3a $51
    call Call_001_5144                            ; $524a: $cd $44 $51
    call Call_001_5d0e                            ; $524d: $cd $0e $5d
    ld [$c51a], a                                 ; $5250: $ea $1a $c5
    ld a, $03                                     ; $5253: $3e $03
    ld [$c51b], a                                 ; $5255: $ea $1b $c5
    jr jr_001_5201                                ; $5258: $18 $a7

Call_001_525a:
    xor a                                         ; $525a: $af
    ld [hl], a                                    ; $525b: $77

Call_001_525c:
Jump_001_525c:
    xor a                                         ; $525c: $af
    ld [$c514], a                                 ; $525d: $ea $14 $c5
    ret                                           ; $5260: $c9


Jump_001_5261:
    call Call_001_527b                            ; $5261: $cd $7b $52
    ld [$c12d], a                                 ; $5264: $ea $2d $c1
    call Call_001_5cf3                            ; $5267: $cd $f3 $5c
    ld [$c51a], a                                 ; $526a: $ea $1a $c5
    ld a, $02                                     ; $526d: $3e $02
    ld [$c51b], a                                 ; $526f: $ea $1b $c5
    call Call_001_5d75                            ; $5272: $cd $75 $5d
    ld a, $0e                                     ; $5275: $3e $0e
    ld [$c125], a                                 ; $5277: $ea $25 $c1
    ret                                           ; $527a: $c9


Call_001_527b:
    call Call_001_4ea0                            ; $527b: $cd $a0 $4e
    ld a, $00                                     ; $527e: $3e $00
    ret c                                         ; $5280: $d8

    ld a, c                                       ; $5281: $79
    sub $18                                       ; $5282: $d6 $18
    ld hl, $510a                                  ; $5284: $21 $0a $51
    rst RST_28                                    ; $5287: $ef
    ld a, [hl]                                    ; $5288: $7e
    ret                                           ; $5289: $c9


    call Call_001_527b                            ; $528a: $cd $7b $52
    ld [$c12d], a                                 ; $528d: $ea $2d $c1
    call Call_001_5cf3                            ; $5290: $cd $f3 $5c
    ld [$c51a], a                                 ; $5293: $ea $1a $c5
    ld a, $02                                     ; $5296: $3e $02
    ld [$c51b], a                                 ; $5298: $ea $1b $c5
    call Call_001_5d75                            ; $529b: $cd $75 $5d
    ld a, $0e                                     ; $529e: $3e $0e
    ld [$c125], a                                 ; $52a0: $ea $25 $c1
    ret                                           ; $52a3: $c9


Jump_001_52a4:
    call Call_001_52be                            ; $52a4: $cd $be $52
    ld [$c12f], a                                 ; $52a7: $ea $2f $c1
    call Call_001_5d0e                            ; $52aa: $cd $0e $5d
    ld [$c51a], a                                 ; $52ad: $ea $1a $c5
    ld a, $03                                     ; $52b0: $3e $03
    ld [$c51b], a                                 ; $52b2: $ea $1b $c5
    call Call_001_5d75                            ; $52b5: $cd $75 $5d
    ld a, $0e                                     ; $52b8: $3e $0e
    ld [$c125], a                                 ; $52ba: $ea $25 $c1
    ret                                           ; $52bd: $c9


Call_001_52be:
    call Call_001_4eae                            ; $52be: $cd $ae $4e
    ld a, $00                                     ; $52c1: $3e $00
    ret c                                         ; $52c3: $d8

    ld a, c                                       ; $52c4: $79
    sub $1c                                       ; $52c5: $d6 $1c
    ld hl, $510e                                  ; $52c7: $21 $0e $51
    rst RST_28                                    ; $52ca: $ef
    ld a, [hl]                                    ; $52cb: $7e
    ret                                           ; $52cc: $c9


    call Call_001_52be                            ; $52cd: $cd $be $52
    ld [$c12f], a                                 ; $52d0: $ea $2f $c1
    call Call_001_5d0e                            ; $52d3: $cd $0e $5d
    ld [$c51a], a                                 ; $52d6: $ea $1a $c5
    ld a, $03                                     ; $52d9: $3e $03
    ld [$c51b], a                                 ; $52db: $ea $1b $c5
    call Call_001_5d75                            ; $52de: $cd $75 $5d
    ld a, $0e                                     ; $52e1: $3e $0e
    ld [$c125], a                                 ; $52e3: $ea $25 $c1
    ret                                           ; $52e6: $c9


Jump_001_52e7:
    ld a, $06                                     ; $52e7: $3e $06
    call Call_001_4ebc                            ; $52e9: $cd $bc $4e
    ld a, [$c123]                                 ; $52ec: $fa $23 $c1
    ld c, a                                       ; $52ef: $4f
    ld e, $01                                     ; $52f0: $1e $01
    call Call_000_0374                            ; $52f2: $cd $74 $03
    ld a, c                                       ; $52f5: $79
    ld [$c51a], a                                 ; $52f6: $ea $1a $c5
    ld a, $04                                     ; $52f9: $3e $04
    ld [$c51b], a                                 ; $52fb: $ea $1b $c5
    call Call_001_5d75                            ; $52fe: $cd $75 $5d
    ld a, $0e                                     ; $5301: $3e $0e
    ld [$c125], a                                 ; $5303: $ea $25 $c1
    ret                                           ; $5306: $c9


Jump_001_5307:
    ld a, $12                                     ; $5307: $3e $12
    call Call_001_4ebc                            ; $5309: $cd $bc $4e
    ld a, [$c124]                                 ; $530c: $fa $24 $c1
    ld c, a                                       ; $530f: $4f
    ld e, $01                                     ; $5310: $1e $01
    call Call_000_0374                            ; $5312: $cd $74 $03
    ld a, c                                       ; $5315: $79
    ld [$c51a], a                                 ; $5316: $ea $1a $c5
    ld a, $01                                     ; $5319: $3e $01
    ld [$c51b], a                                 ; $531b: $ea $1b $c5
    call Call_001_5d75                            ; $531e: $cd $75 $5d
    ld a, $0e                                     ; $5321: $3e $0e
    ld [$c125], a                                 ; $5323: $ea $25 $c1
    ret                                           ; $5326: $c9


    xor a                                         ; $5327: $af
    ld [$c033], a                                 ; $5328: $ea $33 $c0
    ld [$c034], a                                 ; $532b: $ea $34 $c0
    ld a, [$c503]                                 ; $532e: $fa $03 $c5
    ld [$c521], a                                 ; $5331: $ea $21 $c5
    ld a, [$c504]                                 ; $5334: $fa $04 $c5
    ld [$c522], a                                 ; $5337: $ea $22 $c5
    call Call_000_30c5                            ; $533a: $cd $c5 $30
    ld a, $08                                     ; $533d: $3e $08
    ld [$c125], a                                 ; $533f: $ea $25 $c1
    ret                                           ; $5342: $c9


    ld a, [$c521]                                 ; $5343: $fa $21 $c5
    ld e, a                                       ; $5346: $5f
    ld a, [$c522]                                 ; $5347: $fa $22 $c5
    ld d, a                                       ; $534a: $57
    ld a, [$c500]                                 ; $534b: $fa $00 $c5
    call Call_000_2ef1                            ; $534e: $cd $f1 $2e
    ld a, [$c241]                                 ; $5351: $fa $41 $c2
    bit 7, a                                      ; $5354: $cb $7f
    ret nz                                        ; $5356: $c0

    ld a, [$c500]                                 ; $5357: $fa $00 $c5
    call Call_000_2f28                            ; $535a: $cd $28 $2f
    ld a, [$c242]                                 ; $535d: $fa $42 $c2
    cp $02                                        ; $5360: $fe $02
    ret nc                                        ; $5362: $d0

    ld a, [$c500]                                 ; $5363: $fa $00 $c5
    call Call_000_2db5                            ; $5366: $cd $b5 $2d
    ld a, [$c509]                                 ; $5369: $fa $09 $c5
    ld [$c501], a                                 ; $536c: $ea $01 $c5
    ld a, [$c50a]                                 ; $536f: $fa $0a $c5
    ld [$c502], a                                 ; $5372: $ea $02 $c5
    push de                                       ; $5375: $d5
    call Call_000_2ea0                            ; $5376: $cd $a0 $2e
    pop de                                        ; $5379: $d1
    ld a, e                                       ; $537a: $7b
    ld [$c503], a                                 ; $537b: $ea $03 $c5
    ld a, d                                       ; $537e: $7a
    ld [$c504], a                                 ; $537f: $ea $04 $c5
    call Call_000_2e57                            ; $5382: $cd $57 $2e
    call Call_001_761e                            ; $5385: $cd $1e $76
    ld a, $4f                                     ; $5388: $3e $4f
    call Call_000_00d9                            ; $538a: $cd $d9 $00
    call Call_000_32a3                            ; $538d: $cd $a3 $32
    call Call_000_32b2                            ; $5390: $cd $b2 $32
    ld a, [$c514]                                 ; $5393: $fa $14 $c5
    call Call_001_4ebc                            ; $5396: $cd $bc $4e
    jp Jump_000_348c                              ; $5399: $c3 $8c $34


    ld a, [$c510]                                 ; $539c: $fa $10 $c5
    ld c, a                                       ; $539f: $4f
    ld b, $04                                     ; $53a0: $06 $04

jr_001_53a2:
    call Call_000_2f48                            ; $53a2: $cd $48 $2f
    jr c, jr_001_53b2                             ; $53a5: $38 $0b

    ld a, c                                       ; $53a7: $79
    inc a                                         ; $53a8: $3c
    and $03                                       ; $53a9: $e6 $03
    ld c, a                                       ; $53ab: $4f
    dec b                                         ; $53ac: $05
    jr nz, jr_001_53a2                            ; $53ad: $20 $f3

    jp Jump_001_525c                              ; $53af: $c3 $5c $52


jr_001_53b2:
    ld a, e                                       ; $53b2: $7b
    ld [$c521], a                                 ; $53b3: $ea $21 $c5
    ld a, d                                       ; $53b6: $7a
    ld [$c522], a                                 ; $53b7: $ea $22 $c5
    ld a, c                                       ; $53ba: $79
    ld [$c510], a                                 ; $53bb: $ea $10 $c5
    xor a                                         ; $53be: $af
    ld [$c033], a                                 ; $53bf: $ea $33 $c0
    ld [$c034], a                                 ; $53c2: $ea $34 $c0
    call Call_000_30c5                            ; $53c5: $cd $c5 $30
    ld a, $09                                     ; $53c8: $3e $09
    ld [$c125], a                                 ; $53ca: $ea $25 $c1
    ret                                           ; $53cd: $c9


    ld a, [$c114]                                 ; $53ce: $fa $14 $c1
    ld b, a                                       ; $53d1: $47
    ld a, [$c104]                                 ; $53d2: $fa $04 $c1
    cp b                                          ; $53d5: $b8
    ret nc                                        ; $53d6: $d0

    ld a, [$c521]                                 ; $53d7: $fa $21 $c5
    ld e, a                                       ; $53da: $5f
    ld a, [$c522]                                 ; $53db: $fa $22 $c5
    ld d, a                                       ; $53de: $57
    push de                                       ; $53df: $d5
    ld a, [$c500]                                 ; $53e0: $fa $00 $c5
    call Call_001_4fe7                            ; $53e3: $cd $e7 $4f
    pop de                                        ; $53e6: $d1
    ld a, [$c500]                                 ; $53e7: $fa $00 $c5
    call Call_000_2ef1                            ; $53ea: $cd $f1 $2e
    ld a, $10                                     ; $53ed: $3e $10
    ld [bc], a                                    ; $53ef: $02
    ld b, $10                                     ; $53f0: $06 $10
    call Call_000_2ca5                            ; $53f2: $cd $a5 $2c
    ld a, $46                                     ; $53f5: $3e $46
    call Call_000_00d9                            ; $53f7: $cd $d9 $00
    ld a, [$c514]                                 ; $53fa: $fa $14 $c5
    call Call_001_4ebc                            ; $53fd: $cd $bc $4e
    jp Jump_000_348c                              ; $5400: $c3 $8c $34


    call Call_001_525a                            ; $5403: $cd $5a $52
    call Call_001_5102                            ; $5406: $cd $02 $51
    call Call_001_5cec                            ; $5409: $cd $ec $5c
    call Call_001_5d07                            ; $540c: $cd $07 $5d
    ld a, $0a                                     ; $540f: $3e $0a
    ld [$c14b], a                                 ; $5411: $ea $4b $c1
    call Call_001_5162                            ; $5414: $cd $62 $51
    ld a, $02                                     ; $5417: $3e $02
    ld [$c540], a                                 ; $5419: $ea $40 $c5
    xor a                                         ; $541c: $af
    ld [$c541], a                                 ; $541d: $ea $41 $c5
    ld a, $18                                     ; $5420: $3e $18
    ld [$c542], a                                 ; $5422: $ea $42 $c5
    call Call_000_30c5                            ; $5425: $cd $c5 $30
    ld a, $15                                     ; $5428: $3e $15
    ld [$c125], a                                 ; $542a: $ea $25 $c1
    ret                                           ; $542d: $c9


    ld a, $08                                     ; $542e: $3e $08
    ld [$c125], a                                 ; $5430: $ea $25 $c1
    ld a, [$c503]                                 ; $5433: $fa $03 $c5
    ld [$c521], a                                 ; $5436: $ea $21 $c5
    ld a, [$c504]                                 ; $5439: $fa $04 $c5
    ld [$c522], a                                 ; $543c: $ea $22 $c5

jr_001_543f:
    xor a                                         ; $543f: $af
    ld [$c033], a                                 ; $5440: $ea $33 $c0
    ld [$c034], a                                 ; $5443: $ea $34 $c0
    jp Jump_000_30c5                              ; $5446: $c3 $c5 $30


    ld a, [$c521]                                 ; $5449: $fa $21 $c5
    ld e, a                                       ; $544c: $5f
    ld a, [$c522]                                 ; $544d: $fa $22 $c5
    ld d, a                                       ; $5450: $57
    ld a, [$c500]                                 ; $5451: $fa $00 $c5
    call Call_000_2f28                            ; $5454: $cd $28 $2f
    ld a, [$c242]                                 ; $5457: $fa $42 $c2
    ld [$c524], a                                 ; $545a: $ea $24 $c5
    ld a, [$c524]                                 ; $545d: $fa $24 $c5
    cp $02                                        ; $5460: $fe $02
    ret c                                         ; $5462: $d8

    ld [$c533], a                                 ; $5463: $ea $33 $c5
    ld a, $01                                     ; $5466: $3e $01
    ld [$c523], a                                 ; $5468: $ea $23 $c5
    ld a, $48                                     ; $546b: $3e $48
    ld [$c530], a                                 ; $546d: $ea $30 $c5
    call $5176                                    ; $5470: $cd $76 $51
    ld [$c532], a                                 ; $5473: $ea $32 $c5
    ld a, $44                                     ; $5476: $3e $44
    call Call_000_00d9                            ; $5478: $cd $d9 $00
    jp Jump_001_5a80                              ; $547b: $c3 $80 $5a


    ld a, $0b                                     ; $547e: $3e $0b
    ld [$c125], a                                 ; $5480: $ea $25 $c1
    ld a, [$c503]                                 ; $5483: $fa $03 $c5
    ld [$c521], a                                 ; $5486: $ea $21 $c5
    ld a, [$c504]                                 ; $5489: $fa $04 $c5
    ld [$c522], a                                 ; $548c: $ea $22 $c5
    ld hl, $0000                                  ; $548f: $21 $00 $00
    call Call_000_3d79                            ; $5492: $cd $79 $3d
    jr jr_001_543f                                ; $5495: $18 $a8

    ld a, [$c521]                                 ; $5497: $fa $21 $c5
    ld e, a                                       ; $549a: $5f
    ld a, [$c522]                                 ; $549b: $fa $22 $c5
    ld d, a                                       ; $549e: $57
    ld a, [$c500]                                 ; $549f: $fa $00 $c5
    call Call_000_2f28                            ; $54a2: $cd $28 $2f
    ld a, [$c242]                                 ; $54a5: $fa $42 $c2
    ld [$c525], a                                 ; $54a8: $ea $25 $c5
    inc d                                         ; $54ab: $14
    ld a, [$c500]                                 ; $54ac: $fa $00 $c5
    call Call_000_2f28                            ; $54af: $cd $28 $2f
    ld a, [$c242]                                 ; $54b2: $fa $42 $c2
    ld [$c526], a                                 ; $54b5: $ea $26 $c5
    dec d                                         ; $54b8: $15
    inc e                                         ; $54b9: $1c
    ld a, [$c500]                                 ; $54ba: $fa $00 $c5
    call Call_000_2f28                            ; $54bd: $cd $28 $2f
    ld a, [$c242]                                 ; $54c0: $fa $42 $c2
    ld [$c527], a                                 ; $54c3: $ea $27 $c5
    inc d                                         ; $54c6: $14
    ld a, [$c500]                                 ; $54c7: $fa $00 $c5
    call Call_000_2f28                            ; $54ca: $cd $28 $2f
    ld a, [$c242]                                 ; $54cd: $fa $42 $c2
    ld [$c528], a                                 ; $54d0: $ea $28 $c5
    ld a, $01                                     ; $54d3: $3e $01
    ld hl, $c525                                  ; $54d5: $21 $25 $c5
    ld b, $04                                     ; $54d8: $06 $04

jr_001_54da:
    cp [hl]                                       ; $54da: $be
    jr c, jr_001_54e2                             ; $54db: $38 $05

    inc hl                                        ; $54dd: $23
    dec b                                         ; $54de: $05
    jr nz, jr_001_54da                            ; $54df: $20 $f9

    ret                                           ; $54e1: $c9


jr_001_54e2:
    ld a, $05                                     ; $54e2: $3e $05
    ld [$c540], a                                 ; $54e4: $ea $40 $c5
    xor a                                         ; $54e7: $af
    ld [$c541], a                                 ; $54e8: $ea $41 $c5
    ld a, $48                                     ; $54eb: $3e $48
    ld [$c542], a                                 ; $54ed: $ea $42 $c5
    ld a, $15                                     ; $54f0: $3e $15
    ld [$c125], a                                 ; $54f2: $ea $25 $c1
    ld a, $70                                     ; $54f5: $3e $70
    call Call_000_00d9                            ; $54f7: $cd $d9 $00
    ld a, $14                                     ; $54fa: $3e $14
    ld [$c529], a                                 ; $54fc: $ea $29 $c5
    ld hl, $c529                                  ; $54ff: $21 $29 $c5
    ld a, [hl+]                                   ; $5502: $2a
    ld [hl+], a                                   ; $5503: $22
    ld [hl+], a                                   ; $5504: $22
    ld [hl], a                                    ; $5505: $77
    ld hl, $c525                                  ; $5506: $21 $25 $c5
    ld de, $c529                                  ; $5509: $11 $29 $c5
    ld b, $03                                     ; $550c: $06 $03
    call Call_001_5524                            ; $550e: $cd $24 $55
    ld hl, $c526                                  ; $5511: $21 $26 $c5
    ld de, $c52a                                  ; $5514: $11 $2a $c5
    ld b, $02                                     ; $5517: $06 $02
    call Call_001_5524                            ; $5519: $cd $24 $55
    ld hl, $c527                                  ; $551c: $21 $27 $c5
    ld de, $c52b                                  ; $551f: $11 $2b $c5
    ld b, $01                                     ; $5522: $06 $01

Call_001_5524:
    ld a, [hl]                                    ; $5524: $7e
    or a                                          ; $5525: $b7
    ret z                                         ; $5526: $c8

    ld c, $00                                     ; $5527: $0e $00

jr_001_5529:
    inc hl                                        ; $5529: $23
    cp [hl]                                       ; $552a: $be
    jr nz, jr_001_5530                            ; $552b: $20 $03

    ld [hl], $00                                  ; $552d: $36 $00
    inc c                                         ; $552f: $0c

jr_001_5530:
    dec b                                         ; $5530: $05
    jr nz, jr_001_5529                            ; $5531: $20 $f6

    ld b, c                                       ; $5533: $41
    ld c, $00                                     ; $5534: $0e $00
    ld a, [de]                                    ; $5536: $1a
    push de                                       ; $5537: $d5
    ld e, a                                       ; $5538: $5f

jr_001_5539:
    call Call_000_0374                            ; $5539: $cd $74 $03
    ld a, b                                       ; $553c: $78
    or a                                          ; $553d: $b7
    jr z, jr_001_5543                             ; $553e: $28 $03

    dec b                                         ; $5540: $05
    jr jr_001_5539                                ; $5541: $18 $f6

jr_001_5543:
    pop de                                        ; $5543: $d1
    ld a, c                                       ; $5544: $79
    ld [de], a                                    ; $5545: $12
    ret                                           ; $5546: $c9


    xor a                                         ; $5547: $af
    ld [$c033], a                                 ; $5548: $ea $33 $c0
    ld [$c034], a                                 ; $554b: $ea $34 $c0
    ld a, [$c503]                                 ; $554e: $fa $03 $c5
    ld [$c521], a                                 ; $5551: $ea $21 $c5
    ld a, [$c504]                                 ; $5554: $fa $04 $c5
    ld [$c522], a                                 ; $5557: $ea $22 $c5
    call Call_000_30c5                            ; $555a: $cd $c5 $30
    ld a, $08                                     ; $555d: $3e $08
    ld [$c125], a                                 ; $555f: $ea $25 $c1
    ret                                           ; $5562: $c9


    ld a, [$c521]                                 ; $5563: $fa $21 $c5
    ld e, a                                       ; $5566: $5f
    ld a, [$c522]                                 ; $5567: $fa $22 $c5
    ld d, a                                       ; $556a: $57
    ld a, [$c500]                                 ; $556b: $fa $00 $c5
    call Call_000_2f28                            ; $556e: $cd $28 $2f
    ld a, [$c242]                                 ; $5571: $fa $42 $c2
    or a                                          ; $5574: $b7
    ret nz                                        ; $5575: $c0

    ld a, [$c500]                                 ; $5576: $fa $00 $c5
    call Call_001_4fe7                            ; $5579: $cd $e7 $4f
    ld a, [$c500]                                 ; $557c: $fa $00 $c5
    call Call_000_2ef1                            ; $557f: $cd $f1 $2e
    ld a, [$c241]                                 ; $5582: $fa $41 $c2
    bit 7, a                                      ; $5585: $cb $7f
    ret nz                                        ; $5587: $c0

    call Call_001_6a21                            ; $5588: $cd $21 $6a
    ld a, $47                                     ; $558b: $3e $47
    call Call_000_00d9                            ; $558d: $cd $d9 $00
    call Call_000_32a3                            ; $5590: $cd $a3 $32
    call Call_000_32b2                            ; $5593: $cd $b2 $32
    ld a, [$c514]                                 ; $5596: $fa $14 $c5
    call Call_001_4ebc                            ; $5599: $cd $bc $4e
    ld a, $01                                     ; $559c: $3e $01
    ld [$c540], a                                 ; $559e: $ea $40 $c5
    ld a, $20                                     ; $55a1: $3e $20
    ld [$c542], a                                 ; $55a3: $ea $42 $c5
    ld a, $15                                     ; $55a6: $3e $15
    ld [$c125], a                                 ; $55a8: $ea $25 $c1
    ret                                           ; $55ab: $c9


    call Call_000_30c5                            ; $55ac: $cd $c5 $30
    ld a, $18                                     ; $55af: $3e $18
    ld [$c125], a                                 ; $55b1: $ea $25 $c1
    ld a, $c0                                     ; $55b4: $3e $c0
    ld [$c039], a                                 ; $55b6: $ea $39 $c0
    ld a, $00                                     ; $55b9: $3e $00
    ld [$c03a], a                                 ; $55bb: $ea $3a $c0
    xor a                                         ; $55be: $af
    ld [$c540], a                                 ; $55bf: $ea $40 $c5
    ld hl, $55dd                                  ; $55c2: $21 $dd $55

jr_001_55c5:
    ld a, [hl+]                                   ; $55c5: $2a
    cp $ff                                        ; $55c6: $fe $ff
    jr z, jr_001_55d5                             ; $55c8: $28 $0b

    ld c, a                                       ; $55ca: $4f
    push hl                                       ; $55cb: $e5
    call Call_001_75d9                            ; $55cc: $cd $d9 $75
    pop hl                                        ; $55cf: $e1
    ld a, [hl+]                                   ; $55d0: $2a
    jr nz, jr_001_55c5                            ; $55d1: $20 $f2

    jr jr_001_55d7                                ; $55d3: $18 $02

jr_001_55d5:
    ld a, $0b                                     ; $55d5: $3e $0b

jr_001_55d7:
    ld [$c268], a                                 ; $55d7: $ea $68 $c2
    jp Jump_001_65e9                              ; $55da: $c3 $e9 $65


    rlca                                          ; $55dd: $07
    rlca                                          ; $55de: $07
    jr jr_001_55e9                                ; $55df: $18 $08

    add hl, de                                    ; $55e1: $19
    ld [$081a], sp                                ; $55e2: $08 $1a $08
    dec de                                        ; $55e5: $1b
    ld [$091c], sp                                ; $55e6: $08 $1c $09

jr_001_55e9:
    dec e                                         ; $55e9: $1d
    add hl, bc                                    ; $55ea: $09
    ld e, $09                                     ; $55eb: $1e $09
    rra                                           ; $55ed: $1f
    add hl, bc                                    ; $55ee: $09
    rst RST_38                                    ; $55ef: $ff
    call Call_000_30c5                            ; $55f0: $cd $c5 $30
    ld a, [$c514]                                 ; $55f3: $fa $14 $c5
    call Call_001_4ebc                            ; $55f6: $cd $bc $4e
    ld a, $13                                     ; $55f9: $3e $13
    ld [$c125], a                                 ; $55fb: $ea $25 $c1
    ld a, [$c503]                                 ; $55fe: $fa $03 $c5
    ld [$c256], a                                 ; $5601: $ea $56 $c2
    ld a, [$c504]                                 ; $5604: $fa $04 $c5
    ld [$c257], a                                 ; $5607: $ea $57 $c2
    ld a, $68                                     ; $560a: $3e $68
    ld [$c253], a                                 ; $560c: $ea $53 $c2
    ld a, $55                                     ; $560f: $3e $55
    call Call_000_00d9                            ; $5611: $cd $d9 $00

Call_001_5614:
    xor a                                         ; $5614: $af
    ld [$c252], a                                 ; $5615: $ea $52 $c2
    ld [$c258], a                                 ; $5618: $ea $58 $c2
    ld a, $ff                                     ; $561b: $3e $ff
    ld [$c255], a                                 ; $561d: $ea $55 $c2
    ret                                           ; $5620: $c9


jr_001_5621:
    jp Jump_000_348c                              ; $5621: $c3 $8c $34


Call_001_5624:
jr_001_5624:
    ld hl, $c252                                  ; $5624: $21 $52 $c2
    ld a, [hl+]                                   ; $5627: $2a
    cp [hl]                                       ; $5628: $be
    jr nc, jr_001_5621                            ; $5629: $30 $f6

    call Call_000_1049                            ; $562b: $cd $49 $10
    ld a, [$c255]                                 ; $562e: $fa $55 $c2
    inc a                                         ; $5631: $3c
    and $03                                       ; $5632: $e6 $03
    ld [$c255], a                                 ; $5634: $ea $55 $c2
    rst RST_00                                    ; $5637: $c7
    ld b, b                                       ; $5638: $40
    ld d, [hl]                                    ; $5639: $56
    ld d, b                                       ; $563a: $50
    ld d, [hl]                                    ; $563b: $56
    ld h, d                                       ; $563c: $62
    ld d, [hl]                                    ; $563d: $56
    halt                                          ; $563e: $76
    ld d, [hl]                                    ; $563f: $56
    ld a, b                                       ; $5640: $78
    and $0f                                       ; $5641: $e6 $0f
    ld l, a                                       ; $5643: $6f
    ld a, b                                       ; $5644: $78
    swap a                                        ; $5645: $cb $37
    and $0f                                       ; $5647: $e6 $0f
    ld h, a                                       ; $5649: $67
    call Call_001_568c                            ; $564a: $cd $8c $56
    ret c                                         ; $564d: $d8

    jr jr_001_5624                                ; $564e: $18 $d4

    ld a, b                                       ; $5650: $78
    and $0f                                       ; $5651: $e6 $0f
    cpl                                           ; $5653: $2f
    inc a                                         ; $5654: $3c
    ld h, a                                       ; $5655: $67
    ld a, b                                       ; $5656: $78
    swap a                                        ; $5657: $cb $37
    and $0f                                       ; $5659: $e6 $0f
    ld l, a                                       ; $565b: $6f
    call Call_001_568c                            ; $565c: $cd $8c $56
    ret c                                         ; $565f: $d8

    jr jr_001_5624                                ; $5660: $18 $c2

    ld a, b                                       ; $5662: $78
    and $0f                                       ; $5663: $e6 $0f
    cpl                                           ; $5665: $2f
    inc a                                         ; $5666: $3c
    ld l, a                                       ; $5667: $6f
    ld a, b                                       ; $5668: $78
    swap a                                        ; $5669: $cb $37
    and $0f                                       ; $566b: $e6 $0f
    cpl                                           ; $566d: $2f
    inc a                                         ; $566e: $3c
    ld h, a                                       ; $566f: $67
    call Call_001_568c                            ; $5670: $cd $8c $56
    ret c                                         ; $5673: $d8

    jr jr_001_5624                                ; $5674: $18 $ae

    ld hl, $c252                                  ; $5676: $21 $52 $c2
    inc [hl]                                      ; $5679: $34
    ld a, b                                       ; $567a: $78
    and $0f                                       ; $567b: $e6 $0f
    ld h, a                                       ; $567d: $67
    ld a, b                                       ; $567e: $78
    swap a                                        ; $567f: $cb $37
    and $0f                                       ; $5681: $e6 $0f
    cpl                                           ; $5683: $2f
    inc a                                         ; $5684: $3c
    ld l, a                                       ; $5685: $6f
    call Call_001_568c                            ; $5686: $cd $8c $56
    ret c                                         ; $5689: $d8

    jr jr_001_5624                                ; $568a: $18 $98

Call_001_568c:
    ld a, [$c256]                                 ; $568c: $fa $56 $c2
    ld e, a                                       ; $568f: $5f
    ld a, [$c257]                                 ; $5690: $fa $57 $c2
    ld d, a                                       ; $5693: $57
    call Call_000_3e10                            ; $5694: $cd $10 $3e
    ret nc                                        ; $5697: $d0

    ld a, [$c258]                                 ; $5698: $fa $58 $c2
    or a                                          ; $569b: $b7
    jr nz, jr_001_56ab                            ; $569c: $20 $0d

    call Call_001_763b                            ; $569e: $cd $3b $76
    scf                                           ; $56a1: $37
    jr nz, jr_001_56a6                            ; $56a2: $20 $02

    ccf                                           ; $56a4: $3f
    ret                                           ; $56a5: $c9


jr_001_56a6:
    call Call_001_4b95                            ; $56a6: $cd $95 $4b
    scf                                           ; $56a9: $37
    ret                                           ; $56aa: $c9


jr_001_56ab:
    call $768a                                    ; $56ab: $cd $8a $76
    call Call_001_4b95                            ; $56ae: $cd $95 $4b
    scf                                           ; $56b1: $37
    ret                                           ; $56b2: $c9


    call Call_000_30c5                            ; $56b3: $cd $c5 $30
    ld a, $5e                                     ; $56b6: $3e $5e
    call Call_000_00d9                            ; $56b8: $cd $d9 $00
    ld a, $03                                     ; $56bb: $3e $03
    ld [$c540], a                                 ; $56bd: $ea $40 $c5
    xor a                                         ; $56c0: $af
    ld [$c541], a                                 ; $56c1: $ea $41 $c5
    ld [$c543], a                                 ; $56c4: $ea $43 $c5
    ld a, $20                                     ; $56c7: $3e $20
    ld [$c542], a                                 ; $56c9: $ea $42 $c5
    ld a, $15                                     ; $56cc: $3e $15
    ld [$c125], a                                 ; $56ce: $ea $25 $c1
    ret                                           ; $56d1: $c9


Call_001_56d2:
    xor a                                         ; $56d2: $af
    ld [$c239], a                                 ; $56d3: $ea $39 $c2
    ld hl, $c5c0                                  ; $56d6: $21 $c0 $c5
    ld b, $24                                     ; $56d9: $06 $24
    ld a, [$c420]                                 ; $56db: $fa $20 $c4
    ld c, a                                       ; $56de: $4f

jr_001_56df:
    push bc                                       ; $56df: $c5
    push hl                                       ; $56e0: $e5
    ld a, l                                       ; $56e1: $7d
    ld [$c222], a                                 ; $56e2: $ea $22 $c2
    ld a, h                                       ; $56e5: $7c
    ld [$c223], a                                 ; $56e6: $ea $23 $c2
    call Call_001_56fa                            ; $56e9: $cd $fa $56
    ld hl, $c239                                  ; $56ec: $21 $39 $c2
    inc [hl]                                      ; $56ef: $34
    pop hl                                        ; $56f0: $e1
    ld de, $0010                                  ; $56f1: $11 $10 $00
    add hl, de                                    ; $56f4: $19
    pop bc                                        ; $56f5: $c1
    dec b                                         ; $56f6: $05
    jr nz, jr_001_56df                            ; $56f7: $20 $e6

    ret                                           ; $56f9: $c9


Call_001_56fa:
    ld a, [hl+]                                   ; $56fa: $2a
    or a                                          ; $56fb: $b7
    ret z                                         ; $56fc: $c8

    ld b, a                                       ; $56fd: $47
    ld a, [hl-]                                   ; $56fe: $3a
    cp c                                          ; $56ff: $b9
    ret nz                                        ; $5700: $c0

    ld a, [$c239]                                 ; $5701: $fa $39 $c2
    add $02                                       ; $5704: $c6 $02
    ld c, a                                       ; $5706: $4f
    ld a, b                                       ; $5707: $78
    call Call_001_4b08                            ; $5708: $cd $08 $4b
    call Call_000_10c3                            ; $570b: $cd $c3 $10
    or a                                          ; $570e: $b7
    ld a, [$c264]                                 ; $570f: $fa $64 $c2
    ld b, $f0                                     ; $5712: $06 $f0
    jr z, jr_001_571b                             ; $5714: $28 $05

    ld a, [$c265]                                 ; $5716: $fa $65 $c2
    ld b, $f8                                     ; $5719: $06 $f8

jr_001_571b:
    ld [$c224], a                                 ; $571b: $ea $24 $c2
    ld hl, $d300                                  ; $571e: $21 $00 $d3
    rst RST_28                                    ; $5721: $ef
    ld [hl], b                                    ; $5722: $70
    jp Jump_001_4a7f                              ; $5723: $c3 $7f $4a


    ld a, [$c510]                                 ; $5726: $fa $10 $c5
    ld c, a                                       ; $5729: $4f
    ld b, $04                                     ; $572a: $06 $04

jr_001_572c:
    call Call_000_2f4c                            ; $572c: $cd $4c $2f
    jr c, jr_001_573c                             ; $572f: $38 $0b

    ld a, c                                       ; $5731: $79
    inc a                                         ; $5732: $3c
    and $03                                       ; $5733: $e6 $03
    ld c, a                                       ; $5735: $4f
    dec b                                         ; $5736: $05
    jr nz, jr_001_572c                            ; $5737: $20 $f3

    jp Jump_001_525c                              ; $5739: $c3 $5c $52


jr_001_573c:
    ld a, e                                       ; $573c: $7b
    ld [$c521], a                                 ; $573d: $ea $21 $c5
    ld a, d                                       ; $5740: $7a
    ld [$c522], a                                 ; $5741: $ea $22 $c5
    ld a, c                                       ; $5744: $79
    ld [$c510], a                                 ; $5745: $ea $10 $c5
    xor a                                         ; $5748: $af
    ld [$c033], a                                 ; $5749: $ea $33 $c0
    ld [$c034], a                                 ; $574c: $ea $34 $c0
    call Call_000_30c5                            ; $574f: $cd $c5 $30
    ld a, $0a                                     ; $5752: $3e $0a
    ld [$c125], a                                 ; $5754: $ea $25 $c1
    ret                                           ; $5757: $c9


    ld a, [$c521]                                 ; $5758: $fa $21 $c5
    ld e, a                                       ; $575b: $5f
    ld a, [$c522]                                 ; $575c: $fa $22 $c5
    ld d, a                                       ; $575f: $57
    ld a, [$c500]                                 ; $5760: $fa $00 $c5
    call Call_000_2ef1                            ; $5763: $cd $f1 $2e
    ld a, [$c266]                                 ; $5766: $fa $66 $c2
    ld [bc], a                                    ; $5769: $02
    ld b, a                                       ; $576a: $47
    call Call_000_2ca5                            ; $576b: $cd $a5 $2c
    ld a, $6d                                     ; $576e: $3e $6d
    call Call_000_00d9                            ; $5770: $cd $d9 $00
    ld a, $04                                     ; $5773: $3e $04
    ld [$c540], a                                 ; $5775: $ea $40 $c5
    xor a                                         ; $5778: $af
    ld [$c541], a                                 ; $5779: $ea $41 $c5
    ld a, $15                                     ; $577c: $3e $15
    ld [$c125], a                                 ; $577e: $ea $25 $c1
    ret                                           ; $5781: $c9


Call_001_5782:
    xor a                                         ; $5782: $af
    ld [$c239], a                                 ; $5783: $ea $39 $c2
    ld hl, $c5c0                                  ; $5786: $21 $c0 $c5
    ld b, $24                                     ; $5789: $06 $24
    ld a, [$c420]                                 ; $578b: $fa $20 $c4
    ld c, a                                       ; $578e: $4f

jr_001_578f:
    push bc                                       ; $578f: $c5
    push hl                                       ; $5790: $e5
    ld a, l                                       ; $5791: $7d
    ld [$c222], a                                 ; $5792: $ea $22 $c2
    ld a, h                                       ; $5795: $7c
    ld [$c223], a                                 ; $5796: $ea $23 $c2
    call Call_001_57aa                            ; $5799: $cd $aa $57
    ld hl, $c239                                  ; $579c: $21 $39 $c2
    inc [hl]                                      ; $579f: $34
    pop hl                                        ; $57a0: $e1
    ld de, $0010                                  ; $57a1: $11 $10 $00
    add hl, de                                    ; $57a4: $19
    pop bc                                        ; $57a5: $c1
    dec b                                         ; $57a6: $05
    jr nz, jr_001_578f                            ; $57a7: $20 $e6

    ret                                           ; $57a9: $c9


Call_001_57aa:
    ld a, [hl+]                                   ; $57aa: $2a
    or a                                          ; $57ab: $b7
    ret z                                         ; $57ac: $c8

    ld b, a                                       ; $57ad: $47
    ld a, [hl-]                                   ; $57ae: $3a
    cp c                                          ; $57af: $b9
    ret nz                                        ; $57b0: $c0

    ld a, [$c239]                                 ; $57b1: $fa $39 $c2
    add $02                                       ; $57b4: $c6 $02
    ld c, a                                       ; $57b6: $4f
    ld a, b                                       ; $57b7: $78
    jp Jump_001_4b08                              ; $57b8: $c3 $08 $4b


    call Call_001_57db                            ; $57bb: $cd $db $57
    ret c                                         ; $57be: $d8

    ld a, [$c524]                                 ; $57bf: $fa $24 $c5
    sub $02                                       ; $57c2: $d6 $02
    ret c                                         ; $57c4: $d8

    call Call_001_4b49                            ; $57c5: $cd $49 $4b
    ld a, [hl]                                    ; $57c8: $7e
    cp $18                                        ; $57c9: $fe $18
    scf                                           ; $57cb: $37
    ret z                                         ; $57cc: $c8

    cp $19                                        ; $57cd: $fe $19
    scf                                           ; $57cf: $37
    ccf                                           ; $57d0: $3f
    ret nz                                        ; $57d1: $c0

    ld a, $05                                     ; $57d2: $3e $05
    rst RST_28                                    ; $57d4: $ef
    ld a, [hl]                                    ; $57d5: $7e
    or a                                          ; $57d6: $b7
    scf                                           ; $57d7: $37
    ret z                                         ; $57d8: $c8

    or a                                          ; $57d9: $b7
    ret                                           ; $57da: $c9


Call_001_57db:
    call Call_000_2f28                            ; $57db: $cd $28 $2f
    ld a, [$c242]                                 ; $57de: $fa $42 $c2
    or a                                          ; $57e1: $b7
    scf                                           ; $57e2: $37
    ret z                                         ; $57e3: $c8

    ld [$c524], a                                 ; $57e4: $ea $24 $c5
    ld a, e                                       ; $57e7: $7b
    ld [$c521], a                                 ; $57e8: $ea $21 $c5
    ld a, d                                       ; $57eb: $7a
    ld [$c522], a                                 ; $57ec: $ea $22 $c5
    or a                                          ; $57ef: $b7
    ret                                           ; $57f0: $c9


Call_001_57f1:
    call Call_000_2f28                            ; $57f1: $cd $28 $2f
    ld a, [$c14b]                                 ; $57f4: $fa $4b $c1
    cp $0a                                        ; $57f7: $fe $0a
    scf                                           ; $57f9: $37
    ret z                                         ; $57fa: $c8

    ld a, [$c242]                                 ; $57fb: $fa $42 $c2
    cp $01                                        ; $57fe: $fe $01
    scf                                           ; $5800: $37
    ret nz                                        ; $5801: $c0

    ld [$c524], a                                 ; $5802: $ea $24 $c5
    ld a, e                                       ; $5805: $7b
    ld [$c521], a                                 ; $5806: $ea $21 $c5
    ld a, d                                       ; $5809: $7a
    ld [$c522], a                                 ; $580a: $ea $22 $c5
    or a                                          ; $580d: $b7
    ret                                           ; $580e: $c9


    call Call_001_5889                            ; $580f: $cd $89 $58
    ld b, $0c                                     ; $5812: $06 $0c
    jr jr_001_5850                                ; $5814: $18 $3a

    call Call_001_5889                            ; $5816: $cd $89 $58
    ld b, $01                                     ; $5819: $06 $01
    jr jr_001_5850                                ; $581b: $18 $33

Call_001_581d:
    call Call_001_5889                            ; $581d: $cd $89 $58
    ld b, $01                                     ; $5820: $06 $01
    ld a, [$c524]                                 ; $5822: $fa $24 $c5
    or a                                          ; $5825: $b7
    ret z                                         ; $5826: $c8

    cp $01                                        ; $5827: $fe $01
    jr z, jr_001_5850                             ; $5829: $28 $25

    cp $80                                        ; $582b: $fe $80
    jr nc, jr_001_5850                            ; $582d: $30 $21

    sub $02                                       ; $582f: $d6 $02
    ld l, a                                       ; $5831: $6f
    ld h, $00                                     ; $5832: $26 $00
    add hl, hl                                    ; $5834: $29
    add hl, hl                                    ; $5835: $29
    add hl, hl                                    ; $5836: $29
    add hl, hl                                    ; $5837: $29
    ld de, $c5c0                                  ; $5838: $11 $c0 $c5
    add hl, de                                    ; $583b: $19
    ld de, $d400                                  ; $583c: $11 $00 $d4
    ld a, [hl+]                                   ; $583f: $2a
    or a                                          ; $5840: $b7
    ret z                                         ; $5841: $c8

    ld b, a                                       ; $5842: $47
    inc l                                         ; $5843: $2c
    ld a, [hl+]                                   ; $5844: $2a
    swap a                                        ; $5845: $cb $37
    add $10                                       ; $5847: $c6 $10
    ld e, a                                       ; $5849: $5f
    ld a, [hl]                                    ; $584a: $7e
    swap a                                        ; $584b: $cb $37
    add $08                                       ; $584d: $c6 $08
    ld d, a                                       ; $584f: $57

jr_001_5850:
    ld a, b                                       ; $5850: $78
    ld hl, $7931                                  ; $5851: $21 $31 $79
    rst RST_28                                    ; $5854: $ef
    ld a, [hl]                                    ; $5855: $7e
    ld hl, $589b                                  ; $5856: $21 $9b $58
    call Call_000_041a                            ; $5859: $cd $1a $04
    ld bc, $da20                                  ; $585c: $01 $20 $da
    ld a, $04                                     ; $585f: $3e $04

jr_001_5861:
    push af                                       ; $5861: $f5
    ld a, [hl+]                                   ; $5862: $2a
    add e                                         ; $5863: $83
    ld [bc], a                                    ; $5864: $02
    inc c                                         ; $5865: $0c
    ld a, [hl+]                                   ; $5866: $2a
    add d                                         ; $5867: $82
    ld [bc], a                                    ; $5868: $02
    inc c                                         ; $5869: $0c
    ld a, [$c034]                                 ; $586a: $fa $34 $c0
    or a                                          ; $586d: $b7
    ld a, $2c                                     ; $586e: $3e $2c
    jr z, jr_001_5874                             ; $5870: $28 $02

    ld a, $2e                                     ; $5872: $3e $2e

jr_001_5874:
    ld [bc], a                                    ; $5874: $02
    inc c                                         ; $5875: $0c
    ld a, [$c034]                                 ; $5876: $fa $34 $c0
    or a                                          ; $5879: $b7
    ld a, $00                                     ; $587a: $3e $00
    jr z, jr_001_5880                             ; $587c: $28 $02

    ld a, $10                                     ; $587e: $3e $10

jr_001_5880:
    or [hl]                                       ; $5880: $b6
    inc hl                                        ; $5881: $23
    ld [bc], a                                    ; $5882: $02
    inc c                                         ; $5883: $0c
    pop af                                        ; $5884: $f1
    dec a                                         ; $5885: $3d
    jr nz, jr_001_5861                            ; $5886: $20 $d9

    ret                                           ; $5888: $c9


Call_001_5889:
    call Call_000_38e7                            ; $5889: $cd $e7 $38
    ld a, [$c521]                                 ; $588c: $fa $21 $c5
    swap a                                        ; $588f: $cb $37
    add $10                                       ; $5891: $c6 $10
    ld e, a                                       ; $5893: $5f
    ld a, [$c522]                                 ; $5894: $fa $22 $c5
    swap a                                        ; $5897: $cb $37
    add $08                                       ; $5899: $c6 $08
    ld d, a                                       ; $589b: $57
    ret                                           ; $589c: $c9


    and l                                         ; $589d: $a5
    ld e, b                                       ; $589e: $58
    or c                                          ; $589f: $b1
    ld e, b                                       ; $58a0: $58
    cp l                                          ; $58a1: $bd
    ld e, b                                       ; $58a2: $58
    ret                                           ; $58a3: $c9


    ld e, b                                       ; $58a4: $58
    ld hl, sp+$00                                 ; $58a5: $f8 $00
    nop                                           ; $58a7: $00
    ld hl, sp+$08                                 ; $58a8: $f8 $08
    jr nz, jr_001_58b4                            ; $58aa: $20 $08

    nop                                           ; $58ac: $00
    ld b, b                                       ; $58ad: $40
    ld [$6008], sp                                ; $58ae: $08 $08 $60
    ld hl, sp+$00                                 ; $58b1: $f8 $00
    nop                                           ; $58b3: $00

jr_001_58b4:
    ld hl, sp+$18                                 ; $58b4: $f8 $18
    jr nz, jr_001_58c0                            ; $58b6: $20 $08

    nop                                           ; $58b8: $00
    ld b, b                                       ; $58b9: $40
    ld [$6018], sp                                ; $58ba: $08 $18 $60
    ld hl, sp+$00                                 ; $58bd: $f8 $00
    nop                                           ; $58bf: $00

jr_001_58c0:
    ld hl, sp+$08                                 ; $58c0: $f8 $08
    jr nz, jr_001_58dc                            ; $58c2: $20 $18

    nop                                           ; $58c4: $00
    ld b, b                                       ; $58c5: $40
    jr jr_001_58d0                                ; $58c6: $18 $08

    ld h, b                                       ; $58c8: $60
    ld hl, sp+$00                                 ; $58c9: $f8 $00
    nop                                           ; $58cb: $00
    ld hl, sp+$18                                 ; $58cc: $f8 $18
    jr nz, @+$1a                                  ; $58ce: $20 $18

jr_001_58d0:
    nop                                           ; $58d0: $00
    ld b, b                                       ; $58d1: $40
    jr jr_001_58ec                                ; $58d2: $18 $18

    ld h, b                                       ; $58d4: $60

Call_001_58d5:
    ld hl, $c530                                  ; $58d5: $21 $30 $c5
    ld a, [hl]                                    ; $58d8: $7e
    or a                                          ; $58d9: $b7
    ret z                                         ; $58da: $c8

    dec [hl]                                      ; $58db: $35

jr_001_58dc:
    ld a, [$c524]                                 ; $58dc: $fa $24 $c5
    or a                                          ; $58df: $b7
    ret z                                         ; $58e0: $c8

    cp $80                                        ; $58e1: $fe $80
    ret nc                                        ; $58e3: $d0

    dec a                                         ; $58e4: $3d
    jr nz, jr_001_5918                            ; $58e5: $20 $31

    ld a, [$c530]                                 ; $58e7: $fa $30 $c5
    cp $18                                        ; $58ea: $fe $18

jr_001_58ec:
    jr nc, jr_001_58ff                            ; $58ec: $30 $11

    ld hl, $da02                                  ; $58ee: $21 $02 $da
    ld b, $10                                     ; $58f1: $06 $10
    ld de, $c532                                  ; $58f3: $11 $32 $c5
    ld a, [de]                                    ; $58f6: $1a
    cp $ff                                        ; $58f7: $fe $ff
    jp z, Jump_000_3a25                           ; $58f9: $ca $25 $3a

    jp Jump_000_3960                              ; $58fc: $c3 $60 $39


jr_001_58ff:
    ld b, a                                       ; $58ff: $47
    ld a, [$c532]                                 ; $5900: $fa $32 $c5
    or a                                          ; $5903: $b7
    ret z                                         ; $5904: $c8

    ld a, [$da01]                                 ; $5905: $fa $01 $da
    inc a                                         ; $5908: $3c
    bit 0, b                                      ; $5909: $cb $40
    jr z, jr_001_590f                             ; $590b: $28 $02

    dec a                                         ; $590d: $3d
    dec a                                         ; $590e: $3d

jr_001_590f:
    ld [$da01], a                                 ; $590f: $ea $01 $da
    add $08                                       ; $5912: $c6 $08
    ld [$da05], a                                 ; $5914: $ea $05 $da
    ret                                           ; $5917: $c9


jr_001_5918:
    ld a, [$c531]                                 ; $5918: $fa $31 $c5
    add $02                                       ; $591b: $c6 $02
    ld l, a                                       ; $591d: $6f
    ld h, $da                                     ; $591e: $26 $da
    ld a, [$c530]                                 ; $5920: $fa $30 $c5
    cp $18                                        ; $5923: $fe $18
    jr nc, jr_001_592f                            ; $5925: $30 $08

    ld b, $10                                     ; $5927: $06 $10
    ld de, $c532                                  ; $5929: $11 $32 $c5
    jp Jump_000_3960                              ; $592c: $c3 $60 $39


jr_001_592f:
    dec l                                         ; $592f: $2d
    ld b, [hl]                                    ; $5930: $46
    dec l                                         ; $5931: $2d
    ld c, [hl]                                    ; $5932: $4e
    ld a, [$c524]                                 ; $5933: $fa $24 $c5
    sub $02                                       ; $5936: $d6 $02
    ld l, a                                       ; $5938: $6f
    ld h, $00                                     ; $5939: $26 $00
    add hl, hl                                    ; $593b: $29
    add hl, hl                                    ; $593c: $29
    add hl, hl                                    ; $593d: $29
    add hl, hl                                    ; $593e: $29
    ld de, $c5c0                                  ; $593f: $11 $c0 $c5
    add hl, de                                    ; $5942: $19
    ld a, [hl]                                    ; $5943: $7e
    ld hl, $7931                                  ; $5944: $21 $31 $79
    rst RST_28                                    ; $5947: $ef
    ld a, [hl]                                    ; $5948: $7e
    ld hl, $59df                                  ; $5949: $21 $df $59
    call Call_000_041a                            ; $594c: $cd $1a $04
    ld a, l                                       ; $594f: $7d
    add c                                         ; $5950: $81
    ld [$da08], a                                 ; $5951: $ea $08 $da
    ld [$da0c], a                                 ; $5954: $ea $0c $da
    ld a, h                                       ; $5957: $7c
    add b                                         ; $5958: $80
    ld [$da09], a                                 ; $5959: $ea $09 $da
    add $08                                       ; $595c: $c6 $08
    ld [$da0d], a                                 ; $595e: $ea $0d $da
    ld b, $10                                     ; $5961: $06 $10
    ld de, $282a                                  ; $5963: $11 $2a $28
    ld a, [$c514]                                 ; $5966: $fa $14 $c5
    cp $03                                        ; $5969: $fe $03
    jr z, jr_001_598a                             ; $596b: $28 $1d

    ld a, [$c539]                                 ; $596d: $fa $39 $c5
    and $1f                                       ; $5970: $e6 $1f
    cp $1e                                        ; $5972: $fe $1e
    jr c, jr_001_598a                             ; $5974: $38 $14

    ld a, [$c530]                                 ; $5976: $fa $30 $c5
    cp $28                                        ; $5979: $fe $28
    call z, Call_001_5b06                         ; $597b: $cc $06 $5b
    ld a, [$c530]                                 ; $597e: $fa $30 $c5
    cp $28                                        ; $5981: $fe $28
    jr c, jr_001_598a                             ; $5983: $38 $05

    ld b, $30                                     ; $5985: $06 $30
    ld de, $2a28                                  ; $5987: $11 $28 $2a

jr_001_598a:
    ld a, d                                       ; $598a: $7a
    ld [$da0a], a                                 ; $598b: $ea $0a $da
    ld a, e                                       ; $598e: $7b
    ld [$da0e], a                                 ; $598f: $ea $0e $da
    ld a, b                                       ; $5992: $78
    ld [$da0b], a                                 ; $5993: $ea $0b $da
    ld [$da0f], a                                 ; $5996: $ea $0f $da
    ld a, [$c514]                                 ; $5999: $fa $14 $c5
    cp $03                                        ; $599c: $fe $03
    ret nz                                        ; $599e: $c0

    ld hl, $da08                                  ; $599f: $21 $08 $da
    ld de, $da10                                  ; $59a2: $11 $10 $da
    ld bc, $0008                                  ; $59a5: $01 $08 $00
    call Call_000_0442                            ; $59a8: $cd $42 $04
    ld a, $70                                     ; $59ab: $3e $70
    ld [$da12], a                                 ; $59ad: $ea $12 $da
    add $02                                       ; $59b0: $c6 $02
    ld [$da16], a                                 ; $59b2: $ea $16 $da
    add $02                                       ; $59b5: $c6 $02
    ld [$da0a], a                                 ; $59b7: $ea $0a $da
    add $02                                       ; $59ba: $c6 $02
    ld [$da0e], a                                 ; $59bc: $ea $0e $da
    ld a, [$c530]                                 ; $59bf: $fa $30 $c5
    rrca                                          ; $59c2: $0f
    rrca                                          ; $59c3: $0f
    and $03                                       ; $59c4: $e6 $03
    ld hl, $59dd                                  ; $59c6: $21 $dd $59
    rst RST_28                                    ; $59c9: $ef
    ld a, [$da08]                                 ; $59ca: $fa $08 $da
    add [hl]                                      ; $59cd: $86
    ld [$da08], a                                 ; $59ce: $ea $08 $da
    ld [$da0c], a                                 ; $59d1: $ea $0c $da
    sub $10                                       ; $59d4: $d6 $10
    ld [$da10], a                                 ; $59d6: $ea $10 $da
    ld [$da14], a                                 ; $59d9: $ea $14 $da
    ret                                           ; $59dc: $c9


    cp $01                                        ; $59dd: $fe $01
    rst RST_38                                    ; $59df: $ff
    ld [bc], a                                    ; $59e0: $02
    nop                                           ; $59e1: $00
    nop                                           ; $59e2: $00
    nop                                           ; $59e3: $00
    ld [$0008], sp                                ; $59e4: $08 $08 $00
    ld [$0608], sp                                ; $59e7: $08 $08 $06
    db $10                                        ; $59ea: $10
    ld de, $c23c                                  ; $59eb: $11 $3c $c2
    jp Jump_000_3960                              ; $59ee: $c3 $60 $39


Call_001_59f1:
    xor a                                         ; $59f1: $af
    ld [$c534], a                                 ; $59f2: $ea $34 $c5
    ld a, [$c524]                                 ; $59f5: $fa $24 $c5
    or a                                          ; $59f8: $b7
    ret z                                         ; $59f9: $c8

    cp $80                                        ; $59fa: $fe $80
    ret nc                                        ; $59fc: $d0

    ld [$c533], a                                 ; $59fd: $ea $33 $c5
    ld a, [$c237]                                 ; $5a00: $fa $37 $c2
    add $02                                       ; $5a03: $c6 $02
    ld [$c523], a                                 ; $5a05: $ea $23 $c5
    ld a, $01                                     ; $5a08: $3e $01
    ld [$c534], a                                 ; $5a0a: $ea $34 $c5
    ld a, [$c420]                                 ; $5a0d: $fa $20 $c4
    ld l, $01                                     ; $5a10: $2e $01
    cp [hl]                                       ; $5a12: $be
    jr z, jr_001_5a1a                             ; $5a13: $28 $05

    xor a                                         ; $5a15: $af
    ld [$c534], a                                 ; $5a16: $ea $34 $c5
    ret                                           ; $5a19: $c9


jr_001_5a1a:
    xor a                                         ; $5a1a: $af
    ld [$c033], a                                 ; $5a1b: $ea $33 $c0
    ld [$c034], a                                 ; $5a1e: $ea $34 $c0
    ld a, $3b                                     ; $5a21: $3e $3b
    jp Jump_000_00d9                              ; $5a23: $c3 $d9 $00


Call_001_5a26:
    ld a, [$c033]                                 ; $5a26: $fa $33 $c0
    cp $18                                        ; $5a29: $fe $18
    jr nc, jr_001_5a49                            ; $5a2b: $30 $1c

    call Call_001_581d                            ; $5a2d: $cd $1d $58
    ld a, [$c033]                                 ; $5a30: $fa $33 $c0
    cp $18                                        ; $5a33: $fe $18
    ret c                                         ; $5a35: $d8

    call Call_001_5c00                            ; $5a36: $cd $00 $5c
    ld a, e                                       ; $5a39: $7b
    ld [$c532], a                                 ; $5a3a: $ea $32 $c5
    call Call_001_5b23                            ; $5a3d: $cd $23 $5b
    call Call_001_5b46                            ; $5a40: $cd $46 $5b
    call Call_001_5bdc                            ; $5a43: $cd $dc $5b
    jp Jump_001_5bcb                              ; $5a46: $c3 $cb $5b


jr_001_5a49:
    ld a, [$c530]                                 ; $5a49: $fa $30 $c5
    or a                                          ; $5a4c: $b7
    ret nz                                        ; $5a4d: $c0

    call Call_001_5bf9                            ; $5a4e: $cd $f9 $5b
    call Call_001_5b57                            ; $5a51: $cd $57 $5b
    xor a                                         ; $5a54: $af
    ld [$c534], a                                 ; $5a55: $ea $34 $c5
    ret                                           ; $5a58: $c9


    xor a                                         ; $5a59: $af
    ld [$c534], a                                 ; $5a5a: $ea $34 $c5
    ld a, [$c524]                                 ; $5a5d: $fa $24 $c5
    cp $80                                        ; $5a60: $fe $80
    jp nc, Jump_001_4f3d                          ; $5a62: $d2 $3d $4f

    ld a, [$c524]                                 ; $5a65: $fa $24 $c5
    cp $02                                        ; $5a68: $fe $02
    ret c                                         ; $5a6a: $d8

    ld [$c533], a                                 ; $5a6b: $ea $33 $c5
    ld a, $01                                     ; $5a6e: $3e $01
    ld [$c523], a                                 ; $5a70: $ea $23 $c5
    call Call_001_5c00                            ; $5a73: $cd $00 $5c
    ld a, e                                       ; $5a76: $7b
    ld [$c532], a                                 ; $5a77: $ea $32 $c5
    call Call_001_5b06                            ; $5a7a: $cd $06 $5b
    call Call_001_5bcb                            ; $5a7d: $cd $cb $5b

Jump_001_5a80:
    ld a, $0d                                     ; $5a80: $3e $0d
    ld [$c125], a                                 ; $5a82: $ea $25 $c1

Jump_001_5a85:
    ld a, $01                                     ; $5a85: $3e $01
    ld [$c534], a                                 ; $5a87: $ea $34 $c5
    call Call_001_5bdc                            ; $5a8a: $cd $dc $5b
    call Call_001_5b46                            ; $5a8d: $cd $46 $5b
    ret                                           ; $5a90: $c9


Call_001_5a91:
    call Call_000_32a3                            ; $5a91: $cd $a3 $32
    call Call_001_4b95                            ; $5a94: $cd $95 $4b
    call Call_000_32b2                            ; $5a97: $cd $b2 $32
    call Call_001_58d5                            ; $5a9a: $cd $d5 $58
    ld a, [$c530]                                 ; $5a9d: $fa $30 $c5
    or a                                          ; $5aa0: $b7
    ret nz                                        ; $5aa1: $c0

    ld a, [$c514]                                 ; $5aa2: $fa $14 $c5
    cp $03                                        ; $5aa5: $fe $03
    call z, Call_001_4ebc                         ; $5aa7: $cc $bc $4e
    call Call_001_5bf9                            ; $5aaa: $cd $f9 $5b
    call Call_001_5b57                            ; $5aad: $cd $57 $5b
    xor a                                         ; $5ab0: $af
    ld [$c534], a                                 ; $5ab1: $ea $34 $c5
    ld a, [$c23c]                                 ; $5ab4: $fa $3c $c2
    or a                                          ; $5ab7: $b7
    jr nz, @+$13                                  ; $5ab8: $20 $11

    ld a, [$c514]                                 ; $5aba: $fa $14 $c5
    cp $0e                                        ; $5abd: $fe $0e
    jr z, @+$0c                                   ; $5abf: $28 $0a

    call Call_000_10ce                            ; $5ac1: $cd $ce $10
    rst RST_00                                    ; $5ac4: $c7
    bit 3, d                                      ; $5ac5: $cb $5a
    adc $5a                                       ; $5ac7: $ce $5a
    call c, $c35a                                 ; $5ac9: $dc $5a $c3
    adc h                                         ; $5acc: $8c
    inc [hl]                                      ; $5acd: $34
    call Call_001_76ab                            ; $5ace: $cd $ab $76
    ld a, $55                                     ; $5ad1: $3e $55
    call nz, Call_000_00d9                        ; $5ad3: $c4 $d9 $00
    xor a                                         ; $5ad6: $af
    ld [$c258], a                                 ; $5ad7: $ea $58 $c2
    jr jr_001_5ae6                                ; $5ada: $18 $0a

    ld a, $56                                     ; $5adc: $3e $56
    call Call_000_00d9                            ; $5ade: $cd $d9 $00
    ld a, $01                                     ; $5ae1: $3e $01
    ld [$c258], a                                 ; $5ae3: $ea $58 $c2

jr_001_5ae6:
    ld a, [$c225]                                 ; $5ae6: $fa $25 $c2
    ld [$c256], a                                 ; $5ae9: $ea $56 $c2
    ld a, [$c226]                                 ; $5aec: $fa $26 $c2
    ld [$c257], a                                 ; $5aef: $ea $57 $c2
    ld a, $13                                     ; $5af2: $3e $13
    ld [$c125], a                                 ; $5af4: $ea $25 $c1
    xor a                                         ; $5af7: $af
    ld [$c252], a                                 ; $5af8: $ea $52 $c2
    ld a, $ff                                     ; $5afb: $3e $ff
    ld [$c255], a                                 ; $5afd: $ea $55 $c2
    ld a, $68                                     ; $5b00: $3e $68
    ld [$c253], a                                 ; $5b02: $ea $53 $c2
    ret                                           ; $5b05: $c9


Call_001_5b06:
    call Call_001_5b0c                            ; $5b06: $cd $0c $5b
    jp Jump_000_00d9                              ; $5b09: $c3 $d9 $00


Call_001_5b0c:
    ld a, [$c532]                                 ; $5b0c: $fa $32 $c5
    ld b, a                                       ; $5b0f: $47
    or a                                          ; $5b10: $b7
    ld a, $5b                                     ; $5b11: $3e $5b
    ret z                                         ; $5b13: $c8

    ld a, b                                       ; $5b14: $78
    cp $05                                        ; $5b15: $fe $05
    ld a, $2e                                     ; $5b17: $3e $2e
    ret c                                         ; $5b19: $d8

    ld a, b                                       ; $5b1a: $78
    cp $12                                        ; $5b1b: $fe $12
    ld a, $5d                                     ; $5b1d: $3e $5d
    ret c                                         ; $5b1f: $d8

    ld a, $71                                     ; $5b20: $3e $71
    ret                                           ; $5b22: $c9


Call_001_5b23:
    call Call_001_5b29                            ; $5b23: $cd $29 $5b
    jp Jump_000_00d9                              ; $5b26: $c3 $d9 $00


Call_001_5b29:
    ld a, [$c532]                                 ; $5b29: $fa $32 $c5
    ld b, a                                       ; $5b2c: $47
    cp $ff                                        ; $5b2d: $fe $ff
    ld a, $50                                     ; $5b2f: $3e $50
    ret z                                         ; $5b31: $c8

    ld a, b                                       ; $5b32: $78
    or a                                          ; $5b33: $b7
    ld a, $69                                     ; $5b34: $3e $69
    ret z                                         ; $5b36: $c8

    ld a, b                                       ; $5b37: $78
    cp $06                                        ; $5b38: $fe $06
    ld a, $6a                                     ; $5b3a: $3e $6a
    ret c                                         ; $5b3c: $d8

    ld a, b                                       ; $5b3d: $78
    cp $12                                        ; $5b3e: $fe $12
    ld a, $3a                                     ; $5b40: $3e $3a
    ret c                                         ; $5b42: $d8

    ld a, $6b                                     ; $5b43: $3e $6b
    ret                                           ; $5b45: $c9


Call_001_5b46:
    ld a, [$c532]                                 ; $5b46: $fa $32 $c5
    ld e, a                                       ; $5b49: $5f
    ld a, [$c524]                                 ; $5b4a: $fa $24 $c5
    cp $02                                        ; $5b4d: $fe $02
    ret c                                         ; $5b4f: $d8

    call Call_001_4b36                            ; $5b50: $cd $36 $4b
    ld [$c23c], a                                 ; $5b53: $ea $3c $c2
    ret                                           ; $5b56: $c9


Call_001_5b57:
    ld hl, $c524                                  ; $5b57: $21 $24 $c5
    ld a, [hl]                                    ; $5b5a: $7e
    ld [hl], $00                                  ; $5b5b: $36 $00
    cp $01                                        ; $5b5d: $fe $01
    jr z, jr_001_5b90_ApplyPlayerDamageIfAny                             ; $5b5f: $28 $2f

    ld a, [$c23c]                                 ; $5b61: $fa $3c $c2
    or a                                          ; $5b64: $b7
    ret nz                                        ; $5b65: $c0

    ld a, $38                                     ; $5b66: $3e $38
    call Call_000_00d9                            ; $5b68: $cd $d9 $00
    call Call_001_4f77                            ; $5b6b: $cd $77 $4f
    ld a, [$c533]                                 ; $5b6e: $fa $33 $c5
    call Call_001_4af3                            ; $5b71: $cd $f3 $4a
    ld a, [$c16a]                                 ; $5b74: $fa $6a $c1
    ld c, a                                       ; $5b77: $4f
    ld e, $01                                     ; $5b78: $1e $01
    call Call_000_0374                            ; $5b7a: $cd $74 $03
    ld a, c                                       ; $5b7d: $79
    ld [$c16a], a                                 ; $5b7e: $ea $6a $c1
    call Call_000_03a4                            ; $5b81: $cd $a4 $03
    ld hl, $d200                                  ; $5b84: $21 $00 $d2
    rst RST_28                                    ; $5b87: $ef
    ld a, [$c224]                                 ; $5b88: $fa $24 $c2
    ld [hl], a                                    ; $5b8b: $77
    call Call_000_2b72_DrawObjectiveProgressTiles                            ; $5b8c: $cd $72 $2b
    ret                                           ; $5b8f: $c9


; $c532 holds the pending damage amount from the monster slot that just attacked
; (set in the per-slot combat loop above, e.g. $4409-$448c). $ff means "no attack".
jr_001_5b90_ApplyPlayerDamageIfAny:
    ld a, [$c532]                                 ; $5b90: $fa $32 $c5
    ld e, a                                       ; $5b93: $5f
    cp $ff                                        ; $5b94: $fe $ff
    jr nz, jr_001_5ba3_SubtractDamageFromHP                            ; $5b96: $20 $0b

    ld a, $05                                     ; $5b98: $3e $05
    ld [$c131], a                                 ; $5b9a: $ea $31 $c1
    ld a, $01                                     ; $5b9d: $3e $01
    ld [$c12b], a                                 ; $5b9f: $ea $2b $c1
    ret                                           ; $5ba2: $c9


; wPlayerHP -= e (BCD), clamped to 0, then redraws the HP digits in the HUD.
jr_001_5ba3_SubtractDamageFromHP:
    ld a, e                                       ; $5ba3: $7b
    or a                                          ; $5ba4: $b7
    ret z                                         ; $5ba5: $c8

    ld a, [$c120]                                 ; $5ba6: $fa $20 $c1
    ld c, a                                       ; $5ba9: $4f
    ld b, a                                       ; $5baa: $47
    push bc                                       ; $5bab: $c5
    call Call_000_037b_SubtractBCD16Clamped                            ; $5bac: $cd $7b $03
    ld a, c                                       ; $5baf: $79
    pop bc                                        ; $5bb0: $c1
    ld c, a                                       ; $5bb1: $4f
    ld [$c120], a                                 ; $5bb2: $ea $20 $c1
    push bc                                       ; $5bb5: $c5
    call Call_000_2b1e_ConvertPlayerHPToTiles                            ; $5bb6: $cd $1e $2b
    pop bc                                        ; $5bb9: $c1
    ld a, c                                       ; $5bba: $79
    cp $04                                        ; $5bbb: $fe $04
    ret nc                                        ; $5bbd: $d0

    or a                                          ; $5bbe: $b7
    ret z                                         ; $5bbf: $c8

    ld hl, $5bc7                                  ; $5bc0: $21 $c7 $5b
    rst RST_28                                    ; $5bc3: $ef
    ld a, [hl]                                    ; $5bc4: $7e
    jp Jump_000_00d9                              ; $5bc5: $c3 $d9 $00


    ld d, a                                       ; $5bc8: $57
    ld l, [hl]                                    ; $5bc9: $6e
    ld l, a                                       ; $5bca: $6f

Call_001_5bcb:
Jump_001_5bcb:
    ld a, [$c539]                                 ; $5bcb: $fa $39 $c5
    and $1f                                       ; $5bce: $e6 $1f
    cp $1e                                        ; $5bd0: $fe $1e
    ld a, $38                                     ; $5bd2: $3e $38
    jr nc, jr_001_5bd8                            ; $5bd4: $30 $02

    ld a, $28                                     ; $5bd6: $3e $28

jr_001_5bd8:
    ld [$c530], a                                 ; $5bd8: $ea $30 $c5
    ret                                           ; $5bdb: $c9


Call_001_5bdc:
    call Call_001_5be3                            ; $5bdc: $cd $e3 $5b
    ret c                                         ; $5bdf: $d8

    set 7, [hl]                                   ; $5be0: $cb $fe
    ret                                           ; $5be2: $c9


Call_001_5be3:
    ld a, [$c524]                                 ; $5be3: $fa $24 $c5
    sub $02                                       ; $5be6: $d6 $02
    ret c                                         ; $5be8: $d8

    ld l, a                                       ; $5be9: $6f
    ld h, $00                                     ; $5bea: $26 $00
    add hl, hl                                    ; $5bec: $29
    add hl, hl                                    ; $5bed: $29
    add hl, hl                                    ; $5bee: $29
    add hl, hl                                    ; $5bef: $29
    ld de, $c5c0                                  ; $5bf0: $11 $c0 $c5
    add hl, de                                    ; $5bf3: $19
    ld a, $04                                     ; $5bf4: $3e $04
    rst RST_28                                    ; $5bf6: $ef
    or a                                          ; $5bf7: $b7
    ret                                           ; $5bf8: $c9


Call_001_5bf9:
    call Call_001_5be3                            ; $5bf9: $cd $e3 $5b
    ret c                                         ; $5bfc: $d8

    res 7, [hl]                                   ; $5bfd: $cb $be
    ret                                           ; $5bff: $c9


Call_001_5c00:
    xor a                                         ; $5c00: $af
    ld [$c539], a                                 ; $5c01: $ea $39 $c5
    call Call_001_5c47                            ; $5c04: $cd $47 $5c
    call Call_001_5c75                            ; $5c07: $cd $75 $5c
    ld a, [$c523]                                 ; $5c0a: $fa $23 $c5
    sub $02                                       ; $5c0d: $d6 $02
    ld a, [$c12c]                                 ; $5c0f: $fa $2c $c1
    jr c, jr_001_5c2c                             ; $5c12: $38 $18

    ld a, [$c25f]                                 ; $5c14: $fa $5f $c2
    or a                                          ; $5c17: $b7
    ld a, [$d408]                                 ; $5c18: $fa $08 $d4
    jr z, jr_001_5c2c                             ; $5c1b: $28 $0f

    ld a, [$c120]                                 ; $5c1d: $fa $20 $c1
    cp $02                                        ; $5c20: $fe $02
    ld e, $00                                     ; $5c22: $1e $00
    ret c                                         ; $5c24: $d8

    ld a, $02                                     ; $5c25: $3e $02
    call Call_000_0456                            ; $5c27: $cd $56 $04
    ld e, a                                       ; $5c2a: $5f
    ret                                           ; $5c2b: $c9


jr_001_5c2c:
    ld b, a                                       ; $5c2c: $47
    ld a, $10                                     ; $5c2d: $3e $10
    call Call_000_0456                            ; $5c2f: $cd $56 $04
    ld c, a                                       ; $5c32: $4f
    call Call_000_10ab                            ; $5c33: $cd $ab $10
    ld [$c539], a                                 ; $5c36: $ea $39 $c5
    rlca                                          ; $5c39: $07
    rlca                                          ; $5c3a: $07
    rlca                                          ; $5c3b: $07
    and $07                                       ; $5c3c: $e6 $07
    rst RST_00                                    ; $5c3e: $c7
    adc d                                         ; $5c3f: $8a
    ld e, h                                       ; $5c40: $5c
    and [hl]                                      ; $5c41: $a6
    ld e, h                                       ; $5c42: $5c
    rst RST_18                                    ; $5c43: $df
    ld e, h                                       ; $5c44: $5c
    jp hl                                         ; $5c45: $e9


    ld e, h                                       ; $5c46: $5c

Call_001_5c47:
    ld a, [$c524]                                 ; $5c47: $fa $24 $c5
    sub $02                                       ; $5c4a: $d6 $02
    jr nc, jr_001_5c5b                            ; $5c4c: $30 $0d

    ld a, [$c12a]                                 ; $5c4e: $fa $2a $c1
    ld [$c536], a                                 ; $5c51: $ea $36 $c5
    ld a, [$c120]                                 ; $5c54: $fa $20 $c1
    ld [$c537], a                                 ; $5c57: $ea $37 $c5
    ret                                           ; $5c5a: $c9


jr_001_5c5b:
    ld l, a                                       ; $5c5b: $6f
    ld h, $00                                     ; $5c5c: $26 $00
    add hl, hl                                    ; $5c5e: $29
    add hl, hl                                    ; $5c5f: $29
    add hl, hl                                    ; $5c60: $29
    add hl, hl                                    ; $5c61: $29
    ld de, $c5c0                                  ; $5c62: $11 $c0 $c5
    add hl, de                                    ; $5c65: $19
    ld a, $06                                     ; $5c66: $3e $06
    rst RST_28                                    ; $5c68: $ef
    ld a, [hl]                                    ; $5c69: $7e
    ld [$c537], a                                 ; $5c6a: $ea $37 $c5
    ld a, $03                                     ; $5c6d: $3e $03
    rst RST_28                                    ; $5c6f: $ef
    ld a, [hl]                                    ; $5c70: $7e
    ld [$c536], a                                 ; $5c71: $ea $36 $c5
    ret                                           ; $5c74: $c9


Call_001_5c75:
    ld a, [$c523]                                 ; $5c75: $fa $23 $c5
    sub $02                                       ; $5c78: $d6 $02
    jr nc, jr_001_5c83                            ; $5c7a: $30 $07

    ld a, [$c129]                                 ; $5c7c: $fa $29 $c1
    ld [$c535], a                                 ; $5c7f: $ea $35 $c5
    ret                                           ; $5c82: $c9


jr_001_5c83:
    ld a, [$d407]                                 ; $5c83: $fa $07 $d4
    ld [$c535], a                                 ; $5c86: $ea $35 $c5
    ret                                           ; $5c89: $c9


    ld a, [$c539]                                 ; $5c8a: $fa $39 $c5
    and $1f                                       ; $5c8d: $e6 $1f
    ld c, a                                       ; $5c8f: $4f
    ld a, [$c537]                                 ; $5c90: $fa $37 $c5
    call Call_000_03a4                            ; $5c93: $cd $a4 $03
    ld b, a                                       ; $5c96: $47
    call Call_000_03df                            ; $5c97: $cd $df $03
    ld bc, $001f                                  ; $5c9a: $01 $1f $00
    call Call_000_03f4                            ; $5c9d: $cd $f4 $03
    ld a, l                                       ; $5ca0: $7d
    call Call_000_03b7                            ; $5ca1: $cd $b7 $03
    ld e, a                                       ; $5ca4: $5f
    ret                                           ; $5ca5: $c9


    ld a, [$c536]                                 ; $5ca6: $fa $36 $c5
    ld e, $00                                     ; $5ca9: $1e $00
    cp $99                                        ; $5cab: $fe $99
    ret nc                                        ; $5cad: $d0

    call Call_000_03a4                            ; $5cae: $cd $a4 $03
    ld c, a                                       ; $5cb1: $4f
    ld a, [$c535]                                 ; $5cb2: $fa $35 $c5
    call Call_000_03a4                            ; $5cb5: $cd $a4 $03
    add a                                         ; $5cb8: $87
    jr nc, jr_001_5cbd                            ; $5cb9: $30 $02

    ld a, $99                                     ; $5cbb: $3e $99

jr_001_5cbd:
    sub c                                         ; $5cbd: $91
    jr nc, jr_001_5cc2                            ; $5cbe: $30 $02

    ld a, $01                                     ; $5cc0: $3e $01

jr_001_5cc2:
    ld b, a                                       ; $5cc2: $47
    ld a, [$c539]                                 ; $5cc3: $fa $39 $c5
    and $1f                                       ; $5cc6: $e6 $1f
    ld c, a                                       ; $5cc8: $4f
    call Call_000_03df                            ; $5cc9: $cd $df $03
    ld bc, $001f                                  ; $5ccc: $01 $1f $00
    call Call_000_03f4                            ; $5ccf: $cd $f4 $03
    ld a, h                                       ; $5cd2: $7c
    or a                                          ; $5cd3: $b7
    jr z, jr_001_5cd9                             ; $5cd4: $28 $03

    ld e, $99                                     ; $5cd6: $1e $99
    ret                                           ; $5cd8: $c9


jr_001_5cd9:
    ld a, l                                       ; $5cd9: $7d
    call Call_000_03b7                            ; $5cda: $cd $b7 $03
    ld e, a                                       ; $5cdd: $5f
    ret                                           ; $5cde: $c9


    ld a, [$c539]                                 ; $5cdf: $fa $39 $c5
    and $1f                                       ; $5ce2: $e6 $1f
    call Call_000_03b7                            ; $5ce4: $cd $b7 $03
    ld e, a                                       ; $5ce7: $5f
    ret                                           ; $5ce8: $c9


    ld e, $ff                                     ; $5ce9: $1e $ff
    ret                                           ; $5ceb: $c9


Call_001_5cec:
    call Call_001_5cf3                            ; $5cec: $cd $f3 $5c
    ld [$c129], a                                 ; $5cef: $ea $29 $c1
    ret                                           ; $5cf2: $c9


Call_001_5cf3:
    ld a, [$c121]                                 ; $5cf3: $fa $21 $c1
    ld c, a                                       ; $5cf6: $4f
    ld a, [$c12d]                                 ; $5cf7: $fa $2d $c1
    ld e, a                                       ; $5cfa: $5f
    call Call_000_0374                            ; $5cfb: $cd $74 $03
    ld a, [$c12e]                                 ; $5cfe: $fa $2e $c1
    ld e, a                                       ; $5d01: $5f
    call Call_000_0374                            ; $5d02: $cd $74 $03
    ld a, c                                       ; $5d05: $79
    ret                                           ; $5d06: $c9


Call_001_5d07:
    call Call_001_5d0e                            ; $5d07: $cd $0e $5d
    ld [$c12a], a                                 ; $5d0a: $ea $2a $c1
    ret                                           ; $5d0d: $c9


Call_001_5d0e:
    ld a, [$c122]                                 ; $5d0e: $fa $22 $c1
    ld c, a                                       ; $5d11: $4f
    ld a, [$c12f]                                 ; $5d12: $fa $2f $c1
    ld e, a                                       ; $5d15: $5f
    call Call_000_0374                            ; $5d16: $cd $74 $03
    ld a, [$c130]                                 ; $5d19: $fa $30 $c1
    ld e, a                                       ; $5d1c: $5f
    call Call_000_0374                            ; $5d1d: $cd $74 $03
    ld a, c                                       ; $5d20: $79
    ret                                           ; $5d21: $c9


    ld a, [$c120]                                 ; $5d22: $fa $20 $c1
    cp $03                                        ; $5d25: $fe $03
    ld a, $01                                     ; $5d27: $3e $01
    jr c, jr_001_5d2c                             ; $5d29: $38 $01

    xor a                                         ; $5d2b: $af

jr_001_5d2c:
    ld [$c12c], a                                 ; $5d2c: $ea $2c $c1
    ret                                           ; $5d2f: $c9


    ld a, [$c103]                                 ; $5d30: $fa $03 $c1
    cp $02                                        ; $5d33: $fe $02
    ret nc                                        ; $5d35: $d0

    call Call_001_5d40                            ; $5d36: $cd $40 $5d
    ret c                                         ; $5d39: $d8

    ld a, $01                                     ; $5d3a: $3e $01
    ld [$c103], a                                 ; $5d3c: $ea $03 $c1
    ret                                           ; $5d3f: $c9


Call_001_5d40:
    ld a, [$c101]                                 ; $5d40: $fa $01 $c1
    ld hl, $5d48                                  ; $5d43: $21 $48 $5d
    call Call_000_042a                            ; $5d46: $cd $2a $04
    ld a, [de]                                    ; $5d49: $1a
    cp [hl]                                       ; $5d4a: $be
    ret                                           ; $5d4b: $c9


    ld l, d                                       ; $5d4c: $6a
    pop bc                                        ; $5d4d: $c1
    ld l, e                                       ; $5d4e: $6b
    pop bc                                        ; $5d4f: $c1
    jr z, @-$3d                                   ; $5d50: $28 $c1

    ld l, [hl]                                    ; $5d52: $6e
    pop bc                                        ; $5d53: $c1
    ld l, h                                       ; $5d54: $6c
    pop bc                                        ; $5d55: $c1
    ld l, l                                       ; $5d56: $6d
    pop bc                                        ; $5d57: $c1
    ld l, a                                       ; $5d58: $6f
    pop bc                                        ; $5d59: $c1
    ld [hl], b                                    ; $5d5a: $70
    pop bc                                        ; $5d5b: $c1
    ld a, [$c101]                                 ; $5d5c: $fa $01 $c1
    ld hl, $c164                                  ; $5d5f: $21 $64 $c1
    rst RST_28                                    ; $5d62: $ef
    ld b, [hl]                                    ; $5d63: $46
    ld a, [$c101]                                 ; $5d64: $fa $01 $c1
    ld de, $c15f                                  ; $5d67: $11 $5f $c1
    rst RST_30                                    ; $5d6a: $f7
    ld a, [de]                                    ; $5d6b: $1a
    cp $0b                                        ; $5d6c: $fe $0b
    ret nc                                        ; $5d6e: $d0

    inc b                                         ; $5d6f: $04
    cp b                                          ; $5d70: $b8
    ret nc                                        ; $5d71: $d0

    jp Jump_000_0fb7                              ; $5d72: $c3 $b7 $0f


Call_001_5d75:
    call Call_000_0e2d                            ; $5d75: $cd $2d $0e
    call Call_000_0260                            ; $5d78: $cd $60 $02
    xor a                                         ; $5d7b: $af
    ld [$c518], a                                 ; $5d7c: $ea $18 $c5
    call Call_000_0e6d                            ; $5d7f: $cd $6d $0e
    call Call_000_1b5d                            ; $5d82: $cd $5d $1b
    call Call_000_38c5                            ; $5d85: $cd $c5 $38
    call Call_001_5e2b                            ; $5d88: $cd $2b $5e
    call Call_000_2f90                            ; $5d8b: $cd $90 $2f
    ld a, $40                                     ; $5d8e: $3e $40
    ld [$c51c], a                                 ; $5d90: $ea $1c $c5
    jp Jump_000_0e37                              ; $5d93: $c3 $37 $0e


    call Call_001_5e46                            ; $5d96: $cd $46 $5e
    call Call_000_1066                            ; $5d99: $cd $66 $10
    ld a, [$c51b]                                 ; $5d9c: $fa $1b $c5
    cp $05                                        ; $5d9f: $fe $05
    jr z, jr_001_5dfd                             ; $5da1: $28 $5a

    ld hl, $5de8                                  ; $5da3: $21 $e8 $5d
    call Call_000_041a                            ; $5da6: $cd $1a $04
    ld a, [$c51a]                                 ; $5da9: $fa $1a $c5
    cp [hl]                                       ; $5dac: $be
    jr z, jr_001_5e12                             ; $5dad: $28 $63

    jr c, jr_001_5dd6                             ; $5daf: $38 $25

    ld b, $10                                     ; $5db1: $06 $10
    call Call_001_5e1e                            ; $5db3: $cd $1e $5e
    ret nz                                        ; $5db6: $c0

jr_001_5db7:
    call Call_001_5dce                            ; $5db7: $cd $ce $5d
    ld a, [$c51b]                                 ; $5dba: $fa $1b $c5
    ld hl, $5df6                                  ; $5dbd: $21 $f6 $5d
    rst RST_28                                    ; $5dc0: $ef
    ld a, [hl]                                    ; $5dc1: $7e
    call Call_000_00d9                            ; $5dc2: $cd $d9 $00
    ld a, [$c51b]                                 ; $5dc5: $fa $1b $c5
    cp $01                                        ; $5dc8: $fe $01
    ret nz                                        ; $5dca: $c0

    ld hl, $c120                                  ; $5dcb: $21 $20 $c1

Call_001_5dce:
    ld c, [hl]                                    ; $5dce: $4e
    ld e, $01                                     ; $5dcf: $1e $01
    call Call_000_0374                            ; $5dd1: $cd $74 $03
    ld [hl], c                                    ; $5dd4: $71
    ret                                           ; $5dd5: $c9


jr_001_5dd6:
    ld b, $10                                     ; $5dd6: $06 $10
    call Call_001_5e1e                            ; $5dd8: $cd $1e $5e
    ret nz                                        ; $5ddb: $c0

    ld c, [hl]                                    ; $5ddc: $4e
    ld e, $01                                     ; $5ddd: $1e $01
    call Call_000_037b_SubtractBCD16Clamped                            ; $5ddf: $cd $7b $03
    ld [hl], c                                    ; $5de2: $71
    ld a, $64                                     ; $5de3: $3e $64
    jp Jump_000_00d9                              ; $5de5: $c3 $d9 $00


    jr nz, @-$3d                                  ; $5de8: $20 $c1

    inc h                                         ; $5dea: $24
    pop bc                                        ; $5deb: $c1
    add hl, hl                                    ; $5dec: $29
    pop bc                                        ; $5ded: $c1
    ld a, [hl+]                                   ; $5dee: $2a
    pop bc                                        ; $5def: $c1
    inc hl                                        ; $5df0: $23
    pop bc                                        ; $5df1: $c1
    dec hl                                        ; $5df2: $2b
    pop bc                                        ; $5df3: $c1
    jr nz, jr_001_5db7                            ; $5df4: $20 $c1

    ld h, e                                       ; $5df6: $63
    ld h, l                                       ; $5df7: $65
    ld h, e                                       ; $5df8: $63
    ld h, e                                       ; $5df9: $63
    ld e, d                                       ; $5dfa: $5a
    ld h, e                                       ; $5dfb: $63
    ld h, e                                       ; $5dfc: $63

jr_001_5dfd:
    ld a, [$c12b]                                 ; $5dfd: $fa $2b $c1
    or a                                          ; $5e00: $b7
    jr z, jr_001_5e12                             ; $5e01: $28 $0f

    ld b, $1f                                     ; $5e03: $06 $1f
    call Call_001_5e1e                            ; $5e05: $cd $1e $5e
    ret nz                                        ; $5e08: $c0

    xor a                                         ; $5e09: $af
    ld [$c12b], a                                 ; $5e0a: $ea $2b $c1
    ld a, $63                                     ; $5e0d: $3e $63
    jp Jump_000_00d9                              ; $5e0f: $c3 $d9 $00


jr_001_5e12:
    ld a, [$c512]                                 ; $5e12: $fa $12 $c5
    cp $05                                        ; $5e15: $fe $05
    ret c                                         ; $5e17: $d8

    call Call_000_30c5                            ; $5e18: $cd $c5 $30
    jp Jump_000_348c                              ; $5e1b: $c3 $8c $34


Call_001_5e1e:
    ld a, [$c51c]                                 ; $5e1e: $fa $1c $c5
    dec a                                         ; $5e21: $3d
    ld [$c51c], a                                 ; $5e22: $ea $1c $c5
    ret nz                                        ; $5e25: $c0

    ld a, b                                       ; $5e26: $78
    ld [$c51c], a                                 ; $5e27: $ea $1c $c5
    ret                                           ; $5e2a: $c9


Call_001_5e2b:
    call Call_001_5e46                            ; $5e2b: $cd $46 $5e
    ld hl, $c518                                  ; $5e2e: $21 $18 $c5
    inc [hl]                                      ; $5e31: $34
    ld a, [hl]                                    ; $5e32: $7e
    swap a                                        ; $5e33: $cb $37
    rra                                           ; $5e35: $1f
    and $03                                       ; $5e36: $e6 $03
    ld hl, $5e84                                  ; $5e38: $21 $84 $5e
    rst RST_28                                    ; $5e3b: $ef
    ld a, [hl]                                    ; $5e3c: $7e
    ld [$da52], a                                 ; $5e3d: $ea $52 $da
    add $02                                       ; $5e40: $c6 $02
    ld [$da56], a                                 ; $5e42: $ea $56 $da
    ret                                           ; $5e45: $c9


Call_001_5e46:
    call Call_000_1054                            ; $5e46: $cd $54 $10
    ld hl, $da02                                  ; $5e49: $21 $02 $da
    ld b, $00                                     ; $5e4c: $06 $00
    ld de, $c120                                  ; $5e4e: $11 $20 $c1
    call Call_000_3955                            ; $5e51: $cd $55 $39
    ld de, $c124                                  ; $5e54: $11 $24 $c1
    call Call_000_3955                            ; $5e57: $cd $55 $39
    ld de, $c129                                  ; $5e5a: $11 $29 $c1
    call Call_000_3955                            ; $5e5d: $cd $55 $39
    ld de, $c12a                                  ; $5e60: $11 $2a $c1
    call Call_000_3955                            ; $5e63: $cd $55 $39
    ld de, $c123                                  ; $5e66: $11 $23 $c1
    call Call_000_3955                            ; $5e69: $cd $55 $39
    ld a, [$c12b]                                 ; $5e6c: $fa $2b $c1
    or a                                          ; $5e6f: $b7
    ld a, $16                                     ; $5e70: $3e $16
    jr z, jr_001_5e76                             ; $5e72: $28 $02

    ld a, $1a                                     ; $5e74: $3e $1a

jr_001_5e76:
    ld [$da2a], a                                 ; $5e76: $ea $2a $da
    add $02                                       ; $5e79: $c6 $02
    ld [$da2e], a                                 ; $5e7b: $ea $2e $da
    ld de, $da32                                  ; $5e7e: $11 $32 $da
    jp Jump_001_63f3                              ; $5e81: $c3 $f3 $63


    ld [hl], b                                    ; $5e84: $70
    ld a, b                                       ; $5e85: $78
    ld [hl], h                                    ; $5e86: $74
    ld a, h                                       ; $5e87: $7c
    call Call_000_0260                            ; $5e88: $cd $60 $02
    ld b, $e4                                     ; $5e8b: $06 $e4
    ld c, $64                                     ; $5e8d: $0e $64
    call Call_000_0e71                            ; $5e8f: $cd $71 $0e
    call Call_000_38c5                            ; $5e92: $cd $c5 $38
    call Call_000_1b9f                            ; $5e95: $cd $9f $1b
    call Call_001_5eaa                            ; $5e98: $cd $aa $5e
    call Call_000_1240                            ; $5e9b: $cd $40 $12
    call Call_001_5f2c                            ; $5e9e: $cd $2c $5f
    call Call_001_5ebf                            ; $5ea1: $cd $bf $5e
    ld a, $40                                     ; $5ea4: $3e $40
    ld [$c14e], a                                 ; $5ea6: $ea $4e $c1
    ret                                           ; $5ea9: $c9


Call_001_5eaa:
    ld de, $8000                                  ; $5eaa: $11 $00 $80
    ld a, $01                                     ; $5ead: $3e $01
    ld [$c520], a                                 ; $5eaf: $ea $20 $c5

jr_001_5eb2:
    ld hl, $c520                                  ; $5eb2: $21 $20 $c5
    ld a, [hl]                                    ; $5eb5: $7e
    inc [hl]                                      ; $5eb6: $34
    cp $20                                        ; $5eb7: $fe $20
    ret nc                                        ; $5eb9: $d0

    call Call_000_1bb1                            ; $5eba: $cd $b1 $1b
    jr jr_001_5eb2                                ; $5ebd: $18 $f3

Call_001_5ebf:
    call Call_000_1099                            ; $5ebf: $cd $99 $10
    ld hl, $da02                                  ; $5ec2: $21 $02 $da
    ld de, $c140                                  ; $5ec5: $11 $40 $c1
    ld b, $04                                     ; $5ec8: $06 $04

jr_001_5eca:
    ld a, [de]                                    ; $5eca: $1a
    inc de                                        ; $5ecb: $13
    dec a                                         ; $5ecc: $3d
    add a                                         ; $5ecd: $87
    add a                                         ; $5ece: $87
    ld [hl+], a                                   ; $5ecf: $22
    inc l                                         ; $5ed0: $2c
    inc l                                         ; $5ed1: $2c
    inc l                                         ; $5ed2: $2c
    add $02                                       ; $5ed3: $c6 $02
    ld [hl+], a                                   ; $5ed5: $22
    inc l                                         ; $5ed6: $2c
    inc l                                         ; $5ed7: $2c
    inc l                                         ; $5ed8: $2c
    dec b                                         ; $5ed9: $05
    jr nz, jr_001_5eca                            ; $5eda: $20 $ee

    ld b, $04                                     ; $5edc: $06 $04
    ld a, [$c127]                                 ; $5ede: $fa $27 $c1
    or a                                          ; $5ee1: $b7
    ld a, $80                                     ; $5ee2: $3e $80
    jr z, jr_001_5ee8                             ; $5ee4: $28 $02

    ld a, $88                                     ; $5ee6: $3e $88

jr_001_5ee8:
    ld [hl+], a                                   ; $5ee8: $22
    inc l                                         ; $5ee9: $2c
    inc l                                         ; $5eea: $2c
    inc l                                         ; $5eeb: $2c
    add $02                                       ; $5eec: $c6 $02
    dec b                                         ; $5eee: $05
    jr nz, jr_001_5ee8                            ; $5eef: $20 $f7

    ret                                           ; $5ef1: $c9


    ld a, [$c14d]                                 ; $5ef2: $fa $4d $c1
    rst RST_00                                    ; $5ef5: $c7
    ld [bc], a                                    ; $5ef6: $02
    ld e, a                                       ; $5ef7: $5f
    ld [bc], a                                    ; $5ef8: $02
    ld e, a                                       ; $5ef9: $5f
    ld [bc], a                                    ; $5efa: $02
    ld e, a                                       ; $5efb: $5f
    ld [bc], a                                    ; $5efc: $02
    ld e, a                                       ; $5efd: $5f
    dec h                                         ; $5efe: $25
    ld e, a                                       ; $5eff: $5f
    inc h                                         ; $5f00: $24
    ld e, a                                       ; $5f01: $5f
    ld hl, $c14e                                  ; $5f02: $21 $4e $c1
    dec [hl]                                      ; $5f05: $35
    ret nz                                        ; $5f06: $c0

    ld [hl], $30                                  ; $5f07: $36 $30
    ld hl, $da00                                  ; $5f09: $21 $00 $da
    ld a, [$c14d]                                 ; $5f0c: $fa $4d $c1
    add a                                         ; $5f0f: $87
    add a                                         ; $5f10: $87
    add a                                         ; $5f11: $87
    rst RST_28                                    ; $5f12: $ef
    ld [hl], $58                                  ; $5f13: $36 $58
    inc l                                         ; $5f15: $2c
    inc l                                         ; $5f16: $2c
    inc l                                         ; $5f17: $2c
    inc l                                         ; $5f18: $2c
    ld [hl], $58                                  ; $5f19: $36 $58
    ld a, $3d                                     ; $5f1b: $3e $3d
    call Call_000_00d9                            ; $5f1d: $cd $d9 $00

jr_001_5f20:
    ld hl, $c14d                                  ; $5f20: $21 $4d $c1
    inc [hl]                                      ; $5f23: $34
    ret                                           ; $5f24: $c9


    ld hl, $c14e                                  ; $5f25: $21 $4e $c1
    dec [hl]                                      ; $5f28: $35
    ret nz                                        ; $5f29: $c0

    jr jr_001_5f20                                ; $5f2a: $18 $f4

Call_001_5f2c:
    ld a, $01                                     ; $5f2c: $3e $01
    ld [$c140], a                                 ; $5f2e: $ea $40 $c1
    call Call_001_75a8                            ; $5f31: $cd $a8 $75
    ld [$c142], a                                 ; $5f34: $ea $42 $c1
    call Call_001_75a8                            ; $5f37: $cd $a8 $75
    ld [$c143], a                                 ; $5f3a: $ea $43 $c1
    ld a, [$c101]                                 ; $5f3d: $fa $01 $c1
    cp $04                                        ; $5f40: $fe $04
    jr nz, jr_001_5f51                            ; $5f42: $20 $0d

    ld a, [$c102]                                 ; $5f44: $fa $02 $c1
    cp $03                                        ; $5f47: $fe $03
    jr nc, jr_001_5f51                            ; $5f49: $30 $06

    ld a, $14                                     ; $5f4b: $3e $14
    ld [$c141], a                                 ; $5f4d: $ea $41 $c1
    ret                                           ; $5f50: $c9


jr_001_5f51:
    call Call_001_75a8                            ; $5f51: $cd $a8 $75
    ld [$c141], a                                 ; $5f54: $ea $41 $c1
    ret                                           ; $5f57: $c9


    call Call_000_0f68                            ; $5f58: $cd $68 $0f
    ld a, [$c02b]                                 ; $5f5b: $fa $2b $c0
    ld hl, $5f75                                  ; $5f5e: $21 $75 $5f
    call Call_000_041a                            ; $5f61: $cd $1a $04
    ld a, l                                       ; $5f64: $7d
    ld [$c027], a                                 ; $5f65: $ea $27 $c0
    ld a, h                                       ; $5f68: $7c
    ld [$c028], a                                 ; $5f69: $ea $28 $c0
    call Call_000_053f                            ; $5f6c: $cd $3f $05
    ld a, $32                                     ; $5f6f: $3e $32
    ld [$c02c], a                                 ; $5f71: $ea $2c $c0
    ret                                           ; $5f74: $c9


    ld [bc], a                                    ; $5f75: $02
    ld bc, $0101                                  ; $5f76: $01 $01 $01
    ld bc, $0202                                  ; $5f79: $01 $02 $02
    ld [bc], a                                    ; $5f7c: $02
    call Call_000_0260                            ; $5f7d: $cd $60 $02
    xor a                                         ; $5f80: $af
    ld [$c14f], a                                 ; $5f81: $ea $4f $c1
    ld [$c033], a                                 ; $5f84: $ea $33 $c0
    ld [$c034], a                                 ; $5f87: $ea $34 $c0
    call Call_000_0e6d                            ; $5f8a: $cd $6d $0e
    call Call_000_1bc5                            ; $5f8d: $cd $c5 $1b
    call Call_000_38c5                            ; $5f90: $cd $c5 $38
    call Call_001_5fa3                            ; $5f93: $cd $a3 $5f
    ld hl, $6030                                  ; $5f96: $21 $30 $60
    ld de, $da18                                  ; $5f99: $11 $18 $da
    ld bc, $0008                                  ; $5f9c: $01 $08 $00
    call Call_000_0442                            ; $5f9f: $cd $42 $04
    ret                                           ; $5fa2: $c9


Call_001_5fa3:
    ld a, [$c02b]                                 ; $5fa3: $fa $2b $c0
    swap a                                        ; $5fa6: $cb $37
    ld hl, $5fe8                                  ; $5fa8: $21 $e8 $5f
    rst RST_28                                    ; $5fab: $ef
    ld de, $da00                                  ; $5fac: $11 $00 $da
    ld bc, $0010                                  ; $5faf: $01 $10 $00
    call Call_000_0442                            ; $5fb2: $cd $42 $04
    ld hl, $6028                                  ; $5fb5: $21 $28 $60
    ld bc, $0008                                  ; $5fb8: $01 $08 $00
    call Call_000_0442                            ; $5fbb: $cd $42 $04
    ld a, [$c02b]                                 ; $5fbe: $fa $2b $c0
    inc a                                         ; $5fc1: $3c
    add a                                         ; $5fc2: $87
    ld [$da12], a                                 ; $5fc3: $ea $12 $da
    ld a, [$c02b]                                 ; $5fc6: $fa $2b $c0
    ld hl, $c165                                  ; $5fc9: $21 $65 $c1
    rst RST_28                                    ; $5fcc: $ef
    ld a, [hl]                                    ; $5fcd: $7e
    add a                                         ; $5fce: $87
    ld [$da16], a                                 ; $5fcf: $ea $16 $da
    call Call_000_38eb                            ; $5fd2: $cd $eb $38
    ld a, [$c034]                                 ; $5fd5: $fa $34 $c0
    or a                                          ; $5fd8: $b7
    ret z                                         ; $5fd9: $c8

    xor a                                         ; $5fda: $af
    ld [$da00], a                                 ; $5fdb: $ea $00 $da
    ld [$da04], a                                 ; $5fde: $ea $04 $da
    ld [$da08], a                                 ; $5fe1: $ea $08 $da
    ld [$da0c], a                                 ; $5fe4: $ea $0c $da
    ret                                           ; $5fe7: $c9


    ld h, b                                       ; $5fe8: $60
    jr nz, jr_001_6001                            ; $5fe9: $20 $16

    nop                                           ; $5feb: $00
    ld h, b                                       ; $5fec: $60
    jr c, jr_001_6005                             ; $5fed: $38 $16

    jr nz, @+$72                                  ; $5fef: $20 $70

    jr nz, @+$18                                  ; $5ff1: $20 $16

    ld b, b                                       ; $5ff3: $40
    ld [hl], b                                    ; $5ff4: $70
    jr c, @+$18                                   ; $5ff5: $38 $16

    ld h, b                                       ; $5ff7: $60
    jr c, jr_001_600a                             ; $5ff8: $38 $10

    ld d, $00                                     ; $5ffa: $16 $00
    jr c, jr_001_6026                             ; $5ffc: $38 $28

    ld d, $20                                     ; $5ffe: $16 $20
    ld c, b                                       ; $6000: $48

jr_001_6001:
    db $10                                        ; $6001: $10
    ld d, $40                                     ; $6002: $16 $40
    ld c, b                                       ; $6004: $48

jr_001_6005:
    jr z, jr_001_601d                             ; $6005: $28 $16

    ld h, b                                       ; $6007: $60
    jr c, @+$7a                                   ; $6008: $38 $78

jr_001_600a:
    ld d, $00                                     ; $600a: $16 $00
    jr c, @-$6e                                   ; $600c: $38 $90

    ld d, $20                                     ; $600e: $16 $20
    ld c, b                                       ; $6010: $48
    ld a, b                                       ; $6011: $78
    ld d, $40                                     ; $6012: $16 $40
    ld c, b                                       ; $6014: $48
    sub b                                         ; $6015: $90
    ld d, $60                                     ; $6016: $16 $60
    ld h, b                                       ; $6018: $60
    ld [hl], b                                    ; $6019: $70
    ld d, $00                                     ; $601a: $16 $00
    ld h, b                                       ; $601c: $60

jr_001_601d:
    adc b                                         ; $601d: $88
    ld d, $20                                     ; $601e: $16 $20
    ld [hl], b                                    ; $6020: $70
    ld [hl], b                                    ; $6021: $70
    ld d, $40                                     ; $6022: $16 $40
    ld [hl], b                                    ; $6024: $70
    adc b                                         ; $6025: $88

jr_001_6026:
    ld d, $60                                     ; $6026: $16 $60
    sub b                                         ; $6028: $90
    ld c, b                                       ; $6029: $48
    nop                                           ; $602a: $00
    db $10                                        ; $602b: $10
    sub b                                         ; $602c: $90
    adc b                                         ; $602d: $88
    nop                                           ; $602e: $00
    db $10                                        ; $602f: $10
    sub b                                         ; $6030: $90
    jr jr_001_604f                                ; $6031: $18 $1c

    nop                                           ; $6033: $00
    sub b                                         ; $6034: $90
    jr nz, jr_001_6055                            ; $6035: $20 $1e

    nop                                           ; $6037: $00
    sub b                                         ; $6038: $90
    ld e, b                                       ; $6039: $58
    inc e                                         ; $603a: $1c
    nop                                           ; $603b: $00
    sub b                                         ; $603c: $90
    ld h, b                                       ; $603d: $60
    ld e, $00                                     ; $603e: $1e $00
    call Call_000_3392                            ; $6040: $cd $92 $33
    ld a, [$c512]                                 ; $6043: $fa $12 $c5
    rst RST_00                                    ; $6046: $c7
    ld d, l                                       ; $6047: $55
    ld h, b                                       ; $6048: $60
    ld d, [hl]                                    ; $6049: $56
    ld h, b                                       ; $604a: $60
    ld e, h                                       ; $604b: $5c
    ld h, b                                       ; $604c: $60
    ld h, d                                       ; $604d: $62
    ld h, b                                       ; $604e: $60

jr_001_604f:
    ld l, b                                       ; $604f: $68
    ld h, b                                       ; $6050: $60
    ld [hl], l                                    ; $6051: $75
    ld h, b                                       ; $6052: $60
    ld d, l                                       ; $6053: $55
    ld h, b                                       ; $6054: $60

jr_001_6055:
    ret                                           ; $6055: $c9


    ld hl, $c028                                  ; $6056: $21 $28 $c0
    inc [hl]                                      ; $6059: $34
    jr jr_001_606c                                ; $605a: $18 $10

    ld hl, $c028                                  ; $605c: $21 $28 $c0
    dec [hl]                                      ; $605f: $35
    jr jr_001_606c                                ; $6060: $18 $0a

    ld hl, $c027                                  ; $6062: $21 $27 $c0
    dec [hl]                                      ; $6065: $35
    jr jr_001_606c                                ; $6066: $18 $04

    ld hl, $c027                                  ; $6068: $21 $27 $c0
    inc [hl]                                      ; $606b: $34

jr_001_606c:
    ld hl, $608e                                  ; $606c: $21 $8e $60
    ld de, $0404                                  ; $606f: $11 $04 $04
    jp Jump_000_0506                              ; $6072: $c3 $06 $05


    ld hl, $6038                                  ; $6075: $21 $38 $60
    ld de, $da18                                  ; $6078: $11 $18 $da
    ld bc, $0008                                  ; $607b: $01 $08 $00
    call Call_000_0442                            ; $607e: $cd $42 $04
    ld a, [$c02b]                                 ; $6081: $fa $2b $c0
    inc a                                         ; $6084: $3c
    ld [$c101], a                                 ; $6085: $ea $01 $c1
    ld a, $01                                     ; $6088: $3e $01
    ld [$c14f], a                                 ; $608a: $ea $4f $c1
    ret                                           ; $608d: $c9


    ld b, c                                       ; $608e: $41
    ld b, c                                       ; $608f: $41
    ld b, c                                       ; $6090: $41
    ld b, c                                       ; $6091: $41
    add c                                         ; $6092: $81
    ld bc, $8202                                  ; $6093: $01 $02 $82
    add c                                         ; $6096: $81
    nop                                           ; $6097: $00
    inc bc                                        ; $6098: $03
    add d                                         ; $6099: $82
    ld b, d                                       ; $609a: $42
    ld b, d                                       ; $609b: $42
    ld b, d                                       ; $609c: $42
    ld b, d                                       ; $609d: $42
    call Call_000_3392                            ; $609e: $cd $92 $33
    ld a, [$c512]                                 ; $60a1: $fa $12 $c5
    rst RST_00                                    ; $60a4: $c7
    ld d, l                                       ; $60a5: $55
    ld h, b                                       ; $60a6: $60
    ld d, l                                       ; $60a7: $55
    ld h, b                                       ; $60a8: $60
    ld d, l                                       ; $60a9: $55
    ld h, b                                       ; $60aa: $60
    or e                                          ; $60ab: $b3
    ld h, b                                       ; $60ac: $60
    ret nc                                        ; $60ad: $d0

    ld h, b                                       ; $60ae: $60
    pop hl                                        ; $60af: $e1
    ld h, b                                       ; $60b0: $60
    push af                                       ; $60b1: $f5
    ld h, b                                       ; $60b2: $60
    ld a, [$c02b]                                 ; $60b3: $fa $2b $c0
    ld hl, $c165                                  ; $60b6: $21 $65 $c1
    rst RST_28                                    ; $60b9: $ef
    ld a, [$c02b]                                 ; $60ba: $fa $2b $c0
    ld de, $c160                                  ; $60bd: $11 $60 $c1
    rst RST_30                                    ; $60c0: $f7
    ld a, [de]                                    ; $60c1: $1a
    cp $0b                                        ; $60c2: $fe $0b
    jr c, jr_001_60c8                             ; $60c4: $38 $02

    ld a, $0a                                     ; $60c6: $3e $0a

jr_001_60c8:
    cp [hl]                                       ; $60c8: $be
    ret z                                         ; $60c9: $c8

    inc [hl]                                      ; $60ca: $34
    ld a, $33                                     ; $60cb: $3e $33
    jp Jump_000_00d9                              ; $60cd: $c3 $d9 $00


    ld a, [$c02b]                                 ; $60d0: $fa $2b $c0
    ld hl, $c165                                  ; $60d3: $21 $65 $c1
    rst RST_28                                    ; $60d6: $ef
    ld a, [hl]                                    ; $60d7: $7e
    cp $01                                        ; $60d8: $fe $01
    ret z                                         ; $60da: $c8

    dec [hl]                                      ; $60db: $35
    ld a, $33                                     ; $60dc: $3e $33
    jp Jump_000_00d9                              ; $60de: $c3 $d9 $00


    ld a, [$c101]                                 ; $60e1: $fa $01 $c1
    ld hl, $c164                                  ; $60e4: $21 $64 $c1
    rst RST_28                                    ; $60e7: $ef
    ld a, [hl]                                    ; $60e8: $7e
    ld [$c102], a                                 ; $60e9: $ea $02 $c1
    ld a, $01                                     ; $60ec: $3e $01
    ld [$c14f], a                                 ; $60ee: $ea $4f $c1
    call Call_000_0fa5                            ; $60f1: $cd $a5 $0f
    ret                                           ; $60f4: $c9


    ld a, $02                                     ; $60f5: $3e $02
    ld [$c14f], a                                 ; $60f7: $ea $4f $c1
    ret                                           ; $60fa: $c9


    call Call_000_0260                            ; $60fb: $cd $60 $02
    call Call_000_0e6d                            ; $60fe: $cd $6d $0e
    xor a                                         ; $6101: $af
    ld [$c031], a                                 ; $6102: $ea $31 $c0
    ld [$c02d], a                                 ; $6105: $ea $2d $c0
    ld a, $01                                     ; $6108: $3e $01
    ld [$c02e], a                                 ; $610a: $ea $2e $c0
    call Call_000_0593                            ; $610d: $cd $93 $05
    ld a, $34                                     ; $6110: $3e $34
    ld [$c032], a                                 ; $6112: $ea $32 $c0
    call Call_000_1bd7                            ; $6115: $cd $d7 $1b
    call Call_000_38c5                            ; $6118: $cd $c5 $38
    call Call_001_6169                            ; $611b: $cd $69 $61
    ret                                           ; $611e: $c9


    xor a                                         ; $611f: $af
    ld [$c14f], a                                 ; $6120: $ea $4f $c1
    call Call_000_3392                            ; $6123: $cd $92 $33
    ld a, [$c512]                                 ; $6126: $fa $12 $c5
    rst RST_00                                    ; $6129: $c7
    jr c, jr_001_618d                             ; $612a: $38 $61

    add hl, sp                                    ; $612c: $39
    ld h, c                                       ; $612d: $61
    ccf                                           ; $612e: $3f
    ld h, c                                       ; $612f: $61
    jr c, @+$63                                   ; $6130: $38 $61

    jr c, jr_001_6195                             ; $6132: $38 $61

    ld d, b                                       ; $6134: $50
    ld h, c                                       ; $6135: $61
    ld h, e                                       ; $6136: $63
    ld h, c                                       ; $6137: $61
    ret                                           ; $6138: $c9


    ld hl, $c02e                                  ; $6139: $21 $2e $c0
    inc [hl]                                      ; $613c: $34
    jr jr_001_6143                                ; $613d: $18 $04

    ld hl, $c02e                                  ; $613f: $21 $2e $c0
    dec [hl]                                      ; $6142: $35

jr_001_6143:
    ld hl, $614c                                  ; $6143: $21 $4c $61
    ld de, $0401                                  ; $6146: $11 $01 $04
    jp Jump_000_055a                              ; $6149: $c3 $5a $05


    add d                                         ; $614c: $82
    nop                                           ; $614d: $00
    ld bc, $fa81                                  ; $614e: $01 $81 $fa
    ld sp, $b7c0                                  ; $6151: $31 $c0 $b7
    ld a, $02                                     ; $6154: $3e $02
    jr nz, jr_001_615f                            ; $6156: $20 $07

    ld a, $35                                     ; $6158: $3e $35
    call Call_000_00d9                            ; $615a: $cd $d9 $00
    ld a, $01                                     ; $615d: $3e $01

jr_001_615f:
    ld [$c14f], a                                 ; $615f: $ea $4f $c1
    ret                                           ; $6162: $c9


    ld a, $02                                     ; $6163: $3e $02
    ld [$c14f], a                                 ; $6165: $ea $4f $c1
    ret                                           ; $6168: $c9


Call_001_6169:
    ld hl, $6201                                  ; $6169: $21 $01 $62
    ld de, $da00                                  ; $616c: $11 $00 $da
    ld bc, $0010                                  ; $616f: $01 $10 $00
    call Call_000_0442                            ; $6172: $cd $42 $04
    ld a, [$c101]                                 ; $6175: $fa $01 $c1
    add a                                         ; $6178: $87
    ld [$da02], a                                 ; $6179: $ea $02 $da
    ld a, [$c102]                                 ; $617c: $fa $02 $c1
    add a                                         ; $617f: $87
    ld [$da06], a                                 ; $6180: $ea $06 $da
    ld a, [$c031]                                 ; $6183: $fa $31 $c0
    or a                                          ; $6186: $b7
    ld a, $38                                     ; $6187: $3e $38
    jr z, jr_001_618d                             ; $6189: $28 $02

    ld a, $58                                     ; $618b: $3e $58

jr_001_618d:
    ld [$da09], a                                 ; $618d: $ea $09 $da
    add $08                                       ; $6190: $c6 $08
    ld [$da0d], a                                 ; $6192: $ea $0d $da

jr_001_6195:
    ld a, [$c101]                                 ; $6195: $fa $01 $c1
    dec a                                         ; $6198: $3d
    rst RST_00                                    ; $6199: $c7
    and h                                         ; $619a: $a4
    ld h, c                                       ; $619b: $61
    cp e                                          ; $619c: $bb
    ld h, c                                       ; $619d: $61
    jp nc, $e961                                  ; $619e: $d2 $61 $e9

    ld h, c                                       ; $61a1: $61
    nop                                           ; $61a2: $00
    ld h, d                                       ; $61a3: $62
    ld hl, $6211                                  ; $61a4: $21 $11 $62
    ld de, $da10                                  ; $61a7: $11 $10 $da
    ld bc, $0008                                  ; $61aa: $01 $08 $00
    call Call_000_0442                            ; $61ad: $cd $42 $04
    ld hl, $da12                                  ; $61b0: $21 $12 $da
    ld de, $c16b                                  ; $61b3: $11 $6b $c1
    ld b, $00                                     ; $61b6: $06 $00
    jp Jump_000_3955                              ; $61b8: $c3 $55 $39


    ld hl, $6219                                  ; $61bb: $21 $19 $62
    ld de, $da10                                  ; $61be: $11 $10 $da
    ld bc, $0008                                  ; $61c1: $01 $08 $00
    call Call_000_0442                            ; $61c4: $cd $42 $04
    ld hl, $da12                                  ; $61c7: $21 $12 $da
    ld de, $c16e                                  ; $61ca: $11 $6e $c1
    ld b, $00                                     ; $61cd: $06 $00
    jp Jump_000_3955                              ; $61cf: $c3 $55 $39


    ld hl, $6221                                  ; $61d2: $21 $21 $62
    ld de, $da10                                  ; $61d5: $11 $10 $da
    ld bc, $0008                                  ; $61d8: $01 $08 $00
    call Call_000_0442                            ; $61db: $cd $42 $04
    ld hl, $da12                                  ; $61de: $21 $12 $da
    ld de, $c16d                                  ; $61e1: $11 $6d $c1
    ld b, $00                                     ; $61e4: $06 $00
    jp Jump_000_3955                              ; $61e6: $c3 $55 $39


    ld hl, $6229                                  ; $61e9: $21 $29 $62
    ld de, $da10                                  ; $61ec: $11 $10 $da
    ld bc, $0008                                  ; $61ef: $01 $08 $00
    call Call_000_0442                            ; $61f2: $cd $42 $04
    ld hl, $da12                                  ; $61f5: $21 $12 $da
    ld de, $c170                                  ; $61f8: $11 $70 $c1
    ld b, $00                                     ; $61fb: $06 $00
    jp Jump_000_3955                              ; $61fd: $c3 $55 $39


    ret                                           ; $6200: $c9


    jr c, jr_001_6253                             ; $6201: $38 $50

    nop                                           ; $6203: $00
    db $10                                        ; $6204: $10
    jr c, @-$76                                   ; $6205: $38 $88

    nop                                           ; $6207: $00
    db $10                                        ; $6208: $10
    ld a, b                                       ; $6209: $78
    jr c, jr_001_6224                             ; $620a: $38 $18

    nop                                           ; $620c: $00
    ld a, b                                       ; $620d: $78
    jr c, jr_001_622a                             ; $620e: $38 $1a

    nop                                           ; $6210: $00
    ld d, b                                       ; $6211: $50
    jr c, jr_001_6214                             ; $6212: $38 $00

jr_001_6214:
    db $10                                        ; $6214: $10
    ld d, b                                       ; $6215: $50
    ld b, b                                       ; $6216: $40
    nop                                           ; $6217: $00
    db $10                                        ; $6218: $10
    ld e, b                                       ; $6219: $58
    jr nc, jr_001_621c                            ; $621a: $30 $00

jr_001_621c:
    db $10                                        ; $621c: $10
    ld e, b                                       ; $621d: $58
    jr c, jr_001_6220                             ; $621e: $38 $00

jr_001_6220:
    db $10                                        ; $6220: $10
    ld h, b                                       ; $6221: $60
    ld c, b                                       ; $6222: $48
    nop                                           ; $6223: $00

jr_001_6224:
    db $10                                        ; $6224: $10
    ld h, b                                       ; $6225: $60
    ld d, b                                       ; $6226: $50
    nop                                           ; $6227: $00
    db $10                                        ; $6228: $10
    ld h, b                                       ; $6229: $60

jr_001_622a:
    ld c, b                                       ; $622a: $48
    nop                                           ; $622b: $00
    db $10                                        ; $622c: $10
    ld h, b                                       ; $622d: $60
    ld d, b                                       ; $622e: $50
    nop                                           ; $622f: $00
    db $10                                        ; $6230: $10
    call Call_000_0260                            ; $6231: $cd $60 $02
    ld b, $e4                                     ; $6234: $06 $e4
    ld c, $40                                     ; $6236: $0e $40
    call Call_000_0e71                            ; $6238: $cd $71 $0e
    call Call_000_1bf5                            ; $623b: $cd $f5 $1b
    xor a                                         ; $623e: $af
    ld [$c02b], a                                 ; $623f: $ea $2b $c0
    ld [$c027], a                                 ; $6242: $ea $27 $c0
    ld [$c150], a                                 ; $6245: $ea $50 $c1
    ld [$c127], a                                 ; $6248: $ea $27 $c1
    ld a, $01                                     ; $624b: $3e $01
    ld [$c028], a                                 ; $624d: $ea $28 $c0
    call Call_000_053f                            ; $6250: $cd $3f $05

jr_001_6253:
    ld a, $30                                     ; $6253: $3e $30
    ld [$c02c], a                                 ; $6255: $ea $2c $c0
    call Call_000_38c5                            ; $6258: $cd $c5 $38
    call $62a4                                    ; $625b: $cd $a4 $62
    ret                                           ; $625e: $c9


    call Call_001_6266                            ; $625f: $cd $66 $62
    call $62a4                                    ; $6262: $cd $a4 $62
    ret                                           ; $6265: $c9


Call_001_6266:
    call Call_000_3392                            ; $6266: $cd $92 $33
    ld a, [$c512]                                 ; $6269: $fa $12 $c5
    rst RST_00                                    ; $626c: $c7
    ld a, e                                       ; $626d: $7b
    ld h, d                                       ; $626e: $62
    ld a, h                                       ; $626f: $7c
    ld h, d                                       ; $6270: $62
    add d                                         ; $6271: $82
    ld h, d                                       ; $6272: $62
    ld a, e                                       ; $6273: $7b
    ld h, d                                       ; $6274: $62
    ld a, e                                       ; $6275: $7b
    ld h, d                                       ; $6276: $62
    sub [hl]                                      ; $6277: $96
    ld h, d                                       ; $6278: $62
    ld a, e                                       ; $6279: $7b
    ld h, d                                       ; $627a: $62
    ret                                           ; $627b: $c9


    ld hl, $c028                                  ; $627c: $21 $28 $c0
    inc [hl]                                      ; $627f: $34
    jr jr_001_6286                                ; $6280: $18 $04

    ld hl, $c028                                  ; $6282: $21 $28 $c0
    dec [hl]                                      ; $6285: $35

jr_001_6286:
    ld hl, $62a0                                  ; $6286: $21 $a0 $62
    ld de, $0401                                  ; $6289: $11 $01 $04
    call Call_000_0506                            ; $628c: $cd $06 $05
    ld a, [$c02b]                                 ; $628f: $fa $2b $c0
    ld [$c127], a                                 ; $6292: $ea $27 $c1
    ret                                           ; $6295: $c9


    ld a, $01                                     ; $6296: $3e $01
    ld [$c150], a                                 ; $6298: $ea $50 $c1
    ld a, $32                                     ; $629b: $3e $32
    jp Jump_000_00d9                              ; $629d: $c3 $d9 $00


    add d                                         ; $62a0: $82
    nop                                           ; $62a1: $00
    ld bc, $2181                                  ; $62a2: $01 $81 $21
    call nz, Call_000_1162                        ; $62a5: $c4 $62 $11
    nop                                           ; $62a8: $00
    jp c, Jump_000_1801                           ; $62a9: $da $01 $18

    nop                                           ; $62ac: $00
    call Call_000_0442                            ; $62ad: $cd $42 $04
    ld a, [$c127]                                 ; $62b0: $fa $27 $c1
    or a                                          ; $62b3: $b7
    ld de, $da0b                                  ; $62b4: $11 $0b $da
    jr z, jr_001_62bc                             ; $62b7: $28 $03

    ld de, $da13                                  ; $62b9: $11 $13 $da

jr_001_62bc:
    xor a                                         ; $62bc: $af
    ld [de], a                                    ; $62bd: $12
    inc e                                         ; $62be: $1c
    inc e                                         ; $62bf: $1c
    inc e                                         ; $62c0: $1c
    inc e                                         ; $62c1: $1c
    ld [de], a                                    ; $62c2: $12
    ret                                           ; $62c3: $c9


    jr nz, @+$1a                                  ; $62c4: $20 $18

    ld b, $00                                     ; $62c6: $06 $00
    jr nz, @+$22                                  ; $62c8: $20 $20

    ld [$2000], sp                                ; $62ca: $08 $00 $20
    jr nc, @+$6e                                  ; $62cd: $30 $6c

    db $10                                        ; $62cf: $10
    jr nz, jr_001_630a                            ; $62d0: $20 $38

    ld l, [hl]                                    ; $62d2: $6e
    db $10                                        ; $62d3: $10
    jr nz, jr_001_6346                            ; $62d4: $20 $70

    ld a, h                                       ; $62d6: $7c
    db $10                                        ; $62d7: $10
    jr nz, jr_001_6352                            ; $62d8: $20 $78

    ld a, [hl]                                    ; $62da: $7e
    db $10                                        ; $62db: $10
    xor a                                         ; $62dc: $af
    ld [$c02b], a                                 ; $62dd: $ea $2b $c0
    ld [$c027], a                                 ; $62e0: $ea $27 $c0
    ld [$c028], a                                 ; $62e3: $ea $28 $c0
    ld [$c53c], a                                 ; $62e6: $ea $3c $c5
    ld [$c150], a                                 ; $62e9: $ea $50 $c1
    ld hl, $c138                                  ; $62ec: $21 $38 $c1
    ld de, $c139                                  ; $62ef: $11 $39 $c1
    ld bc, $0007                                  ; $62f2: $01 $07 $00
    ld [hl], $3a                                  ; $62f5: $36 $3a
    call Call_000_0442                            ; $62f7: $cd $42 $04
    call Call_000_38c5                            ; $62fa: $cd $c5 $38
    jp Jump_001_63af                              ; $62fd: $c3 $af $63


    call Call_001_630a                            ; $6300: $cd $0a $63
    call $62a4                                    ; $6303: $cd $a4 $62
    call Call_001_63af                            ; $6306: $cd $af $63
    ret                                           ; $6309: $c9


Call_001_630a:
jr_001_630a:
    call Call_000_3392                            ; $630a: $cd $92 $33
    ld hl, $c027                                  ; $630d: $21 $27 $c0
    rst RST_08                                    ; $6310: $cf
    ld a, [$c512]                                 ; $6311: $fa $12 $c5
    rst RST_00                                    ; $6314: $c7
    inc hl                                        ; $6315: $23
    ld h, e                                       ; $6316: $63
    inc h                                         ; $6317: $24
    ld h, e                                       ; $6318: $63
    ld l, $63                                     ; $6319: $2e $63
    jr c, jr_001_6380                             ; $631b: $38 $63

    ld b, d                                       ; $631d: $42
    ld h, e                                       ; $631e: $63
    ld h, d                                       ; $631f: $62
    ld h, e                                       ; $6320: $63
    add b                                         ; $6321: $80
    ld h, e                                       ; $6322: $63
    ret                                           ; $6323: $c9


    inc h                                         ; $6324: $24
    ld a, h                                       ; $6325: $7c
    cp $0f                                        ; $6326: $fe $0f
    jr c, jr_001_634a                             ; $6328: $38 $20

    ld h, $00                                     ; $632a: $26 $00
    jr jr_001_634a                                ; $632c: $18 $1c

    dec h                                         ; $632e: $25
    ld a, h                                       ; $632f: $7c
    cp $0f                                        ; $6330: $fe $0f
    jr c, jr_001_634a                             ; $6332: $38 $16

    ld h, $0e                                     ; $6334: $26 $0e
    jr jr_001_634a                                ; $6336: $18 $12

    dec l                                         ; $6338: $2d
    ld a, l                                       ; $6339: $7d
    cp $04                                        ; $633a: $fe $04
    jr c, jr_001_634a                             ; $633c: $38 $0c

    ld l, $03                                     ; $633e: $2e $03
    jr jr_001_634a                                ; $6340: $18 $08

    inc l                                         ; $6342: $2c
    ld a, l                                       ; $6343: $7d
    cp $04                                        ; $6344: $fe $04

jr_001_6346:
    jr c, jr_001_634a                             ; $6346: $38 $02

    ld l, $00                                     ; $6348: $2e $00

jr_001_634a:
    ld a, l                                       ; $634a: $7d
    ld [$c027], a                                 ; $634b: $ea $27 $c0
    ld a, h                                       ; $634e: $7c
    ld [$c028], a                                 ; $634f: $ea $28 $c0

jr_001_6352:
    ld c, l                                       ; $6352: $4d
    ld b, $0f                                     ; $6353: $06 $0f
    call Call_000_03cf                            ; $6355: $cd $cf $03
    add h                                         ; $6358: $84
    ld [$c02b], a                                 ; $6359: $ea $2b $c0
    ld a, $30                                     ; $635c: $3e $30
    call Call_000_00d9                            ; $635e: $cd $d9 $00
    ret                                           ; $6361: $c9


    ld a, $31                                     ; $6362: $3e $31
    call Call_000_00d9                            ; $6364: $cd $d9 $00
    ld a, [$c53c]                                 ; $6367: $fa $3c $c5
    ld b, a                                       ; $636a: $47
    ld hl, $c138                                  ; $636b: $21 $38 $c1
    rst RST_28                                    ; $636e: $ef
    ld a, [$c02b]                                 ; $636f: $fa $2b $c0
    cp $3b                                        ; $6372: $fe $3b
    jr z, jr_001_63a9                             ; $6374: $28 $33

    ld [hl], a                                    ; $6376: $77
    ld a, b                                       ; $6377: $78
    cp $07                                        ; $6378: $fe $07
    ret nc                                        ; $637a: $d0

    inc a                                         ; $637b: $3c
    ld [$c53c], a                                 ; $637c: $ea $3c $c5
    ret                                           ; $637f: $c9


jr_001_6380:
    ld a, [$c53c]                                 ; $6380: $fa $3c $c5
    ld b, a                                       ; $6383: $47
    or a                                          ; $6384: $b7
    ret z                                         ; $6385: $c8

    cp $07                                        ; $6386: $fe $07
    jr nc, jr_001_639d                            ; $6388: $30 $13

jr_001_638a:
    ld a, b                                       ; $638a: $78
    ld hl, $c138                                  ; $638b: $21 $38 $c1
    rst RST_28                                    ; $638e: $ef
    ld [hl], $3a                                  ; $638f: $36 $3a
    ld a, b                                       ; $6391: $78
    dec a                                         ; $6392: $3d
    ld [$c53c], a                                 ; $6393: $ea $3c $c5
    ld hl, $c138                                  ; $6396: $21 $38 $c1
    rst RST_28                                    ; $6399: $ef
    ld [hl], $3a                                  ; $639a: $36 $3a
    ret                                           ; $639c: $c9


jr_001_639d:
    ld hl, $c138                                  ; $639d: $21 $38 $c1
    rst RST_28                                    ; $63a0: $ef
    ld a, [hl]                                    ; $63a1: $7e
    cp $3a                                        ; $63a2: $fe $3a
    jr z, jr_001_638a                             ; $63a4: $28 $e4

    ld [hl], $3a                                  ; $63a6: $36 $3a
    ret                                           ; $63a8: $c9


jr_001_63a9:
    ld a, $01                                     ; $63a9: $3e $01
    ld [$c150], a                                 ; $63ab: $ea $50 $c1
    ret                                           ; $63ae: $c9


Call_001_63af:
Jump_001_63af:
    ld hl, $643b                                  ; $63af: $21 $3b $64
    ld de, $da00                                  ; $63b2: $11 $00 $da
    ld bc, $0008                                  ; $63b5: $01 $08 $00
    call Call_000_0442                            ; $63b8: $cd $42 $04
    ld hl, $640f                                  ; $63bb: $21 $0f $64
    ld de, $da18                                  ; $63be: $11 $18 $da
    ld bc, $002c                                  ; $63c1: $01 $2c $00
    call Call_000_0442                            ; $63c4: $cd $42 $04
    ld a, [$c027]                                 ; $63c7: $fa $27 $c0
    ld hl, $6443                                  ; $63ca: $21 $43 $64
    rst RST_28                                    ; $63cd: $ef
    ld a, [hl]                                    ; $63ce: $7e
    ld [$da18], a                                 ; $63cf: $ea $18 $da
    ld [$da1c], a                                 ; $63d2: $ea $1c $da
    ld a, [$c028]                                 ; $63d5: $fa $28 $c0
    ld hl, $6447                                  ; $63d8: $21 $47 $64
    rst RST_28                                    ; $63db: $ef
    ld a, [hl]                                    ; $63dc: $7e
    ld [$da19], a                                 ; $63dd: $ea $19 $da
    add $08                                       ; $63e0: $c6 $08
    ld [$da1d], a                                 ; $63e2: $ea $1d $da
    ld a, [$c53c]                                 ; $63e5: $fa $3c $c5
    add a                                         ; $63e8: $87
    add a                                         ; $63e9: $87
    add a                                         ; $63ea: $87
    add $38                                       ; $63eb: $c6 $38
    ld [$da21], a                                 ; $63ed: $ea $21 $da
    ld de, $da26                                  ; $63f0: $11 $26 $da

Jump_001_63f3:
    ld hl, $c138                                  ; $63f3: $21 $38 $c1

Call_001_63f6:
    ld c, $f4                                     ; $63f6: $0e $f4
    ld b, $08                                     ; $63f8: $06 $08

jr_001_63fa:
    ld a, [hl+]                                   ; $63fa: $2a
    add a                                         ; $63fb: $87
    add $80                                       ; $63fc: $c6 $80
    ld [de], a                                    ; $63fe: $12
    sub c                                         ; $63ff: $91
    jr nz, jr_001_6407                            ; $6400: $20 $05

    dec e                                         ; $6402: $1d
    dec e                                         ; $6403: $1d
    ld [de], a                                    ; $6404: $12
    inc e                                         ; $6405: $1c
    inc e                                         ; $6406: $1c

jr_001_6407:
    inc e                                         ; $6407: $1c
    inc e                                         ; $6408: $1c
    inc e                                         ; $6409: $1c
    inc e                                         ; $640a: $1c
    dec b                                         ; $640b: $05
    jr nz, jr_001_63fa                            ; $640c: $20 $ec

    ret                                           ; $640e: $c9


    nop                                           ; $640f: $00
    nop                                           ; $6410: $00
    nop                                           ; $6411: $00
    nop                                           ; $6412: $00
    nop                                           ; $6413: $00
    nop                                           ; $6414: $00
    ld [bc], a                                    ; $6415: $02
    nop                                           ; $6416: $00
    ld c, b                                       ; $6417: $48
    ld b, b                                       ; $6418: $40
    inc b                                         ; $6419: $04
    nop                                           ; $641a: $00
    jr c, jr_001_6455                             ; $641b: $38 $38

    nop                                           ; $641d: $00
    nop                                           ; $641e: $00
    jr c, @+$42                                   ; $641f: $38 $40

    nop                                           ; $6421: $00
    nop                                           ; $6422: $00
    jr c, @+$4a                                   ; $6423: $38 $48

    nop                                           ; $6425: $00
    nop                                           ; $6426: $00
    jr c, jr_001_6479                             ; $6427: $38 $50

    nop                                           ; $6429: $00
    nop                                           ; $642a: $00
    jr c, jr_001_6485                             ; $642b: $38 $58

    nop                                           ; $642d: $00
    nop                                           ; $642e: $00
    jr c, jr_001_6491                             ; $642f: $38 $60

    nop                                           ; $6431: $00
    nop                                           ; $6432: $00
    jr c, jr_001_649d                             ; $6433: $38 $68

    nop                                           ; $6435: $00
    nop                                           ; $6436: $00
    jr c, @+$72                                   ; $6437: $38 $70

    nop                                           ; $6439: $00
    nop                                           ; $643a: $00
    jr c, jr_001_6465                             ; $643b: $38 $28

    ld b, $00                                     ; $643d: $06 $00
    jr c, jr_001_6471                             ; $643f: $38 $30

    ld [$5800], sp                                ; $6441: $08 $00 $58
    ld l, b                                       ; $6444: $68
    ld a, b                                       ; $6445: $78
    adc b                                         ; $6446: $88
    jr jr_001_6469                                ; $6447: $18 $20

    jr z, jr_001_647b                             ; $6449: $28 $30

    jr c, jr_001_6495                             ; $644b: $38 $48

    ld d, b                                       ; $644d: $50
    ld e, b                                       ; $644e: $58
    ld h, b                                       ; $644f: $60
    ld l, b                                       ; $6450: $68
    ld a, b                                       ; $6451: $78
    add b                                         ; $6452: $80
    adc b                                         ; $6453: $88
    sub b                                         ; $6454: $90

jr_001_6455:
    sbc b                                         ; $6455: $98
    ld b, $08                                     ; $6456: $06 $08
    ld hl, $c138                                  ; $6458: $21 $38 $c1

jr_001_645b:
    ld a, [hl+]                                   ; $645b: $2a
    cp $3a                                        ; $645c: $fe $3a
    ret nz                                        ; $645e: $c0

    dec b                                         ; $645f: $05
    jr nz, jr_001_645b                            ; $6460: $20 $f9

    ld a, [$c127]                                 ; $6462: $fa $27 $c1

jr_001_6465:
    or a                                          ; $6465: $b7
    ld hl, $6477                                  ; $6466: $21 $77 $64

jr_001_6469:
    jr z, jr_001_646e                             ; $6469: $28 $03

    ld hl, $647f                                  ; $646b: $21 $7f $64

jr_001_646e:
    ld de, $c138                                  ; $646e: $11 $38 $c1

jr_001_6471:
    ld bc, $0008                                  ; $6471: $01 $08 $00
    jp Jump_000_0442                              ; $6474: $c3 $42 $04


    add hl, bc                                    ; $6477: $09
    inc d                                         ; $6478: $14

jr_001_6479:
    rra                                           ; $6479: $1f
    ld a, [hl-]                                   ; $647a: $3a

jr_001_647b:
    rrca                                          ; $647b: $0f
    inc l                                         ; $647c: $2c
    ld [bc], a                                    ; $647d: $02
    ld a, [hl-]                                   ; $647e: $3a
    add hl, bc                                    ; $647f: $09
    inc d                                         ; $6480: $14
    rra                                           ; $6481: $1f
    ld a, [hl-]                                   ; $6482: $3a
    add hl, de                                    ; $6483: $19
    inc d                                         ; $6484: $14

jr_001_6485:
    add hl, bc                                    ; $6485: $09
    ld a, [hl-]                                   ; $6486: $3a
    call Call_000_0260                            ; $6487: $cd $60 $02
    ld b, $e4                                     ; $648a: $06 $e4
    ld c, $64                                     ; $648c: $0e $64
    call Call_000_0e71                            ; $648e: $cd $71 $0e

jr_001_6491:
    call Call_000_1c7f                            ; $6491: $cd $7f $1c
    xor a                                         ; $6494: $af

jr_001_6495:
    ld [$c02b], a                                 ; $6495: $ea $2b $c0
    ld [$c028], a                                 ; $6498: $ea $28 $c0
    ld a, $01                                     ; $649b: $3e $01

jr_001_649d:
    ld [$c027], a                                 ; $649d: $ea $27 $c0
    call Call_000_053f                            ; $64a0: $cd $3f $05
    ld a, $30                                     ; $64a3: $3e $30
    ld [$c02c], a                                 ; $64a5: $ea $2c $c0
    call Call_000_38c5                            ; $64a8: $cd $c5 $38
    call Call_001_64af                            ; $64ab: $cd $af $64
    ret                                           ; $64ae: $c9


Call_001_64af:
    ld a, [$c02b]                                 ; $64af: $fa $2b $c0
    or a                                          ; $64b2: $b7
    ld hl, $64c5                                  ; $64b3: $21 $c5 $64
    jr z, jr_001_64bb                             ; $64b6: $28 $03

    ld hl, $64cd                                  ; $64b8: $21 $cd $64

jr_001_64bb:
    ld de, $da00                                  ; $64bb: $11 $00 $da
    ld bc, $0008                                  ; $64be: $01 $08 $00
    call Call_000_0442                            ; $64c1: $cd $42 $04
    ret                                           ; $64c4: $c9


    jr z, jr_001_64e7                             ; $64c5: $28 $20

    nop                                           ; $64c7: $00
    nop                                           ; $64c8: $00
    jr z, @+$2a                                   ; $64c9: $28 $28

    ld [bc], a                                    ; $64cb: $02
    nop                                           ; $64cc: $00
    ld b, b                                       ; $64cd: $40
    jr nz, jr_001_64d0                            ; $64ce: $20 $00

jr_001_64d0:
    nop                                           ; $64d0: $00
    ld b, b                                       ; $64d1: $40
    jr z, @+$04                                   ; $64d2: $28 $02

    nop                                           ; $64d4: $00
    call Call_001_64dc                            ; $64d5: $cd $dc $64
    call Call_001_64af                            ; $64d8: $cd $af $64
    ret                                           ; $64db: $c9


Call_001_64dc:
    call Call_000_3392                            ; $64dc: $cd $92 $33
    ld a, [$c512]                                 ; $64df: $fa $12 $c5
    rst RST_00                                    ; $64e2: $c7
    pop af                                        ; $64e3: $f1
    ld h, h                                       ; $64e4: $64
    pop af                                        ; $64e5: $f1
    ld h, h                                       ; $64e6: $64

jr_001_64e7:
    pop af                                        ; $64e7: $f1
    ld h, h                                       ; $64e8: $64
    ldh a, [c]                                    ; $64e9: $f2
    ld h, h                                       ; $64ea: $64
    ld hl, sp+$64                                 ; $64eb: $f8 $64
    pop af                                        ; $64ed: $f1
    ld h, h                                       ; $64ee: $64
    pop af                                        ; $64ef: $f1
    ld h, h                                       ; $64f0: $64
    ret                                           ; $64f1: $c9


    ld hl, $c027                                  ; $64f2: $21 $27 $c0
    dec [hl]                                      ; $64f5: $35
    jr jr_001_64fc                                ; $64f6: $18 $04

    ld hl, $c027                                  ; $64f8: $21 $27 $c0
    inc [hl]                                      ; $64fb: $34

jr_001_64fc:
    ld hl, $6505                                  ; $64fc: $21 $05 $65
    ld de, HeaderLogo                             ; $64ff: $11 $04 $01
    jp Jump_000_0506                              ; $6502: $c3 $06 $05


    ld b, d                                       ; $6505: $42
    nop                                           ; $6506: $00
    ld bc, $cd41                                  ; $6507: $01 $41 $cd
    dec l                                         ; $650a: $2d
    ld c, $cd                                     ; $650b: $0e $cd
    ld h, b                                       ; $650d: $60
    ld [bc], a                                    ; $650e: $02
    call Call_000_0e6d                            ; $650f: $cd $6d $0e
    xor a                                         ; $6512: $af
    ld [$c02b], a                                 ; $6513: $ea $2b $c0
    ld [$c028], a                                 ; $6516: $ea $28 $c0
    ld a, $01                                     ; $6519: $3e $01
    ld [$c027], a                                 ; $651b: $ea $27 $c0
    call Call_000_053f                            ; $651e: $cd $3f $05
    ld a, $32                                     ; $6521: $3e $32
    ld [$c02c], a                                 ; $6523: $ea $2c $c0
    call Call_000_38c5                            ; $6526: $cd $c5 $38
    call Call_000_1c22                            ; $6529: $cd $22 $1c
    call Call_001_6535                            ; $652c: $cd $35 $65
    call Call_000_2f90                            ; $652f: $cd $90 $2f
    jp Jump_000_0e37                              ; $6532: $c3 $37 $0e


Call_001_6535:
    ld hl, $655f                                  ; $6535: $21 $5f $65
    ld de, $da00                                  ; $6538: $11 $00 $da
    ld bc, $0014                                  ; $653b: $01 $14 $00
    call Call_000_0442                            ; $653e: $cd $42 $04
    ld a, [$c02b]                                 ; $6541: $fa $2b $c0
    ld hl, $6573                                  ; $6544: $21 $73 $65
    rst RST_28                                    ; $6547: $ef
    ld a, [hl]                                    ; $6548: $7e
    ld [$da00], a                                 ; $6549: $ea $00 $da
    ld [$da04], a                                 ; $654c: $ea $04 $da
    ld a, [$c112]                                 ; $654f: $fa $12 $c1
    or a                                          ; $6552: $b7
    ret z                                         ; $6553: $c8

    ld a, $2c                                     ; $6554: $3e $2c
    ld [$da0e], a                                 ; $6556: $ea $0e $da
    ld a, $2e                                     ; $6559: $3e $2e
    ld [$da12], a                                 ; $655b: $ea $12 $da
    ret                                           ; $655e: $c9


    nop                                           ; $655f: $00
    jr c, jr_001_6562                             ; $6560: $38 $00

jr_001_6562:
    nop                                           ; $6562: $00
    nop                                           ; $6563: $00
    ld b, b                                       ; $6564: $40
    ld [bc], a                                    ; $6565: $02
    nop                                           ; $6566: $00
    ld e, b                                       ; $6567: $58
    ld h, b                                       ; $6568: $60
    ld h, $00                                     ; $6569: $26 $00
    ld e, b                                       ; $656b: $58
    ld l, b                                       ; $656c: $68
    jr z, jr_001_656f                             ; $656d: $28 $00

jr_001_656f:
    ld e, b                                       ; $656f: $58
    ld [hl], b                                    ; $6570: $70
    ld a, [hl+]                                   ; $6571: $2a
    nop                                           ; $6572: $00
    jr z, @+$42                                   ; $6573: $28 $40

    ld e, b                                       ; $6575: $58
    ld a, b                                       ; $6576: $78
    call Call_001_6535                            ; $6577: $cd $35 $65
    ld a, [$c02b]                                 ; $657a: $fa $2b $c0
    cp $03                                        ; $657d: $fe $03
    call z, Call_000_0322                         ; $657f: $cc $22 $03
    ld a, [$c512]                                 ; $6582: $fa $12 $c5
    rst RST_00                                    ; $6585: $c7
    sub h                                         ; $6586: $94
    ld h, l                                       ; $6587: $65
    sub h                                         ; $6588: $94
    ld h, l                                       ; $6589: $65
    sub h                                         ; $658a: $94
    ld h, l                                       ; $658b: $65
    sub l                                         ; $658c: $95
    ld h, l                                       ; $658d: $65
    sbc e                                         ; $658e: $9b
    ld h, l                                       ; $658f: $65
    xor [hl]                                      ; $6590: $ae
    ld h, l                                       ; $6591: $65
    jp c, $c965                                   ; $6592: $da $65 $c9

    ld hl, $c027                                  ; $6595: $21 $27 $c0
    dec [hl]                                      ; $6598: $35
    jr jr_001_659f                                ; $6599: $18 $04

    ld hl, $c027                                  ; $659b: $21 $27 $c0
    inc [hl]                                      ; $659e: $34

jr_001_659f:
    ld hl, $65a8                                  ; $659f: $21 $a8 $65
    ld de, $0106                                  ; $65a2: $11 $06 $01
    jp Jump_000_0506                              ; $65a5: $c3 $06 $05


    ld b, c                                       ; $65a8: $41
    nop                                           ; $65a9: $00
    ld bc, $0302                                  ; $65aa: $01 $02 $03
    ld b, h                                       ; $65ad: $44
    ld a, [$c02b]                                 ; $65ae: $fa $2b $c0
    rst RST_00                                    ; $65b1: $c7
    cp d                                          ; $65b2: $ba
    ld h, l                                       ; $65b3: $65
    jp $cc65                                      ; $65b4: $c3 $65 $cc


    ld h, l                                       ; $65b7: $65
    add sp, $65                                   ; $65b8: $e8 $65
    call Call_001_661e                            ; $65ba: $cd $1e $66
    ld a, $11                                     ; $65bd: $3e $11
    ld [$c125], a                                 ; $65bf: $ea $25 $c1
    ret                                           ; $65c2: $c9


    call Call_001_5d75                            ; $65c3: $cd $75 $5d
    ld a, $10                                     ; $65c6: $3e $10
    ld [$c125], a                                 ; $65c8: $ea $25 $c1
    ret                                           ; $65cb: $c9


    ld a, [$c112]                                 ; $65cc: $fa $12 $c1
    xor $01                                       ; $65cf: $ee $01
    ld [$c112], a                                 ; $65d1: $ea $12 $c1
    jp z, Jump_000_314e                           ; $65d4: $ca $4e $31

    xor a                                         ; $65d7: $af
    jr jr_001_65e9                                ; $65d8: $18 $0f

    ld a, [$c02b]                                 ; $65da: $fa $2b $c0
    cp $03                                        ; $65dd: $fe $03
    ret z                                         ; $65df: $c8

    call Call_000_30c5                            ; $65e0: $cd $c5 $30
    ld a, $01                                     ; $65e3: $3e $01
    ld [$c125], a                                 ; $65e5: $ea $25 $c1
    ret                                           ; $65e8: $c9


Jump_001_65e9:
jr_001_65e9:
    ld hl, $65f4                                  ; $65e9: $21 $f4 $65

Call_001_65ec:
    ld [$c038], a                                 ; $65ec: $ea $38 $c0
    rst RST_28                                    ; $65ef: $ef
    ld a, [hl]                                    ; $65f0: $7e
    jp Jump_000_00d9                              ; $65f1: $c3 $d9 $00


    inc l                                         ; $65f4: $2c
    inc d                                         ; $65f5: $14
    dec de                                        ; $65f6: $1b
    ld a, [de]                                    ; $65f7: $1a
    ld d, $10                                     ; $65f8: $16 $10
    ld [de], a                                    ; $65fa: $12
    rra                                           ; $65fb: $1f
    jr nz, @+$23                                  ; $65fc: $20 $21

    dec e                                         ; $65fe: $1d
    ld e, $2c                                     ; $65ff: $1e $2c
    dec d                                         ; $6601: $15
    inc e                                         ; $6602: $1c
    ld a, [de]                                    ; $6603: $1a
    rla                                           ; $6604: $17
    ld de, $1f13                                  ; $6605: $11 $13 $1f
    jr nz, @+$23                                  ; $6608: $20 $21

    dec e                                         ; $660a: $1d
    ld e, $cd                                     ; $660b: $1e $cd
    dec hl                                        ; $660d: $2b
    ld e, [hl]                                    ; $660e: $5e
    ld a, [$c00f]                                 ; $660f: $fa $0f $c0
    and $30                                       ; $6612: $e6 $30
    ret z                                         ; $6614: $c8

    call Call_000_30c5                            ; $6615: $cd $c5 $30
    ld a, $01                                     ; $6618: $3e $01
    ld [$c125], a                                 ; $661a: $ea $25 $c1
    ret                                           ; $661d: $c9


Call_001_661e:
    call Call_000_0e2d                            ; $661e: $cd $2d $0e
    call Call_000_0260                            ; $6621: $cd $60 $02
    call Call_000_0e6d                            ; $6624: $cd $6d $0e
    call Call_000_38c5                            ; $6627: $cd $c5 $38
    call Call_000_1c6d                            ; $662a: $cd $6d $1c
    call Call_001_6637                            ; $662d: $cd $37 $66
    call Call_000_2f90                            ; $6630: $cd $90 $2f
    call Call_000_0e37                            ; $6633: $cd $37 $0e
    ret                                           ; $6636: $c9


Call_001_6637:
    call Call_001_6641                            ; $6637: $cd $41 $66
    call Call_001_66aa                            ; $663a: $cd $aa $66
    call Call_001_66cf                            ; $663d: $cd $cf $66
    ret                                           ; $6640: $c9


Call_001_6641:
    xor a                                         ; $6641: $af
    ld [$c206], a                                 ; $6642: $ea $06 $c2
    ld [$c208], a                                 ; $6645: $ea $08 $c2
    ld a, $07                                     ; $6648: $3e $07
    ld [$c205], a                                 ; $664a: $ea $05 $c2
    ld [$c207], a                                 ; $664d: $ea $07 $c2
    ld hl, $c4c0                                  ; $6650: $21 $c0 $c4
    ld d, $00                                     ; $6653: $16 $00

jr_001_6655:
    call Call_001_6677                            ; $6655: $cd $77 $66
    ld a, c                                       ; $6658: $79
    or a                                          ; $6659: $b7
    jr z, jr_001_6670                             ; $665a: $28 $14

    ld a, [$c205]                                 ; $665c: $fa $05 $c2
    cp d                                          ; $665f: $ba
    jr c, jr_001_6666                             ; $6660: $38 $04

    ld a, d                                       ; $6662: $7a
    ld [$c205], a                                 ; $6663: $ea $05 $c2

jr_001_6666:
    ld a, [$c206]                                 ; $6666: $fa $06 $c2
    cp d                                          ; $6669: $ba
    jr nc, jr_001_6670                            ; $666a: $30 $04

    ld a, d                                       ; $666c: $7a
    ld [$c206], a                                 ; $666d: $ea $06 $c2

jr_001_6670:
    inc d                                         ; $6670: $14
    ld a, d                                       ; $6671: $7a
    cp $08                                        ; $6672: $fe $08
    jr c, jr_001_6655                             ; $6674: $38 $df

    ret                                           ; $6676: $c9


Call_001_6677:
    ld bc, $0000                                  ; $6677: $01 $00 $00

jr_001_667a:
    ld a, [hl+]                                   ; $667a: $2a
    or a                                          ; $667b: $b7
    jr z, jr_001_66a3                             ; $667c: $28 $25

    push hl                                       ; $667e: $e5
    ld hl, $206b                                  ; $667f: $21 $6b $20
    call Call_000_041a                            ; $6682: $cd $1a $04
    ld a, $12                                     ; $6685: $3e $12
    rst RST_28                                    ; $6687: $ef
    ld a, [hl]                                    ; $6688: $7e
    pop hl                                        ; $6689: $e1
    or a                                          ; $668a: $b7
    jr z, jr_001_66a3                             ; $668b: $28 $16

    ld c, $01                                     ; $668d: $0e $01
    ld a, [$c207]                                 ; $668f: $fa $07 $c2
    cp b                                          ; $6692: $b8
    jr c, jr_001_6699                             ; $6693: $38 $04

    ld a, b                                       ; $6695: $78
    ld [$c207], a                                 ; $6696: $ea $07 $c2

jr_001_6699:
    ld a, [$c208]                                 ; $6699: $fa $08 $c2
    cp b                                          ; $669c: $b8
    jr nc, jr_001_66a3                            ; $669d: $30 $04

    ld a, b                                       ; $669f: $78
    ld [$c208], a                                 ; $66a0: $ea $08 $c2

jr_001_66a3:
    inc b                                         ; $66a3: $04
    ld a, b                                       ; $66a4: $78
    cp $08                                        ; $66a5: $fe $08
    jr c, jr_001_667a                             ; $66a7: $38 $d1

    ret                                           ; $66a9: $c9


Call_001_66aa:
    ld a, [$c205]                                 ; $66aa: $fa $05 $c2
    ld b, a                                       ; $66ad: $47
    ld a, [$c206]                                 ; $66ae: $fa $06 $c2
    sub b                                         ; $66b1: $90
    srl a                                         ; $66b2: $cb $3f
    add b                                         ; $66b4: $80
    sub $03                                       ; $66b5: $d6 $03
    cpl                                           ; $66b7: $2f
    inc a                                         ; $66b8: $3c
    ld [$c205], a                                 ; $66b9: $ea $05 $c2
    ld a, [$c207]                                 ; $66bc: $fa $07 $c2
    ld b, a                                       ; $66bf: $47
    ld a, [$c208]                                 ; $66c0: $fa $08 $c2
    sub b                                         ; $66c3: $90
    srl a                                         ; $66c4: $cb $3f
    add b                                         ; $66c6: $80
    sub $03                                       ; $66c7: $d6 $03
    cpl                                           ; $66c9: $2f
    inc a                                         ; $66ca: $3c
    ld [$c207], a                                 ; $66cb: $ea $07 $c2
    ret                                           ; $66ce: $c9


Call_001_66cf:
    ld hl, $c4c0                                  ; $66cf: $21 $c0 $c4
    ld c, $00                                     ; $66d2: $0e $00

jr_001_66d4:
    ld b, $00                                     ; $66d4: $06 $00

jr_001_66d6:
    ld a, [hl+]                                   ; $66d6: $2a
    push hl                                       ; $66d7: $e5
    push bc                                       ; $66d8: $c5
    or a                                          ; $66d9: $b7
    jr z, jr_001_6728                             ; $66da: $28 $4c

    ld d, a                                       ; $66dc: $57
    ld hl, $206b                                  ; $66dd: $21 $6b $20
    call Call_000_041a                            ; $66e0: $cd $1a $04
    ld a, $0d                                     ; $66e3: $3e $0d
    rst RST_28                                    ; $66e5: $ef
    ld e, [hl]                                    ; $66e6: $5e
    ld a, $05                                     ; $66e7: $3e $05
    rst RST_28                                    ; $66e9: $ef
    ld a, [hl]                                    ; $66ea: $7e
    or a                                          ; $66eb: $b7
    jr z, jr_001_6728                             ; $66ec: $28 $3a

    ld a, [$c205]                                 ; $66ee: $fa $05 $c2
    add c                                         ; $66f1: $81
    ld c, a                                       ; $66f2: $4f
    ld a, [$c207]                                 ; $66f3: $fa $07 $c2
    add b                                         ; $66f6: $80
    ld b, a                                       ; $66f7: $47
    ld a, [$c500]                                 ; $66f8: $fa $00 $c5
    cp d                                          ; $66fb: $ba
    call z, Call_001_6737                         ; $66fc: $cc $37 $67
    ld l, c                                       ; $66ff: $69
    ld h, $00                                     ; $6700: $26 $00
    add hl, hl                                    ; $6702: $29
    add hl, hl                                    ; $6703: $29
    add hl, hl                                    ; $6704: $29
    add hl, hl                                    ; $6705: $29
    add hl, hl                                    ; $6706: $29
    add hl, hl                                    ; $6707: $29
    ld a, b                                       ; $6708: $78
    add a                                         ; $6709: $87
    add $02                                       ; $670a: $c6 $02
    rst RST_28                                    ; $670c: $ef
    ld bc, $9820                                  ; $670d: $01 $20 $98
    add hl, bc                                    ; $6710: $09
    ld a, e                                       ; $6711: $7b
    add a                                         ; $6712: $87
    add a                                         ; $6713: $87
    ld de, $6770                                  ; $6714: $11 $70 $67
    rst RST_30                                    ; $6717: $f7
    call Call_000_044b                            ; $6718: $cd $4b $04
    ld a, [hl+]                                   ; $671b: $2a
    ld [de], a                                    ; $671c: $12
    inc e                                         ; $671d: $1c
    ld a, [hl+]                                   ; $671e: $2a
    ld [de], a                                    ; $671f: $12
    ld a, $1f                                     ; $6720: $3e $1f
    rst RST_30                                    ; $6722: $f7
    ld a, [hl+]                                   ; $6723: $2a
    ld [de], a                                    ; $6724: $12
    inc e                                         ; $6725: $1c
    ld a, [hl]                                    ; $6726: $7e
    ld [de], a                                    ; $6727: $12

jr_001_6728:
    pop bc                                        ; $6728: $c1
    pop hl                                        ; $6729: $e1
    inc b                                         ; $672a: $04
    ld a, b                                       ; $672b: $78
    cp $08                                        ; $672c: $fe $08
    jr c, jr_001_66d6                             ; $672e: $38 $a6

    inc c                                         ; $6730: $0c
    ld a, c                                       ; $6731: $79
    cp $08                                        ; $6732: $fe $08
    jr c, jr_001_66d4                             ; $6734: $38 $9e

    ret                                           ; $6736: $c9


Call_001_6737:
    ld a, c                                       ; $6737: $79
    swap a                                        ; $6738: $cb $37
    add $18                                       ; $673a: $c6 $18
    ld [$da00], a                                 ; $673c: $ea $00 $da
    ld [$da04], a                                 ; $673f: $ea $04 $da
    ld a, b                                       ; $6742: $78
    swap a                                        ; $6743: $cb $37
    add $18                                       ; $6745: $c6 $18
    ld [$da01], a                                 ; $6747: $ea $01 $da
    add $08                                       ; $674a: $c6 $08
    ld [$da05], a                                 ; $674c: $ea $05 $da
    xor a                                         ; $674f: $af
    ld [$da02], a                                 ; $6750: $ea $02 $da
    add $02                                       ; $6753: $c6 $02
    ld [$da06], a                                 ; $6755: $ea $06 $da
    ld a, $10                                     ; $6758: $3e $10
    ld [$da03], a                                 ; $675a: $ea $03 $da
    ld [$da07], a                                 ; $675d: $ea $07 $da
    ret                                           ; $6760: $c9


    ld a, [$c00f]                                 ; $6761: $fa $0f $c0
    and $30                                       ; $6764: $e6 $30
    ret z                                         ; $6766: $c8

    call Call_000_30c5                            ; $6767: $cd $c5 $30
    ld a, $01                                     ; $676a: $3e $01
    ld [$c125], a                                 ; $676c: $ea $25 $c1
    ret                                           ; $676f: $c9


    ld bc, $0203                                  ; $6770: $01 $03 $02
    inc b                                         ; $6773: $04
    dec b                                         ; $6774: $05
    ld b, $02                                     ; $6775: $06 $02
    inc b                                         ; $6777: $04
    ld bc, $020b                                  ; $6778: $01 $0b $02
    inc c                                         ; $677b: $0c
    dec b                                         ; $677c: $05
    rrca                                          ; $677d: $0f
    ld [bc], a                                    ; $677e: $02
    inc c                                         ; $677f: $0c
    ld bc, $0903                                  ; $6780: $01 $03 $09
    ld a, [bc]                                    ; $6783: $0a
    dec b                                         ; $6784: $05
    ld b, $09                                     ; $6785: $06 $09
    ld a, [bc]                                    ; $6787: $0a
    ld bc, $090b                                  ; $6788: $01 $0b $09
    ld c, $05                                     ; $678b: $0e $05
    rrca                                          ; $678d: $0f
    add hl, bc                                    ; $678e: $09
    ld c, $07                                     ; $678f: $0e $07
    inc bc                                        ; $6791: $03
    ld [$1004], sp                                ; $6792: $08 $04 $10
    ld b, $08                                     ; $6795: $06 $08
    inc b                                         ; $6797: $04
    rlca                                          ; $6798: $07
    dec bc                                        ; $6799: $0b
    ld [$100c], sp                                ; $679a: $08 $0c $10
    rrca                                          ; $679d: $0f
    ld [$070c], sp                                ; $679e: $08 $0c $07
    inc bc                                        ; $67a1: $03
    dec c                                         ; $67a2: $0d
    ld a, [bc]                                    ; $67a3: $0a
    db $10                                        ; $67a4: $10
    ld b, $0d                                     ; $67a5: $06 $0d
    ld a, [bc]                                    ; $67a7: $0a
    rlca                                          ; $67a8: $07
    dec bc                                        ; $67a9: $0b
    dec c                                         ; $67aa: $0d
    ld c, $10                                     ; $67ab: $0e $10
    rrca                                          ; $67ad: $0f
    dec c                                         ; $67ae: $0d
    ld c, $cd                                     ; $67af: $0e $cd
    dec l                                         ; $67b1: $2d
    ld c, $cd                                     ; $67b2: $0e $cd
    ld h, b                                       ; $67b4: $60
    ld [bc], a                                    ; $67b5: $02
    xor a                                         ; $67b6: $af
    ld [$c151], a                                 ; $67b7: $ea $51 $c1
    ld [$c028], a                                 ; $67ba: $ea $28 $c0
    ld a, $01                                     ; $67bd: $3e $01
    ld [$c027], a                                 ; $67bf: $ea $27 $c0
    ld [$c02b], a                                 ; $67c2: $ea $2b $c0
    call Call_000_053f                            ; $67c5: $cd $3f $05
    ld a, $32                                     ; $67c8: $3e $32
    ld [$c02c], a                                 ; $67ca: $ea $2c $c0
    ld b, $e4                                     ; $67cd: $06 $e4
    ld c, $90                                     ; $67cf: $0e $90
    call Call_000_0e71                            ; $67d1: $cd $71 $0e
    call Call_000_38c5                            ; $67d4: $cd $c5 $38
    call Call_000_1c49                            ; $67d7: $cd $49 $1c
    call Call_001_67e3                            ; $67da: $cd $e3 $67
    call Call_000_2f90                            ; $67dd: $cd $90 $2f
    jp Jump_000_0e37                              ; $67e0: $c3 $37 $0e


Call_001_67e3:
jr_001_67e3:
    ld hl, $6896                                  ; $67e3: $21 $96 $68
    ld de, $da00                                  ; $67e6: $11 $00 $da
    ld bc, $0044                                  ; $67e9: $01 $44 $00
    call Call_000_0442                            ; $67ec: $cd $42 $04
    ld a, [$c02b]                                 ; $67ef: $fa $2b $c0
    add a                                         ; $67f2: $87
    add a                                         ; $67f3: $87
    add a                                         ; $67f4: $87
    ld hl, $68d2                                  ; $67f5: $21 $d2 $68
    rst RST_28                                    ; $67f8: $ef
    ld bc, $0008                                  ; $67f9: $01 $08 $00
    jp Jump_000_0442                              ; $67fc: $c3 $42 $04


    call Call_001_6804                            ; $67ff: $cd $04 $68
    jr jr_001_67e3                                ; $6802: $18 $df

Call_001_6804:
    call Call_000_3392                            ; $6804: $cd $92 $33
    ld a, [$c151]                                 ; $6807: $fa $51 $c1
    or a                                          ; $680a: $b7
    jr nz, jr_001_681f                            ; $680b: $20 $12

    ld a, [$c512]                                 ; $680d: $fa $12 $c5
    rst RST_00                                    ; $6810: $c7
    ld sp, $3168                                  ; $6811: $31 $68 $31
    ld l, b                                       ; $6814: $68
    ld sp, $3268                                  ; $6815: $31 $68 $32
    ld l, b                                       ; $6818: $68
    jr c, jr_001_6883                             ; $6819: $38 $68

    ld c, d                                       ; $681b: $4a
    ld l, b                                       ; $681c: $68
    ld h, h                                       ; $681d: $64
    ld l, b                                       ; $681e: $68

jr_001_681f:
    ld a, [$c512]                                 ; $681f: $fa $12 $c5
    rst RST_00                                    ; $6822: $c7
    ld sp, $6a68                                  ; $6823: $31 $68 $6a
    ld l, b                                       ; $6826: $68
    ld [hl], b                                    ; $6827: $70
    ld l, b                                       ; $6828: $68
    ld sp, $3168                                  ; $6829: $31 $68 $31
    ld l, b                                       ; $682c: $68
    add c                                         ; $682d: $81
    ld l, b                                       ; $682e: $68
    ld h, h                                       ; $682f: $64
    ld l, b                                       ; $6830: $68
    ret                                           ; $6831: $c9


    ld hl, $c027                                  ; $6832: $21 $27 $c0
    dec [hl]                                      ; $6835: $35
    jr jr_001_683c                                ; $6836: $18 $04

    ld hl, $c027                                  ; $6838: $21 $27 $c0
    inc [hl]                                      ; $683b: $34

jr_001_683c:
    ld hl, $6845                                  ; $683c: $21 $45 $68
    ld de, $0105                                  ; $683f: $11 $05 $01
    jp Jump_000_0506                              ; $6842: $c3 $06 $05


    ld b, c                                       ; $6845: $41
    ld bc, $0302                                  ; $6846: $01 $02 $03
    ld b, e                                       ; $6849: $43
    ld a, $59                                     ; $684a: $3e $59
    call Call_000_00d9                            ; $684c: $cd $d9 $00
    ld a, [$c02b]                                 ; $684f: $fa $2b $c0
    ld [$c151], a                                 ; $6852: $ea $51 $c1
    ld a, $02                                     ; $6855: $3e $02
    ld [$c028], a                                 ; $6857: $ea $28 $c0
    xor a                                         ; $685a: $af
    ld [$c027], a                                 ; $685b: $ea $27 $c0
    ld a, $05                                     ; $685e: $3e $05
    ld [$c02b], a                                 ; $6860: $ea $2b $c0
    ret                                           ; $6863: $c9


jr_001_6864:
    ld a, $01                                     ; $6864: $3e $01
    ld [$c151], a                                 ; $6866: $ea $51 $c1
    ret                                           ; $6869: $c9


    ld hl, $c028                                  ; $686a: $21 $28 $c0
    inc [hl]                                      ; $686d: $34
    jr jr_001_6874                                ; $686e: $18 $04

    ld hl, $c028                                  ; $6870: $21 $28 $c0
    dec [hl]                                      ; $6873: $35

jr_001_6874:
    ld hl, $687d                                  ; $6874: $21 $7d $68
    ld de, $0401                                  ; $6877: $11 $01 $04
    jp Jump_000_0506                              ; $687a: $c3 $06 $05


    add c                                         ; $687d: $81
    inc b                                         ; $687e: $04
    dec b                                         ; $687f: $05
    add d                                         ; $6880: $82
    ld a, $59                                     ; $6881: $3e $59

jr_001_6883:
    call Call_000_00d9                            ; $6883: $cd $d9 $00
    ld a, [$c02b]                                 ; $6886: $fa $2b $c0
    cp $05                                        ; $6889: $fe $05
    jr z, jr_001_6864                             ; $688b: $28 $d7

    ld a, [$c151]                                 ; $688d: $fa $51 $c1
    add $02                                       ; $6890: $c6 $02
    ld [$c151], a                                 ; $6892: $ea $51 $c1
    ret                                           ; $6895: $c9


    jr nc, jr_001_68d0                            ; $6896: $30 $38

    call nz, $3000                                ; $6898: $c4 $00 $30
    ld b, c                                       ; $689b: $41
    and [hl]                                      ; $689c: $a6
    nop                                           ; $689d: $00
    jr nc, jr_001_68ea                            ; $689e: $30 $4a

    xor $00                                       ; $68a0: $ee $00
    jr nc, jr_001_68f7                            ; $68a2: $30 $53

    call nc, Call_001_4800                        ; $68a4: $d4 $00 $48
    jr c, @-$56                                   ; $68a7: $38 $a8

    nop                                           ; $68a9: $00
    ld c, b                                       ; $68aa: $48
    ld b, c                                       ; $68ab: $41
    cp h                                          ; $68ac: $bc
    nop                                           ; $68ad: $00
    ld c, b                                       ; $68ae: $48
    ld c, d                                       ; $68af: $4a
    add [hl]                                      ; $68b0: $86
    nop                                           ; $68b1: $00
    ld c, b                                       ; $68b2: $48
    ld d, e                                       ; $68b3: $53
    adc $00                                       ; $68b4: $ce $00
    ld c, b                                       ; $68b6: $48
    ld e, h                                       ; $68b7: $5c
    adc d                                         ; $68b8: $8a
    nop                                           ; $68b9: $00
    ld c, b                                       ; $68ba: $48
    ld h, l                                       ; $68bb: $65
    add [hl]                                      ; $68bc: $86
    nop                                           ; $68bd: $00
    ld c, b                                       ; $68be: $48
    ld l, [hl]                                    ; $68bf: $6e
    cp h                                          ; $68c0: $bc
    nop                                           ; $68c1: $00
    ld c, b                                       ; $68c2: $48
    ld [hl], a                                    ; $68c3: $77
    sbc b                                         ; $68c4: $98
    nop                                           ; $68c5: $00
    ld h, b                                       ; $68c6: $60
    ld e, b                                       ; $68c7: $58
    adc $00                                       ; $68c8: $ce $00
    ld h, b                                       ; $68ca: $60
    ld h, c                                       ; $68cb: $61
    sub b                                         ; $68cc: $90
    nop                                           ; $68cd: $00
    ld h, b                                       ; $68ce: $60
    ld l, d                                       ; $68cf: $6a

jr_001_68d0:
    sub [hl]                                      ; $68d0: $96
    nop                                           ; $68d1: $00
    ld h, b                                       ; $68d2: $60
    ld [hl], e                                    ; $68d3: $73
    cp h                                          ; $68d4: $bc
    nop                                           ; $68d5: $00
    ld h, b                                       ; $68d6: $60
    ld a, h                                       ; $68d7: $7c
    sbc b                                         ; $68d8: $98
    nop                                           ; $68d9: $00
    jr nc, @+$2a                                  ; $68da: $30 $28

    nop                                           ; $68dc: $00
    nop                                           ; $68dd: $00
    jr nc, @+$32                                  ; $68de: $30 $30

    ld [bc], a                                    ; $68e0: $02
    nop                                           ; $68e1: $00
    ld c, b                                       ; $68e2: $48
    jr z, jr_001_68e5                             ; $68e3: $28 $00

jr_001_68e5:
    nop                                           ; $68e5: $00
    ld c, b                                       ; $68e6: $48
    jr nc, jr_001_68eb                            ; $68e7: $30 $02

    nop                                           ; $68e9: $00

jr_001_68ea:
    ld h, b                                       ; $68ea: $60

jr_001_68eb:
    jr z, jr_001_68ed                             ; $68eb: $28 $00

jr_001_68ed:
    nop                                           ; $68ed: $00
    ld h, b                                       ; $68ee: $60
    jr nc, jr_001_68f3                            ; $68ef: $30 $02

    nop                                           ; $68f1: $00
    add b                                         ; $68f2: $80

jr_001_68f3:
    jr z, jr_001_68f5                             ; $68f3: $28 $00

jr_001_68f5:
    nop                                           ; $68f5: $00
    add b                                         ; $68f6: $80

jr_001_68f7:
    jr nc, jr_001_68fb                            ; $68f7: $30 $02

    nop                                           ; $68f9: $00
    add b                                         ; $68fa: $80

jr_001_68fb:
    ld e, b                                       ; $68fb: $58
    nop                                           ; $68fc: $00
    nop                                           ; $68fd: $00
    add b                                         ; $68fe: $80
    ld h, b                                       ; $68ff: $60
    ld [bc], a                                    ; $6900: $02
    nop                                           ; $6901: $00
    xor a                                         ; $6902: $af
    ld [$c10e], a                                 ; $6903: $ea $0e $c1
    ld a, [$c503]                                 ; $6906: $fa $03 $c5
    ld e, a                                       ; $6909: $5f
    ld a, [$c504]                                 ; $690a: $fa $04 $c5
    ld d, a                                       ; $690d: $57
    ld a, [$c500]                                 ; $690e: $fa $00 $c5
    call Call_000_2ef1                            ; $6911: $cd $f1 $2e
    ld a, [$c241]                                 ; $6914: $fa $41 $c2
    and $7f                                       ; $6917: $e6 $7f
    cp $07                                        ; $6919: $fe $07
    jr nc, jr_001_6931                            ; $691b: $30 $14

    rst RST_00                                    ; $691d: $c7
    ld sp, $3169                                  ; $691e: $31 $69 $31
    ld l, c                                       ; $6921: $69
    inc l                                         ; $6922: $2c
    ld l, c                                       ; $6923: $69
    ld [hl-], a                                   ; $6924: $32
    ld l, c                                       ; $6925: $69
    ld c, [hl]                                    ; $6926: $4e
    ld l, c                                       ; $6927: $69
    ld d, h                                       ; $6928: $54
    ld l, c                                       ; $6929: $69
    ld sp, $3e69                                  ; $692a: $31 $69 $3e
    ld bc, $0eea                                  ; $692d: $01 $ea $0e
    pop bc                                        ; $6930: $c1

jr_001_6931:
    ret                                           ; $6931: $c9


    ld a, $03                                     ; $6932: $3e $03
    ld [$c10e], a                                 ; $6934: $ea $0e $c1
    ld a, $45                                     ; $6937: $3e $45
    call Call_000_00d9                            ; $6939: $cd $d9 $00
    ld b, $0f                                     ; $693c: $06 $0f
    ld hl, $c243                                  ; $693e: $21 $43 $c2
    rst RST_08                                    ; $6941: $cf
    ld [hl], b                                    ; $6942: $70
    ld a, [$c503]                                 ; $6943: $fa $03 $c5
    ld e, a                                       ; $6946: $5f
    ld a, [$c504]                                 ; $6947: $fa $04 $c5
    ld d, a                                       ; $694a: $57
    jp Jump_000_2ca5                              ; $694b: $c3 $a5 $2c


    ld a, $04                                     ; $694e: $3e $04
    ld [$c10e], a                                 ; $6950: $ea $0e $c1
    ret                                           ; $6953: $c9


    ld a, $02                                     ; $6954: $3e $02
    ld [$c10e], a                                 ; $6956: $ea $0e $c1
    ld a, $10                                     ; $6959: $3e $10
    ld [$c110], a                                 ; $695b: $ea $10 $c1
    ret                                           ; $695e: $c9


    ld a, [$c10e]                                 ; $695f: $fa $0e $c1
    dec a                                         ; $6962: $3d
    rst RST_00                                    ; $6963: $c7
    ld l, h                                       ; $6964: $6c
    ld l, c                                       ; $6965: $69
    halt                                          ; $6966: $76
    ld l, c                                       ; $6967: $69
    adc d                                         ; $6968: $8a
    ld l, c                                       ; $6969: $69
    adc d                                         ; $696a: $8a
    ld l, c                                       ; $696b: $69
    xor a                                         ; $696c: $af
    ld [$c10e], a                                 ; $696d: $ea $0e $c1
    ld a, $02                                     ; $6970: $3e $02
    ld [$c10f], a                                 ; $6972: $ea $0f $c1
    ret                                           ; $6975: $c9


    ld hl, $c110                                  ; $6976: $21 $10 $c1
    dec [hl]                                      ; $6979: $35
    ret nz                                        ; $697a: $c0

    ld a, $42                                     ; $697b: $3e $42
    call Call_000_00d9                            ; $697d: $cd $d9 $00
    xor a                                         ; $6980: $af
    ld [$c10e], a                                 ; $6981: $ea $0e $c1
    ld a, $01                                     ; $6984: $3e $01
    ld [$c10f], a                                 ; $6986: $ea $0f $c1
    ret                                           ; $6989: $c9


    xor a                                         ; $698a: $af
    ld [$c10e], a                                 ; $698b: $ea $0e $c1
    ld [$c10f], a                                 ; $698e: $ea $0f $c1
    ret                                           ; $6991: $c9


    ld a, [$c420]                                 ; $6992: $fa $20 $c4
    ld hl, $2047                                  ; $6995: $21 $47 $20
    call Call_000_041a                            ; $6998: $cd $1a $04
    ld de, $0000                                  ; $699b: $11 $00 $00

jr_001_699e:
    push hl                                       ; $699e: $e5

jr_001_699f:
    ld a, [hl+]                                   ; $699f: $2a
    cp $0f                                        ; $69a0: $fe $0f
    jr nz, jr_001_69a9                            ; $69a2: $20 $05

    ld a, $14                                     ; $69a4: $3e $14
    ld [$c14a], a                                 ; $69a6: $ea $4a $c1

jr_001_69a9:
    inc d                                         ; $69a9: $14
    ld a, d                                       ; $69aa: $7a
    cp $0a                                        ; $69ab: $fe $0a
    jr c, jr_001_699f                             ; $69ad: $38 $f0

    pop hl                                        ; $69af: $e1
    ld a, $20                                     ; $69b0: $3e $20
    rst RST_28                                    ; $69b2: $ef
    ld d, $00                                     ; $69b3: $16 $00
    inc e                                         ; $69b5: $1c
    ld a, e                                       ; $69b6: $7b
    cp $08                                        ; $69b7: $fe $08
    jr c, jr_001_699e                             ; $69b9: $38 $e3

    ret                                           ; $69bb: $c9


    ld a, [$c420]                                 ; $69bc: $fa $20 $c4
    ld hl, $2047                                  ; $69bf: $21 $47 $20
    call Call_000_041a                            ; $69c2: $cd $1a $04
    ld de, $0000                                  ; $69c5: $11 $00 $00

jr_001_69c8:
    push hl                                       ; $69c8: $e5

jr_001_69c9:
    ld a, [hl]                                    ; $69c9: $7e
    cp $0f                                        ; $69ca: $fe $0f
    jr nz, jr_001_69d5                            ; $69cc: $20 $07

    push hl                                       ; $69ce: $e5
    push de                                       ; $69cf: $d5
    call Call_001_69e9                            ; $69d0: $cd $e9 $69
    pop de                                        ; $69d3: $d1
    pop hl                                        ; $69d4: $e1

jr_001_69d5:
    inc l                                         ; $69d5: $2c
    inc d                                         ; $69d6: $14
    ld a, d                                       ; $69d7: $7a
    cp $0a                                        ; $69d8: $fe $0a
    jr c, jr_001_69c9                             ; $69da: $38 $ed

    pop hl                                        ; $69dc: $e1
    ld a, $20                                     ; $69dd: $3e $20
    rst RST_28                                    ; $69df: $ef
    ld d, $00                                     ; $69e0: $16 $00
    inc e                                         ; $69e2: $1c
    ld a, e                                       ; $69e3: $7b
    cp $08                                        ; $69e4: $fe $08
    jr c, jr_001_69c8                             ; $69e6: $38 $e0

    ret                                           ; $69e8: $c9


Call_001_69e9:
    push hl                                       ; $69e9: $e5
    ld a, $20                                     ; $69ea: $3e $20
    rst RST_10                                    ; $69ec: $d7
    ld b, $1e                                     ; $69ed: $06 $1e
    ld a, [hl]                                    ; $69ef: $7e
    cp $0e                                        ; $69f0: $fe $0e
    jr z, jr_001_6a02                             ; $69f2: $28 $0e

    cp $1e                                        ; $69f4: $fe $1e
    jr z, jr_001_6a02                             ; $69f6: $28 $0a

    cp $1d                                        ; $69f8: $fe $1d
    jr z, jr_001_6a02                             ; $69fa: $28 $06

    cp $23                                        ; $69fc: $fe $23
    jr z, jr_001_6a02                             ; $69fe: $28 $02

    ld b, $0e                                     ; $6a00: $06 $0e

jr_001_6a02:
    pop hl                                        ; $6a02: $e1
    ld [hl], b                                    ; $6a03: $70
    push hl                                       ; $6a04: $e5
    push de                                       ; $6a05: $d5
    call Call_000_2ca5                            ; $6a06: $cd $a5 $2c
    pop de                                        ; $6a09: $d1
    pop hl                                        ; $6a0a: $e1
    ld a, $20                                     ; $6a0b: $3e $20
    rst RST_28                                    ; $6a0d: $ef
    ld a, [hl]                                    ; $6a0e: $7e
    ld b, $1e                                     ; $6a0f: $06 $1e
    cp $0e                                        ; $6a11: $fe $0e
    jr z, jr_001_6a1c                             ; $6a13: $28 $07

    ld b, $23                                     ; $6a15: $06 $23
    cp $1d                                        ; $6a17: $fe $1d
    jr z, jr_001_6a1c                             ; $6a19: $28 $01

    ret                                           ; $6a1b: $c9


jr_001_6a1c:
    ld [hl], b                                    ; $6a1c: $70
    inc e                                         ; $6a1d: $1c
    jp Jump_000_2ca5                              ; $6a1e: $c3 $a5 $2c


Call_001_6a21:
    ld a, [$c240]                                 ; $6a21: $fa $40 $c2
    and $7f                                       ; $6a24: $e6 $7f
    call Call_000_10bb                            ; $6a26: $cd $bb $10
    bit 7, a                                      ; $6a29: $cb $7f
    jr nz, jr_001_6a4b                            ; $6a2b: $20 $1e

    ld a, $09                                     ; $6a2d: $3e $09
    ld [bc], a                                    ; $6a2f: $02
    push bc                                       ; $6a30: $c5
    push de                                       ; $6a31: $d5
    ld b, a                                       ; $6a32: $47
    call Call_000_2ca5                            ; $6a33: $cd $a5 $2c
    pop de                                        ; $6a36: $d1
    pop bc                                        ; $6a37: $c1
    ld a, $20                                     ; $6a38: $3e $20
    rst RST_38                                    ; $6a3a: $ff
    ld a, [bc]                                    ; $6a3b: $0a
    cp $80                                        ; $6a3c: $fe $80
    ret nc                                        ; $6a3e: $d0

    call Call_000_10bb                            ; $6a3f: $cd $bb $10
    and $7f                                       ; $6a42: $e6 $7f
    ret z                                         ; $6a44: $c8

    ld [bc], a                                    ; $6a45: $02
    inc e                                         ; $6a46: $1c
    ld b, a                                       ; $6a47: $47
    jp Jump_000_2ca5                              ; $6a48: $c3 $a5 $2c


jr_001_6a4b:
    ld a, $1c                                     ; $6a4b: $3e $1c
    ld [bc], a                                    ; $6a4d: $02
    ld b, a                                       ; $6a4e: $47
    jp Jump_000_2ca5                              ; $6a4f: $c3 $a5 $2c


    call Call_000_0260                            ; $6a52: $cd $60 $02
    call Call_000_1c9d                            ; $6a55: $cd $9d $1c
    call Call_001_6aad                            ; $6a58: $cd $ad $6a
    call Call_000_38c5                            ; $6a5b: $cd $c5 $38
    call Call_000_1415                            ; $6a5e: $cd $15 $14
    ld a, [$c101]                                 ; $6a61: $fa $01 $c1
    cp $03                                        ; $6a64: $fe $03
    ld a, $c0                                     ; $6a66: $3e $c0
    jr nz, jr_001_6a6c                            ; $6a68: $20 $02

    ld a, $e0                                     ; $6a6a: $3e $e0

jr_001_6a6c:
    ld [$c039], a                                 ; $6a6c: $ea $39 $c0
    xor a                                         ; $6a6f: $af
    ld [$c03a], a                                 ; $6a70: $ea $3a $c0
    ld [$c152], a                                 ; $6a73: $ea $52 $c1
    ld [$c036], a                                 ; $6a76: $ea $36 $c0
    ld a, $26                                     ; $6a79: $3e $26
    call Call_000_00d9                            ; $6a7b: $cd $d9 $00
    call Call_001_6b46                            ; $6a7e: $cd $46 $6b
    cp $03                                        ; $6a81: $fe $03
    ret nz                                        ; $6a83: $c0

    ld a, [$c102]                                 ; $6a84: $fa $02 $c1
    sub $06                                       ; $6a87: $d6 $06
    ld b, a                                       ; $6a89: $47
    ret c                                         ; $6a8a: $d8

    ld a, b                                       ; $6a8b: $78
    ld hl, $6a94                                  ; $6a8c: $21 $94 $6a
    rst RST_28                                    ; $6a8f: $ef
    ld a, [hl]                                    ; $6a90: $7e
    jp Jump_000_00d9                              ; $6a91: $c3 $d9 $00


    daa                                           ; $6a94: $27
    jr z, jr_001_6ac0                             ; $6a95: $28 $29

    ld a, [hl+]                                   ; $6a97: $2a
    dec hl                                        ; $6a98: $2b

Call_001_6a99:
    ld hl, $da68                                  ; $6a99: $21 $68 $da
    ld a, $58                                     ; $6a9c: $3e $58
    ld c, $58                                     ; $6a9e: $0e $58
    ld b, $08                                     ; $6aa0: $06 $08

jr_001_6aa2:
    ld [hl], c                                    ; $6aa2: $71
    inc hl                                        ; $6aa3: $23
    ld [hl+], a                                   ; $6aa4: $22
    add $08                                       ; $6aa5: $c6 $08
    inc hl                                        ; $6aa7: $23
    inc hl                                        ; $6aa8: $23
    dec b                                         ; $6aa9: $05
    jr nz, jr_001_6aa2                            ; $6aaa: $20 $f6

    ret                                           ; $6aac: $c9


Call_001_6aad:
    ld hl, $9800                                  ; $6aad: $21 $00 $98
    ld de, $9840                                  ; $6ab0: $11 $40 $98
    ld b, $0f                                     ; $6ab3: $06 $0f

jr_001_6ab5:
    push bc                                       ; $6ab5: $c5
    push hl                                       ; $6ab6: $e5
    ld bc, $0040                                  ; $6ab7: $01 $40 $00
    call Call_000_0442                            ; $6aba: $cd $42 $04
    pop hl                                        ; $6abd: $e1
    pop bc                                        ; $6abe: $c1
    dec b                                         ; $6abf: $05

jr_001_6ac0:
    jr nz, jr_001_6ab5                            ; $6ac0: $20 $f3

    ret                                           ; $6ac2: $c9


    ld a, [$c152]                                 ; $6ac3: $fa $52 $c1
    rst RST_00                                    ; $6ac6: $c7
    rst RST_08                                    ; $6ac7: $cf
    ld l, d                                       ; $6ac8: $6a
    ldh [rOCPS], a                                ; $6ac9: $e0 $6a
    rst RST_28                                    ; $6acb: $ef
    ld l, d                                       ; $6acc: $6a
    db $fc                                        ; $6acd: $fc
    ld l, d                                       ; $6ace: $6a
    ld hl, $c01d                                  ; $6acf: $21 $1d $c0
    dec [hl]                                      ; $6ad2: $35
    ld c, $04                                     ; $6ad3: $0e $04
    call Call_000_30fe                            ; $6ad5: $cd $fe $30
    ret c                                         ; $6ad8: $d8

    xor a                                         ; $6ad9: $af
    ld [$c1f0], a                                 ; $6ada: $ea $f0 $c1
    jp Jump_001_6b8b                              ; $6add: $c3 $8b $6b


    ld hl, $c01d                                  ; $6ae0: $21 $1d $c0
    dec [hl]                                      ; $6ae3: $35
    call Call_001_6b62                            ; $6ae4: $cd $62 $6b
    ret nz                                        ; $6ae7: $c0

    xor a                                         ; $6ae8: $af
    ld [$c036], a                                 ; $6ae9: $ea $36 $c0
    jp Jump_001_6b8b                              ; $6aec: $c3 $8b $6b


    ld hl, $c01d                                  ; $6aef: $21 $1d $c0
    dec [hl]                                      ; $6af2: $35
    ld c, $06                                     ; $6af3: $0e $06
    call Call_000_3105                            ; $6af5: $cd $05 $31
    ret c                                         ; $6af8: $d8

    jp Jump_001_6b8b                              ; $6af9: $c3 $8b $6b


    call Call_000_0e2d                            ; $6afc: $cd $2d $0e
    xor a                                         ; $6aff: $af
    ld [$c109], a                                 ; $6b00: $ea $09 $c1
    ld a, $03                                     ; $6b03: $3e $03
    call Call_000_0262                            ; $6b05: $cd $62 $02
    ld b, $e4                                     ; $6b08: $06 $e4
    ld c, $e0                                     ; $6b0a: $0e $e0
    call Call_000_0e71                            ; $6b0c: $cd $71 $0e
    call Call_000_1cbe                            ; $6b0f: $cd $be $1c
    call Call_000_1ceb                            ; $6b12: $cd $eb $1c
    call Call_000_38c5                            ; $6b15: $cd $c5 $38
    call Call_000_1d83                            ; $6b18: $cd $83 $1d
    ld de, $9845                                  ; $6b1b: $11 $45 $98
    call Call_000_14f4                            ; $6b1e: $cd $f4 $14
    ld hl, $0000                                  ; $6b21: $21 $00 $00
    call Call_000_0e42                            ; $6b24: $cd $42 $0e
    call Call_000_1427                            ; $6b27: $cd $27 $14
    ld hl, $da00                                  ; $6b2a: $21 $00 $da
    call Call_001_7075                            ; $6b2d: $cd $75 $70
    ld a, [$c101]                                 ; $6b30: $fa $01 $c1
    cp $01                                        ; $6b33: $fe $01
    jr nz, jr_001_6b3c                            ; $6b35: $20 $05

    ld a, $ff                                     ; $6b37: $3e $ff
    ld [$c1fd], a                                 ; $6b39: $ea $fd $c1

jr_001_6b3c:
    call Call_000_0e37                            ; $6b3c: $cd $37 $0e
    xor a                                         ; $6b3f: $af
    ld [$c152], a                                 ; $6b40: $ea $52 $c1
    jp Jump_000_0647                              ; $6b43: $c3 $47 $06


Call_001_6b46:
    ld a, [$c102]                                 ; $6b46: $fa $02 $c1
    ld d, a                                       ; $6b49: $57
    ld hl, $c163                                  ; $6b4a: $21 $63 $c1
    ld bc, $0004                                  ; $6b4d: $01 $04 $00

jr_001_6b50:
    ld a, [$c101]                                 ; $6b50: $fa $01 $c1
    cp c                                          ; $6b53: $b9
    jr z, jr_001_6b5c                             ; $6b54: $28 $06

    ld a, [hl]                                    ; $6b56: $7e
    dec a                                         ; $6b57: $3d
    cp d                                          ; $6b58: $ba
    jr c, jr_001_6b5c                             ; $6b59: $38 $01

    inc b                                         ; $6b5b: $04

jr_001_6b5c:
    dec hl                                        ; $6b5c: $2b
    dec c                                         ; $6b5d: $0d
    jr nz, jr_001_6b50                            ; $6b5e: $20 $f0

    ld a, b                                       ; $6b60: $78
    ret                                           ; $6b61: $c9


Call_001_6b62:
Jump_001_6b62:
    ld a, [$c039]                                 ; $6b62: $fa $39 $c0
    ld l, a                                       ; $6b65: $6f
    ld a, [$c03a]                                 ; $6b66: $fa $3a $c0
    ld h, a                                       ; $6b69: $67
    or l                                          ; $6b6a: $b5
    ret z                                         ; $6b6b: $c8

    dec hl                                        ; $6b6c: $2b
    ld a, l                                       ; $6b6d: $7d
    ld [$c039], a                                 ; $6b6e: $ea $39 $c0
    ld a, h                                       ; $6b71: $7c
    ld [$c03a], a                                 ; $6b72: $ea $3a $c0
    or l                                          ; $6b75: $b5
    ret                                           ; $6b76: $c9


Call_001_6b77:
    ld a, [$c039]                                 ; $6b77: $fa $39 $c0
    ld l, a                                       ; $6b7a: $6f
    ld a, [$c03a]                                 ; $6b7b: $fa $3a $c0
    ld h, a                                       ; $6b7e: $67
    inc hl                                        ; $6b7f: $23
    ld a, l                                       ; $6b80: $7d
    ld [$c039], a                                 ; $6b81: $ea $39 $c0
    ld a, h                                       ; $6b84: $7c
    and $7f                                       ; $6b85: $e6 $7f
    ld [$c03a], a                                 ; $6b87: $ea $3a $c0
    ret                                           ; $6b8a: $c9


Call_001_6b8b:
Jump_001_6b8b:
    ld hl, $c152                                  ; $6b8b: $21 $52 $c1
    inc [hl]                                      ; $6b8e: $34
    ret                                           ; $6b8f: $c9


Jump_001_6b90:
    ld hl, $c152                                  ; $6b90: $21 $52 $c1
    dec [hl]                                      ; $6b93: $35
    ret                                           ; $6b94: $c9


    ld a, [$c101]                                 ; $6b95: $fa $01 $c1
    dec a                                         ; $6b98: $3d
    rst RST_00                                    ; $6b99: $c7
    and d                                         ; $6b9a: $a2
    ld l, e                                       ; $6b9b: $6b
    inc hl                                        ; $6b9c: $23
    ld l, h                                       ; $6b9d: $6c
    sbc $6d                                       ; $6b9e: $de $6d
    or d                                          ; $6ba0: $b2
    ld l, [hl]                                    ; $6ba1: $6e
    ld a, [$c152]                                 ; $6ba2: $fa $52 $c1
    rst RST_00                                    ; $6ba5: $c7
    xor [hl]                                      ; $6ba6: $ae
    ld l, e                                       ; $6ba7: $6b
    push bc                                       ; $6ba8: $c5
    ld l, e                                       ; $6ba9: $6b
    ld a, [bc]                                    ; $6baa: $0a
    ld l, h                                       ; $6bab: $6c
    db $ed                                        ; $6bac: $ed
    ld l, e                                       ; $6bad: $6b

Call_001_6bae:
    call Call_000_1442                            ; $6bae: $cd $42 $14
    ld a, $80                                     ; $6bb1: $3e $80
    ld [$c1f0], a                                 ; $6bb3: $ea $f0 $c1
    ld a, $01                                     ; $6bb6: $3e $01
    ld [$c1f1], a                                 ; $6bb8: $ea $f1 $c1
    xor a                                         ; $6bbb: $af
    ld [$c1f2], a                                 ; $6bbc: $ea $f2 $c1
    ld [$c1f3], a                                 ; $6bbf: $ea $f3 $c1
    jp Jump_001_6b8b                              ; $6bc2: $c3 $8b $6b


Call_001_6bc5:
    ld a, [$c1f3]                                 ; $6bc5: $fa $f3 $c1
    sub $80                                       ; $6bc8: $d6 $80
    ld [$c1f3], a                                 ; $6bca: $ea $f3 $c1
    jr nc, jr_001_6bd7                            ; $6bcd: $30 $08

    ld hl, $da09                                  ; $6bcf: $21 $09 $da
    inc [hl]                                      ; $6bd2: $34
    ld hl, $da0d                                  ; $6bd3: $21 $0d $da
    inc [hl]                                      ; $6bd6: $34

jr_001_6bd7:
    call Call_001_6c4d                            ; $6bd7: $cd $4d $6c
    ld a, [$c152]                                 ; $6bda: $fa $52 $c1
    cp $02                                        ; $6bdd: $fe $02
    ret nz                                        ; $6bdf: $c0

    call Call_000_16b2                            ; $6be0: $cd $b2 $16
    xor a                                         ; $6be3: $af
    ld [$c1f0], a                                 ; $6be4: $ea $f0 $c1
    ld hl, $0010                                  ; $6be7: $21 $10 $00
    jp Jump_001_77cc                              ; $6bea: $c3 $cc $77


Call_001_6bed:
    call Call_001_6b62                            ; $6bed: $cd $62 $6b
    ret nz                                        ; $6bf0: $c0

    call Call_000_1430                            ; $6bf1: $cd $30 $14
    ld hl, $da0a                                  ; $6bf4: $21 $0a $da
    ld [hl], $48                                  ; $6bf7: $36 $48
    ld hl, $da0e                                  ; $6bf9: $21 $0e $da
    ld [hl], $4a                                  ; $6bfc: $36 $4a
    call Call_000_0647                            ; $6bfe: $cd $47 $06
    xor a                                         ; $6c01: $af
    ld [$c152], a                                 ; $6c02: $ea $52 $c1
    ld a, $4d                                     ; $6c05: $3e $4d
    jp Jump_000_00d9                              ; $6c07: $c3 $d9 $00


    call Call_001_6b62                            ; $6c0a: $cd $62 $6b
    ret nz                                        ; $6c0d: $c0

    ld a, $00                                     ; $6c0e: $3e $00
    call Call_000_00d9                            ; $6c10: $cd $d9 $00
    call Call_000_1566                            ; $6c13: $cd $66 $15
    ld hl, $0020                                  ; $6c16: $21 $20 $00
    call Call_001_77cc                            ; $6c19: $cd $cc $77
    xor a                                         ; $6c1c: $af
    ld [$c1fd], a                                 ; $6c1d: $ea $fd $c1
    jp Jump_001_6b8b                              ; $6c20: $c3 $8b $6b


    ld a, [$c152]                                 ; $6c23: $fa $52 $c1
    rst RST_00                                    ; $6c26: $c7
    xor [hl]                                      ; $6c27: $ae
    ld l, e                                       ; $6c28: $6b
    dec sp                                        ; $6c29: $3b
    ld l, h                                       ; $6c2a: $6c
    ld h, a                                       ; $6c2b: $67
    ld l, h                                       ; $6c2c: $6c
    and [hl]                                      ; $6c2d: $a6
    ld l, h                                       ; $6c2e: $6c
    cp a                                          ; $6c2f: $bf
    ld l, h                                       ; $6c30: $6c
    reti                                          ; $6c31: $d9


    ld l, h                                       ; $6c32: $6c
    ld a, [$176c]                                 ; $6c33: $fa $6c $17
    ld l, l                                       ; $6c36: $6d
    ld a, [bc]                                    ; $6c37: $0a
    ld l, h                                       ; $6c38: $6c
    db $ed                                        ; $6c39: $ed
    ld l, e                                       ; $6c3a: $6b
    ld a, [$c1f3]                                 ; $6c3b: $fa $f3 $c1
    sub $80                                       ; $6c3e: $d6 $80
    ld [$c1f3], a                                 ; $6c40: $ea $f3 $c1
    jr nc, jr_001_6c4d                            ; $6c43: $30 $08

    ld hl, $da09                                  ; $6c45: $21 $09 $da
    dec [hl]                                      ; $6c48: $35
    ld hl, $da0d                                  ; $6c49: $21 $0d $da
    dec [hl]                                      ; $6c4c: $35

Call_001_6c4d:
jr_001_6c4d:
    call Call_001_6d32                            ; $6c4d: $cd $32 $6d
    cp $88                                        ; $6c50: $fe $88
    jp nc, Jump_001_6b8b                          ; $6c52: $d2 $8b $6b

    cp $60                                        ; $6c55: $fe $60
    jp nz, Jump_001_6d4c                          ; $6c57: $c2 $4c $6d

    ld hl, $da0a                                  ; $6c5a: $21 $0a $da
    ld [hl], $44                                  ; $6c5d: $36 $44
    ld hl, $da0e                                  ; $6c5f: $21 $0e $da
    ld [hl], $46                                  ; $6c62: $36 $46
    jp Jump_001_6d4c                              ; $6c64: $c3 $4c $6d


    ld a, [$c128]                                 ; $6c67: $fa $28 $c1
    and $f0                                       ; $6c6a: $e6 $f0
    ld [$c1f0], a                                 ; $6c6c: $ea $f0 $c1
    jp z, Jump_001_6b8b                           ; $6c6f: $ca $8b $6b

    swap a                                        ; $6c72: $cb $37
    ld [$c1f0], a                                 ; $6c74: $ea $f0 $c1
    ld b, a                                       ; $6c77: $47
    ld a, $0a                                     ; $6c78: $3e $0a
    sub b                                         ; $6c7a: $90
    ld hl, $9920                                  ; $6c7b: $21 $20 $99
    rst RST_28                                    ; $6c7e: $ef
    ld a, l                                       ; $6c7f: $7d
    ld [$c1f1], a                                 ; $6c80: $ea $f1 $c1
    ld a, h                                       ; $6c83: $7c
    ld [$c1f2], a                                 ; $6c84: $ea $f2 $c1

Call_001_6c87:
    ld hl, $0000                                  ; $6c87: $21 $00 $00
    dec b                                         ; $6c8a: $05
    jr z, jr_001_6c94                             ; $6c8b: $28 $07

jr_001_6c8d:
    ld de, $ff80                                  ; $6c8d: $11 $80 $ff
    add hl, de                                    ; $6c90: $19
    dec b                                         ; $6c91: $05
    jr nz, jr_001_6c8d                            ; $6c92: $20 $f9

jr_001_6c94:
    ld a, l                                       ; $6c94: $7d
    ld [$c1f3], a                                 ; $6c95: $ea $f3 $c1
    ld a, h                                       ; $6c98: $7c
    ld [$c1f4], a                                 ; $6c99: $ea $f4 $c1
    xor a                                         ; $6c9c: $af
    ld [$c1f5], a                                 ; $6c9d: $ea $f5 $c1
    call Call_000_1478                            ; $6ca0: $cd $78 $14
    jp Jump_001_6b8b                              ; $6ca3: $c3 $8b $6b


    ld a, [$c1f0]                                 ; $6ca6: $fa $f0 $c1
    or a                                          ; $6ca9: $b7
    jr nz, jr_001_6cb2                            ; $6caa: $20 $06

    call Call_001_6b8b                            ; $6cac: $cd $8b $6b
    jp Jump_001_6b8b                              ; $6caf: $c3 $8b $6b


jr_001_6cb2:
    call Call_001_6d5d                            ; $6cb2: $cd $5d $6d
    call Call_001_6d77                            ; $6cb5: $cd $77 $6d
    ld a, [hl]                                    ; $6cb8: $7e
    cp $58                                        ; $6cb9: $fe $58
    ret nz                                        ; $6cbb: $c0

    jp Jump_001_6b8b                              ; $6cbc: $c3 $8b $6b


    call Call_001_6d94                            ; $6cbf: $cd $94 $6d
    ld a, [$c039]                                 ; $6cc2: $fa $39 $c0
    and $0f                                       ; $6cc5: $e6 $0f
    ret nz                                        ; $6cc7: $c0

    xor a                                         ; $6cc8: $af
    call Call_000_14a3                            ; $6cc9: $cd $a3 $14
    ld a, $60                                     ; $6ccc: $3e $60
    call Call_001_6d80                            ; $6cce: $cd $80 $6d
    ld a, [$c1f0]                                 ; $6cd1: $fa $f0 $c1
    or a                                          ; $6cd4: $b7
    ret z                                         ; $6cd5: $c8

    jp Jump_000_1478                              ; $6cd6: $c3 $78 $14


    ld a, [$c128]                                 ; $6cd9: $fa $28 $c1
    and $0f                                       ; $6cdc: $e6 $0f
    jp z, Jump_001_6b8b                           ; $6cde: $ca $8b $6b

    ld [$c1f0], a                                 ; $6ce1: $ea $f0 $c1
    ld b, a                                       ; $6ce4: $47
    ld a, $0a                                     ; $6ce5: $3e $0a
    sub b                                         ; $6ce7: $90
    ld hl, $9960                                  ; $6ce8: $21 $60 $99
    rst RST_28                                    ; $6ceb: $ef
    ld a, l                                       ; $6cec: $7d
    ld [$c1f1], a                                 ; $6ced: $ea $f1 $c1
    ld a, h                                       ; $6cf0: $7c
    ld [$c1f2], a                                 ; $6cf1: $ea $f2 $c1
    call Call_001_6c87                            ; $6cf4: $cd $87 $6c
    jp Jump_000_147d                              ; $6cf7: $c3 $7d $14


    ld a, [$c1f0]                                 ; $6cfa: $fa $f0 $c1
    and $0f                                       ; $6cfd: $e6 $0f
    jr z, jr_001_6d0b                             ; $6cff: $28 $0a

    call Call_001_6d5d                            ; $6d01: $cd $5d $6d
    ld a, [hl]                                    ; $6d04: $7e
    cp $68                                        ; $6d05: $fe $68
    ret nz                                        ; $6d07: $c0

    jp Jump_001_6b8b                              ; $6d08: $c3 $8b $6b


jr_001_6d0b:
    ld hl, $0020                                  ; $6d0b: $21 $20 $00
    call Call_001_77cc                            ; $6d0e: $cd $cc $77
    call Call_001_6b8b                            ; $6d11: $cd $8b $6b
    jp Jump_001_6b8b                              ; $6d14: $c3 $8b $6b


    call Call_001_6d94                            ; $6d17: $cd $94 $6d
    ld a, [$c039]                                 ; $6d1a: $fa $39 $c0
    and $0f                                       ; $6d1d: $e6 $0f
    ret nz                                        ; $6d1f: $c0

    ld a, $04                                     ; $6d20: $3e $04
    call Call_000_14a3                            ; $6d22: $cd $a3 $14
    ld a, $5f                                     ; $6d25: $3e $5f
    call Call_001_6d80                            ; $6d27: $cd $80 $6d
    ld a, [$c1f0]                                 ; $6d2a: $fa $f0 $c1
    or a                                          ; $6d2d: $b7
    ret z                                         ; $6d2e: $c8

    jp Jump_000_147d                              ; $6d2f: $c3 $7d $14


Call_001_6d32:
    ld a, [$c1f0]                                 ; $6d32: $fa $f0 $c1
    ld b, a                                       ; $6d35: $47
    ld a, [$c1f2]                                 ; $6d36: $fa $f2 $c1
    sub b                                         ; $6d39: $90
    ld [$c1f2], a                                 ; $6d3a: $ea $f2 $c1
    ld hl, $da08                                  ; $6d3d: $21 $08 $da
    ld a, [$c1f1]                                 ; $6d40: $fa $f1 $c1
    ld b, a                                       ; $6d43: $47
    ld a, [hl]                                    ; $6d44: $7e
    sbc b                                         ; $6d45: $98
    ld [hl], a                                    ; $6d46: $77
    ld hl, $da0c                                  ; $6d47: $21 $0c $da
    ld [hl], a                                    ; $6d4a: $77
    ret                                           ; $6d4b: $c9


Jump_001_6d4c:
    ld a, [$c1f0]                                 ; $6d4c: $fa $f0 $c1
    sub $0c                                       ; $6d4f: $d6 $0c
    ld [$c1f0], a                                 ; $6d51: $ea $f0 $c1
    ld a, [$c1f1]                                 ; $6d54: $fa $f1 $c1
    sbc $00                                       ; $6d57: $de $00
    ld [$c1f1], a                                 ; $6d59: $ea $f1 $c1
    ret                                           ; $6d5c: $c9


Call_001_6d5d:
    ld hl, $c1f3                                  ; $6d5d: $21 $f3 $c1
    ld b, [hl]                                    ; $6d60: $46
    ld hl, $c1f5                                  ; $6d61: $21 $f5 $c1
    ld a, [hl]                                    ; $6d64: $7e
    add b                                         ; $6d65: $80
    ld [hl], a                                    ; $6d66: $77
    ld hl, $c1f4                                  ; $6d67: $21 $f4 $c1
    ld b, [hl]                                    ; $6d6a: $46
    ld hl, $da11                                  ; $6d6b: $21 $11 $da
    ld a, [hl]                                    ; $6d6e: $7e
    adc b                                         ; $6d6f: $88
    ld [hl], a                                    ; $6d70: $77
    ld hl, $da15                                  ; $6d71: $21 $15 $da
    add $08                                       ; $6d74: $c6 $08
    ld [hl], a                                    ; $6d76: $77

Call_001_6d77:
    ld hl, $da10                                  ; $6d77: $21 $10 $da
    dec [hl]                                      ; $6d7a: $35
    ld hl, $da14                                  ; $6d7b: $21 $14 $da
    dec [hl]                                      ; $6d7e: $35
    ret                                           ; $6d7f: $c9


Call_001_6d80:
    call Call_000_00d9                            ; $6d80: $cd $d9 $00
    ld a, [$c1f0]                                 ; $6d83: $fa $f0 $c1
    dec a                                         ; $6d86: $3d
    ld [$c1f0], a                                 ; $6d87: $ea $f0 $c1
    ret z                                         ; $6d8a: $c8

    ld hl, $c1f4                                  ; $6d8b: $21 $f4 $c1
    inc [hl]                                      ; $6d8e: $34
    xor a                                         ; $6d8f: $af
    ld [$c1f5], a                                 ; $6d90: $ea $f5 $c1
    ret                                           ; $6d93: $c9


Call_001_6d94:
    call Call_001_6b77                            ; $6d94: $cd $77 $6b
    ld a, [$c039]                                 ; $6d97: $fa $39 $c0
    and $0f                                       ; $6d9a: $e6 $0f
    jr z, jr_001_6dc3                             ; $6d9c: $28 $25

    cp $04                                        ; $6d9e: $fe $04
    jr z, jr_001_6dab                             ; $6da0: $28 $09

    cp $08                                        ; $6da2: $fe $08
    jr z, jr_001_6db3                             ; $6da4: $28 $0d

    cp $0c                                        ; $6da6: $fe $0c
    jr z, jr_001_6dbb                             ; $6da8: $28 $11

    ret                                           ; $6daa: $c9


jr_001_6dab:
    ld bc, $0402                                  ; $6dab: $01 $02 $04
    ld de, $0020                                  ; $6dae: $11 $20 $00
    jr jr_001_6dcf                                ; $6db1: $18 $1c

jr_001_6db3:
    ld bc, $fefc                                  ; $6db3: $01 $fc $fe
    ld de, $2020                                  ; $6db6: $11 $20 $20
    jr jr_001_6dcf                                ; $6db9: $18 $14

jr_001_6dbb:
    ld bc, $0204                                  ; $6dbb: $01 $04 $02
    ld de, $0020                                  ; $6dbe: $11 $20 $00
    jr jr_001_6dcf                                ; $6dc1: $18 $0c

jr_001_6dc3:
    ld bc, $fcfe                                  ; $6dc3: $01 $fe $fc
    ld de, $0000                                  ; $6dc6: $11 $00 $00
    call Call_001_6dcf                            ; $6dc9: $cd $cf $6d
    jp Jump_001_6b90                              ; $6dcc: $c3 $90 $6b


Call_001_6dcf:
jr_001_6dcf:
    ld hl, $da12                                  ; $6dcf: $21 $12 $da
    ld a, [hl]                                    ; $6dd2: $7e
    add b                                         ; $6dd3: $80
    ld [hl+], a                                   ; $6dd4: $22
    ld [hl], d                                    ; $6dd5: $72
    ld hl, $da16                                  ; $6dd6: $21 $16 $da
    ld a, [hl]                                    ; $6dd9: $7e
    add c                                         ; $6dda: $81
    ld [hl+], a                                   ; $6ddb: $22
    ld [hl], e                                    ; $6ddc: $73
    ret                                           ; $6ddd: $c9


    ld a, [$c152]                                 ; $6dde: $fa $52 $c1
    rst RST_00                                    ; $6de1: $c7
    db $ec                                        ; $6de2: $ec
    ld l, l                                       ; $6de3: $6d
    ld [$486e], sp                                ; $6de4: $08 $6e $48
    ld l, [hl]                                    ; $6de7: $6e
    ld a, [bc]                                    ; $6de8: $0a
    ld l, h                                       ; $6de9: $6c
    db $ed                                        ; $6dea: $ed
    ld l, e                                       ; $6deb: $6b
    call Call_001_6bae                            ; $6dec: $cd $ae $6b
    ld hl, $00aa                                  ; $6def: $21 $aa $00
    ld a, [$c16c]                                 ; $6df2: $fa $6c $c1
    ld b, a                                       ; $6df5: $47
    dec b                                         ; $6df6: $05
    jr z, jr_001_6dff                             ; $6df7: $28 $06

jr_001_6df9:
    ld a, $55                                     ; $6df9: $3e $55
    rst RST_10                                    ; $6dfb: $d7
    dec b                                         ; $6dfc: $05
    jr nz, jr_001_6df9                            ; $6dfd: $20 $fa

jr_001_6dff:
    ld a, l                                       ; $6dff: $7d
    ld [$c1f4], a                                 ; $6e00: $ea $f4 $c1
    ld a, h                                       ; $6e03: $7c
    ld [$c1f5], a                                 ; $6e04: $ea $f5 $c1
    ret                                           ; $6e07: $c9


    ld hl, $c1f3                                  ; $6e08: $21 $f3 $c1
    ld a, [hl+]                                   ; $6e0b: $2a
    ld b, [hl]                                    ; $6e0c: $46
    dec hl                                        ; $6e0d: $2b
    add b                                         ; $6e0e: $80
    ld [hl+], a                                   ; $6e0f: $22
    inc hl                                        ; $6e10: $23
    ld b, [hl]                                    ; $6e11: $46
    ld hl, $da09                                  ; $6e12: $21 $09 $da
    ld a, [hl]                                    ; $6e15: $7e
    adc b                                         ; $6e16: $88
    ld [hl], a                                    ; $6e17: $77
    add $08                                       ; $6e18: $c6 $08
    ld [$da0d], a                                 ; $6e1a: $ea $0d $da
    call Call_001_6d32                            ; $6e1d: $cd $32 $6d
    cp $60                                        ; $6e20: $fe $60
    jp nz, Jump_001_6d4c                          ; $6e22: $c2 $4c $6d

    ld hl, $da0a                                  ; $6e25: $21 $0a $da
    ld [hl], $44                                  ; $6e28: $36 $44
    ld hl, $da0e                                  ; $6e2a: $21 $0e $da
    ld [hl], $46                                  ; $6e2d: $36 $46
    ld a, [$c16c]                                 ; $6e2f: $fa $6c $c1
    ld [$c1f0], a                                 ; $6e32: $ea $f0 $c1
    ld b, a                                       ; $6e35: $47
    ld a, $09                                     ; $6e36: $3e $09
    sub b                                         ; $6e38: $90
    ld hl, $9940                                  ; $6e39: $21 $40 $99
    rst RST_28                                    ; $6e3c: $ef
    ld a, l                                       ; $6e3d: $7d
    ld [$c1f1], a                                 ; $6e3e: $ea $f1 $c1
    ld a, h                                       ; $6e41: $7c
    ld [$c1f2], a                                 ; $6e42: $ea $f2 $c1
    jp Jump_001_6b8b                              ; $6e45: $c3 $8b $6b


    call Call_001_6b77                            ; $6e48: $cd $77 $6b
    ld a, [$c039]                                 ; $6e4b: $fa $39 $c0
    and $3f                                       ; $6e4e: $e6 $3f
    jr z, jr_001_6e96                             ; $6e50: $28 $44

    cp $18                                        ; $6e52: $fe $18
    jr z, jr_001_6e63                             ; $6e54: $28 $0d

    cp $20                                        ; $6e56: $fe $20
    jr z, jr_001_6e74                             ; $6e58: $28 $1a

    cp $28                                        ; $6e5a: $fe $28
    jr z, jr_001_6e74                             ; $6e5c: $28 $16

    cp $30                                        ; $6e5e: $fe $30
    jr z, jr_001_6e81                             ; $6e60: $28 $1f

    ret                                           ; $6e62: $c9


jr_001_6e63:
    call Call_000_1482                            ; $6e63: $cd $82 $14
    ld a, [$da09]                                 ; $6e66: $fa $09 $da
    sub $16                                       ; $6e69: $d6 $16
    ld [$da11], a                                 ; $6e6b: $ea $11 $da
    add $08                                       ; $6e6e: $c6 $08
    ld [$da15], a                                 ; $6e70: $ea $15 $da
    ret                                           ; $6e73: $c9


jr_001_6e74:
    ld hl, $da12                                  ; $6e74: $21 $12 $da
    ld a, [hl]                                    ; $6e77: $7e
    add $04                                       ; $6e78: $c6 $04
    ld [hl], a                                    ; $6e7a: $77
    add $02                                       ; $6e7b: $c6 $02
    ld [$da16], a                                 ; $6e7d: $ea $16 $da
    ret                                           ; $6e80: $c9


jr_001_6e81:
    xor a                                         ; $6e81: $af
    ld [$da10], a                                 ; $6e82: $ea $10 $da
    ld [$da14], a                                 ; $6e85: $ea $14 $da
    xor a                                         ; $6e88: $af
    call Call_000_14a3                            ; $6e89: $cd $a3 $14
    ld a, $61                                     ; $6e8c: $3e $61
    call Call_000_00d9                            ; $6e8e: $cd $d9 $00
    ld hl, $c1f0                                  ; $6e91: $21 $f0 $c1
    dec [hl]                                      ; $6e94: $35
    ret                                           ; $6e95: $c9


jr_001_6e96:
    ld a, [$c1f0]                                 ; $6e96: $fa $f0 $c1
    or a                                          ; $6e99: $b7
    jr z, jr_001_6ea9                             ; $6e9a: $28 $0d

    ld hl, $da09                                  ; $6e9c: $21 $09 $da
    ld a, [hl]                                    ; $6e9f: $7e
    add $10                                       ; $6ea0: $c6 $10
    ld [hl], a                                    ; $6ea2: $77
    add $08                                       ; $6ea3: $c6 $08
    ld [$da0d], a                                 ; $6ea5: $ea $0d $da
    ret                                           ; $6ea8: $c9


jr_001_6ea9:
    ld hl, $0020                                  ; $6ea9: $21 $20 $00
    call Call_001_77cc                            ; $6eac: $cd $cc $77
    jp Jump_001_6b8b                              ; $6eaf: $c3 $8b $6b


    ld a, [$c152]                                 ; $6eb2: $fa $52 $c1
    rst RST_00                                    ; $6eb5: $c7
    xor [hl]                                      ; $6eb6: $ae
    ld l, e                                       ; $6eb7: $6b
    jp nz, $e56e                                  ; $6eb8: $c2 $6e $e5

    ld l, [hl]                                    ; $6ebb: $6e
    db $fd                                        ; $6ebc: $fd
    ld l, [hl]                                    ; $6ebd: $6e
    ld a, [bc]                                    ; $6ebe: $0a
    ld l, h                                       ; $6ebf: $6c
    ld c, d                                       ; $6ec0: $4a
    ld l, a                                       ; $6ec1: $6f
    call Call_001_6bc5                            ; $6ec2: $cd $c5 $6b
    ld a, [$da0a]                                 ; $6ec5: $fa $0a $da
    cp $44                                        ; $6ec8: $fe $44
    jr nz, jr_001_6ed6                            ; $6eca: $20 $0a

    ld hl, $da0a                                  ; $6ecc: $21 $0a $da
    ld [hl], $50                                  ; $6ecf: $36 $50
    ld hl, $da0e                                  ; $6ed1: $21 $0e $da
    ld [hl], $52                                  ; $6ed4: $36 $52

jr_001_6ed6:
    ld a, [$c152]                                 ; $6ed6: $fa $52 $c1
    cp $02                                        ; $6ed9: $fe $02
    ret nz                                        ; $6edb: $c0

    ld a, [$c16f]                                 ; $6edc: $fa $6f $c1
    ld [$c1f0], a                                 ; $6edf: $ea $f0 $c1
    jp Jump_000_1533                              ; $6ee2: $c3 $33 $15


    call Call_000_1548                            ; $6ee5: $cd $48 $15
    xor a                                         ; $6ee8: $af
    ld [$c1f6], a                                 ; $6ee9: $ea $f6 $c1
    ld [$c1f7], a                                 ; $6eec: $ea $f7 $c1
    call Call_001_6f5e                            ; $6eef: $cd $5e $6f
    call Call_000_1494                            ; $6ef2: $cd $94 $14
    ld a, $6c                                     ; $6ef5: $3e $6c
    call Call_000_00d9                            ; $6ef7: $cd $d9 $00
    jp Jump_001_6b8b                              ; $6efa: $c3 $8b $6b


    ld hl, $c1f2                                  ; $6efd: $21 $f2 $c1
    ld b, [hl]                                    ; $6f00: $46
    inc hl                                        ; $6f01: $23
    ld c, [hl]                                    ; $6f02: $4e
    call Call_001_6f5e                            ; $6f03: $cd $5e $6f
    inc de                                        ; $6f06: $13
    ld hl, $c1f6                                  ; $6f07: $21 $f6 $c1
    ld a, [hl]                                    ; $6f0a: $7e
    add b                                         ; $6f0b: $80
    ld [hl], a                                    ; $6f0c: $77
    ld a, [de]                                    ; $6f0d: $1a
    bit 7, b                                      ; $6f0e: $cb $78
    jr z, jr_001_6f13                             ; $6f10: $28 $01

    dec a                                         ; $6f12: $3d

jr_001_6f13:
    adc $00                                       ; $6f13: $ce $00
    ld [de], a                                    ; $6f15: $12
    inc de                                        ; $6f16: $13
    inc de                                        ; $6f17: $13
    inc de                                        ; $6f18: $13
    inc de                                        ; $6f19: $13
    add $08                                       ; $6f1a: $c6 $08
    ld [de], a                                    ; $6f1c: $12
    dec de                                        ; $6f1d: $1b
    ld hl, $c1f7                                  ; $6f1e: $21 $f7 $c1
    ld a, [hl]                                    ; $6f21: $7e
    add c                                         ; $6f22: $81
    ld [hl], a                                    ; $6f23: $77
    ld a, [de]                                    ; $6f24: $1a
    sbc $00                                       ; $6f25: $de $00
    ld [de], a                                    ; $6f27: $12
    dec de                                        ; $6f28: $1b
    dec de                                        ; $6f29: $1b
    dec de                                        ; $6f2a: $1b
    dec de                                        ; $6f2b: $1b
    ld [de], a                                    ; $6f2c: $12
    call Call_001_6b77                            ; $6f2d: $cd $77 $6b
    call Call_001_6f6d                            ; $6f30: $cd $6d $6f
    ld hl, $c1f1                                  ; $6f33: $21 $f1 $c1
    dec [hl]                                      ; $6f36: $35
    ret nz                                        ; $6f37: $c0

    dec hl                                        ; $6f38: $2b
    dec [hl]                                      ; $6f39: $35
    jr z, jr_001_6f41                             ; $6f3a: $28 $05

    ld hl, $c152                                  ; $6f3c: $21 $52 $c1
    dec [hl]                                      ; $6f3f: $35
    ret                                           ; $6f40: $c9


jr_001_6f41:
    ld hl, $0020                                  ; $6f41: $21 $20 $00
    call Call_001_77cc                            ; $6f44: $cd $cc $77
    jp Jump_001_6b8b                              ; $6f47: $c3 $8b $6b


    call Call_001_6bed                            ; $6f4a: $cd $ed $6b
    ld a, [$da0a]                                 ; $6f4d: $fa $0a $da
    cp $48                                        ; $6f50: $fe $48
    ret nz                                        ; $6f52: $c0

    ld hl, $da0a                                  ; $6f53: $21 $0a $da
    ld [hl], $54                                  ; $6f56: $36 $54
    ld hl, $da0e                                  ; $6f58: $21 $0e $da
    ld [hl], $56                                  ; $6f5b: $36 $56
    ret                                           ; $6f5d: $c9


Call_001_6f5e:
    ld a, [$c1f0]                                 ; $6f5e: $fa $f0 $c1
    add a                                         ; $6f61: $87
    add $14                                       ; $6f62: $c6 $14
    add a                                         ; $6f64: $87
    add a                                         ; $6f65: $87
    ld hl, $da00                                  ; $6f66: $21 $00 $da
    rst RST_28                                    ; $6f69: $ef
    ld e, l                                       ; $6f6a: $5d
    ld d, h                                       ; $6f6b: $54
    ret                                           ; $6f6c: $c9


Call_001_6f6d:
    ld c, $09                                     ; $6f6d: $0e $09
    ld hl, $da5a                                  ; $6f6f: $21 $5a $da

jr_001_6f72:
    ld a, [$c039]                                 ; $6f72: $fa $39 $c0
    and $10                                       ; $6f75: $e6 $10
    srl a                                         ; $6f77: $cb $3f
    srl a                                         ; $6f79: $cb $3f
    add $60                                       ; $6f7b: $c6 $60
    ld [hl+], a                                   ; $6f7d: $22
    add $02                                       ; $6f7e: $c6 $02
    inc hl                                        ; $6f80: $23
    inc hl                                        ; $6f81: $23
    inc hl                                        ; $6f82: $23
    ld [hl+], a                                   ; $6f83: $22
    inc hl                                        ; $6f84: $23
    inc hl                                        ; $6f85: $23
    inc hl                                        ; $6f86: $23
    dec c                                         ; $6f87: $0d
    jr nz, jr_001_6f72                            ; $6f88: $20 $e8

    ret                                           ; $6f8a: $c9


    ld a, [$c101]                                 ; $6f8b: $fa $01 $c1
    dec a                                         ; $6f8e: $3d
    rst RST_00                                    ; $6f8f: $c7
    and c                                         ; $6f90: $a1
    ld l, a                                       ; $6f91: $6f
    sbc e                                         ; $6f92: $9b
    ld l, a                                       ; $6f93: $6f
    sbc e                                         ; $6f94: $9b
    ld l, a                                       ; $6f95: $6f
    sbc b                                         ; $6f96: $98
    ld l, a                                       ; $6f97: $6f
    call Call_001_6f6d                            ; $6f98: $cd $6d $6f

Call_001_6f9b:
    call Call_001_6b77                            ; $6f9b: $cd $77 $6b
    jp Jump_000_152a                              ; $6f9e: $c3 $2a $15


    ld a, [$c152]                                 ; $6fa1: $fa $52 $c1
    or a                                          ; $6fa4: $b7
    jr nz, jr_001_6fb8                            ; $6fa5: $20 $11

    call Call_001_6b77                            ; $6fa7: $cd $77 $6b
    ld a, [$c039]                                 ; $6faa: $fa $39 $c0
    and $0f                                       ; $6fad: $e6 $0f
    ret nz                                        ; $6faf: $c0

    ld [$c1fd], a                                 ; $6fb0: $ea $fd $c1
    inc a                                         ; $6fb3: $3c
    ld [$c152], a                                 ; $6fb4: $ea $52 $c1
    ret                                           ; $6fb7: $c9


jr_001_6fb8:
    call Call_001_6f9b                            ; $6fb8: $cd $9b $6f
    ld a, [$c039]                                 ; $6fbb: $fa $39 $c0
    and $7f                                       ; $6fbe: $e6 $7f
    cp $20                                        ; $6fc0: $fe $20
    jr z, jr_001_6fe0                             ; $6fc2: $28 $1c

    cp $2a                                        ; $6fc4: $fe $2a
    ret nz                                        ; $6fc6: $c0

    call Call_001_7016                            ; $6fc7: $cd $16 $70
    call Call_001_700a                            ; $6fca: $cd $0a $70
    ld a, [$c16a]                                 ; $6fcd: $fa $6a $c1
    call Call_000_03a4                            ; $6fd0: $cd $a4 $03
    ld b, a                                       ; $6fd3: $47
    ld a, [$c1f0]                                 ; $6fd4: $fa $f0 $c1
    inc a                                         ; $6fd7: $3c
    cp b                                          ; $6fd8: $b8
    jr c, jr_001_6fdc                             ; $6fd9: $38 $01

    xor a                                         ; $6fdb: $af

jr_001_6fdc:
    ld [$c1f0], a                                 ; $6fdc: $ea $f0 $c1
    ret                                           ; $6fdf: $c9


jr_001_6fe0:
    call Call_001_706b                            ; $6fe0: $cd $6b $70
    push af                                       ; $6fe3: $f5
    ld hl, $7915                                  ; $6fe4: $21 $15 $79
    rst RST_28                                    ; $6fe7: $ef
    ld a, [hl]                                    ; $6fe8: $7e
    add a                                         ; $6fe9: $87
    ld c, a                                       ; $6fea: $4f
    ld b, $00                                     ; $6feb: $06 $00
    pop af                                        ; $6fed: $f1
    call Call_000_13e8                            ; $6fee: $cd $e8 $13
    xor a                                         ; $6ff1: $af
    ld [$c420], a                                 ; $6ff2: $ea $20 $c4
    inc a                                         ; $6ff5: $3c
    ld [$c109], a                                 ; $6ff6: $ea $09 $c1
    call Call_000_14ec                            ; $6ff9: $cd $ec $14
    ld bc, $000d                                  ; $6ffc: $01 $0d $00
    ld hl, $da68                                  ; $6fff: $21 $68 $da

jr_001_7002:
    ld [hl], b                                    ; $7002: $70
    ld a, $04                                     ; $7003: $3e $04
    rst RST_28                                    ; $7005: $ef
    dec c                                         ; $7006: $0d
    jr nz, jr_001_7002                            ; $7007: $20 $f9

    ret                                           ; $7009: $c9


Call_001_700a:
    call Call_001_706b                            ; $700a: $cd $6b $70
    ld hl, $7931                                  ; $700d: $21 $31 $79
    rst RST_28                                    ; $7010: $ef
    ld a, [hl]                                    ; $7011: $7e
    dec a                                         ; $7012: $3d
    jp Jump_000_14c5                              ; $7013: $c3 $c5 $14


Call_001_7016:
    call Call_000_1454                            ; $7016: $cd $54 $14
    ld a, [$c1f0]                                 ; $7019: $fa $f0 $c1
    inc a                                         ; $701c: $3c
    call Call_000_03b7                            ; $701d: $cd $b7 $03
    ld hl, $da60                                  ; $7020: $21 $60 $da
    call Call_001_7075                            ; $7023: $cd $75 $70
    call Call_001_6a99                            ; $7026: $cd $99 $6a
    call Call_001_706b                            ; $7029: $cd $6b $70
    call Call_000_1664                            ; $702c: $cd $64 $16
    ld hl, $c5c0                                  ; $702f: $21 $c0 $c5
    ld de, $da6a                                  ; $7032: $11 $6a $da
    call Call_001_63f6                            ; $7035: $cd $f6 $63
    call Call_000_1466                            ; $7038: $cd $66 $14
    ld hl, $c5c8                                  ; $703b: $21 $c8 $c5
    ld a, [hl+]                                   ; $703e: $2a
    ld b, a                                       ; $703f: $47
    or a                                          ; $7040: $b7
    jr nz, jr_001_7046                            ; $7041: $20 $03

    ld [$da88], a                                 ; $7043: $ea $88 $da

jr_001_7046:
    add a                                         ; $7046: $87
    ld [$da8a], a                                 ; $7047: $ea $8a $da
    ld a, [hl+]                                   ; $704a: $2a
    push hl                                       ; $704b: $e5
    ld hl, $da8c                                  ; $704c: $21 $8c $da
    inc b                                         ; $704f: $04
    dec b                                         ; $7050: $05
    jr z, jr_001_7058                             ; $7051: $28 $05

    call Call_001_708b                            ; $7053: $cd $8b $70
    jr jr_001_705b                                ; $7056: $18 $03

jr_001_7058:
    call Call_001_7075                            ; $7058: $cd $75 $70

jr_001_705b:
    pop hl                                        ; $705b: $e1
    ld a, [hl]                                    ; $705c: $7e
    ld hl, $da94                                  ; $705d: $21 $94 $da
    call Call_001_708b                            ; $7060: $cd $8b $70
    ld hl, $da99                                  ; $7063: $21 $99 $da
    ld a, [hl]                                    ; $7066: $7e
    add $04                                       ; $7067: $c6 $04
    ld [hl], a                                    ; $7069: $77
    ret                                           ; $706a: $c9


Call_001_706b:
    ld hl, $d200                                  ; $706b: $21 $00 $d2
    ld a, [$c1f0]                                 ; $706e: $fa $f0 $c1
    inc a                                         ; $7071: $3c
    rst RST_28                                    ; $7072: $ef
    ld a, [hl]                                    ; $7073: $7e
    ret                                           ; $7074: $c9


Call_001_7075:
    ld b, a                                       ; $7075: $47
    and $f0                                       ; $7076: $e6 $f0
    swap a                                        ; $7078: $cb $37
    or a                                          ; $707a: $b7
    jr nz, jr_001_707e                            ; $707b: $20 $01

    ld [hl], a                                    ; $707d: $77

jr_001_707e:
    inc hl                                        ; $707e: $23
    inc hl                                        ; $707f: $23
    add a                                         ; $7080: $87
    ld [hl+], a                                   ; $7081: $22
    inc hl                                        ; $7082: $23
    inc hl                                        ; $7083: $23
    inc hl                                        ; $7084: $23
    ld a, b                                       ; $7085: $78
    and $0f                                       ; $7086: $e6 $0f
    add a                                         ; $7088: $87
    ld [hl+], a                                   ; $7089: $22
    ret                                           ; $708a: $c9


Call_001_708b:
    ld b, a                                       ; $708b: $47
    and $f0                                       ; $708c: $e6 $f0
    swap a                                        ; $708e: $cb $37
    jr jr_001_707e                                ; $7090: $18 $ec

    ld [hl+], a                                   ; $7092: $22
    ld [hl+], a                                   ; $7093: $22
    inc h                                         ; $7094: $24
    ld [hl+], a                                   ; $7095: $22
    jr nz, @+$26                                  ; $7096: $20 $24

    jr nz, @+$22                                  ; $7098: $20 $20

    ld d, h                                       ; $709a: $54
    ld d, [hl]                                    ; $709b: $56
    ld d, l                                       ; $709c: $55
    ld d, a                                       ; $709d: $57
    ld d, b                                       ; $709e: $50
    ld d, d                                       ; $709f: $52
    ld d, c                                       ; $70a0: $51
    ld d, e                                       ; $70a1: $53
    ld e, b                                       ; $70a2: $58
    ld e, d                                       ; $70a3: $5a
    ld e, c                                       ; $70a4: $59
    ld e, e                                       ; $70a5: $5b
    ld e, h                                       ; $70a6: $5c
    ld e, [hl]                                    ; $70a7: $5e
    ld e, l                                       ; $70a8: $5d
    ld e, a                                       ; $70a9: $5f
    ld h, b                                       ; $70aa: $60
    ld h, d                                       ; $70ab: $62
    ld h, c                                       ; $70ac: $61
    ld h, e                                       ; $70ad: $63
    call Call_000_0260                            ; $70ae: $cd $60 $02
    ld b, $e4                                     ; $70b1: $06 $e4
    ld c, $64                                     ; $70b3: $0e $64
    call Call_000_0e71                            ; $70b5: $cd $71 $0e
    call Call_000_1dde                            ; $70b8: $cd $de $1d
    call Call_000_38c5                            ; $70bb: $cd $c5 $38
    ret                                           ; $70be: $c9


    ld a, [$c152]                                 ; $70bf: $fa $52 $c1
    rst RST_00                                    ; $70c2: $c7
    rst RST_00                                    ; $70c3: $c7
    ld [hl], b                                    ; $70c4: $70
    ld d, $71                                     ; $70c5: $16 $71
    ld c, $06                                     ; $70c7: $0e $06
    call Call_000_3105                            ; $70c9: $cd $05 $31
    ret c                                         ; $70cc: $d8

    call Call_000_0e2d                            ; $70cd: $cd $2d $0e
    call Call_000_0260                            ; $70d0: $cd $60 $02
    xor a                                         ; $70d3: $af
    ld [$c036], a                                 ; $70d4: $ea $36 $c0
    call Call_000_38c5                            ; $70d7: $cd $c5 $38
    call Call_000_1da9                            ; $70da: $cd $a9 $1d
    call Call_000_1dd5                            ; $70dd: $cd $d5 $1d
    jr z, jr_001_70e7                             ; $70e0: $28 $05

    ld a, $70                                     ; $70e2: $3e $70
    ld [$c01f], a                                 ; $70e4: $ea $1f $c0

jr_001_70e7:
    call Call_000_156f                            ; $70e7: $cd $6f $15
    call Call_000_0e37                            ; $70ea: $cd $37 $0e
    call Call_001_6b8b                            ; $70ed: $cd $8b $6b
    ld a, $0f                                     ; $70f0: $3e $0f
    call Call_000_00d9                            ; $70f2: $cd $d9 $00
    ld a, $01                                     ; $70f5: $3e $01
    ld [$c013], a                                 ; $70f7: $ea $13 $c0
    call Call_001_6b46                            ; $70fa: $cd $46 $6b
    cp $03                                        ; $70fd: $fe $03
    ret nz                                        ; $70ff: $c0

    call Call_000_1dd5                            ; $7100: $cd $d5 $1d
    ret nz                                        ; $7103: $c0

    push af                                       ; $7104: $f5
    xor a                                         ; $7105: $af
    ld [$c013], a                                 ; $7106: $ea $13 $c0
    pop af                                        ; $7109: $f1
    ld b, $24                                     ; $710a: $06 $24
    cp $06                                        ; $710c: $fe $06
    jr z, jr_001_7112                             ; $710e: $28 $02

    ld b, $23                                     ; $7110: $06 $23

jr_001_7112:
    ld a, b                                       ; $7112: $78
    jp Jump_000_00d9                              ; $7113: $c3 $d9 $00


    ld c, $06                                     ; $7116: $0e $06
    call Call_000_30fe                            ; $7118: $cd $fe $30
    ret c                                         ; $711b: $d8

    xor a                                         ; $711c: $af
    ld [$c02b], a                                 ; $711d: $ea $2b $c0
    ld [$c039], a                                 ; $7120: $ea $39 $c0
    ld [$c03a], a                                 ; $7123: $ea $3a $c0
    jp Jump_000_0647                              ; $7126: $c3 $47 $06


    call Call_001_7139                            ; $7129: $cd $39 $71
    call Call_000_1dd5                            ; $712c: $cd $d5 $1d
    ret z                                         ; $712f: $c8

    ld a, [$c00f]                                 ; $7130: $fa $0f $c0
    and $03                                       ; $7133: $e6 $03
    ret z                                         ; $7135: $c8

    jp Jump_000_14fd                              ; $7136: $c3 $fd $14


Call_001_7139:
    call Call_001_6b77                            ; $7139: $cd $77 $6b
    ld a, [$c03a]                                 ; $713c: $fa $3a $c0
    or a                                          ; $713f: $b7
    ret nz                                        ; $7140: $c0

    ld a, [$c039]                                 ; $7141: $fa $39 $c0
    rra                                           ; $7144: $1f
    rra                                           ; $7145: $1f
    and $07                                       ; $7146: $e6 $07
    ld hl, $7092                                  ; $7148: $21 $92 $70
    rst RST_28                                    ; $714b: $ef
    ld a, [hl]                                    ; $714c: $7e
    ld [$da02], a                                 ; $714d: $ea $02 $da
    ret                                           ; $7150: $c9


    ld hl, $da04                                  ; $7151: $21 $04 $da
    ld b, $1a                                     ; $7154: $06 $1a

jr_001_7156:
    xor a                                         ; $7156: $af
    ld [hl], a                                    ; $7157: $77
    ld a, $04                                     ; $7158: $3e $04
    rst RST_28                                    ; $715a: $ef
    dec b                                         ; $715b: $05
    jr nz, jr_001_7156                            ; $715c: $20 $f8

    call Call_000_1597                            ; $715e: $cd $97 $15
    ld a, [$c101]                                 ; $7161: $fa $01 $c1
    dec a                                         ; $7164: $3d
    add a                                         ; $7165: $87
    add a                                         ; $7166: $87
    add $44                                       ; $7167: $c6 $44
    ld [$da12], a                                 ; $7169: $ea $12 $da
    add $02                                       ; $716c: $c6 $02
    ld [$da16], a                                 ; $716e: $ea $16 $da
    ld a, $70                                     ; $7171: $3e $70
    ld [$c01f], a                                 ; $7173: $ea $1f $c0
    ret                                           ; $7176: $c9


    ld a, [$c152]                                 ; $7177: $fa $52 $c1
    rst RST_00                                    ; $717a: $c7
    add e                                         ; $717b: $83
    ld [hl], c                                    ; $717c: $71
    jp z, $e171                                   ; $717d: $ca $71 $e1

    ld [hl], c                                    ; $7180: $71
    dec d                                         ; $7181: $15
    ld [hl], d                                    ; $7182: $72
    ld a, [$c00f]                                 ; $7183: $fa $0f $c0
    and $10                                       ; $7186: $e6 $10
    ret z                                         ; $7188: $c8

    call Call_000_0e2d                            ; $7189: $cd $2d $0e
    xor a                                         ; $718c: $af
    ld [$c109], a                                 ; $718d: $ea $09 $c1
    ld a, $03                                     ; $7190: $3e $03
    call Call_000_0262                            ; $7192: $cd $62 $02
    call Call_000_1e00                            ; $7195: $cd $00 $1e
    ld de, $9c05                                  ; $7198: $11 $05 $9c
    call Call_000_14f4                            ; $719b: $cd $f4 $14
    call Call_000_150b                            ; $719e: $cd $0b $15
    ld a, $90                                     ; $71a1: $3e $90
    ld [$c01f], a                                 ; $71a3: $ea $1f $c0
    call Call_001_722a                            ; $71a6: $cd $2a $72
    ld a, [$c421]                                 ; $71a9: $fa $21 $c4
    cp $03                                        ; $71ac: $fe $03
    jr nz, jr_001_71b5                            ; $71ae: $20 $05

    ld a, $68                                     ; $71b0: $3e $68
    ld [$c01f], a                                 ; $71b2: $ea $1f $c0

jr_001_71b5:
    call Call_000_38c5                            ; $71b5: $cd $c5 $38
    call Call_000_0e37                            ; $71b8: $cd $37 $0e
    ld a, $40                                     ; $71bb: $3e $40
    ld [$c039], a                                 ; $71bd: $ea $39 $c0
    xor a                                         ; $71c0: $af
    ld [$c03a], a                                 ; $71c1: $ea $3a $c0
    ld [$c036], a                                 ; $71c4: $ea $36 $c0
    jp Jump_001_6b8b                              ; $71c7: $c3 $8b $6b


    call Call_001_6b62                            ; $71ca: $cd $62 $6b
    ret nz                                        ; $71cd: $c0

    ld a, [$c101]                                 ; $71ce: $fa $01 $c1
    call Call_001_7265                            ; $71d1: $cd $65 $72
    ld a, $62                                     ; $71d4: $3e $62
    call Call_000_00d9                            ; $71d6: $cd $d9 $00
    ld a, $20                                     ; $71d9: $3e $20
    ld [$c039], a                                 ; $71db: $ea $39 $c0
    jp Jump_001_6b8b                              ; $71de: $c3 $8b $6b


    call Call_001_6b62                            ; $71e1: $cd $62 $6b
    ret nz                                        ; $71e4: $c0

    ld a, [$c421]                                 ; $71e5: $fa $21 $c4
    cp $03                                        ; $71e8: $fe $03
    jr z, jr_001_71f6                             ; $71ea: $28 $0a

    call Call_000_15a9                            ; $71ec: $cd $a9 $15
    xor a                                         ; $71ef: $af
    ld [$c02b], a                                 ; $71f0: $ea $2b $c0
    jp Jump_001_6b8b                              ; $71f3: $c3 $8b $6b


jr_001_71f6:
    ld hl, $c036                                  ; $71f6: $21 $36 $c0
    inc [hl]                                      ; $71f9: $34
    ld a, [hl]                                    ; $71fa: $7e
    and $0c                                       ; $71fb: $e6 $0c
    sla a                                         ; $71fd: $cb $27
    sla a                                         ; $71ff: $cb $27
    or $c4                                        ; $7201: $f6 $c4
    ld [$c015], a                                 ; $7203: $ea $15 $c0
    ld a, [$c00f]                                 ; $7206: $fa $0f $c0
    and $10                                       ; $7209: $e6 $10
    ret z                                         ; $720b: $c8

    xor a                                         ; $720c: $af
    ld [$c036], a                                 ; $720d: $ea $36 $c0
    ld a, $0b                                     ; $7210: $3e $0b
    jp Jump_000_06b3                              ; $7212: $c3 $b3 $06


    ld a, [$c00f]                                 ; $7215: $fa $0f $c0
    and $03                                       ; $7218: $e6 $03
    jp nz, Jump_000_14fd                          ; $721a: $c2 $fd $14

    ld a, [$c00f]                                 ; $721d: $fa $0f $c0
    and $10                                       ; $7220: $e6 $10
    ret z                                         ; $7222: $c8

    ld hl, $c009                                  ; $7223: $21 $09 $c0
    dec [hl]                                      ; $7226: $35
    jp Jump_000_09b0                              ; $7227: $c3 $b0 $09


Call_001_722a:
    ld a, [$c102]                                 ; $722a: $fa $02 $c1
    push af                                       ; $722d: $f5
    cp $0a                                        ; $722e: $fe $0a
    jr nz, jr_001_7235                            ; $7230: $20 $03

    call Call_001_725c                            ; $7232: $cd $5c $72

jr_001_7235:
    pop de                                        ; $7235: $d1
    ld a, d                                       ; $7236: $7a
    ld hl, $c163                                  ; $7237: $21 $63 $c1
    ld bc, $0004                                  ; $723a: $01 $04 $00

jr_001_723d:
    ld a, [$c101]                                 ; $723d: $fa $01 $c1
    cp c                                          ; $7240: $b9
    jr z, jr_001_7253                             ; $7241: $28 $10

    ld a, [hl]                                    ; $7243: $7e
    dec a                                         ; $7244: $3d
    cp d                                          ; $7245: $ba
    jr c, jr_001_7253                             ; $7246: $38 $0b

    push hl                                       ; $7248: $e5
    push de                                       ; $7249: $d5
    push bc                                       ; $724a: $c5
    ld a, c                                       ; $724b: $79
    call Call_001_7265                            ; $724c: $cd $65 $72
    pop bc                                        ; $724f: $c1
    pop de                                        ; $7250: $d1
    pop hl                                        ; $7251: $e1
    inc b                                         ; $7252: $04

jr_001_7253:
    dec hl                                        ; $7253: $2b
    dec c                                         ; $7254: $0d
    jr nz, jr_001_723d                            ; $7255: $20 $e6

    ld a, b                                       ; $7257: $78
    ld [$c421], a                                 ; $7258: $ea $21 $c4
    ret                                           ; $725b: $c9


Call_001_725c:
    ld de, $98e9                                  ; $725c: $11 $e9 $98
    ld bc, $70aa                                  ; $725f: $01 $aa $70
    jp Jump_000_2cef                              ; $7262: $c3 $ef $2c


Call_001_7265:
    dec a                                         ; $7265: $3d
    rst RST_00                                    ; $7266: $c7
    ld l, a                                       ; $7267: $6f
    ld [hl], d                                    ; $7268: $72
    ld [hl], a                                    ; $7269: $77
    ld [hl], d                                    ; $726a: $72
    ld a, a                                       ; $726b: $7f
    ld [hl], d                                    ; $726c: $72
    add a                                         ; $726d: $87
    ld [hl], d                                    ; $726e: $72
    ld de, $9929                                  ; $726f: $11 $29 $99
    ld bc, $709a                                  ; $7272: $01 $9a $70
    jr jr_001_728d                                ; $7275: $18 $16

    ld de, $98a9                                  ; $7277: $11 $a9 $98
    ld bc, $709e                                  ; $727a: $01 $9e $70
    jr jr_001_728d                                ; $727d: $18 $0e

    ld de, $98e7                                  ; $727f: $11 $e7 $98
    ld bc, $70a2                                  ; $7282: $01 $a2 $70
    jr jr_001_728d                                ; $7285: $18 $06

    ld de, $98eb                                  ; $7287: $11 $eb $98
    ld bc, $70a6                                  ; $728a: $01 $a6 $70

jr_001_728d:
    jp Jump_000_2cef                              ; $728d: $c3 $ef $2c


    call Call_000_38c5                            ; $7290: $cd $c5 $38
    call Call_000_1e25                            ; $7293: $cd $25 $1e
    call Call_000_15bb                            ; $7296: $cd $bb $15
    xor a                                         ; $7299: $af
    ld [$c036], a                                 ; $729a: $ea $36 $c0
    ld [$c152], a                                 ; $729d: $ea $52 $c1
    ld a, $40                                     ; $72a0: $3e $40
    ld [$c039], a                                 ; $72a2: $ea $39 $c0
    ld a, $90                                     ; $72a5: $3e $90
    ld [$c01f], a                                 ; $72a7: $ea $1f $c0
    ld a, $0a                                     ; $72aa: $3e $0a
    jp Jump_000_2082                              ; $72ac: $c3 $82 $20


    ld a, [$c152]                                 ; $72af: $fa $52 $c1
    rst RST_00                                    ; $72b2: $c7
    cp c                                          ; $72b3: $b9
    ld [hl], d                                    ; $72b4: $72
    db $db                                        ; $72b5: $db
    ld [hl], d                                    ; $72b6: $72
    dec e                                         ; $72b7: $1d
    ld [hl], e                                    ; $72b8: $73
    call Call_001_6b62                            ; $72b9: $cd $62 $6b
    jr z, jr_001_72cb                             ; $72bc: $28 $0d

    ld a, [$c102]                                 ; $72be: $fa $02 $c1
    cp $06                                        ; $72c1: $fe $06
    ret z                                         ; $72c3: $c8

    ld a, l                                       ; $72c4: $7d
    cp $20                                        ; $72c5: $fe $20
    ret nz                                        ; $72c7: $c0

    jp Jump_000_15f1                              ; $72c8: $c3 $f1 $15


jr_001_72cb:
    ld a, [$da02]                                 ; $72cb: $fa $02 $da
    add $04                                       ; $72ce: $c6 $04
    ld [$c513], a                                 ; $72d0: $ea $13 $c5
    ld a, $07                                     ; $72d3: $3e $07
    call Call_000_0262                            ; $72d5: $cd $62 $02
    jp Jump_001_6b8b                              ; $72d8: $c3 $8b $6b


    call Call_001_6b77                            ; $72db: $cd $77 $6b
    ld a, [$c039]                                 ; $72de: $fa $39 $c0
    ld b, a                                       ; $72e1: $47
    and $07                                       ; $72e2: $e6 $07
    ret nz                                        ; $72e4: $c0

    call Call_001_72ff                            ; $72e5: $cd $ff $72
    call Call_001_7308                            ; $72e8: $cd $08 $73
    ld a, [hl]                                    ; $72eb: $7e
    cp $90                                        ; $72ec: $fe $90
    jr nz, jr_001_72f5                            ; $72ee: $20 $05

    ld hl, $c03d                                  ; $72f0: $21 $3d $c0
    ld [hl], $30                                  ; $72f3: $36 $30

jr_001_72f5:
    cp $a8                                        ; $72f5: $fe $a8
    ret nz                                        ; $72f7: $c0

    xor a                                         ; $72f8: $af
    ld [$c036], a                                 ; $72f9: $ea $36 $c0
    jp Jump_001_6b8b                              ; $72fc: $c3 $8b $6b


Call_001_72ff:
    ld hl, $da00                                  ; $72ff: $21 $00 $da
    inc [hl]                                      ; $7302: $34
    ld a, $04                                     ; $7303: $3e $04
    rst RST_28                                    ; $7305: $ef
    inc [hl]                                      ; $7306: $34
    ret                                           ; $7307: $c9


Call_001_7308:
    ld a, b                                       ; $7308: $78
    and $10                                       ; $7309: $e6 $10
    srl a                                         ; $730b: $cb $3f
    srl a                                         ; $730d: $cb $3f
    ld b, a                                       ; $730f: $47
    ld a, [$c513]                                 ; $7310: $fa $13 $c5
    add b                                         ; $7313: $80
    ld [$da02], a                                 ; $7314: $ea $02 $da
    add $02                                       ; $7317: $c6 $02
    ld [$da06], a                                 ; $7319: $ea $06 $da
    ret                                           ; $731c: $c9


    ld c, $06                                     ; $731d: $0e $06
    call Call_000_3105                            ; $731f: $cd $05 $31
    ret c                                         ; $7322: $d8

    jr jr_001_7325                                ; $7323: $18 $00

jr_001_7325:
    ld a, $06                                     ; $7325: $3e $06
    call Call_000_0262                            ; $7327: $cd $62 $02
    call Call_000_0e2d                            ; $732a: $cd $2d $0e
    call Call_000_0dde                            ; $732d: $cd $de $0d
    call Call_000_1e41                            ; $7330: $cd $41 $1e
    call Call_001_6aad                            ; $7333: $cd $ad $6a
    call Call_000_16e7                            ; $7336: $cd $e7 $16
    call Call_000_15d6                            ; $7339: $cd $d6 $15
    call Call_000_0e37                            ; $733c: $cd $37 $0e
    xor a                                         ; $733f: $af
    ld [$c036], a                                 ; $7340: $ea $36 $c0
    ld [$c152], a                                 ; $7343: $ea $52 $c1
    ld [$c039], a                                 ; $7346: $ea $39 $c0
    ld [$c03a], a                                 ; $7349: $ea $3a $c0
    ld de, $c800                                  ; $734c: $11 $00 $c8
    ld hl, $c1f0                                  ; $734f: $21 $f0 $c1
    ld [hl], e                                    ; $7352: $73
    inc hl                                        ; $7353: $23
    ld [hl], d                                    ; $7354: $72
    jp Jump_000_0647                              ; $7355: $c3 $47 $06


    ld hl, $c039                                  ; $7358: $21 $39 $c0
    inc [hl]                                      ; $735b: $34
    ld a, [hl]                                    ; $735c: $7e
    ld b, a                                       ; $735d: $47
    and $07                                       ; $735e: $e6 $07
    ret nz                                        ; $7360: $c0

    push hl                                       ; $7361: $e5
    call Call_001_7308                            ; $7362: $cd $08 $73
    ld a, [$c03a]                                 ; $7365: $fa $3a $c0
    cp $06                                        ; $7368: $fe $06
    jr nc, jr_001_7371                            ; $736a: $30 $05

    call Call_001_72ff                            ; $736c: $cd $ff $72
    jr jr_001_7375                                ; $736f: $18 $04

jr_001_7371:
    ld hl, $c01d                                  ; $7371: $21 $1d $c0
    inc [hl]                                      ; $7374: $34

jr_001_7375:
    pop hl                                        ; $7375: $e1
    ld a, [hl]                                    ; $7376: $7e
    and $3f                                       ; $7377: $e6 $3f
    ret nz                                        ; $7379: $c0

    inc hl                                        ; $737a: $23
    inc [hl]                                      ; $737b: $34
    ld a, [hl]                                    ; $737c: $7e
    cp $5e                                        ; $737d: $fe $5e
    jr z, jr_001_739f                             ; $737f: $28 $1e

    cp $5c                                        ; $7381: $fe $5c
    jr nz, jr_001_738a                            ; $7383: $20 $05

    ld hl, $c03d                                  ; $7385: $21 $3d $c0
    ld [hl], $23                                  ; $7388: $36 $23

jr_001_738a:
    ld b, a                                       ; $738a: $47
    ld hl, $c1f0                                  ; $738b: $21 $f0 $c1
    rst RST_08                                    ; $738e: $cf
    ld a, [hl+]                                   ; $738f: $2a
    cp b                                          ; $7390: $b8
    ret nz                                        ; $7391: $c0

    ld a, l                                       ; $7392: $7d
    ld [$c1f0], a                                 ; $7393: $ea $f0 $c1
    ld a, h                                       ; $7396: $7c
    ld [$c1f1], a                                 ; $7397: $ea $f1 $c1
    ld hl, $c109                                  ; $739a: $21 $09 $c1
    inc [hl]                                      ; $739d: $34
    ret                                           ; $739e: $c9


jr_001_739f:
    xor a                                         ; $739f: $af
    ld [$c036], a                                 ; $73a0: $ea $36 $c0
    jp Jump_000_0647                              ; $73a3: $c3 $47 $06


    call Call_001_6b77                            ; $73a6: $cd $77 $6b
    ld a, [$c039]                                 ; $73a9: $fa $39 $c0
    ld b, a                                       ; $73ac: $47
    and $07                                       ; $73ad: $e6 $07
    ret nz                                        ; $73af: $c0

    call Call_001_72ff                            ; $73b0: $cd $ff $72
    call Call_001_7308                            ; $73b3: $cd $08 $73
    ld a, [hl]                                    ; $73b6: $7e
    cp $40                                        ; $73b7: $fe $40
    ld a, $18                                     ; $73b9: $3e $18
    jp z, Jump_000_00d9                           ; $73bb: $ca $d9 $00

    ld a, [hl]                                    ; $73be: $7e
    cp $a1                                        ; $73bf: $fe $a1
    ret nz                                        ; $73c1: $c0

    xor a                                         ; $73c2: $af
    ld [$c036], a                                 ; $73c3: $ea $36 $c0
    jp Jump_000_0647                              ; $73c6: $c3 $47 $06


    call Call_000_0260                            ; $73c9: $cd $60 $02
    xor a                                         ; $73cc: $af
    ld [$c036], a                                 ; $73cd: $ea $36 $c0
    ld [$c01d], a                                 ; $73d0: $ea $1d $c0
    call Call_000_0e6d                            ; $73d3: $cd $6d $0e
    call Call_000_38c5                            ; $73d6: $cd $c5 $38
    call Call_000_1e5c                            ; $73d9: $cd $5c $1e
    call Call_000_1603                            ; $73dc: $cd $03 $16
    ret                                           ; $73df: $c9


    call Call_001_6b62                            ; $73e0: $cd $62 $6b
    jp z, Jump_001_7418                           ; $73e3: $ca $18 $74

    ld a, [$c00f]                                 ; $73e6: $fa $0f $c0
    and $10                                       ; $73e9: $e6 $10
    jp nz, Jump_001_7418                          ; $73eb: $c2 $18 $74

    ld a, [$c039]                                 ; $73ee: $fa $39 $c0
    and $07                                       ; $73f1: $e6 $07
    ret nz                                        ; $73f3: $c0

    ld hl, $da09                                  ; $73f4: $21 $09 $da
    ld c, $06                                     ; $73f7: $0e $06
    ld a, [$c102]                                 ; $73f9: $fa $02 $c1
    cp $0a                                        ; $73fc: $fe $0a
    jr z, jr_001_7410                             ; $73fe: $28 $10

    ld hl, $da3d                                  ; $7400: $21 $3d $da
    ld c, $0a                                     ; $7403: $0e $0a
    ld a, [$c127]                                 ; $7405: $fa $27 $c1
    or a                                          ; $7408: $b7
    jr z, jr_001_7410                             ; $7409: $28 $05

    ld hl, $da41                                  ; $740b: $21 $41 $da
    ld c, $0c                                     ; $740e: $0e $0c

jr_001_7410:
    inc [hl]                                      ; $7410: $34
    ld a, $04                                     ; $7411: $3e $04
    rst RST_28                                    ; $7413: $ef
    dec c                                         ; $7414: $0d
    jr nz, jr_001_7410                            ; $7415: $20 $f9

    ret                                           ; $7417: $c9


Jump_001_7418:
    xor a                                         ; $7418: $af
    ld [$c036], a                                 ; $7419: $ea $36 $c0
    jp Jump_000_0647                              ; $741c: $c3 $47 $06


Call_001_741f:
    push hl                                       ; $741f: $e5
    call Call_001_7436                            ; $7420: $cd $36 $74
    pop hl                                        ; $7423: $e1
    ret c                                         ; $7424: $d8

    or a                                          ; $7425: $b7
    ret z                                         ; $7426: $c8

    call Call_000_0456                            ; $7427: $cd $56 $04
    ld b, $00                                     ; $742a: $06 $00

jr_001_742c:
    sub [hl]                                      ; $742c: $96
    jr c, jr_001_7433                             ; $742d: $38 $04

    inc hl                                        ; $742f: $23
    inc b                                         ; $7430: $04
    jr jr_001_742c                                ; $7431: $18 $f9

jr_001_7433:
    dec [hl]                                      ; $7433: $35
    or a                                          ; $7434: $b7
    ret                                           ; $7435: $c9


Call_001_7436:
    ld b, c                                       ; $7436: $41
    ld a, [hl+]                                   ; $7437: $2a

jr_001_7438:
    dec b                                         ; $7438: $05
    ret z                                         ; $7439: $c8

    add [hl]                                      ; $743a: $86
    ret c                                         ; $743b: $d8

    inc hl                                        ; $743c: $23
    jr jr_001_7438                                ; $743d: $18 $f9

    call Call_001_7446                            ; $743f: $cd $46 $74
    call Call_001_747b                            ; $7442: $cd $7b $74
    ret                                           ; $7445: $c9


Call_001_7446:
    xor a                                         ; $7446: $af
    ld [$c271], a                                 ; $7447: $ea $71 $c2
    ld hl, $c300                                  ; $744a: $21 $00 $c3
    ld b, $09                                     ; $744d: $06 $09

jr_001_744f:
    push bc                                       ; $744f: $c5
    push hl                                       ; $7450: $e5
    call Call_001_745d                            ; $7451: $cd $5d $74
    pop hl                                        ; $7454: $e1
    ld a, $20                                     ; $7455: $3e $20
    rst RST_28                                    ; $7457: $ef
    pop bc                                        ; $7458: $c1
    dec b                                         ; $7459: $05
    jr nz, jr_001_744f                            ; $745a: $20 $f3

    ret                                           ; $745c: $c9


Call_001_745d:
    ld a, [hl+]                                   ; $745d: $2a
    or a                                          ; $745e: $b7
    ret z                                         ; $745f: $c8

    ld [$c201], a                                 ; $7460: $ea $01 $c2
    ld a, [hl+]                                   ; $7463: $2a
    ld [$c202], a                                 ; $7464: $ea $02 $c2
    ld a, [hl]                                    ; $7467: $7e
    ld [$c203], a                                 ; $7468: $ea $03 $c2
    ld b, a                                       ; $746b: $47
    call Call_000_12eb                            ; $746c: $cd $eb $12
    cp $ff                                        ; $746f: $fe $ff
    ret z                                         ; $7471: $c8

    ld a, [$c271]                                 ; $7472: $fa $71 $c2
    inc a                                         ; $7475: $3c
    ret z                                         ; $7476: $c8

    ld [$c271], a                                 ; $7477: $ea $71 $c2
    ret                                           ; $747a: $c9


Call_001_747b:
    ld hl, $c272                                  ; $747b: $21 $72 $c2
    ld de, $c273                                  ; $747e: $11 $73 $c2
    ld bc, $0009                                  ; $7481: $01 $09 $00
    ld [hl], $ff                                  ; $7484: $36 $ff
    call Call_000_0442                            ; $7486: $cd $42 $04
    ld a, [$c271]                                 ; $7489: $fa $71 $c2
    or a                                          ; $748c: $b7
    ret z                                         ; $748d: $c8

    call Call_000_0456                            ; $748e: $cd $56 $04
    ld c, a                                       ; $7491: $4f
    ld a, [$c104]                                 ; $7492: $fa $04 $c1
    call Call_000_03a4                            ; $7495: $cd $a4 $03
    ld b, a                                       ; $7498: $47
    call Call_000_1267                            ; $7499: $cd $67 $12
    and $0f                                       ; $749c: $e6 $0f
    ret z                                         ; $749e: $c8

    ld hl, $74a5                                  ; $749f: $21 $a5 $74
    call Call_000_041a                            ; $74a2: $cd $1a $04
    ld [hl], c                                    ; $74a5: $71
    ret                                           ; $74a6: $c9


    ld [hl], d                                    ; $74a7: $72
    jp nz, $c273                                  ; $74a8: $c2 $73 $c2

    ld [hl], h                                    ; $74ab: $74
    jp nz, $c275                                  ; $74ac: $c2 $75 $c2

    halt                                          ; $74af: $76
    jp nz, $c277                                  ; $74b0: $c2 $77 $c2

    ld a, b                                       ; $74b3: $78
    jp nz, $c279                                  ; $74b4: $c2 $79 $c2

    ld a, d                                       ; $74b7: $7a
    jp nz, $c27b                                  ; $74b8: $c2 $7b $c2

    ld hl, $c300                                  ; $74bb: $21 $00 $c3
    ld b, $09                                     ; $74be: $06 $09

jr_001_74c0:
    push bc                                       ; $74c0: $c5
    push hl                                       ; $74c1: $e5
    call Call_001_74ce                            ; $74c2: $cd $ce $74
    pop hl                                        ; $74c5: $e1
    ld a, $20                                     ; $74c6: $3e $20
    rst RST_28                                    ; $74c8: $ef
    pop bc                                        ; $74c9: $c1
    dec b                                         ; $74ca: $05
    jr nz, jr_001_74c0                            ; $74cb: $20 $f3

    ret                                           ; $74cd: $c9


Call_001_74ce:
    ld a, [hl+]                                   ; $74ce: $2a
    or a                                          ; $74cf: $b7
    ret z                                         ; $74d0: $c8

    ld [$c201], a                                 ; $74d1: $ea $01 $c2
    ld a, [hl+]                                   ; $74d4: $2a
    ld [$c202], a                                 ; $74d5: $ea $02 $c2
    ld a, [hl]                                    ; $74d8: $7e
    ld [$c203], a                                 ; $74d9: $ea $03 $c2
    ld b, a                                       ; $74dc: $47
    call Call_000_12eb                            ; $74dd: $cd $eb $12
    cp $ff                                        ; $74e0: $fe $ff
    ret z                                         ; $74e2: $c8

    call Call_000_2a92                            ; $74e3: $cd $92 $2a
    call Call_000_044b                            ; $74e6: $cd $4b $04
    call Call_001_74ed                            ; $74e9: $cd $ed $74
    ret                                           ; $74ec: $c9


Call_001_74ed:
    ld a, [$c101]                                 ; $74ed: $fa $01 $c1
    dec a                                         ; $74f0: $3d
    rst RST_00                                    ; $74f1: $c7
    ld a, [$2474]                                 ; $74f2: $fa $74 $24
    ld [hl], l                                    ; $74f5: $75
    ld c, c                                       ; $74f6: $49
    ld [hl], l                                    ; $74f7: $75
    ld [hl], h                                    ; $74f8: $74
    ld [hl], l                                    ; $74f9: $75
    push hl                                       ; $74fa: $e5
    ld hl, $c270                                  ; $74fb: $21 $70 $c2
    ld a, [hl]                                    ; $74fe: $7e
    inc [hl]                                      ; $74ff: $34
    call Call_001_759c                            ; $7500: $cd $9c $75
    ld c, a                                       ; $7503: $4f
    ld a, b                                       ; $7504: $78
    or a                                          ; $7505: $b7
    jr nz, jr_001_7516                            ; $7506: $20 $0e

    ld a, c                                       ; $7508: $79
    rra                                           ; $7509: $1f
    jr nc, jr_001_7522                            ; $750a: $30 $16

    call Call_001_75a8                            ; $750c: $cd $a8 $75
    ld [$c18f], a                                 ; $750f: $ea $8f $c1
    pop de                                        ; $7512: $d1
    jp Jump_001_4f1c                              ; $7513: $c3 $1c $4f


Jump_001_7516:
jr_001_7516:
    ld hl, $7591                                  ; $7516: $21 $91 $75
    rst RST_28                                    ; $7519: $ef
    ld a, [hl]                                    ; $751a: $7e
    ld [$c18f], a                                 ; $751b: $ea $8f $c1
    pop de                                        ; $751e: $d1
    jp Jump_001_4f1c                              ; $751f: $c3 $1c $4f


Jump_001_7522:
jr_001_7522:
    pop de                                        ; $7522: $d1
    ret                                           ; $7523: $c9


    push hl                                       ; $7524: $e5
    ld hl, $c270                                  ; $7525: $21 $70 $c2
    ld a, [hl]                                    ; $7528: $7e
    inc [hl]                                      ; $7529: $34
    call Call_001_759c                            ; $752a: $cd $9c $75
    ld c, a                                       ; $752d: $4f
    ld a, b                                       ; $752e: $78
    or a                                          ; $752f: $b7
    jr nz, jr_001_7516                            ; $7530: $20 $e4

    ld a, c                                       ; $7532: $79
    rra                                           ; $7533: $1f
    jr nc, jr_001_7540                            ; $7534: $30 $0a

    call Call_001_75a8                            ; $7536: $cd $a8 $75
    ld [$c18f], a                                 ; $7539: $ea $8f $c1
    pop de                                        ; $753c: $d1
    jp Jump_001_4f1c                              ; $753d: $c3 $1c $4f


jr_001_7540:
    ld a, $10                                     ; $7540: $3e $10
    ld [$c18f], a                                 ; $7542: $ea $8f $c1
    pop de                                        ; $7545: $d1
    jp Jump_001_4f24                              ; $7546: $c3 $24 $4f


    push hl                                       ; $7549: $e5
    ld hl, $c270                                  ; $754a: $21 $70 $c2
    ld a, [hl]                                    ; $754d: $7e
    inc [hl]                                      ; $754e: $34
    ld c, a                                       ; $754f: $4f
    call Call_001_759c                            ; $7550: $cd $9c $75
    ld a, b                                       ; $7553: $78
    or a                                          ; $7554: $b7
    jr nz, jr_001_7565                            ; $7555: $20 $0e

    ld a, c                                       ; $7557: $79
    rra                                           ; $7558: $1f
    jr nc, jr_001_7522                            ; $7559: $30 $c7

    call Call_001_75a8                            ; $755b: $cd $a8 $75
    ld [$c18f], a                                 ; $755e: $ea $8f $c1
    pop de                                        ; $7561: $d1
    jp Jump_001_4f1c                              ; $7562: $c3 $1c $4f


jr_001_7565:
    cp $01                                        ; $7565: $fe $01
    jr nz, jr_001_7516                            ; $7567: $20 $ad

    ld a, [$c103]                                 ; $7569: $fa $03 $c1
    cp $02                                        ; $756c: $fe $02
    jr nc, jr_001_7522                            ; $756e: $30 $b2

    ld a, $01                                     ; $7570: $3e $01
    jr jr_001_7516                                ; $7572: $18 $a2

    push hl                                       ; $7574: $e5
    ld hl, $c270                                  ; $7575: $21 $70 $c2
    ld a, [hl]                                    ; $7578: $7e
    inc [hl]                                      ; $7579: $34
    ld c, a                                       ; $757a: $4f
    call Call_001_759c                            ; $757b: $cd $9c $75
    ld a, b                                       ; $757e: $78
    or a                                          ; $757f: $b7
    jp nz, Jump_001_7516                          ; $7580: $c2 $16 $75

    ld a, c                                       ; $7583: $79
    rra                                           ; $7584: $1f
    jp nc, Jump_001_7522                          ; $7585: $d2 $22 $75

    call Call_001_75a8                            ; $7588: $cd $a8 $75
    ld [$c18f], a                                 ; $758b: $ea $8f $c1
    pop de                                        ; $758e: $d1
    jp Jump_001_4f1c                              ; $758f: $c3 $1c $4f


    rlca                                          ; $7592: $07
    jr @+$1b                                      ; $7593: $18 $19

    ld a, [de]                                    ; $7595: $1a
    dec de                                        ; $7596: $1b
    inc e                                         ; $7597: $1c
    dec e                                         ; $7598: $1d
    ld e, $1f                                     ; $7599: $1e $1f
    inc d                                         ; $759b: $14

Call_001_759c:
    ld b, $0a                                     ; $759c: $06 $0a
    ld hl, $c27b                                  ; $759e: $21 $7b $c2

jr_001_75a1:
    cp [hl]                                       ; $75a1: $be
    ret z                                         ; $75a2: $c8

    dec hl                                        ; $75a3: $2b
    dec b                                         ; $75a4: $05
    jr nz, jr_001_75a1                            ; $75a5: $20 $fa

    ret                                           ; $75a7: $c9


Call_001_75a8:
jr_001_75a8:
    ld c, $20                                     ; $75a8: $0e $20
    ld hl, $c190                                  ; $75aa: $21 $90 $c1
    call Call_001_741f                            ; $75ad: $cd $1f $74
    jr z, jr_001_75b6                             ; $75b0: $28 $04

    jr c, jr_001_75b6                             ; $75b2: $38 $02

    ld a, b                                       ; $75b4: $78
    ret                                           ; $75b5: $c9


jr_001_75b6:
    call Call_000_1248                            ; $75b6: $cd $48 $12
    jr jr_001_75a8                                ; $75b9: $18 $ed

Call_001_75bb:
    ld a, [$c18e]                                 ; $75bb: $fa $8e $c1
    and $07                                       ; $75be: $e6 $07
    jr z, jr_001_75cd                             ; $75c0: $28 $0b

    ld a, [$c224]                                 ; $75c2: $fa $24 $c2
    ld hl, $7931                                  ; $75c5: $21 $31 $79
    rst RST_28                                    ; $75c8: $ef
    ld a, [hl]                                    ; $75c9: $7e
    cp $04                                        ; $75ca: $fe $04
    ret nz                                        ; $75cc: $c0

jr_001_75cd:
    call Call_000_10e2                            ; $75cd: $cd $e2 $10
    ld [de], a                                    ; $75d0: $12
    or a                                          ; $75d1: $b7
    ret nz                                        ; $75d2: $c0

    ld a, $07                                     ; $75d3: $3e $07
    ld [$c18e], a                                 ; $75d5: $ea $8e $c1
    ret                                           ; $75d8: $c9


Call_001_75d9:
    ld hl, $d500                                  ; $75d9: $21 $00 $d5
    ld b, $80                                     ; $75dc: $06 $80

jr_001_75de:
    ld a, [hl+]                                   ; $75de: $2a
    and $7f                                       ; $75df: $e6 $7f
    cp c                                          ; $75e1: $b9
    ret z                                         ; $75e2: $c8

    dec b                                         ; $75e3: $05
    jr nz, jr_001_75de                            ; $75e4: $20 $f8

    inc b                                         ; $75e6: $04
    ret                                           ; $75e7: $c9


    ld b, $09                                     ; $75e8: $06 $09

jr_001_75ea:
    ld a, [$c503]                                 ; $75ea: $fa $03 $c5
    ld e, a                                       ; $75ed: $5f
    ld a, [$c504]                                 ; $75ee: $fa $04 $c5
    ld d, a                                       ; $75f1: $57
    push bc                                       ; $75f2: $c5
    ld a, b                                       ; $75f3: $78
    ld hl, $7676                                  ; $75f4: $21 $76 $76
    call Call_000_041a                            ; $75f7: $cd $1a $04
    call Call_000_3e10                            ; $75fa: $cd $10 $3e
    call c, Call_001_7605                         ; $75fd: $dc $05 $76
    pop bc                                        ; $7600: $c1
    dec b                                         ; $7601: $05
    jr nz, jr_001_75ea                            ; $7602: $20 $e6

    ret                                           ; $7604: $c9


Call_001_7605:
    ld a, [$c420]                                 ; $7605: $fa $20 $c4
    call Call_000_2dfe                            ; $7608: $cd $fe $2d
    call Call_000_0450                            ; $760b: $cd $50 $04
    ld a, [hl]                                    ; $760e: $7e
    call Call_000_295d                            ; $760f: $cd $5d $29
    bit 0, c                                      ; $7612: $cb $41
    ret z                                         ; $7614: $c8

    res 0, c                                      ; $7615: $cb $81

jr_001_7617:
    rlc c                                         ; $7617: $cb $01
    dec b                                         ; $7619: $05
    jr nz, jr_001_7617                            ; $761a: $20 $fb

    ld [hl], c                                    ; $761c: $71
    ret                                           ; $761d: $c9


Call_001_761e:
    ld b, $09                                     ; $761e: $06 $09

jr_001_7620:
    ld a, [$c503]                                 ; $7620: $fa $03 $c5
    ld e, a                                       ; $7623: $5f
    ld a, [$c504]                                 ; $7624: $fa $04 $c5
    ld d, a                                       ; $7627: $57
    push bc                                       ; $7628: $c5
    ld a, b                                       ; $7629: $78
    ld hl, $7676                                  ; $762a: $21 $76 $76
    call Call_000_041a                            ; $762d: $cd $1a $04
    call Call_000_3e10                            ; $7630: $cd $10 $3e
    call c, Call_001_763b                         ; $7633: $dc $3b $76
    pop bc                                        ; $7636: $c1
    dec b                                         ; $7637: $05
    jr nz, jr_001_7620                            ; $7638: $20 $e6

    ret                                           ; $763a: $c9


Call_001_763b:
    ld a, [$c420]                                 ; $763b: $fa $20 $c4
    call Call_000_2dfe                            ; $763e: $cd $fe $2d
    call Call_000_0450                            ; $7641: $cd $50 $04
    ld a, [hl]                                    ; $7644: $7e
    call Call_000_295d                            ; $7645: $cd $5d $29
    bit 0, c                                      ; $7648: $cb $41
    ret z                                         ; $764a: $c8

    res 0, c                                      ; $764b: $cb $81

jr_001_764d:
    rlc c                                         ; $764d: $cb $01
    dec b                                         ; $764f: $05
    jr nz, jr_001_764d                            ; $7650: $20 $fb

    ld [hl], c                                    ; $7652: $71
    ld b, a                                       ; $7653: $47
    cp $80                                        ; $7654: $fe $80
    jp c, Jump_000_2ca5                           ; $7656: $da $a5 $2c

    and $7f                                       ; $7659: $e6 $7f
    ld l, a                                       ; $765b: $6f
    ld h, $d5                                     ; $765c: $26 $d5
    ld a, [hl]                                    ; $765e: $7e
    bit 7, a                                      ; $765f: $cb $7f
    jr z, jr_001_7664                             ; $7661: $28 $01

    xor a                                         ; $7663: $af

jr_001_7664:
    ld bc, $2d6b                                  ; $7664: $01 $6b $2d
    rst RST_38                                    ; $7667: $ff
    ld a, [bc]                                    ; $7668: $0a
    swap a                                        ; $7669: $cb $37
    and $0f                                       ; $766b: $e6 $0f
    ld b, a                                       ; $766d: $47
    ld hl, $6688                                  ; $766e: $21 $88 $66
    call Call_000_2cb1                            ; $7671: $cd $b1 $2c
    ld a, $ff                                     ; $7674: $3e $ff
    or a                                          ; $7676: $b7
    ret                                           ; $7677: $c9


    rst RST_38                                    ; $7678: $ff
    rst RST_38                                    ; $7679: $ff
    rst RST_38                                    ; $767a: $ff
    nop                                           ; $767b: $00
    rst RST_38                                    ; $767c: $ff
    ld bc, $ff00                                  ; $767d: $01 $00 $ff
    nop                                           ; $7680: $00
    nop                                           ; $7681: $00
    nop                                           ; $7682: $00
    ld bc, $ff01                                  ; $7683: $01 $01 $ff
    ld bc, $0100                                  ; $7686: $01 $00 $01
    ld bc, $20fa                                  ; $7689: $01 $fa $20
    call nz, $fecd                                ; $768c: $c4 $cd $fe
    dec l                                         ; $768f: $2d
    call Call_000_0450                            ; $7690: $cd $50 $04
    ld a, [hl]                                    ; $7693: $7e
    call Call_000_295d                            ; $7694: $cd $5d $29
    bit 0, c                                      ; $7697: $cb $41
    ret nz                                        ; $7699: $c0

    set 0, c                                      ; $769a: $cb $c1

jr_001_769c:
    rlc c                                         ; $769c: $cb $01
    dec b                                         ; $769e: $05
    jr nz, jr_001_769c                            ; $769f: $20 $fb

    ld [hl], c                                    ; $76a1: $71
    ld b, $21                                     ; $76a2: $06 $21
    call Call_000_2ca5                            ; $76a4: $cd $a5 $2c
    ld a, $ff                                     ; $76a7: $3e $ff
    or a                                          ; $76a9: $b7
    ret                                           ; $76aa: $c9


Call_001_76ab:
    ld a, [$c420]                                 ; $76ab: $fa $20 $c4
    ld hl, $2047                                  ; $76ae: $21 $47 $20
    call Call_000_041a                            ; $76b1: $cd $1a $04
    ld c, $08                                     ; $76b4: $0e $08

jr_001_76b6:
    ld b, $0a                                     ; $76b6: $06 $0a

jr_001_76b8:
    ld a, [hl]                                    ; $76b8: $7e
    push hl                                       ; $76b9: $e5
    push bc                                       ; $76ba: $c5
    call Call_000_295d                            ; $76bb: $cd $5d $29
    bit 0, c                                      ; $76be: $cb $41
    pop bc                                        ; $76c0: $c1
    pop hl                                        ; $76c1: $e1
    ret nz                                        ; $76c2: $c0

    inc hl                                        ; $76c3: $23
    dec b                                         ; $76c4: $05
    jr nz, jr_001_76b8                            ; $76c5: $20 $f1

    ld a, $16                                     ; $76c7: $3e $16
    rst RST_28                                    ; $76c9: $ef
    dec c                                         ; $76ca: $0d
    jr nz, jr_001_76b6                            ; $76cb: $20 $e9

    ret                                           ; $76cd: $c9


    call Call_000_0e2d                            ; $76ce: $cd $2d $0e
    call Call_000_0260                            ; $76d1: $cd $60 $02
    xor a                                         ; $76d4: $af
    ld [$c03b], a                                 ; $76d5: $ea $3b $c0
    ld [$c03c], a                                 ; $76d8: $ea $3c $c0
    ld [$c036], a                                 ; $76db: $ea $36 $c0
    call Call_000_0dde                            ; $76de: $cd $de $0d
    call Call_000_2f90                            ; $76e1: $cd $90 $2f
    call Call_000_1a31                            ; $76e4: $cd $31 $1a
    ld bc, $0000                                  ; $76e7: $01 $00 $00
    call Call_000_0e71                            ; $76ea: $cd $71 $0e
    jp Jump_000_0e37                              ; $76ed: $c3 $37 $0e


Call_001_76f0:
    call Call_000_0e2d                            ; $76f0: $cd $2d $0e
    call Call_000_0e01                            ; $76f3: $cd $01 $0e
    call Call_000_38c5                            ; $76f6: $cd $c5 $38
    call Call_000_1a52                            ; $76f9: $cd $52 $1a
    jp Jump_000_0e37                              ; $76fc: $c3 $37 $0e


Call_001_76ff:
    call Call_000_0e2d                            ; $76ff: $cd $2d $0e
    call Call_000_0e01                            ; $7702: $cd $01 $0e
    call Call_000_38c5                            ; $7705: $cd $c5 $38
    call Call_000_1a6a                            ; $7708: $cd $6a $1a
    jp Jump_000_0e37                              ; $770b: $c3 $37 $0e


Call_001_770e:
    call Call_000_0e2d                            ; $770e: $cd $2d $0e
    call Call_000_0e01                            ; $7711: $cd $01 $0e
    call Call_000_38c5                            ; $7714: $cd $c5 $38
    call Call_000_1a82                            ; $7717: $cd $82 $1a
    jp Jump_000_0e37                              ; $771a: $c3 $37 $0e


    ld a, [$c03c]                                 ; $771d: $fa $3c $c0
    rst RST_00                                    ; $7720: $c7
    jr nc, jr_001_779a                            ; $7721: $30 $77

    dec [hl]                                      ; $7723: $35
    ld [hl], a                                    ; $7724: $77
    ld b, c                                       ; $7725: $41
    ld [hl], a                                    ; $7726: $77
    ld c, l                                       ; $7727: $4d
    ld [hl], a                                    ; $7728: $77
    ld h, d                                       ; $7729: $62
    ld [hl], a                                    ; $772a: $77

jr_001_772b:
    ld hl, $c03c                                  ; $772b: $21 $3c $c0
    inc [hl]                                      ; $772e: $34
    ret                                           ; $772f: $c9


    call Call_001_77c5                            ; $7730: $cd $c5 $77
    jr jr_001_772b                                ; $7733: $18 $f6

    call Call_001_776c                            ; $7735: $cd $6c $77
    ret nz                                        ; $7738: $c0

    call Call_001_76f0                            ; $7739: $cd $f0 $76
    call Call_001_77c5                            ; $773c: $cd $c5 $77
    jr jr_001_772b                                ; $773f: $18 $ea

    call Call_001_776c                            ; $7741: $cd $6c $77
    ret nz                                        ; $7744: $c0

    call Call_001_76ff                            ; $7745: $cd $ff $76
    call Call_001_77c5                            ; $7748: $cd $c5 $77
    jr jr_001_772b                                ; $774b: $18 $de

    call Call_001_776c                            ; $774d: $cd $6c $77
    ret nz                                        ; $7750: $c0

    call Call_001_770e                            ; $7751: $cd $0e $77
    call Call_001_77c5                            ; $7754: $cd $c5 $77
    ld hl, $c1f0                                  ; $7757: $21 $f0 $c1
    ld a, $b0                                     ; $775a: $3e $b0
    ld [hl+], a                                   ; $775c: $22
    ld a, $01                                     ; $775d: $3e $01
    ld [hl], a                                    ; $775f: $77
    jr jr_001_772b                                ; $7760: $18 $c9

    call Call_001_776c                            ; $7762: $cd $6c $77
    ret nz                                        ; $7765: $c0

    ld a, $01                                     ; $7766: $3e $01
    ld [$c03b], a                                 ; $7768: $ea $3b $c0
    ret                                           ; $776b: $c9


Call_001_776c:
    ld hl, $c039                                  ; $776c: $21 $39 $c0
    rst RST_08                                    ; $776f: $cf
    ld de, $0178                                  ; $7770: $11 $78 $01
    call Call_000_0332                            ; $7773: $cd $32 $03
    jr nz, jr_001_7782                            ; $7776: $20 $0a

    call Call_001_77d5                            ; $7778: $cd $d5 $77
    ret c                                         ; $777b: $d8

    xor a                                         ; $777c: $af
    ld [$c036], a                                 ; $777d: $ea $36 $c0
    jr jr_001_77c0                                ; $7780: $18 $3e

jr_001_7782:
    ld de, $0160                                  ; $7782: $11 $60 $01
    call Call_000_0332                            ; $7785: $cd $32 $03
    jr nz, jr_001_7794                            ; $7788: $20 $0a

    call Call_001_77d9                            ; $778a: $cd $d9 $77
    ret c                                         ; $778d: $d8

    xor a                                         ; $778e: $af
    ld [$c036], a                                 ; $778f: $ea $36 $c0
    jr jr_001_77c0                                ; $7792: $18 $2c

jr_001_7794:
    ld de, $0018                                  ; $7794: $11 $18 $00
    call Call_000_0332                            ; $7797: $cd $32 $03

jr_001_779a:
    jr nz, jr_001_77a0                            ; $779a: $20 $04

    call Call_001_77e2                            ; $779c: $cd $e2 $77
    ret c                                         ; $779f: $d8

jr_001_77a0:
    ld a, [$c03c]                                 ; $77a0: $fa $3c $c0
    cp $04                                        ; $77a3: $fe $04
    jp nz, Jump_001_6b62                          ; $77a5: $c2 $62 $6b

    ld de, $00f0                                  ; $77a8: $11 $f0 $00
    call Call_000_0332                            ; $77ab: $cd $32 $03
    jp nz, Jump_001_6b62                          ; $77ae: $c2 $62 $6b

    ld hl, $c1f0                                  ; $77b1: $21 $f0 $c1
    rst RST_08                                    ; $77b4: $cf
    dec hl                                        ; $77b5: $2b
    ld a, l                                       ; $77b6: $7d
    ld [$c1f0], a                                 ; $77b7: $ea $f0 $c1
    ld a, h                                       ; $77ba: $7c
    ld [$c1f1], a                                 ; $77bb: $ea $f1 $c1
    or l                                          ; $77be: $b5
    ret nz                                        ; $77bf: $c0

jr_001_77c0:
    ld hl, $c039                                  ; $77c0: $21 $39 $c0
    dec [hl]                                      ; $77c3: $35
    ret                                           ; $77c4: $c9


Call_001_77c5:
    xor a                                         ; $77c5: $af
    ld [$c036], a                                 ; $77c6: $ea $36 $c0
    ld hl, $0178                                  ; $77c9: $21 $78 $01

Call_001_77cc:
Jump_001_77cc:
    ld a, l                                       ; $77cc: $7d
    ld [$c039], a                                 ; $77cd: $ea $39 $c0
    ld a, h                                       ; $77d0: $7c
    ld [$c03a], a                                 ; $77d1: $ea $3a $c0
    ret                                           ; $77d4: $c9


Call_001_77d5:
    ld b, $01                                     ; $77d5: $06 $01
    jr jr_001_77db                                ; $77d7: $18 $02

Call_001_77d9:
    ld b, $02                                     ; $77d9: $06 $02

jr_001_77db:
    ld hl, $780c                                  ; $77db: $21 $0c $78
    ld c, $04                                     ; $77de: $0e $04
    jr jr_001_77e9                                ; $77e0: $18 $07

Call_001_77e2:
    ld b, $00                                     ; $77e2: $06 $00
    ld hl, $780f                                  ; $77e4: $21 $0f $78
    ld c, $04                                     ; $77e7: $0e $04

jr_001_77e9:
    ld a, [$c036]                                 ; $77e9: $fa $36 $c0
    cp $03                                        ; $77ec: $fe $03
    ret nc                                        ; $77ee: $d0

    rst RST_28                                    ; $77ef: $ef
    ld a, [hl]                                    ; $77f0: $7e
    dec b                                         ; $77f1: $05
    jr z, jr_001_77f7                             ; $77f2: $28 $03

    ld [$c016], a                                 ; $77f4: $ea $16 $c0

jr_001_77f7:
    dec b                                         ; $77f7: $05
    jr z, jr_001_77fd                             ; $77f8: $28 $03

    ld [$c015], a                                 ; $77fa: $ea $15 $c0

jr_001_77fd:
    ld hl, $c037                                  ; $77fd: $21 $37 $c0
    ld a, [hl]                                    ; $7800: $7e
    inc [hl]                                      ; $7801: $34
    cp c                                          ; $7802: $b9
    ret c                                         ; $7803: $d8

    ld [hl], $00                                  ; $7804: $36 $00
    ld hl, $c036                                  ; $7806: $21 $36 $c0
    inc [hl]                                      ; $7809: $34
    scf                                           ; $780a: $37
    ret                                           ; $780b: $c9


    nop                                           ; $780c: $00
    ld d, b                                       ; $780d: $50
    and h                                         ; $780e: $a4
    and h                                         ; $780f: $a4
    ld d, b                                       ; $7810: $50
    nop                                           ; $7811: $00
    call Call_001_7827                            ; $7812: $cd $27 $78
    call Call_000_1a9a                            ; $7815: $cd $9a $1a
    call Call_001_7836                            ; $7818: $cd $36 $78
    jp Jump_000_0e37                              ; $781b: $c3 $37 $0e


    call Call_001_7827                            ; $781e: $cd $27 $78
    call Call_001_7895                            ; $7821: $cd $95 $78
    jp Jump_000_0e37                              ; $7824: $c3 $37 $0e


Call_001_7827:
    call Call_000_0e2d                            ; $7827: $cd $2d $0e
    call Call_000_0260                            ; $782a: $cd $60 $02
    call Call_000_0e6d                            ; $782d: $cd $6d $0e
    call Call_000_38c5                            ; $7830: $cd $c5 $38
    jp Jump_000_2f90                              ; $7833: $c3 $90 $2f


Call_001_7836:
    ld c, $01                                     ; $7836: $0e $01

jr_001_7838:
    ld hl, $98e3                                  ; $7838: $21 $e3 $98
    ld de, $0020                                  ; $783b: $11 $20 $00
    ld b, $09                                     ; $783e: $06 $09
    ld a, $9f                                     ; $7840: $3e $9f

jr_001_7842:
    ld [hl], a                                    ; $7842: $77
    add hl, de                                    ; $7843: $19
    inc a                                         ; $7844: $3c
    dec b                                         ; $7845: $05
    jr nz, jr_001_7842                            ; $7846: $20 $fa

    ld a, $9e                                     ; $7848: $3e $9e
    add c                                         ; $784a: $81
    ld [$988b], a                                 ; $784b: $ea $8b $98
    inc a                                         ; $784e: $3c
    ld [$9891], a                                 ; $784f: $ea $91 $98
    ld d, c                                       ; $7852: $51
    ld e, $01                                     ; $7853: $1e $01
    ld hl, $98e7                                  ; $7855: $21 $e7 $98
    call Call_001_7878                            ; $7858: $cd $78 $78
    ld hl, $98ea                                  ; $785b: $21 $ea $98
    call Call_001_786b                            ; $785e: $cd $6b $78
    inc d                                         ; $7861: $14
    ld hl, $98ed                                  ; $7862: $21 $ed $98
    call Call_001_7878                            ; $7865: $cd $78 $78
    ld hl, $98f0                                  ; $7868: $21 $f0 $98

Call_001_786b:
jr_001_786b:
    push hl                                       ; $786b: $e5
    call Call_000_100f                            ; $786c: $cd $0f $10
    pop hl                                        ; $786f: $e1
    call Call_001_7885                            ; $7870: $cd $85 $78
    jr c, jr_001_786b                             ; $7873: $38 $f6

    ld e, $01                                     ; $7875: $1e $01
    ret                                           ; $7877: $c9


Call_001_7878:
jr_001_7878:
    push hl                                       ; $7878: $e5
    call Call_000_101b                            ; $7879: $cd $1b $10
    pop hl                                        ; $787c: $e1
    call Call_001_7885                            ; $787d: $cd $85 $78
    jr c, jr_001_7878                             ; $7880: $38 $f6

    ld e, $01                                     ; $7882: $1e $01
    ret                                           ; $7884: $c9


Call_001_7885:
    ld a, b                                       ; $7885: $78
    add $9e                                       ; $7886: $c6 $9e
    ld [hl+], a                                   ; $7888: $22
    ld a, c                                       ; $7889: $79
    add $9e                                       ; $788a: $c6 $9e
    ld [hl-], a                                   ; $788c: $32
    ld a, $20                                     ; $788d: $3e $20
    rst RST_28                                    ; $788f: $ef
    inc e                                         ; $7890: $1c
    ld a, e                                       ; $7891: $7b
    cp $0b                                        ; $7892: $fe $0b
    ret                                           ; $7894: $c9


Call_001_7895:
    ld c, $03                                     ; $7895: $0e $03
    jr jr_001_7838                                ; $7897: $18 $9f

Jump_001_7899:
    ld hl, $c222                                  ; $7899: $21 $22 $c2
    rst RST_08                                    ; $789c: $cf
    ld a, [hl]                                    ; $789d: $7e
    rst RST_00                                    ; $789e: $c7
    ld e, l                                       ; $789f: $5d
    ld a, c                                       ; $78a0: $79
    ld e, l                                       ; $78a1: $5d
    ld a, c                                       ; $78a2: $79
    ld e, l                                       ; $78a3: $5d
    ld a, c                                       ; $78a4: $79
    ld e, l                                       ; $78a5: $5d
    ld a, c                                       ; $78a6: $79
    ld e, l                                       ; $78a7: $5d
    ld a, c                                       ; $78a8: $79
    ld e, l                                       ; $78a9: $5d
    ld a, c                                       ; $78aa: $79
    ld e, l                                       ; $78ab: $5d
    ld a, c                                       ; $78ac: $79
    jp z, $5d7d                                   ; $78ad: $ca $7d $5d

    ld a, c                                       ; $78b0: $79
    ld e, l                                       ; $78b1: $5d
    ld a, c                                       ; $78b2: $79
    ld e, l                                       ; $78b3: $5d
    ld a, c                                       ; $78b4: $79
    sub a                                         ; $78b5: $97
    ld a, [hl]                                    ; $78b6: $7e
    ld e, l                                       ; $78b7: $5d
    ld a, c                                       ; $78b8: $79
    ld e, l                                       ; $78b9: $5d
    ld a, c                                       ; $78ba: $79
    xor $7e                                       ; $78bb: $ee $7e
    ld e, l                                       ; $78bd: $5d
    ld a, c                                       ; $78be: $79
    ld e, l                                       ; $78bf: $5d
    ld a, c                                       ; $78c0: $79
    ld e, l                                       ; $78c1: $5d
    ld a, c                                       ; $78c2: $79
    ld a, $7f                                     ; $78c3: $3e $7f
    ld e, l                                       ; $78c5: $5d
    ld a, c                                       ; $78c6: $79
    ld e, l                                       ; $78c7: $5d
    ld a, c                                       ; $78c8: $79
    ld e, l                                       ; $78c9: $5d
    ld a, c                                       ; $78ca: $79
    ld e, l                                       ; $78cb: $5d
    ld a, c                                       ; $78cc: $79
    jp $d47b                                      ; $78cd: $c3 $7b $d4


    ld a, l                                       ; $78d0: $7d
    xor [hl]                                      ; $78d1: $ae
    ld a, a                                       ; $78d2: $7f
    ld e, l                                       ; $78d3: $5d
    ld a, c                                       ; $78d4: $79
    ld e, l                                       ; $78d5: $5d
    ld a, c                                       ; $78d6: $79

Call_001_78d7:
    ld hl, $d400                                  ; $78d7: $21 $00 $d4
    ld a, [hl]                                    ; $78da: $7e
    rst RST_00                                    ; $78db: $c7
    inc d                                         ; $78dc: $14
    ld a, c                                       ; $78dd: $79
    inc d                                         ; $78de: $14
    ld a, c                                       ; $78df: $79
    call z, $1c7b                                 ; $78e0: $cc $7b $1c
    ld a, h                                       ; $78e3: $7c
    sub d                                         ; $78e4: $92
    ld a, h                                       ; $78e5: $7c
    sbc d                                         ; $78e6: $9a
    ld a, h                                       ; $78e7: $7c
    db $dd                                        ; $78e8: $dd
    ld a, l                                       ; $78e9: $7d
    db $dd                                        ; $78ea: $dd
    ld a, l                                       ; $78eb: $7d
    ld hl, sp+$7c                                 ; $78ec: $f8 $7c
    and b                                         ; $78ee: $a0
    ld a, l                                       ; $78ef: $7d
    ld h, $7e                                     ; $78f0: $26 $7e
    and b                                         ; $78f2: $a0
    ld a, [hl]                                    ; $78f3: $7e
    inc d                                         ; $78f4: $14
    ld a, a                                       ; $78f5: $7f
    ret z                                         ; $78f6: $c8

    ld a, [hl]                                    ; $78f7: $7e
    rst RST_30                                    ; $78f8: $f7
    ld a, [hl]                                    ; $78f9: $7e
    inc d                                         ; $78fa: $14
    ld a, a                                       ; $78fb: $7f
    inc d                                         ; $78fc: $14
    ld a, a                                       ; $78fd: $7f
    add hl, hl                                    ; $78fe: $29
    ld a, a                                       ; $78ff: $7f
    ld b, a                                       ; $7900: $47
    ld a, a                                       ; $7901: $7f
    ld [hl], a                                    ; $7902: $77
    ld a, a                                       ; $7903: $7f
    call z, $927b                                 ; $7904: $cc $7b $92
    ld a, h                                       ; $7907: $7c
    sub a                                         ; $7908: $97
    ld a, a                                       ; $7909: $7f
    call z, Call_000_077b                         ; $790a: $cc $7b $07
    ld a, [hl]                                    ; $790d: $7e
    cp d                                          ; $790e: $ba
    ld a, a                                       ; $790f: $7f
    rst RST_10                                    ; $7910: $d7
    ld a, a                                       ; $7911: $7f
    db $e4                                        ; $7912: $e4
    ld a, a                                       ; $7913: $7f
    ret                                           ; $7914: $c9


    nop                                           ; $7915: $00
    nop                                           ; $7916: $00
    ld [bc], a                                    ; $7917: $02
    ld [bc], a                                    ; $7918: $02
    ld [bc], a                                    ; $7919: $02
    ld [bc], a                                    ; $791a: $02
    ld [bc], a                                    ; $791b: $02
    ld [bc], a                                    ; $791c: $02
    ld [bc], a                                    ; $791d: $02
    inc b                                         ; $791e: $04
    ld [bc], a                                    ; $791f: $02
    inc b                                         ; $7920: $04
    ld [$0804], sp                                ; $7921: $08 $04 $08
    ld [$0808], sp                                ; $7924: $08 $08 $08
    inc b                                         ; $7927: $04
    ld [bc], a                                    ; $7928: $02
    ld [bc], a                                    ; $7929: $02
    ld [bc], a                                    ; $792a: $02
    ld [bc], a                                    ; $792b: $02
    ld [bc], a                                    ; $792c: $02
    ld [bc], a                                    ; $792d: $02
    ld [bc], a                                    ; $792e: $02
    inc b                                         ; $792f: $04
    ld [$0100], sp                                ; $7930: $08 $00 $01
    ld bc, $0101                                  ; $7933: $01 $01 $01
    ld bc, $0101                                  ; $7936: $01 $01 $01
    ld bc, $0102                                  ; $7939: $01 $02 $01
    inc bc                                        ; $793c: $03
    inc b                                         ; $793d: $04
    inc bc                                        ; $793e: $03
    inc b                                         ; $793f: $04
    inc b                                         ; $7940: $04
    inc b                                         ; $7941: $04
    inc b                                         ; $7942: $04
    ld [bc], a                                    ; $7943: $02
    ld bc, $0101                                  ; $7944: $01 $01 $01
    ld bc, $0101                                  ; $7947: $01 $01 $01
    ld bc, $0402                                  ; $794a: $01 $02 $04
    inc bc                                        ; $794d: $03
    ld d, $08                                     ; $794e: $16 $08
    ld d, $07                                     ; $7950: $16 $07
    ld d, $19                                     ; $7952: $16 $19
    ld d, $03                                     ; $7954: $16 $03
    ld d, $19                                     ; $7956: $16 $19
    ld d, $08                                     ; $7958: $16 $08
    ld d, $03                                     ; $795a: $16 $03
    dec b                                         ; $795c: $05
    push hl                                       ; $795d: $e5
    ld a, $0f                                     ; $795e: $3e $0f
    add l                                         ; $7960: $85
    ld l, a                                       ; $7961: $6f
    xor a                                         ; $7962: $af
    ld [hl], a                                    ; $7963: $77
    pop hl                                        ; $7964: $e1
    ret                                           ; $7965: $c9


Call_001_7966:
    ld l, $0d                                     ; $7966: $2e $0d
    ld a, [hl]                                    ; $7968: $7e
    bit 5, a                                      ; $7969: $cb $6f
    ret nz                                        ; $796b: $c0

    bit 7, a                                      ; $796c: $cb $7f
    jr nz, jr_001_7995                            ; $796e: $20 $25

    push hl                                       ; $7970: $e5
    call Call_001_79a9                            ; $7971: $cd $a9 $79
    pop hl                                        ; $7974: $e1
    ret nc                                        ; $7975: $d0

    ld a, [$c524]                                 ; $7976: $fa $24 $c5
    bit 6, [hl]                                   ; $7979: $cb $76
    jr nz, jr_001_7982                            ; $797b: $20 $05

    cp $01                                        ; $797d: $fe $01
    ret nz                                        ; $797f: $c0

    jr jr_001_7985                                ; $7980: $18 $03

jr_001_7982:
    cp $01                                        ; $7982: $fe $01
    ret z                                         ; $7984: $c8

jr_001_7985:
    pop bc                                        ; $7985: $c1
    call Call_001_59f1                            ; $7986: $cd $f1 $59
    ld a, [$c534]                                 ; $7989: $fa $34 $c5
    or a                                          ; $798c: $b7
    jp z, Jump_001_79d0                           ; $798d: $ca $d0 $79

    ld l, $0d                                     ; $7990: $2e $0d
    set 7, [hl]                                   ; $7992: $cb $fe
    ret                                           ; $7994: $c9


jr_001_7995:
    pop bc                                        ; $7995: $c1
    push hl                                       ; $7996: $e5
    call Call_001_5a26                            ; $7997: $cd $26 $5a
    pop hl                                        ; $799a: $e1
    ld a, [$c534]                                 ; $799b: $fa $34 $c5
    or a                                          ; $799e: $b7
    ret nz                                        ; $799f: $c0

    ld l, $0d                                     ; $79a0: $2e $0d
    res 7, [hl]                                   ; $79a2: $cb $be
    xor a                                         ; $79a4: $af
    ld [$c238], a                                 ; $79a5: $ea $38 $c2
    ret                                           ; $79a8: $c9


Call_001_79a9:
    and $01                                       ; $79a9: $e6 $01
    rst RST_00                                    ; $79ab: $c7
    or b                                          ; $79ac: $b0
    ld a, c                                       ; $79ad: $79
    ld [hl], b                                    ; $79ae: $70
    ld c, b                                       ; $79af: $48
    push hl                                       ; $79b0: $e5
    ld l, $00                                     ; $79b1: $2e $00
    ld a, [hl]                                    ; $79b3: $7e
    ld hl, $7931                                  ; $79b4: $21 $31 $79
    rst RST_28                                    ; $79b7: $ef
    ld a, [hl]                                    ; $79b8: $7e
    dec a                                         ; $79b9: $3d
    and $03                                       ; $79ba: $e6 $03
    pop hl                                        ; $79bc: $e1
    rst RST_00                                    ; $79bd: $c7
    ld h, b                                       ; $79be: $60
    ld c, b                                       ; $79bf: $48
    ld a, [hl]                                    ; $79c0: $7e
    ld c, b                                       ; $79c1: $48
    sub [hl]                                      ; $79c2: $96
    ld c, b                                       ; $79c3: $48
    xor [hl]                                      ; $79c4: $ae
    ld c, b                                       ; $79c5: $48

; Taken when it's NOT this monster's turn to act (its type != currently
; processed type in $c420). Monster struct offset $0f is a state/direction
; counter: it just gets bumped by 1 here every time this monster is skipped.
; There is no dedicated PRNG/dice-roll function in this game found so far -
; this free-running per-monster counter (incremented at an irregular rate
; depending on how many other monster types get processed per turn) is
; masked to 2-3 bits elsewhere (see Jump_001_7a9b/Jump_001_7a71) and used as
; a jump-table index (via Jump_000_0433_RstJumpTableTrampoline) to pick this
; monster's wander direction - a cheap de-facto pseudo-random source instead
; of a real RNG.
Jump_001_79c6:
    xor a                                         ; $79c6: $af
    ld [$c238], a                                 ; $79c7: $ea $38 $c2
    ld l, $0f                                     ; $79ca: $2e $0f
    inc [hl]                                      ; $79cc: $34
    jp Jump_001_7a9b                              ; $79cd: $c3 $9b $7a


Jump_001_79d0:
    xor a                                         ; $79d0: $af
    ld [$c238], a                                 ; $79d1: $ea $38 $c2
    ret                                           ; $79d4: $c9


    call Call_001_79e6                            ; $79d5: $cd $e6 $79
    or a                                          ; $79d8: $b7
    jr z, jr_001_79de                             ; $79d9: $28 $03

    dec a                                         ; $79db: $3d
    jr jr_001_7a19                                ; $79dc: $18 $3b

jr_001_79de:
    call Call_001_7a06                            ; $79de: $cd $06 $7a
    or a                                          ; $79e1: $b7
    ret z                                         ; $79e2: $c8

    dec a                                         ; $79e3: $3d
    jr jr_001_7a19                                ; $79e4: $18 $33

Call_001_79e6:
    ld a, $04                                     ; $79e6: $3e $04

Call_001_79e8:
    ld l, $03                                     ; $79e8: $2e $03
    ld b, [hl]                                    ; $79ea: $46
    sub b                                         ; $79eb: $90
    ret z                                         ; $79ec: $c8

    and $f0                                       ; $79ed: $e6 $f0
    swap a                                        ; $79ef: $cb $37
    inc a                                         ; $79f1: $3c
    and $01                                       ; $79f2: $e6 $01
    inc a                                         ; $79f4: $3c

jr_001_79f5:
    push af                                       ; $79f5: $f5
    dec a                                         ; $79f6: $3d
    call Call_001_7a22                            ; $79f7: $cd $22 $7a
    pop bc                                        ; $79fa: $c1
    jr nc, jr_001_7a04                            ; $79fb: $30 $07

    call Call_001_7a4e                            ; $79fd: $cd $4e $7a
    jr c, jr_001_7a04                             ; $7a00: $38 $02

    ld a, b                                       ; $7a02: $78
    ret                                           ; $7a03: $c9


jr_001_7a04:
    xor a                                         ; $7a04: $af
    ret                                           ; $7a05: $c9


Call_001_7a06:
    ld a, $04                                     ; $7a06: $3e $04

Call_001_7a08:
    ld l, $02                                     ; $7a08: $2e $02
    ld b, [hl]                                    ; $7a0a: $46
    sub b                                         ; $7a0b: $90
    ret z                                         ; $7a0c: $c8

    and $f0                                       ; $7a0d: $e6 $f0
    swap a                                        ; $7a0f: $cb $37
    inc a                                         ; $7a11: $3c
    inc a                                         ; $7a12: $3c
    inc a                                         ; $7a13: $3c
    and $03                                       ; $7a14: $e6 $03
    inc a                                         ; $7a16: $3c
    jr jr_001_79f5                                ; $7a17: $18 $dc

Jump_001_7a19:
jr_001_7a19:
    rst RST_00                                    ; $7a19: $c7
    cp [hl]                                       ; $7a1a: $be
    ld b, l                                       ; $7a1b: $45
    or b                                          ; $7a1c: $b0
    ld b, l                                       ; $7a1d: $45
    call z, $da45                                 ; $7a1e: $cc $45 $da
    ld b, l                                       ; $7a21: $45

Call_001_7a22:
    rst RST_00                                    ; $7a22: $c7
    rst RST_28                                    ; $7a23: $ef
    ld b, l                                       ; $7a24: $45
    add sp, $45                                   ; $7a25: $e8 $45
    or $45                                        ; $7a27: $f6 $45
    db $fd                                        ; $7a29: $fd
    ld b, l                                       ; $7a2a: $45

Call_001_7a2b:
    ld a, [$c241]                                 ; $7a2b: $fa $41 $c2
    bit 7, a                                      ; $7a2e: $cb $7f
    jr nz, jr_001_7a64                            ; $7a30: $20 $32

    ld a, [$c242]                                 ; $7a32: $fa $42 $c2
    or a                                          ; $7a35: $b7
    jr nz, jr_001_7a64                            ; $7a36: $20 $2c

    ret                                           ; $7a38: $c9


Call_001_7a39:
    ld a, [$c24c]                                 ; $7a39: $fa $4c $c2
    bit 7, a                                      ; $7a3c: $cb $7f
    jr nz, jr_001_7a64                            ; $7a3e: $20 $24

    cp $05                                        ; $7a40: $fe $05
    jr z, jr_001_7a64                             ; $7a42: $28 $20

    cp $02                                        ; $7a44: $fe $02
    jr z, jr_001_7a64                             ; $7a46: $28 $1c

    ld a, [$c24d]                                 ; $7a48: $fa $4d $c2
    or a                                          ; $7a4b: $b7
    jr nz, jr_001_7a64                            ; $7a4c: $20 $16

Call_001_7a4e:
    ld a, [$c241]                                 ; $7a4e: $fa $41 $c2
    bit 7, a                                      ; $7a51: $cb $7f
    jr nz, jr_001_7a64                            ; $7a53: $20 $0f

    cp $05                                        ; $7a55: $fe $05
    jr z, jr_001_7a64                             ; $7a57: $28 $0b

    cp $02                                        ; $7a59: $fe $02
    jr z, jr_001_7a64                             ; $7a5b: $28 $07

    ld a, [$c242]                                 ; $7a5d: $fa $42 $c2
    or a                                          ; $7a60: $b7
    jr nz, jr_001_7a64                            ; $7a61: $20 $01

    ret                                           ; $7a63: $c9


jr_001_7a64:
    scf                                           ; $7a64: $37
    ret                                           ; $7a65: $c9


Call_001_7a66:
    xor a                                         ; $7a66: $af
    ld [$c24b], a                                 ; $7a67: $ea $4b $c2
    ld [$c24c], a                                 ; $7a6a: $ea $4c $c2
    ld [$c24d], a                                 ; $7a6d: $ea $4d $c2
    ret                                           ; $7a70: $c9


Jump_001_7a71:
    ld l, $0f                                     ; $7a71: $2e $0f
    ld a, [hl]                                    ; $7a73: $7e
    and $03                                       ; $7a74: $e6 $03
    rst RST_00                                    ; $7a76: $c7
    or b                                          ; $7a77: $b0
    ld b, l                                       ; $7a78: $45
    call z, $be45                                 ; $7a79: $cc $45 $be
    ld b, l                                       ; $7a7c: $45
    jp c, Jump_000_2e45                           ; $7a7d: $da $45 $2e

    rrca                                          ; $7a80: $0f
    ld a, [hl]                                    ; $7a81: $7e
    and $03                                       ; $7a82: $e6 $03
    rst RST_00                                    ; $7a84: $c7
    cp [hl]                                       ; $7a85: $be
    ld b, l                                       ; $7a86: $45
    call z, $b045                                 ; $7a87: $cc $45 $b0
    ld b, l                                       ; $7a8a: $45
    jp c, Jump_000_2e45                           ; $7a8b: $da $45 $2e

    rrca                                          ; $7a8e: $0f
    ld a, [hl]                                    ; $7a8f: $7e
    and $03                                       ; $7a90: $e6 $03
    rst RST_00                                    ; $7a92: $c7
    sbc c                                         ; $7a93: $99
    ld a, e                                       ; $7a94: $7b
    adc e                                         ; $7a95: $8b
    ld a, e                                       ; $7a96: $7b
    or l                                          ; $7a97: $b5
    ld a, e                                       ; $7a98: $7b
    and a                                         ; $7a99: $a7
    ld a, e                                       ; $7a9a: $7b

Jump_001_7a9b:
    ld l, $0f                                     ; $7a9b: $2e $0f
    ld a, [hl]                                    ; $7a9d: $7e
    and $07                                       ; $7a9e: $e6 $07
    rst RST_00                                    ; $7aa0: $c7
    or b                                          ; $7aa1: $b0
    ld b, l                                       ; $7aa2: $45
    call z, $be45                                 ; $7aa3: $cc $45 $be
    ld b, l                                       ; $7aa6: $45
    jp c, $da45                                   ; $7aa7: $da $45 $da

    ld b, l                                       ; $7aaa: $45
    cp [hl]                                       ; $7aab: $be
    ld b, l                                       ; $7aac: $45
    call z, $b045                                 ; $7aad: $cc $45 $b0
    ld b, l                                       ; $7ab0: $45

Jump_001_7ab1:
    ld l, $0f                                     ; $7ab1: $2e $0f
    ld a, [hl]                                    ; $7ab3: $7e
    and $07                                       ; $7ab4: $e6 $07
    rst RST_00                                    ; $7ab6: $c7
    ld b, a                                       ; $7ab7: $47
    ld b, [hl]                                    ; $7ab8: $46
    inc de                                        ; $7ab9: $13
    ld b, [hl]                                    ; $7aba: $46
    cpl                                           ; $7abb: $2f
    ld b, [hl]                                    ; $7abc: $46
    ld hl, $4746                                  ; $7abd: $21 $46 $47
    ld b, [hl]                                    ; $7ac0: $46
    ld hl, $2f46                                  ; $7ac1: $21 $46 $2f
    ld b, [hl]                                    ; $7ac4: $46
    inc de                                        ; $7ac5: $13
    ld b, [hl]                                    ; $7ac6: $46

Jump_001_7ac7:
    ld l, $0f                                     ; $7ac7: $2e $0f
    ld a, [hl]                                    ; $7ac9: $7e
    and $03                                       ; $7aca: $e6 $03
    rst RST_00                                    ; $7acc: $c7
    inc de                                        ; $7acd: $13
    ld b, [hl]                                    ; $7ace: $46
    cpl                                           ; $7acf: $2f
    ld b, [hl]                                    ; $7ad0: $46
    ld hl, $4746                                  ; $7ad1: $21 $46 $47
    ld b, [hl]                                    ; $7ad4: $46

Jump_001_7ad5:
    ld l, $0f                                     ; $7ad5: $2e $0f
    ld a, [hl]                                    ; $7ad7: $7e
    and $03                                       ; $7ad8: $e6 $03
    rst RST_00                                    ; $7ada: $c7
    xor c                                         ; $7adb: $a9
    ld b, [hl]                                    ; $7adc: $46
    reti                                          ; $7add: $d9


    ld b, [hl]                                    ; $7ade: $46
    pop bc                                        ; $7adf: $c1
    ld b, [hl]                                    ; $7ae0: $46
    rst RST_20                                    ; $7ae1: $e7
    ld b, [hl]                                    ; $7ae2: $46

Jump_001_7ae3:
    ld l, $0f                                     ; $7ae3: $2e $0f
    ld a, [hl]                                    ; $7ae5: $7e
    and $03                                       ; $7ae6: $e6 $03
    rst RST_00                                    ; $7ae8: $c7
    ccf                                           ; $7ae9: $3f
    ld b, a                                       ; $7aea: $47
    ld l, a                                       ; $7aeb: $6f
    ld b, a                                       ; $7aec: $47
    ld d, a                                       ; $7aed: $57
    ld b, a                                       ; $7aee: $47
    add a                                         ; $7aef: $87
    ld b, a                                       ; $7af0: $47

Jump_001_7af1:
    ld l, $0f                                     ; $7af1: $2e $0f
    ld a, [hl]                                    ; $7af3: $7e
    and $03                                       ; $7af4: $e6 $03
    rst RST_00                                    ; $7af6: $c7
    ccf                                           ; $7af7: $3f
    ld b, a                                       ; $7af8: $47
    ccf                                           ; $7af9: $3f
    ld b, a                                       ; $7afa: $47
    ld d, a                                       ; $7afb: $57
    ld b, a                                       ; $7afc: $47
    ld d, a                                       ; $7afd: $57
    ld b, a                                       ; $7afe: $47

Call_001_7aff:
    ld l, $0f                                     ; $7aff: $2e $0f
    ld a, [hl]                                    ; $7b01: $7e
    and $03                                       ; $7b02: $e6 $03
    rst RST_00                                    ; $7b04: $c7
    add sp, $45                                   ; $7b05: $e8 $45
    or $45                                        ; $7b07: $f6 $45
    rst RST_28                                    ; $7b09: $ef
    ld b, l                                       ; $7b0a: $45
    db $fd                                        ; $7b0b: $fd
    ld b, l                                       ; $7b0c: $45

Call_001_7b0d:
    ld l, $0f                                     ; $7b0d: $2e $0f
    ld a, [hl]                                    ; $7b0f: $7e
    and $03                                       ; $7b10: $e6 $03
    rst RST_00                                    ; $7b12: $c7
    db $fd                                        ; $7b13: $fd
    ld b, l                                       ; $7b14: $45
    add sp, $45                                   ; $7b15: $e8 $45
    or $45                                        ; $7b17: $f6 $45
    rst RST_28                                    ; $7b19: $ef
    ld b, l                                       ; $7b1a: $45

Call_001_7b1b:
    ld l, $0f                                     ; $7b1b: $2e $0f
    ld a, [hl]                                    ; $7b1d: $7e
    and $03                                       ; $7b1e: $e6 $03
    rst RST_00                                    ; $7b20: $c7
    rst RST_28                                    ; $7b21: $ef
    ld b, l                                       ; $7b22: $45
    or $45                                        ; $7b23: $f6 $45
    add sp, $45                                   ; $7b25: $e8 $45
    db $fd                                        ; $7b27: $fd
    ld b, l                                       ; $7b28: $45

Call_001_7b29:
    ld l, $0f                                     ; $7b29: $2e $0f
    ld a, [hl]                                    ; $7b2b: $7e
    and $03                                       ; $7b2c: $e6 $03
    rst RST_00                                    ; $7b2e: $c7
    ld e, a                                       ; $7b2f: $5f
    ld b, [hl]                                    ; $7b30: $46
    ld l, l                                       ; $7b31: $6d
    ld b, [hl]                                    ; $7b32: $46
    ld h, [hl]                                    ; $7b33: $66
    ld b, [hl]                                    ; $7b34: $46
    ld a, [hl]                                    ; $7b35: $7e
    ld b, [hl]                                    ; $7b36: $46

Call_001_7b37:
    ld l, $0f                                     ; $7b37: $2e $0f
    ld a, [hl]                                    ; $7b39: $7e
    and $03                                       ; $7b3a: $e6 $03
    rst RST_00                                    ; $7b3c: $c7
    push af                                       ; $7b3d: $f5
    ld b, [hl]                                    ; $7b3e: $46
    rla                                           ; $7b3f: $17
    ld b, a                                       ; $7b40: $47
    ld b, $47                                     ; $7b41: $06 $47
    ld e, $47                                     ; $7b43: $1e $47

Call_001_7b45:
    ld l, $0f                                     ; $7b45: $2e $0f
    ld a, [hl]                                    ; $7b47: $7e
    and $03                                       ; $7b48: $e6 $03
    rst RST_00                                    ; $7b4a: $c7
    sbc a                                         ; $7b4b: $9f
    ld b, a                                       ; $7b4c: $47
    pop bc                                        ; $7b4d: $c1
    ld b, a                                       ; $7b4e: $47
    or b                                          ; $7b4f: $b0
    ld b, a                                       ; $7b50: $47
    jp nc, Jump_000_2e47                          ; $7b51: $d2 $47 $2e

    rrca                                          ; $7b54: $0f
    ld a, [hl]                                    ; $7b55: $7e
    and $03                                       ; $7b56: $e6 $03
    rst RST_00                                    ; $7b58: $c7
    halt                                          ; $7b59: $76
    ld a, e                                       ; $7b5a: $7b
    ld l, a                                       ; $7b5b: $6f
    ld a, e                                       ; $7b5c: $7b
    add h                                         ; $7b5d: $84
    ld a, e                                       ; $7b5e: $7b
    ld a, l                                       ; $7b5f: $7d
    ld a, e                                       ; $7b60: $7b

Call_001_7b61:
    ld l, $0f                                     ; $7b61: $2e $0f
    ld a, [hl]                                    ; $7b63: $7e
    and $03                                       ; $7b64: $e6 $03
    rst RST_00                                    ; $7b66: $c7
    sbc a                                         ; $7b67: $9f
    ld b, a                                       ; $7b68: $47
    sbc a                                         ; $7b69: $9f
    ld b, a                                       ; $7b6a: $47
    or b                                          ; $7b6b: $b0
    ld b, a                                       ; $7b6c: $47
    or b                                          ; $7b6d: $b0
    ld b, a                                       ; $7b6e: $47
    ld de, $0101                                  ; $7b6f: $11 $01 $01
    call Call_001_47fd                            ; $7b72: $cd $fd $47
    ret                                           ; $7b75: $c9


    ld de, $ff01                                  ; $7b76: $11 $01 $ff
    call Call_001_47fd                            ; $7b79: $cd $fd $47
    ret                                           ; $7b7c: $c9


    ld de, $ffff                                  ; $7b7d: $11 $ff $ff
    call Call_001_47fd                            ; $7b80: $cd $fd $47
    ret                                           ; $7b83: $c9


    ld de, $01ff                                  ; $7b84: $11 $ff $01
    call Call_001_47fd                            ; $7b87: $cd $fd $47
    ret                                           ; $7b8a: $c9


    ld de, $0101                                  ; $7b8b: $11 $01 $01
    call Call_001_47fd                            ; $7b8e: $cd $fd $47
    ret nc                                        ; $7b91: $d0

    ld de, $0101                                  ; $7b92: $11 $01 $01
    call Call_001_4604                            ; $7b95: $cd $04 $46
    ret                                           ; $7b98: $c9


    ld de, $ff01                                  ; $7b99: $11 $01 $ff
    call Call_001_47fd                            ; $7b9c: $cd $fd $47
    ret nc                                        ; $7b9f: $d0

    ld de, $ff01                                  ; $7ba0: $11 $01 $ff
    call Call_001_4604                            ; $7ba3: $cd $04 $46
    ret                                           ; $7ba6: $c9


    ld de, $ffff                                  ; $7ba7: $11 $ff $ff
    call Call_001_47fd                            ; $7baa: $cd $fd $47
    ret nc                                        ; $7bad: $d0

    ld de, $ffff                                  ; $7bae: $11 $ff $ff
    call Call_001_4604                            ; $7bb1: $cd $04 $46
    ret                                           ; $7bb4: $c9


    ld de, $01ff                                  ; $7bb5: $11 $ff $01
    call Call_001_47fd                            ; $7bb8: $cd $fd $47
    ret nc                                        ; $7bbb: $d0

    ld de, $01ff                                  ; $7bbc: $11 $ff $01
    call Call_001_4604                            ; $7bbf: $cd $04 $46
    ret                                           ; $7bc2: $c9


    push hl                                       ; $7bc3: $e5
    ld a, $0d                                     ; $7bc4: $3e $0d
    add l                                         ; $7bc6: $85
    ld l, a                                       ; $7bc7: $6f
    set 5, [hl]                                   ; $7bc8: $cb $ee
    pop hl                                        ; $7bca: $e1
    ret                                           ; $7bcb: $c9


    call Call_001_7966                            ; $7bcc: $cd $66 $79
    xor a                                         ; $7bcf: $af
    ld [$c238], a                                 ; $7bd0: $ea $38 $c2
    ld l, $01                                     ; $7bd3: $2e $01
    ld a, [$c420]                                 ; $7bd5: $fa $20 $c4
    ld b, [hl]                                    ; $7bd8: $46
    cp b                                          ; $7bd9: $b8
    jp nz, Jump_001_7c23                          ; $7bda: $c2 $23 $7c

    ld a, [$c14b]                                 ; $7bdd: $fa $4b $c1
    cp $0a                                        ; $7be0: $fe $0a
    jp z, Jump_001_7c23                           ; $7be2: $ca $23 $7c

    call Call_001_7c00                            ; $7be5: $cd $00 $7c
    ld a, d                                       ; $7be8: $7a
    call Call_001_79e8                            ; $7be9: $cd $e8 $79
    or a                                          ; $7bec: $b7
    jr z, jr_001_7bf3                             ; $7bed: $28 $04

    dec a                                         ; $7bef: $3d
    jp Jump_001_7a19                              ; $7bf0: $c3 $19 $7a


jr_001_7bf3:
    call Call_001_7c00                            ; $7bf3: $cd $00 $7c
    ld a, e                                       ; $7bf6: $7b
    call Call_001_7a08                            ; $7bf7: $cd $08 $7a
    or a                                          ; $7bfa: $b7
    ret z                                         ; $7bfb: $c8

    dec a                                         ; $7bfc: $3d
    jp Jump_001_7a19                              ; $7bfd: $c3 $19 $7a


Call_001_7c00:
    ld a, [$c503]                                 ; $7c00: $fa $03 $c5
    ld e, a                                       ; $7c03: $5f
    ld a, [$c504]                                 ; $7c04: $fa $04 $c5
    ld d, a                                       ; $7c07: $57
    ld a, [$c510]                                 ; $7c08: $fa $10 $c5
    dec a                                         ; $7c0b: $3d
    jr z, jr_001_7c16                             ; $7c0c: $28 $08

    dec a                                         ; $7c0e: $3d
    jr z, jr_001_7c18                             ; $7c0f: $28 $07

    dec a                                         ; $7c11: $3d
    jr z, jr_001_7c1a                             ; $7c12: $28 $06

    dec d                                         ; $7c14: $15
    ret                                           ; $7c15: $c9


jr_001_7c16:
    inc d                                         ; $7c16: $14
    ret                                           ; $7c17: $c9


jr_001_7c18:
    inc e                                         ; $7c18: $1c
    ret                                           ; $7c19: $c9


jr_001_7c1a:
    dec e                                         ; $7c1a: $1d
    ret                                           ; $7c1b: $c9


    call Call_001_7966                            ; $7c1c: $cd $66 $79
    xor a                                         ; $7c1f: $af
    ld [$c238], a                                 ; $7c20: $ea $38 $c2

Jump_001_7c23:
    ld l, $0f                                     ; $7c23: $2e $0f
    ld a, [hl]                                    ; $7c25: $7e
    bit 7, a                                      ; $7c26: $cb $7f
    jr nz, jr_001_7c49                            ; $7c28: $20 $1f

    call Call_001_7aff                            ; $7c2a: $cd $ff $7a
    jr nc, jr_001_7c35                            ; $7c2d: $30 $06

    call Call_001_7a4e                            ; $7c2f: $cd $4e $7a
    jp nc, Jump_001_7a71                          ; $7c32: $d2 $71 $7a

jr_001_7c35:
    ld l, $0f                                     ; $7c35: $2e $0f
    ld a, [hl]                                    ; $7c37: $7e
    inc a                                         ; $7c38: $3c
    and $43                                       ; $7c39: $e6 $43
    set 7, a                                      ; $7c3b: $cb $ff
    ld [hl], a                                    ; $7c3d: $77
    call Call_001_7aff                            ; $7c3e: $cd $ff $7a
    ret nc                                        ; $7c41: $d0

    call Call_001_7a4e                            ; $7c42: $cd $4e $7a
    jp nc, Jump_001_7a71                          ; $7c45: $d2 $71 $7a

    ret                                           ; $7c48: $c9


jr_001_7c49:
    call Call_001_7b0d                            ; $7c49: $cd $0d $7b
    jr nc, jr_001_7c55                            ; $7c4c: $30 $07

    call Call_001_7a4e                            ; $7c4e: $cd $4e $7a
    jr c, jr_001_7c55                             ; $7c51: $38 $02

    jr jr_001_7c7a                                ; $7c53: $18 $25

jr_001_7c55:
    call Call_001_7aff                            ; $7c55: $cd $ff $7a
    jr nc, jr_001_7c68                            ; $7c58: $30 $0e

    call Call_001_7a4e                            ; $7c5a: $cd $4e $7a
    jr c, jr_001_7c68                             ; $7c5d: $38 $09

    ld l, $0f                                     ; $7c5f: $2e $0f
    ld a, [hl]                                    ; $7c61: $7e
    and $c3                                       ; $7c62: $e6 $c3
    ld [hl], a                                    ; $7c64: $77
    jp Jump_001_7a71                              ; $7c65: $c3 $71 $7a


jr_001_7c68:
    ld l, $0f                                     ; $7c68: $2e $0f
    ld a, [hl]                                    ; $7c6a: $7e
    inc a                                         ; $7c6b: $3c
    and $c3                                       ; $7c6c: $e6 $c3
    ld [hl], a                                    ; $7c6e: $77
    call Call_001_7aff                            ; $7c6f: $cd $ff $7a
    ret nc                                        ; $7c72: $d0

    call Call_001_7a4e                            ; $7c73: $cd $4e $7a
    ret c                                         ; $7c76: $d8

    jp Jump_001_7a71                              ; $7c77: $c3 $71 $7a


jr_001_7c7a:
    ld l, $0f                                     ; $7c7a: $2e $0f
    ld a, [hl]                                    ; $7c7c: $7e
    bit 5, a                                      ; $7c7d: $cb $6f
    jr z, jr_001_7c87                             ; $7c7f: $28 $06

    and $03                                       ; $7c81: $e6 $03
    ld [hl], a                                    ; $7c83: $77
    jp Jump_001_7c23                              ; $7c84: $c3 $23 $7c


jr_001_7c87:
    set 5, a                                      ; $7c87: $cb $ef
    set 2, a                                      ; $7c89: $cb $d7
    dec a                                         ; $7c8b: $3d
    and $e3                                       ; $7c8c: $e6 $e3
    ld [hl], a                                    ; $7c8e: $77
    jp Jump_001_7a71                              ; $7c8f: $c3 $71 $7a


    call Call_001_7966                            ; $7c92: $cd $66 $79
    xor a                                         ; $7c95: $af
    ld [$c238], a                                 ; $7c96: $ea $38 $c2
    ret                                           ; $7c99: $c9


    call Call_001_7966                            ; $7c9a: $cd $66 $79
    xor a                                         ; $7c9d: $af
    ld [$c238], a                                 ; $7c9e: $ea $38 $c2
    ld l, $01                                     ; $7ca1: $2e $01
    ld a, [$c420]                                 ; $7ca3: $fa $20 $c4
    ld b, [hl]                                    ; $7ca6: $46
    cp b                                          ; $7ca7: $b8
    jp nz, Jump_001_79c6                          ; $7ca8: $c2 $c6 $79

    ld a, [$c14b]                                 ; $7cab: $fa $4b $c1
    cp $0a                                        ; $7cae: $fe $0a
    ret z                                         ; $7cb0: $c8

    ld l, $0f                                     ; $7cb1: $2e $0f
    bit 7, [hl]                                   ; $7cb3: $cb $7e
    jr nz, jr_001_7ce6                            ; $7cb5: $20 $2f

    ld a, [$c503]                                 ; $7cb7: $fa $03 $c5
    ld l, $02                                     ; $7cba: $2e $02
    ld b, [hl]                                    ; $7cbc: $46
    sub b                                         ; $7cbd: $90
    ld d, a                                       ; $7cbe: $57
    ld a, [$c504]                                 ; $7cbf: $fa $04 $c5
    ld l, $03                                     ; $7cc2: $2e $03
    ld b, [hl]                                    ; $7cc4: $46
    sub b                                         ; $7cc5: $90
    ld e, a                                       ; $7cc6: $5f
    jr z, jr_001_7cce                             ; $7cc7: $28 $05

    ld a, d                                       ; $7cc9: $7a
    or a                                          ; $7cca: $b7
    jr z, jr_001_7cda                             ; $7ccb: $28 $0d

    ret                                           ; $7ccd: $c9


jr_001_7cce:
    bit 7, d                                      ; $7cce: $cb $7a
    ld a, $83                                     ; $7cd0: $3e $83
    jr z, jr_001_7cd6                             ; $7cd2: $28 $02

    dec a                                         ; $7cd4: $3d
    dec a                                         ; $7cd5: $3d

jr_001_7cd6:
    ld l, $0f                                     ; $7cd6: $2e $0f
    ld [hl], a                                    ; $7cd8: $77
    ret                                           ; $7cd9: $c9


jr_001_7cda:
    bit 7, e                                      ; $7cda: $cb $7b
    ld a, $80                                     ; $7cdc: $3e $80
    jr z, jr_001_7ce2                             ; $7cde: $28 $02

    inc a                                         ; $7ce0: $3c
    inc a                                         ; $7ce1: $3c

jr_001_7ce2:
    ld l, $0f                                     ; $7ce2: $2e $0f
    ld [hl], a                                    ; $7ce4: $77
    ret                                           ; $7ce5: $c9


jr_001_7ce6:
    call Call_001_7aff                            ; $7ce6: $cd $ff $7a
    jr nc, jr_001_7cf3                            ; $7ce9: $30 $08

    call Call_001_7a2b                            ; $7ceb: $cd $2b $7a
    jr c, jr_001_7cf3                             ; $7cee: $38 $03

    jp Jump_001_7a71                              ; $7cf0: $c3 $71 $7a


jr_001_7cf3:
    xor a                                         ; $7cf3: $af
    ld l, $0f                                     ; $7cf4: $2e $0f
    ld [hl], a                                    ; $7cf6: $77
    ret                                           ; $7cf7: $c9


    call Call_001_7966                            ; $7cf8: $cd $66 $79
    xor a                                         ; $7cfb: $af
    ld [$c238], a                                 ; $7cfc: $ea $38 $c2
    ld l, $01                                     ; $7cff: $2e $01
    ld a, [$c420]                                 ; $7d01: $fa $20 $c4
    ld b, [hl]                                    ; $7d04: $46
    cp b                                          ; $7d05: $b8
    jp nz, Jump_001_7c23                          ; $7d06: $c2 $23 $7c

    ld a, [$c14b]                                 ; $7d09: $fa $4b $c1
    cp $0a                                        ; $7d0c: $fe $0a
    ret z                                         ; $7d0e: $c8

    ld a, [$c504]                                 ; $7d0f: $fa $04 $c5
    ld l, $03                                     ; $7d12: $2e $03
    ld b, [hl]                                    ; $7d14: $46
    sub b                                         ; $7d15: $90
    ld d, a                                       ; $7d16: $57
    bit 7, a                                      ; $7d17: $cb $7f
    jr z, jr_001_7d1d                             ; $7d19: $28 $02

    cpl                                           ; $7d1b: $2f
    inc a                                         ; $7d1c: $3c

jr_001_7d1d:
    ld b, a                                       ; $7d1d: $47
    ld a, [$c503]                                 ; $7d1e: $fa $03 $c5
    ld l, $02                                     ; $7d21: $2e $02
    ld c, [hl]                                    ; $7d23: $4e
    sub c                                         ; $7d24: $91
    ld e, a                                       ; $7d25: $5f
    bit 7, a                                      ; $7d26: $cb $7f
    jr z, jr_001_7d2c                             ; $7d28: $28 $02

    cpl                                           ; $7d2a: $2f
    inc a                                         ; $7d2b: $3c

jr_001_7d2c:
    add b                                         ; $7d2c: $80
    cp $03                                        ; $7d2d: $fe $03
    ret nc                                        ; $7d2f: $d0

    push de                                       ; $7d30: $d5
    inc e                                         ; $7d31: $1c
    call Call_001_7d8c                            ; $7d32: $cd $8c $7d
    pop de                                        ; $7d35: $d1
    jr c, jr_001_7d48                             ; $7d36: $38 $10

    push de                                       ; $7d38: $d5
    call Call_001_45f6                            ; $7d39: $cd $f6 $45
    pop de                                        ; $7d3c: $d1
    jp nc, Jump_001_7d48                          ; $7d3d: $d2 $48 $7d

    push de                                       ; $7d40: $d5
    call Call_001_7a4e                            ; $7d41: $cd $4e $7a
    pop de                                        ; $7d44: $d1
    jp nc, Jump_001_45cc                          ; $7d45: $d2 $cc $45

Jump_001_7d48:
jr_001_7d48:
    push de                                       ; $7d48: $d5
    inc d                                         ; $7d49: $14
    call Call_001_7d8c                            ; $7d4a: $cd $8c $7d
    pop de                                        ; $7d4d: $d1
    jr c, jr_001_7d60                             ; $7d4e: $38 $10

    push de                                       ; $7d50: $d5
    call Call_001_45ef                            ; $7d51: $cd $ef $45
    pop de                                        ; $7d54: $d1
    jp nc, Jump_001_7d60                          ; $7d55: $d2 $60 $7d

    push de                                       ; $7d58: $d5
    call Call_001_7a4e                            ; $7d59: $cd $4e $7a
    pop de                                        ; $7d5c: $d1
    jp nc, Jump_001_45be                          ; $7d5d: $d2 $be $45

Jump_001_7d60:
jr_001_7d60:
    push de                                       ; $7d60: $d5
    dec e                                         ; $7d61: $1d
    call Call_001_7d8c                            ; $7d62: $cd $8c $7d
    pop de                                        ; $7d65: $d1
    jr c, jr_001_7d78                             ; $7d66: $38 $10

    push de                                       ; $7d68: $d5
    call Call_001_45fd                            ; $7d69: $cd $fd $45
    pop de                                        ; $7d6c: $d1
    jp nc, Jump_001_7d78                          ; $7d6d: $d2 $78 $7d

    push de                                       ; $7d70: $d5
    call Call_001_7a4e                            ; $7d71: $cd $4e $7a
    pop de                                        ; $7d74: $d1
    jp nc, Jump_001_45da                          ; $7d75: $d2 $da $45

Jump_001_7d78:
jr_001_7d78:
    push de                                       ; $7d78: $d5
    dec d                                         ; $7d79: $15
    call Call_001_7d8c                            ; $7d7a: $cd $8c $7d
    pop de                                        ; $7d7d: $d1
    ret c                                         ; $7d7e: $d8

    push de                                       ; $7d7f: $d5
    call Call_001_45e8                            ; $7d80: $cd $e8 $45
    pop de                                        ; $7d83: $d1
    ret nc                                        ; $7d84: $d0

    call Call_001_7a4e                            ; $7d85: $cd $4e $7a
    jp nc, Jump_001_45b0                          ; $7d88: $d2 $b0 $45

    ret                                           ; $7d8b: $c9


Call_001_7d8c:
    ld a, d                                       ; $7d8c: $7a
    bit 7, a                                      ; $7d8d: $cb $7f
    jr z, jr_001_7d93                             ; $7d8f: $28 $02

    cpl                                           ; $7d91: $2f
    inc a                                         ; $7d92: $3c

jr_001_7d93:
    ld b, a                                       ; $7d93: $47
    ld a, e                                       ; $7d94: $7b
    bit 7, a                                      ; $7d95: $cb $7f
    jr z, jr_001_7d9b                             ; $7d97: $28 $02

    cpl                                           ; $7d99: $2f
    inc a                                         ; $7d9a: $3c

jr_001_7d9b:
    ld c, a                                       ; $7d9b: $4f
    add b                                         ; $7d9c: $80
    cp $03                                        ; $7d9d: $fe $03
    ret                                           ; $7d9f: $c9


    call Call_001_7966                            ; $7da0: $cd $66 $79
    xor a                                         ; $7da3: $af
    ld [$c238], a                                 ; $7da4: $ea $38 $c2
    call Call_001_7b29                            ; $7da7: $cd $29 $7b
    jr nc, jr_001_7db7                            ; $7daa: $30 $0b

    call Call_001_7a4e                            ; $7dac: $cd $4e $7a
    jr c, jr_001_7db7                             ; $7daf: $38 $06

    ld l, $0f                                     ; $7db1: $2e $0f
    ld a, [hl]                                    ; $7db3: $7e
    jp Jump_001_7ac7                              ; $7db4: $c3 $c7 $7a


jr_001_7db7:
    ld l, $0f                                     ; $7db7: $2e $0f
    ld a, [hl]                                    ; $7db9: $7e
    inc a                                         ; $7dba: $3c
    inc a                                         ; $7dbb: $3c
    and $03                                       ; $7dbc: $e6 $03
    ld [hl], a                                    ; $7dbe: $77
    call Call_001_7b29                            ; $7dbf: $cd $29 $7b
    ret nc                                        ; $7dc2: $d0

    call Call_001_7a4e                            ; $7dc3: $cd $4e $7a
    jp nc, Jump_001_7ac7                          ; $7dc6: $d2 $c7 $7a

    ret                                           ; $7dc9: $c9


    push hl                                       ; $7dca: $e5
    ld a, $0f                                     ; $7dcb: $3e $0f
    add l                                         ; $7dcd: $85
    ld l, a                                       ; $7dce: $6f
    ld a, $01                                     ; $7dcf: $3e $01
    ld [hl], a                                    ; $7dd1: $77
    pop hl                                        ; $7dd2: $e1
    ret                                           ; $7dd3: $c9


    push hl                                       ; $7dd4: $e5
    ld a, $0d                                     ; $7dd5: $3e $0d
    add l                                         ; $7dd7: $85
    ld l, a                                       ; $7dd8: $6f
    set 0, [hl]                                   ; $7dd9: $cb $c6
    pop hl                                        ; $7ddb: $e1
    ret                                           ; $7ddc: $c9


    call Call_001_7966                            ; $7ddd: $cd $66 $79
    xor a                                         ; $7de0: $af
    ld [$c238], a                                 ; $7de1: $ea $38 $c2
    call Call_001_7aff                            ; $7de4: $cd $ff $7a
    jr nc, jr_001_7df4                            ; $7de7: $30 $0b

    call Call_001_7a4e                            ; $7de9: $cd $4e $7a
    jr c, jr_001_7df4                             ; $7dec: $38 $06

    ld l, $0f                                     ; $7dee: $2e $0f
    ld a, [hl]                                    ; $7df0: $7e
    jp Jump_001_7a71                              ; $7df1: $c3 $71 $7a


jr_001_7df4:
    ld l, $0f                                     ; $7df4: $2e $0f
    ld a, [hl]                                    ; $7df6: $7e
    inc a                                         ; $7df7: $3c
    inc a                                         ; $7df8: $3c
    and $03                                       ; $7df9: $e6 $03
    ld [hl], a                                    ; $7dfb: $77
    call Call_001_7aff                            ; $7dfc: $cd $ff $7a
    ret nc                                        ; $7dff: $d0

    call Call_001_7a4e                            ; $7e00: $cd $4e $7a
    jp nc, Jump_001_7a71                          ; $7e03: $d2 $71 $7a

    ret                                           ; $7e06: $c9


    call Call_001_7966                            ; $7e07: $cd $66 $79
    xor a                                         ; $7e0a: $af
    ld [$c238], a                                 ; $7e0b: $ea $38 $c2
    call Call_001_7aff                            ; $7e0e: $cd $ff $7a
    jr nc, jr_001_7e1e                            ; $7e11: $30 $0b

    call Call_001_7a4e                            ; $7e13: $cd $4e $7a
    jr c, jr_001_7e1e                             ; $7e16: $38 $06

    ld l, $0f                                     ; $7e18: $2e $0f
    ld a, [hl]                                    ; $7e1a: $7e
    jp Jump_001_7a71                              ; $7e1b: $c3 $71 $7a


jr_001_7e1e:
    ld l, $04                                     ; $7e1e: $2e $04
    ld a, [hl]                                    ; $7e20: $7e
    xor $01                                       ; $7e21: $ee $01
    ld [hl], a                                    ; $7e23: $77
    jr jr_001_7df4                                ; $7e24: $18 $ce

    call Call_001_7966                            ; $7e26: $cd $66 $79
    xor a                                         ; $7e29: $af
    ld [$c238], a                                 ; $7e2a: $ea $38 $c2
    call $7b53                                    ; $7e2d: $cd $53 $7b
    jr nc, jr_001_7e38                            ; $7e30: $30 $06

    call Call_001_7a2b                            ; $7e32: $cd $2b $7a
    jp nc, $7a8d                                  ; $7e35: $d2 $8d $7a

jr_001_7e38:
    call Call_001_7e3e                            ; $7e38: $cd $3e $7e
    jp $7a8d                                      ; $7e3b: $c3 $8d $7a


Call_001_7e3e:
    call Call_001_7e73                            ; $7e3e: $cd $73 $7e
    jr nc, jr_001_7e48                            ; $7e41: $30 $05

    call Call_001_7a2b                            ; $7e43: $cd $2b $7a
    jr nc, jr_001_7e56                            ; $7e46: $30 $0e

jr_001_7e48:
    call Call_001_7e81                            ; $7e48: $cd $81 $7e
    call $7b53                                    ; $7e4b: $cd $53 $7b
    jr nc, jr_001_7e81                            ; $7e4e: $30 $31

    call Call_001_7a2b                            ; $7e50: $cd $2b $7a
    jr c, jr_001_7e81                             ; $7e53: $38 $2c

    ret                                           ; $7e55: $c9


jr_001_7e56:
    call Call_001_7e85                            ; $7e56: $cd $85 $7e
    jr nc, jr_001_7e60                            ; $7e59: $30 $05

    call Call_001_7a2b                            ; $7e5b: $cd $2b $7a
    jr nc, jr_001_7e6e                            ; $7e5e: $30 $0e

jr_001_7e60:
    call Call_001_7e93                            ; $7e60: $cd $93 $7e
    call $7b53                                    ; $7e63: $cd $53 $7b
    jr nc, jr_001_7e93                            ; $7e66: $30 $2b

    call Call_001_7a2b                            ; $7e68: $cd $2b $7a
    jr c, jr_001_7e93                             ; $7e6b: $38 $26

    ret                                           ; $7e6d: $c9


jr_001_7e6e:
    ld l, $0f                                     ; $7e6e: $2e $0f
    inc [hl]                                      ; $7e70: $34
    inc [hl]                                      ; $7e71: $34
    ret                                           ; $7e72: $c9


Call_001_7e73:
    ld l, $0f                                     ; $7e73: $2e $0f
    ld a, [hl]                                    ; $7e75: $7e
    and $03                                       ; $7e76: $e6 $03
    rst RST_00                                    ; $7e78: $c7
    rst RST_28                                    ; $7e79: $ef
    ld b, l                                       ; $7e7a: $45
    db $fd                                        ; $7e7b: $fd
    ld b, l                                       ; $7e7c: $45
    add sp, $45                                   ; $7e7d: $e8 $45
    or $45                                        ; $7e7f: $f6 $45

Call_001_7e81:
jr_001_7e81:
    ld l, $0f                                     ; $7e81: $2e $0f
    inc [hl]                                      ; $7e83: $34
    ret                                           ; $7e84: $c9


Call_001_7e85:
    ld l, $0f                                     ; $7e85: $2e $0f
    ld a, [hl]                                    ; $7e87: $7e
    and $03                                       ; $7e88: $e6 $03
    rst RST_00                                    ; $7e8a: $c7
    db $fd                                        ; $7e8b: $fd
    ld b, l                                       ; $7e8c: $45
    add sp, $45                                   ; $7e8d: $e8 $45
    or $45                                        ; $7e8f: $f6 $45
    rst RST_28                                    ; $7e91: $ef
    ld b, l                                       ; $7e92: $45

Call_001_7e93:
jr_001_7e93:
    ld l, $0f                                     ; $7e93: $2e $0f
    dec [hl]                                      ; $7e95: $35
    ret                                           ; $7e96: $c9


    push hl                                       ; $7e97: $e5
    ld a, $0f                                     ; $7e98: $3e $0f
    add l                                         ; $7e9a: $85
    ld l, a                                       ; $7e9b: $6f
    ld [hl], $01                                  ; $7e9c: $36 $01
    pop hl                                        ; $7e9e: $e1
    ret                                           ; $7e9f: $c9


    call Call_001_7966                            ; $7ea0: $cd $66 $79
    xor a                                         ; $7ea3: $af
    ld [$c238], a                                 ; $7ea4: $ea $38 $c2
    call Call_001_7b37                            ; $7ea7: $cd $37 $7b
    jr nc, jr_001_7eb4                            ; $7eaa: $30 $08

    call Call_001_7a4e                            ; $7eac: $cd $4e $7a
    jr c, jr_001_7eb4                             ; $7eaf: $38 $03

    jp Jump_001_7ad5                              ; $7eb1: $c3 $d5 $7a


jr_001_7eb4:
    ld l, $0f                                     ; $7eb4: $2e $0f
    ld a, [hl]                                    ; $7eb6: $7e
    inc a                                         ; $7eb7: $3c
    inc a                                         ; $7eb8: $3c
    and $03                                       ; $7eb9: $e6 $03
    ld [hl], a                                    ; $7ebb: $77
    call Call_001_7b37                            ; $7ebc: $cd $37 $7b
    ret nc                                        ; $7ebf: $d0

    call Call_001_7a4e                            ; $7ec0: $cd $4e $7a
    jp nc, Jump_001_7ad5                          ; $7ec3: $d2 $d5 $7a

    ret                                           ; $7ec6: $c9


    ret                                           ; $7ec7: $c9


    call Call_001_7966                            ; $7ec8: $cd $66 $79
    xor a                                         ; $7ecb: $af
    ld [$c238], a                                 ; $7ecc: $ea $38 $c2
    ld l, $0f                                     ; $7ecf: $2e $0f
    dec [hl]                                      ; $7ed1: $35
    ld a, $02                                     ; $7ed2: $3e $02
    ld [$c24c], a                                 ; $7ed4: $ea $4c $c2
    call Call_001_7b37                            ; $7ed7: $cd $37 $7b
    ret nc                                        ; $7eda: $d0

    ld a, [$c241]                                 ; $7edb: $fa $41 $c2
    and $0f                                       ; $7ede: $e6 $0f
    cp $02                                        ; $7ee0: $fe $02
    ret nz                                        ; $7ee2: $c0

    ld a, [$c24c]                                 ; $7ee3: $fa $4c $c2
    and $0f                                       ; $7ee6: $e6 $0f
    cp $02                                        ; $7ee8: $fe $02
    jp z, Jump_001_7ad5                           ; $7eea: $ca $d5 $7a

    ret                                           ; $7eed: $c9


    push hl                                       ; $7eee: $e5
    ld a, $0f                                     ; $7eef: $3e $0f
    add l                                         ; $7ef1: $85
    ld l, a                                       ; $7ef2: $6f
    ld [hl], $01                                  ; $7ef3: $36 $01
    pop hl                                        ; $7ef5: $e1
    ret                                           ; $7ef6: $c9


    call Call_001_7966                            ; $7ef7: $cd $66 $79
    xor a                                         ; $7efa: $af
    ld [$c238], a                                 ; $7efb: $ea $38 $c2
    call Call_001_7b45                            ; $7efe: $cd $45 $7b
    jr nc, jr_001_7f09                            ; $7f01: $30 $06

    call Call_001_7a39                            ; $7f03: $cd $39 $7a
    jp nc, Jump_001_7ae3                          ; $7f06: $d2 $e3 $7a

jr_001_7f09:
    ld l, $0f                                     ; $7f09: $2e $0f
    ld a, [hl]                                    ; $7f0b: $7e
    inc a                                         ; $7f0c: $3c
    inc a                                         ; $7f0d: $3c
    and $03                                       ; $7f0e: $e6 $03
    ld [hl], a                                    ; $7f10: $77
    jp Jump_001_7ae3                              ; $7f11: $c3 $e3 $7a


    call Call_001_7966                            ; $7f14: $cd $66 $79
    xor a                                         ; $7f17: $af
    ld [$c238], a                                 ; $7f18: $ea $38 $c2
    ld l, $0f                                     ; $7f1b: $2e $0f
    inc [hl]                                      ; $7f1d: $34
    call Call_001_7b45                            ; $7f1e: $cd $45 $7b
    ret nc                                        ; $7f21: $d0

    call Call_001_7a39                            ; $7f22: $cd $39 $7a
    ret c                                         ; $7f25: $d8

    jp Jump_001_7ae3                              ; $7f26: $c3 $e3 $7a


    call Call_001_7966                            ; $7f29: $cd $66 $79
    xor a                                         ; $7f2c: $af
    ld [$c238], a                                 ; $7f2d: $ea $38 $c2
    ld l, $0f                                     ; $7f30: $2e $0f
    inc [hl]                                      ; $7f32: $34
    call Call_001_7b61                            ; $7f33: $cd $61 $7b
    ret nc                                        ; $7f36: $d0

    call Call_001_7a39                            ; $7f37: $cd $39 $7a
    ret c                                         ; $7f3a: $d8

    jp Jump_001_7af1                              ; $7f3b: $c3 $f1 $7a


    push hl                                       ; $7f3e: $e5
    ld a, $0f                                     ; $7f3f: $3e $0f
    add l                                         ; $7f41: $85
    ld l, a                                       ; $7f42: $6f
    ld [hl], $01                                  ; $7f43: $36 $01
    pop hl                                        ; $7f45: $e1
    ret                                           ; $7f46: $c9


    call Call_001_7966                            ; $7f47: $cd $66 $79
    xor a                                         ; $7f4a: $af
    ld [$c238], a                                 ; $7f4b: $ea $38 $c2
    call Call_001_7a66                            ; $7f4e: $cd $66 $7a
    call Call_001_7b29                            ; $7f51: $cd $29 $7b
    jr nc, jr_001_7f61                            ; $7f54: $30 $0b

    call Call_001_7a39                            ; $7f56: $cd $39 $7a
    jr c, jr_001_7f61                             ; $7f59: $38 $06

    ld l, $0f                                     ; $7f5b: $2e $0f
    ld a, [hl]                                    ; $7f5d: $7e
    jp Jump_001_7ac7                              ; $7f5e: $c3 $c7 $7a


jr_001_7f61:
    ld l, $0f                                     ; $7f61: $2e $0f
    ld a, [hl]                                    ; $7f63: $7e
    inc a                                         ; $7f64: $3c
    inc a                                         ; $7f65: $3c
    and $03                                       ; $7f66: $e6 $03
    ld [hl], a                                    ; $7f68: $77
    call Call_001_7a66                            ; $7f69: $cd $66 $7a
    call Call_001_7b29                            ; $7f6c: $cd $29 $7b
    ret nc                                        ; $7f6f: $d0

    call Call_001_7a39                            ; $7f70: $cd $39 $7a
    jp nc, Jump_001_7ac7                          ; $7f73: $d2 $c7 $7a

    ret                                           ; $7f76: $c9


    call Call_001_7966                            ; $7f77: $cd $66 $79
    xor a                                         ; $7f7a: $af
    ld [$c238], a                                 ; $7f7b: $ea $38 $c2
    ld c, $03                                     ; $7f7e: $0e $03

jr_001_7f80:
    ld l, $0f                                     ; $7f80: $2e $0f
    inc [hl]                                      ; $7f82: $34
    push bc                                       ; $7f83: $c5
    call Call_001_7b1b                            ; $7f84: $cd $1b $7b
    jr nc, jr_001_7f92                            ; $7f87: $30 $09

    call Call_001_7a4e                            ; $7f89: $cd $4e $7a
    jr c, jr_001_7f92                             ; $7f8c: $38 $04

    pop bc                                        ; $7f8e: $c1
    jp $7a7f                                      ; $7f8f: $c3 $7f $7a


jr_001_7f92:
    pop bc                                        ; $7f92: $c1
    dec c                                         ; $7f93: $0d
    jr nz, jr_001_7f80                            ; $7f94: $20 $ea

    ret                                           ; $7f96: $c9


    call Call_001_7966                            ; $7f97: $cd $66 $79
    xor a                                         ; $7f9a: $af
    ld [$c238], a                                 ; $7f9b: $ea $38 $c2
    ld l, $0f                                     ; $7f9e: $2e $0f
    ld a, [hl]                                    ; $7fa0: $7e
    inc a                                         ; $7fa1: $3c
    ld [hl], a                                    ; $7fa2: $77
    and $03                                       ; $7fa3: $e6 $03
    rst RST_00                                    ; $7fa5: $c7
    or b                                          ; $7fa6: $b0
    ld b, l                                       ; $7fa7: $45
    or b                                          ; $7fa8: $b0
    ld b, l                                       ; $7fa9: $45
    cp [hl]                                       ; $7faa: $be
    ld b, l                                       ; $7fab: $45
    cp [hl]                                       ; $7fac: $be
    ld b, l                                       ; $7fad: $45
    push hl                                       ; $7fae: $e5
    ld a, $06                                     ; $7faf: $3e $06
    add l                                         ; $7fb1: $85
    ld l, a                                       ; $7fb2: $6f
    ld b, [hl]                                    ; $7fb3: $46
    ld a, $08                                     ; $7fb4: $3e $08
    rst RST_28                                    ; $7fb6: $ef
    ld [hl], b                                    ; $7fb7: $70
    pop hl                                        ; $7fb8: $e1
    ret                                           ; $7fb9: $c9


    ld l, $04                                     ; $7fba: $2e $04
    ld a, [hl]                                    ; $7fbc: $7e
    cp $06                                        ; $7fbd: $fe $06
    jr nz, jr_001_7fcf                            ; $7fbf: $20 $0e

    ld l, $06                                     ; $7fc1: $2e $06
    ld a, [hl]                                    ; $7fc3: $7e
    ld l, $0e                                     ; $7fc4: $2e $0e
    cp [hl]                                       ; $7fc6: $be
    jr z, jr_001_7fd2                             ; $7fc7: $28 $09

    ld l, $04                                     ; $7fc9: $2e $04
    dec [hl]                                      ; $7fcb: $35
    dec [hl]                                      ; $7fcc: $35
    inc hl                                        ; $7fcd: $23
    inc [hl]                                      ; $7fce: $34

jr_001_7fcf:
    call Call_001_7966                            ; $7fcf: $cd $66 $79

jr_001_7fd2:
    xor a                                         ; $7fd2: $af
    ld [$c238], a                                 ; $7fd3: $ea $38 $c2
    ret                                           ; $7fd6: $c9


    call Call_001_7966                            ; $7fd7: $cd $66 $79
    xor a                                         ; $7fda: $af
    ld [$c238], a                                 ; $7fdb: $ea $38 $c2
    ld l, $0f                                     ; $7fde: $2e $0f
    inc [hl]                                      ; $7fe0: $34
    jp Jump_001_7ab1                              ; $7fe1: $c3 $b1 $7a


    call Call_001_7966                            ; $7fe4: $cd $66 $79
    xor a                                         ; $7fe7: $af
    ld [$c238], a                                 ; $7fe8: $ea $38 $c2
    ld l, $0f                                     ; $7feb: $2e $0f
    inc [hl]                                      ; $7fed: $34
    jp Jump_001_7ae3                              ; $7fee: $c3 $e3 $7a


    rst RST_38                                    ; $7ff1: $ff
    rst RST_38                                    ; $7ff2: $ff
    rst RST_38                                    ; $7ff3: $ff
    rst RST_38                                    ; $7ff4: $ff
    rst RST_38                                    ; $7ff5: $ff
    rst RST_38                                    ; $7ff6: $ff
    rst RST_38                                    ; $7ff7: $ff
    rst RST_38                                    ; $7ff8: $ff
    rst RST_38                                    ; $7ff9: $ff
    rst RST_38                                    ; $7ffa: $ff
    rst RST_38                                    ; $7ffb: $ff
    rst RST_38                                    ; $7ffc: $ff
    rst RST_38                                    ; $7ffd: $ff
    rst RST_38                                    ; $7ffe: $ff
    rst RST_38                                    ; $7fff: $ff
