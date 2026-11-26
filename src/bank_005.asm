; Disassembly of "Cave Noire (Japan).gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $005", ROMX[$4000], BANK[$5]

    ld bc, $407c                                  ; $4000: $01 $7c $40
    add b                                         ; $4003: $80
    ld bc, $0100                                  ; $4004: $01 $00 $01
    xor [hl]                                      ; $4007: $ae
    ld b, l                                       ; $4008: $45
    add b                                         ; $4009: $80
    ld bc, $0100                                  ; $400a: $01 $00 $01
    rra                                           ; $400d: $1f
    ld c, d                                       ; $400e: $4a
    add b                                         ; $400f: $80
    ld bc, $0100                                  ; $4010: $01 $00 $01
    ld [hl], d                                    ; $4013: $72
    ld c, a                                       ; $4014: $4f
    add b                                         ; $4015: $80
    ld bc, $0100                                  ; $4016: $01 $00 $01
    ld b, d                                       ; $4019: $42
    ld d, [hl]                                    ; $401a: $56
    xor h                                         ; $401b: $ac
    nop                                           ; $401c: $00
    ld bc, $565b                                  ; $401d: $01 $5b $56
    xor b                                         ; $4020: $a8
    nop                                           ; $4021: $00
    ld bc, $567b                                  ; $4022: $01 $7b $56
    ret nz                                        ; $4025: $c0

    nop                                           ; $4026: $00
    ld bc, $572a                                  ; $4027: $01 $2a $57
    call z, $0300                                 ; $402a: $cc $00 $03
    ld b, c                                       ; $402d: $41
    ld e, b                                       ; $402e: $58
    rst RST_18                                    ; $402f: $df
    ld bc, $0101                                  ; $4030: $01 $01 $01
    rlca                                          ; $4033: $07
    ld d, l                                       ; $4034: $55
    dec b                                         ; $4035: $05
    ld bc, $0100                                  ; $4036: $01 $00 $01
    ld d, c                                       ; $4039: $51
    ld e, b                                       ; $403a: $58
    ldh [rP1], a                                  ; $403b: $e0 $00
    nop                                           ; $403d: $00
    ld bc, $58d1                                  ; $403e: $01 $d1 $58
    ldh [rP1], a                                  ; $4041: $e0 $00
    nop                                           ; $4043: $00
    ld bc, $572a                                  ; $4044: $01 $2a $57
    ldh [rP1], a                                  ; $4047: $e0 $00
    nop                                           ; $4049: $00
    ld bc, $565b                                  ; $404a: $01 $5b $56
    ret nc                                        ; $404d: $d0

    nop                                           ; $404e: $00
    inc bc                                        ; $404f: $03
    ld b, c                                       ; $4050: $41
    ld e, b                                       ; $4051: $58
    rst RST_18                                    ; $4052: $df
    ld bc, $0001                                  ; $4053: $01 $01 $00
    db $db                                        ; $4056: $db
    ld e, c                                       ; $4057: $59
    ld d, b                                       ; $4058: $50
    ld e, c                                       ; $4059: $59
    add d                                         ; $405a: $82
    ld e, c                                       ; $405b: $59
    and a                                         ; $405c: $a7
    ld e, c                                       ; $405d: $59
    ld bc, $5a15                                  ; $405e: $01 $15 $5a
    ldh a, [rP1]                                  ; $4061: $f0 $00
    nop                                           ; $4063: $00
    ld bc, $5a84                                  ; $4064: $01 $84 $5a
    ldh a, [rP1]                                  ; $4067: $f0 $00
    nop                                           ; $4069: $00
    ld bc, $5afb                                  ; $406a: $01 $fb $5a
    ldh a, [rP1]                                  ; $406d: $f0 $00
    nop                                           ; $406f: $00
    ld bc, $5b48                                  ; $4070: $01 $48 $5b
    ldh a, [rP1]                                  ; $4073: $f0 $00
    nop                                           ; $4075: $00
    ld bc, $5bfd                                  ; $4076: $01 $fd $5b
    ldh a, [rP1]                                  ; $4079: $f0 $00
    nop                                           ; $407b: $00
    stop                                          ; $407c: $10 $00
    inc bc                                        ; $407e: $03
    rst RST_38                                    ; $407f: $ff
    sbc l                                         ; $4080: $9d
    add c                                         ; $4081: $81
    rst RST_38                                    ; $4082: $ff
    cp a                                          ; $4083: $bf
    ld a, [$f8bc]                                 ; $4084: $fa $bc $f8
    or b                                          ; $4087: $b0
    pop hl                                        ; $4088: $e1
    or b                                          ; $4089: $b0
    di                                            ; $408a: $f3
    and b                                         ; $408b: $a0
    rst RST_20                                    ; $408c: $e7
    ldh [$ffe6], a                                ; $408d: $e0 $e6
    pop hl                                        ; $408f: $e1
    and $a1                                       ; $4090: $e6 $a1
    and $a1                                       ; $4092: $e6 $a1
    and $a1                                       ; $4094: $e6 $a1
    and $a1                                       ; $4096: $e6 $a1
    and $a1                                       ; $4098: $e6 $a1
    and $a1                                       ; $409a: $e6 $a1
    and $e1                                       ; $409c: $e6 $e1
    inc bc                                        ; $409e: $03
    rst RST_38                                    ; $409f: $ff
    add e                                         ; $40a0: $83
    add c                                         ; $40a1: $81
    rst RST_38                                    ; $40a2: $ff
    rst RST_38                                    ; $40a3: $ff
    inc b                                         ; $40a4: $04
    nop                                           ; $40a5: $00
    adc [hl]                                      ; $40a6: $8e
    rst RST_38                                    ; $40a7: $ff
    nop                                           ; $40a8: $00
    rst RST_38                                    ; $40a9: $ff
    nop                                           ; $40aa: $00
    nop                                           ; $40ab: $00
    rst RST_38                                    ; $40ac: $ff
    ld a, a                                       ; $40ad: $7f
    rst RST_38                                    ; $40ae: $ff
    rst RST_38                                    ; $40af: $ff
    ret z                                         ; $40b0: $c8

    db $ec                                        ; $40b1: $ec
    cp e                                          ; $40b2: $bb
    call c, Call_000_03bb                         ; $40b3: $dc $bb $03
    rst RST_38                                    ; $40b6: $ff
    add l                                         ; $40b7: $85
    adc l                                         ; $40b8: $8d
    rst RST_08                                    ; $40b9: $cf
    cp e                                          ; $40ba: $bb
    rst RST_08                                    ; $40bb: $cf
    cp a                                          ; $40bc: $bf
    inc bc                                        ; $40bd: $03
    rst RST_38                                    ; $40be: $ff
    add l                                         ; $40bf: $85
    ld [$fb0c], sp                                ; $40c0: $08 $0c $fb
    inc c                                         ; $40c3: $0c
    ei                                            ; $40c4: $fb
    inc bc                                        ; $40c5: $03
    rst RST_38                                    ; $40c6: $ff
    add e                                         ; $40c7: $83
    ld bc, $7f81                                  ; $40c8: $01 $81 $7f
    dec b                                         ; $40cb: $05
    rst RST_38                                    ; $40cc: $ff
    adc l                                         ; $40cd: $8d
    add c                                         ; $40ce: $81
    rst RST_38                                    ; $40cf: $ff
    rst RST_38                                    ; $40d0: $ff
    db $10                                        ; $40d1: $10
    inc b                                         ; $40d2: $04
    db $10                                        ; $40d3: $10
    inc b                                         ; $40d4: $04
    rst RST_20                                    ; $40d5: $e7
    inc d                                         ; $40d6: $14
    rst RST_20                                    ; $40d7: $e7
    inc d                                         ; $40d8: $14
    inc c                                         ; $40d9: $0c
    rst RST_30                                    ; $40da: $f7
    inc bc                                        ; $40db: $03
    rst RST_38                                    ; $40dc: $ff
    add h                                         ; $40dd: $84
    add c                                         ; $40de: $81
    rst RST_38                                    ; $40df: $ff
    rst RST_38                                    ; $40e0: $ff
    inc bc                                        ; $40e1: $03
    inc bc                                        ; $40e2: $03
    nop                                           ; $40e3: $00
    adc [hl]                                      ; $40e4: $8e
    db $fc                                        ; $40e5: $fc
    nop                                           ; $40e6: $00
    cp $00                                        ; $40e7: $fe $00
    ld bc, $fffe                                  ; $40e9: $01 $fe $ff
    cp $ff                                        ; $40ec: $fe $ff
    dec bc                                        ; $40ee: $0b
    rrca                                          ; $40ef: $0f
    db $fd                                        ; $40f0: $fd
    dec bc                                        ; $40f1: $0b
    db $fd                                        ; $40f2: $fd
    inc bc                                        ; $40f3: $03
    rst RST_38                                    ; $40f4: $ff
    add l                                         ; $40f5: $85
    ld sp, $5df3                                  ; $40f6: $31 $f3 $5d
    di                                            ; $40f9: $f3
    db $fd                                        ; $40fa: $fd
    inc bc                                        ; $40fb: $03
    rst RST_38                                    ; $40fc: $ff
    rst RST_38                                    ; $40fd: $ff
    add c                                         ; $40fe: $81
    rst RST_38                                    ; $40ff: $ff
    db $fd                                        ; $4100: $fd
    ccf                                           ; $4101: $3f
    db $fd                                        ; $4102: $fd
    rst RST_08                                    ; $4103: $cf
    dec a                                         ; $4104: $3d
    ld l, a                                       ; $4105: $6f
    dec e                                         ; $4106: $1d
    ld [hl], a                                    ; $4107: $77
    dec c                                         ; $4108: $0d
    scf                                           ; $4109: $37
    rrca                                          ; $410a: $0f
    scf                                           ; $410b: $37
    rrca                                          ; $410c: $0f
    scf                                           ; $410d: $37
    dec c                                         ; $410e: $0d
    scf                                           ; $410f: $37
    dec c                                         ; $4110: $0d
    scf                                           ; $4111: $37
    dec c                                         ; $4112: $0d
    scf                                           ; $4113: $37
    dec c                                         ; $4114: $0d
    scf                                           ; $4115: $37
    dec c                                         ; $4116: $0d
    scf                                           ; $4117: $37
    dec c                                         ; $4118: $0d
    scf                                           ; $4119: $37
    rrca                                          ; $411a: $0f
    and $e1                                       ; $411b: $e6 $e1
    and $a1                                       ; $411d: $e6 $a1
    and $a1                                       ; $411f: $e6 $a1
    ld hl, sp-$59                                 ; $4121: $f8 $a7
    pop hl                                        ; $4123: $e1
    and b                                         ; $4124: $a0
    rst RST_20                                    ; $4125: $e7
    cp a                                          ; $4126: $bf
    and $a1                                       ; $4127: $e6 $a1
    and $e1                                       ; $4129: $e6 $e1
    rst RST_08                                    ; $412b: $cf
    cp c                                          ; $412c: $b9
    call $cdbb                                    ; $412d: $cd $bb $cd
    cp e                                          ; $4130: $bb
    call $fdbb                                    ; $4131: $cd $bb $fd
    ei                                            ; $4134: $fb
    db $fd                                        ; $4135: $fd
    adc e                                         ; $4136: $8b
    call $cfbb                                    ; $4137: $cd $bb $cf
    cp a                                          ; $413a: $bf
    di                                            ; $413b: $f3
    sbc l                                         ; $413c: $9d
    or e                                          ; $413d: $b3
    db $dd                                        ; $413e: $dd
    or e                                          ; $413f: $b3
    db $dd                                        ; $4140: $dd
    or e                                          ; $4141: $b3
    db $dd                                        ; $4142: $dd
    cp a                                          ; $4143: $bf
    rst RST_18                                    ; $4144: $df
    cp a                                          ; $4145: $bf
    pop de                                        ; $4146: $d1
    or e                                          ; $4147: $b3
    db $dd                                        ; $4148: $dd
    di                                            ; $4149: $f3
    db $fd                                        ; $414a: $fd
    scf                                           ; $414b: $37
    rrca                                          ; $414c: $0f
    scf                                           ; $414d: $37
    dec c                                         ; $414e: $0d
    rst RST_00                                    ; $414f: $c7
    dec a                                         ; $4150: $3d
    rrca                                          ; $4151: $0f
    dec b                                         ; $4152: $05
    ccf                                           ; $4153: $3f
    db $fd                                        ; $4154: $fd
    scf                                           ; $4155: $37
    dec c                                         ; $4156: $0d
    scf                                           ; $4157: $37
    dec c                                         ; $4158: $0d
    scf                                           ; $4159: $37
    rrca                                          ; $415a: $0f
    and $e1                                       ; $415b: $e6 $e1
    and $a1                                       ; $415d: $e6 $a1
    and $a1                                       ; $415f: $e6 $a1
    and $a1                                       ; $4161: $e6 $a1
    and $a1                                       ; $4163: $e6 $a1
    rst RST_20                                    ; $4165: $e7
    and b                                         ; $4166: $a0
    di                                            ; $4167: $f3
    and b                                         ; $4168: $a0
    pop af                                        ; $4169: $f1
    ldh [$ffe8], a                                ; $416a: $e0 $e8
    ldh a, [$ffee]                                ; $416c: $f0 $ee
    or b                                          ; $416e: $b0
    rst RST_30                                    ; $416f: $f7
    cp b                                          ; $4170: $b8
    pop af                                        ; $4171: $f1
    cp [hl]                                       ; $4172: $be
    db $fc                                        ; $4173: $fc
    cp a                                          ; $4174: $bf
    rst RST_38                                    ; $4175: $ff
    cp a                                          ; $4176: $bf
    rst RST_38                                    ; $4177: $ff
    add c                                         ; $4178: $81
    rst RST_38                                    ; $4179: $ff
    rst RST_38                                    ; $417a: $ff
    rst RST_08                                    ; $417b: $cf
    cp c                                          ; $417c: $b9
    adc [hl]                                      ; $417d: $8e
    rst RST_08                                    ; $417e: $cf
    cp e                                          ; $417f: $bb
    rst RST_08                                    ; $4180: $cf
    cp l                                          ; $4181: $bd
    rst RST_08                                    ; $4182: $cf
    cp a                                          ; $4183: $bf
    db $fc                                        ; $4184: $fc
    ei                                            ; $4185: $fb
    db $ec                                        ; $4186: $ec
    cp e                                          ; $4187: $bb
    ld a, a                                       ; $4188: $7f
    ret z                                         ; $4189: $c8

    rst RST_38                                    ; $418a: $ff
    ccf                                           ; $418b: $3f
    inc b                                         ; $418c: $04
    nop                                           ; $418d: $00
    add l                                         ; $418e: $85
    rst RST_38                                    ; $418f: $ff
    nop                                           ; $4190: $00
    rst RST_38                                    ; $4191: $ff
    nop                                           ; $4192: $00
    nop                                           ; $4193: $00
    inc b                                         ; $4194: $04
    rst RST_38                                    ; $4195: $ff
    and c                                         ; $4196: $a1
    add c                                         ; $4197: $81
    rst RST_38                                    ; $4198: $ff
    rst RST_38                                    ; $4199: $ff
    di                                            ; $419a: $f3
    sbc l                                         ; $419b: $9d
    di                                            ; $419c: $f3
    ld e, l                                       ; $419d: $5d
    di                                            ; $419e: $f3
    dec a                                         ; $419f: $3d
    di                                            ; $41a0: $f3
    db $fd                                        ; $41a1: $fd
    rrca                                          ; $41a2: $0f
    rst RST_38                                    ; $41a3: $ff
    rrca                                          ; $41a4: $0f
    db $fd                                        ; $41a5: $fd
    rst RST_38                                    ; $41a6: $ff
    dec bc                                        ; $41a7: $0b
    cp $fe                                        ; $41a8: $fe $fe
    ld [hl], a                                    ; $41aa: $77
    rrca                                          ; $41ab: $0f
    rst RST_30                                    ; $41ac: $f7
    dec c                                         ; $41ad: $0d
    rst RST_28                                    ; $41ae: $ef
    dec e                                         ; $41af: $1d
    rst RST_08                                    ; $41b0: $cf
    dec a                                         ; $41b1: $3d
    ccf                                           ; $41b2: $3f
    db $fd                                        ; $41b3: $fd
    rst RST_38                                    ; $41b4: $ff
    db $fd                                        ; $41b5: $fd
    rst RST_38                                    ; $41b6: $ff
    add c                                         ; $41b7: $81
    inc b                                         ; $41b8: $04
    rst RST_38                                    ; $41b9: $ff
    sbc b                                         ; $41ba: $98
    add c                                         ; $41bb: $81
    ld a, a                                       ; $41bc: $7f
    rst RST_38                                    ; $41bd: $ff
    ld bc, $ffff                                  ; $41be: $01 $ff $ff
    inc c                                         ; $41c1: $0c
    ei                                            ; $41c2: $fb
    inc c                                         ; $41c3: $0c
    ei                                            ; $41c4: $fb
    rst RST_38                                    ; $41c5: $ff
    ld [$ffff], sp                                ; $41c6: $08 $ff $ff
    db $10                                        ; $41c9: $10
    inc b                                         ; $41ca: $04
    db $10                                        ; $41cb: $10
    inc b                                         ; $41cc: $04
    rst RST_20                                    ; $41cd: $e7
    inc d                                         ; $41ce: $14
    rst RST_20                                    ; $41cf: $e7
    inc d                                         ; $41d0: $14
    inc c                                         ; $41d1: $0c
    rst RST_30                                    ; $41d2: $f7
    inc bc                                        ; $41d3: $03
    rst RST_38                                    ; $41d4: $ff
    ret nc                                        ; $41d5: $d0

    add c                                         ; $41d6: $81
    rst RST_38                                    ; $41d7: $ff
    rst RST_38                                    ; $41d8: $ff
    scf                                           ; $41d9: $37
    rrca                                          ; $41da: $0f
    dec e                                         ; $41db: $1d
    inc bc                                        ; $41dc: $03
    rst RST_08                                    ; $41dd: $cf
    ld bc, $01ce                                  ; $41de: $01 $ce $01
    ld h, $c1                                     ; $41e1: $26 $c1
    add $e1                                       ; $41e3: $c6 $e1
    and $e1                                       ; $41e5: $e6 $e1
    and $e1                                       ; $41e7: $e6 $e1
    rst RST_38                                    ; $41e9: $ff
    rst RST_38                                    ; $41ea: $ff
    add e                                         ; $41eb: $83
    ld a, a                                       ; $41ec: $7f
    db $fd                                        ; $41ed: $fd
    rlca                                          ; $41ee: $07
    db $fd                                        ; $41ef: $fd
    ei                                            ; $41f0: $fb
    dec e                                         ; $41f1: $1d
    ei                                            ; $41f2: $fb
    dec l                                         ; $41f3: $2d
    ei                                            ; $41f4: $fb
    call $cf7b                                    ; $41f5: $cd $7b $cf
    cp a                                          ; $41f8: $bf
    and $e1                                       ; $41f9: $e6 $e1
    and [hl]                                      ; $41fb: $a6
    pop hl                                        ; $41fc: $e1
    adc $c1                                       ; $41fd: $ce $c1
    ld c, $01                                     ; $41ff: $0e $01
    ld a, $01                                     ; $4201: $3e $01
    db $fd                                        ; $4203: $fd
    inc bc                                        ; $4204: $03
    ld sp, hl                                     ; $4205: $f9
    rlca                                          ; $4206: $07
    rlca                                          ; $4207: $07
    rst RST_38                                    ; $4208: $ff
    rst RST_08                                    ; $4209: $cf
    cp c                                          ; $420a: $b9
    call Call_000_2d7b                            ; $420b: $cd $7b $2d
    ei                                            ; $420e: $fb
    dec e                                         ; $420f: $1d
    ei                                            ; $4210: $fb
    db $fd                                        ; $4211: $fd
    ei                                            ; $4212: $fb
    db $fd                                        ; $4213: $fd
    rlca                                          ; $4214: $07
    add e                                         ; $4215: $83
    ld a, a                                       ; $4216: $7f
    rst RST_38                                    ; $4217: $ff
    rst RST_38                                    ; $4218: $ff
    di                                            ; $4219: $f3
    sbc l                                         ; $421a: $9d
    or e                                          ; $421b: $b3
    sbc $b4                                       ; $421c: $de $b4
    rst RST_18                                    ; $421e: $df
    cp b                                          ; $421f: $b8
    rst RST_18                                    ; $4220: $df
    cp a                                          ; $4221: $bf
    rst RST_18                                    ; $4222: $df
    cp a                                          ; $4223: $bf
    pop hl                                        ; $4224: $e1
    pop bc                                        ; $4225: $c1
    inc bc                                        ; $4226: $03
    rst RST_38                                    ; $4227: $ff
    adc a                                         ; $4228: $8f
    scf                                           ; $4229: $37
    rrca                                          ; $422a: $0f
    scf                                           ; $422b: $37
    rrca                                          ; $422c: $0f
    adc e                                         ; $422d: $8b
    rlca                                          ; $422e: $07
    add b                                         ; $422f: $80
    nop                                           ; $4230: $00
    ld h, b                                       ; $4231: $60
    add b                                         ; $4232: $80
    cp a                                          ; $4233: $bf
    ret nz                                        ; $4234: $c0

    sbc a                                         ; $4235: $9f
    ldh [$ffe0], a                                ; $4236: $e0 $e0
    inc bc                                        ; $4238: $03
    rst RST_38                                    ; $4239: $ff
    and e                                         ; $423a: $a3
    pop bc                                        ; $423b: $c1
    rst RST_38                                    ; $423c: $ff
    cp a                                          ; $423d: $bf
    pop hl                                        ; $423e: $e1
    cp a                                          ; $423f: $bf
    rst RST_18                                    ; $4240: $df
    cp h                                          ; $4241: $bc
    db $db                                        ; $4242: $db
    cp h                                          ; $4243: $bc
    rst RST_10                                    ; $4244: $d7
    or e                                          ; $4245: $b3
    sbc $f3                                       ; $4246: $de $f3
    db $fd                                        ; $4248: $fd
    ldh [$ffc0], a                                ; $4249: $e0 $c0
    add b                                         ; $424b: $80
    add b                                         ; $424c: $80
    adc a                                         ; $424d: $8f
    nop                                           ; $424e: $00
    rra                                           ; $424f: $1f
    nop                                           ; $4250: $00
    jr c, jr_005_425a                             ; $4251: $38 $07

    inc sp                                        ; $4253: $33
    rrca                                          ; $4254: $0f
    scf                                           ; $4255: $37
    rrca                                          ; $4256: $0f
    scf                                           ; $4257: $37
    rrca                                          ; $4258: $0f
    db $e3                                        ; $4259: $e3

jr_005_425a:
    inc b                                         ; $425a: $04
    add b                                         ; $425b: $80
    nop                                           ; $425c: $00
    add b                                         ; $425d: $80
    ld b, $00                                     ; $425e: $06 $00
    add c                                         ; $4260: $81
    add b                                         ; $4261: $80
    add b                                         ; $4262: $80
    add c                                         ; $4263: $81
    dec b                                         ; $4264: $05
    add b                                         ; $4265: $80
    add b                                         ; $4266: $80
    add b                                         ; $4267: $80
    add b                                         ; $4268: $80
    add b                                         ; $4269: $80
    dec b                                         ; $426a: $05
    nop                                           ; $426b: $00
    adc d                                         ; $426c: $8a
    add b                                         ; $426d: $80
    add b                                         ; $426e: $80
    nop                                           ; $426f: $00
    and h                                         ; $4270: $a4
    ld b, a                                       ; $4271: $47
    db $e3                                        ; $4272: $e3
    inc b                                         ; $4273: $04
    nop                                           ; $4274: $00
    ld bc, $0501                                  ; $4275: $01 $01 $05
    nop                                           ; $4278: $00
    add c                                         ; $4279: $81
    ld bc, $8180                                  ; $427a: $01 $80 $81
    inc b                                         ; $427d: $04
    ld bc, $0101                                  ; $427e: $01 $01 $01
    ld bc, $0182                                  ; $4281: $01 $82 $01
    ld bc, $0006                                  ; $4284: $01 $06 $00
    sub h                                         ; $4287: $94
    ld bc, $0100                                  ; $4288: $01 $00 $01
    inc h                                         ; $428b: $24
    rst RST_00                                    ; $428c: $c7
    nop                                           ; $428d: $00
    rst RST_38                                    ; $428e: $ff
    nop                                           ; $428f: $00
    rst RST_38                                    ; $4290: $ff
    nop                                           ; $4291: $00
    rst RST_38                                    ; $4292: $ff
    nop                                           ; $4293: $00
    rst RST_38                                    ; $4294: $ff
    nop                                           ; $4295: $00
    rst RST_38                                    ; $4296: $ff
    nop                                           ; $4297: $00
    rst RST_38                                    ; $4298: $ff
    nop                                           ; $4299: $00
    rst RST_38                                    ; $429a: $ff
    nop                                           ; $429b: $00
    ld de, $a5ff                                  ; $429c: $11 $ff $a5
    add c                                         ; $429f: $81
    ld a, a                                       ; $42a0: $7f
    rst RST_38                                    ; $42a1: $ff
    ld a, a                                       ; $42a2: $7f
    rst RST_38                                    ; $42a3: $ff
    ld a, a                                       ; $42a4: $7f
    adc a                                         ; $42a5: $8f
    ld a, a                                       ; $42a6: $7f
    adc b                                         ; $42a7: $88
    ld a, a                                       ; $42a8: $7f
    adc a                                         ; $42a9: $8f
    ld a, a                                       ; $42aa: $7f
    cp b                                          ; $42ab: $b8
    ld c, a                                       ; $42ac: $4f
    cp b                                          ; $42ad: $b8
    ld c, a                                       ; $42ae: $4f
    xor b                                         ; $42af: $a8
    ld c, a                                       ; $42b0: $4f
    xor e                                         ; $42b1: $ab
    ld c, h                                       ; $42b2: $4c
    xor e                                         ; $42b3: $ab
    ld c, h                                       ; $42b4: $4c
    xor d                                         ; $42b5: $aa
    ld c, h                                       ; $42b6: $4c
    xor d                                         ; $42b7: $aa
    ld c, h                                       ; $42b8: $4c
    xor d                                         ; $42b9: $aa
    ld c, h                                       ; $42ba: $4c
    cp e                                          ; $42bb: $bb
    ld c, h                                       ; $42bc: $4c
    adc b                                         ; $42bd: $88
    ld a, a                                       ; $42be: $7f
    add c                                         ; $42bf: $81

jr_005_42c0:
    ld a, a                                       ; $42c0: $7f
    ld a, a                                       ; $42c1: $7f
    rst RST_38                                    ; $42c2: $ff
    ld a, a                                       ; $42c3: $7f
    inc bc                                        ; $42c4: $03
    rst RST_38                                    ; $42c5: $ff
    add l                                         ; $42c6: $85
    jr jr_005_42c0                                ; $42c7: $18 $f7

    rst RST_30                                    ; $42c9: $f7
    rst RST_38                                    ; $42ca: $ff
    rst RST_30                                    ; $42cb: $f7
    inc bc                                        ; $42cc: $03
    rst RST_38                                    ; $42cd: $ff
    add b                                         ; $42ce: $80
    add l                                         ; $42cf: $85
    inc b                                         ; $42d0: $04
    ld sp, hl                                     ; $42d1: $f9
    adc a                                         ; $42d2: $8f
    adc a                                         ; $42d3: $8f
    adc a                                         ; $42d4: $8f
    add a                                         ; $42d5: $87
    cp b                                          ; $42d6: $b8
    rst RST_08                                    ; $42d7: $cf
    xor b                                         ; $42d8: $a8
    rst RST_08                                    ; $42d9: $cf
    cp d                                          ; $42da: $ba
    call Call_000_0388                            ; $42db: $cd $88 $03
    rst RST_38                                    ; $42de: $ff
    sbc h                                         ; $42df: $9c
    add b                                         ; $42e0: $80
    add b                                         ; $42e1: $80
    cp a                                          ; $42e2: $bf
    add b                                         ; $42e3: $80
    or b                                          ; $42e4: $b0
    sbc a                                         ; $42e5: $9f
    xor a                                         ; $42e6: $af
    sub b                                         ; $42e7: $90
    xor a                                         ; $42e8: $af
    sub b                                         ; $42e9: $90
    or b                                          ; $42ea: $b0
    and b                                         ; $42eb: $a0
    rst RST_18                                    ; $42ec: $df
    ret nc                                        ; $42ed: $d0

    ldh a, [$ffbf]                                ; $42ee: $f0 $bf
    xor a                                         ; $42f0: $af
    sub b                                         ; $42f1: $90
    xor a                                         ; $42f2: $af
    sub b                                         ; $42f3: $90
    xor a                                         ; $42f4: $af
    sub b                                         ; $42f5: $90
    and b                                         ; $42f6: $a0
    sub b                                         ; $42f7: $90
    cp a                                          ; $42f8: $bf
    add b                                         ; $42f9: $80
    ret nz                                        ; $42fa: $c0

    cp a                                          ; $42fb: $bf
    inc b                                         ; $42fc: $04
    rst RST_38                                    ; $42fd: $ff
    sbc e                                         ; $42fe: $9b
    inc bc                                        ; $42ff: $03
    ld bc, $03fd                                  ; $4300: $01 $fd $03
    dec b                                         ; $4303: $05
    ei                                            ; $4304: $fb
    push af                                       ; $4305: $f5
    inc bc                                        ; $4306: $03
    push af                                       ; $4307: $f5
    inc bc                                        ; $4308: $03
    dec b                                         ; $4309: $05
    inc bc                                        ; $430a: $03
    db $fd                                        ; $430b: $fd
    inc bc                                        ; $430c: $03
    dec b                                         ; $430d: $05
    ei                                            ; $430e: $fb
    push af                                       ; $430f: $f5
    inc bc                                        ; $4310: $03
    push af                                       ; $4311: $f5
    inc bc                                        ; $4312: $03
    push af                                       ; $4313: $f5
    inc bc                                        ; $4314: $03
    dec b                                         ; $4315: $05
    inc bc                                        ; $4316: $03
    db $fd                                        ; $4317: $fd
    inc bc                                        ; $4318: $03
    ld bc, $ff06                                  ; $4319: $01 $06 $ff
    adc l                                         ; $431c: $8d
    ld [$ff0f], sp                                ; $431d: $08 $0f $ff
    inc e                                         ; $4320: $1c
    rst RST_38                                    ; $4321: $ff
    db $e4                                        ; $4322: $e4
    rst RST_38                                    ; $4323: $ff
    push af                                       ; $4324: $f5

jr_005_4325:
    ccf                                           ; $4325: $3f
    pop hl                                        ; $4326: $e1
    ld a, b                                       ; $4327: $78
    pop de                                        ; $4328: $d1
    ldh [$ff03], a                                ; $4329: $e0 $03
    rst RST_38                                    ; $432b: $ff
    rst RST_38                                    ; $432c: $ff
    ld [$fbec], sp                                ; $432d: $08 $ec $fb
    sbc h                                         ; $4330: $9c
    ei                                            ; $4331: $fb
    adc a                                         ; $4332: $8f
    rst RST_38                                    ; $4333: $ff
    rst RST_08                                    ; $4334: $cf
    db $fd                                        ; $4335: $fd
    db $db                                        ; $4336: $db
    rrca                                          ; $4337: $0f
    ld d, a                                       ; $4338: $57
    rlca                                          ; $4339: $07
    db $d3                                        ; $433a: $d3
    ret nz                                        ; $433b: $c0

    jp z, $ee40                                   ; $433c: $ca $40 $ee

    jr nz, jr_005_4325                            ; $433f: $20 $e4

    ldh [rNR32], a                                ; $4341: $e0 $1c
    ld hl, sp+$0f                                 ; $4343: $f8 $0f
    rst RST_38                                    ; $4345: $ff
    rst RST_38                                    ; $4346: $ff
    ld [$ffff], sp                                ; $4347: $08 $ff $ff
    ld [hl], e                                    ; $434a: $73
    inc bc                                        ; $434b: $03
    daa                                           ; $434c: $27
    inc bc                                        ; $434d: $03
    daa                                           ; $434e: $27
    dec b                                         ; $434f: $05
    adc a                                         ; $4350: $8f
    rlca                                          ; $4351: $07
    sbc h                                         ; $4352: $9c
    dec de                                        ; $4353: $1b
    db $ec                                        ; $4354: $ec
    ei                                            ; $4355: $fb
    rst RST_38                                    ; $4356: $ff
    ld [$ffff], sp                                ; $4357: $08 $ff $ff
    ld d, e                                       ; $435a: $53
    ret nz                                        ; $435b: $c0

    ld c, d                                       ; $435c: $4a
    ret nz                                        ; $435d: $c0

    ld l, [hl]                                    ; $435e: $6e
    ret nz                                        ; $435f: $c0

    ld h, h                                       ; $4360: $64
    ret nz                                        ; $4361: $c0

    ld h, h                                       ; $4362: $64
    ret nz                                        ; $4363: $c0

    ld [hl], l                                    ; $4364: $75
    ret nz                                        ; $4365: $c0

    ld [hl], c                                    ; $4366: $71
    ret nz                                        ; $4367: $c0

    ld [hl], c                                    ; $4368: $71
    ret nz                                        ; $4369: $c0

    ld [hl], d                                    ; $436a: $72
    inc bc                                        ; $436b: $03
    ld h, $03                                     ; $436c: $26 $03
    ld h, $03                                     ; $436e: $26 $03
    adc [hl]                                      ; $4370: $8e
    inc bc                                        ; $4371: $03
    adc d                                         ; $4372: $8a
    inc bc                                        ; $4373: $03
    jp z, $da03                                   ; $4374: $ca $03 $da

    inc bc                                        ; $4377: $03
    ld d, [hl]                                    ; $4378: $56
    inc bc                                        ; $4379: $03
    adc b                                         ; $437a: $88
    add h                                         ; $437b: $84
    add h                                         ; $437c: $84
    adc h                                         ; $437d: $8c
    add b                                         ; $437e: $80
    adc b                                         ; $437f: $88
    add b                                         ; $4380: $80
    adc h                                         ; $4381: $8c
    add h                                         ; $4382: $84
    adc h                                         ; $4383: $8c
    add h                                         ; $4384: $84
    adc h                                         ; $4385: $8c
    add h                                         ; $4386: $84
    adc h                                         ; $4387: $8c
    add h                                         ; $4388: $84
    adc h                                         ; $4389: $8c
    add h                                         ; $438a: $84
    adc h                                         ; $438b: $8c
    add h                                         ; $438c: $84
    adc h                                         ; $438d: $8c
    add h                                         ; $438e: $84
    adc h                                         ; $438f: $8c
    add h                                         ; $4390: $84
    adc h                                         ; $4391: $8c
    add b                                         ; $4392: $80
    adc b                                         ; $4393: $88
    add b                                         ; $4394: $80
    adc h                                         ; $4395: $8c
    add h                                         ; $4396: $84
    adc h                                         ; $4397: $8c
    add h                                         ; $4398: $84
    rst RST_38                                    ; $4399: $ff
    ld b, e                                       ; $439a: $43
    ld hl, $6321                                  ; $439b: $21 $21 $63
    ld bc, $0143                                  ; $439e: $01 $43 $01
    ld h, e                                       ; $43a1: $63
    ld hl, $2163                                  ; $43a2: $21 $63 $21
    ld h, e                                       ; $43a5: $63
    ld hl, $2163                                  ; $43a6: $21 $63 $21
    ld h, e                                       ; $43a9: $63
    ld hl, $8d63                                  ; $43aa: $21 $63 $8d
    ld hl, $2163                                  ; $43ad: $21 $63 $21

Jump_005_43b0:
    ld h, e                                       ; $43b0: $63
    ld hl, $0163                                  ; $43b1: $21 $63 $01
    ld b, e                                       ; $43b4: $43
    ld bc, $2163                                  ; $43b5: $01 $63 $21
    ld h, e                                       ; $43b8: $63
    ld hl, $ff03                                  ; $43b9: $21 $03 $ff
    ld b, $00                                     ; $43bc: $06 $00
    add h                                         ; $43be: $84
    add b                                         ; $43bf: $80
    ld a, a                                       ; $43c0: $7f
    ld c, a                                       ; $43c1: $4f
    rst RST_18                                    ; $43c2: $df
    ld b, $00                                     ; $43c3: $06 $00
    add h                                         ; $43c5: $84
    add b                                         ; $43c6: $80
    ld a, a                                       ; $43c7: $7f
    ld c, a                                       ; $43c8: $4f
    rst RST_18                                    ; $43c9: $df
    ld b, $00                                     ; $43ca: $06 $00
    add d                                         ; $43cc: $82
    add b                                         ; $43cd: $80
    ld a, a                                       ; $43ce: $7f
    inc b                                         ; $43cf: $04
    rst RST_38                                    ; $43d0: $ff
    adc c                                         ; $43d1: $89
    nop                                           ; $43d2: $00
    ld bc, $0100                                  ; $43d3: $01 $00 $01
    nop                                           ; $43d6: $00
    ld bc, $ff00                                  ; $43d7: $01 $00 $ff
    di                                            ; $43da: $f3
    add b                                         ; $43db: $80
    add c                                         ; $43dc: $81
    inc b                                         ; $43dd: $04
    rst RST_30                                    ; $43de: $f7
    ld bc, $0101                                  ; $43df: $01 $01 $01
    add d                                         ; $43e2: $82
    rst RST_38                                    ; $43e3: $ff
    di                                            ; $43e4: $f3
    add b                                         ; $43e5: $80
    add c                                         ; $43e6: $81
    inc b                                         ; $43e7: $04
    rst RST_30                                    ; $43e8: $f7
    ld bc, $0101                                  ; $43e9: $01 $01 $01
    inc bc                                        ; $43ec: $03
    rst RST_38                                    ; $43ed: $ff
    dec de                                        ; $43ee: $1b
    nop                                           ; $43ef: $00
    add [hl]                                      ; $43f0: $86
    inc b                                         ; $43f1: $04
    ld [$1808], sp                                ; $43f2: $08 $08 $18
    ld a, a                                       ; $43f5: $7f
    db $10                                        ; $43f6: $10
    add b                                         ; $43f7: $80
    add c                                         ; $43f8: $81
    rrca                                          ; $43f9: $0f
    jr nc, jr_005_440d                            ; $43fa: $30 $11

    ld de, $0101                                  ; $43fc: $11 $01 $01
    ld bc, $0101                                  ; $43ff: $01 $01 $01
    ld bc, $0101                                  ; $4402: $01 $01 $01
    ld bc, $0101                                  ; $4405: $01 $01 $01
    ld bc, $ff86                                  ; $4408: $01 $86 $ff
    inc e                                         ; $440b: $1c
    di                                            ; $440c: $f3

jr_005_440d:
    rst RST_38                                    ; $440d: $ff
    rst RST_38                                    ; $440e: $ff
    ld bc, $ff04                                  ; $440f: $01 $04 $ff
    adc b                                         ; $4412: $88
    ld d, l                                       ; $4413: $55
    ld d, l                                       ; $4414: $55
    rst RST_38                                    ; $4415: $ff
    rst RST_38                                    ; $4416: $ff
    ld d, l                                       ; $4417: $55
    nop                                           ; $4418: $00
    rst RST_38                                    ; $4419: $ff
    ld b, b                                       ; $441a: $40
    inc bc                                        ; $441b: $03
    nop                                           ; $441c: $00
    add c                                         ; $441d: $81
    ld bc, $0003                                  ; $441e: $01 $03 $00
    add b                                         ; $4421: $80
    add c                                         ; $4422: $81
    inc c                                         ; $4423: $0c
    jr jr_005_445a                                ; $4424: $18 $34

    jr jr_005_442a                                ; $4426: $18 $02

    ld e, b                                       ; $4428: $58
    inc a                                         ; $4429: $3c

jr_005_442a:
    dec [hl]                                      ; $442a: $35
    inc [hl]                                      ; $442b: $34
    halt                                          ; $442c: $76
    jp $3240                                      ; $442d: $c3 $40 $32


    xor c                                         ; $4430: $a9
    ldh [c], a                                    ; $4431: $e2
    dec b                                         ; $4432: $05
    add b                                         ; $4433: $80
    nop                                           ; $4434: $00
    add b                                         ; $4435: $80
    nop                                           ; $4436: $00
    ld bc, $010f                                  ; $4437: $01 $0f $01
    ld bc, $8100                                  ; $443a: $01 $00 $81
    add b                                         ; $443d: $80
    ld [bc], a                                    ; $443e: $02
    add d                                         ; $443f: $82
    ld [bc], a                                    ; $4440: $02
    add d                                         ; $4441: $82
    rlca                                          ; $4442: $07
    add b                                         ; $4443: $80
    ld b, l                                       ; $4444: $45
    add b                                         ; $4445: $80
    jr z, jr_005_4458                             ; $4446: $28 $10

    jr c, jr_005_445a                             ; $4448: $38 $10

    stop                                          ; $444a: $10 $00
    sub b                                         ; $444c: $90
    sub b                                         ; $444d: $90
    jr nc, jr_005_4488                            ; $444e: $30 $38

    rst RST_38                                    ; $4450: $ff
    db $eb                                        ; $4451: $eb
    rst RST_38                                    ; $4452: $ff
    ld b, b                                       ; $4453: $40
    ld h, c                                       ; $4454: $61
    ld b, c                                       ; $4455: $41
    pop bc                                        ; $4456: $c1
    add c                                         ; $4457: $81

jr_005_4458:
    add e                                         ; $4458: $83
    ld [bc], a                                    ; $4459: $02

jr_005_445a:
    add b                                         ; $445a: $80
    add c                                         ; $445b: $81
    dec b                                         ; $445c: $05
    rlca                                          ; $445d: $07
    add hl, de                                    ; $445e: $19
    ld h, c                                       ; $445f: $61
    ld bc, $9809                                  ; $4460: $01 $09 $98
    ld de, $a001                                  ; $4463: $11 $01 $a0

jr_005_4466:
    ld b, b                                       ; $4466: $40
    ldh [rLCDC], a                                ; $4467: $e0 $40
    ld b, b                                       ; $4469: $40
    nop                                           ; $446a: $00
    ld b, c                                       ; $446b: $41
    jr nz, jr_005_44cf                            ; $446c: $20 $61

    ld [hl], h                                    ; $446e: $74
    rst RST_38                                    ; $446f: $ff
    ld a, [de]                                    ; $4470: $1a
    push bc                                       ; $4471: $c5
    or d                                          ; $4472: $b2
    push de                                       ; $4473: $d5
    cp [hl]                                       ; $4474: $be
    push de                                       ; $4475: $d5
    sub $ff                                       ; $4476: $d6 $ff
    sbc $ff                                       ; $4478: $de $ff
    rst RST_18                                    ; $447a: $df
    dec b                                         ; $447b: $05
    rst RST_38                                    ; $447c: $ff
    adc [hl]                                      ; $447d: $8e
    inc [hl]                                      ; $447e: $34
    ld b, c                                       ; $447f: $41
    ld h, $d1                                     ; $4480: $26 $d1
    ld a, [hl]                                    ; $4482: $7e
    pop de                                        ; $4483: $d1
    sub $fd                                       ; $4484: $d6 $fd
    rst RST_30                                    ; $4486: $f7
    db $fd                                        ; $4487: $fd

jr_005_4488:
    db $dd                                        ; $4488: $dd
    rst RST_30                                    ; $4489: $f7
    rst RST_18                                    ; $448a: $df
    db $fd                                        ; $448b: $fd
    dec b                                         ; $448c: $05
    rst RST_38                                    ; $448d: $ff
    adc h                                         ; $448e: $8c
    cp c                                          ; $448f: $b9
    rst RST_28                                    ; $4490: $ef
    rst RST_28                                    ; $4491: $ef
    inc h                                         ; $4492: $24
    inc h                                         ; $4493: $24
    ld b, d                                       ; $4494: $42
    ld b, d                                       ; $4495: $42
    db $db                                        ; $4496: $db
    ld b, d                                       ; $4497: $42
    db $db                                        ; $4498: $db
    ld b, d                                       ; $4499: $42
    inc a                                         ; $449a: $3c
    inc bc                                        ; $449b: $03
    rst RST_20                                    ; $449c: $e7
    db $ed                                        ; $449d: $ed
    rst RST_30                                    ; $449e: $f7
    inc h                                         ; $449f: $24
    inc a                                         ; $44a0: $3c
    rst RST_20                                    ; $44a1: $e7
    inc a                                         ; $44a2: $3c

Call_005_44a3:
    rst RST_20                                    ; $44a3: $e7
    rst RST_38                                    ; $44a4: $ff
    rst RST_20                                    ; $44a5: $e7
    rst RST_38                                    ; $44a6: $ff
    add hl, de                                    ; $44a7: $19
    add c                                         ; $44a8: $81
    ld a, a                                       ; $44a9: $7f
    rst RST_38                                    ; $44aa: $ff
    rst RST_38                                    ; $44ab: $ff
    db $e3                                        ; $44ac: $e3
    inc b                                         ; $44ad: $04
    sbc b                                         ; $44ae: $98
    jr jr_005_4466                                ; $44af: $18 $b5

    dec l                                         ; $44b1: $2d
    ld c, d                                       ; $44b2: $4a
    ld b, [hl]                                    ; $44b3: $46
    ld d, b                                       ; $44b4: $50
    ld c, [hl]                                    ; $44b5: $4e
    sbc e                                         ; $44b6: $9b
    add h                                         ; $44b7: $84
    or h                                          ; $44b8: $b4
    adc b                                         ; $44b9: $88
    xor h                                         ; $44ba: $ac
    add d                                         ; $44bb: $82
    push bc                                       ; $44bc: $c5
    and d                                         ; $44bd: $a2
    push bc                                       ; $44be: $c5
    and e                                         ; $44bf: $a3
    sbc d                                         ; $44c0: $9a
    rst RST_20                                    ; $44c1: $e7
    xor d                                         ; $44c2: $aa
    rst RST_20                                    ; $44c3: $e7
    ld hl, sp-$59                                 ; $44c4: $f8 $a7
    xor [hl]                                      ; $44c6: $ae
    pop af                                        ; $44c7: $f1
    pop af                                        ; $44c8: $f1
    ld a, a                                       ; $44c9: $7f
    sbc a                                         ; $44ca: $9f
    ld a, a                                       ; $44cb: $7f
    di                                            ; $44cc: $f3
    ld [hl], h                                    ; $44cd: $74
    adc b                                         ; $44ce: $88

jr_005_44cf:
    sbc c                                         ; $44cf: $99
    dec [hl]                                      ; $44d0: $35
    inc c                                         ; $44d1: $0c
    ld [hl+], a                                   ; $44d2: $22
    ld e, [hl]                                    ; $44d3: $5e
    ld l, d                                       ; $44d4: $6a
    ld e, $05                                     ; $44d5: $1e $05
    sbc a                                         ; $44d7: $9f
    inc sp                                        ; $44d8: $33
    rst RST_08                                    ; $44d9: $cf
    cp e                                          ; $44da: $bb
    ld b, a                                       ; $44db: $47
    sbc c                                         ; $44dc: $99
    rlca                                          ; $44dd: $07
    ld sp, hl                                     ; $44de: $f9
    rlca                                          ; $44df: $07
    jp $a93f                                      ; $44e0: $c3 $3f $a9


    ld a, a                                       ; $44e3: $7f
    xor l                                         ; $44e4: $ad
    ld a, a                                       ; $44e5: $7f
    push bc                                       ; $44e6: $c5
    ccf                                           ; $44e7: $3f
    ld c, $ff                                     ; $44e8: $0e $ff
    ld hl, sp-$01                                 ; $44ea: $f8 $ff
    nop                                           ; $44ec: $00
    nop                                           ; $44ed: $00
    ld a, a                                       ; $44ee: $7f
    nop                                           ; $44ef: $00
    ld a, a                                       ; $44f0: $7f
    ccf                                           ; $44f1: $3f
    ld a, a                                       ; $44f2: $7f
    jr nz, jr_005_4574                            ; $44f3: $20 $7f

    jr nz, @+$43                                  ; $44f5: $20 $41

    ld [hl+], a                                   ; $44f7: $22
    ld a, a                                       ; $44f8: $7f
    ld [bc], a                                    ; $44f9: $02
    ld [hl], a                                    ; $44fa: $77
    ld a, [hl-]                                   ; $44fb: $3a
    ld [hl], a                                    ; $44fc: $77
    ld [hl+], a                                   ; $44fd: $22
    ld [hl], a                                    ; $44fe: $77
    ld [hl+], a                                   ; $44ff: $22
    ld [hl], a                                    ; $4500: $77
    ld [hl+], a                                   ; $4501: $22
    ld [hl], a                                    ; $4502: $77
    ld [hl+], a                                   ; $4503: $22
    ld [hl], a                                    ; $4504: $77
    ld [hl+], a                                   ; $4505: $22
    ld b, h                                       ; $4506: $44
    ld [hl+], a                                   ; $4507: $22
    ld a, a                                       ; $4508: $7f
    nop                                           ; $4509: $00
    ld a, a                                       ; $450a: $7f
    add b                                         ; $450b: $80
    inc bc                                        ; $450c: $03
    rst RST_38                                    ; $450d: $ff
    push bc                                       ; $450e: $c5
    rst RST_38                                    ; $450f: $ff
    ld bc, $fdfb                                  ; $4510: $01 $fb $fd
    ei                                            ; $4513: $fb
    ld bc, $01fb                                  ; $4514: $01 $fb $01
    add e                                         ; $4517: $83
    ld bc, $01bf                                  ; $4518: $01 $bf $01
    cp e                                          ; $451b: $bb
    dec e                                         ; $451c: $1d
    cp e                                          ; $451d: $bb
    ld de, $11bb                                  ; $451e: $11 $bb $11
    cp e                                          ; $4521: $bb
    ld de, $11bb                                  ; $4522: $11 $bb $11
    cp e                                          ; $4525: $bb
    ld de, $1123                                  ; $4526: $11 $23 $11
    rst RST_38                                    ; $4529: $ff
    ld bc, $ffff                                  ; $452a: $01 $ff $ff
    ei                                            ; $452d: $fb
    sbc l                                         ; $452e: $9d
    and $66                                       ; $452f: $e6 $66
    add b                                         ; $4531: $80
    nop                                           ; $4532: $00
    nop                                           ; $4533: $00
    ld [$0000], sp                                ; $4534: $08 $00 $00
    ld [$9898], sp                                ; $4537: $08 $98 $98
    ld [$0080], sp                                ; $453a: $08 $80 $00
    add b                                         ; $453d: $80
    nop                                           ; $453e: $00
    add b                                         ; $453f: $80
    nop                                           ; $4540: $00
    add [hl]                                      ; $4541: $86
    ld b, $07                                     ; $4542: $06 $07
    dec b                                         ; $4544: $05
    inc hl                                        ; $4545: $23
    ld [bc], a                                    ; $4546: $02
    nop                                           ; $4547: $00
    add b                                         ; $4548: $80
    or e                                          ; $4549: $b3
    inc sp                                        ; $454a: $33
    cp $cd                                        ; $454b: $fe $cd
    rst RST_38                                    ; $454d: $ff
    sbc e                                         ; $454e: $9b
    ld h, h                                       ; $454f: $64
    ld h, l                                       ; $4550: $65
    ld bc, $4000                                  ; $4551: $01 $00 $40
    inc bc                                        ; $4554: $03
    nop                                           ; $4555: $00
    adc e                                         ; $4556: $8b
    ld bc, $2001                                  ; $4557: $01 $01 $20
    ld de, $2110                                  ; $455a: $11 $10 $21
    nop                                           ; $455d: $00
    ld bc, $0100                                  ; $455e: $01 $00 $01
    ld bc, $0003                                  ; $4561: $01 $03 $00
    adc a                                         ; $4564: $8f
    jr nz, jr_005_4567                            ; $4565: $20 $00

jr_005_4567:
    nop                                           ; $4567: $00
    ld bc, $9796                                  ; $4568: $01 $96 $97
    db $fd                                        ; $456b: $fd
    ld l, e                                       ; $456c: $6b
    and h                                         ; $456d: $a4
    rst RST_00                                    ; $456e: $c7
    add b                                         ; $456f: $80
    add b                                         ; $4570: $80
    ret nz                                        ; $4571: $c0

    ld b, b                                       ; $4572: $40
    add b                                         ; $4573: $80

jr_005_4574:
    add b                                         ; $4574: $80
    inc bc                                        ; $4575: $03
    add b                                         ; $4576: $80
    add h                                         ; $4577: $84
    jp nz, $d041                                  ; $4578: $c2 $41 $d0

    ld b, b                                       ; $457b: $40
    inc b                                         ; $457c: $04
    add b                                         ; $457d: $80
    sbc c                                         ; $457e: $99
    ret nz                                        ; $457f: $c0

    ld b, b                                       ; $4580: $40
    ld b, b                                       ; $4581: $40
    ret nz                                        ; $4582: $c0

    add [hl]                                      ; $4583: $86
    sub [hl]                                      ; $4584: $96
    add d                                         ; $4585: $82
    add h                                         ; $4586: $84
    ret nz                                        ; $4587: $c0

    ld b, b                                       ; $4588: $40
    ret nz                                        ; $4589: $c0

    ld b, b                                       ; $458a: $40
    db $e3                                        ; $458b: $e3
    add h                                         ; $458c: $84
    ld hl, $02c7                                  ; $458d: $21 $c7 $02
    inc bc                                        ; $4590: $03
    inc bc                                        ; $4591: $03
    ld [bc], a                                    ; $4592: $02
    ld bc, $0301                                  ; $4593: $01 $01 $03
    ld [bc], a                                    ; $4596: $02
    add hl, bc                                    ; $4597: $09
    inc bc                                        ; $4598: $03
    ld bc, $0392                                  ; $4599: $01 $92 $03
    ld [bc], a                                    ; $459c: $02
    ld a, [de]                                    ; $459d: $1a
    inc de                                        ; $459e: $13
    dec sp                                        ; $459f: $3b
    ld a, [hl+]                                   ; $45a0: $2a
    ld sp, $0131                                  ; $45a1: $31 $31 $01
    ld bc, $0203                                  ; $45a4: $01 $03 $02
    dec bc                                        ; $45a7: $0b
    ld [bc], a                                    ; $45a8: $02
    ld bc, $e301                                  ; $45a9: $01 $01 $e3
    dec b                                         ; $45ac: $05
    nop                                           ; $45ad: $00
    ld [de], a                                    ; $45ae: $12
    nop                                           ; $45af: $00
    ret z                                         ; $45b0: $c8

    ld a, a                                       ; $45b1: $7f
    ld a, a                                       ; $45b2: $7f
    ld [hl], b                                    ; $45b3: $70
    ld h, b                                       ; $45b4: $60
    ld a, b                                       ; $45b5: $78
    ld d, a                                       ; $45b6: $57
    ld e, b                                       ; $45b7: $58
    ld c, a                                       ; $45b8: $4f
    ld b, h                                       ; $45b9: $44
    ld e, a                                       ; $45ba: $5f
    ld b, e                                       ; $45bb: $43
    ld e, a                                       ; $45bc: $5f
    inc bc                                        ; $45bd: $03
    rra                                           ; $45be: $1f
    ld b, d                                       ; $45bf: $42
    ld e, [hl]                                    ; $45c0: $5e
    ld b, e                                       ; $45c1: $43
    ld e, [hl]                                    ; $45c2: $5e
    ld b, e                                       ; $45c3: $43
    ld e, [hl]                                    ; $45c4: $5e
    ld a, a                                       ; $45c5: $7f
    ld a, [hl]                                    ; $45c6: $7e
    ld e, a                                       ; $45c7: $5f
    ld b, d                                       ; $45c8: $42
    ld b, e                                       ; $45c9: $43
    ld e, [hl]                                    ; $45ca: $5e
    ld b, e                                       ; $45cb: $43
    ld e, [hl]                                    ; $45cc: $5e
    inc bc                                        ; $45cd: $03

jr_005_45ce:
    rra                                           ; $45ce: $1f
    nop                                           ; $45cf: $00

jr_005_45d0:
    nop                                           ; $45d0: $00
    ld a, a                                       ; $45d1: $7f

jr_005_45d2:
    ld a, a                                       ; $45d2: $7f
    nop                                           ; $45d3: $00
    db $10                                        ; $45d4: $10
    jr jr_005_45ce                                ; $45d5: $18 $f7

    jr jr_005_45d0                                ; $45d7: $18 $f7

    jr jr_005_45d2                                ; $45d9: $18 $f7

    rst RST_38                                    ; $45db: $ff
    rst RST_38                                    ; $45dc: $ff
    ld a, a                                       ; $45dd: $7f
    ld bc, $ff81                                  ; $45de: $01 $81 $ff
    ld b, c                                       ; $45e1: $41
    rst RST_38                                    ; $45e2: $ff
    ccf                                           ; $45e3: $3f
    rst RST_38                                    ; $45e4: $ff
    scf                                           ; $45e5: $37
    ldh a, [$ff28]                                ; $45e6: $f0 $28
    rst RST_28                                    ; $45e8: $ef
    scf                                           ; $45e9: $37
    rst RST_28                                    ; $45ea: $ef
    scf                                           ; $45eb: $37
    xor $f7                                       ; $45ec: $ee $f7
    db $ed                                        ; $45ee: $ed
    add c                                         ; $45ef: $81

jr_005_45f0:
    ld a, a                                       ; $45f0: $7f
    add c                                         ; $45f1: $81
    ld a, a                                       ; $45f2: $7f
    rst RST_38                                    ; $45f3: $ff
    rst RST_38                                    ; $45f4: $ff
    rst RST_20                                    ; $45f5: $e7
    db $10                                        ; $45f6: $10
    jr jr_005_45f0                                ; $45f7: $18 $f7

    inc bc                                        ; $45f9: $03
    rst RST_38                                    ; $45fa: $ff
    rst RST_38                                    ; $45fb: $ff
    nop                                           ; $45fc: $00
    rst RST_38                                    ; $45fd: $ff
    rst RST_38                                    ; $45fe: $ff
    rst RST_30                                    ; $45ff: $f7
    dec l                                         ; $4600: $2d
    scf                                           ; $4601: $37
    db $ed                                        ; $4602: $ed
    scf                                           ; $4603: $37
    db $ed                                        ; $4604: $ed
    cpl                                           ; $4605: $2f
    db $fd                                        ; $4606: $fd
    cpl                                           ; $4607: $2f
    push hl                                       ; $4608: $e5
    scf                                           ; $4609: $37
    db $ed                                        ; $460a: $ed
    scf                                           ; $460b: $37
    db $ed                                        ; $460c: $ed
    rst RST_30                                    ; $460d: $f7
    db $ed                                        ; $460e: $ed
    add c                                         ; $460f: $81
    ld a, a                                       ; $4610: $7f
    add e                                         ; $4611: $83
    ld a, [hl]                                    ; $4612: $7e
    rst RST_38                                    ; $4613: $ff
    db $fc                                        ; $4614: $fc
    db $eb                                        ; $4615: $eb
    jr jr_005_4633                                ; $4616: $18 $1b

    ld hl, sp-$05                                 ; $4618: $f8 $fb
    add sp, -$25                                  ; $461a: $e8 $db
    ld c, b                                       ; $461c: $48
    rst RST_18                                    ; $461d: $df
    rlc b                                         ; $461e: $cb $00
    nop                                           ; $4620: $00
    ld a, [hl]                                    ; $4621: $7e
    ld a, [hl]                                    ; $4622: $7e
    rlca                                          ; $4623: $07
    ld d, $1f                                     ; $4624: $16 $1f
    ld a, [$f213]                                 ; $4626: $fa $13 $f2
    dec sp                                        ; $4629: $3b
    ldh [c], a                                    ; $462a: $e2
    ei                                            ; $462b: $fb
    jp nz, $82bb                                  ; $462c: $c2 $bb $82

    cp c                                          ; $462f: $b9
    add b                                         ; $4630: $80
    cp e                                          ; $4631: $bb
    add d                                         ; $4632: $82

jr_005_4633:
    cp e                                          ; $4633: $bb
    add d                                         ; $4634: $82
    rst RST_38                                    ; $4635: $ff
    cp d                                          ; $4636: $ba
    add e                                         ; $4637: $83
    add d                                         ; $4638: $82
    cp e                                          ; $4639: $bb
    add d                                         ; $463a: $82
    cp e                                          ; $463b: $bb
    add d                                         ; $463c: $82
    cp e                                          ; $463d: $bb
    add d                                         ; $463e: $82
    inc bc                                        ; $463f: $03
    rra                                           ; $4640: $1f
    ld b, d                                       ; $4641: $42
    ld e, [hl]                                    ; $4642: $5e
    ld b, a                                       ; $4643: $47
    ld e, h                                       ; $4644: $5c
    ld e, a                                       ; $4645: $5f
    ld a, b                                       ; $4646: $78
    ld d, a                                       ; $4647: $57
    ld d, b                                       ; $4648: $50
    ld [hl], b                                    ; $4649: $70
    ld h, b                                       ; $464a: $60
    ld a, a                                       ; $464b: $7f
    ld a, a                                       ; $464c: $7f
    ccf                                           ; $464d: $3f
    nop                                           ; $464e: $00
    rst RST_30                                    ; $464f: $f7
    dec l                                         ; $4650: $2d
    scf                                           ; $4651: $37
    rst RST_28                                    ; $4652: $ef
    inc [hl]                                      ; $4653: $34
    db $ec                                        ; $4654: $ec
    cpl                                           ; $4655: $2f
    ld hl, sp+$3f                                 ; $4656: $f8 $3f
    rst RST_38                                    ; $4658: $ff
    ld hl, $7fe0                                  ; $4659: $21 $e0 $7f
    pop bc                                        ; $465c: $c1
    rst RST_38                                    ; $465d: $ff
    add c                                         ; $465e: $81
    rst RST_38                                    ; $465f: $ff
    rst RST_38                                    ; $4660: $ff
    stop                                          ; $4661: $10 $00
    rst RST_30                                    ; $4663: $f7
    db $10                                        ; $4664: $10
    rst RST_30                                    ; $4665: $f7
    db $10                                        ; $4666: $10
    rst RST_30                                    ; $4667: $f7
    db $10                                        ; $4668: $10
    stop                                          ; $4669: $10 $00
    ld a, a                                       ; $466b: $7f
    ld a, a                                       ; $466c: $7f
    rst RST_38                                    ; $466d: $ff
    nop                                           ; $466e: $00
    ret c                                         ; $466f: $d8

    ret z                                         ; $4670: $c8

jr_005_4671:
    db $db                                        ; $4671: $db
    ret z                                         ; $4672: $c8

jr_005_4673:
    dec sp                                        ; $4673: $3b
    jr z, jr_005_4671                             ; $4674: $28 $fb

    jr jr_005_4673                                ; $4676: $18 $fb

    ld hl, sp+$07                                 ; $4678: $f8 $07
    inc b                                         ; $467a: $04
    sub c                                         ; $467b: $91
    ld a, a                                       ; $467c: $7f
    ld [bc], a                                    ; $467d: $02
    ld a, a                                       ; $467e: $7f
    ld bc, $80b9                                  ; $467f: $01 $b9 $80
    ld a, e                                       ; $4682: $7b
    ld b, d                                       ; $4683: $42
    ei                                            ; $4684: $fb
    ld [hl+], a                                   ; $4685: $22
    rst RST_38                                    ; $4686: $ff
    ld a, [de]                                    ; $4687: $1a
    ei                                            ; $4688: $fb
    ld a, [de]                                    ; $4689: $1a
    rla                                           ; $468a: $17
    ld b, $ff                                     ; $468b: $06 $ff
    add b                                         ; $468d: $80
    inc bc                                        ; $468e: $03
    cp $ff                                        ; $468f: $fe $ff
    rst RST_38                                    ; $4691: $ff
    nop                                           ; $4692: $00
    rst RST_38                                    ; $4693: $ff
    rst RST_38                                    ; $4694: $ff
    stop                                          ; $4695: $10 $00
    rst RST_30                                    ; $4697: $f7
    db $10                                        ; $4698: $10
    rst RST_38                                    ; $4699: $ff
    rst RST_38                                    ; $469a: $ff
    ld bc, $7f00                                  ; $469b: $01 $00 $7f
    ld bc, $017f                                  ; $469e: $01 $7f $01
    ret c                                         ; $46a1: $d8

    ld c, b                                       ; $46a2: $48
    db $db                                        ; $46a3: $db
    ld c, b                                       ; $46a4: $48
    db $db                                        ; $46a5: $db
    ld c, b                                       ; $46a6: $48
    ei                                            ; $46a7: $fb
    ld e, b                                       ; $46a8: $58
    bit 1, b                                      ; $46a9: $cb $48
    db $db                                        ; $46ab: $db
    ld c, b                                       ; $46ac: $48
    db $db                                        ; $46ad: $db
    ld c, b                                       ; $46ae: $48
    rst RST_18                                    ; $46af: $df
    ld c, e                                       ; $46b0: $4b
    ld bc, $ff01                                  ; $46b1: $01 $01 $ff
    rst RST_38                                    ; $46b4: $ff
    rra                                           ; $46b5: $1f
    dec c                                         ; $46b6: $0d
    rst RST_38                                    ; $46b7: $ff
    dec e                                         ; $46b8: $1d
    rst RST_38                                    ; $46b9: $ff
    push af                                       ; $46ba: $f5
    or a                                          ; $46bb: $b7
    ld l, l                                       ; $46bc: $6d
    ld [hl], a                                    ; $46bd: $77
    db $ed                                        ; $46be: $ed
    rst RST_30                                    ; $46bf: $f7
    db $ed                                        ; $46c0: $ed
    rst RST_38                                    ; $46c1: $ff
    rst RST_38                                    ; $46c2: $ff
    dec de                                        ; $46c3: $1b
    ld b, $f7                                     ; $46c4: $06 $f7
    ld c, $ef                                     ; $46c6: $0e $ef
    ld e, $ff                                     ; $46c8: $1e $ff
    ld [de], a                                    ; $46ca: $12
    inc hl                                        ; $46cb: $23
    ld a, $c3                                     ; $46cc: $3e $c3
    sbc $83                                       ; $46ce: $de $83
    sbc a                                         ; $46d0: $9f
    add d                                         ; $46d1: $82
    sbc [hl]                                      ; $46d2: $9e
    ld b, e                                       ; $46d3: $43
    ld e, [hl]                                    ; $46d4: $5e
    inc hl                                        ; $46d5: $23
    ld a, $13                                     ; $46d6: $3e $13
    cp $0f                                        ; $46d8: $fe $0f
    ld a, [$f60f]                                 ; $46da: $fa $0f $f6
    rst RST_38                                    ; $46dd: $ff
    cp $7f                                        ; $46de: $fe $7f
    ld bc, $adf7                                  ; $46e0: $01 $f7 $ad
    rst RST_30                                    ; $46e3: $f7
    ld l, l                                       ; $46e4: $6d
    rst RST_30                                    ; $46e5: $f7
    db $ed                                        ; $46e6: $ed
    rst RST_30                                    ; $46e7: $f7
    dec e                                         ; $46e8: $1d
    rrca                                          ; $46e9: $0f
    db $fd                                        ; $46ea: $fd
    rst RST_38                                    ; $46eb: $ff
    db $fd                                        ; $46ec: $fd
    rst RST_38                                    ; $46ed: $ff
    inc bc                                        ; $46ee: $03
    rst RST_38                                    ; $46ef: $ff
    rst RST_38                                    ; $46f0: $ff
    add b                                         ; $46f1: $80
    add b                                         ; $46f2: $80
    ld a, a                                       ; $46f3: $7f
    ld a, a                                       ; $46f4: $7f
    ld [hl], b                                    ; $46f5: $70
    ld h, b                                       ; $46f6: $60
    ld [hl], a                                    ; $46f7: $77
    ld d, b                                       ; $46f8: $50
    ld c, a                                       ; $46f9: $4f
    ld c, a                                       ; $46fa: $4f
    ld e, l                                       ; $46fb: $5d
    ld c, h                                       ; $46fc: $4c
    ld e, d                                       ; $46fd: $5a
    ld c, e                                       ; $46fe: $4b
    ld e, l                                       ; $46ff: $5d
    ld c, e                                       ; $4700: $4b
    rst RST_38                                    ; $4701: $ff
    rst RST_38                                    ; $4702: $ff
    ret nc                                        ; $4703: $d0

    ret nz                                        ; $4704: $c0

    and a                                         ; $4705: $a7
    or b                                          ; $4706: $b0
    rst RST_10                                    ; $4707: $d7
    or b                                          ; $4708: $b0
    adc a                                         ; $4709: $8f
    adc b                                         ; $470a: $88
    cp h                                          ; $470b: $bc
    add h                                         ; $470c: $84
    cp d                                          ; $470d: $ba
    add d                                         ; $470e: $82
    cp e                                          ; $470f: $bb
    and c                                         ; $4710: $a1
    add e                                         ; $4711: $83
    db $db                                        ; $4712: $db
    ld c, c                                       ; $4713: $49
    db $db                                        ; $4714: $db
    ld c, e                                       ; $4715: $4b
    rst RST_18                                    ; $4716: $df
    ld c, a                                       ; $4717: $4f
    rst RST_38                                    ; $4718: $ff
    ld e, b                                       ; $4719: $58
    ret c                                         ; $471a: $d8

    ld d, a                                       ; $471b: $57
    rst RST_38                                    ; $471c: $ff
    ld a, a                                       ; $471d: $7f
    rst RST_38                                    ; $471e: $ff
    ld b, b                                       ; $471f: $40
    rst RST_38                                    ; $4720: $ff
    rst RST_38                                    ; $4721: $ff
    cp c                                          ; $4722: $b9
    add c                                         ; $4723: $81
    cp e                                          ; $4724: $bb
    add e                                         ; $4725: $83
    cp h                                          ; $4726: $bc
    add h                                         ; $4727: $84
    ld hl, sp-$41                                 ; $4728: $f8 $bf
    cp b                                          ; $472a: $b8
    sub a                                         ; $472b: $97
    cp b                                          ; $472c: $b8
    or a                                          ; $472d: $b7
    rst RST_38                                    ; $472e: $ff
    rst RST_38                                    ; $472f: $ff
    cp $81                                        ; $4730: $fe $81
    add b                                         ; $4732: $80
    add c                                         ; $4733: $81
    ld [$4ffe], sp                                ; $4734: $08 $fe $4f
    call $afcc                                    ; $4737: $cd $cc $af
    sbc a                                         ; $473a: $9f
    ld a, [$83c9]                                 ; $473b: $fa $c9 $83
    rst RST_38                                    ; $473e: $ff
    nop                                           ; $473f: $00
    rst RST_38                                    ; $4740: $ff
    add b                                         ; $4741: $80
    add d                                         ; $4742: $82
    ld b, $ef                                     ; $4743: $06 $ef
    xor [hl]                                      ; $4745: $ae
    cp l                                          ; $4746: $bd
    sbc b                                         ; $4747: $98
    cp b                                          ; $4748: $b8
    inc de                                        ; $4749: $13
    or b                                          ; $474a: $b0
    db $ec                                        ; $474b: $ec
    ccf                                           ; $474c: $3f
    nop                                           ; $474d: $00
    ld c, [hl]                                    ; $474e: $4e
    ld bc, $01da                                  ; $474f: $01 $da $01
    ldh a, [c]                                    ; $4752: $f2
    ld bc, $0162                                  ; $4753: $01 $62 $01
    rst RST_38                                    ; $4756: $ff
    nop                                           ; $4757: $00
    db $e4                                        ; $4758: $e4
    ld bc, $01e2                                  ; $4759: $01 $e2 $01
    add $01                                       ; $475c: $c6 $01
    db $fc                                        ; $475e: $fc
    ld bc, $01f8                                  ; $475f: $01 $f8 $01
    jp z, $ef01                                   ; $4762: $ca $01 $ef

    nop                                           ; $4765: $00
    ld h, [hl]                                    ; $4766: $66
    ld bc, $01fc                                  ; $4767: $01 $fc $01
    ld b, $f9                                     ; $476a: $06 $f9
    nop                                           ; $476c: $00
    rst RST_38                                    ; $476d: $ff
    nop                                           ; $476e: $00
    rst RST_38                                    ; $476f: $ff
    nop                                           ; $4770: $00
    rst RST_38                                    ; $4771: $ff
    nop                                           ; $4772: $00
    rst RST_38                                    ; $4773: $ff
    nop                                           ; $4774: $00
    rst RST_38                                    ; $4775: $ff
    nop                                           ; $4776: $00
    rst RST_38                                    ; $4777: $ff
    nop                                           ; $4778: $00
    rst RST_38                                    ; $4779: $ff
    nop                                           ; $477a: $00
    ld de, $a5ff                                  ; $477b: $11 $ff $a5
    add c                                         ; $477e: $81
    ld a, a                                       ; $477f: $7f
    rst RST_38                                    ; $4780: $ff
    ld a, a                                       ; $4781: $7f
    rst RST_38                                    ; $4782: $ff
    ld a, a                                       ; $4783: $7f
    adc a                                         ; $4784: $8f
    ld a, a                                       ; $4785: $7f
    adc b                                         ; $4786: $88
    ld a, a                                       ; $4787: $7f
    adc a                                         ; $4788: $8f
    ld a, a                                       ; $4789: $7f
    cp b                                          ; $478a: $b8
    ld c, a                                       ; $478b: $4f
    cp b                                          ; $478c: $b8
    ld c, a                                       ; $478d: $4f
    xor b                                         ; $478e: $a8
    ld c, a                                       ; $478f: $4f
    xor e                                         ; $4790: $ab
    ld c, h                                       ; $4791: $4c
    xor e                                         ; $4792: $ab
    ld c, h                                       ; $4793: $4c
    xor d                                         ; $4794: $aa
    ld c, h                                       ; $4795: $4c
    xor d                                         ; $4796: $aa
    ld c, h                                       ; $4797: $4c
    xor d                                         ; $4798: $aa
    ld c, h                                       ; $4799: $4c
    cp e                                          ; $479a: $bb
    ld c, h                                       ; $479b: $4c
    adc b                                         ; $479c: $88
    ld a, a                                       ; $479d: $7f
    add c                                         ; $479e: $81

jr_005_479f:
    ld a, a                                       ; $479f: $7f
    ld a, a                                       ; $47a0: $7f
    rst RST_38                                    ; $47a1: $ff
    ld a, a                                       ; $47a2: $7f
    inc bc                                        ; $47a3: $03
    rst RST_38                                    ; $47a4: $ff
    add l                                         ; $47a5: $85
    jr jr_005_479f                                ; $47a6: $18 $f7

    rst RST_30                                    ; $47a8: $f7
    rst RST_38                                    ; $47a9: $ff
    rst RST_30                                    ; $47aa: $f7
    inc bc                                        ; $47ab: $03
    rst RST_38                                    ; $47ac: $ff
    add b                                         ; $47ad: $80
    add l                                         ; $47ae: $85
    inc b                                         ; $47af: $04
    ld sp, hl                                     ; $47b0: $f9
    adc a                                         ; $47b1: $8f
    adc a                                         ; $47b2: $8f
    adc a                                         ; $47b3: $8f
    add a                                         ; $47b4: $87
    cp b                                          ; $47b5: $b8
    rst RST_08                                    ; $47b6: $cf
    xor b                                         ; $47b7: $a8
    rst RST_08                                    ; $47b8: $cf
    cp d                                          ; $47b9: $ba
    call Call_000_0388                            ; $47ba: $cd $88 $03
    rst RST_38                                    ; $47bd: $ff
    sbc h                                         ; $47be: $9c
    add b                                         ; $47bf: $80
    add b                                         ; $47c0: $80
    cp a                                          ; $47c1: $bf
    add b                                         ; $47c2: $80
    or b                                          ; $47c3: $b0
    sbc a                                         ; $47c4: $9f
    xor a                                         ; $47c5: $af
    sub b                                         ; $47c6: $90
    xor a                                         ; $47c7: $af
    sub b                                         ; $47c8: $90
    or b                                          ; $47c9: $b0
    and b                                         ; $47ca: $a0
    rst RST_18                                    ; $47cb: $df
    ret nc                                        ; $47cc: $d0

    ldh a, [$ffbf]                                ; $47cd: $f0 $bf
    xor a                                         ; $47cf: $af
    sub b                                         ; $47d0: $90
    xor a                                         ; $47d1: $af
    sub b                                         ; $47d2: $90
    xor a                                         ; $47d3: $af
    sub b                                         ; $47d4: $90
    and b                                         ; $47d5: $a0
    sub b                                         ; $47d6: $90
    cp a                                          ; $47d7: $bf
    add b                                         ; $47d8: $80
    ret nz                                        ; $47d9: $c0

    cp a                                          ; $47da: $bf
    inc b                                         ; $47db: $04
    rst RST_38                                    ; $47dc: $ff
    sbc e                                         ; $47dd: $9b
    inc bc                                        ; $47de: $03
    ld bc, $03fd                                  ; $47df: $01 $fd $03
    dec b                                         ; $47e2: $05
    ei                                            ; $47e3: $fb
    push af                                       ; $47e4: $f5
    inc bc                                        ; $47e5: $03
    push af                                       ; $47e6: $f5
    inc bc                                        ; $47e7: $03
    dec b                                         ; $47e8: $05
    inc bc                                        ; $47e9: $03
    db $fd                                        ; $47ea: $fd
    inc bc                                        ; $47eb: $03
    dec b                                         ; $47ec: $05
    ei                                            ; $47ed: $fb
    push af                                       ; $47ee: $f5
    inc bc                                        ; $47ef: $03
    push af                                       ; $47f0: $f5
    inc bc                                        ; $47f1: $03
    push af                                       ; $47f2: $f5
    inc bc                                        ; $47f3: $03
    dec b                                         ; $47f4: $05
    inc bc                                        ; $47f5: $03
    db $fd                                        ; $47f6: $fd
    inc bc                                        ; $47f7: $03
    ld bc, $ff03                                  ; $47f8: $01 $03 $ff
    add h                                         ; $47fb: $84
    add c                                         ; $47fc: $81
    ld a, a                                       ; $47fd: $7f
    add c                                         ; $47fe: $81
    ld a, a                                       ; $47ff: $7f
    add b                                         ; $4800: $80
    add l                                         ; $4801: $85
    inc b                                         ; $4802: $04
    ld a, a                                       ; $4803: $7f
    sbc d                                         ; $4804: $9a
    xor [hl]                                      ; $4805: $ae
    db $ec                                        ; $4806: $ec
    rst RST_38                                    ; $4807: $ff
    and e                                         ; $4808: $a3
    db $fc                                        ; $4809: $fc
    pop af                                        ; $480a: $f1
    ldh [$ff81], a                                ; $480b: $e0 $81
    ld a, a                                       ; $480d: $7f
    add c                                         ; $480e: $81
    ld a, a                                       ; $480f: $7f
    rst RST_38                                    ; $4810: $ff
    rst RST_38                                    ; $4811: $ff
    ccf                                           ; $4812: $3f
    ld hl, sp-$74                                 ; $4813: $f8 $8c
    rst RST_38                                    ; $4815: $ff
    adc a                                         ; $4816: $8f
    rst RST_38                                    ; $4817: $ff
    db $e3                                        ; $4818: $e3
    rra                                           ; $4819: $1f
    rst RST_10                                    ; $481a: $d7
    inc bc                                        ; $481b: $03
    ld d, e                                       ; $481c: $53
    ret nz                                        ; $481d: $c0

    ld c, d                                       ; $481e: $4a
    ret nz                                        ; $481f: $c0

    ld l, [hl]                                    ; $4820: $6e
    ret nz                                        ; $4821: $c0

    ld h, h                                       ; $4822: $64
    ret nz                                        ; $4823: $c0

    ld h, h                                       ; $4824: $64
    ret nz                                        ; $4825: $c0

    ld [hl], l                                    ; $4826: $75
    ret nz                                        ; $4827: $c0

    ld [hl], c                                    ; $4828: $71

jr_005_4829:
    ret nz                                        ; $4829: $c0

    ld [hl], c                                    ; $482a: $71
    ret nz                                        ; $482b: $c0

    ld [hl], d                                    ; $482c: $72
    inc bc                                        ; $482d: $03
    ld h, $03                                     ; $482e: $26 $03
    ld h, $03                                     ; $4830: $26 $03
    adc [hl]                                      ; $4832: $8e
    inc bc                                        ; $4833: $03
    adc d                                         ; $4834: $8a
    inc bc                                        ; $4835: $03
    jp z, $da03                                   ; $4836: $ca $03 $da

    inc bc                                        ; $4839: $03

jr_005_483a:
    ld d, [hl]                                    ; $483a: $56
    inc bc                                        ; $483b: $03
    di                                            ; $483c: $f3
    jr nz, jr_005_4829                            ; $483d: $20 $ea

    ldh [rNR34], a                                ; $483f: $e0 $1e
    jr jr_005_483a                                ; $4841: $18 $f7

    rla                                           ; $4843: $17
    rst RST_38                                    ; $4844: $ff
    rst RST_38                                    ; $4845: $ff
    ld bc, $7f00                                  ; $4846: $01 $00 $7f
    ld bc, $017f                                  ; $4849: $01 $7f $01
    ld [hl], a                                    ; $484c: $77
    inc b                                         ; $484d: $04
    daa                                           ; $484e: $27
    rlca                                          ; $484f: $07
    jr c, jr_005_486a                             ; $4850: $38 $18

    rst RST_30                                    ; $4852: $f7
    ldh a, [rIE]                                  ; $4853: $f0 $ff
    rst RST_38                                    ; $4855: $ff
    ld bc, $7f00                                  ; $4856: $01 $00 $7f
    ld bc, $017f                                  ; $4859: $01 $7f $01
    adc b                                         ; $485c: $88
    add h                                         ; $485d: $84
    add h                                         ; $485e: $84
    adc h                                         ; $485f: $8c
    add b                                         ; $4860: $80
    adc b                                         ; $4861: $88
    add b                                         ; $4862: $80
    adc h                                         ; $4863: $8c
    add h                                         ; $4864: $84
    adc h                                         ; $4865: $8c
    add h                                         ; $4866: $84
    adc h                                         ; $4867: $8c
    add h                                         ; $4868: $84
    adc h                                         ; $4869: $8c

jr_005_486a:
    add h                                         ; $486a: $84
    adc h                                         ; $486b: $8c
    add h                                         ; $486c: $84
    adc h                                         ; $486d: $8c
    add h                                         ; $486e: $84
    adc h                                         ; $486f: $8c
    add h                                         ; $4870: $84
    adc h                                         ; $4871: $8c
    add h                                         ; $4872: $84
    adc h                                         ; $4873: $8c
    add b                                         ; $4874: $80
    adc b                                         ; $4875: $88
    add b                                         ; $4876: $80
    adc h                                         ; $4877: $8c
    add h                                         ; $4878: $84
    adc h                                         ; $4879: $8c
    add h                                         ; $487a: $84
    rst RST_38                                    ; $487b: $ff
    ld b, e                                       ; $487c: $43
    ld hl, $6321                                  ; $487d: $21 $21 $63
    ld bc, $0143                                  ; $4880: $01 $43 $01
    ld h, e                                       ; $4883: $63
    ld hl, $2163                                  ; $4884: $21 $63 $21
    xor a                                         ; $4887: $af

jr_005_4888:
    ld h, e                                       ; $4888: $63
    ld hl, $2163                                  ; $4889: $21 $63 $21
    ld h, e                                       ; $488c: $63
    ld hl, $2163                                  ; $488d: $21 $63 $21
    ld h, e                                       ; $4890: $63
    ld hl, $2163                                  ; $4891: $21 $63 $21
    ld h, e                                       ; $4894: $63
    ld bc, $0143                                  ; $4895: $01 $43 $01
    ld h, e                                       ; $4898: $63
    ld hl, $2163                                  ; $4899: $21 $63 $21
    rst RST_38                                    ; $489c: $ff
    nop                                           ; $489d: $00
    nop                                           ; $489e: $00
    ld a, a                                       ; $489f: $7f
    ld a, a                                       ; $48a0: $7f
    jr z, jr_005_48cb                             ; $48a1: $28 $28

    inc h                                         ; $48a3: $24
    rst RST_20                                    ; $48a4: $e7
    ld b, d                                       ; $48a5: $42
    jp $c35a                                      ; $48a6: $c3 $5a $c3


    db $db                                        ; $48a9: $db
    jp $257f                                      ; $48aa: $c3 $7f $25


    and l                                         ; $48ad: $a5
    ld h, a                                       ; $48ae: $67
    or l                                          ; $48af: $b5
    ld h, a                                       ; $48b0: $67

jr_005_48b1:
    rst RST_38                                    ; $48b1: $ff
    rst RST_20                                    ; $48b2: $e7
    rst RST_38                                    ; $48b3: $ff
    inc h                                         ; $48b4: $24
    inc a                                         ; $48b5: $3c
    rst RST_20                                    ; $48b6: $e7
    inc bc                                        ; $48b7: $03
    rst RST_38                                    ; $48b8: $ff
    adc [hl]                                      ; $48b9: $8e
    nop                                           ; $48ba: $00
    rst RST_38                                    ; $48bb: $ff
    rst RST_38                                    ; $48bc: $ff
    ld a, [de]                                    ; $48bd: $1a
    push bc                                       ; $48be: $c5
    or d                                          ; $48bf: $b2
    push de                                       ; $48c0: $d5
    cp [hl]                                       ; $48c1: $be
    push de                                       ; $48c2: $d5
    sub $ff                                       ; $48c3: $d6 $ff
    sbc $ff                                       ; $48c5: $de $ff
    rst RST_18                                    ; $48c7: $df
    dec b                                         ; $48c8: $05
    rst RST_38                                    ; $48c9: $ff
    rst RST_38                                    ; $48ca: $ff

jr_005_48cb:
    inc [hl]                                      ; $48cb: $34
    ld b, c                                       ; $48cc: $41
    ld h, $d1                                     ; $48cd: $26 $d1
    ld a, [hl]                                    ; $48cf: $7e
    pop de                                        ; $48d0: $d1
    sub $fd                                       ; $48d1: $d6 $fd
    rst RST_30                                    ; $48d3: $f7
    db $fd                                        ; $48d4: $fd
    db $dd                                        ; $48d5: $dd
    rst RST_30                                    ; $48d6: $f7
    rst RST_18                                    ; $48d7: $df
    db $fd                                        ; $48d8: $fd
    rst RST_38                                    ; $48d9: $ff
    rst RST_38                                    ; $48da: $ff
    ld [$4f15], a                                 ; $48db: $ea $15 $4f
    nop                                           ; $48de: $00
    call $c100                                    ; $48df: $cd $00 $c1
    rrca                                          ; $48e2: $0f
    xor a                                         ; $48e3: $af
    ld bc, $019e                                  ; $48e4: $01 $9e $01
    ld sp, hl                                     ; $48e7: $f9
    ld [bc], a                                    ; $48e8: $02
    rlc d                                         ; $48e9: $cb $02
    ld a, [$ba07]                                 ; $48eb: $fa $07 $ba
    ld b, l                                       ; $48ee: $45
    rst RST_00                                    ; $48ef: $c7
    jr z, jr_005_4888                             ; $48f0: $28 $96

    jr c, jr_005_48b1                             ; $48f2: $38 $bd

    db $10                                        ; $48f4: $10
    adc b                                         ; $48f5: $88
    db $10                                        ; $48f6: $10
    sbc b                                         ; $48f7: $98
    jr nc, @+$3c                                  ; $48f8: $30 $3a

    rst RST_38                                    ; $48fa: $ff
    db $eb                                        ; $48fb: $eb
    rst RST_38                                    ; $48fc: $ff
    adc $61                                       ; $48fd: $ce $61
    ld e, e                                       ; $48ff: $5b
    pop bc                                        ; $4900: $c1
    pop af                                        ; $4901: $f1
    add e                                         ; $4902: $83
    ldh [c], a                                    ; $4903: $e2
    rlca                                          ; $4904: $07
    and $19                                       ; $4905: $e6 $19
    add h                                         ; $4907: $84
    ld h, c                                       ; $4908: $61
    ldh [c], a                                    ; $4909: $e2
    ld bc, $09c6                                  ; $490a: $01 $c6 $09
    db $ec                                        ; $490d: $ec
    ld de, $a158                                  ; $490e: $11 $58 $a1
    ld c, d                                       ; $4911: $4a
    pop hl                                        ; $4912: $e1
    rst RST_28                                    ; $4913: $ef
    ld b, b                                       ; $4914: $40

jr_005_4915:
    ld h, $41                                     ; $4915: $26 $41
    cp h                                          ; $4917: $bc
    ld h, c                                       ; $4918: $61
    ld [hl], b                                    ; $4919: $70
    rst RST_38                                    ; $491a: $ff
    cp $00                                        ; $491b: $fe $00
    ld e, a                                       ; $491d: $5f
    jr jr_005_4915                                ; $491e: $18 $f5

    dec l                                         ; $4920: $2d
    jp z, $d046                                   ; $4921: $ca $46 $d0

    ld c, [hl]                                    ; $4924: $4e
    sbc e                                         ; $4925: $9b
    add h                                         ; $4926: $84
    or h                                          ; $4927: $b4
    adc b                                         ; $4928: $88
    xor h                                         ; $4929: $ac
    add d                                         ; $492a: $82
    push bc                                       ; $492b: $c5
    and d                                         ; $492c: $a2
    push bc                                       ; $492d: $c5
    and e                                         ; $492e: $a3
    sbc d                                         ; $492f: $9a
    rst RST_20                                    ; $4930: $e7
    xor d                                         ; $4931: $aa
    rst RST_20                                    ; $4932: $e7
    ld hl, sp-$59                                 ; $4933: $f8 $a7
    xor [hl]                                      ; $4935: $ae
    pop af                                        ; $4936: $f1
    pop af                                        ; $4937: $f1
    ld a, a                                       ; $4938: $7f
    rra                                           ; $4939: $1f
    rst RST_38                                    ; $493a: $ff
    ld a, a                                       ; $493b: $7f
    ld [hl], b                                    ; $493c: $70
    adc [hl]                                      ; $493d: $8e
    sbc c                                         ; $493e: $99
    ld [hl], $0d                                  ; $493f: $36 $0d
    ld [hl+], a                                   ; $4941: $22
    ld e, a                                       ; $4942: $5f
    ld l, d                                       ; $4943: $6a
    rra                                           ; $4944: $1f
    dec b                                         ; $4945: $05
    sbc a                                         ; $4946: $9f
    inc sp                                        ; $4947: $33
    rst RST_08                                    ; $4948: $cf
    cp e                                          ; $4949: $bb
    or b                                          ; $494a: $b0
    ld b, a                                       ; $494b: $47
    sbc c                                         ; $494c: $99
    rlca                                          ; $494d: $07
    ld sp, hl                                     ; $494e: $f9
    rlca                                          ; $494f: $07
    jp $a93f                                      ; $4950: $c3 $3f $a9


    ld a, a                                       ; $4953: $7f
    xor l                                         ; $4954: $ad
    ld a, a                                       ; $4955: $7f
    push bc                                       ; $4956: $c5
    ccf                                           ; $4957: $3f
    ld c, $ff                                     ; $4958: $0e $ff
    ld a, [$00fd]                                 ; $495a: $fa $fd $00
    nop                                           ; $495d: $00
    ld a, a                                       ; $495e: $7f
    nop                                           ; $495f: $00
    ld a, a                                       ; $4960: $7f
    ccf                                           ; $4961: $3f
    ld a, a                                       ; $4962: $7f
    jr nz, jr_005_49e4                            ; $4963: $20 $7f

    jr nz, jr_005_49a8                            ; $4965: $20 $41

    ld [hl+], a                                   ; $4967: $22
    ld a, a                                       ; $4968: $7f
    ld [bc], a                                    ; $4969: $02
    ld [hl], a                                    ; $496a: $77
    ld a, [hl-]                                   ; $496b: $3a
    ld [hl], a                                    ; $496c: $77
    ld [hl+], a                                   ; $496d: $22
    ld [hl], a                                    ; $496e: $77
    ld [hl+], a                                   ; $496f: $22
    ld [hl], a                                    ; $4970: $77
    ld [hl+], a                                   ; $4971: $22
    ld [hl], a                                    ; $4972: $77
    ld [hl+], a                                   ; $4973: $22
    ld [hl], a                                    ; $4974: $77

jr_005_4975:
    ld [hl+], a                                   ; $4975: $22
    ld b, h                                       ; $4976: $44
    ld [hl+], a                                   ; $4977: $22
    ld a, a                                       ; $4978: $7f
    nop                                           ; $4979: $00
    ld a, a                                       ; $497a: $7f
    add b                                         ; $497b: $80
    inc bc                                        ; $497c: $03
    rst RST_38                                    ; $497d: $ff
    rst RST_38                                    ; $497e: $ff
    rst RST_38                                    ; $497f: $ff
    ld bc, $fdfb                                  ; $4980: $01 $fb $fd
    ei                                            ; $4983: $fb
    ld bc, $01fb                                  ; $4984: $01 $fb $01
    add e                                         ; $4987: $83
    ld bc, $01bf                                  ; $4988: $01 $bf $01
    cp e                                          ; $498b: $bb
    dec e                                         ; $498c: $1d
    cp e                                          ; $498d: $bb
    ld de, $11bb                                  ; $498e: $11 $bb $11
    cp e                                          ; $4991: $bb
    ld de, $11bb                                  ; $4992: $11 $bb $11
    cp e                                          ; $4995: $bb
    ld de, $1123                                  ; $4996: $11 $23 $11
    rst RST_38                                    ; $4999: $ff
    ld bc, $ffff                                  ; $499a: $01 $ff $ff
    ei                                            ; $499d: $fb
    sbc l                                         ; $499e: $9d
    ld l, a                                       ; $499f: $6f
    ld h, [hl]                                    ; $49a0: $66
    call $c400                                    ; $49a1: $cd $00 $c4
    ld [$00af], sp                                ; $49a4: $08 $af $00
    adc a                                         ; $49a7: $8f

jr_005_49a8:
    jr @-$14                                      ; $49a8: $18 $ea

    jr jr_005_4975                                ; $49aa: $18 $c9

    nop                                           ; $49ac: $00
    rst RST_38                                    ; $49ad: $ff
    nop                                           ; $49ae: $00
    rst RST_38                                    ; $49af: $ff
    nop                                           ; $49b0: $00
    rst RST_28                                    ; $49b1: $ef
    ld b, $af                                     ; $49b2: $06 $af
    dec b                                         ; $49b4: $05
    sbc [hl]                                      ; $49b5: $9e
    inc hl                                        ; $49b6: $23
    sbc b                                         ; $49b7: $98
    nop                                           ; $49b8: $00
    cp e                                          ; $49b9: $bb
    inc sp                                        ; $49ba: $33
    cp $cd                                        ; $49bb: $fe $cd
    rst RST_38                                    ; $49bd: $ff
    sbc e                                         ; $49be: $9b
    ld l, [hl]                                    ; $49bf: $6e
    ld h, l                                       ; $49c0: $65
    jp c, $b201                                   ; $49c1: $da $01 $b2

    ld b, c                                       ; $49c4: $41
    ld h, d                                       ; $49c5: $62
    ld bc, $00ff                                  ; $49c6: $01 $ff $00
    call nz, $c231                                ; $49c9: $c4 $31 $c2
    ld sp, $01c6                                  ; $49cc: $31 $c6 $01
    db $fc                                        ; $49cf: $fc
    ld bc, $01f8                                  ; $49d0: $01 $f8 $01
    jp z, $cf01                                   ; $49d3: $ca $01 $cf

    jr nz, jr_005_4a3e                            ; $49d6: $20 $66

    ld bc, $97fe                                  ; $49d8: $01 $fe $97
    db $fd                                        ; $49db: $fd
    ld l, e                                       ; $49dc: $6b
    cp $80                                        ; $49dd: $fe $80
    rst RST_08                                    ; $49df: $cf
    add b                                         ; $49e0: $80
    call $cc40                                    ; $49e1: $cd $40 $cc

jr_005_49e4:
    add b                                         ; $49e4: $80
    xor h                                         ; $49e5: $ac
    add e                                         ; $49e6: $83
    call c, $ea43                                 ; $49e7: $dc $43 $ea
    ld d, b                                       ; $49ea: $50
    ret                                           ; $49eb: $c9


    add b                                         ; $49ec: $80
    rst RST_38                                    ; $49ed: $ff
    add b                                         ; $49ee: $80
    rst RST_38                                    ; $49ef: $ff
    ld b, b                                       ; $49f0: $40
    ld l, a                                       ; $49f1: $6f
    ret nz                                        ; $49f2: $c0

    xor [hl]                                      ; $49f3: $ae
    sub [hl]                                      ; $49f4: $96
    cp c                                          ; $49f5: $b9
    add [hl]                                      ; $49f6: $86
    ret c                                         ; $49f7: $d8

    ld b, b                                       ; $49f8: $40
    ld hl, sp+$40                                 ; $49f9: $f8 $40
    sub e                                         ; $49fb: $93
    db $ec                                        ; $49fc: $ec
    ccf                                           ; $49fd: $3f
    sbc a                                         ; $49fe: $9f
    ld bc, $034e                                  ; $49ff: $01 $4e $03
    db $db                                        ; $4a02: $db
    ld [bc], a                                    ; $4a03: $02
    di                                            ; $4a04: $f3
    ld bc, $0263                                  ; $4a05: $01 $63 $02
    rst RST_30                                    ; $4a08: $f7
    add hl, bc                                    ; $4a09: $09
    push hl                                       ; $4a0a: $e5
    ld bc, $02e3                                  ; $4a0b: $01 $e3 $02
    sub $1b                                       ; $4a0e: $d6 $1b
    rst RST_38                                    ; $4a10: $ff
    ld a, [hl+]                                   ; $4a11: $2a
    ld sp, hl                                     ; $4a12: $f9
    ld sp, $01cb                                  ; $4a13: $31 $cb $01
    rst RST_28                                    ; $4a16: $ef
    ld [bc], a                                    ; $4a17: $02
    ld h, a                                       ; $4a18: $67
    ld a, [bc]                                    ; $4a19: $0a
    db $fd                                        ; $4a1a: $fd
    ld bc, $f907                                  ; $4a1b: $01 $07 $f9
    nop                                           ; $4a1e: $00
    stop                                          ; $4a1f: $10 $00
    add e                                         ; $4a21: $83
    rst RST_38                                    ; $4a22: $ff
    rst RST_38                                    ; $4a23: $ff
    cp $03                                        ; $4a24: $fe $03
    rst RST_38                                    ; $4a26: $ff
    add a                                         ; $4a27: $87
    rst RST_10                                    ; $4a28: $d7
    rst RST_38                                    ; $4a29: $ff
    db $eb                                        ; $4a2a: $eb
    rst RST_30                                    ; $4a2b: $f7
    push hl                                       ; $4a2c: $e5
    ei                                            ; $4a2d: $fb
    ld sp, hl                                     ; $4a2e: $f9
    dec b                                         ; $4a2f: $05
    rst RST_38                                    ; $4a30: $ff
    add l                                         ; $4a31: $85
    ldh a, [rIE]                                  ; $4a32: $f0 $ff
    sub e                                         ; $4a34: $93
    db $ec                                        ; $4a35: $ec
    call nz, $ff05                                ; $4a36: $c4 $05 $ff
    add l                                         ; $4a39: $85
    ldh a, [rIE]                                  ; $4a3a: $f0 $ff
    db $eb                                        ; $4a3c: $eb
    db $f4                                        ; $4a3d: $f4

jr_005_4a3e:
    rst RST_38                                    ; $4a3e: $ff
    add b                                         ; $4a3f: $80
    add h                                         ; $4a40: $84
    dec b                                         ; $4a41: $05
    dec a                                         ; $4a42: $3d
    halt                                          ; $4a43: $76
    adc [hl]                                      ; $4a44: $8e
    db $e3                                        ; $4a45: $e3
    push af                                       ; $4a46: $f5
    adc [hl]                                      ; $4a47: $8e
    ei                                            ; $4a48: $fb
    ld [hl], e                                    ; $4a49: $73
    db $fd                                        ; $4a4a: $fd
    ld e, d                                       ; $4a4b: $5a
    cp l                                          ; $4a4c: $bd
    sbc a                                         ; $4a4d: $9f
    db $fc                                        ; $4a4e: $fc
    ld [hl], l                                    ; $4a4f: $75
    cp $55                                        ; $4a50: $fe $55
    cp [hl]                                       ; $4a52: $be
    ld a, [hl-]                                   ; $4a53: $3a
    rst RST_08                                    ; $4a54: $cf
    rst RST_30                                    ; $4a55: $f7
    inc bc                                        ; $4a56: $03
    rst RST_38                                    ; $4a57: $ff
    db $e4                                        ; $4a58: $e4
    rra                                           ; $4a59: $1f
    rst RST_38                                    ; $4a5a: $ff
    ld c, a                                       ; $4a5b: $4f
    cp [hl]                                       ; $4a5c: $be
    rst RST_38                                    ; $4a5d: $ff
    rst RST_38                                    ; $4a5e: $ff
    ld a, a                                       ; $4a5f: $7f
    rst RST_38                                    ; $4a60: $ff
    xor a                                         ; $4a61: $af
    ld a, a                                       ; $4a62: $7f
    xor a                                         ; $4a63: $af
    ld a, a                                       ; $4a64: $7f
    daa                                           ; $4a65: $27
    rst RST_38                                    ; $4a66: $ff
    ld [hl], c                                    ; $4a67: $71
    rst RST_28                                    ; $4a68: $ef
    ld a, c                                       ; $4a69: $79
    rst RST_30                                    ; $4a6a: $f7
    ld a, [hl-]                                   ; $4a6b: $3a
    rst RST_30                                    ; $4a6c: $f7
    ld [hl-], a                                   ; $4a6d: $32
    rst RST_38                                    ; $4a6e: $ff
    or a                                          ; $4a6f: $b7
    cp $7f                                        ; $4a70: $fe $7f
    or $77                                        ; $4a72: $f6 $77
    cp $76                                        ; $4a74: $fe $76
    db $fd                                        ; $4a76: $fd
    ld a, h                                       ; $4a77: $7c
    rst RST_38                                    ; $4a78: $ff
    cp $cf                                        ; $4a79: $fe $cf
    rst RST_38                                    ; $4a7b: $ff
    inc bc                                        ; $4a7c: $03
    rst RST_38                                    ; $4a7d: $ff
    rst RST_38                                    ; $4a7e: $ff
    rst RST_30                                    ; $4a7f: $f7
    rst RST_38                                    ; $4a80: $ff
    di                                            ; $4a81: $f3
    rst RST_38                                    ; $4a82: $ff
    ld sp, hl                                     ; $4a83: $f9
    rst RST_30                                    ; $4a84: $f7
    db $ed                                        ; $4a85: $ed
    di                                            ; $4a86: $f3
    dec [hl]                                      ; $4a87: $35
    ei                                            ; $4a88: $fb
    or h                                          ; $4a89: $b4
    ld a, a                                       ; $4a8a: $7f
    ld [hl-], a                                   ; $4a8b: $32
    db $fd                                        ; $4a8c: $fd
    push af                                       ; $4a8d: $f5
    ld a, h                                       ; $4a8e: $7c
    ld [hl-], a                                   ; $4a8f: $32
    db $fc                                        ; $4a90: $fc
    add hl, sp                                    ; $4a91: $39
    cp $39                                        ; $4a92: $fe $39
    cp $5a                                        ; $4a94: $fe $5a
    rst RST_38                                    ; $4a96: $ff
    ld e, $ff                                     ; $4a97: $1e $ff
    ld a, a                                       ; $4a99: $7f
    rst RST_30                                    ; $4a9a: $f7
    rst RST_38                                    ; $4a9b: $ff
    pop bc                                        ; $4a9c: $c1
    rst RST_38                                    ; $4a9d: $ff
    rst RST_38                                    ; $4a9e: $ff
    ld sp, hl                                     ; $4a9f: $f9
    rst RST_38                                    ; $4aa0: $ff
    ei                                            ; $4aa1: $fb
    db $fd                                        ; $4aa2: $fd
    ld [hl], a                                    ; $4aa3: $77
    ei                                            ; $4aa4: $fb
    ld [hl], l                                    ; $4aa5: $75
    ei                                            ; $4aa6: $fb
    ld a, c                                       ; $4aa7: $79
    rst RST_38                                    ; $4aa8: $ff
    scf                                           ; $4aa9: $37
    ei                                            ; $4aaa: $fb
    or l                                          ; $4aab: $b5
    ld a, e                                       ; $4aac: $7b
    jr nc, @+$01                                  ; $4aad: $30 $ff

    and a                                         ; $4aaf: $a7
    ld a, d                                       ; $4ab0: $7a
    dec hl                                        ; $4ab1: $2b
    or $7c                                        ; $4ab2: $f6 $7c
    rst RST_30                                    ; $4ab4: $f7
    xor $f9                                       ; $4ab5: $ee $f9
    cp b                                          ; $4ab7: $b8
    rst RST_30                                    ; $4ab8: $f7
    or $f8                                        ; $4ab9: $f6 $f8
    xor b                                         ; $4abb: $a8
    ld [hl], b                                    ; $4abc: $70
    ld b, $ff                                     ; $4abd: $06 $ff
    sbc l                                         ; $4abf: $9d
    rst RST_18                                    ; $4ac0: $df
    rst RST_38                                    ; $4ac1: $ff
    ld sp, hl                                     ; $4ac2: $f9
    rst RST_38                                    ; $4ac3: $ff
    sub a                                         ; $4ac4: $97
    ei                                            ; $4ac5: $fb
    or a                                          ; $4ac6: $b7
    rst RST_38                                    ; $4ac7: $ff
    dec hl                                        ; $4ac8: $2b
    rst RST_30                                    ; $4ac9: $f7
    db $d3                                        ; $4aca: $d3
    cpl                                           ; $4acb: $2f
    dec de                                        ; $4acc: $1b
    ld [hl], a                                    ; $4acd: $77
    cp e                                          ; $4ace: $bb
    ld [hl], a                                    ; $4acf: $77
    ld e, e                                       ; $4ad0: $5b
    rst RST_20                                    ; $4ad1: $e7
    ld [hl], c                                    ; $4ad2: $71
    adc a                                         ; $4ad3: $8f
    rst RST_10                                    ; $4ad4: $d7
    rrca                                          ; $4ad5: $0f
    cpl                                           ; $4ad6: $2f
    rra                                           ; $4ad7: $1f
    adc a                                         ; $4ad8: $8f
    ld a, a                                       ; $4ad9: $7f
    ld sp, hl                                     ; $4ada: $f9
    cp $e0                                        ; $4adb: $fe $e0
    dec b                                         ; $4add: $05
    rst RST_38                                    ; $4ade: $ff
    add a                                         ; $4adf: $87
    ld sp, hl                                     ; $4ae0: $f9
    rst RST_38                                    ; $4ae1: $ff
    jp c, $e4e5                                   ; $4ae2: $da $e5 $e4

    rst RST_38                                    ; $4ae5: $ff
    cp $03                                        ; $4ae6: $fe $03
    rst RST_38                                    ; $4ae8: $ff
    add e                                         ; $4ae9: $83
    pop hl                                        ; $4aea: $e1
    cp $f8                                        ; $4aeb: $fe $f8
    inc bc                                        ; $4aed: $03
    rst RST_38                                    ; $4aee: $ff
    add e                                         ; $4aef: $83
    cp $ff                                        ; $4af0: $fe $ff
    cp $03                                        ; $4af2: $fe $03
    rst RST_38                                    ; $4af4: $ff
    rst RST_20                                    ; $4af5: $e7
    db $fc                                        ; $4af6: $fc
    rst RST_38                                    ; $4af7: $ff
    db $d3                                        ; $4af8: $d3

jr_005_4af9:
    cpl                                           ; $4af9: $2f
    inc bc                                        ; $4afa: $03
    rst RST_38                                    ; $4afb: $ff
    rra                                           ; $4afc: $1f
    cp $ff                                        ; $4afd: $fe $ff
    cp $ff                                        ; $4aff: $fe $ff
    db $fc                                        ; $4b01: $fc
    rst RST_00                                    ; $4b02: $c7
    inc a                                         ; $4b03: $3c
    ld a, a                                       ; $4b04: $7f
    db $fc                                        ; $4b05: $fc

jr_005_4b06:
    rst RST_38                                    ; $4b06: $ff
    cp $73                                        ; $4b07: $fe $73
    adc [hl]                                      ; $4b09: $8e
    rst RST_10                                    ; $4b0a: $d7
    ld a, a                                       ; $4b0b: $7f
    rst RST_38                                    ; $4b0c: $ff
    rst RST_38                                    ; $4b0d: $ff
    db $dd                                        ; $4b0e: $dd
    db $e3                                        ; $4b0f: $e3
    jp $7f3f                                      ; $4b10: $c3 $3f $7f


    cp $ff                                        ; $4b13: $fe $ff
    cp $8f                                        ; $4b15: $fe $8f
    db $fc                                        ; $4b17: $fc
    or h                                          ; $4b18: $b4
    ld b, b                                       ; $4b19: $40
    cp a                                          ; $4b1a: $bf
    ld b, b                                       ; $4b1b: $40
    rst RST_00                                    ; $4b1c: $c7
    jr c, jr_005_4af9                             ; $4b1d: $38 $da

    ccf                                           ; $4b1f: $3f
    ret nz                                        ; $4b20: $c0

    ccf                                           ; $4b21: $3f
    xor h                                         ; $4b22: $ac
    jr jr_005_4b06                                ; $4b23: $18 $e1

jr_005_4b25:
    ld e, $c6                                     ; $4b25: $1e $c6
    ccf                                           ; $4b27: $3f
    or c                                          ; $4b28: $b1
    ld b, b                                       ; $4b29: $40
    sub h                                         ; $4b2a: $94
    ld l, d                                       ; $4b2b: $6a
    ld a, [bc]                                    ; $4b2c: $0a
    rst RST_38                                    ; $4b2d: $ff
    ld b, [hl]                                    ; $4b2e: $46
    add e                                         ; $4b2f: $83
    inc a                                         ; $4b30: $3c
    ret nz                                        ; $4b31: $c0

    ld b, c                                       ; $4b32: $41
    cp $36                                        ; $4b33: $fe $36
    rst RST_38                                    ; $4b35: $ff
    adc [hl]                                      ; $4b36: $8e
    ld [hl], c                                    ; $4b37: $71
    ld e, a                                       ; $4b38: $5f
    ccf                                           ; $4b39: $3f
    rst RST_00                                    ; $4b3a: $c7
    ccf                                           ; $4b3b: $3f
    rra                                           ; $4b3c: $1f
    rst RST_38                                    ; $4b3d: $ff
    rst RST_28                                    ; $4b3e: $ef
    rst RST_38                                    ; $4b3f: $ff

Jump_005_4b40:
    ld b, e                                       ; $4b40: $43
    rst RST_38                                    ; $4b41: $ff
    and a                                         ; $4b42: $a7
    rra                                           ; $4b43: $1f
    rst RST_18                                    ; $4b44: $df
    ccf                                           ; $4b45: $3f
    add a                                         ; $4b46: $87
    ld a, a                                       ; $4b47: $7f
    add hl, bc                                    ; $4b48: $09
    rst RST_00                                    ; $4b49: $c7
    ld l, e                                       ; $4b4a: $6b
    rlca                                          ; $4b4b: $07
    rst RST_00                                    ; $4b4c: $c7
    ccf                                           ; $4b4d: $3f
    rra                                           ; $4b4e: $1f
    rst RST_38                                    ; $4b4f: $ff
    sbc a                                         ; $4b50: $9f
    ld a, a                                       ; $4b51: $7f
    rst RST_08                                    ; $4b52: $cf
    ccf                                           ; $4b53: $3f
    rra                                           ; $4b54: $1f
    rst RST_38                                    ; $4b55: $ff
    adc a                                         ; $4b56: $8f
    rst RST_38                                    ; $4b57: $ff
    db $db                                        ; $4b58: $db
    db $e4                                        ; $4b59: $e4
    ret nc                                        ; $4b5a: $d0

    rst RST_38                                    ; $4b5b: $ff
    db $fc                                        ; $4b5c: $fc
    inc bc                                        ; $4b5d: $03
    rst RST_38                                    ; $4b5e: $ff
    adc b                                         ; $4b5f: $88
    db $f4                                        ; $4b60: $f4
    rst RST_38                                    ; $4b61: $ff
    sub e                                         ; $4b62: $93
    db $fc                                        ; $4b63: $fc
    ret c                                         ; $4b64: $d8

    rst RST_38                                    ; $4b65: $ff
    db $ed                                        ; $4b66: $ed
    di                                            ; $4b67: $f3
    add b                                         ; $4b68: $80
    add l                                         ; $4b69: $85
    inc b                                         ; $4b6a: $04
    rst RST_20                                    ; $4b6b: $e7
    db $fc                                        ; $4b6c: $fc
    ld hl, sp-$09                                 ; $4b6d: $f8 $f7
    add e                                         ; $4b6f: $83
    rst RST_38                                    ; $4b70: $ff
    rst RST_38                                    ; $4b71: $ff
    cp $05                                        ; $4b72: $fe $05
    rst RST_38                                    ; $4b74: $ff
    sbc l                                         ; $4b75: $9d
    ld c, a                                       ; $4b76: $4f
    cp [hl]                                       ; $4b77: $be
    ld e, $ff                                     ; $4b78: $1e $ff
    ld a, a                                       ; $4b7a: $7f
    rst RST_38                                    ; $4b7b: $ff
    ldh a, [c]                                    ; $4b7c: $f2
    rst RST_38                                    ; $4b7d: $ff
    add hl, sp                                    ; $4b7e: $39
    adc $5a                                       ; $4b7f: $ce $5a
    or h                                          ; $4b81: $b4
    ld l, d                                       ; $4b82: $6a
    db $f4                                        ; $4b83: $f4

jr_005_4b84:
    ldh [$ff9c], a                                ; $4b84: $e0 $9c
    and l                                         ; $4b86: $a5
    jr jr_005_4b25                                ; $4b87: $18 $9c

    ld [hl], c                                    ; $4b89: $71
    ld a, [hl+]                                   ; $4b8a: $2a
    pop af                                        ; $4b8b: $f1
    ld a, l                                       ; $4b8c: $7d
    ldh [c], a                                    ; $4b8d: $e2
    ld [hl], c                                    ; $4b8e: $71
    adc [hl]                                      ; $4b8f: $8e
    adc h                                         ; $4b90: $8c
    rst RST_38                                    ; $4b91: $ff
    sbc l                                         ; $4b92: $9d
    inc bc                                        ; $4b93: $03
    rst RST_38                                    ; $4b94: $ff
    sbc l                                         ; $4b95: $9d
    db $fc                                        ; $4b96: $fc
    inc bc                                        ; $4b97: $03
    add hl, sp                                    ; $4b98: $39
    add $83                                       ; $4b99: $c6 $83
    ld a, h                                       ; $4b9b: $7c
    xor c                                         ; $4b9c: $a9
    ld [hl], h                                    ; $4b9d: $74
    cp h                                          ; $4b9e: $bc
    halt                                          ; $4b9f: $76
    sub d                                         ; $4ba0: $92
    halt                                          ; $4ba1: $76
    ld c, d                                       ; $4ba2: $4a
    or [hl]                                       ; $4ba3: $b6
    db $dd                                        ; $4ba4: $dd
    ld [hl-], a                                   ; $4ba5: $32
    push bc                                       ; $4ba6: $c5
    ld [hl-], a                                   ; $4ba7: $32
    sub [hl]                                      ; $4ba8: $96
    ld [hl], c                                    ; $4ba9: $71
    xor l                                         ; $4baa: $ad
    ld [hl], d                                    ; $4bab: $72
    cp c                                          ; $4bac: $b9
    ld [hl], d                                    ; $4bad: $72
    ret z                                         ; $4bae: $c8

    di                                            ; $4baf: $f3
    pop hl                                        ; $4bb0: $e1
    rst RST_38                                    ; $4bb1: $ff
    call $ff03                                    ; $4bb2: $cd $03 $ff
    sbc l                                         ; $4bb5: $9d
    rra                                           ; $4bb6: $1f
    ldh [$ffce], a                                ; $4bb7: $e0 $ce
    ld [hl], c                                    ; $4bb9: $71
    pop af                                        ; $4bba: $f1
    ld e, $ad                                     ; $4bbb: $1e $ad
    ld e, d                                       ; $4bbd: $5a
    sub $38                                       ; $4bbe: $d6 $38
    add $38                                       ; $4bc0: $c6 $38
    call $1930                                    ; $4bc2: $cd $30 $19
    ld [hl], h                                    ; $4bc5: $74
    db $dd                                        ; $4bc6: $dd
    jr nc, jr_005_4b84                            ; $4bc7: $30 $bb

    ld [hl], h                                    ; $4bc9: $74
    inc h                                         ; $4bca: $24
    ei                                            ; $4bcb: $fb
    push hl                                       ; $4bcc: $e5
    ld [hl], e                                    ; $4bcd: $73
    cp e                                          ; $4bce: $bb
    ld [hl], a                                    ; $4bcf: $77
    ld sp, $9dff                                  ; $4bd0: $31 $ff $9d
    inc bc                                        ; $4bd3: $03
    rst RST_38                                    ; $4bd4: $ff
    sbc l                                         ; $4bd5: $9d
    adc l                                         ; $4bd6: $8d
    ld [hl], b                                    ; $4bd7: $70
    scf                                           ; $4bd8: $37
    ld hl, sp-$28                                 ; $4bd9: $f8 $d8
    rst RST_38                                    ; $4bdb: $ff
    ld e, h                                       ; $4bdc: $5c
    rst RST_28                                    ; $4bdd: $ef
    and e                                         ; $4bde: $a3
    ld d, b                                       ; $4bdf: $50
    ld d, l                                       ; $4be0: $55
    jr z, jr_005_4c34                             ; $4be1: $28 $51

    ld l, $26                                     ; $4be3: $2e $26
    add hl, sp                                    ; $4be5: $39
    and l                                         ; $4be6: $a5
    jr jr_005_4c22                                ; $4be7: $18 $39

    adc [hl]                                      ; $4be9: $8e
    ld d, h                                       ; $4bea: $54
    adc a                                         ; $4beb: $8f
    ld a, $c7                                     ; $4bec: $3e $c7
    adc $f1                                       ; $4bee: $ce $f1
    ldh [rIE], a                                  ; $4bf0: $e0 $ff
    ld a, [$ff03]                                 ; $4bf2: $fa $03 $ff
    sub a                                         ; $4bf5: $97
    ld b, a                                       ; $4bf6: $47
    ccf                                           ; $4bf7: $3f
    rst RST_08                                    ; $4bf8: $cf
    ccf                                           ; $4bf9: $3f
    inc sp                                        ; $4bfa: $33
    rst RST_28                                    ; $4bfb: $ef
    di                                            ; $4bfc: $f3
    rst RST_08                                    ; $4bfd: $cf
    push de                                       ; $4bfe: $d5
    dec hl                                        ; $4bff: $2b
    ld sp, $cb03                                  ; $4c00: $31 $03 $cb
    rlca                                          ; $4c03: $07
    rlca                                          ; $4c04: $07
    rst RST_38                                    ; $4c05: $ff
    rra                                           ; $4c06: $1f
    rst RST_38                                    ; $4c07: $ff
    ld c, a                                       ; $4c08: $4f
    ccf                                           ; $4c09: $3f
    rrca                                          ; $4c0a: $0f
    rst RST_38                                    ; $4c0b: $ff
    and l                                         ; $4c0c: $a5
    dec b                                         ; $4c0d: $05
    rst RST_38                                    ; $4c0e: $ff
    add c                                         ; $4c0f: $81
    ld e, a                                       ; $4c10: $5f
    inc bc                                        ; $4c11: $03
    rst RST_38                                    ; $4c12: $ff
    add l                                         ; $4c13: $85
    db $fc                                        ; $4c14: $fc
    rst RST_38                                    ; $4c15: $ff
    cp $ff                                        ; $4c16: $fe $ff
    di                                            ; $4c18: $f3
    inc bc                                        ; $4c19: $03
    rst RST_38                                    ; $4c1a: $ff
    rst RST_38                                    ; $4c1b: $ff
    rst RST_30                                    ; $4c1c: $f7
    db $fc                                        ; $4c1d: $fc
    ei                                            ; $4c1e: $fb
    db $fd                                        ; $4c1f: $fd
    ld e, b                                       ; $4c20: $58
    rst RST_38                                    ; $4c21: $ff

jr_005_4c22:
    and l                                         ; $4c22: $a5
    ld a, a                                       ; $4c23: $7f
    ld [hl], d                                    ; $4c24: $72
    cp l                                          ; $4c25: $bd
    ld a, [hl]                                    ; $4c26: $7e
    cp a                                          ; $4c27: $bf
    or a                                          ; $4c28: $b7
    rst RST_18                                    ; $4c29: $df
    rst RST_30                                    ; $4c2a: $f7
    ei                                            ; $4c2b: $fb
    rst RST_18                                    ; $4c2c: $df
    rst RST_38                                    ; $4c2d: $ff
    rst RST_30                                    ; $4c2e: $f7
    rst RST_38                                    ; $4c2f: $ff
    cp $fd                                        ; $4c30: $fe $fd
    rst RST_28                                    ; $4c32: $ef
    nop                                           ; $4c33: $00

jr_005_4c34:
    dec de                                        ; $4c34: $1b

jr_005_4c35:
    rst RST_20                                    ; $4c35: $e7
    ld h, d                                       ; $4c36: $62
    rst RST_38                                    ; $4c37: $ff
    add $ff                                       ; $4c38: $c6 $ff
    cp $ff                                        ; $4c3a: $fe $ff
    db $fc                                        ; $4c3c: $fc
    ld a, a                                       ; $4c3d: $7f
    db $dd                                        ; $4c3e: $dd
    ld a, $dd                                     ; $4c3f: $3e $dd
    cp [hl]                                       ; $4c41: $be
    reti                                          ; $4c42: $d9


    cp $da                                        ; $4c43: $fe $da
    db $fc                                        ; $4c45: $fc
    ei                                            ; $4c46: $fb
    db $fc                                        ; $4c47: $fc
    db $fc                                        ; $4c48: $fc
    ldh a, [$ff99]                                ; $4c49: $f0 $99
    ldh [$ffa9], a                                ; $4c4b: $e0 $a9
    ret nz                                        ; $4c4d: $c0

    db $e4                                        ; $4c4e: $e4
    add b                                         ; $4c4f: $80
    xor c                                         ; $4c50: $a9
    nop                                           ; $4c51: $00
    ld d, e                                       ; $4c52: $53
    nop                                           ; $4c53: $00
    and a                                         ; $4c54: $a7
    ld b, b                                       ; $4c55: $40
    cp c                                          ; $4c56: $b9
    ld b, [hl]                                    ; $4c57: $46
    sbc h                                         ; $4c58: $9c
    ld h, e                                       ; $4c59: $63
    sub d                                         ; $4c5a: $92
    ld a, a                                       ; $4c5b: $7f
    ld e, b                                       ; $4c5c: $58
    ld a, $a4                                     ; $4c5d: $3e $a4
    jr jr_005_4c35                                ; $4c5f: $18 $d4

    add hl, bc                                    ; $4c61: $09
    dec [hl]                                      ; $4c62: $35
    dec bc                                        ; $4c63: $0b
    or l                                          ; $4c64: $b5
    dec bc                                        ; $4c65: $0b
    ret nc                                        ; $4c66: $d0

    rrca                                          ; $4c67: $0f
    sbc h                                         ; $4c68: $9c
    inc bc                                        ; $4c69: $03
    ld c, l                                       ; $4c6a: $4d
    inc bc                                        ; $4c6b: $03
    sbc h                                         ; $4c6c: $9c
    inc bc                                        ; $4c6d: $03
    add a                                         ; $4c6e: $87
    nop                                           ; $4c6f: $00
    jp c, $cf00                                   ; $4c70: $da $00 $cf

    nop                                           ; $4c73: $00
    rst RST_18                                    ; $4c74: $df
    ccf                                           ; $4c75: $3f
    sbc a                                         ; $4c76: $9f
    ld a, a                                       ; $4c77: $7f
    ld e, a                                       ; $4c78: $5f
    rst RST_38                                    ; $4c79: $ff
    jp $d1ff                                      ; $4c7a: $c3 $ff $d1


    cpl                                           ; $4c7d: $2f
    inc h                                         ; $4c7e: $24
    sbc a                                         ; $4c7f: $9f
    db $ed                                        ; $4c80: $ed
    ld a, [de]                                    ; $4c81: $1a
    ld e, e                                       ; $4c82: $5b
    and l                                         ; $4c83: $a5
    or c                                          ; $4c84: $b1
    inc c                                         ; $4c85: $0c
    sub c                                         ; $4c86: $91
    ld a, h                                       ; $4c87: $7c
    or d                                          ; $4c88: $b2
    jp hl                                         ; $4c89: $e9


    ret nc                                        ; $4c8a: $d0

    rst RST_08                                    ; $4c8b: $cf
    dec b                                         ; $4c8c: $05
    ei                                            ; $4c8d: $fb
    jp nc, $a02f                                  ; $4c8e: $d2 $2f $a0

    rra                                           ; $4c91: $1f
    ld e, a                                       ; $4c92: $5f
    nop                                           ; $4c93: $00
    rst RST_38                                    ; $4c94: $ff
    ld hl, sp+$0f                                 ; $4c95: $f8 $0f
    cp $c3                                        ; $4c97: $fe $c3
    ccf                                           ; $4c99: $3f
    ld [hl], c                                    ; $4c9a: $71
    sub h                                         ; $4c9b: $94
    sbc a                                         ; $4c9c: $9f
    call c, Call_005_44a3                         ; $4c9d: $dc $a3 $44
    and e                                         ; $4ca0: $a3
    db $ec                                        ; $4ca1: $ec
    inc bc                                        ; $4ca2: $03
    ld d, c                                       ; $4ca3: $51
    adc a                                         ; $4ca4: $8f
    rst RST_00                                    ; $4ca5: $c7
    cp a                                          ; $4ca6: $bf
    rst RST_28                                    ; $4ca7: $ef
    ld e, $cd                                     ; $4ca8: $1e $cd
    ld a, $1c                                     ; $4caa: $3e $1c
    rst RST_38                                    ; $4cac: $ff
    ldh a, [c]                                    ; $4cad: $f2
    rst RST_38                                    ; $4cae: $ff
    db $ec                                        ; $4caf: $ec
    dec b                                         ; $4cb0: $05
    rst RST_38                                    ; $4cb1: $ff
    push hl                                       ; $4cb2: $e5
    ld d, e                                       ; $4cb3: $53
    nop                                           ; $4cb4: $00
    or l                                          ; $4cb5: $b5
    nop                                           ; $4cb6: $00
    add sp, $00                                   ; $4cb7: $e8 $00
    ld c, l                                       ; $4cb9: $4d
    add b                                         ; $4cba: $80
    res 4, b                                      ; $4cbb: $cb $a0
    and [hl]                                      ; $4cbd: $a6
    ret nc                                        ; $4cbe: $d0

    jp hl                                         ; $4cbf: $e9


jr_005_4cc0:
    sub b                                         ; $4cc0: $90
    db $fc                                        ; $4cc1: $fc
    ldh [rTAC], a                                 ; $4cc2: $e0 $07
    ld hl, sp-$46                                 ; $4cc4: $f8 $ba
    ld a, h                                       ; $4cc6: $7c
    ld [hl], e                                    ; $4cc7: $73
    db $ec                                        ; $4cc8: $ec
    and l                                         ; $4cc9: $a5
    sbc $8d                                       ; $4cca: $de $8d
    ld a, [hl]                                    ; $4ccc: $7e
    ld a, e                                       ; $4ccd: $7b
    db $fc                                        ; $4cce: $fc
    rst RST_18                                    ; $4ccf: $df
    db $fc                                        ; $4cd0: $fc
    and l                                         ; $4cd1: $a5
    sbc $56                                       ; $4cd2: $de $56
    nop                                           ; $4cd4: $00
    cp a                                          ; $4cd5: $bf
    nop                                           ; $4cd6: $00
    sbc e                                         ; $4cd7: $9b
    nop                                           ; $4cd8: $00
    ld a, d                                       ; $4cd9: $7a
    dec b                                         ; $4cda: $05
    sub l                                         ; $4cdb: $95
    ld a, [hl+]                                   ; $4cdc: $2a
    jp c, $7305                                   ; $4cdd: $da $05 $73

    rra                                           ; $4ce0: $1f
    sbc d                                         ; $4ce1: $9a
    ld a, l                                       ; $4ce2: $7d
    rst RST_20                                    ; $4ce3: $e7
    jr c, jr_005_4cc0                             ; $4ce4: $38 $da

    ld h, h                                       ; $4ce6: $64
    or c                                          ; $4ce7: $b1
    ld b, [hl]                                    ; $4ce8: $46
    ld a, [$8e41]                                 ; $4ce9: $fa $41 $8e
    ldh a, [$ffb1]                                ; $4cec: $f0 $b1
    cp $c5                                        ; $4cee: $fe $c5
    ei                                            ; $4cf0: $fb
    sbc [hl]                                      ; $4cf1: $9e
    push hl                                       ; $4cf2: $e5
    db $eb                                        ; $4cf3: $eb
    rra                                           ; $4cf4: $1f
    ldh [$ff3f], a                                ; $4cf5: $e0 $3f
    rst RST_18                                    ; $4cf7: $df
    ld h, b                                       ; $4cf8: $60
    cp [hl]                                       ; $4cf9: $be
    ld c, c                                       ; $4cfa: $49
    cp d                                          ; $4cfb: $ba
    push bc                                       ; $4cfc: $c5
    and d                                         ; $4cfd: $a2
    push bc                                       ; $4cfe: $c5
    scf                                           ; $4cff: $37
    ret nz                                        ; $4d00: $c0

    adc e                                         ; $4d01: $8b
    pop af                                        ; $4d02: $f1
    ld h, e                                       ; $4d03: $63
    db $fd                                        ; $4d04: $fd
    scf                                           ; $4d05: $37
    ld a, b                                       ; $4d06: $78
    ld b, e                                       ; $4d07: $43
    inc a                                         ; $4d08: $3c
    ldh a, [rIF]                                  ; $4d09: $f0 $0f
    add e                                         ; $4d0b: $83
    ld a, a                                       ; $4d0c: $7f
    rst RST_30                                    ; $4d0d: $f7
    ccf                                           ; $4d0e: $3f
    rlca                                          ; $4d0f: $07
    rst RST_38                                    ; $4d10: $ff
    rst RST_18                                    ; $4d11: $df
    rst RST_38                                    ; $4d12: $ff
    rlc b                                         ; $4d13: $cb $00
    add b                                         ; $4d15: $80
    nop                                           ; $4d16: $00
    ld [$0003], sp                                ; $4d17: $08 $03 $00
    add b                                         ; $4d1a: $80
    add c                                         ; $4d1b: $81
    inc b                                         ; $4d1c: $04
    ret nz                                        ; $4d1d: $c0

    ld [bc], a                                    ; $4d1e: $02
    add b                                         ; $4d1f: $80
    and b                                         ; $4d20: $a0
    inc b                                         ; $4d21: $04
    nop                                           ; $4d22: $00
    add c                                         ; $4d23: $81
    adc b                                         ; $4d24: $88
    inc bc                                        ; $4d25: $03
    nop                                           ; $4d26: $00
    add b                                         ; $4d27: $80
    add c                                         ; $4d28: $81
    rlca                                          ; $4d29: $07
    ld b, b                                       ; $4d2a: $40
    add d                                         ; $4d2b: $82
    db $d3                                        ; $4d2c: $d3
    ld a, d                                       ; $4d2d: $7a
    inc de                                        ; $4d2e: $13
    ld bc, $850a                                  ; $4d2f: $01 $0a $85
    nop                                           ; $4d32: $00
    nop                                           ; $4d33: $00
    ld b, c                                       ; $4d34: $41
    nop                                           ; $4d35: $00
    inc bc                                        ; $4d36: $03
    inc bc                                        ; $4d37: $03
    nop                                           ; $4d38: $00
    add b                                         ; $4d39: $80
    add c                                         ; $4d3a: $81
    add hl, bc                                    ; $4d3b: $09
    ld hl, $0202                                  ; $4d3c: $21 $02 $02
    add hl, bc                                    ; $4d3f: $09
    ld bc, $1342                                  ; $4d40: $01 $42 $13
    ld l, l                                       ; $4d43: $6d
    cp a                                          ; $4d44: $bf
    adc a                                         ; $4d45: $8f
    nop                                           ; $4d46: $00
    rst RST_38                                    ; $4d47: $ff
    nop                                           ; $4d48: $00
    rst RST_38                                    ; $4d49: $ff
    nop                                           ; $4d4a: $00
    rst RST_38                                    ; $4d4b: $ff
    nop                                           ; $4d4c: $00
    rst RST_38                                    ; $4d4d: $ff
    nop                                           ; $4d4e: $00
    rst RST_38                                    ; $4d4f: $ff
    nop                                           ; $4d50: $00
    rst RST_38                                    ; $4d51: $ff
    nop                                           ; $4d52: $00
    rst RST_38                                    ; $4d53: $ff
    nop                                           ; $4d54: $00
    ld [de], a                                    ; $4d55: $12
    rst RST_38                                    ; $4d56: $ff
    and d                                         ; $4d57: $a2
    nop                                           ; $4d58: $00
    add sp, $7f                                   ; $4d59: $e8 $7f
    ld hl, sp+$7f                                 ; $4d5b: $f8 $7f
    ld a, [$8f7f]                                 ; $4d5d: $fa $7f $8f
    ld a, a                                       ; $4d60: $7f
    adc a                                         ; $4d61: $8f
    ld a, a                                       ; $4d62: $7f
    cp a                                          ; $4d63: $bf
    ld c, a                                       ; $4d64: $4f
    cp b                                          ; $4d65: $b8
    ld c, a                                       ; $4d66: $4f
    xor b                                         ; $4d67: $a8
    ld c, a                                       ; $4d68: $4f
    xor e                                         ; $4d69: $ab
    ld c, h                                       ; $4d6a: $4c
    xor e                                         ; $4d6b: $ab
    ld c, h                                       ; $4d6c: $4c
    xor d                                         ; $4d6d: $aa
    ld c, h                                       ; $4d6e: $4c
    xor d                                         ; $4d6f: $aa
    ld c, h                                       ; $4d70: $4c
    xor d                                         ; $4d71: $aa
    ld c, h                                       ; $4d72: $4c
    cp e                                          ; $4d73: $bb
    ld c, h                                       ; $4d74: $4c
    adc b                                         ; $4d75: $88
    ld a, a                                       ; $4d76: $7f
    rst RST_38                                    ; $4d77: $ff
    nop                                           ; $4d78: $00
    nop                                           ; $4d79: $00
    add b                                         ; $4d7a: $80
    add h                                         ; $4d7b: $84
    ld b, $80                                     ; $4d7c: $06 $80
    adc c                                         ; $4d7e: $89
    xor c                                         ; $4d7f: $a9
    xor c                                         ; $4d80: $a9
    ei                                            ; $4d81: $fb
    ei                                            ; $4d82: $fb
    inc bc                                        ; $4d83: $03
    rst RST_38                                    ; $4d84: $ff
    adc l                                         ; $4d85: $8d
    ei                                            ; $4d86: $fb
    rst RST_38                                    ; $4d87: $ff
    adc a                                         ; $4d88: $8f
    rst RST_38                                    ; $4d89: $ff
    adc a                                         ; $4d8a: $8f
    rst RST_38                                    ; $4d8b: $ff
    cp a                                          ; $4d8c: $bf
    rst RST_08                                    ; $4d8d: $cf
    xor b                                         ; $4d8e: $a8
    rst RST_08                                    ; $4d8f: $cf
    cp d                                          ; $4d90: $ba
    call Call_000_0388                            ; $4d91: $cd $88 $03
    rst RST_38                                    ; $4d94: $ff
    sbc h                                         ; $4d95: $9c
    add b                                         ; $4d96: $80
    add b                                         ; $4d97: $80
    cp a                                          ; $4d98: $bf
    add b                                         ; $4d99: $80
    or b                                          ; $4d9a: $b0
    sbc a                                         ; $4d9b: $9f
    xor a                                         ; $4d9c: $af
    sub b                                         ; $4d9d: $90
    xor a                                         ; $4d9e: $af
    sub b                                         ; $4d9f: $90
    or b                                          ; $4da0: $b0
    and b                                         ; $4da1: $a0
    rst RST_18                                    ; $4da2: $df
    ret nc                                        ; $4da3: $d0

    ldh a, [$ffbf]                                ; $4da4: $f0 $bf
    xor a                                         ; $4da6: $af
    sub b                                         ; $4da7: $90
    xor a                                         ; $4da8: $af
    sub b                                         ; $4da9: $90
    xor a                                         ; $4daa: $af
    sub b                                         ; $4dab: $90
    and b                                         ; $4dac: $a0
    sub b                                         ; $4dad: $90
    cp a                                          ; $4dae: $bf
    add b                                         ; $4daf: $80
    ret nz                                        ; $4db0: $c0

    cp a                                          ; $4db1: $bf
    inc b                                         ; $4db2: $04
    rst RST_38                                    ; $4db3: $ff
    sbc e                                         ; $4db4: $9b
    inc bc                                        ; $4db5: $03
    ld bc, $03fd                                  ; $4db6: $01 $fd $03
    dec b                                         ; $4db9: $05
    ei                                            ; $4dba: $fb
    push af                                       ; $4dbb: $f5
    inc bc                                        ; $4dbc: $03
    push af                                       ; $4dbd: $f5
    inc bc                                        ; $4dbe: $03
    dec b                                         ; $4dbf: $05
    inc bc                                        ; $4dc0: $03
    db $fd                                        ; $4dc1: $fd
    inc bc                                        ; $4dc2: $03
    dec b                                         ; $4dc3: $05
    ei                                            ; $4dc4: $fb
    push af                                       ; $4dc5: $f5
    inc bc                                        ; $4dc6: $03
    push af                                       ; $4dc7: $f5
    inc bc                                        ; $4dc8: $03
    push af                                       ; $4dc9: $f5
    inc bc                                        ; $4dca: $03
    dec b                                         ; $4dcb: $05
    inc bc                                        ; $4dcc: $03
    db $fd                                        ; $4dcd: $fd
    inc bc                                        ; $4dce: $03

jr_005_4dcf:
    ld bc, $ff03                                  ; $4dcf: $01 $03 $ff
    add [hl]                                      ; $4dd2: $86
    jr jr_005_4dd5                                ; $4dd3: $18 $00

jr_005_4dd5:
    inc h                                         ; $4dd5: $24
    jr jr_005_4e14                                ; $4dd6: $18 $3c

    jr @-$7e                                      ; $4dd8: $18 $80

    add c                                         ; $4dda: $81
    dec b                                         ; $4ddb: $05
    inc a                                         ; $4ddc: $3c
    inc a                                         ; $4ddd: $3c
    inc a                                         ; $4dde: $3c
    ld a, [hl]                                    ; $4ddf: $7e
    inc a                                         ; $4de0: $3c
    adc e                                         ; $4de1: $8b
    ld a, [de]                                    ; $4de2: $1a
    push bc                                       ; $4de3: $c5
    or d                                          ; $4de4: $b2
    push de                                       ; $4de5: $d5
    cp [hl]                                       ; $4de6: $be
    push de                                       ; $4de7: $d5
    sub $ff                                       ; $4de8: $d6 $ff
    sbc $ff                                       ; $4dea: $de $ff
    rst RST_18                                    ; $4dec: $df
    dec b                                         ; $4ded: $05
    rst RST_38                                    ; $4dee: $ff
    sub d                                         ; $4def: $92
    inc [hl]                                      ; $4df0: $34
    ld b, c                                       ; $4df1: $41
    ld h, $d1                                     ; $4df2: $26 $d1
    ld a, [hl]                                    ; $4df4: $7e
    pop de                                        ; $4df5: $d1
    sub $fd                                       ; $4df6: $d6 $fd
    rst RST_30                                    ; $4df8: $f7
    db $fd                                        ; $4df9: $fd
    db $dd                                        ; $4dfa: $dd
    rst RST_30                                    ; $4dfb: $f7
    rst RST_18                                    ; $4dfc: $df
    db $fd                                        ; $4dfd: $fd
    rst RST_38                                    ; $4dfe: $ff
    rst RST_38                                    ; $4dff: $ff
    xor l                                         ; $4e00: $ad

Jump_005_4e01:
    ld d, d                                       ; $4e01: $52
    add b                                         ; $4e02: $80
    add l                                         ; $4e03: $85
    inc b                                         ; $4e04: $04
    ld bc, $7b5b                                  ; $4e05: $01 $5b $7b
    ei                                            ; $4e08: $fb
    adc d                                         ; $4e09: $8a
    rst RST_38                                    ; $4e0a: $ff
    rst RST_38                                    ; $4e0b: $ff
    or c                                          ; $4e0c: $b1
    rst RST_38                                    ; $4e0d: $ff
    or c                                          ; $4e0e: $b1
    nop                                           ; $4e0f: $00
    add b                                         ; $4e10: $80
    ld a, a                                       ; $4e11: $7f
    nop                                           ; $4e12: $00
    nop                                           ; $4e13: $00

jr_005_4e14:
    inc bc                                        ; $4e14: $03
    ld h, b                                       ; $4e15: $60
    add c                                         ; $4e16: $81
    ld b, b                                       ; $4e17: $40
    ld c, $00                                     ; $4e18: $0e $00
    inc bc                                        ; $4e1a: $03
    ld h, b                                       ; $4e1b: $60
    adc b                                         ; $4e1c: $88
    ld b, b                                       ; $4e1d: $40
    nop                                           ; $4e1e: $00
    nop                                           ; $4e1f: $00
    add b                                         ; $4e20: $80
    ld a, a                                       ; $4e21: $7f
    ld a, a                                       ; $4e22: $7f
    rst RST_38                                    ; $4e23: $ff
    nop                                           ; $4e24: $00
    add b                                         ; $4e25: $80
    inc bc                                        ; $4e26: $03
    rst RST_38                                    ; $4e27: $ff
    add e                                         ; $4e28: $83
    inc c                                         ; $4e29: $0c
    dec c                                         ; $4e2a: $0d
    inc c                                         ; $4e2b: $0c
    add b                                         ; $4e2c: $80
    add c                                         ; $4e2d: $81
    rlca                                          ; $4e2e: $07
    add hl, bc                                    ; $4e2f: $09
    ld bc, $0101                                  ; $4e30: $01 $01 $01
    ld bc, $0101                                  ; $4e33: $01 $01 $01
    adc b                                         ; $4e36: $88
    ld bc, $0d0c                                  ; $4e37: $01 $0c $0d
    inc c                                         ; $4e3a: $0c
    add hl, bc                                    ; $4e3b: $09
    nop                                           ; $4e3c: $00
    ld bc, $0300                                  ; $4e3d: $01 $00 $03
    rst RST_38                                    ; $4e40: $ff
    adc a                                         ; $4e41: $8f
    pop af                                        ; $4e42: $f1

jr_005_4e43:
    rrca                                          ; $4e43: $0f
    db $fc                                        ; $4e44: $fc
    nop                                           ; $4e45: $00
    ld [$1800], sp                                ; $4e46: $08 $00 $18
    jr jr_005_4e43                                ; $4e49: $18 $f8

    jr z, jr_005_4e7f                             ; $4e4b: $28 $32

    jr nc, jr_005_4dcf                            ; $4e4d: $30 $80

    nop                                           ; $4e4f: $00
    and b                                         ; $4e50: $a0
    dec b                                         ; $4e51: $05
    nop                                           ; $4e52: $00
    sub c                                         ; $4e53: $91
    adc h                                         ; $4e54: $8c
    ld [$0c08], sp                                ; $4e55: $08 $08 $0c
    ld b, b                                       ; $4e58: $40
    nop                                           ; $4e59: $00
    add d                                         ; $4e5a: $82
    nop                                           ; $4e5b: $00
    rst RST_18                                    ; $4e5c: $df
    rrca                                          ; $4e5d: $0f
    ldh a, [$ff7f]                                ; $4e5e: $f0 $7f
    rst RST_00                                    ; $4e60: $c7
    db $fc                                        ; $4e61: $fc
    rst RST_38                                    ; $4e62: $ff
    jr c, @+$0c                                   ; $4e63: $38 $0a

    inc bc                                        ; $4e65: $03
    nop                                           ; $4e66: $00
    add e                                         ; $4e67: $83
    ld b, c                                       ; $4e68: $41
    nop                                           ; $4e69: $00
    inc bc                                        ; $4e6a: $03
    inc bc                                        ; $4e6b: $03
    nop                                           ; $4e6c: $00
    sub [hl]                                      ; $4e6d: $96
    ld hl, $0200                                  ; $4e6e: $21 $00 $02
    nop                                           ; $4e71: $00
    ld [de], a                                    ; $4e72: $12
    db $10                                        ; $4e73: $10
    add hl, sp                                    ; $4e74: $39
    jr z, jr_005_4ea0                             ; $4e75: $28 $29

    jr c, @+$54                                   ; $4e77: $38 $52

    db $10                                        ; $4e79: $10
    inc de                                        ; $4e7a: $13
    nop                                           ; $4e7b: $00
    db $ed                                        ; $4e7c: $ed
    ret nz                                        ; $4e7d: $c0

    ccf                                           ; $4e7e: $3f

jr_005_4e7f:
    cp $cb                                        ; $4e7f: $fe $cb
    nop                                           ; $4e81: $00
    nop                                           ; $4e82: $00
    add b                                         ; $4e83: $80
    inc b                                         ; $4e84: $04
    sbc b                                         ; $4e85: $98
    sbc c                                         ; $4e86: $99
    ld b, b                                       ; $4e87: $40
    ret nz                                        ; $4e88: $c0

    ld b, d                                       ; $4e89: $42
    ret nz                                        ; $4e8a: $c0

    ld b, b                                       ; $4e8b: $40
    ret nz                                        ; $4e8c: $c0

    ld h, b                                       ; $4e8d: $60
    ret nz                                        ; $4e8e: $c0

    ld b, b                                       ; $4e8f: $40
    ret nz                                        ; $4e90: $c0

    ld b, b                                       ; $4e91: $40
    ret nz                                        ; $4e92: $c0

    adc b                                         ; $4e93: $88
    add b                                         ; $4e94: $80
    sbc b                                         ; $4e95: $98
    sbc b                                         ; $4e96: $98
    ld hl, sp-$58                                 ; $4e97: $f8 $a8
    or d                                          ; $4e99: $b2
    or b                                          ; $4e9a: $b0
    db $d3                                        ; $4e9b: $d3
    add b                                         ; $4e9c: $80
    ld a, [$1300]                                 ; $4e9d: $fa $00 $13

jr_005_4ea0:
    add b                                         ; $4ea0: $80
    inc bc                                        ; $4ea1: $03
    ld bc, $0ac5                                  ; $4ea2: $01 $c5 $0a
    dec bc                                        ; $4ea5: $0b
    ld [bc], a                                    ; $4ea6: $02
    inc bc                                        ; $4ea7: $03
    ld b, e                                       ; $4ea8: $43
    ld bc, $0103                                  ; $4ea9: $01 $03 $01
    ld de, $3911                                  ; $4eac: $11 $11 $39
    add hl, hl                                    ; $4eaf: $29
    dec hl                                        ; $4eb0: $2b
    add hl, sp                                    ; $4eb1: $39
    inc de                                        ; $4eb2: $13
    ld de, $030a                                  ; $4eb3: $11 $0a $03
    ld [bc], a                                    ; $4eb6: $02
    inc bc                                        ; $4eb7: $03
    ld b, d                                       ; $4eb8: $42
    inc bc                                        ; $4eb9: $03
    ld [de], a                                    ; $4eba: $12
    inc bc                                        ; $4ebb: $03
    ld l, [hl]                                    ; $4ebc: $6e
    inc bc                                        ; $4ebd: $03
    cp a                                          ; $4ebe: $bf
    ld bc, $ffff                                  ; $4ebf: $01 $ff $ff
    ld a, a                                       ; $4ec2: $7f
    rst RST_38                                    ; $4ec3: $ff
    xor a                                         ; $4ec4: $af
    ld l, a                                       ; $4ec5: $6f
    and a                                         ; $4ec6: $a7
    ld h, a                                       ; $4ec7: $67
    ld b, e                                       ; $4ec8: $43
    jp $c35b                                      ; $4ec9: $c3 $5b $c3


    ld e, e                                       ; $4ecc: $5b
    jp $e73e                                      ; $4ecd: $c3 $3e $e7


    ld h, $e7                                     ; $4ed0: $26 $e7
    or a                                          ; $4ed2: $b7
    and $7f                                       ; $4ed3: $e6 $7f
    and $7f                                       ; $4ed5: $e6 $7f
    and $7e                                       ; $4ed7: $e6 $7e
    push hl                                       ; $4ed9: $e5
    ld a, h                                       ; $4eda: $7c
    rst RST_38                                    ; $4edb: $ff
    cp $cf                                        ; $4edc: $fe $cf
    rst RST_38                                    ; $4ede: $ff
    inc bc                                        ; $4edf: $03
    xor d                                         ; $4ee0: $aa
    ld d, l                                       ; $4ee1: $55
    nop                                           ; $4ee2: $00
    rst RST_38                                    ; $4ee3: $ff
    and l                                         ; $4ee4: $a5
    rst RST_38                                    ; $4ee5: $ff
    or a                                          ; $4ee6: $b7
    rst RST_38                                    ; $4ee7: $ff
    cp a                                          ; $4ee8: $bf
    inc bc                                        ; $4ee9: $03
    rst RST_38                                    ; $4eea: $ff
    db $e3                                        ; $4eeb: $e3
    inc l                                         ; $4eec: $2c
    rst RST_38                                    ; $4eed: $ff
    inc l                                         ; $4eee: $2c
    nop                                           ; $4eef: $00
    rlc b                                         ; $4ef0: $cb $00
    sbc b                                         ; $4ef2: $98
    jr jr_005_4f2a                                ; $4ef3: $18 $35

    dec l                                         ; $4ef5: $2d
    ld c, d                                       ; $4ef6: $4a
    ld b, [hl]                                    ; $4ef7: $46
    ret nc                                        ; $4ef8: $d0

    ld c, [hl]                                    ; $4ef9: $4e
    sbc e                                         ; $4efa: $9b
    add h                                         ; $4efb: $84
    or h                                          ; $4efc: $b4
    adc b                                         ; $4efd: $88
    xor h                                         ; $4efe: $ac
    add d                                         ; $4eff: $82
    push bc                                       ; $4f00: $c5
    and d                                         ; $4f01: $a2
    push bc                                       ; $4f02: $c5
    and e                                         ; $4f03: $a3
    sbc d                                         ; $4f04: $9a
    rst RST_20                                    ; $4f05: $e7
    xor d                                         ; $4f06: $aa
    rst RST_20                                    ; $4f07: $e7
    ld hl, sp-$59                                 ; $4f08: $f8 $a7
    xor [hl]                                      ; $4f0a: $ae
    pop af                                        ; $4f0b: $f1
    pop af                                        ; $4f0c: $f1
    ld a, a                                       ; $4f0d: $7f
    ld e, a                                       ; $4f0e: $5f
    ccf                                           ; $4f0f: $3f
    ld [hl], e                                    ; $4f10: $73
    ld [hl], b                                    ; $4f11: $70
    adc c                                         ; $4f12: $89
    sbc b                                         ; $4f13: $98
    ld [hl], $0c                                  ; $4f14: $36 $0c
    ld [hl+], a                                   ; $4f16: $22
    ld e, [hl]                                    ; $4f17: $5e
    ld l, e                                       ; $4f18: $6b
    ld e, $05                                     ; $4f19: $1e $05
    sbc a                                         ; $4f1b: $9f
    inc sp                                        ; $4f1c: $33
    rst RST_08                                    ; $4f1d: $cf
    cp e                                          ; $4f1e: $bb
    ld b, a                                       ; $4f1f: $47
    sbc c                                         ; $4f20: $99
    rlca                                          ; $4f21: $07
    ld sp, hl                                     ; $4f22: $f9
    rlca                                          ; $4f23: $07
    jp $a93f                                      ; $4f24: $c3 $3f $a9


    ld a, a                                       ; $4f27: $7f
    xor l                                         ; $4f28: $ad
    ld a, a                                       ; $4f29: $7f

jr_005_4f2a:
    push bc                                       ; $4f2a: $c5
    ccf                                           ; $4f2b: $3f
    rrca                                          ; $4f2c: $0f
    cp $fb                                        ; $4f2d: $fe $fb
    db $fc                                        ; $4f2f: $fc
    nop                                           ; $4f30: $00
    nop                                           ; $4f31: $00
    ld a, a                                       ; $4f32: $7f
    nop                                           ; $4f33: $00
    ld a, a                                       ; $4f34: $7f
    ccf                                           ; $4f35: $3f
    ld a, a                                       ; $4f36: $7f
    jr nz, jr_005_4fb8                            ; $4f37: $20 $7f

    jr nz, jr_005_4f7c                            ; $4f39: $20 $41

    ld [hl+], a                                   ; $4f3b: $22
    ld a, a                                       ; $4f3c: $7f
    ld [bc], a                                    ; $4f3d: $02
    ld [hl], a                                    ; $4f3e: $77
    ld a, [hl-]                                   ; $4f3f: $3a
    ld [hl], a                                    ; $4f40: $77
    ld [hl+], a                                   ; $4f41: $22
    ld [hl], a                                    ; $4f42: $77
    ld [hl+], a                                   ; $4f43: $22
    ld [hl], a                                    ; $4f44: $77
    ld [hl+], a                                   ; $4f45: $22
    ld [hl], a                                    ; $4f46: $77
    ld [hl+], a                                   ; $4f47: $22
    ld [hl], a                                    ; $4f48: $77
    ld [hl+], a                                   ; $4f49: $22
    ld b, h                                       ; $4f4a: $44
    ld [hl+], a                                   ; $4f4b: $22
    ld a, a                                       ; $4f4c: $7f
    nop                                           ; $4f4d: $00
    ld a, a                                       ; $4f4e: $7f
    add b                                         ; $4f4f: $80
    inc bc                                        ; $4f50: $03
    rst RST_38                                    ; $4f51: $ff
    sbc [hl]                                      ; $4f52: $9e
    rst RST_38                                    ; $4f53: $ff
    ld bc, $fdfb                                  ; $4f54: $01 $fb $fd
    ei                                            ; $4f57: $fb
    ld bc, $01fb                                  ; $4f58: $01 $fb $01
    add e                                         ; $4f5b: $83
    ld bc, $01bf                                  ; $4f5c: $01 $bf $01
    cp e                                          ; $4f5f: $bb
    dec e                                         ; $4f60: $1d
    cp e                                          ; $4f61: $bb
    ld de, $11bb                                  ; $4f62: $11 $bb $11
    cp e                                          ; $4f65: $bb
    ld de, $11bb                                  ; $4f66: $11 $bb $11
    cp e                                          ; $4f69: $bb
    ld de, $1123                                  ; $4f6a: $11 $23 $11
    rst RST_38                                    ; $4f6d: $ff
    ld bc, $ffff                                  ; $4f6e: $01 $ff $ff
    nop                                           ; $4f71: $00
    stop                                          ; $4f72: $10 $00
    add b                                         ; $4f74: $80
    add l                                         ; $4f75: $85
    inc b                                         ; $4f76: $04
    ld bc, $3c02                                  ; $4f77: $01 $02 $3c
    ld b, h                                       ; $4f7a: $44
    rst RST_38                                    ; $4f7b: $ff

jr_005_4f7c:
    cp d                                          ; $4f7c: $ba
    rst RST_00                                    ; $4f7d: $c7
    xor $83                                       ; $4f7e: $ee $83
    push bc                                       ; $4f80: $c5
    add e                                         ; $4f81: $83
    push hl                                       ; $4f82: $e5
    add e                                         ; $4f83: $83
    cp e                                          ; $4f84: $bb
    rst RST_00                                    ; $4f85: $c7
    add h                                         ; $4f86: $84
    rst RST_38                                    ; $4f87: $ff
    ld a, c                                       ; $4f88: $79
    cp $84                                        ; $4f89: $fe $84
    cp $b2                                        ; $4f8b: $fe $b2
    rst RST_08                                    ; $4f8d: $cf
    jp z, $cb87                                   ; $4f8e: $ca $87 $cb

    add a                                         ; $4f91: $87
    or h                                          ; $4f92: $b4
    rst RST_08                                    ; $4f93: $cf
    db $fc                                        ; $4f94: $fc
    rst RST_38                                    ; $4f95: $ff
    ld [bc], a                                    ; $4f96: $02
    rst RST_38                                    ; $4f97: $ff
    ld [hl], c                                    ; $4f98: $71
    adc a                                         ; $4f99: $8f
    ld sp, hl                                     ; $4f9a: $f9
    rlca                                          ; $4f9b: $07
    adc c                                         ; $4f9c: $89
    rlca                                          ; $4f9d: $07
    adc d                                         ; $4f9e: $8a
    rlca                                          ; $4f9f: $07
    ld [hl], h                                    ; $4fa0: $74
    adc a                                         ; $4fa1: $8f
    db $fd                                        ; $4fa2: $fd
    cp $85                                        ; $4fa3: $fe $85
    cp $a5                                        ; $4fa5: $fe $a5
    adc $d4                                       ; $4fa7: $ce $d4
    ld l, a                                       ; $4fa9: $6f
    ld l, e                                       ; $4faa: $6b
    ccf                                           ; $4fab: $3f
    cp e                                          ; $4fac: $bb
    ld a, l                                       ; $4fad: $7d
    ld h, [hl]                                    ; $4fae: $66
    rst RST_38                                    ; $4faf: $ff
    sub l                                         ; $4fb0: $95
    cp $5b                                        ; $4fb1: $fe $5b
    cp h                                          ; $4fb3: $bc
    ld [hl], b                                    ; $4fb4: $70
    rst RST_38                                    ; $4fb5: $ff
    ei                                            ; $4fb6: $fb
    adc a                                         ; $4fb7: $8f

jr_005_4fb8:
    cp $07                                        ; $4fb8: $fe $07
    call c, Call_005_5407                         ; $4fba: $dc $07 $54
    adc a                                         ; $4fbd: $8f
    adc d                                         ; $4fbe: $8a
    rst RST_38                                    ; $4fbf: $ff
    ld [hl], c                                    ; $4fc0: $71
    rst RST_38                                    ; $4fc1: $ff
    ld b, l                                       ; $4fc2: $45
    di                                            ; $4fc3: $f3
    ld d, l                                       ; $4fc4: $55
    db $e3                                        ; $4fc5: $e3
    xor e                                         ; $4fc6: $ab
    ld [hl], a                                    ; $4fc7: $77
    dec a                                         ; $4fc8: $3d
    rst RST_38                                    ; $4fc9: $ff
    push de                                       ; $4fca: $d5
    ei                                            ; $4fcb: $fb
    sbc [hl]                                      ; $4fcc: $9e
    rst RST_38                                    ; $4fcd: $ff
    ld h, a                                       ; $4fce: $67
    rst RST_38                                    ; $4fcf: $ff
    sbc b                                         ; $4fd0: $98
    ld h, a                                       ; $4fd1: $67
    rst RST_38                                    ; $4fd2: $ff
    nop                                           ; $4fd3: $00
    ld hl, sp-$01                                 ; $4fd4: $f8 $ff
    ld b, $ff                                     ; $4fd6: $06 $ff
    ld [hl], e                                    ; $4fd8: $73
    adc a                                         ; $4fd9: $8f
    ld sp, hl                                     ; $4fda: $f9
    rlca                                          ; $4fdb: $07
    adc c                                         ; $4fdc: $89
    rlca                                          ; $4fdd: $07
    adc d                                         ; $4fde: $8a
    rlca                                          ; $4fdf: $07
    ld [hl], h                                    ; $4fe0: $74
    adc a                                         ; $4fe1: $8f
    db $fd                                        ; $4fe2: $fd
    cp $f8                                        ; $4fe3: $fe $f8
    rst RST_38                                    ; $4fe5: $ff
    ld b, $ff                                     ; $4fe6: $06 $ff
    ld [hl], e                                    ; $4fe8: $73
    adc a                                         ; $4fe9: $8f
    ld sp, hl                                     ; $4fea: $f9
    rlca                                          ; $4feb: $07
    adc c                                         ; $4fec: $89
    rlca                                          ; $4fed: $07
    adc d                                         ; $4fee: $8a
    rlca                                          ; $4fef: $07
    ld [hl], h                                    ; $4ff0: $74
    adc a                                         ; $4ff1: $8f
    db $fd                                        ; $4ff2: $fd
    cp $fb                                        ; $4ff3: $fe $fb
    rst RST_38                                    ; $4ff5: $ff
    ld h, h                                       ; $4ff6: $64
    sbc a                                         ; $4ff7: $9f
    sub l                                         ; $4ff8: $95
    ld c, $95                                     ; $4ff9: $0e $95
    rst RST_38                                    ; $4ffb: $ff
    ld c, $65                                     ; $4ffc: $0e $65
    sbc [hl]                                      ; $4ffe: $9e
    adc d                                         ; $4fff: $8a
    rst RST_38                                    ; $5000: $ff
    ld [hl], c                                    ; $5001: $71
    rst RST_38                                    ; $5002: $ff
    ld b, l                                       ; $5003: $45
    di                                            ; $5004: $f3
    ld d, a                                       ; $5005: $57
    db $e3                                        ; $5006: $e3
    xor h                                         ; $5007: $ac
    ld [hl], a                                    ; $5008: $77
    ld a, [hl-]                                   ; $5009: $3a
    db $fd                                        ; $500a: $fd
    call nc, $98f9                                ; $500b: $d4 $f9 $98
    rst RST_38                                    ; $500e: $ff
    ld h, a                                       ; $500f: $67
    rst RST_38                                    ; $5010: $ff
    cp b                                          ; $5011: $b8
    ld l, a                                       ; $5012: $6f
    db $db                                        ; $5013: $db
    inc a                                         ; $5014: $3c
    ldh a, [rIE]                                  ; $5015: $f0 $ff
    add sp, $1f                                   ; $5017: $e8 $1f
    or h                                          ; $5019: $b4
    rrca                                          ; $501a: $0f
    inc d                                         ; $501b: $14
    rrca                                          ; $501c: $0f
    inc [hl]                                      ; $501d: $34
    rrca                                          ; $501e: $0f
    db $ec                                        ; $501f: $ec
    rra                                           ; $5020: $1f
    ld [hl-], a                                   ; $5021: $32
    rst RST_38                                    ; $5022: $ff
    pop bc                                        ; $5023: $c1
    rst RST_38                                    ; $5024: $ff
    cp c                                          ; $5025: $b9
    rst RST_00                                    ; $5026: $c7
    call $cd83                                    ; $5027: $cd $83 $cd
    add e                                         ; $502a: $83
    call $b983                                    ; $502b: $cd $83 $b9
    rst RST_00                                    ; $502e: $c7
    pop bc                                        ; $502f: $c1
    rst RST_38                                    ; $5030: $ff
    ld [hl+], a                                   ; $5031: $22
    rst RST_38                                    ; $5032: $ff
    sbc h                                         ; $5033: $9c
    ld a, a                                       ; $5034: $7f
    add hl, sp                                    ; $5035: $39
    cp $64                                        ; $5036: $fe $64
    rst RST_38                                    ; $5038: $ff
    ld b, e                                       ; $5039: $43
    rst RST_38                                    ; $503a: $ff
    sbc l                                         ; $503b: $9d
    db $e3                                        ; $503c: $e3
    or e                                          ; $503d: $b3
    pop bc                                        ; $503e: $c1
    or e                                          ; $503f: $b3
    pop bc                                        ; $5040: $c1
    or e                                          ; $5041: $b3
    pop bc                                        ; $5042: $c1
    sbc l                                         ; $5043: $9d
    db $e3                                        ; $5044: $e3
    ld b, e                                       ; $5045: $43
    rst RST_38                                    ; $5046: $ff
    ld h, h                                       ; $5047: $64
    rst RST_38                                    ; $5048: $ff
    add hl, sp                                    ; $5049: $39
    cp $74                                        ; $504a: $fe $74
    adc $fa                                       ; $504c: $ce $fa
    add a                                         ; $504e: $87
    ldh [c], a                                    ; $504f: $e2
    add a                                         ; $5050: $87
    ei                                            ; $5051: $fb
    add a                                         ; $5052: $87
    ld [hl], h                                    ; $5053: $74
    rst RST_08                                    ; $5054: $cf
    db $db                                        ; $5055: $db
    inc a                                         ; $5056: $3c
    dec e                                         ; $5057: $1d
    or $e5                                        ; $5058: $f6 $e5
    cp $1b                                        ; $505a: $fe $1b
    db $fc                                        ; $505c: $fc
    ld l, l                                       ; $505d: $6d
    sbc [hl]                                      ; $505e: $9e
    dec c                                         ; $505f: $0d
    sbc [hl]                                      ; $5060: $9e
    ld l, l                                       ; $5061: $6d
    sbc [hl]                                      ; $5062: $9e
    ld e, e                                       ; $5063: $5b
    cp h                                          ; $5064: $bc
    push af                                       ; $5065: $f5
    cp $4d                                        ; $5066: $fe $4d
    cp $bd                                        ; $5068: $fe $bd
    ld l, [hl]                                    ; $506a: $6e
    ld l, e                                       ; $506b: $6b
    inc a                                         ; $506c: $3c
    cp e                                          ; $506d: $bb
    ld a, h                                       ; $506e: $7c
    ld h, l                                       ; $506f: $65
    cp $95                                        ; $5070: $fe $95
    cp $5b                                        ; $5072: $fe $5b
    cp h                                          ; $5074: $bc
    jp c, $a93d                                   ; $5075: $da $3d $a9

    ld a, a                                       ; $5078: $7f
    and [hl]                                      ; $5079: $a6
    ld a, a                                       ; $507a: $7f
    rst RST_38                                    ; $507b: $ff
    db $dd                                        ; $507c: $dd
    ld a, $d6                                     ; $507d: $3e $d6
    inc a                                         ; $507f: $3c
    cp l                                          ; $5080: $bd
    halt                                          ; $5081: $76
    or d                                          ; $5082: $b2
    ld a, a                                       ; $5083: $7f
    xor a                                         ; $5084: $af
    ld a, a                                       ; $5085: $7f
    jp c, $b63d                                   ; $5086: $da $3d $b6

    ld a, c                                       ; $5089: $79
    or b                                          ; $508a: $b0
    ld a, c                                       ; $508b: $79
    or [hl]                                       ; $508c: $b6
    ld a, c                                       ; $508d: $79
    ret c                                         ; $508e: $d8

    ccf                                           ; $508f: $3f
    and a                                         ; $5090: $a7
    ld a, a                                       ; $5091: $7f
    cp b                                          ; $5092: $b8
    ld l, a                                       ; $5093: $6f
    db $db                                        ; $5094: $db
    inc a                                         ; $5095: $3c
    ld l, $f3                                     ; $5096: $2e $f3
    rst RST_18                                    ; $5098: $df
    pop hl                                        ; $5099: $e1
    ld b, a                                       ; $509a: $47
    pop hl                                        ; $509b: $e1
    ld e, a                                       ; $509c: $5f
    pop hl                                        ; $509d: $e1
    ld l, $73                                     ; $509e: $2e $73
    sbc h                                         ; $50a0: $9c
    ld a, a                                       ; $50a1: $7f
    ld h, $ff                                     ; $50a2: $26 $ff
    jp nz, $b9ff                                  ; $50a4: $c2 $ff $b9

    rst RST_00                                    ; $50a7: $c7
    call $cd83                                    ; $50a8: $cd $83 $cd
    add e                                         ; $50ab: $83
    call $b983                                    ; $50ac: $cd $83 $b9
    rst RST_00                                    ; $50af: $c7
    jp nz, Jump_000_26ff                          ; $50b0: $c2 $ff $26

    rst RST_38                                    ; $50b3: $ff
    sbc h                                         ; $50b4: $9c
    ld a, a                                       ; $50b5: $7f
    add hl, sp                                    ; $50b6: $39
    cp $44                                        ; $50b7: $fe $44
    rst RST_38                                    ; $50b9: $ff
    add e                                         ; $50ba: $83
    rst RST_38                                    ; $50bb: $ff
    sbc l                                         ; $50bc: $9d
    db $e3                                        ; $50bd: $e3
    or e                                          ; $50be: $b3
    pop bc                                        ; $50bf: $c1
    or e                                          ; $50c0: $b3
    pop bc                                        ; $50c1: $c1
    or e                                          ; $50c2: $b3
    pop bc                                        ; $50c3: $c1
    sbc l                                         ; $50c4: $9d
    db $e3                                        ; $50c5: $e3
    add e                                         ; $50c6: $83
    rst RST_38                                    ; $50c7: $ff
    ld c, h                                       ; $50c8: $4c
    rst RST_38                                    ; $50c9: $ff
    scf                                           ; $50ca: $37
    ld hl, sp+$2c                                 ; $50cb: $f8 $2c
    ldh a, [$ff28]                                ; $50cd: $f0 $28
    ldh a, [$ff2d]                                ; $50cf: $f0 $2d
    ldh a, [rNR22]                                ; $50d1: $f0 $17
    ld hl, sp+$0f                                 ; $50d3: $f8 $0f
    rst RST_38                                    ; $50d5: $ff
    db $db                                        ; $50d6: $db
    inc a                                         ; $50d7: $3c
    dec e                                         ; $50d8: $1d
    or $e6                                        ; $50d9: $f6 $e6
    rst RST_38                                    ; $50db: $ff
    add hl, de                                    ; $50dc: $19
    rst RST_38                                    ; $50dd: $ff
    dec hl                                        ; $50de: $2b
    sbc a                                         ; $50df: $9f
    ld e, h                                       ; $50e0: $5c
    cp a                                          ; $50e1: $bf
    dec [hl]                                      ; $50e2: $35
    xor $ea                                       ; $50e3: $ee $ea
    rst RST_00                                    ; $50e5: $c7
    and d                                         ; $50e6: $a2
    rst RST_08                                    ; $50e7: $cf
    adc [hl]                                      ; $50e8: $8e
    rst RST_38                                    ; $50e9: $ff
    ld d, c                                       ; $50ea: $51
    rst RST_38                                    ; $50eb: $ff
    and [hl]                                      ; $50ec: $a6
    ld a, c                                       ; $50ed: $79
    xor c                                         ; $50ee: $a9
    ld [hl], b                                    ; $50ef: $70
    xor c                                         ; $50f0: $a9
    ld [hl], b                                    ; $50f1: $70
    ld h, $f9                                     ; $50f2: $26 $f9
    rst RST_18                                    ; $50f4: $df
    rst RST_38                                    ; $50f5: $ff
    rst RST_38                                    ; $50f6: $ff
    nop                                           ; $50f7: $00
    sub c                                         ; $50f8: $91
    ld l, [hl]                                    ; $50f9: $6e
    ld l, [hl]                                    ; $50fa: $6e
    di                                            ; $50fb: $f3
    rst RST_38                                    ; $50fc: $ff
    rst RST_18                                    ; $50fd: $df
    cp a                                          ; $50fe: $bf
    pop de                                        ; $50ff: $d1
    rst RST_38                                    ; $5100: $ff
    ld a, [hl+]                                   ; $5101: $2a
    pop af                                        ; $5102: $f1
    xor e                                         ; $5103: $ab
    ld [hl], b                                    ; $5104: $70
    and b                                         ; $5105: $a0
    ld a, a                                       ; $5106: $7f
    cp a                                          ; $5107: $bf
    ld a, a                                       ; $5108: $7f
    ld l, $f1                                     ; $5109: $2e $f1
    ld d, c                                       ; $510b: $51
    ldh [$ff91], a                                ; $510c: $e0 $91
    ldh [$ff9f], a                                ; $510e: $e0 $9f
    ldh [$ffce], a                                ; $5110: $e0 $ce
    pop af                                        ; $5112: $f1
    ld h, b                                       ; $5113: $60
    rst RST_38                                    ; $5114: $ff
    rra                                           ; $5115: $1f
    rst RST_38                                    ; $5116: $ff
    rst RST_38                                    ; $5117: $ff
    nop                                           ; $5118: $00
    add hl, de                                    ; $5119: $19
    and $e6                                       ; $511a: $e6 $e6
    rst RST_38                                    ; $511c: $ff
    ld a, c                                       ; $511d: $79
    rst RST_38                                    ; $511e: $ff
    xor e                                         ; $511f: $ab
    rst RST_18                                    ; $5120: $df
    cp h                                          ; $5121: $bc
    rst RST_38                                    ; $5122: $ff
    push de                                       ; $5123: $d5
    xor $aa                                       ; $5124: $ee $aa
    rst RST_00                                    ; $5126: $c7
    and d                                         ; $5127: $a2
    rst RST_08                                    ; $5128: $cf
    adc [hl]                                      ; $5129: $8e
    rst RST_38                                    ; $512a: $ff
    ld d, c                                       ; $512b: $51
    rst RST_38                                    ; $512c: $ff
    ld a, [hl+]                                   ; $512d: $2a
    pop af                                        ; $512e: $f1
    dec sp                                        ; $512f: $3b
    ldh [$ff7f], a                                ; $5130: $e0 $7f
    ldh [$ffdf], a                                ; $5132: $e0 $df
    pop af                                        ; $5134: $f1
    ld c, $ff                                     ; $5135: $0e $ff
    jp c, $a93d                                   ; $5137: $da $3d $a9

    ld a, a                                       ; $513a: $7f
    ld h, [hl]                                    ; $513b: $66
    rst RST_38                                    ; $513c: $ff
    db $dd                                        ; $513d: $dd
    cp [hl]                                       ; $513e: $be
    sub $fc                                       ; $513f: $d6 $fc
    dec hl                                        ; $5141: $2b
    or $a5                                        ; $5142: $f6 $a5
    ld [hl], e                                    ; $5144: $73
    and c                                         ; $5145: $a1
    ld a, a                                       ; $5146: $7f
    cp a                                          ; $5147: $bf
    ld a, a                                       ; $5148: $7f
    ld l, $f1                                     ; $5149: $2e $f1
    ld d, c                                       ; $514b: $51
    ldh [$ff91], a                                ; $514c: $e0 $91
    ldh [$ff9f], a                                ; $514e: $e0 $9f
    ldh [$ff8e], a                                ; $5150: $e0 $8e
    pop af                                        ; $5152: $f1
    ld b, b                                       ; $5153: $40
    rst RST_38                                    ; $5154: $ff
    ccf                                           ; $5155: $3f
    rst RST_38                                    ; $5156: $ff
    dec l                                         ; $5157: $2d
    di                                            ; $5158: $f3
    db $d3                                        ; $5159: $d3
    pop hl                                        ; $515a: $e1
    ld d, e                                       ; $515b: $53
    pop hl                                        ; $515c: $e1
    ld c, l                                       ; $515d: $4d
    di                                            ; $515e: $f3
    ld hl, $9e7f                                  ; $515f: $21 $7f $9e
    ld a, a                                       ; $5162: $7f
    ld hl, $ddff                                  ; $5163: $21 $ff $dd
    db $e3                                        ; $5166: $e3
    and a                                         ; $5167: $a7
    pop bc                                        ; $5168: $c1
    and e                                         ; $5169: $a3
    pop bc                                        ; $516a: $c1
    ld [hl], a                                    ; $516b: $77
    pop bc                                        ; $516c: $c1
    ld e, l                                       ; $516d: $5d
    db $e3                                        ; $516e: $e3
    add b                                         ; $516f: $80
    add l                                         ; $5170: $85
    inc b                                         ; $5171: $04
    ld [hl+], a                                   ; $5172: $22
    inc a                                         ; $5173: $3c
    ld b, b                                       ; $5174: $40
    add b                                         ; $5175: $80
    rst RST_38                                    ; $5176: $ff
    ld sp, hl                                     ; $5177: $f9
    cp $84                                        ; $5178: $fe $84
    rst RST_38                                    ; $517a: $ff
    dec sp                                        ; $517b: $3b
    rst RST_00                                    ; $517c: $c7
    ld h, l                                       ; $517d: $65
    add e                                         ; $517e: $83
    ld h, l                                       ; $517f: $65
    add e                                         ; $5180: $83
    cp l                                          ; $5181: $bd
    jp $ff43                                      ; $5182: $c3 $43 $ff


    ld a, l                                       ; $5185: $7d
    rst RST_38                                    ; $5186: $ff
    ld d, l                                       ; $5187: $55
    db $e3                                        ; $5188: $e3
    xor e                                         ; $5189: $ab
    ld [hl], a                                    ; $518a: $77
    dec a                                         ; $518b: $3d
    rst RST_38                                    ; $518c: $ff
    push de                                       ; $518d: $d5
    ei                                            ; $518e: $fb
    sbc [hl]                                      ; $518f: $9e
    rst RST_38                                    ; $5190: $ff
    ld h, a                                       ; $5191: $67
    rst RST_38                                    ; $5192: $ff
    sbc b                                         ; $5193: $98
    ld h, a                                       ; $5194: $67
    rst RST_38                                    ; $5195: $ff
    nop                                           ; $5196: $00
    db $db                                        ; $5197: $db
    inc a                                         ; $5198: $3c
    dec e                                         ; $5199: $1d
    or $e5                                        ; $519a: $f6 $e5
    cp $1b                                        ; $519c: $fe $1b
    db $fc                                        ; $519e: $fc
    ld l, l                                       ; $519f: $6d
    sbc [hl]                                      ; $51a0: $9e
    dec c                                         ; $51a1: $0d
    sbc [hl]                                      ; $51a2: $9e
    ld l, l                                       ; $51a3: $6d
    sbc [hl]                                      ; $51a4: $9e
    ld e, e                                       ; $51a5: $5b
    cp h                                          ; $51a6: $bc
    push af                                       ; $51a7: $f5
    cp $0d                                        ; $51a8: $fe $0d
    cp $5d                                        ; $51aa: $fe $5d
    adc [hl]                                      ; $51ac: $8e
    adc e                                         ; $51ad: $8b
    db $fc                                        ; $51ae: $fc
    ei                                            ; $51af: $fb
    db $fc                                        ; $51b0: $fc
    ld [hl], l                                    ; $51b1: $75
    cp $89                                        ; $51b2: $fe $89
    halt                                          ; $51b4: $76
    rst RST_38                                    ; $51b5: $ff
    nop                                           ; $51b6: $00
    jp c, $a93d                                   ; $51b7: $da $3d $a9

    ld a, a                                       ; $51ba: $7f
    and [hl]                                      ; $51bb: $a6
    ld a, a                                       ; $51bc: $7f
    db $dd                                        ; $51bd: $dd
    ld a, $d6                                     ; $51be: $3e $d6
    inc a                                         ; $51c0: $3c
    cp l                                          ; $51c1: $bd
    halt                                          ; $51c2: $76
    or d                                          ; $51c3: $b2
    ld a, a                                       ; $51c4: $7f
    xor a                                         ; $51c5: $af
    ld a, a                                       ; $51c6: $7f
    reti                                          ; $51c7: $d9


    ccf                                           ; $51c8: $3f
    or l                                          ; $51c9: $b5
    ld a, e                                       ; $51ca: $7b
    or c                                          ; $51cb: $b1
    ld a, e                                       ; $51cc: $7b
    or l                                          ; $51cd: $b5
    ld a, e                                       ; $51ce: $7b
    sbc $3f                                       ; $51cf: $de $3f
    and a                                         ; $51d1: $a7
    ld a, a                                       ; $51d2: $7f
    sbc b                                         ; $51d3: $98
    ld h, a                                       ; $51d4: $67
    rst RST_38                                    ; $51d5: $ff
    nop                                           ; $51d6: $00
    inc hl                                        ; $51d7: $23
    rst RST_38                                    ; $51d8: $ff
    reti                                          ; $51d9: $d9


    rst RST_20                                    ; $51da: $e7
    cp l                                          ; $51db: $bd
    jp $c3a5                                      ; $51dc: $c3 $a5 $c3


    and l                                         ; $51df: $a5
    jp $c7ba                                      ; $51e0: $c3 $ba $c7


    ld b, h                                       ; $51e3: $44
    rst RST_38                                    ; $51e4: $ff
    db $fd                                        ; $51e5: $fd
    cp $05                                        ; $51e6: $fe $05
    cp $d5                                        ; $51e8: $fe $d5
    ld c, $54                                     ; $51ea: $0e $54
    adc a                                         ; $51ec: $8f
    adc e                                         ; $51ed: $8b
    rst RST_38                                    ; $51ee: $ff
    ei                                            ; $51ef: $fb
    db $fd                                        ; $51f0: $fd
    halt                                          ; $51f1: $76
    rst RST_38                                    ; $51f2: $ff
    adc c                                         ; $51f3: $89
    halt                                          ; $51f4: $76
    rst RST_38                                    ; $51f5: $ff
    rst RST_38                                    ; $51f6: $ff
    nop                                           ; $51f7: $00
    rst RST_38                                    ; $51f8: $ff
    nop                                           ; $51f9: $00
    sub c                                         ; $51fa: $91
    ld l, [hl]                                    ; $51fb: $6e
    ld l, [hl]                                    ; $51fc: $6e
    rst RST_38                                    ; $51fd: $ff
    rst RST_18                                    ; $51fe: $df
    cp a                                          ; $51ff: $bf
    pop de                                        ; $5200: $d1
    rst RST_38                                    ; $5201: $ff
    ld a, [hl+]                                   ; $5202: $2a
    pop af                                        ; $5203: $f1
    xor e                                         ; $5204: $ab
    ld [hl], b                                    ; $5205: $70
    and b                                         ; $5206: $a0
    ld a, a                                       ; $5207: $7f
    cp a                                          ; $5208: $bf
    ld a, a                                       ; $5209: $7f
    ld [hl+], a                                   ; $520a: $22
    rst RST_38                                    ; $520b: $ff
    ld e, l                                       ; $520c: $5d
    db $e3                                        ; $520d: $e3
    and l                                         ; $520e: $a5
    jp $c3a5                                      ; $520f: $c3 $a5 $c3


    cp l                                          ; $5212: $bd
    jp $e79b                                      ; $5213: $c3 $9b $e7


    call nz, $ffff                                ; $5216: $c4 $ff $ff
    nop                                           ; $5219: $00
    add hl, de                                    ; $521a: $19
    and $e5                                       ; $521b: $e6 $e5
    cp $7b                                        ; $521d: $fe $7b
    db $fc                                        ; $521f: $fc
    xor l                                         ; $5220: $ad
    sbc $8d                                       ; $5221: $de $8d
    sbc $ad                                       ; $5223: $de $ad
    sbc $9b                                       ; $5225: $de $9b
    db $fc                                        ; $5227: $fc
    push af                                       ; $5228: $f5
    cp $4d                                        ; $5229: $fe $4d
    cp $bd                                        ; $522b: $fe $bd
    ld l, [hl]                                    ; $522d: $6e
    ld l, e                                       ; $522e: $6b
    inc a                                         ; $522f: $3c
    cp e                                          ; $5230: $bb
    ld a, h                                       ; $5231: $7c
    ld h, l                                       ; $5232: $65
    cp $95                                        ; $5233: $fe $95
    cp $5b                                        ; $5235: $fe $5b
    cp h                                          ; $5237: $bc
    rst RST_38                                    ; $5238: $ff
    nop                                           ; $5239: $00
    sub c                                         ; $523a: $91
    ld l, [hl]                                    ; $523b: $6e
    xor [hl]                                      ; $523c: $ae
    ld a, a                                       ; $523d: $7f
    rst RST_18                                    ; $523e: $df
    ccf                                           ; $523f: $3f
    pop de                                        ; $5240: $d1
    ccf                                           ; $5241: $3f
    cp d                                          ; $5242: $ba
    ld [hl], c                                    ; $5243: $71
    or b                                          ; $5244: $b0
    ld a, a                                       ; $5245: $7f
    xor a                                         ; $5246: $af
    ld a, a                                       ; $5247: $7f
    jp c, $b63d                                   ; $5248: $da $3d $b6

    ld a, c                                       ; $524b: $79
    or b                                          ; $524c: $b0
    ld a, c                                       ; $524d: $79
    or [hl]                                       ; $524e: $b6
    ld a, c                                       ; $524f: $79
    ret c                                         ; $5250: $d8

    ccf                                           ; $5251: $3f
    and a                                         ; $5252: $a7
    ld a, a                                       ; $5253: $7f
    cp b                                          ; $5254: $b8
    ld l, a                                       ; $5255: $6f
    db $db                                        ; $5256: $db
    inc a                                         ; $5257: $3c
    rst RST_38                                    ; $5258: $ff
    nop                                           ; $5259: $00
    add hl, de                                    ; $525a: $19
    and $e6                                       ; $525b: $e6 $e6
    rst RST_38                                    ; $525d: $ff
    ld a, c                                       ; $525e: $79
    rst RST_38                                    ; $525f: $ff
    xor e                                         ; $5260: $ab
    rst RST_18                                    ; $5261: $df
    cp h                                          ; $5262: $bc
    rst RST_38                                    ; $5263: $ff
    push de                                       ; $5264: $d5
    xor $aa                                       ; $5265: $ee $aa
    rst RST_00                                    ; $5267: $c7
    cp [hl]                                       ; $5268: $be
    rst RST_38                                    ; $5269: $ff
    jp nz, $bdff                                  ; $526a: $c2 $ff $bd

    jp $c1a6                                      ; $526d: $c3 $a6 $c1


    and [hl]                                      ; $5270: $a6
    pop bc                                        ; $5271: $c1
    call c, Call_000_21e3                         ; $5272: $dc $e3 $21
    rst RST_38                                    ; $5275: $ff
    add a                                         ; $5276: $87
    sbc a                                         ; $5277: $9f
    ld a, a                                       ; $5278: $7f
    db $f4                                        ; $5279: $f4
    nop                                           ; $527a: $00
    add b                                         ; $527b: $80
    nop                                           ; $527c: $00
    db $10                                        ; $527d: $10
    inc bc                                        ; $527e: $03
    nop                                           ; $527f: $00
    add e                                         ; $5280: $83
    ret nz                                        ; $5281: $c0

    nop                                           ; $5282: $00
    add b                                         ; $5283: $80
    inc bc                                        ; $5284: $03
    nop                                           ; $5285: $00
    add c                                         ; $5286: $81
    add b                                         ; $5287: $80
    inc bc                                        ; $5288: $03
    nop                                           ; $5289: $00
    add l                                         ; $528a: $85
    ld b, b                                       ; $528b: $40
    nop                                           ; $528c: $00
    add b                                         ; $528d: $80
    nop                                           ; $528e: $00
    add b                                         ; $528f: $80
    inc bc                                        ; $5290: $03
    nop                                           ; $5291: $00
    add b                                         ; $5292: $80
    add c                                         ; $5293: $81
    ld [$82a0], sp                                ; $5294: $08 $a0 $82
    push de                                       ; $5297: $d5
    add a                                         ; $5298: $87
    ld bc, $0188                                  ; $5299: $01 $88 $01
    dec b                                         ; $529c: $05
    inc b                                         ; $529d: $04
    nop                                           ; $529e: $00
    add c                                         ; $529f: $81
    ld bc, $0003                                  ; $52a0: $01 $03 $00
    add l                                         ; $52a3: $85
    inc b                                         ; $52a4: $04
    nop                                           ; $52a5: $00
    ld bc, $0100                                  ; $52a6: $01 $00 $01
    inc bc                                        ; $52a9: $03
    nop                                           ; $52aa: $00
    sub l                                         ; $52ab: $95
    ld hl, $2100                                  ; $52ac: $21 $00 $21
    nop                                           ; $52af: $00
    ld [hl], e                                    ; $52b0: $73
    nop                                           ; $52b1: $00
    nop                                           ; $52b2: $00
    rst RST_38                                    ; $52b3: $ff
    nop                                           ; $52b4: $00
    rst RST_38                                    ; $52b5: $ff
    nop                                           ; $52b6: $00
    rst RST_38                                    ; $52b7: $ff
    nop                                           ; $52b8: $00
    rst RST_38                                    ; $52b9: $ff
    nop                                           ; $52ba: $00
    rst RST_38                                    ; $52bb: $ff
    nop                                           ; $52bc: $00
    rst RST_38                                    ; $52bd: $ff
    nop                                           ; $52be: $00
    rst RST_38                                    ; $52bf: $ff
    nop                                           ; $52c0: $00
    ld [de], a                                    ; $52c1: $12
    rst RST_38                                    ; $52c2: $ff
    and d                                         ; $52c3: $a2
    nop                                           ; $52c4: $00
    add sp, $7f                                   ; $52c5: $e8 $7f
    ld hl, sp+$7f                                 ; $52c7: $f8 $7f
    ld a, [$8f7f]                                 ; $52c9: $fa $7f $8f
    ld a, a                                       ; $52cc: $7f
    adc a                                         ; $52cd: $8f
    ld a, a                                       ; $52ce: $7f
    cp a                                          ; $52cf: $bf
    ld c, a                                       ; $52d0: $4f
    cp b                                          ; $52d1: $b8
    ld c, a                                       ; $52d2: $4f
    xor b                                         ; $52d3: $a8
    ld c, a                                       ; $52d4: $4f
    xor e                                         ; $52d5: $ab
    ld c, h                                       ; $52d6: $4c
    xor e                                         ; $52d7: $ab
    ld c, h                                       ; $52d8: $4c
    xor d                                         ; $52d9: $aa
    ld c, h                                       ; $52da: $4c
    xor d                                         ; $52db: $aa
    ld c, h                                       ; $52dc: $4c
    xor d                                         ; $52dd: $aa
    ld c, h                                       ; $52de: $4c
    cp e                                          ; $52df: $bb
    ld c, h                                       ; $52e0: $4c
    adc b                                         ; $52e1: $88
    ld a, a                                       ; $52e2: $7f
    rst RST_38                                    ; $52e3: $ff
    nop                                           ; $52e4: $00
    nop                                           ; $52e5: $00
    add b                                         ; $52e6: $80
    add h                                         ; $52e7: $84
    ld b, $80                                     ; $52e8: $06 $80
    adc c                                         ; $52ea: $89
    xor c                                         ; $52eb: $a9
    xor c                                         ; $52ec: $a9
    ei                                            ; $52ed: $fb
    ei                                            ; $52ee: $fb
    inc bc                                        ; $52ef: $03
    rst RST_38                                    ; $52f0: $ff
    adc l                                         ; $52f1: $8d
    ei                                            ; $52f2: $fb
    rst RST_38                                    ; $52f3: $ff
    adc a                                         ; $52f4: $8f
    rst RST_38                                    ; $52f5: $ff
    adc a                                         ; $52f6: $8f
    rst RST_38                                    ; $52f7: $ff
    cp a                                          ; $52f8: $bf
    rst RST_08                                    ; $52f9: $cf
    xor b                                         ; $52fa: $a8
    rst RST_08                                    ; $52fb: $cf
    cp d                                          ; $52fc: $ba
    call Call_000_0388                            ; $52fd: $cd $88 $03
    rst RST_38                                    ; $5300: $ff
    sbc h                                         ; $5301: $9c
    add b                                         ; $5302: $80
    add b                                         ; $5303: $80
    cp a                                          ; $5304: $bf
    add b                                         ; $5305: $80
    or b                                          ; $5306: $b0
    sbc a                                         ; $5307: $9f
    xor a                                         ; $5308: $af
    sub b                                         ; $5309: $90
    xor a                                         ; $530a: $af
    sub b                                         ; $530b: $90
    or b                                          ; $530c: $b0
    and b                                         ; $530d: $a0
    rst RST_18                                    ; $530e: $df
    ret nc                                        ; $530f: $d0

    ldh a, [$ffbf]                                ; $5310: $f0 $bf
    xor a                                         ; $5312: $af
    sub b                                         ; $5313: $90
    xor a                                         ; $5314: $af
    sub b                                         ; $5315: $90
    xor a                                         ; $5316: $af
    sub b                                         ; $5317: $90
    and b                                         ; $5318: $a0
    sub b                                         ; $5319: $90
    cp a                                          ; $531a: $bf
    add b                                         ; $531b: $80
    ret nz                                        ; $531c: $c0

    cp a                                          ; $531d: $bf
    inc b                                         ; $531e: $04
    rst RST_38                                    ; $531f: $ff
    sbc e                                         ; $5320: $9b
    inc bc                                        ; $5321: $03
    ld bc, $03fd                                  ; $5322: $01 $fd $03
    dec b                                         ; $5325: $05
    ei                                            ; $5326: $fb
    push af                                       ; $5327: $f5
    inc bc                                        ; $5328: $03
    push af                                       ; $5329: $f5
    inc bc                                        ; $532a: $03
    dec b                                         ; $532b: $05
    inc bc                                        ; $532c: $03
    db $fd                                        ; $532d: $fd
    inc bc                                        ; $532e: $03
    dec b                                         ; $532f: $05
    ei                                            ; $5330: $fb
    push af                                       ; $5331: $f5
    inc bc                                        ; $5332: $03
    push af                                       ; $5333: $f5
    inc bc                                        ; $5334: $03
    push af                                       ; $5335: $f5
    inc bc                                        ; $5336: $03
    dec b                                         ; $5337: $05
    inc bc                                        ; $5338: $03
    db $fd                                        ; $5339: $fd
    inc bc                                        ; $533a: $03
    ld bc, $ff03                                  ; $533b: $01 $03 $ff
    xor c                                         ; $533e: $a9
    dec e                                         ; $533f: $1d
    jr nz, jr_005_53c0                            ; $5340: $20 $7e

    nop                                           ; $5342: $00
    ld h, l                                       ; $5343: $65
    sbc b                                         ; $5344: $98
    add $20                                       ; $5345: $c6 $20
    adc e                                         ; $5347: $8b
    ld b, h                                       ; $5348: $44
    ld d, c                                       ; $5349: $51

jr_005_534a:
    and [hl]                                      ; $534a: $a6
    ld h, a                                       ; $534b: $67
    sbc b                                         ; $534c: $98
    jr jr_005_5391                                ; $534d: $18 $42

    ld e, b                                       ; $534f: $58
    nop                                           ; $5350: $00
    rlca                                          ; $5351: $07
    ld [hl], b                                    ; $5352: $70
    add l                                         ; $5353: $85
    ld b, b                                       ; $5354: $40
    ret z                                         ; $5355: $c8

    jr nc, @+$1f                                  ; $5356: $30 $1d

    jr nz, jr_005_534a                            ; $5358: $20 $f0

    ld c, $10                                     ; $535a: $0e $10
    adc b                                         ; $535c: $88
    xor c                                         ; $535d: $a9
    ld b, $aa                                     ; $535e: $06 $aa
    ld d, l                                       ; $5360: $55
    nop                                           ; $5361: $00
    rst RST_38                                    ; $5362: $ff
    and l                                         ; $5363: $a5
    rst RST_38                                    ; $5364: $ff
    or a                                          ; $5365: $b7
    rst RST_38                                    ; $5366: $ff
    cp a                                          ; $5367: $bf
    inc bc                                        ; $5368: $03
    rst RST_38                                    ; $5369: $ff
    add [hl]                                      ; $536a: $86
    inc l                                         ; $536b: $2c
    rst RST_38                                    ; $536c: $ff
    db $d3                                        ; $536d: $d3
    inc l                                         ; $536e: $2c
    xor l                                         ; $536f: $ad
    ld d, d                                       ; $5370: $52
    add b                                         ; $5371: $80
    add l                                         ; $5372: $85
    inc b                                         ; $5373: $04
    ld bc, $7b5b                                  ; $5374: $01 $5b $7b
    ei                                            ; $5377: $fb
    add [hl]                                      ; $5378: $86
    rst RST_38                                    ; $5379: $ff
    rst RST_38                                    ; $537a: $ff
    or c                                          ; $537b: $b1
    rst RST_38                                    ; $537c: $ff
    ld c, [hl]                                    ; $537d: $4e
    or c                                          ; $537e: $b1
    stop                                          ; $537f: $10 $00
    add h                                         ; $5381: $84
    add b                                         ; $5382: $80
    ld a, a                                       ; $5383: $7f
    nop                                           ; $5384: $00
    nop                                           ; $5385: $00
    inc bc                                        ; $5386: $03
    ld h, b                                       ; $5387: $60
    add c                                         ; $5388: $81
    ld b, b                                       ; $5389: $40
    ld c, $00                                     ; $538a: $0e $00
    inc bc                                        ; $538c: $03
    ld h, b                                       ; $538d: $60
    adc b                                         ; $538e: $88
    ld b, b                                       ; $538f: $40
    nop                                           ; $5390: $00

jr_005_5391:
    nop                                           ; $5391: $00
    add b                                         ; $5392: $80
    ld a, a                                       ; $5393: $7f
    ld a, a                                       ; $5394: $7f
    rst RST_38                                    ; $5395: $ff
    nop                                           ; $5396: $00
    add b                                         ; $5397: $80
    inc bc                                        ; $5398: $03
    rst RST_38                                    ; $5399: $ff
    add e                                         ; $539a: $83
    inc c                                         ; $539b: $0c
    dec c                                         ; $539c: $0d
    inc c                                         ; $539d: $0c
    add b                                         ; $539e: $80
    add c                                         ; $539f: $81
    rlca                                          ; $53a0: $07
    add hl, bc                                    ; $53a1: $09
    ld bc, $0101                                  ; $53a2: $01 $01 $01
    ld bc, $0101                                  ; $53a5: $01 $01 $01
    adc b                                         ; $53a8: $88
    ld bc, $0d0c                                  ; $53a9: $01 $0c $0d
    inc c                                         ; $53ac: $0c
    add hl, bc                                    ; $53ad: $09
    nop                                           ; $53ae: $00
    ld bc, $0300                                  ; $53af: $01 $00 $03
    rst RST_38                                    ; $53b2: $ff
    inc bc                                        ; $53b3: $03
    ld a, a                                       ; $53b4: $7f
    add c                                         ; $53b5: $81
    ld b, b                                       ; $53b6: $40
    add b                                         ; $53b7: $80
    add e                                         ; $53b8: $83
    rlca                                          ; $53b9: $07
    ld a, a                                       ; $53ba: $7f
    ld d, l                                       ; $53bb: $55
    ld d, l                                       ; $53bc: $55
    ld d, l                                       ; $53bd: $55
    ld d, l                                       ; $53be: $55
    ld d, a                                       ; $53bf: $57

jr_005_53c0:
    ld d, h                                       ; $53c0: $54
    add c                                         ; $53c1: $81
    ld d, h                                       ; $53c2: $54
    inc bc                                        ; $53c3: $03
    ld d, l                                       ; $53c4: $55
    inc b                                         ; $53c5: $04
    ld d, h                                       ; $53c6: $54
    add [hl]                                      ; $53c7: $86
    ld a, [hl]                                    ; $53c8: $7e
    ld a, [hl]                                    ; $53c9: $7e
    ld a, a                                       ; $53ca: $7f
    ld b, c                                       ; $53cb: $41
    ld a, a                                       ; $53cc: $7f
    ld a, a                                       ; $53cd: $7f
    inc bc                                        ; $53ce: $03
    rst RST_38                                    ; $53cf: $ff
    add e                                         ; $53d0: $83
    ld bc, $ffff                                  ; $53d1: $01 $ff $ff
    ld [$8555], sp                                ; $53d4: $08 $55 $85
    push af                                       ; $53d7: $f5
    push af                                       ; $53d8: $f5
    dec d                                         ; $53d9: $15
    dec d                                         ; $53da: $15
    sub l                                         ; $53db: $95
    inc bc                                        ; $53dc: $03
    push de                                       ; $53dd: $d5
    inc b                                         ; $53de: $04
    sub l                                         ; $53df: $95
    adc e                                         ; $53e0: $8b
    ccf                                           ; $53e1: $3f
    ccf                                           ; $53e2: $3f
    rst RST_38                                    ; $53e3: $ff
    pop bc                                        ; $53e4: $c1
    rst RST_38                                    ; $53e5: $ff
    rst RST_38                                    ; $53e6: $ff
    db $f4                                        ; $53e7: $f4
    nop                                           ; $53e8: $00
    add b                                         ; $53e9: $80
    nop                                           ; $53ea: $00
    ld de, $0103                                  ; $53eb: $11 $03 $01
    add e                                         ; $53ee: $83
    pop bc                                        ; $53ef: $c1
    ld bc, $0381                                  ; $53f0: $01 $81 $03
    ld bc, $82dd                                  ; $53f3: $01 $dd $82
    ld [bc], a                                    ; $53f6: $02
    inc b                                         ; $53f7: $04
    inc b                                         ; $53f8: $04
    ld c, c                                       ; $53f9: $49
    ld [$1092], sp                                ; $53fa: $08 $92 $10
    and [hl]                                      ; $53fd: $a6
    ld [hl+], a                                   ; $53fe: $22
    ld c, l                                       ; $53ff: $4d
    ld b, l                                       ; $5400: $45
    sub [hl]                                      ; $5401: $96
    add d                                         ; $5402: $82
    or d                                          ; $5403: $b2
    sub d                                         ; $5404: $92
    db $fd                                        ; $5405: $fd
    ld l, h                                       ; $5406: $6c

Call_005_5407:
    rst RST_38                                    ; $5407: $ff
    ld a, h                                       ; $5408: $7c
    add a                                         ; $5409: $87
    add d                                         ; $540a: $82
    dec sp                                        ; $540b: $3b
    add hl, sp                                    ; $540c: $39
    ld l, a                                       ; $540d: $6f
    ld b, l                                       ; $540e: $45
    ld b, a                                       ; $540f: $47
    ld b, l                                       ; $5410: $45
    ld l, a                                       ; $5411: $6f
    ld b, l                                       ; $5412: $45
    ccf                                           ; $5413: $3f
    add hl, sp                                    ; $5414: $39
    rla                                           ; $5415: $17
    ld [bc], a                                    ; $5416: $02
    cp $7c                                        ; $5417: $fe $7c
    add h                                         ; $5419: $84
    add b                                         ; $541a: $80
    pop bc                                        ; $541b: $c1
    ld b, b                                       ; $541c: $40
    ld b, c                                       ; $541d: $41
    ld b, b                                       ; $541e: $40
    add b                                         ; $541f: $80
    add b                                         ; $5420: $80
    ld hl, $2100                                  ; $5421: $21 $00 $21
    nop                                           ; $5424: $00
    ld [hl], e                                    ; $5425: $73
    nop                                           ; $5426: $00
    ei                                            ; $5427: $fb
    rst RST_38                                    ; $5428: $ff
    ld [hl], h                                    ; $5429: $74
    cp a                                          ; $542a: $bf
    xor l                                         ; $542b: $ad
    ld l, $a5                                     ; $542c: $2e $a5
    ld h, $43                                     ; $542e: $26 $43
    jp nz, $c3da                                  ; $5430: $c2 $da $c3

    ld e, e                                       ; $5433: $5b
    jp $e77d                                      ; $5434: $c3 $7d $e7


    ld h, l                                       ; $5437: $65
    rst RST_20                                    ; $5438: $e7
    or a                                          ; $5439: $b7
    ld h, a                                       ; $543a: $67
    dec a                                         ; $543b: $3d
    rst RST_20                                    ; $543c: $e7
    db $fd                                        ; $543d: $fd
    rst RST_20                                    ; $543e: $e7
    cp [hl]                                       ; $543f: $be
    rst RST_20                                    ; $5440: $e7
    ld a, a                                       ; $5441: $7f
    rst RST_38                                    ; $5442: $ff
    sbc b                                         ; $5443: $98
    ld h, a                                       ; $5444: $67
    rst RST_38                                    ; $5445: $ff
    nop                                           ; $5446: $00
    ld a, [de]                                    ; $5447: $1a
    push bc                                       ; $5448: $c5
    or d                                          ; $5449: $b2
    push de                                       ; $544a: $d5
    cp [hl]                                       ; $544b: $be
    push de                                       ; $544c: $d5
    sub $ff                                       ; $544d: $d6 $ff
    sbc $ff                                       ; $544f: $de $ff
    rst RST_18                                    ; $5451: $df
    dec b                                         ; $5452: $05
    rst RST_38                                    ; $5453: $ff
    rst RST_28                                    ; $5454: $ef
    inc [hl]                                      ; $5455: $34
    ld b, c                                       ; $5456: $41
    ld h, $d1                                     ; $5457: $26 $d1
    ld a, [hl]                                    ; $5459: $7e
    pop de                                        ; $545a: $d1
    sub $fd                                       ; $545b: $d6 $fd
    rst RST_30                                    ; $545d: $f7
    db $fd                                        ; $545e: $fd
    db $dd                                        ; $545f: $dd
    rst RST_30                                    ; $5460: $f7
    rst RST_18                                    ; $5461: $df
    db $fd                                        ; $5462: $fd
    rst RST_38                                    ; $5463: $ff
    rst RST_38                                    ; $5464: $ff
    db $f4                                        ; $5465: $f4
    nop                                           ; $5466: $00
    sbc b                                         ; $5467: $98
    jr jr_005_549f                                ; $5468: $18 $35

    dec l                                         ; $546a: $2d
    ld c, d                                       ; $546b: $4a
    ld b, [hl]                                    ; $546c: $46
    ret nc                                        ; $546d: $d0

    ld c, [hl]                                    ; $546e: $4e
    sbc e                                         ; $546f: $9b
    add h                                         ; $5470: $84
    or h                                          ; $5471: $b4
    adc b                                         ; $5472: $88
    xor h                                         ; $5473: $ac
    add d                                         ; $5474: $82
    push bc                                       ; $5475: $c5
    and d                                         ; $5476: $a2
    push bc                                       ; $5477: $c5
    and e                                         ; $5478: $a3
    sbc d                                         ; $5479: $9a
    rst RST_20                                    ; $547a: $e7
    xor d                                         ; $547b: $aa
    rst RST_20                                    ; $547c: $e7
    ld hl, sp-$59                                 ; $547d: $f8 $a7
    xor [hl]                                      ; $547f: $ae
    pop af                                        ; $5480: $f1
    pop af                                        ; $5481: $f1
    ld a, a                                       ; $5482: $7f
    rst RST_18                                    ; $5483: $df
    ccf                                           ; $5484: $3f
    rst RST_30                                    ; $5485: $f7
    ld [hl], b                                    ; $5486: $70
    adc c                                         ; $5487: $89
    sbc b                                         ; $5488: $98
    inc [hl]                                      ; $5489: $34
    inc c                                         ; $548a: $0c
    inc hl                                        ; $548b: $23
    ld e, [hl]                                    ; $548c: $5e
    ld l, e                                       ; $548d: $6b
    ld e, $05                                     ; $548e: $1e $05
    sbc a                                         ; $5490: $9f
    inc sp                                        ; $5491: $33
    rst RST_08                                    ; $5492: $cf
    cp e                                          ; $5493: $bb
    ld b, a                                       ; $5494: $47
    sbc c                                         ; $5495: $99
    rlca                                          ; $5496: $07
    ld sp, hl                                     ; $5497: $f9
    rlca                                          ; $5498: $07
    jp $a93f                                      ; $5499: $c3 $3f $a9


    ld a, a                                       ; $549c: $7f
    xor l                                         ; $549d: $ad
    ld a, a                                       ; $549e: $7f

jr_005_549f:
    push bc                                       ; $549f: $c5
    ccf                                           ; $54a0: $3f
    rrca                                          ; $54a1: $0f
    cp $fb                                        ; $54a2: $fe $fb
    db $fc                                        ; $54a4: $fc
    nop                                           ; $54a5: $00
    nop                                           ; $54a6: $00
    ld a, a                                       ; $54a7: $7f
    nop                                           ; $54a8: $00
    ld a, a                                       ; $54a9: $7f
    ccf                                           ; $54aa: $3f
    ld a, a                                       ; $54ab: $7f
    jr nz, jr_005_552d                            ; $54ac: $20 $7f

    jr nz, jr_005_54f1                            ; $54ae: $20 $41

    ld [hl+], a                                   ; $54b0: $22
    ld a, a                                       ; $54b1: $7f
    ld [bc], a                                    ; $54b2: $02
    ld [hl], a                                    ; $54b3: $77
    ld a, [hl-]                                   ; $54b4: $3a
    ld [hl], a                                    ; $54b5: $77
    ld [hl+], a                                   ; $54b6: $22
    ld [hl], a                                    ; $54b7: $77
    ld [hl+], a                                   ; $54b8: $22
    ld [hl], a                                    ; $54b9: $77
    ld [hl+], a                                   ; $54ba: $22
    ld [hl], a                                    ; $54bb: $77
    ld [hl+], a                                   ; $54bc: $22
    ld [hl], a                                    ; $54bd: $77
    ld [hl+], a                                   ; $54be: $22
    ld b, h                                       ; $54bf: $44
    ld [hl+], a                                   ; $54c0: $22
    ld a, a                                       ; $54c1: $7f
    nop                                           ; $54c2: $00
    ld a, a                                       ; $54c3: $7f
    add b                                         ; $54c4: $80
    inc bc                                        ; $54c5: $03
    rst RST_38                                    ; $54c6: $ff
    cp [hl]                                       ; $54c7: $be
    rst RST_38                                    ; $54c8: $ff
    ld bc, $fdfb                                  ; $54c9: $01 $fb $fd
    ei                                            ; $54cc: $fb
    ld bc, $01fb                                  ; $54cd: $01 $fb $01
    add e                                         ; $54d0: $83
    ld bc, $01bf                                  ; $54d1: $01 $bf $01
    cp e                                          ; $54d4: $bb
    dec e                                         ; $54d5: $1d
    cp e                                          ; $54d6: $bb
    ld de, $11bb                                  ; $54d7: $11 $bb $11
    cp e                                          ; $54da: $bb
    ld de, $11bb                                  ; $54db: $11 $bb $11
    cp e                                          ; $54de: $bb
    ld de, $1123                                  ; $54df: $11 $23 $11
    rst RST_38                                    ; $54e2: $ff
    ld bc, $ffff                                  ; $54e3: $01 $ff $ff
    nop                                           ; $54e6: $00
    nop                                           ; $54e7: $00
    ld b, b                                       ; $54e8: $40
    nop                                           ; $54e9: $00
    add b                                         ; $54ea: $80
    nop                                           ; $54eb: $00
    cp b                                          ; $54ec: $b8
    db $10                                        ; $54ed: $10
    jr c, @+$2a                                   ; $54ee: $38 $28

    cp b                                          ; $54f0: $b8

jr_005_54f1:
    db $10                                        ; $54f1: $10
    add d                                         ; $54f2: $82
    ld [bc], a                                    ; $54f3: $02
    push de                                       ; $54f4: $d5
    nop                                           ; $54f5: $00
    add a                                         ; $54f6: $87
    nop                                           ; $54f7: $00
    ld bc, $9c00                                  ; $54f8: $01 $00 $9c
    ld [$141d], sp                                ; $54fb: $08 $1d $14
    dec e                                         ; $54fe: $1d
    ld [$0000], sp                                ; $54ff: $08 $00 $00
    jr jr_005_550c                                ; $5502: $18 $08

    add hl, de                                    ; $5504: $19
    ld [$8200], sp                                ; $5505: $08 $00 $82
    nop                                           ; $5508: $00
    nop                                           ; $5509: $00
    inc b                                         ; $550a: $04
    ld h, e                                       ; $550b: $63

jr_005_550c:
    add b                                         ; $550c: $80
    add e                                         ; $550d: $83
    inc b                                         ; $550e: $04
    ld a, a                                       ; $550f: $7f
    ld h, e                                       ; $5510: $63
    ld h, e                                       ; $5511: $63
    ld h, e                                       ; $5512: $63
    inc b                                         ; $5513: $04
    nop                                           ; $5514: $00
    add b                                         ; $5515: $80
    add e                                         ; $5516: $83
    ld b, $7e                                     ; $5517: $06 $7e
    ld h, e                                       ; $5519: $63
    ld h, e                                       ; $551a: $63
    ld a, [hl]                                    ; $551b: $7e
    ld h, b                                       ; $551c: $60
    ld h, b                                       ; $551d: $60
    inc b                                         ; $551e: $04
    nop                                           ; $551f: $00
    add b                                         ; $5520: $80
    add e                                         ; $5521: $83
    ld b, $02                                     ; $5522: $06 $02
    ld b, $0c                                     ; $5524: $06 $0c
    jr jr_005_5558                                ; $5526: $18 $30

    jr nz, jr_005_5530                            ; $5528: $20 $06

    nop                                           ; $552a: $00
    add b                                         ; $552b: $80
    add e                                         ; $552c: $83

jr_005_552d:
    inc c                                         ; $552d: $0c
    ld a, h                                       ; $552e: $7c
    ld a, [hl]                                    ; $552f: $7e

jr_005_5530:
    ld h, [hl]                                    ; $5530: $66
    ld h, [hl]                                    ; $5531: $66
    ld h, [hl]                                    ; $5532: $66
    ld a, h                                       ; $5533: $7c
    ld a, h                                       ; $5534: $7c
    ld h, [hl]                                    ; $5535: $66
    ld h, [hl]                                    ; $5536: $66
    ld h, [hl]                                    ; $5537: $66
    ld a, [hl]                                    ; $5538: $7e
    ld a, h                                       ; $5539: $7c
    ld [$0400], sp                                ; $553a: $08 $00 $04
    ld a, [hl]                                    ; $553d: $7e
    ld b, $60                                     ; $553e: $06 $60
    inc b                                         ; $5540: $04
    ld a, h                                       ; $5541: $7c
    ld a, [bc]                                    ; $5542: $0a
    ld h, b                                       ; $5543: $60
    inc b                                         ; $5544: $04
    nop                                           ; $5545: $00
    add [hl]                                      ; $5546: $86
    rst RST_38                                    ; $5547: $ff
    rst RST_38                                    ; $5548: $ff
    cp e                                          ; $5549: $bb
    cp e                                          ; $554a: $bb
    db $db                                        ; $554b: $db
    db $db                                        ; $554c: $db
    inc bc                                        ; $554d: $03
    db $fd                                        ; $554e: $fd
    adc l                                         ; $554f: $8d
    db $dd                                        ; $5550: $dd
    rst RST_30                                    ; $5551: $f7
    rst RST_28                                    ; $5552: $ef
    rst RST_38                                    ; $5553: $ff
    di                                            ; $5554: $f3
    db $fd                                        ; $5555: $fd
    di                                            ; $5556: $f3
    cp a                                          ; $5557: $bf

jr_005_5558:
    or c                                          ; $5558: $b1
    rst RST_18                                    ; $5559: $df
    pop de                                        ; $555a: $d1
    sbc l                                         ; $555b: $9d
    sbc e                                         ; $555c: $9b
    add b                                         ; $555d: $80
    add e                                         ; $555e: $83
    inc b                                         ; $555f: $04
    cp a                                          ; $5560: $bf
    sbc e                                         ; $5561: $9b
    db $dd                                        ; $5562: $dd
    db $ed                                        ; $5563: $ed
    and b                                         ; $5564: $a0
    rst RST_38                                    ; $5565: $ff
    rst RST_38                                    ; $5566: $ff
    nop                                           ; $5567: $00
    nop                                           ; $5568: $00
    ld a, a                                       ; $5569: $7f
    inc bc                                        ; $556a: $03
    ld a, a                                       ; $556b: $7f
    rlca                                          ; $556c: $07
    ld a, a                                       ; $556d: $7f
    rlca                                          ; $556e: $07
    ld a, a                                       ; $556f: $7f
    rlca                                          ; $5570: $07
    ld a, a                                       ; $5571: $7f
    dec de                                        ; $5572: $1b
    ld a, a                                       ; $5573: $7f
    add hl, de                                    ; $5574: $19
    ld a, a                                       ; $5575: $7f
    rra                                           ; $5576: $1f
    ld a, a                                       ; $5577: $7f
    rrca                                          ; $5578: $0f
    ld a, a                                       ; $5579: $7f
    ld bc, $0f7f                                  ; $557a: $01 $7f $0f
    ld a, a                                       ; $557d: $7f
    rra                                           ; $557e: $1f
    ld a, a                                       ; $557f: $7f
    jr jr_005_5601                                ; $5580: $18 $7f

    jr jr_005_5603                                ; $5582: $18 $7f

    jr jr_005_558a                                ; $5584: $18 $04

    nop                                           ; $5586: $00
    sbc h                                         ; $5587: $9c
    cp $c0                                        ; $5588: $fe $c0

jr_005_558a:
    cp $e0                                        ; $558a: $fe $e0
    cp $e0                                        ; $558c: $fe $e0
    cp $e0                                        ; $558e: $fe $e0
    cp $c0                                        ; $5590: $fe $c0
    cp $f8                                        ; $5592: $fe $f8
    cp $fc                                        ; $5594: $fe $fc
    cp $cc                                        ; $5596: $fe $cc
    cp $8c                                        ; $5598: $fe $8c
    cp $80                                        ; $559a: $fe $80
    cp $c0                                        ; $559c: $fe $c0
    cp $f0                                        ; $559e: $fe $f0
    cp $7c                                        ; $55a0: $fe $7c
    cp $1c                                        ; $55a2: $fe $1c
    inc b                                         ; $55a4: $04
    nop                                           ; $55a5: $00
    sbc h                                         ; $55a6: $9c
    ld a, a                                       ; $55a7: $7f
    inc bc                                        ; $55a8: $03
    ld a, a                                       ; $55a9: $7f
    rlca                                          ; $55aa: $07
    ld a, a                                       ; $55ab: $7f
    rlca                                          ; $55ac: $07
    ld a, a                                       ; $55ad: $7f
    rlca                                          ; $55ae: $07
    ld a, a                                       ; $55af: $7f
    inc bc                                        ; $55b0: $03
    ld a, a                                       ; $55b1: $7f
    ld bc, $077b                                  ; $55b2: $01 $7b $07
    ld a, a                                       ; $55b5: $7f
    rlca                                          ; $55b6: $07
    ld a, a                                       ; $55b7: $7f
    rlca                                          ; $55b8: $07
    ld a, a                                       ; $55b9: $7f
    rlca                                          ; $55ba: $07
    ld a, a                                       ; $55bb: $7f
    inc bc                                        ; $55bc: $03
    ld a, a                                       ; $55bd: $7f
    ld bc, $017f                                  ; $55be: $01 $7f $01
    ld a, a                                       ; $55c1: $7f
    ld bc, $0004                                  ; $55c2: $01 $04 $00
    db $dd                                        ; $55c5: $dd
    cp $c0                                        ; $55c6: $fe $c0
    cp $e0                                        ; $55c8: $fe $e0
    cp $e0                                        ; $55ca: $fe $e0
    cp $e0                                        ; $55cc: $fe $e0
    cp $c0                                        ; $55ce: $fe $c0
    cp $80                                        ; $55d0: $fe $80
    sbc $e0                                       ; $55d2: $de $e0
    cp $e0                                        ; $55d4: $fe $e0
    cp $e0                                        ; $55d6: $fe $e0
    cp $e0                                        ; $55d8: $fe $e0
    cp $c0                                        ; $55da: $fe $c0
    cp $80                                        ; $55dc: $fe $80
    cp $80                                        ; $55de: $fe $80
    cp $80                                        ; $55e0: $fe $80
    nop                                           ; $55e2: $00
    nop                                           ; $55e3: $00
    rrca                                          ; $55e4: $0f
    nop                                           ; $55e5: $00
    rra                                           ; $55e6: $1f
    rlca                                          ; $55e7: $07
    ccf                                           ; $55e8: $3f
    rrca                                          ; $55e9: $0f
    ccf                                           ; $55ea: $3f
    rra                                           ; $55eb: $1f
    dec sp                                        ; $55ec: $3b
    dec e                                         ; $55ed: $1d
    ccf                                           ; $55ee: $3f
    add hl, de                                    ; $55ef: $19
    add hl, sp                                    ; $55f0: $39
    rra                                           ; $55f1: $1f
    ld a, a                                       ; $55f2: $7f
    rrca                                          ; $55f3: $0f
    ld a, a                                       ; $55f4: $7f
    inc sp                                        ; $55f5: $33
    ld a, a                                       ; $55f6: $7f
    dec sp                                        ; $55f7: $3b
    ld a, a                                       ; $55f8: $7f
    ld c, $1f                                     ; $55f9: $0e $1f
    inc bc                                        ; $55fb: $03
    ld a, a                                       ; $55fc: $7f
    ld c, $7f                                     ; $55fd: $0e $7f
    jr c, jr_005_567d                             ; $55ff: $38 $7c

jr_005_5601:
    jr nc, jr_005_567b                            ; $5601: $30 $78

jr_005_5603:
    nop                                           ; $5603: $00
    ldh a, [rP1]                                  ; $5604: $f0 $00
    ld hl, sp-$20                                 ; $5606: $f8 $e0
    db $fc                                        ; $5608: $fc
    ldh a, [$fffc]                                ; $5609: $f0 $fc
    ld hl, sp-$24                                 ; $560b: $f8 $dc
    cp b                                          ; $560d: $b8
    db $fc                                        ; $560e: $fc
    sbc b                                         ; $560f: $98
    sbc h                                         ; $5610: $9c
    ld hl, sp-$02                                 ; $5611: $f8 $fe
    ldh a, [$fffe]                                ; $5613: $f0 $fe
    call z, $dcfe                                 ; $5615: $cc $fe $dc
    cp $70                                        ; $5618: $fe $70
    ld hl, sp-$40                                 ; $561a: $f8 $c0
    cp $70                                        ; $561c: $fe $70
    cp $1c                                        ; $561e: $fe $1c
    ld a, $0c                                     ; $5620: $3e $0c
    ld e, $03                                     ; $5622: $1e $03
    nop                                           ; $5624: $00
    inc c                                         ; $5625: $0c
    ld [hl], $04                                  ; $5626: $36 $04
    ld a, $0c                                     ; $5628: $3e $0c
    ld [hl], $04                                  ; $562a: $36 $04
    nop                                           ; $562c: $00
    add b                                         ; $562d: $80
    add e                                         ; $562e: $83
    ld c, $78                                     ; $562f: $0e $78
    ld a, h                                       ; $5631: $7c
    ld l, h                                       ; $5632: $6c
    ld l, h                                       ; $5633: $6c
    ld l, h                                       ; $5634: $6c
    ld l, h                                       ; $5635: $6c
    ld l, h                                       ; $5636: $6c
    ld a, h                                       ; $5637: $7c
    ld a, b                                       ; $5638: $78
    ld h, b                                       ; $5639: $60
    ld h, b                                       ; $563a: $60
    ld h, b                                       ; $563b: $60
    ld h, b                                       ; $563c: $60
    ld h, b                                       ; $563d: $60
    add d                                         ; $563e: $82
    nop                                           ; $563f: $00
    nop                                           ; $5640: $00
    nop                                           ; $5641: $00
    stop                                          ; $5642: $10 $00
    add b                                         ; $5644: $80
    add e                                         ; $5645: $83
    ld b, $7c                                     ; $5646: $06 $7c
    db $fc                                        ; $5648: $fc
    ret nz                                        ; $5649: $c0

    ret nz                                        ; $564a: $c0

    ret nz                                        ; $564b: $c0

    ret nz                                        ; $564c: $c0

    inc d                                         ; $564d: $14
    nop                                           ; $564e: $00
    add b                                         ; $564f: $80
    add c                                         ; $5650: $81
    ld b, $7c                                     ; $5651: $06 $7c
    db $fc                                        ; $5653: $fc
    ret nz                                        ; $5654: $c0

    ret nz                                        ; $5655: $c0

    ret nz                                        ; $5656: $c0

    ret nz                                        ; $5657: $c0

    inc b                                         ; $5658: $04
    nop                                           ; $5659: $00
    nop                                           ; $565a: $00
    ld [$8000], sp                                ; $565b: $08 $00 $80
    add c                                         ; $565e: $81
    jr @+$03                                      ; $565f: $18 $01

    ld bc, $0303                                  ; $5661: $01 $03 $03
    rlca                                          ; $5664: $07
    ld c, $1d                                     ; $5665: $0e $1d
    rra                                           ; $5667: $1f
    ld a, $3c                                     ; $5668: $3e $3c
    jr nc, jr_005_566c                            ; $566a: $30 $00

jr_005_566c:
    ld bc, $4c42                                  ; $566c: $01 $42 $4c
    sbc b                                         ; $566f: $98
    or b                                          ; $5670: $b0
    ld l, b                                       ; $5671: $68
    ret nc                                        ; $5672: $d0

    or b                                          ; $5673: $b0
    ld h, b                                       ; $5674: $60
    ret nc                                        ; $5675: $d0

    ldh [$ff80], a                                ; $5676: $e0 $80
    ld [$0000], sp                                ; $5678: $08 $00 $00

jr_005_567b:
    and a                                         ; $567b: $a7
    ld [bc], a                                    ; $567c: $02

jr_005_567d:
    nop                                           ; $567d: $00
    rrca                                          ; $567e: $0f
    dec b                                         ; $567f: $05
    ccf                                           ; $5680: $3f
    jr nc, jr_005_5702                            ; $5681: $30 $7f

    ld b, l                                       ; $5683: $45
    ld a, [$ea90]                                 ; $5684: $fa $90 $ea
    and b                                         ; $5687: $a0
    ldh [c], a                                    ; $5688: $e2
    and b                                         ; $5689: $a0
    ld hl, sp-$68                                 ; $568a: $f8 $98
    rst RST_38                                    ; $568c: $ff
    rst RST_00                                    ; $568d: $c7
    rst RST_38                                    ; $568e: $ff
    or b                                          ; $568f: $b0
    rst RST_28                                    ; $5690: $ef
    xor a                                         ; $5691: $af
    ld hl, sp-$68                                 ; $5692: $f8 $98
    ld a, a                                       ; $5694: $7f
    ld b, a                                       ; $5695: $47
    ccf                                           ; $5696: $3f
    jr nc, jr_005_56a8                            ; $5697: $30 $0f

    rrca                                          ; $5699: $0f
    nop                                           ; $569a: $00
    nop                                           ; $569b: $00
    rrca                                          ; $569c: $0f
    rrca                                          ; $569d: $0f
    ccf                                           ; $569e: $3f
    jr nc, jr_005_5720                            ; $569f: $30 $7f

    ld b, a                                       ; $56a1: $47
    ld a, a                                       ; $56a2: $7f
    add b                                         ; $56a3: $80
    add l                                         ; $56a4: $85
    ld b, $4f                                     ; $56a5: $06 $4f
    adc h                                         ; $56a7: $8c

jr_005_56a8:
    adc h                                         ; $56a8: $8c
    add c                                         ; $56a9: $81
    add c                                         ; $56aa: $81
    add c                                         ; $56ab: $81
    sub h                                         ; $56ac: $94
    add b                                         ; $56ad: $80
    ld a, a                                       ; $56ae: $7f
    ld b, c                                       ; $56af: $41
    ld a, a                                       ; $56b0: $7f
    ld b, c                                       ; $56b1: $41
    ccf                                           ; $56b2: $3f
    jr nc, @+$11                                  ; $56b3: $30 $0f

    ld c, $03                                     ; $56b5: $0e $03
    ld [bc], a                                    ; $56b7: $02
    inc bc                                        ; $56b8: $03
    inc bc                                        ; $56b9: $03
    ldh a, [$fff0]                                ; $56ba: $f0 $f0
    db $fc                                        ; $56bc: $fc
    inc c                                         ; $56bd: $0c
    cp $e2                                        ; $56be: $fe $e2
    cp $80                                        ; $56c0: $fe $80
    add l                                         ; $56c2: $85
    ld b, $f2                                     ; $56c3: $06 $f2
    ld sp, $e1f1                                  ; $56c5: $31 $f1 $e1
    add c                                         ; $56c8: $81
    add c                                         ; $56c9: $81
    adc e                                         ; $56ca: $8b
    ld bc, $82fe                                  ; $56cb: $01 $fe $82
    cp $82                                        ; $56ce: $fe $82
    db $fc                                        ; $56d0: $fc
    inc c                                         ; $56d1: $0c
    ldh a, [rSVBK]                                ; $56d2: $f0 $70
    ret nz                                        ; $56d4: $c0

    ld b, b                                       ; $56d5: $40
    add b                                         ; $56d6: $80
    add e                                         ; $56d7: $83
    ld [$fbc0], sp                                ; $56d8: $08 $c0 $fb
    db $dd                                        ; $56db: $dd
    db $dd                                        ; $56dc: $dd
    cp c                                          ; $56dd: $b9
    cp e                                          ; $56de: $bb
    or [hl]                                       ; $56df: $b6
    push de                                       ; $56e0: $d5
    add d                                         ; $56e1: $82
    rst RST_38                                    ; $56e2: $ff
    rst RST_38                                    ; $56e3: $ff
    add b                                         ; $56e4: $80
    add e                                         ; $56e5: $83
    rlca                                          ; $56e6: $07
    ei                                            ; $56e7: $fb
    db $dd                                        ; $56e8: $dd
    db $dd                                        ; $56e9: $dd
    cp c                                          ; $56ea: $b9
    cp e                                          ; $56eb: $bb
    or [hl]                                       ; $56ec: $b6
    push de                                       ; $56ed: $d5
    add d                                         ; $56ee: $82
    rst RST_38                                    ; $56ef: $ff
    rst RST_38                                    ; $56f0: $ff
    add b                                         ; $56f1: $80
    add e                                         ; $56f2: $83
    rlca                                          ; $56f3: $07
    ei                                            ; $56f4: $fb
    db $dd                                        ; $56f5: $dd
    db $dd                                        ; $56f6: $dd
    cp c                                          ; $56f7: $b9
    cp e                                          ; $56f8: $bb
    or [hl]                                       ; $56f9: $b6
    push de                                       ; $56fa: $d5
    inc b                                         ; $56fb: $04
    rst RST_38                                    ; $56fc: $ff
    add h                                         ; $56fd: $84
    cp e                                          ; $56fe: $bb
    cp e                                          ; $56ff: $bb
    db $db                                        ; $5700: $db
    db $db                                        ; $5701: $db

jr_005_5702:
    inc bc                                        ; $5702: $03
    db $fd                                        ; $5703: $fd
    adc l                                         ; $5704: $8d
    db $dd                                        ; $5705: $dd
    rst RST_30                                    ; $5706: $f7
    rst RST_28                                    ; $5707: $ef
    rst RST_38                                    ; $5708: $ff
    di                                            ; $5709: $f3
    db $fd                                        ; $570a: $fd
    di                                            ; $570b: $f3
    cp a                                          ; $570c: $bf
    or c                                          ; $570d: $b1
    rst RST_18                                    ; $570e: $df
    pop de                                        ; $570f: $d1
    sbc l                                         ; $5710: $9d
    sbc e                                         ; $5711: $9b
    add b                                         ; $5712: $80
    add e                                         ; $5713: $83
    inc b                                         ; $5714: $04
    cp a                                          ; $5715: $bf
    sbc e                                         ; $5716: $9b
    db $dd                                        ; $5717: $dd
    db $ed                                        ; $5718: $ed
    add d                                         ; $5719: $82
    rst RST_38                                    ; $571a: $ff
    rst RST_38                                    ; $571b: $ff
    add b                                         ; $571c: $80
    add e                                         ; $571d: $83
    rlca                                          ; $571e: $07
    ei                                            ; $571f: $fb

jr_005_5720:
    db $dd                                        ; $5720: $dd
    db $dd                                        ; $5721: $dd
    cp c                                          ; $5722: $b9
    cp e                                          ; $5723: $bb
    or [hl]                                       ; $5724: $b6
    push de                                       ; $5725: $d5
    add d                                         ; $5726: $82
    rst RST_38                                    ; $5727: $ff
    rst RST_38                                    ; $5728: $ff
    nop                                           ; $5729: $00
    rst RST_38                                    ; $572a: $ff
    ld a, a                                       ; $572b: $7f
    jr nc, jr_005_57ad                            ; $572c: $30 $7f

    ld c, b                                       ; $572e: $48
    ld a, a                                       ; $572f: $7f
    ld b, a                                       ; $5730: $47
    ld a, h                                       ; $5731: $7c
    ld b, a                                       ; $5732: $47
    ld a, b                                       ; $5733: $78
    ld c, a                                       ; $5734: $4f
    ld [hl], e                                    ; $5735: $73
    ccf                                           ; $5736: $3f
    ld h, a                                       ; $5737: $67
    dec a                                         ; $5738: $3d
    ld h, a                                       ; $5739: $67
    dec a                                         ; $573a: $3d
    ld h, e                                       ; $573b: $63
    ld a, $77                                     ; $573c: $3e $77
    dec a                                         ; $573e: $3d
    ld a, a                                       ; $573f: $7f
    ld c, d                                       ; $5740: $4a
    ld a, a                                       ; $5741: $7f
    ld c, [hl]                                    ; $5742: $4e
    ld a, a                                       ; $5743: $7f
    ld a, [hl-]                                   ; $5744: $3a
    ccf                                           ; $5745: $3f
    ld [bc], a                                    ; $5746: $02
    rlca                                          ; $5747: $07
    ld [bc], a                                    ; $5748: $02
    inc bc                                        ; $5749: $03
    ld bc, $06ff                                  ; $574a: $01 $ff $06
    rst RST_38                                    ; $574d: $ff
    add hl, bc                                    ; $574e: $09
    rst RST_38                                    ; $574f: $ff
    pop af                                        ; $5750: $f1
    rra                                           ; $5751: $1f
    pop af                                        ; $5752: $f1
    rrca                                          ; $5753: $0f
    ld sp, hl                                     ; $5754: $f9
    rst RST_20                                    ; $5755: $e7
    cp $f3                                        ; $5756: $fe $f3
    ld e, [hl]                                    ; $5758: $5e
    di                                            ; $5759: $f3
    ld e, [hl]                                    ; $575a: $5e
    db $e3                                        ; $575b: $e3
    ld a, $f7                                     ; $575c: $3e $f7
    sbc $ff                                       ; $575e: $de $ff
    add hl, hl                                    ; $5760: $29
    rst RST_38                                    ; $5761: $ff
    add hl, sp                                    ; $5762: $39
    rst RST_38                                    ; $5763: $ff
    xor [hl]                                      ; $5764: $ae
    cp $a0                                        ; $5765: $fe $a0
    ldh a, [$ffa0]                                ; $5767: $f0 $a0
    ldh [rLCDC], a                                ; $5769: $e0 $40
    rra                                           ; $576b: $1f
    inc c                                         ; $576c: $0c
    ccf                                           ; $576d: $3f
    ld [de], a                                    ; $576e: $12
    ccf                                           ; $576f: $3f
    inc de                                        ; $5770: $13
    inc a                                         ; $5771: $3c
    rla                                           ; $5772: $17
    jr c, @+$21                                   ; $5773: $38 $1f

    inc sp                                        ; $5775: $33
    rra                                           ; $5776: $1f
    ld h, a                                       ; $5777: $67
    dec a                                         ; $5778: $3d
    ld h, a                                       ; $5779: $67
    dec a                                         ; $577a: $3d
    ld h, e                                       ; $577b: $63
    ld a, $37                                     ; $577c: $3e $37
    dec e                                         ; $577e: $1d
    ccf                                           ; $577f: $3f
    ld a, [de]                                    ; $5780: $1a
    ccf                                           ; $5781: $3f
    ld d, $1f                                     ; $5782: $16 $1f
    ld a, [bc]                                    ; $5784: $0a
    rlca                                          ; $5785: $07
    ld [bc], a                                    ; $5786: $02
    rlca                                          ; $5787: $07
    ld [bc], a                                    ; $5788: $02
    inc bc                                        ; $5789: $03
    ld bc, $18fc                                  ; $578a: $01 $fc $18
    cp $24                                        ; $578d: $fe $24
    cp $e4                                        ; $578f: $fe $e4
    ld e, $f4                                     ; $5791: $1e $f4
    ld c, $fc                                     ; $5793: $0e $fc
    and $fc                                       ; $5795: $e6 $fc
    di                                            ; $5797: $f3
    ld e, [hl]                                    ; $5798: $5e
    di                                            ; $5799: $f3
    ld e, [hl]                                    ; $579a: $5e
    db $e3                                        ; $579b: $e3
    ld a, $f6                                     ; $579c: $3e $f6
    call c, Call_000_2cfe                         ; $579e: $dc $fe $2c
    cp $34                                        ; $57a1: $fe $34
    db $fc                                        ; $57a3: $fc
    xor b                                         ; $57a4: $a8
    ldh a, [$ffa0]                                ; $57a5: $f0 $a0
    ldh a, [$ffa0]                                ; $57a7: $f0 $a0
    ldh [$ffa6], a                                ; $57a9: $e0 $a6
    ld b, b                                       ; $57ab: $40
    ld b, b                                       ; $57ac: $40

jr_005_57ad:
    nop                                           ; $57ad: $00
    ldh a, [$ffa0]                                ; $57ae: $f0 $a0
    db $fc                                        ; $57b0: $fc
    inc c                                         ; $57b1: $0c
    cp $a2                                        ; $57b2: $fe $a2
    ld e, a                                       ; $57b4: $5f
    add hl, bc                                    ; $57b5: $09
    ld d, a                                       ; $57b6: $57
    dec b                                         ; $57b7: $05
    ld b, a                                       ; $57b8: $47
    dec b                                         ; $57b9: $05
    rra                                           ; $57ba: $1f
    add hl, de                                    ; $57bb: $19
    rst RST_38                                    ; $57bc: $ff
    db $e3                                        ; $57bd: $e3
    rst RST_38                                    ; $57be: $ff
    dec c                                         ; $57bf: $0d
    rst RST_30                                    ; $57c0: $f7
    push af                                       ; $57c1: $f5
    rra                                           ; $57c2: $1f
    add hl, de                                    ; $57c3: $19
    cp $e2                                        ; $57c4: $fe $e2
    db $fc                                        ; $57c6: $fc
    inc c                                         ; $57c7: $0c
    ldh a, [$fff0]                                ; $57c8: $f0 $f0
    nop                                           ; $57ca: $00
    nop                                           ; $57cb: $00
    rra                                           ; $57cc: $1f
    rra                                           ; $57cd: $1f
    ccf                                           ; $57ce: $3f
    jr nz, @+$81                                  ; $57cf: $20 $7f

    add b                                         ; $57d1: $80
    add l                                         ; $57d2: $85
    ld [$8646], sp                                ; $57d3: $08 $46 $86
    add [hl]                                      ; $57d6: $86
    add [hl]                                      ; $57d7: $86
    add [hl]                                      ; $57d8: $86
    add [hl]                                      ; $57d9: $86
    add [hl]                                      ; $57da: $86
    add b                                         ; $57db: $80
    sub b                                         ; $57dc: $90
    add [hl]                                      ; $57dd: $86
    ld a, a                                       ; $57de: $7f
    ld b, [hl]                                    ; $57df: $46
    ccf                                           ; $57e0: $3f
    jr nz, jr_005_5802                            ; $57e1: $20 $1f

    ld e, $03                                     ; $57e3: $1e $03
    ld [bc], a                                    ; $57e5: $02
    inc bc                                        ; $57e6: $03
    inc bc                                        ; $57e7: $03
    ld hl, sp-$08                                 ; $57e8: $f8 $f8
    db $fc                                        ; $57ea: $fc
    inc b                                         ; $57eb: $04
    cp $80                                        ; $57ec: $fe $80
    add l                                         ; $57ee: $85
    ld [$6162], sp                                ; $57ef: $08 $62 $61
    ld h, c                                       ; $57f2: $61
    ld h, c                                       ; $57f3: $61
    ld h, c                                       ; $57f4: $61
    ld h, c                                       ; $57f5: $61
    ld h, c                                       ; $57f6: $61
    ld bc, $6192                                  ; $57f7: $01 $92 $61
    cp $62                                        ; $57fa: $fe $62
    db $fc                                        ; $57fc: $fc
    inc b                                         ; $57fd: $04
    ld hl, sp+$78                                 ; $57fe: $f8 $78
    ret nz                                        ; $5800: $c0

    ld b, b                                       ; $5801: $40

jr_005_5802:
    ret nz                                        ; $5802: $c0

    ret nz                                        ; $5803: $c0

    rrca                                          ; $5804: $0f
    rrca                                          ; $5805: $0f
    ccf                                           ; $5806: $3f
    ld sp, $437f                                  ; $5807: $31 $7f $43
    ld a, a                                       ; $580a: $7f
    add b                                         ; $580b: $80
    add l                                         ; $580c: $85
    ld b, $43                                     ; $580d: $06 $43
    sbc e                                         ; $580f: $9b
    sbc c                                         ; $5810: $99
    sbc a                                         ; $5811: $9f
    adc a                                         ; $5812: $8f
    add c                                         ; $5813: $81
    sub h                                         ; $5814: $94
    sbc a                                         ; $5815: $9f
    ld a, a                                       ; $5816: $7f
    ld e, a                                       ; $5817: $5f
    ld a, a                                       ; $5818: $7f
    ld b, b                                       ; $5819: $40
    ccf                                           ; $581a: $3f
    jr nc, @+$11                                  ; $581b: $30 $0f

    ld c, $03                                     ; $581d: $0e $03
    ld [bc], a                                    ; $581f: $02
    inc bc                                        ; $5820: $03
    inc bc                                        ; $5821: $03
    ldh a, [$fff0]                                ; $5822: $f0 $f0
    db $fc                                        ; $5824: $fc
    call z, $e2fe                                 ; $5825: $cc $fe $e2
    cp $80                                        ; $5828: $fe $80
    add l                                         ; $582a: $85
    ld b, $e2                                     ; $582b: $06 $e2
    pop hl                                        ; $582d: $e1
    pop bc                                        ; $582e: $c1
    ld sp, hl                                     ; $582f: $f9
    db $fd                                        ; $5830: $fd
    call $c18d                                    ; $5831: $cd $8d $c1
    cp $fa                                        ; $5834: $fe $fa
    cp $fa                                        ; $5836: $fe $fa
    db $fc                                        ; $5838: $fc
    inc c                                         ; $5839: $0c
    ldh a, [rSVBK]                                ; $583a: $f0 $70
    ret nz                                        ; $583c: $c0

    ld b, b                                       ; $583d: $40
    ret nz                                        ; $583e: $c0

    ret nz                                        ; $583f: $c0

    nop                                           ; $5840: $00
    rst RST_38                                    ; $5841: $ff
    rst RST_38                                    ; $5842: $ff
    rst RST_00                                    ; $5843: $c7
    rst RST_28                                    ; $5844: $ef
    rst RST_38                                    ; $5845: $ff
    rst RST_38                                    ; $5846: $ff
    db $d3                                        ; $5847: $d3
    ei                                            ; $5848: $fb
    dec a                                         ; $5849: $3d
    cp a                                          ; $584a: $bf
    rst RST_38                                    ; $584b: $ff
    rst RST_38                                    ; $584c: $ff
    db $e3                                        ; $584d: $e3
    rst RST_30                                    ; $584e: $f7
    ld a, $7f                                     ; $584f: $3e $7f
    sbc h                                         ; $5851: $9c
    ccf                                           ; $5852: $3f
    ccf                                           ; $5853: $3f
    dec c                                         ; $5854: $0d
    dec bc                                        ; $5855: $0b
    ccf                                           ; $5856: $3f
    ccf                                           ; $5857: $3f
    dec c                                         ; $5858: $0d
    rrca                                          ; $5859: $0f
    ccf                                           ; $585a: $3f
    dec a                                         ; $585b: $3d
    ccf                                           ; $585c: $3f
    dec l                                         ; $585d: $2d
    ccf                                           ; $585e: $3f
    ld [hl], $17                                  ; $585f: $36 $17
    dec de                                        ; $5861: $1b
    dec bc                                        ; $5862: $0b
    inc c                                         ; $5863: $0c
    dec b                                         ; $5864: $05
    ld b, $0f                                     ; $5865: $06 $0f
    rrca                                          ; $5867: $0f
    dec e                                         ; $5868: $1d
    dec de                                        ; $5869: $1b
    ld a, $26                                     ; $586a: $3e $26
    jr c, jr_005_58a6                             ; $586c: $38 $38

    inc b                                         ; $586e: $04
    nop                                           ; $586f: $00
    add e                                         ; $5870: $83
    ldh a, [$fff0]                                ; $5871: $f0 $f0
    ld a, b                                       ; $5873: $78
    inc bc                                        ; $5874: $03
    ld hl, sp-$6a                                 ; $5875: $f8 $96
    ld e, b                                       ; $5877: $58
    ld hl, sp-$02                                 ; $5878: $f8 $fe
    ld e, [hl]                                    ; $587a: $5e
    cp $5a                                        ; $587b: $fe $5a
    cp $36                                        ; $587d: $fe $36
    db $f4                                        ; $587f: $f4
    db $ec                                        ; $5880: $ec
    add sp, $18                                   ; $5881: $e8 $18
    ret nc                                        ; $5883: $d0

    jr nc, @-$06                                  ; $5884: $30 $f8

    ld hl, sp-$14                                 ; $5886: $f8 $ec
    call c, $323e                                 ; $5888: $dc $3e $32
    ld c, $0e                                     ; $588b: $0e $0e
    inc b                                         ; $588d: $04
    nop                                           ; $588e: $00
    and d                                         ; $588f: $a2
    rra                                           ; $5890: $1f
    rrca                                          ; $5891: $0f
    ld a, a                                       ; $5892: $7f
    ld a, a                                       ; $5893: $7f
    ccf                                           ; $5894: $3f
    rra                                           ; $5895: $1f
    ld a, a                                       ; $5896: $7f
    ld a, a                                       ; $5897: $7f
    rra                                           ; $5898: $1f
    rrca                                          ; $5899: $0f
    ld l, $2f                                     ; $589a: $2e $2f
    ld a, l                                       ; $589c: $7d
    ld d, [hl]                                    ; $589d: $56
    ld a, a                                       ; $589e: $7f
    ld e, b                                       ; $589f: $58
    dec a                                         ; $58a0: $3d
    ld a, [hl+]                                   ; $58a1: $2a
    ld a, [hl]                                    ; $58a2: $7e
    ld a, a                                       ; $58a3: $7f
    ei                                            ; $58a4: $fb
    add a                                         ; $58a5: $87

jr_005_58a6:
    rst RST_38                                    ; $58a6: $ff
    xor c                                         ; $58a7: $a9
    cp [hl]                                       ; $58a8: $be
    db $dd                                        ; $58a9: $dd
    ld e, h                                       ; $58aa: $5c
    ld [hl], e                                    ; $58ab: $73
    ld sp, $1f3f                                  ; $58ac: $31 $3f $1f
    ld c, $c0                                     ; $58af: $0e $c0
    add b                                         ; $58b1: $80
    inc bc                                        ; $58b2: $03
    ld hl, sp-$65                                 ; $58b3: $f8 $9b
    add sp, -$04                                  ; $58b5: $e8 $fc
    db $f4                                        ; $58b7: $f4
    db $fc                                        ; $58b8: $fc
    db $f4                                        ; $58b9: $f4
    inc a                                         ; $58ba: $3c
    db $e4                                        ; $58bb: $e4
    db $f4                                        ; $58bc: $f4
    inc c                                         ; $58bd: $0c
    add sp, $18                                   ; $58be: $e8 $18
    sub b                                         ; $58c0: $90
    ld [hl], b                                    ; $58c1: $70
    ld l, b                                       ; $58c2: $68
    ld hl, sp+$0c                                 ; $58c3: $f8 $0c
    db $f4                                        ; $58c5: $f4
    ld a, [hl]                                    ; $58c6: $7e
    ldh a, [c]                                    ; $58c7: $f2
    adc a                                         ; $58c8: $8f
    adc c                                         ; $58c9: $89
    rst RST_00                                    ; $58ca: $c7
    add a                                         ; $58cb: $87
    ret nz                                        ; $58cc: $c0

    ld b, b                                       ; $58cd: $40
    ret nz                                        ; $58ce: $c0

    ret nz                                        ; $58cf: $c0

    nop                                           ; $58d0: $00
    sbc h                                         ; $58d1: $9c
    rlca                                          ; $58d2: $07
    rlca                                          ; $58d3: $07
    dec c                                         ; $58d4: $0d
    dec bc                                        ; $58d5: $0b
    rrca                                          ; $58d6: $0f
    rrca                                          ; $58d7: $0f
    dec c                                         ; $58d8: $0d
    rrca                                          ; $58d9: $0f
    ccf                                           ; $58da: $3f
    dec a                                         ; $58db: $3d
    ccf                                           ; $58dc: $3f
    dec l                                         ; $58dd: $2d
    ccf                                           ; $58de: $3f
    ld [hl], $17                                  ; $58df: $36 $17
    dec de                                        ; $58e1: $1b
    dec bc                                        ; $58e2: $0b
    inc c                                         ; $58e3: $0c
    dec b                                         ; $58e4: $05
    ld b, $0f                                     ; $58e5: $06 $0f
    rrca                                          ; $58e7: $0f
    dec e                                         ; $58e8: $1d
    dec de                                        ; $58e9: $1b
    ld a, $26                                     ; $58ea: $3e $26
    jr c, jr_005_5926                             ; $58ec: $38 $38

    inc b                                         ; $58ee: $04
    nop                                           ; $58ef: $00
    add e                                         ; $58f0: $83
    ldh [$fff0], a                                ; $58f1: $e0 $f0
    ld [hl], b                                    ; $58f3: $70
    inc bc                                        ; $58f4: $03
    ld hl, sp-$6a                                 ; $58f5: $f8 $96
    ld e, [hl]                                    ; $58f7: $5e
    cp $ff                                        ; $58f8: $fe $ff
    ld e, l                                       ; $58fa: $5d
    rst RST_38                                    ; $58fb: $ff
    ld e, e                                       ; $58fc: $5b
    rst RST_38                                    ; $58fd: $ff

jr_005_58fe:
    scf                                           ; $58fe: $37
    push af                                       ; $58ff: $f5
    db $ed                                        ; $5900: $ed
    jp hl                                         ; $5901: $e9


    add hl, de                                    ; $5902: $19
    pop de                                        ; $5903: $d1
    jr nc, jr_005_58fe                            ; $5904: $30 $f8

    ld hl, sp-$14                                 ; $5906: $f8 $ec
    call c, $323e                                 ; $5908: $dc $3e $32
    ld c, $0e                                     ; $590b: $0e $0e
    inc b                                         ; $590d: $04
    nop                                           ; $590e: $00
    add h                                         ; $590f: $84
    rlca                                          ; $5910: $07
    rlca                                          ; $5911: $07
    rrca                                          ; $5912: $0f
    rrca                                          ; $5913: $0f
    inc bc                                        ; $5914: $03
    rra                                           ; $5915: $1f
    sub l                                         ; $5916: $95
    inc e                                         ; $5917: $1c
    rra                                           ; $5918: $1f
    dec e                                         ; $5919: $1d
    rra                                           ; $591a: $1f
    rrca                                          ; $591b: $0f
    rrca                                          ; $591c: $0f
    rlca                                          ; $591d: $07
    inc bc                                        ; $591e: $03
    ld bc, $4141                                  ; $591f: $01 $41 $41
    ld h, e                                       ; $5922: $63
    ld h, d                                       ; $5923: $62
    inc sp                                        ; $5924: $33
    ld [hl-], a                                   ; $5925: $32

jr_005_5926:
    rra                                           ; $5926: $1f
    dec e                                         ; $5927: $1d
    ld c, $0e                                     ; $5928: $0e $0e
    ld [$0408], sp                                ; $592a: $08 $08 $04
    nop                                           ; $592d: $00
    and b                                         ; $592e: $a0
    ret nz                                        ; $592f: $c0

    add b                                         ; $5930: $80
    ldh [$ffc0], a                                ; $5931: $e0 $c0
    ldh [$ffe0], a                                ; $5933: $e0 $e0
    ldh a, [$fff0]                                ; $5935: $f0 $f0
    ld hl, sp-$18                                 ; $5937: $f8 $e8
    add sp, -$08                                  ; $5939: $e8 $f8
    cp h                                          ; $593b: $bc
    db $fc                                        ; $593c: $fc
    sbc $3c                                       ; $593d: $de $3c
    cp $1e                                        ; $593f: $fe $1e
    ld l, [hl]                                    ; $5941: $6e
    cp $ea                                        ; $5942: $fe $ea
    sbc d                                         ; $5944: $9a
    ld a, [$b8f8]                                 ; $5945: $fa $f8 $b8
    add sp, -$08                                  ; $5948: $e8 $f8
    xor b                                         ; $594a: $a8
    db $fc                                        ; $594b: $fc
    or h                                          ; $594c: $b4
    call z, Call_000_00cc                         ; $594d: $cc $cc $00
    add d                                         ; $5950: $82
    nop                                           ; $5951: $00
    nop                                           ; $5952: $00
    add b                                         ; $5953: $80
    add e                                         ; $5954: $83
    ld b, $7f                                     ; $5955: $06 $7f
    inc bc                                        ; $5957: $03
    inc bc                                        ; $5958: $03
    inc bc                                        ; $5959: $03
    inc bc                                        ; $595a: $03
    ld a, a                                       ; $595b: $7f
    inc b                                         ; $595c: $04
    nop                                           ; $595d: $00
    inc b                                         ; $595e: $04
    ld l, h                                       ; $595f: $6c
    add h                                         ; $5960: $84
    nop                                           ; $5961: $00
    nop                                           ; $5962: $00
    ld a, [hl]                                    ; $5963: $7e
    ld a, [hl]                                    ; $5964: $7e
    ld [$0600], sp                                ; $5965: $08 $00 $06
    ld l, h                                       ; $5968: $6c
    add [hl]                                      ; $5969: $86
    ld l, l                                       ; $596a: $6d
    ld l, l                                       ; $596b: $6d
    ld l, a                                       ; $596c: $6f
    ld l, a                                       ; $596d: $6f
    ld l, [hl]                                    ; $596e: $6e
    ld l, [hl]                                    ; $596f: $6e
    inc b                                         ; $5970: $04
    nop                                           ; $5971: $00
    inc b                                         ; $5972: $04
    ld h, e                                       ; $5973: $63
    add b                                         ; $5974: $80
    add e                                         ; $5975: $83
    inc b                                         ; $5976: $04
    ld a, b                                       ; $5977: $78
    ld l, h                                       ; $5978: $6c
    ld h, h                                       ; $5979: $64
    ld h, b                                       ; $597a: $60
    inc b                                         ; $597b: $04
    nop                                           ; $597c: $00
    inc b                                         ; $597d: $04
    ld h, b                                       ; $597e: $60
    ld a, [bc]                                    ; $597f: $0a
    nop                                           ; $5980: $00
    nop                                           ; $5981: $00
    add d                                         ; $5982: $82
    nop                                           ; $5983: $00
    nop                                           ; $5984: $00
    add b                                         ; $5985: $80
    add e                                         ; $5986: $83
    ld b, $06                                     ; $5987: $06 $06
    ld a, a                                       ; $5989: $7f
    ld c, $1e                                     ; $598a: $0e $1e
    ld [hl], $66                                  ; $598c: $36 $66
    ld a, [bc]                                    ; $598e: $0a
    nop                                           ; $598f: $00
    add d                                         ; $5990: $82
    ld a, [hl]                                    ; $5991: $7e
    ld a, [hl]                                    ; $5992: $7e
    ld [$8200], sp                                ; $5993: $08 $00 $82
    ld a, a                                       ; $5996: $7f
    ld a, a                                       ; $5997: $7f
    dec b                                         ; $5998: $05
    inc bc                                        ; $5999: $03
    add l                                         ; $599a: $85
    ld [bc], a                                    ; $599b: $02
    inc b                                         ; $599c: $04
    ld b, $38                                     ; $599d: $06 $38
    inc a                                         ; $599f: $3c
    inc b                                         ; $59a0: $04
    nop                                           ; $59a1: $00
    inc b                                         ; $59a2: $04
    ld l, h                                       ; $59a3: $6c
    ld a, [de]                                    ; $59a4: $1a
    nop                                           ; $59a5: $00
    nop                                           ; $59a6: $00
    add h                                         ; $59a7: $84
    nop                                           ; $59a8: $00
    nop                                           ; $59a9: $00
    ld a, a                                       ; $59aa: $7f
    ld a, a                                       ; $59ab: $7f
    dec b                                         ; $59ac: $05
    inc bc                                        ; $59ad: $03
    add l                                         ; $59ae: $85
    ld [bc], a                                    ; $59af: $02
    inc b                                         ; $59b0: $04
    ld b, $38                                     ; $59b1: $06 $38
    inc a                                         ; $59b3: $3c
    ld [$8000], sp                                ; $59b4: $08 $00 $80
    add e                                         ; $59b7: $83
    inc b                                         ; $59b8: $04
    inc a                                         ; $59b9: $3c
    jr @+$1a                                      ; $59ba: $18 $18

    ld a, [hl]                                    ; $59bc: $7e
    inc b                                         ; $59bd: $04
    nop                                           ; $59be: $00
    add b                                         ; $59bf: $80
    add e                                         ; $59c0: $83
    ld b, $7f                                     ; $59c1: $06 $7f
    dec de                                        ; $59c3: $1b
    ld e, $18                                     ; $59c4: $1e $18
    jr jr_005_59f8                                ; $59c6: $18 $30

    inc b                                         ; $59c8: $04
    nop                                           ; $59c9: $00
    ld b, $63                                     ; $59ca: $06 $63
    add [hl]                                      ; $59cc: $86
    inc bc                                        ; $59cd: $03
    inc bc                                        ; $59ce: $03
    ld b, $06                                     ; $59cf: $06 $06
    inc a                                         ; $59d1: $3c
    inc a                                         ; $59d2: $3c
    ld [$8200], sp                                ; $59d3: $08 $00 $82
    ld a, [hl]                                    ; $59d6: $7e
    ld a, [hl]                                    ; $59d7: $7e
    ld [$0000], sp                                ; $59d8: $08 $00 $00
    add d                                         ; $59db: $82
    nop                                           ; $59dc: $00
    nop                                           ; $59dd: $00
    add b                                         ; $59de: $80
    add e                                         ; $59df: $83
    ld b, $7e                                     ; $59e0: $06 $7e
    jr nc, jr_005_5a62                            ; $59e2: $30 $7e

    jr nc, jr_005_5a16                            ; $59e4: $30 $30

    rra                                           ; $59e6: $1f
    inc b                                         ; $59e7: $04
    nop                                           ; $59e8: $00
    add d                                         ; $59e9: $82
    ld [hl], e                                    ; $59ea: $73
    ld [hl], e                                    ; $59eb: $73
    dec b                                         ; $59ec: $05
    inc bc                                        ; $59ed: $03
    add l                                         ; $59ee: $85
    ld [bc], a                                    ; $59ef: $02
    inc b                                         ; $59f0: $04
    ld b, $78                                     ; $59f1: $06 $78
    ld a, h                                       ; $59f3: $7c
    inc b                                         ; $59f4: $04
    nop                                           ; $59f5: $00
    add b                                         ; $59f6: $80
    add e                                         ; $59f7: $83

jr_005_59f8:
    ld b, $7e                                     ; $59f8: $06 $7e
    ld b, $0e                                     ; $59fa: $06 $0e
    inc e                                         ; $59fc: $1c
    ld [hl], $63                                  ; $59fd: $36 $63
    inc b                                         ; $59ff: $04
    nop                                           ; $5a00: $00
    add b                                         ; $5a01: $80
    add e                                         ; $5a02: $83
    inc b                                         ; $5a03: $04
    ccf                                           ; $5a04: $3f
    ld [hl], e                                    ; $5a05: $73
    ld a, e                                       ; $5a06: $7b
    rrca                                          ; $5a07: $0f
    add h                                         ; $5a08: $84
    ld b, $07                                     ; $5a09: $06 $07
    inc a                                         ; $5a0b: $3c
    inc a                                         ; $5a0c: $3c
    ld a, [bc]                                    ; $5a0d: $0a
    nop                                           ; $5a0e: $00
    add d                                         ; $5a0f: $82
    ld a, [hl]                                    ; $5a10: $7e
    ld a, [hl]                                    ; $5a11: $7e
    ld b, $00                                     ; $5a12: $06 $00
    nop                                           ; $5a14: $00
    dec bc                                        ; $5a15: $0b

jr_005_5a16:
    nop                                           ; $5a16: $00
    add a                                         ; $5a17: $87
    ld bc, $0201                                  ; $5a18: $01 $01 $02
    ld bc, $0002                                  ; $5a1b: $01 $02 $00
    ld bc, $0003                                  ; $5a1e: $01 $03 $00
    add h                                         ; $5a21: $84
    db $10                                        ; $5a22: $10
    db $10                                        ; $5a23: $10
    jr z, @+$12                                   ; $5a24: $28 $10

    add b                                         ; $5a26: $80
    add c                                         ; $5a27: $81
    inc b                                         ; $5a28: $04
    jr z, jr_005_5a3c                             ; $5a29: $28 $11

    ld bc, $0c11                                  ; $5a2b: $01 $11 $0c
    nop                                           ; $5a2e: $00
    add e                                         ; $5a2f: $83
    add b                                         ; $5a30: $80
    nop                                           ; $5a31: $00
    add b                                         ; $5a32: $80
    inc bc                                        ; $5a33: $03
    nop                                           ; $5a34: $00
    call $0808                                    ; $5a35: $cd $08 $08
    inc d                                         ; $5a38: $14
    ld [$0014], sp                                ; $5a39: $08 $14 $00

jr_005_5a3c:
    adc b                                         ; $5a3c: $88
    add b                                         ; $5a3d: $80
    ld b, b                                       ; $5a3e: $40
    add b                                         ; $5a3f: $80
    ld b, b                                       ; $5a40: $40

jr_005_5a41:
    add b                                         ; $5a41: $80
    ld c, h                                       ; $5a42: $4c
    ld de, $112a                                  ; $5a43: $11 $2a $11
    ld a, [hl+]                                   ; $5a46: $2a
    add hl, de                                    ; $5a47: $19
    ld h, $09                                     ; $5a48: $26 $09
    sub $4d                                       ; $5a4a: $d6 $4d
    or d                                          ; $5a4c: $b2
    cpl                                           ; $5a4d: $2f
    ld d, b                                       ; $5a4e: $50
    scf                                           ; $5a4f: $37
    ld c, b                                       ; $5a50: $48
    ld e, $21                                     ; $5a51: $1e $21
    ld d, $e9                                     ; $5a53: $16 $e9
    ld e, d                                       ; $5a55: $5a
    and l                                         ; $5a56: $a5
    ld l, b                                       ; $5a57: $68
    sub a                                         ; $5a58: $97
    jr c, jr_005_5aa2                             ; $5a59: $38 $47

    inc e                                         ; $5a5b: $1c
    inc hl                                        ; $5a5c: $23
    ld c, $11                                     ; $5a5d: $0e $11
    inc bc                                        ; $5a5f: $03
    inc c                                         ; $5a60: $0c
    nop                                           ; $5a61: $00

jr_005_5a62:
    inc bc                                        ; $5a62: $03
    adc b                                         ; $5a63: $88
    ld d, h                                       ; $5a64: $54
    ld [$1094], sp                                ; $5a65: $08 $94 $10
    xor b                                         ; $5a68: $a8
    sub b                                         ; $5a69: $90
    ld l, b                                       ; $5a6a: $68
    or b                                          ; $5a6b: $b0
    ld c, e                                       ; $5a6c: $4b
    ldh [c], a                                    ; $5a6d: $e2
    dec e                                         ; $5a6e: $1d
    ld [hl], h                                    ; $5a6f: $74
    adc d                                         ; $5a70: $8a
    db $fc                                        ; $5a71: $fc
    ld [bc], a                                    ; $5a72: $02
    ret c                                         ; $5a73: $d8

    inc h                                         ; $5a74: $24
    jr @-$17                                      ; $5a75: $18 $e7

    ld [de], a                                    ; $5a77: $12
    db $ed                                        ; $5a78: $ed
    inc e                                         ; $5a79: $1c
    ldh [c], a                                    ; $5a7a: $e2
    jr c, jr_005_5a41                             ; $5a7b: $38 $c4

    ld [hl], b                                    ; $5a7d: $70
    adc b                                         ; $5a7e: $88
    ret nz                                        ; $5a7f: $c0

    jr nc, jr_005_5a82                            ; $5a80: $30 $00

jr_005_5a82:
    ret nz                                        ; $5a82: $c0

    nop                                           ; $5a83: $00
    inc bc                                        ; $5a84: $03
    nop                                           ; $5a85: $00
    cp l                                          ; $5a86: $bd
    rra                                           ; $5a87: $1f
    dec c                                         ; $5a88: $0d
    ld [hl], d                                    ; $5a89: $72
    dec a                                         ; $5a8a: $3d
    ld b, d                                       ; $5a8b: $42
    ccf                                           ; $5a8c: $3f
    ret nz                                        ; $5a8d: $c0

    ld [hl], a                                    ; $5a8e: $77
    adc h                                         ; $5a8f: $8c
    ld l, a                                       ; $5a90: $6f
    sbc h                                         ; $5a91: $9c
    ld l, a                                       ; $5a92: $6f
    sbc b                                         ; $5a93: $98
    ld l, a                                       ; $5a94: $6f
    sbc b                                         ; $5a95: $98
    ld [hl], a                                    ; $5a96: $77
    adc b                                         ; $5a97: $88
    ccf                                           ; $5a98: $3f
    ld b, b                                       ; $5a99: $40
    rla                                           ; $5a9a: $17
    inc l                                         ; $5a9b: $2c
    inc de                                        ; $5a9c: $13
    cpl                                           ; $5a9d: $2f
    ld [$0637], sp                                ; $5a9e: $08 $37 $06
    add hl, de                                    ; $5aa1: $19

jr_005_5aa2:
    nop                                           ; $5aa2: $00
    ld c, $00                                     ; $5aa3: $0e $00

jr_005_5aa5:
    ld hl, sp+$70                                 ; $5aa5: $f8 $70
    adc h                                         ; $5aa7: $8c
    ld hl, sp+$06                                 ; $5aa8: $f8 $06
    adc h                                         ; $5aaa: $8c
    ld [hl], e                                    ; $5aab: $73
    jr c, @+$01                                   ; $5aac: $38 $ff

    inc l                                         ; $5aae: $2c
    rst RST_18                                    ; $5aaf: $df
    ld [hl], h                                    ; $5ab0: $74
    adc a                                         ; $5ab1: $8f
    db $fc                                        ; $5ab2: $fc
    ld b, $d8                                     ; $5ab3: $06 $d8
    ld h, $e8                                     ; $5ab5: $26 $e8
    scf                                           ; $5ab7: $37
    xor $35                                       ; $5ab8: $ee $35
    adc $7d                                       ; $5aba: $ce $7d
    sbc b                                         ; $5abc: $98
    rst RST_38                                    ; $5abd: $ff
    nop                                           ; $5abe: $00
    cp $f0                                        ; $5abf: $fe $f0
    call z, Call_005_7870                         ; $5ac1: $cc $70 $78
    rlca                                          ; $5ac4: $07
    nop                                           ; $5ac5: $00
    sub a                                         ; $5ac6: $97
    inc bc                                        ; $5ac7: $03
    inc bc                                        ; $5ac8: $03
    inc b                                         ; $5ac9: $04
    inc bc                                        ; $5aca: $03
    inc c                                         ; $5acb: $0c
    dec c                                         ; $5acc: $0d
    ld [de], a                                    ; $5acd: $12
    dec de                                        ; $5ace: $1b
    ld h, $1b                                     ; $5acf: $26 $1b
    inc h                                         ; $5ad1: $24
    rra                                           ; $5ad2: $1f
    jr nz, jr_005_5ada                            ; $5ad3: $20 $05

    ld a, [de]                                    ; $5ad5: $1a
    dec b                                         ; $5ad6: $05
    dec bc                                        ; $5ad7: $0b
    ld b, $09                                     ; $5ad8: $06 $09

jr_005_5ada:
    inc bc                                        ; $5ada: $03
    inc b                                         ; $5adb: $04
    nop                                           ; $5adc: $00
    inc bc                                        ; $5add: $03
    add hl, bc                                    ; $5ade: $09
    nop                                           ; $5adf: $00
    sbc c                                         ; $5ae0: $99
    ret nz                                        ; $5ae1: $c0

    ret nz                                        ; $5ae2: $c0

    jr nz, jr_005_5aa5                            ; $5ae3: $20 $c0

    jr nc, jr_005_5b57                            ; $5ae5: $30 $70

    adc b                                         ; $5ae7: $88
    ret c                                         ; $5ae8: $d8

    inc h                                         ; $5ae9: $24
    add sp, $34                                   ; $5aea: $e8 $34
    xor b                                         ; $5aec: $a8
    ld [hl], h                                    ; $5aed: $74
    ret c                                         ; $5aee: $d8

    ld h, h                                       ; $5aef: $64
    ldh a, [$ff08]                                ; $5af0: $f0 $08
    add b                                         ; $5af2: $80
    ld [hl], b                                    ; $5af3: $70
    add b                                         ; $5af4: $80
    ld b, b                                       ; $5af5: $40
    nop                                           ; $5af6: $00
    add b                                         ; $5af7: $80
    nop                                           ; $5af8: $00
    nop                                           ; $5af9: $00
    nop                                           ; $5afa: $00
    adc [hl]                                      ; $5afb: $8e
    ld l, [hl]                                    ; $5afc: $6e
    ld l, [hl]                                    ; $5afd: $6e
    rst RST_38                                    ; $5afe: $ff
    ei                                            ; $5aff: $fb
    rst RST_38                                    ; $5b00: $ff
    db $db                                        ; $5b01: $db
    ld a, a                                       ; $5b02: $7f
    ld l, l                                       ; $5b03: $6d
    rst RST_38                                    ; $5b04: $ff
    push af                                       ; $5b05: $f5
    rst RST_38                                    ; $5b06: $ff
    sbc a                                         ; $5b07: $9f
    rst RST_38                                    ; $5b08: $ff
    rst RST_20                                    ; $5b09: $e7
    inc b                                         ; $5b0a: $04
    ld a, a                                       ; $5b0b: $7f
    adc [hl]                                      ; $5b0c: $8e
    rst RST_38                                    ; $5b0d: $ff
    rst RST_20                                    ; $5b0e: $e7
    rst RST_38                                    ; $5b0f: $ff
    sbc a                                         ; $5b10: $9f
    rst RST_38                                    ; $5b11: $ff
    push af                                       ; $5b12: $f5
    ld a, a                                       ; $5b13: $7f
    ld l, l                                       ; $5b14: $6d
    rst RST_38                                    ; $5b15: $ff
    db $db                                        ; $5b16: $db
    rst RST_38                                    ; $5b17: $ff
    ei                                            ; $5b18: $fb
    ld l, [hl]                                    ; $5b19: $6e
    ld l, [hl]                                    ; $5b1a: $6e
    ld b, $00                                     ; $5b1b: $06 $00
    adc b                                         ; $5b1d: $88
    dec c                                         ; $5b1e: $0d
    dec c                                         ; $5b1f: $0d
    rra                                           ; $5b20: $1f
    ld e, $1f                                     ; $5b21: $1e $1f
    dec de                                        ; $5b23: $1b
    rrca                                          ; $5b24: $0f
    dec c                                         ; $5b25: $0d
    inc bc                                        ; $5b26: $03
    rra                                           ; $5b27: $1f
    adc c                                         ; $5b28: $89
    rla                                           ; $5b29: $17
    rrca                                          ; $5b2a: $0f
    dec c                                         ; $5b2b: $0d
    rra                                           ; $5b2c: $1f
    dec de                                        ; $5b2d: $1b
    rra                                           ; $5b2e: $1f
    rra                                           ; $5b2f: $1f
    dec c                                         ; $5b30: $0d
    dec c                                         ; $5b31: $0d
    stop                                          ; $5b32: $10 $00
    adc h                                         ; $5b34: $8c
    ld [bc], a                                    ; $5b35: $02
    ld [bc], a                                    ; $5b36: $02
    rlca                                          ; $5b37: $07
    dec b                                         ; $5b38: $05
    inc bc                                        ; $5b39: $03
    ld [bc], a                                    ; $5b3a: $02
    inc bc                                        ; $5b3b: $03
    ld [bc], a                                    ; $5b3c: $02
    rlca                                          ; $5b3d: $07
    dec b                                         ; $5b3e: $05
    ld [bc], a                                    ; $5b3f: $02
    ld [bc], a                                    ; $5b40: $02
    jr jr_005_5b43                                ; $5b41: $18 $00

jr_005_5b43:
    inc b                                         ; $5b43: $04
    ld bc, $000e                                  ; $5b44: $01 $0e $00
    nop                                           ; $5b47: $00
    add hl, bc                                    ; $5b48: $09
    nop                                           ; $5b49: $00
    sub a                                         ; $5b4a: $97
    jr nc, jr_005_5b5d                            ; $5b4b: $30 $10

    jr z, jr_005_5b57                             ; $5b4d: $28 $08

    inc d                                         ; $5b4f: $14
    ld [$0414], sp                                ; $5b50: $08 $14 $04
    ld a, [bc]                                    ; $5b53: $0a
    inc b                                         ; $5b54: $04
    ld a, [bc]                                    ; $5b55: $0a
    inc b                                         ; $5b56: $04

jr_005_5b57:
    ld a, [bc]                                    ; $5b57: $0a
    ld b, $09                                     ; $5b58: $06 $09
    ld [bc], a                                    ; $5b5a: $02
    ld b, l                                       ; $5b5b: $45
    ld b, d                                       ; $5b5c: $42

jr_005_5b5d:
    and l                                         ; $5b5d: $a5
    ld b, e                                       ; $5b5e: $43
    and h                                         ; $5b5f: $a4
    inc bc                                        ; $5b60: $03
    ld b, h                                       ; $5b61: $44
    dec d                                         ; $5b62: $15
    nop                                           ; $5b63: $00
    sub b                                         ; $5b64: $90
    jr jr_005_5b77                                ; $5b65: $18 $10

    jr z, jr_005_5b89                             ; $5b67: $28 $20

    ld d, b                                       ; $5b69: $50
    jr nz, jr_005_5bbc                            ; $5b6a: $20 $50

    ld b, b                                       ; $5b6c: $40
    and b                                         ; $5b6d: $a0
    ld b, b                                       ; $5b6e: $40
    and b                                         ; $5b6f: $a0
    nop                                           ; $5b70: $00
    ld b, $02                                     ; $5b71: $06 $02
    dec b                                         ; $5b73: $05
    ld bc, $8180                                  ; $5b74: $01 $80 $81

jr_005_5b77:
    inc b                                         ; $5b77: $04
    ld [bc], a                                    ; $5b78: $02
    ld bc, $0101                                  ; $5b79: $01 $01 $01
    and e                                         ; $5b7c: $a3
    jr @+$0a                                      ; $5b7d: $18 $08

    inc d                                         ; $5b7f: $14
    ld [$0014], sp                                ; $5b80: $08 $14 $00
    inc c                                         ; $5b83: $0c
    nop                                           ; $5b84: $00
    ld bc, $c100                                  ; $5b85: $01 $00 $c1
    ld b, b                                       ; $5b88: $40

jr_005_5b89:
    and c                                         ; $5b89: $a1
    jr nz, @+$53                                  ; $5b8a: $20 $51

    ld hl, $1152                                  ; $5b8c: $21 $52 $11
    ld a, [hl+]                                   ; $5b8f: $2a
    inc bc                                        ; $5b90: $03
    inc b                                         ; $5b91: $04
    inc bc                                        ; $5b92: $03
    inc b                                         ; $5b93: $04
    inc bc                                        ; $5b94: $03
    add h                                         ; $5b95: $84
    add e                                         ; $5b96: $83
    ld b, h                                       ; $5b97: $44
    add e                                         ; $5b98: $83
    ld b, h                                       ; $5b99: $44
    rst RST_00                                    ; $5b9a: $c7
    jr z, @+$49                                   ; $5b9b: $28 $47

    xor b                                         ; $5b9d: $a8
    ld b, a                                       ; $5b9e: $47
    xor b                                         ; $5b9f: $a8
    add b                                         ; $5ba0: $80
    add [hl]                                      ; $5ba1: $86
    ld [$929a], sp                                ; $5ba2: $08 $9a $92
    ld [de], a                                    ; $5ba5: $12
    ld [de], a                                    ; $5ba6: $12
    ld d, $06                                     ; $5ba7: $16 $06
    ld b, [hl]                                    ; $5ba9: $46
    ld b, a                                       ; $5baa: $47
    sub b                                         ; $5bab: $90
    ld b, b                                       ; $5bac: $40
    and b                                         ; $5bad: $a0
    ld b, b                                       ; $5bae: $40
    and b                                         ; $5baf: $a0
    ret nz                                        ; $5bb0: $c0

    ld hl, $22c1                                  ; $5bb1: $21 $c1 $22
    pop bc                                        ; $5bb4: $c1
    ld [hl+], a                                   ; $5bb5: $22
    db $e3                                        ; $5bb6: $e3
    inc d                                         ; $5bb7: $14
    ldh [c], a                                    ; $5bb8: $e2
    dec d                                         ; $5bb9: $15
    ldh [c], a                                    ; $5bba: $e2
    dec d                                         ; $5bbb: $15

jr_005_5bbc:
    add b                                         ; $5bbc: $80
    add [hl]                                      ; $5bbd: $86
    ld [$4959], sp                                ; $5bbe: $08 $59 $49
    ld c, b                                       ; $5bc1: $48
    ld c, b                                       ; $5bc2: $48
    ld l, b                                       ; $5bc3: $68
    ld h, b                                       ; $5bc4: $60
    ld h, d                                       ; $5bc5: $62
    ldh [c], a                                    ; $5bc6: $e2
    sbc h                                         ; $5bc7: $9c
    ld de, $192a                                  ; $5bc8: $11 $2a $19
    ld h, $09                                     ; $5bcb: $26 $09
    ld d, $0c                                     ; $5bcd: $16 $0c
    inc de                                        ; $5bcf: $13
    ld c, $11                                     ; $5bd0: $0e $11
    rlca                                          ; $5bd2: $07
    ld [$0807], sp                                ; $5bd3: $08 $07 $08
    inc bc                                        ; $5bd6: $03
    inc b                                         ; $5bd7: $04
    ld bc, $0002                                  ; $5bd8: $01 $02 $00
    ccf                                           ; $5bdb: $3f
    ld e, $21                                     ; $5bdc: $1e $21
    inc bc                                        ; $5bde: $03
    inc e                                         ; $5bdf: $1c
    ld bc, $0002                                  ; $5be0: $01 $02 $00
    ld bc, $0004                                  ; $5be3: $01 $04 $00
    add b                                         ; $5be6: $80
    add [hl]                                      ; $5be7: $86
    ld c, $47                                     ; $5be8: $0e $47
    ld h, a                                       ; $5bea: $67
    ld h, e                                       ; $5beb: $63
    inc sp                                        ; $5bec: $33
    ccf                                           ; $5bed: $3f
    sbc a                                         ; $5bee: $9f
    rra                                           ; $5bef: $1f
    adc a                                         ; $5bf0: $8f
    ld l, a                                       ; $5bf1: $6f
    ccf                                           ; $5bf2: $3f
    sbc a                                         ; $5bf3: $9f
    rrca                                          ; $5bf4: $0f
    ccf                                           ; $5bf5: $3f
    add e                                         ; $5bf6: $83
    add h                                         ; $5bf7: $84
    rlca                                          ; $5bf8: $07
    ld a, b                                       ; $5bf9: $78
    nop                                           ; $5bfa: $00
    rlca                                          ; $5bfb: $07
    nop                                           ; $5bfc: $00
    rst RST_38                                    ; $5bfd: $ff
    rrca                                          ; $5bfe: $0f
    rrca                                          ; $5bff: $0f
    ccf                                           ; $5c00: $3f
    jr nc, jr_005_5c82                            ; $5c01: $30 $7f

    ld b, e                                       ; $5c03: $43
    ld a, a                                       ; $5c04: $7f
    ld d, h                                       ; $5c05: $54
    rst RST_28                                    ; $5c06: $ef
    cp h                                          ; $5c07: $bc
    rst RST_28                                    ; $5c08: $ef
    cp h                                          ; $5c09: $bc
    rst RST_30                                    ; $5c0a: $f7
    sbc h                                         ; $5c0b: $9c
    rst RST_38                                    ; $5c0c: $ff
    adc [hl]                                      ; $5c0d: $8e
    rst RST_38                                    ; $5c0e: $ff
    add c                                         ; $5c0f: $81
    rst RST_38                                    ; $5c10: $ff
    add c                                         ; $5c11: $81
    ld a, a                                       ; $5c12: $7f
    ld b, d                                       ; $5c13: $42
    ld a, a                                       ; $5c14: $7f
    ld b, e                                       ; $5c15: $43
    ccf                                           ; $5c16: $3f
    jr nc, jr_005_5c28                            ; $5c17: $30 $0f

    ld c, $03                                     ; $5c19: $0e $03
    ld [bc], a                                    ; $5c1b: $02
    inc bc                                        ; $5c1c: $03
    inc bc                                        ; $5c1d: $03
    ldh a, [$fff0]                                ; $5c1e: $f0 $f0
    db $fc                                        ; $5c20: $fc
    inc c                                         ; $5c21: $0c
    cp $e2                                        ; $5c22: $fe $e2
    sbc $32                                       ; $5c24: $de $32
    rra                                           ; $5c26: $1f
    pop af                                        ; $5c27: $f1

jr_005_5c28:
    rra                                           ; $5c28: $1f
    pop af                                        ; $5c29: $f1
    rra                                           ; $5c2a: $1f
    pop af                                        ; $5c2b: $f1
    cp a                                          ; $5c2c: $bf
    ld h, c                                       ; $5c2d: $61
    rst RST_38                                    ; $5c2e: $ff
    ld b, c                                       ; $5c2f: $41
    rst RST_38                                    ; $5c30: $ff
    ld [hl], c                                    ; $5c31: $71
    ld a, $e2                                     ; $5c32: $3e $e2
    cp $e2                                        ; $5c34: $fe $e2
    db $fc                                        ; $5c36: $fc
    inc c                                         ; $5c37: $0c
    ldh a, [rSVBK]                                ; $5c38: $f0 $70
    ret nz                                        ; $5c3a: $c0

    ld b, b                                       ; $5c3b: $40
    ret nz                                        ; $5c3c: $c0

    ret nz                                        ; $5c3d: $c0

    rrca                                          ; $5c3e: $0f
    rrca                                          ; $5c3f: $0f
    ccf                                           ; $5c40: $3f
    jr nc, jr_005_5cc2                            ; $5c41: $30 $7f

    ld b, b                                       ; $5c43: $40
    ld a, a                                       ; $5c44: $7f
    ld e, h                                       ; $5c45: $5c
    rst RST_38                                    ; $5c46: $ff
    sub d                                         ; $5c47: $92
    di                                            ; $5c48: $f3
    sbc l                                         ; $5c49: $9d
    ld sp, hl                                     ; $5c4a: $f9
    adc [hl]                                      ; $5c4b: $8e
    db $fc                                        ; $5c4c: $fc
    add a                                         ; $5c4d: $87
    cp $83                                        ; $5c4e: $fe $83
    rst RST_38                                    ; $5c50: $ff
    add c                                         ; $5c51: $81
    ld a, l                                       ; $5c52: $7d
    ld b, e                                       ; $5c53: $43
    ld a, [hl]                                    ; $5c54: $7e
    ld b, e                                       ; $5c55: $43
    ccf                                           ; $5c56: $3f
    jr nc, @+$11                                  ; $5c57: $30 $0f

    ld c, $03                                     ; $5c59: $0e $03
    ld [bc], a                                    ; $5c5b: $02
    inc bc                                        ; $5c5c: $03
    inc bc                                        ; $5c5d: $03
    ldh a, [$fff0]                                ; $5c5e: $f0 $f0
    db $fc                                        ; $5c60: $fc
    inc c                                         ; $5c61: $0c
    cp $02                                        ; $5c62: $fe $02
    cp $02                                        ; $5c64: $fe $02
    rst RST_38                                    ; $5c66: $ff
    ld bc, $01ff                                  ; $5c67: $01 $ff $01
    rst RST_18                                    ; $5c6a: $df
    or c                                          ; $5c6b: $b1
    rst RST_28                                    ; $5c6c: $ef
    ld [hl], c                                    ; $5c6d: $71
    rst RST_38                                    ; $5c6e: $ff
    pop hl                                        ; $5c6f: $e1
    cp a                                          ; $5c70: $bf
    pop hl                                        ; $5c71: $e1
    sbc $f2                                       ; $5c72: $de $f2
    cp $32                                        ; $5c74: $fe $32
    db $fc                                        ; $5c76: $fc
    inc c                                         ; $5c77: $0c
    ldh a, [rSVBK]                                ; $5c78: $f0 $70
    ret nz                                        ; $5c7a: $c0

    ld b, b                                       ; $5c7b: $40
    ret nz                                        ; $5c7c: $c0

    pop bc                                        ; $5c7d: $c1
    ret nz                                        ; $5c7e: $c0

    rrca                                          ; $5c7f: $0f
    rrca                                          ; $5c80: $0f
    ccf                                           ; $5c81: $3f

jr_005_5c82:
    jr nc, @+$81                                  ; $5c82: $30 $7f

    ld b, b                                       ; $5c84: $40
    ld a, a                                       ; $5c85: $7f
    ld c, a                                       ; $5c86: $4f
    rst RST_30                                    ; $5c87: $f7
    sbc b                                         ; $5c88: $98
    rst RST_30                                    ; $5c89: $f7
    sbc e                                         ; $5c8a: $9b
    db $f4                                        ; $5c8b: $f4
    sbc e                                         ; $5c8c: $9b
    db $f4                                        ; $5c8d: $f4
    sbc e                                         ; $5c8e: $9b
    ldh a, [$ff9f]                                ; $5c8f: $f0 $9f
    add sp, -$61                                  ; $5c91: $e8 $9f
    halt                                          ; $5c93: $76
    ld c, a                                       ; $5c94: $4f
    ld a, l                                       ; $5c95: $7d
    ld b, e                                       ; $5c96: $43
    ccf                                           ; $5c97: $3f
    jr nc, jr_005_5ca9                            ; $5c98: $30 $0f

    ld c, $03                                     ; $5c9a: $0e $03
    ld [bc], a                                    ; $5c9c: $02
    inc bc                                        ; $5c9d: $03
    inc bc                                        ; $5c9e: $03
    ldh a, [$fff0]                                ; $5c9f: $f0 $f0
    db $fc                                        ; $5ca1: $fc
    inc c                                         ; $5ca2: $0c
    cp $02                                        ; $5ca3: $fe $02
    cp $f2                                        ; $5ca5: $fe $f2
    rrca                                          ; $5ca7: $0f
    ld sp, hl                                     ; $5ca8: $f9

jr_005_5ca9:
    rst RST_08                                    ; $5ca9: $cf
    ld sp, hl                                     ; $5caa: $f9
    rrca                                          ; $5cab: $0f
    ld sp, hl                                     ; $5cac: $f9
    cpl                                           ; $5cad: $2f
    ld sp, hl                                     ; $5cae: $f9
    xor a                                         ; $5caf: $af
    ld sp, hl                                     ; $5cb0: $f9
    or a                                          ; $5cb1: $b7
    ld sp, hl                                     ; $5cb2: $f9
    xor $f2                                       ; $5cb3: $ee $f2
    cp [hl]                                       ; $5cb5: $be
    jp nz, $0cfc                                  ; $5cb6: $c2 $fc $0c

    ldh a, [rSVBK]                                ; $5cb9: $f0 $70
    ret nz                                        ; $5cbb: $c0

    ld b, b                                       ; $5cbc: $40
    ret nz                                        ; $5cbd: $c0

    ret nz                                        ; $5cbe: $c0

    nop                                           ; $5cbf: $00
    ret z                                         ; $5cc0: $c8

    ld e, h                                       ; $5cc1: $5c

jr_005_5cc2:
    push de                                       ; $5cc2: $d5
    ld e, h                                       ; $5cc3: $5c
    ldh [c], a                                    ; $5cc4: $e2
    ld e, h                                       ; $5cc5: $5c
    jp hl                                         ; $5cc6: $e9


    ld e, h                                       ; $5cc7: $5c
    inc bc                                        ; $5cc8: $03
    ldh a, [$ff5c]                                ; $5cc9: $f0 $5c
    add b                                         ; $5ccb: $80
    nop                                           ; $5ccc: $00
    db $10                                        ; $5ccd: $10
    inc bc                                        ; $5cce: $03
    ldh a, [$ff5e]                                ; $5ccf: $f0 $5e
    and h                                         ; $5cd1: $a4
    nop                                           ; $5cd2: $00
    inc b                                         ; $5cd3: $04
    nop                                           ; $5cd4: $00
    inc bc                                        ; $5cd5: $03
    ld [hl], b                                    ; $5cd6: $70
    ld e, a                                       ; $5cd7: $5f
    add b                                         ; $5cd8: $80
    nop                                           ; $5cd9: $00
    db $10                                        ; $5cda: $10
    inc bc                                        ; $5cdb: $03
    jr nc, jr_005_5d3d                            ; $5cdc: $30 $5f

    and h                                         ; $5cde: $a4
    nop                                           ; $5cdf: $00
    inc b                                         ; $5ce0: $04
    nop                                           ; $5ce1: $00
    inc bc                                        ; $5ce2: $03
    ldh a, [$ff5d]                                ; $5ce3: $f0 $5d
    or b                                          ; $5ce5: $b0
    nop                                           ; $5ce6: $00
    stop                                          ; $5ce7: $10 $00
    inc bc                                        ; $5ce9: $03
    ld [hl], b                                    ; $5cea: $70
    ld h, b                                       ; $5ceb: $60
    or b                                          ; $5cec: $b0
    nop                                           ; $5ced: $00
    stop                                          ; $5cee: $10 $00
    rlca                                          ; $5cf0: $07
    rlca                                          ; $5cf1: $07
    inc c                                         ; $5cf2: $0c
    dec bc                                        ; $5cf3: $0b
    add hl, bc                                    ; $5cf4: $09
    rrca                                          ; $5cf5: $0f
    dec bc                                        ; $5cf6: $0b
    rrca                                          ; $5cf7: $0f
    ccf                                           ; $5cf8: $3f
    dec e                                         ; $5cf9: $1d
    ld a, a                                       ; $5cfa: $7f
    ld l, $6f                                     ; $5cfb: $2e $6f
    ld e, a                                       ; $5cfd: $5f
    rst RST_00                                    ; $5cfe: $c7
    cp a                                          ; $5cff: $bf
    res 7, h                                      ; $5d00: $cb $bc
    cp $b9                                        ; $5d02: $fe $b9
    call z, Call_005_66bb                         ; $5d04: $cc $bb $66
    ld e, a                                       ; $5d07: $5f
    ld a, e                                       ; $5d08: $7b
    daa                                           ; $5d09: $27
    ccf                                           ; $5d0a: $3f
    rra                                           ; $5d0b: $1f
    inc b                                         ; $5d0c: $04
    ld c, $0e                                     ; $5d0d: $0e $0e
    rrca                                          ; $5d0f: $0f
    db $fc                                        ; $5d10: $fc
    db $fc                                        ; $5d11: $fc
    cp b                                          ; $5d12: $b8
    ld hl, sp-$04                                 ; $5d13: $f8 $fc
    db $fc                                        ; $5d15: $fc
    ld d, b                                       ; $5d16: $50
    ldh a, [$fff0]                                ; $5d17: $f0 $f0
    ld d, b                                       ; $5d19: $50
    ldh a, [$ff50]                                ; $5d1a: $f0 $50
    pop af                                        ; $5d1c: $f1
    ld de, $e3e3                                  ; $5d1d: $11 $e3 $e3
    push hl                                       ; $5d20: $e5
    ld b, a                                       ; $5d21: $47
    ld [$f4ae], a                                 ; $5d22: $ea $ae $f4
    call c, $e878                                 ; $5d25: $dc $78 $e8
    ld e, b                                       ; $5d28: $58
    db $fc                                        ; $5d29: $fc
    and b                                         ; $5d2a: $a0
    ldh [$ffe0], a                                ; $5d2b: $e0 $e0
    ld h, b                                       ; $5d2d: $60
    jr nc, jr_005_5da8                            ; $5d2e: $30 $78

    ccf                                           ; $5d30: $3f
    ccf                                           ; $5d31: $3f
    ld a, [de]                                    ; $5d32: $1a
    rla                                           ; $5d33: $17
    ccf                                           ; $5d34: $3f
    ccf                                           ; $5d35: $3f
    ld a, [bc]                                    ; $5d36: $0a
    rrca                                          ; $5d37: $0f
    rrca                                          ; $5d38: $0f
    ld a, [bc]                                    ; $5d39: $0a
    rrca                                          ; $5d3a: $0f
    ld a, [bc]                                    ; $5d3b: $0a
    adc a                                         ; $5d3c: $8f

jr_005_5d3d:
    adc b                                         ; $5d3d: $88
    rst RST_00                                    ; $5d3e: $c7
    rst RST_00                                    ; $5d3f: $c7
    and a                                         ; $5d40: $a7
    rst RST_20                                    ; $5d41: $e7
    ld d, a                                       ; $5d42: $57
    ld [hl], l                                    ; $5d43: $75
    cpl                                           ; $5d44: $2f
    dec a                                         ; $5d45: $3d
    ld e, $1d                                     ; $5d46: $1e $1d
    dec sp                                        ; $5d48: $3b
    dec sp                                        ; $5d49: $3b
    ld b, $07                                     ; $5d4a: $06 $07
    rlca                                          ; $5d4c: $07
    ld b, $0c                                     ; $5d4d: $06 $0c
    ld e, $e0                                     ; $5d4f: $1e $e0
    ldh [$fff0], a                                ; $5d51: $e0 $f0
    ldh a, [$fff0]                                ; $5d53: $f0 $f0
    ldh a, [$fff0]                                ; $5d55: $f0 $f0
    ldh a, [$fffc]                                ; $5d57: $f0 $fc
    cp b                                          ; $5d59: $b8
    cp $44                                        ; $5d5a: $fe $44
    cp $92                                        ; $5d5c: $fe $92
    rst RST_38                                    ; $5d5e: $ff
    ld d, l                                       ; $5d5f: $55
    rst RST_38                                    ; $5d60: $ff
    ld d, l                                       ; $5d61: $55
    rst RST_38                                    ; $5d62: $ff
    ld a, l                                       ; $5d63: $7d
    rst RST_38                                    ; $5d64: $ff
    add hl, sp                                    ; $5d65: $39
    cp $92                                        ; $5d66: $fe $92
    xor $d4                                       ; $5d68: $ee $d4
    db $fc                                        ; $5d6a: $fc
    ld hl, sp+$20                                 ; $5d6b: $f8 $20
    ld [hl], b                                    ; $5d6d: $70
    ld [hl], b                                    ; $5d6e: $70
    ldh a, [rTAC]                                 ; $5d6f: $f0 $07
    rlca                                          ; $5d71: $07
    ld c, $09                                     ; $5d72: $0e $09
    dec c                                         ; $5d74: $0d
    dec bc                                        ; $5d75: $0b
    dec bc                                        ; $5d76: $0b
    rrca                                          ; $5d77: $0f
    dec c                                         ; $5d78: $0d
    rrca                                          ; $5d79: $0f
    ld [hl], a                                    ; $5d7a: $77
    ccf                                           ; $5d7b: $3f
    rst RST_28                                    ; $5d7c: $ef
    ld e, a                                       ; $5d7d: $5f
    push af                                       ; $5d7e: $f5
    adc $ff                                       ; $5d7f: $ce $ff
    call nc, $f7fc                                ; $5d81: $d4 $fc $f7
    rst RST_38                                    ; $5d84: $ff
    rst RST_20                                    ; $5d85: $e7
    cp $c7                                        ; $5d86: $fe $c7
    or a                                          ; $5d88: $b7
    adc $cf                                       ; $5d89: $ce $cf
    ld a, d                                       ; $5d8b: $7a
    ld a, d                                       ; $5d8c: $7a
    inc sp                                        ; $5d8d: $33
    inc bc                                        ; $5d8e: $03
    inc bc                                        ; $5d8f: $03
    db $fc                                        ; $5d90: $fc
    db $fc                                        ; $5d91: $fc
    cp b                                          ; $5d92: $b8
    ld hl, sp-$04                                 ; $5d93: $f8 $fc
    db $fc                                        ; $5d95: $fc
    ldh a, [$fff0]                                ; $5d96: $f0 $f0
    ldh a, [$fff0]                                ; $5d98: $f0 $f0
    ldh a, [$fff0]                                ; $5d9a: $f0 $f0
    pop hl                                        ; $5d9c: $e1
    pop hl                                        ; $5d9d: $e1
    sub e                                         ; $5d9e: $93
    ld [hl], e                                    ; $5d9f: $73
    or a                                          ; $5da0: $b7
    ld d, l                                       ; $5da1: $55
    ccf                                           ; $5da2: $3f
    ld [$eefe], a                                 ; $5da3: $ea $fe $ee
    cp [hl]                                       ; $5da6: $be
    db $fc                                        ; $5da7: $fc

jr_005_5da8:
    and h                                         ; $5da8: $a4
    db $e4                                        ; $5da9: $e4
    ret nz                                        ; $5daa: $c0

    ret nz                                        ; $5dab: $c0

    add b                                         ; $5dac: $80
    add b                                         ; $5dad: $80
    add b                                         ; $5dae: $80
    add b                                         ; $5daf: $80
    ccf                                           ; $5db0: $3f
    ccf                                           ; $5db1: $3f
    ld a, [de]                                    ; $5db2: $1a
    rla                                           ; $5db3: $17
    ccf                                           ; $5db4: $3f
    ccf                                           ; $5db5: $3f
    ld a, [de]                                    ; $5db6: $1a
    rra                                           ; $5db7: $1f
    rra                                           ; $5db8: $1f
    ld a, [de]                                    ; $5db9: $1a
    adc a                                         ; $5dba: $8f
    ld a, [bc]                                    ; $5dbb: $0a
    db $db                                        ; $5dbc: $db
    adc h                                         ; $5dbd: $8c
    rst RST_08                                    ; $5dbe: $cf
    rst RST_18                                    ; $5dbf: $df
    ei                                            ; $5dc0: $fb
    cp a                                          ; $5dc1: $bf
    ld a, e                                       ; $5dc2: $7b
    ld e, h                                       ; $5dc3: $5c
    ld l, h                                       ; $5dc4: $6c
    ccf                                           ; $5dc5: $3f
    daa                                           ; $5dc6: $27
    daa                                           ; $5dc7: $27
    daa                                           ; $5dc8: $27
    ld b, $09                                     ; $5dc9: $06 $09
    rrca                                          ; $5dcb: $0f
    rrca                                          ; $5dcc: $0f
    add hl, bc                                    ; $5dcd: $09
    ld b, $06                                     ; $5dce: $06 $06
    ldh [$ffe0], a                                ; $5dd0: $e0 $e0
    ldh a, [$fff0]                                ; $5dd2: $f0 $f0
    ldh a, [$fff0]                                ; $5dd4: $f0 $f0
    or b                                          ; $5dd6: $b0
    ldh a, [$fffe]                                ; $5dd7: $f0 $fe
    cp h                                          ; $5dd9: $bc
    rst RST_28                                    ; $5dda: $ef
    or d                                          ; $5ddb: $b2
    rst RST_18                                    ; $5ddc: $df
    ld [hl], l                                    ; $5ddd: $75
    rst RST_38                                    ; $5dde: $ff
    push de                                       ; $5ddf: $d5
    ld a, a                                       ; $5de0: $7f
    rst RST_18                                    ; $5de1: $df
    ld a, l                                       ; $5de2: $7d
    rst RST_08                                    ; $5de3: $cf
    rst RST_38                                    ; $5de4: $ff
    push bc                                       ; $5de5: $c5
    rst RST_18                                    ; $5de6: $df
    push hl                                       ; $5de7: $e5
    db $e3                                        ; $5de8: $e3
    cp $7e                                        ; $5de9: $fe $7e
    call c, VBlankInterrupt                       ; $5deb: $dc $40 $00
    nop                                           ; $5dee: $00
    nop                                           ; $5def: $00
    rlca                                          ; $5df0: $07
    rlca                                          ; $5df1: $07
    rrca                                          ; $5df2: $0f
    ld [$080f], sp                                ; $5df3: $08 $0f $08
    rrca                                          ; $5df6: $0f
    ld [$181f], sp                                ; $5df7: $08 $1f $18
    ccf                                           ; $5dfa: $3f
    jr nz, jr_005_5e7c                            ; $5dfb: $20 $7f

    ld b, b                                       ; $5dfd: $40
    rst RST_38                                    ; $5dfe: $ff
    add b                                         ; $5dff: $80
    rst RST_38                                    ; $5e00: $ff
    add b                                         ; $5e01: $80
    rst RST_38                                    ; $5e02: $ff
    add b                                         ; $5e03: $80
    rst RST_38                                    ; $5e04: $ff
    add b                                         ; $5e05: $80
    ld a, a                                       ; $5e06: $7f
    ld b, b                                       ; $5e07: $40
    ccf                                           ; $5e08: $3f
    jr nz, @+$21                                  ; $5e09: $20 $1f

    dec de                                        ; $5e0b: $1b
    ld c, $0a                                     ; $5e0c: $0e $0a
    rrca                                          ; $5e0e: $0f
    rrca                                          ; $5e0f: $0f
    db $fc                                        ; $5e10: $fc
    db $fc                                        ; $5e11: $fc
    ld hl, sp+$08                                 ; $5e12: $f8 $08
    db $fc                                        ; $5e14: $fc
    inc e                                         ; $5e15: $1c
    ldh a, [rNR10]                                ; $5e16: $f0 $10
    ldh a, [rNR10]                                ; $5e18: $f0 $10
    ldh a, [rNR10]                                ; $5e1a: $f0 $10
    pop af                                        ; $5e1c: $f1
    ld de, $23e3                                  ; $5e1d: $11 $e3 $23
    rst RST_20                                    ; $5e20: $e7
    dec h                                         ; $5e21: $25
    xor $2a                                       ; $5e22: $ee $2a
    db $fc                                        ; $5e24: $fc
    ld d, h                                       ; $5e25: $54
    ld hl, sp+$68                                 ; $5e26: $f8 $68
    call c, $e05c                                 ; $5e28: $dc $5c $e0
    and b                                         ; $5e2b: $a0
    ldh [$ffa0], a                                ; $5e2c: $e0 $a0
    ld [hl], b                                    ; $5e2e: $70
    ld [hl], b                                    ; $5e2f: $70
    ccf                                           ; $5e30: $3f
    ccf                                           ; $5e31: $3f
    rra                                           ; $5e32: $1f
    db $10                                        ; $5e33: $10
    ccf                                           ; $5e34: $3f
    jr nc, jr_005_5e46                            ; $5e35: $30 $0f

    ld [$080f], sp                                ; $5e37: $08 $0f $08
    rrca                                          ; $5e3a: $0f
    ld [$888f], sp                                ; $5e3b: $08 $8f $88
    rst RST_00                                    ; $5e3e: $c7
    call nz, $a4e7                                ; $5e3f: $c4 $e7 $a4
    ld [hl], a                                    ; $5e42: $77
    ld d, h                                       ; $5e43: $54
    ccf                                           ; $5e44: $3f
    inc l                                         ; $5e45: $2c

jr_005_5e46:
    rra                                           ; $5e46: $1f
    db $10                                        ; $5e47: $10
    ccf                                           ; $5e48: $3f
    inc a                                         ; $5e49: $3c
    rlca                                          ; $5e4a: $07
    dec b                                         ; $5e4b: $05
    ld c, $0a                                     ; $5e4c: $0e $0a
    inc e                                         ; $5e4e: $1c
    inc e                                         ; $5e4f: $1c
    ldh [$ffe0], a                                ; $5e50: $e0 $e0
    ldh a, [rNR10]                                ; $5e52: $f0 $10
    ldh a, [rNR10]                                ; $5e54: $f0 $10
    ldh a, [rNR10]                                ; $5e56: $f0 $10
    ld hl, sp+$18                                 ; $5e58: $f8 $18
    db $fc                                        ; $5e5a: $fc
    inc b                                         ; $5e5b: $04
    cp $02                                        ; $5e5c: $fe $02
    rst RST_38                                    ; $5e5e: $ff
    ld bc, $01ff                                  ; $5e5f: $01 $ff $01
    rst RST_38                                    ; $5e62: $ff
    ld bc, $01ff                                  ; $5e63: $01 $ff $01
    cp $02                                        ; $5e66: $fe $02
    db $fc                                        ; $5e68: $fc
    inc b                                         ; $5e69: $04
    ld hl, sp-$28                                 ; $5e6a: $f8 $d8
    ld [hl], b                                    ; $5e6c: $70
    ld d, b                                       ; $5e6d: $50
    ldh a, [$fff0]                                ; $5e6e: $f0 $f0
    rlca                                          ; $5e70: $07
    rlca                                          ; $5e71: $07
    rrca                                          ; $5e72: $0f
    ld [$080f], sp                                ; $5e73: $08 $0f $08
    rrca                                          ; $5e76: $0f
    ld [$080f], sp                                ; $5e77: $08 $0f $08
    scf                                           ; $5e7a: $37
    inc [hl]                                      ; $5e7b: $34

jr_005_5e7c:
    ld a, a                                       ; $5e7c: $7f
    ld c, b                                       ; $5e7d: $48
    rst RST_38                                    ; $5e7e: $ff
    add b                                         ; $5e7f: $80
    rst RST_38                                    ; $5e80: $ff
    add b                                         ; $5e81: $80
    rst RST_38                                    ; $5e82: $ff
    add b                                         ; $5e83: $80
    rst RST_38                                    ; $5e84: $ff
    add b                                         ; $5e85: $80
    rst RST_38                                    ; $5e86: $ff
    add b                                         ; $5e87: $80
    rst RST_38                                    ; $5e88: $ff
    add [hl]                                      ; $5e89: $86
    ld a, e                                       ; $5e8a: $7b
    ld c, d                                       ; $5e8b: $4a
    inc sp                                        ; $5e8c: $33
    ld [hl-], a                                   ; $5e8d: $32
    inc bc                                        ; $5e8e: $03
    inc bc                                        ; $5e8f: $03
    db $fc                                        ; $5e90: $fc
    db $fc                                        ; $5e91: $fc
    ld hl, sp+$08                                 ; $5e92: $f8 $08
    db $fc                                        ; $5e94: $fc
    inc e                                         ; $5e95: $1c
    ldh a, [rNR10]                                ; $5e96: $f0 $10
    ldh a, [rNR10]                                ; $5e98: $f0 $10
    ldh a, [rNR10]                                ; $5e9a: $f0 $10
    pop hl                                        ; $5e9c: $e1
    ld hl, $13f3                                  ; $5e9d: $21 $f3 $13
    rst RST_30                                    ; $5ea0: $f7
    dec d                                         ; $5ea1: $15
    cp $0a                                        ; $5ea2: $fe $0a
    cp $02                                        ; $5ea4: $fe $02
    db $fc                                        ; $5ea6: $fc
    inc a                                         ; $5ea7: $3c
    db $e4                                        ; $5ea8: $e4
    and h                                         ; $5ea9: $a4
    ret nz                                        ; $5eaa: $c0

    ret nz                                        ; $5eab: $c0

    add b                                         ; $5eac: $80
    add b                                         ; $5ead: $80
    add b                                         ; $5eae: $80
    add b                                         ; $5eaf: $80
    ccf                                           ; $5eb0: $3f
    ccf                                           ; $5eb1: $3f
    rra                                           ; $5eb2: $1f
    db $10                                        ; $5eb3: $10
    ccf                                           ; $5eb4: $3f
    jr nc, jr_005_5ed6                            ; $5eb5: $30 $1f

    db $10                                        ; $5eb7: $10
    rra                                           ; $5eb8: $1f
    db $10                                        ; $5eb9: $10
    rrca                                          ; $5eba: $0f
    ld [$888f], sp                                ; $5ebb: $08 $8f $88
    rst RST_08                                    ; $5ebe: $cf
    ret z                                         ; $5ebf: $c8

    rst RST_38                                    ; $5ec0: $ff
    or b                                          ; $5ec1: $b0
    ld a, a                                       ; $5ec2: $7f
    ld c, b                                       ; $5ec3: $48
    ccf                                           ; $5ec4: $3f
    inc a                                         ; $5ec5: $3c
    daa                                           ; $5ec6: $27
    dec h                                         ; $5ec7: $25
    rlca                                          ; $5ec8: $07
    dec b                                         ; $5ec9: $05
    rrca                                          ; $5eca: $0f
    add hl, bc                                    ; $5ecb: $09
    rrca                                          ; $5ecc: $0f
    add hl, bc                                    ; $5ecd: $09
    ld b, $06                                     ; $5ece: $06 $06
    ldh [$ffe0], a                                ; $5ed0: $e0 $e0
    ldh a, [rNR10]                                ; $5ed2: $f0 $10
    ldh a, [rNR10]                                ; $5ed4: $f0 $10

jr_005_5ed6:
    ldh a, [rNR10]                                ; $5ed6: $f0 $10
    db $fc                                        ; $5ed8: $fc
    inc e                                         ; $5ed9: $1c
    cp $02                                        ; $5eda: $fe $02
    rst RST_38                                    ; $5edc: $ff
    ld bc, $01ff                                  ; $5edd: $01 $ff $01
    rst RST_38                                    ; $5ee0: $ff
    ld bc, $01ff                                  ; $5ee1: $01 $ff $01
    rst RST_38                                    ; $5ee4: $ff
    ld bc, $01ff                                  ; $5ee5: $01 $ff $01
    cp $62                                        ; $5ee8: $fe $62
    call c, $00dc                                 ; $5eea: $dc $dc $00
    nop                                           ; $5eed: $00
    nop                                           ; $5eee: $00
    nop                                           ; $5eef: $00
    ld a, a                                       ; $5ef0: $7f
    ld a, a                                       ; $5ef1: $7f
    ld a, [hl-]                                   ; $5ef2: $3a
    scf                                           ; $5ef3: $37
    ld a, a                                       ; $5ef4: $7f
    ld a, a                                       ; $5ef5: $7f
    ccf                                           ; $5ef6: $3f
    ccf                                           ; $5ef7: $3f
    jr nc, jr_005_5f39                            ; $5ef8: $30 $3f

    dec a                                         ; $5efa: $3d
    ld [hl], $1f                                  ; $5efb: $36 $1f
    ld [de], a                                    ; $5efd: $12
    rst RST_30                                    ; $5efe: $f7
    ld hl, sp-$15                                 ; $5eff: $f8 $eb
    sbc l                                         ; $5f01: $9d
    ld a, a                                       ; $5f02: $7f
    ld a, l                                       ; $5f03: $7d
    rlca                                          ; $5f04: $07
    dec c                                         ; $5f05: $0d
    rrca                                          ; $5f06: $0f
    inc c                                         ; $5f07: $0c
    rra                                           ; $5f08: $1f
    inc de                                        ; $5f09: $13
    inc [hl]                                      ; $5f0a: $34
    inc l                                         ; $5f0b: $2c
    jr c, jr_005_5f36                             ; $5f0c: $38 $28

    jr c, @+$7a                                   ; $5f0e: $38 $78

    ldh a, [$fff0]                                ; $5f10: $f0 $f0

jr_005_5f12:
    ld hl, sp-$08                                 ; $5f12: $f8 $f8
    ld hl, sp-$08                                 ; $5f14: $f8 $f8
    ld hl, sp-$08                                 ; $5f16: $f8 $f8
    jr jr_005_5f12                                ; $5f18: $18 $f8

    ld a, b                                       ; $5f1a: $78
    ret c                                         ; $5f1b: $d8

    ldh a, [$ff90]                                ; $5f1c: $f0 $90
    sbc $3e                                       ; $5f1e: $de $3e
    xor d                                         ; $5f20: $aa
    halt                                          ; $5f21: $76
    db $fc                                        ; $5f22: $fc
    ld a, h                                       ; $5f23: $7c
    ret nz                                        ; $5f24: $c0

    ld h, b                                       ; $5f25: $60
    ldh [$ff60], a                                ; $5f26: $e0 $60
    ldh a, [$ff90]                                ; $5f28: $f0 $90
    ld e, b                                       ; $5f2a: $58
    ld l, b                                       ; $5f2b: $68
    jr z, @+$3a                                   ; $5f2c: $28 $38

    jr c, jr_005_5f6c                             ; $5f2e: $38 $3c

    nop                                           ; $5f30: $00
    nop                                           ; $5f31: $00
    rrca                                          ; $5f32: $0f
    rra                                           ; $5f33: $1f
    ccf                                           ; $5f34: $3f
    rra                                           ; $5f35: $1f

jr_005_5f36:
    ccf                                           ; $5f36: $3f
    add hl, sp                                    ; $5f37: $39
    scf                                           ; $5f38: $37

jr_005_5f39:
    jr c, jr_005_5f7a                             ; $5f39: $38 $3f

    inc a                                         ; $5f3b: $3c
    ccf                                           ; $5f3c: $3f
    ld [de], a                                    ; $5f3d: $12
    rla                                           ; $5f3e: $17
    jr jr_005_5fc0                                ; $5f3f: $18 $7f

    ld a, a                                       ; $5f41: $7f
    cp $c3                                        ; $5f42: $fe $c3
    rst RST_38                                    ; $5f44: $ff
    cp c                                          ; $5f45: $b9
    rst RST_08                                    ; $5f46: $cf
    ret z                                         ; $5f47: $c8

    dec sp                                        ; $5f48: $3b
    ccf                                           ; $5f49: $3f
    ld a, [hl]                                    ; $5f4a: $7e
    ld b, l                                       ; $5f4b: $45
    ld [hl], a                                    ; $5f4c: $77
    ld a, c                                       ; $5f4d: $79
    rrca                                          ; $5f4e: $0f
    ld c, $00                                     ; $5f4f: $0e $00
    nop                                           ; $5f51: $00
    ldh [$fff0], a                                ; $5f52: $e0 $f0
    or $fc                                        ; $5f54: $f6 $fc
    rst RST_30                                    ; $5f56: $f7
    cp $df                                        ; $5f57: $fe $df
    scf                                           ; $5f59: $37
    rst RST_30                                    ; $5f5a: $f7
    ld [hl], e                                    ; $5f5b: $73
    di                                            ; $5f5c: $f3
    sub c                                         ; $5f5d: $91
    pop de                                        ; $5f5e: $d1
    ld sp, $fcfd                                  ; $5f5f: $31 $fd $fc
    sub [hl]                                      ; $5f62: $96
    xor $3e                                       ; $5f63: $ee $3e
    ld a, [$66a6]                                 ; $5f65: $fa $a6 $66
    cp b                                          ; $5f68: $b8
    ld hl, sp-$04                                 ; $5f69: $f8 $fc
    ld b, h                                       ; $5f6b: $44

jr_005_5f6c:
    call c, $e03c                                 ; $5f6c: $dc $3c $e0
    ldh [rTAC], a                                 ; $5f6f: $e0 $07
    inc bc                                        ; $5f71: $03
    rlca                                          ; $5f72: $07
    rrca                                          ; $5f73: $0f
    ld l, a                                       ; $5f74: $6f
    ccf                                           ; $5f75: $3f
    rst RST_28                                    ; $5f76: $ef
    ld a, a                                       ; $5f77: $7f
    db $ec                                        ; $5f78: $ec
    rst RST_28                                    ; $5f79: $ef

jr_005_5f7a:
    push hl                                       ; $5f7a: $e5
    adc $c6                                       ; $5f7b: $ce $c6
    add a                                         ; $5f7d: $87
    adc c                                         ; $5f7e: $89
    adc a                                         ; $5f7f: $8f
    sbc e                                         ; $5f80: $9b
    inc e                                         ; $5f81: $1c
    ccf                                           ; $5f82: $3f
    jr jr_005_5fc4                                ; $5f83: $18 $3f

    jr z, @+$41                                   ; $5f85: $28 $3f

    jr z, jr_005_5fa8                             ; $5f87: $28 $1f

    rra                                           ; $5f89: $1f
    ld c, $0b                                     ; $5f8a: $0e $0b
    ld c, $0a                                     ; $5f8c: $0e $0a
    ld c, $0e                                     ; $5f8e: $0e $0e
    ldh a, [$ffe0]                                ; $5f90: $f0 $e0
    ld hl, sp-$10                                 ; $5f92: $f8 $f0
    sbc b                                         ; $5f94: $98
    ld hl, sp+$30                                 ; $5f95: $f8 $30
    ret c                                         ; $5f97: $d8

    ldh a, [$ff50]                                ; $5f98: $f0 $50
    ldh a, [$ff50]                                ; $5f9a: $f0 $50
    ldh a, [rNR10]                                ; $5f9c: $f0 $10
    ldh [c], a                                    ; $5f9e: $e2
    ldh [c], a                                    ; $5f9f: $e2
    add $66                                       ; $5fa0: $c6 $66
    ld a, d                                       ; $5fa2: $7a
    xor [hl]                                      ; $5fa3: $ae
    db $f4                                        ; $5fa4: $f4
    call c, $e838                                 ; $5fa5: $dc $38 $e8

jr_005_5fa8:
    ldh a, [$fff0]                                ; $5fa8: $f0 $f0
    ldh [$ffa0], a                                ; $5faa: $e0 $a0
    or b                                          ; $5fac: $b0
    ret nc                                        ; $5fad: $d0

    ld [hl], b                                    ; $5fae: $70
    ld [hl], b                                    ; $5faf: $70
    rrca                                          ; $5fb0: $0f
    rlca                                          ; $5fb1: $07
    rra                                           ; $5fb2: $1f
    rrca                                          ; $5fb3: $0f
    add hl, de                                    ; $5fb4: $19
    rra                                           ; $5fb5: $1f
    inc c                                         ; $5fb6: $0c
    dec de                                        ; $5fb7: $1b
    rrca                                          ; $5fb8: $0f
    ld a, [bc]                                    ; $5fb9: $0a
    rrca                                          ; $5fba: $0f
    ld a, [bc]                                    ; $5fbb: $0a
    rrca                                          ; $5fbc: $0f
    ld [$474f], sp                                ; $5fbd: $08 $4f $47

jr_005_5fc0:
    ld h, e                                       ; $5fc0: $63

jr_005_5fc1:
    ld h, [hl]                                    ; $5fc1: $66
    ld e, a                                       ; $5fc2: $5f
    ld [hl], a                                    ; $5fc3: $77

jr_005_5fc4:
    dec l                                         ; $5fc4: $2d
    ld a, $1d                                     ; $5fc5: $3e $1d
    ld e, $0f                                     ; $5fc7: $1e $0f
    rlca                                          ; $5fc9: $07
    rlca                                          ; $5fca: $07
    dec b                                         ; $5fcb: $05
    dec c                                         ; $5fcc: $0d
    dec bc                                        ; $5fcd: $0b
    ld c, $0e                                     ; $5fce: $0e $0e
    ldh [$ffc0], a                                ; $5fd0: $e0 $c0
    ldh [$fff0], a                                ; $5fd2: $e0 $f0
    or $fc                                        ; $5fd4: $f6 $fc
    rst RST_30                                    ; $5fd6: $f7
    cp $37                                        ; $5fd7: $fe $37
    rst RST_30                                    ; $5fd9: $f7
    and a                                         ; $5fda: $a7
    ld [hl], e                                    ; $5fdb: $73
    ld h, e                                       ; $5fdc: $63
    pop hl                                        ; $5fdd: $e1
    cp c                                          ; $5fde: $b9
    pop de                                        ; $5fdf: $d1
    ld sp, hl                                     ; $5fe0: $f9
    adc b                                         ; $5fe1: $88
    db $fc                                        ; $5fe2: $fc
    jr z, jr_005_5fc1                             ; $5fe3: $28 $dc

    inc [hl]                                      ; $5fe5: $34
    call c, $f834                                 ; $5fe6: $dc $34 $f8
    ld hl, sp+$70                                 ; $5fe9: $f8 $70
    ret nc                                        ; $5feb: $d0

    ld [hl], b                                    ; $5fec: $70
    ld d, b                                       ; $5fed: $50
    ld [hl], b                                    ; $5fee: $70
    ld [hl], b                                    ; $5fef: $70
    rlca                                          ; $5ff0: $07
    rlca                                          ; $5ff1: $07
    rrca                                          ; $5ff2: $0f
    rrca                                          ; $5ff3: $0f
    ld l, a                                       ; $5ff4: $6f
    scf                                           ; $5ff5: $37
    rst RST_28                                    ; $5ff6: $ef
    ld [hl], a                                    ; $5ff7: $77
    rst RST_38                                    ; $5ff8: $ff
    rst RST_28                                    ; $5ff9: $ef
    rst RST_28                                    ; $5ffa: $ef
    rst RST_08                                    ; $5ffb: $cf
    rst RST_00                                    ; $5ffc: $c7
    add a                                         ; $5ffd: $87
    adc h                                         ; $5ffe: $8c
    adc e                                         ; $5fff: $8b
    sbc e                                         ; $6000: $9b
    inc d                                         ; $6001: $14
    cpl                                           ; $6002: $2f
    inc a                                         ; $6003: $3c
    scf                                           ; $6004: $37
    inc [hl]                                      ; $6005: $34
    rlca                                          ; $6006: $07
    rlca                                          ; $6007: $07
    dec b                                         ; $6008: $05
    rlca                                          ; $6009: $07
    rlca                                          ; $600a: $07
    rlca                                          ; $600b: $07
    ld bc, $0001                                  ; $600c: $01 $01 $00
    ld bc, $e0c0                                  ; $600f: $01 $c0 $e0
    ldh a, [$ffe0]                                ; $6012: $f0 $e0
    ldh a, [$fff0]                                ; $6014: $f0 $f0
    ldh a, [$fff0]                                ; $6016: $f0 $f0
    ldh a, [$fff0]                                ; $6018: $f0 $f0
    ldh a, [$ffe0]                                ; $601a: $f0 $e0
    pop bc                                        ; $601c: $c1
    pop hl                                        ; $601d: $e1
    inc hl                                        ; $601e: $23
    db $e3                                        ; $601f: $e3
    sub l                                         ; $6020: $95
    ld [hl], a                                    ; $6021: $77
    cp d                                          ; $6022: $ba
    ld l, [hl]                                    ; $6023: $6e
    cp h                                          ; $6024: $bc
    ld [hl], h                                    ; $6025: $74
    add sp, -$18                                  ; $6026: $e8 $e8
    ld b, b                                       ; $6028: $40
    ret nz                                        ; $6029: $c0

    ret nz                                        ; $602a: $c0

    ld b, b                                       ; $602b: $40
    ret nz                                        ; $602c: $c0

    ld b, b                                       ; $602d: $40
    ret nz                                        ; $602e: $c0

    add b                                         ; $602f: $80
    inc bc                                        ; $6030: $03
    rlca                                          ; $6031: $07
    rrca                                          ; $6032: $0f
    rlca                                          ; $6033: $07
    ld c, $0f                                     ; $6034: $0e $0f
    dec c                                         ; $6036: $0d
    ld c, $0f                                     ; $6037: $0e $0f
    dec c                                         ; $6039: $0d
    adc a                                         ; $603a: $8f
    add l                                         ; $603b: $85
    push bc                                       ; $603c: $c5
    add $af                                       ; $603d: $c6 $af
    rst RST_28                                    ; $603f: $ef
    ld e, l                                       ; $6040: $5d
    ld [hl], e                                    ; $6041: $73
    ld a, $2d                                     ; $6042: $3e $2d
    rla                                           ; $6044: $17
    inc d                                         ; $6045: $14
    inc bc                                        ; $6046: $03
    rlca                                          ; $6047: $07
    ld [bc], a                                    ; $6048: $02
    inc bc                                        ; $6049: $03
    inc bc                                        ; $604a: $03
    ld [bc], a                                    ; $604b: $02
    inc bc                                        ; $604c: $03
    ld [bc], a                                    ; $604d: $02
    inc bc                                        ; $604e: $03
    ld bc, $e0e0                                  ; $604f: $01 $e0 $e0
    ldh a, [$fff0]                                ; $6052: $f0 $f0
    or $fc                                        ; $6054: $f6 $fc
    sub a                                         ; $6056: $97
    ld a, [hl]                                    ; $6057: $7e
    rst RST_38                                    ; $6058: $ff
    ld d, a                                       ; $6059: $57
    rst RST_30                                    ; $605a: $f7
    ld d, e                                       ; $605b: $53
    db $d3                                        ; $605c: $d3
    ld sp, $f9f9                                  ; $605d: $31 $f9 $f9
    call $9e74                                    ; $6060: $cd $74 $9e
    ld a, [$36d6]                                 ; $6063: $fa $d6 $36
    ldh [$fff0], a                                ; $6066: $e0 $f0
    and b                                         ; $6068: $a0
    ldh [$ffe0], a                                ; $6069: $e0 $e0
    ldh [$ff80], a                                ; $606b: $e0 $80
    add b                                         ; $606d: $80
    nop                                           ; $606e: $00
    add b                                         ; $606f: $80
    inc bc                                        ; $6070: $03
    inc bc                                        ; $6071: $03
    rlca                                          ; $6072: $07
    inc b                                         ; $6073: $04
    ld a, a                                       ; $6074: $7f
    ld a, b                                       ; $6075: $78
    rst RST_38                                    ; $6076: $ff
    sub b                                         ; $6077: $90
    rst RST_28                                    ; $6078: $ef
    xor b                                         ; $6079: $a8
    rst RST_28                                    ; $607a: $ef
    xor b                                         ; $607b: $a8
    rst RST_00                                    ; $607c: $c7
    call nz, $888f                                ; $607d: $c4 $8f $88
    sbc a                                         ; $6080: $9f
    sub b                                         ; $6081: $90
    rra                                           ; $6082: $1f
    db $10                                        ; $6083: $10
    ccf                                           ; $6084: $3f
    jr nz, jr_005_60c6                            ; $6085: $20 $3f

    jr nz, jr_005_60a8                            ; $6087: $20 $1f

    inc de                                        ; $6089: $13
    ld c, $0a                                     ; $608a: $0e $0a
    ld c, $0a                                     ; $608c: $0e $0a
    ld c, $0e                                     ; $608e: $0e $0e
    ldh [$ffe0], a                                ; $6090: $e0 $e0
    ldh a, [rNR10]                                ; $6092: $f0 $10
    ld hl, sp+$08                                 ; $6094: $f8 $08
    ld hl, sp+$08                                 ; $6096: $f8 $08
    ldh a, [rNR10]                                ; $6098: $f0 $10
    ldh a, [rNR10]                                ; $609a: $f0 $10
    ldh a, [rNR10]                                ; $609c: $f0 $10
    ldh [c], a                                    ; $609e: $e2
    ld h, d                                       ; $609f: $62
    add $46                                       ; $60a0: $c6 $46
    xor $2a                                       ; $60a2: $ee $2a
    db $fc                                        ; $60a4: $fc
    inc d                                         ; $60a5: $14
    ld hl, sp+$08                                 ; $60a6: $f8 $08

jr_005_60a8:
    ldh a, [$ff30]                                ; $60a8: $f0 $30
    ldh [$ffa0], a                                ; $60aa: $e0 $a0
    ldh a, [$ff90]                                ; $60ac: $f0 $90
    ld [hl], b                                    ; $60ae: $70
    ld [hl], b                                    ; $60af: $70
    rlca                                          ; $60b0: $07
    rlca                                          ; $60b1: $07
    rrca                                          ; $60b2: $0f
    ld [$101f], sp                                ; $60b3: $08 $1f $10
    rra                                           ; $60b6: $1f
    db $10                                        ; $60b7: $10
    rrca                                          ; $60b8: $0f
    ld [$080f], sp                                ; $60b9: $08 $0f $08
    rrca                                          ; $60bc: $0f
    ld [$4447], sp                                ; $60bd: $08 $47 $44
    ld h, e                                       ; $60c0: $63
    ld h, d                                       ; $60c1: $62
    ld [hl], a                                    ; $60c2: $77
    ld d, h                                       ; $60c3: $54
    ccf                                           ; $60c4: $3f
    inc l                                         ; $60c5: $2c

jr_005_60c6:
    rra                                           ; $60c6: $1f
    db $10                                        ; $60c7: $10
    rrca                                          ; $60c8: $0f
    inc c                                         ; $60c9: $0c
    rlca                                          ; $60ca: $07
    dec b                                         ; $60cb: $05
    rrca                                          ; $60cc: $0f
    add hl, bc                                    ; $60cd: $09
    ld c, $0e                                     ; $60ce: $0e $0e
    ldh [$ffe0], a                                ; $60d0: $e0 $e0
    ldh a, [rNR10]                                ; $60d2: $f0 $10
    cp $0e                                        ; $60d4: $fe $0e
    rst RST_38                                    ; $60d6: $ff
    add hl, bc                                    ; $60d7: $09
    rst RST_30                                    ; $60d8: $f7
    dec d                                         ; $60d9: $15
    rst RST_30                                    ; $60da: $f7
    dec d                                         ; $60db: $15
    db $e3                                        ; $60dc: $e3
    inc hl                                        ; $60dd: $23
    pop af                                        ; $60de: $f1
    ld de, $09f9                                  ; $60df: $11 $f9 $09
    ld hl, sp+$08                                 ; $60e2: $f8 $08
    db $fc                                        ; $60e4: $fc
    inc b                                         ; $60e5: $04
    db $fc                                        ; $60e6: $fc
    inc b                                         ; $60e7: $04
    ld hl, sp-$38                                 ; $60e8: $f8 $c8
    ld [hl], b                                    ; $60ea: $70
    ld d, b                                       ; $60eb: $50
    ld [hl], b                                    ; $60ec: $70
    ld d, b                                       ; $60ed: $50
    ld [hl], b                                    ; $60ee: $70
    ld [hl], b                                    ; $60ef: $70
    rlca                                          ; $60f0: $07
    rlca                                          ; $60f1: $07
    rrca                                          ; $60f2: $0f
    ld [$707f], sp                                ; $60f3: $08 $7f $70
    rst RST_38                                    ; $60f6: $ff
    add b                                         ; $60f7: $80
    rst RST_38                                    ; $60f8: $ff
    sub b                                         ; $60f9: $90
    rst RST_28                                    ; $60fa: $ef
    xor b                                         ; $60fb: $a8
    rst RST_00                                    ; $60fc: $c7
    call nz, $888f                                ; $60fd: $c4 $8f $88
    sbc a                                         ; $6100: $9f
    sub b                                         ; $6101: $90
    ccf                                           ; $6102: $3f
    inc l                                         ; $6103: $2c
    scf                                           ; $6104: $37
    inc [hl]                                      ; $6105: $34
    rlca                                          ; $6106: $07
    dec b                                         ; $6107: $05
    rlca                                          ; $6108: $07
    dec b                                         ; $6109: $05
    rlca                                          ; $610a: $07
    inc bc                                        ; $610b: $03
    ld bc, $0101                                  ; $610c: $01 $01 $01
    nop                                           ; $610f: $00
    ret nz                                        ; $6110: $c0

    ret nz                                        ; $6111: $c0

    ldh [rNR41], a                                ; $6112: $e0 $20
    ldh a, [rNR10]                                ; $6114: $f0 $10
    ldh a, [rNR10]                                ; $6116: $f0 $10
    ldh a, [rNR10]                                ; $6118: $f0 $10
    ldh a, [rNR10]                                ; $611a: $f0 $10
    pop hl                                        ; $611c: $e1
    ld hl, $23e3                                  ; $611d: $21 $e3 $23
    rst RST_30                                    ; $6120: $f7
    dec d                                         ; $6121: $15
    cp $2a                                        ; $6122: $fe $2a
    db $fc                                        ; $6124: $fc
    inc [hl]                                      ; $6125: $34
    add sp, $68                                   ; $6126: $e8 $68
    ret nz                                        ; $6128: $c0

    ld b, b                                       ; $6129: $40
    ret nz                                        ; $612a: $c0

    ld b, b                                       ; $612b: $40
    ret nz                                        ; $612c: $c0

    ld b, b                                       ; $612d: $40
    ret nz                                        ; $612e: $c0

    add b                                         ; $612f: $80
    inc bc                                        ; $6130: $03
    inc bc                                        ; $6131: $03
    rlca                                          ; $6132: $07
    inc b                                         ; $6133: $04
    rrca                                          ; $6134: $0f
    ld [$080f], sp                                ; $6135: $08 $0f $08
    rrca                                          ; $6138: $0f
    ld [$8487], sp                                ; $6139: $08 $87 $84
    rst RST_00                                    ; $613c: $c7
    call nz, $aeef                                ; $613d: $c4 $ef $ae
    ld a, a                                       ; $6140: $7f
    ld d, b                                       ; $6141: $50
    ccf                                           ; $6142: $3f
    inc l                                         ; $6143: $2c
    rla                                           ; $6144: $17
    inc d                                         ; $6145: $14
    inc bc                                        ; $6146: $03
    ld [bc], a                                    ; $6147: $02
    inc bc                                        ; $6148: $03
    ld [bc], a                                    ; $6149: $02
    inc bc                                        ; $614a: $03
    ld [bc], a                                    ; $614b: $02
    inc bc                                        ; $614c: $03
    ld [bc], a                                    ; $614d: $02
    inc bc                                        ; $614e: $03
    ld bc, $e0e0                                  ; $614f: $01 $e0 $e0
    ldh a, [rNR10]                                ; $6152: $f0 $10
    cp $0e                                        ; $6154: $fe $0e
    rst RST_38                                    ; $6156: $ff
    add hl, bc                                    ; $6157: $09
    rst RST_30                                    ; $6158: $f7
    dec d                                         ; $6159: $15
    rst RST_30                                    ; $615a: $f7
    dec d                                         ; $615b: $15
    db $e3                                        ; $615c: $e3
    inc hl                                        ; $615d: $23
    ld sp, hl                                     ; $615e: $f9
    add hl, sp                                    ; $615f: $39
    db $fd                                        ; $6160: $fd
    dec b                                         ; $6161: $05
    cp $1a                                        ; $6162: $fe $1a
    or $16                                        ; $6164: $f6 $16
    ldh [$ffa0], a                                ; $6166: $e0 $a0
    ldh [$ffa0], a                                ; $6168: $e0 $a0
    ldh [$ffe0], a                                ; $616a: $e0 $e0
    add b                                         ; $616c: $80
    add b                                         ; $616d: $80
    add b                                         ; $616e: $80
    nop                                           ; $616f: $00
    ld bc, $617b                                  ; $6170: $01 $7b $61
    add b                                         ; $6173: $80
    ld bc, $f001                                  ; $6174: $01 $01 $f0
    ld h, h                                       ; $6177: $64
    and [hl]                                      ; $6178: $a6
    nop                                           ; $6179: $00
    nop                                           ; $617a: $00
    stop                                          ; $617b: $10 $00
    sub e                                         ; $617d: $93
    cp $01                                        ; $617e: $fe $01
    add c                                         ; $6180: $81
    ld a, a                                       ; $6181: $7f
    cp c                                          ; $6182: $b9
    ld a, a                                       ; $6183: $7f
    and l                                         ; $6184: $a5
    ld a, e                                       ; $6185: $7b
    and l                                         ; $6186: $a5
    ld a, e                                       ; $6187: $7b
    sbc c                                         ; $6188: $99
    ld h, e                                       ; $6189: $63
    add c                                         ; $618a: $81
    ld a, a                                       ; $618b: $7f
    ld a, a                                       ; $618c: $7f
    rst RST_38                                    ; $618d: $ff
    nop                                           ; $618e: $00
    db $db                                        ; $618f: $db
    rst RST_38                                    ; $6190: $ff
    inc b                                         ; $6191: $04
    inc h                                         ; $6192: $24
    xor h                                         ; $6193: $ac
    rst RST_38                                    ; $6194: $ff
    rst RST_38                                    ; $6195: $ff
    inc h                                         ; $6196: $24
    inc h                                         ; $6197: $24
    rst RST_38                                    ; $6198: $ff
    inc h                                         ; $6199: $24
    rst RST_38                                    ; $619a: $ff
    db $db                                        ; $619b: $db
    db $db                                        ; $619c: $db
    ld c, c                                       ; $619d: $49
    sub a                                         ; $619e: $97
    ld c, c                                       ; $619f: $49
    sub a                                         ; $61a0: $97
    ld a, [hl]                                    ; $61a1: $7e
    ld a, [hl]                                    ; $61a2: $7e
    ld c, c                                       ; $61a3: $49
    sub a                                         ; $61a4: $97
    ld c, c                                       ; $61a5: $49
    sub a                                         ; $61a6: $97
    ld a, [hl]                                    ; $61a7: $7e

jr_005_61a8:
    ld a, [hl]                                    ; $61a8: $7e
    ld c, c                                       ; $61a9: $49
    sub a                                         ; $61aa: $97
    ld c, c                                       ; $61ab: $49
    sub a                                         ; $61ac: $97
    nop                                           ; $61ad: $00
    ld a, a                                       ; $61ae: $7f
    ccf                                           ; $61af: $3f
    add b                                         ; $61b0: $80
    nop                                           ; $61b1: $00
    add b                                         ; $61b2: $80
    nop                                           ; $61b3: $00
    cp a                                          ; $61b4: $bf
    ld a, a                                       ; $61b5: $7f
    add b                                         ; $61b6: $80
    nop                                           ; $61b7: $00
    rst RST_38                                    ; $61b8: $ff
    ld b, b                                       ; $61b9: $40
    rst RST_38                                    ; $61ba: $ff
    ld a, a                                       ; $61bb: $7f
    ld a, a                                       ; $61bc: $7f
    nop                                           ; $61bd: $00
    rst RST_38                                    ; $61be: $ff
    rst RST_38                                    ; $61bf: $ff
    inc b                                         ; $61c0: $04
    nop                                           ; $61c1: $00
    add [hl]                                      ; $61c2: $86
    rst RST_38                                    ; $61c3: $ff
    rst RST_38                                    ; $61c4: $ff
    nop                                           ; $61c5: $00
    nop                                           ; $61c6: $00
    rst RST_38                                    ; $61c7: $ff
    nop                                           ; $61c8: $00
    inc bc                                        ; $61c9: $03
    rst RST_38                                    ; $61ca: $ff
    or b                                          ; $61cb: $b0
    nop                                           ; $61cc: $00
    cp $fd                                        ; $61cd: $fe $fd
    inc bc                                        ; $61cf: $03
    ld bc, $0103                                  ; $61d0: $01 $03 $01
    rst RST_38                                    ; $61d3: $ff
    db $fd                                        ; $61d4: $fd
    inc bc                                        ; $61d5: $03
    ld bc, $03ff                                  ; $61d6: $01 $ff $03
    rst RST_38                                    ; $61d9: $ff
    cp $fe                                        ; $61da: $fe $fe
    nop                                           ; $61dc: $00
    ld a, [hl]                                    ; $61dd: $7e
    dec bc                                        ; $61de: $0b
    add a                                         ; $61df: $87
    ld c, c                                       ; $61e0: $49
    sub a                                         ; $61e1: $97
    ld c, c                                       ; $61e2: $49
    sub a                                         ; $61e3: $97
    ld c, c                                       ; $61e4: $49
    sub a                                         ; $61e5: $97
    ld c, c                                       ; $61e6: $49
    sub a                                         ; $61e7: $97
    ld c, c                                       ; $61e8: $49
    sub a                                         ; $61e9: $97
    ld c, c                                       ; $61ea: $49
    sub a                                         ; $61eb: $97
    ld c, c                                       ; $61ec: $49
    sub a                                         ; $61ed: $97
    ld c, c                                       ; $61ee: $49
    sub a                                         ; $61ef: $97
    ld c, c                                       ; $61f0: $49
    sub a                                         ; $61f1: $97
    ld c, c                                       ; $61f2: $49
    sub a                                         ; $61f3: $97
    ld c, c                                       ; $61f4: $49
    sub a                                         ; $61f5: $97
    ld c, c                                       ; $61f6: $49
    sub a                                         ; $61f7: $97
    inc bc                                        ; $61f8: $03
    rst RST_38                                    ; $61f9: $ff
    ld a, [hl]                                    ; $61fa: $7e
    ld a, [hl]                                    ; $61fb: $7e
    inc b                                         ; $61fc: $04
    nop                                           ; $61fd: $00
    inc b                                         ; $61fe: $04
    rst RST_38                                    ; $61ff: $ff
    adc b                                         ; $6200: $88
    inc bc                                        ; $6201: $03
    inc bc                                        ; $6202: $03
    rlca                                          ; $6203: $07
    inc bc                                        ; $6204: $03
    ld b, $06                                     ; $6205: $06 $06
    ld c, $06                                     ; $6207: $0e $06
    inc c                                         ; $6209: $0c
    nop                                           ; $620a: $00
    inc b                                         ; $620b: $04
    ld l, h                                       ; $620c: $6c
    inc b                                         ; $620d: $04
    nop                                           ; $620e: $00
    inc b                                         ; $620f: $04
    ld a, a                                       ; $6210: $7f
    ld [$0403], sp                                ; $6211: $08 $03 $04
    nop                                           ; $6214: $00
    add b                                         ; $6215: $80
    add e                                         ; $6216: $83
    dec b                                         ; $6217: $05
    jr c, @+$7e                                   ; $6218: $38 $7c

    ld l, h                                       ; $621a: $6c
    ld a, h                                       ; $621b: $7c
    jr c, jr_005_61a8                             ; $621c: $38 $8a

    nop                                           ; $621e: $00
    nop                                           ; $621f: $00
    inc c                                         ; $6220: $0c
    inc c                                         ; $6221: $0c
    ld a, h                                       ; $6222: $7c
    ld l, h                                       ; $6223: $6c
    ld a, b                                       ; $6224: $78
    ld a, b                                       ; $6225: $78
    inc e                                         ; $6226: $1c
    jr jr_005_622d                                ; $6227: $18 $04

    inc c                                         ; $6229: $0c
    inc b                                         ; $622a: $04
    nop                                           ; $622b: $00
    add d                                         ; $622c: $82

jr_005_622d:
    ld l, h                                       ; $622d: $6c
    ld l, h                                       ; $622e: $6c
    inc b                                         ; $622f: $04
    inc bc                                        ; $6230: $03
    add [hl]                                      ; $6231: $86
    rlca                                          ; $6232: $07
    ld b, $3e                                     ; $6233: $06 $3e
    ld a, $3c                                     ; $6235: $3e $3c
    jr c, jr_005_623d                             ; $6237: $38 $04

    nop                                           ; $6239: $00
    adc h                                         ; $623a: $8c
    inc bc                                        ; $623b: $03
    inc bc                                        ; $623c: $03

jr_005_623d:
    ld b, $03                                     ; $623d: $06 $03
    ld b, $06                                     ; $623f: $06 $06
    ld c, $0c                                     ; $6241: $0e $0c
    inc a                                         ; $6243: $3c
    inc a                                         ; $6244: $3c
    jr c, jr_005_6277                             ; $6245: $38 $30

    ld [$0400], sp                                ; $6247: $08 $00 $04
    ld a, [hl]                                    ; $624a: $7e
    add b                                         ; $624b: $80
    add e                                         ; $624c: $83
    inc b                                         ; $624d: $04
    ld b, $0e                                     ; $624e: $06 $0e
    inc c                                         ; $6250: $0c
    inc e                                         ; $6251: $1c
    inc b                                         ; $6252: $04
    nop                                           ; $6253: $00
    inc b                                         ; $6254: $04
    ld a, $82                                     ; $6255: $3e $82
    nop                                           ; $6257: $00
    nop                                           ; $6258: $00
    inc b                                         ; $6259: $04
    ld a, a                                       ; $625a: $7f
    add d                                         ; $625b: $82
    inc c                                         ; $625c: $0c
    inc c                                         ; $625d: $0c
    inc b                                         ; $625e: $04
    nop                                           ; $625f: $00
    inc b                                         ; $6260: $04
    ccf                                           ; $6261: $3f
    add e                                         ; $6262: $83
    inc sp                                        ; $6263: $33
    inc sp                                        ; $6264: $33
    ld [hl], e                                    ; $6265: $73
    inc bc                                        ; $6266: $03
    ld h, e                                       ; $6267: $63
    add d                                         ; $6268: $82
    rra                                           ; $6269: $1f
    dec de                                        ; $626a: $1b
    add b                                         ; $626b: $80
    add e                                         ; $626c: $83
    ld b, $1c                                     ; $626d: $06 $1c
    ld a, $36                                     ; $626f: $3e $36
    ld [hl], a                                    ; $6271: $77
    ld h, e                                       ; $6272: $63
    ld h, e                                       ; $6273: $63
    inc b                                         ; $6274: $04
    nop                                           ; $6275: $00
    inc b                                         ; $6276: $04

jr_005_6277:
    inc c                                         ; $6277: $0c
    adc b                                         ; $6278: $88
    inc e                                         ; $6279: $1c
    inc c                                         ; $627a: $0c
    inc e                                         ; $627b: $1c
    jr jr_005_62b6                                ; $627c: $18 $38

    jr c, jr_005_62b0                             ; $627e: $38 $30

    jr nc, jr_005_6286                            ; $6280: $30 $04

    nop                                           ; $6282: $00
    inc b                                         ; $6283: $04
    ld a, [hl]                                    ; $6284: $7e
    inc c                                         ; $6285: $0c

jr_005_6286:
    nop                                           ; $6286: $00
    adc h                                         ; $6287: $8c
    rra                                           ; $6288: $1f
    rra                                           ; $6289: $1f
    ld b, $07                                     ; $628a: $06 $07
    rlca                                          ; $628c: $07
    ld b, $1e                                     ; $628d: $06 $1e
    ld c, $3c                                     ; $628f: $0e $3c
    inc a                                         ; $6291: $3c
    jr c, jr_005_62c4                             ; $6292: $38 $30

    ld [$0c00], sp                                ; $6294: $08 $00 $0c
    ld h, e                                       ; $6297: $63
    inc b                                         ; $6298: $04
    nop                                           ; $6299: $00
    inc b                                         ; $629a: $04
    jr nc, jr_005_62a1                            ; $629b: $30 $04

    ld a, a                                       ; $629d: $7f
    add h                                         ; $629e: $84
    inc sp                                        ; $629f: $33
    inc sp                                        ; $62a0: $33

jr_005_62a1:
    ld [hl], $36                                  ; $62a1: $36 $36
    inc b                                         ; $62a3: $04
    nop                                           ; $62a4: $00
    ld a, [bc]                                    ; $62a5: $0a
    ld h, b                                       ; $62a6: $60
    add l                                         ; $62a7: $85
    ld a, b                                       ; $62a8: $78
    ld a, b                                       ; $62a9: $78
    inc bc                                        ; $62aa: $03
    inc bc                                        ; $62ab: $03
    rlca                                          ; $62ac: $07
    inc bc                                        ; $62ad: $03
    ld b, $86                                     ; $62ae: $06 $86

jr_005_62b0:
    ld c, $0c                                     ; $62b0: $0e $0c
    inc e                                         ; $62b2: $1c
    inc e                                         ; $62b3: $1c
    jr @+$1a                                      ; $62b4: $18 $18

jr_005_62b6:
    inc b                                         ; $62b6: $04
    nop                                           ; $62b7: $00
    add b                                         ; $62b8: $80
    add e                                         ; $62b9: $83
    ld b, $36                                     ; $62ba: $06 $36
    jr nc, jr_005_62ee                            ; $62bc: $30 $30

    inc sp                                        ; $62be: $33
    ccf                                           ; $62bf: $3f
    ld e, $04                                     ; $62c0: $1e $04
    nop                                           ; $62c2: $00
    add b                                         ; $62c3: $80

jr_005_62c4:
    add e                                         ; $62c4: $83
    ld b, $7e                                     ; $62c5: $06 $7e
    ld h, [hl]                                    ; $62c7: $66
    ld h, b                                       ; $62c8: $60
    ld h, b                                       ; $62c9: $60
    ld h, b                                       ; $62ca: $60
    ld h, b                                       ; $62cb: $60
    ld [$8000], sp                                ; $62cc: $08 $00 $80
    add e                                         ; $62cf: $83
    ld b, $7e                                     ; $62d0: $06 $7e
    ld a, a                                       ; $62d2: $7f
    ld h, e                                       ; $62d3: $63
    ld h, e                                       ; $62d4: $63
    ld h, e                                       ; $62d5: $63
    ld a, [hl]                                    ; $62d6: $7e
    inc b                                         ; $62d7: $04
    nop                                           ; $62d8: $00
    add b                                         ; $62d9: $80
    add e                                         ; $62da: $83
    ld b, $3e                                     ; $62db: $06 $3e
    ld a, a                                       ; $62dd: $7f
    ld h, e                                       ; $62de: $63
    ld h, e                                       ; $62df: $63
    ld h, b                                       ; $62e0: $60
    ld l, a                                       ; $62e1: $6f
    inc b                                         ; $62e2: $04
    nop                                           ; $62e3: $00
    add b                                         ; $62e4: $80
    add e                                         ; $62e5: $83
    inc c                                         ; $62e6: $0c
    ld h, e                                       ; $62e7: $63
    ld [hl], a                                    ; $62e8: $77
    ld a, a                                       ; $62e9: $7f

jr_005_62ea:
    ld a, a                                       ; $62ea: $7f
    ld l, e                                       ; $62eb: $6b
    ld h, e                                       ; $62ec: $63
    ld a, [hl]                                    ; $62ed: $7e

jr_005_62ee:
    ld h, e                                       ; $62ee: $63
    ld h, e                                       ; $62ef: $63
    ld h, e                                       ; $62f0: $63
    ld a, a                                       ; $62f1: $7f
    ld a, [hl]                                    ; $62f2: $7e
    inc b                                         ; $62f3: $04
    nop                                           ; $62f4: $00
    add b                                         ; $62f5: $80
    add e                                         ; $62f6: $83
    ld b, $6f                                     ; $62f7: $06 $6f
    ld h, e                                       ; $62f9: $63
    ld h, e                                       ; $62fa: $63
    ld h, e                                       ; $62fb: $63
    ld a, a                                       ; $62fc: $7f
    ccf                                           ; $62fd: $3f
    inc b                                         ; $62fe: $04
    nop                                           ; $62ff: $00
    inc c                                         ; $6300: $0c
    ld h, e                                       ; $6301: $63
    inc b                                         ; $6302: $04
    nop                                           ; $6303: $00
    adc b                                         ; $6304: $88
    or b                                          ; $6305: $b0
    db $10                                        ; $6306: $10
    ld [hl], b                                    ; $6307: $70
    jr nc, jr_005_62ea                            ; $6308: $30 $e0

    ldh [$ff80], a                                ; $630a: $e0 $80
    add b                                         ; $630c: $80
    inc c                                         ; $630d: $0c
    nop                                           ; $630e: $00
    add b                                         ; $630f: $80
    add e                                         ; $6310: $83
    dec b                                         ; $6311: $05
    ret nz                                        ; $6312: $c0

    ldh [$ffb0], a                                ; $6313: $e0 $b0
    sbc b                                         ; $6315: $98
    adc b                                         ; $6316: $88
    add d                                         ; $6317: $82
    xor h                                         ; $6318: $ac
    adc h                                         ; $6319: $8c
    inc b                                         ; $631a: $04
    nop                                           ; $631b: $00
    add b                                         ; $631c: $80
    add e                                         ; $631d: $83
    inc b                                         ; $631e: $04
    inc bc                                        ; $631f: $03
    rlca                                          ; $6320: $07
    dec c                                         ; $6321: $0d
    add hl, de                                    ; $6322: $19
    ret nc                                        ; $6323: $d0

    inc de                                        ; $6324: $13
    ld de, $3137                                  ; $6325: $11 $37 $31
    or h                                          ; $6328: $b4
    add h                                         ; $6329: $84
    cp [hl]                                       ; $632a: $be
    add [hl]                                      ; $632b: $86
    jp c, Jump_005_6ec2                           ; $632c: $da $c2 $6e

    ld h, d                                       ; $632f: $62
    ld l, $22                                     ; $6330: $2e $22
    ld l, $22                                     ; $6332: $2e $22
    ld l, $26                                     ; $6334: $2e $26
    ld l, h                                       ; $6336: $6c
    ld h, h                                       ; $6337: $64
    cpl                                           ; $6338: $2f
    ld hl, $616f                                  ; $6339: $21 $6f $61
    ld e, a                                       ; $633c: $5f
    ld b, e                                       ; $633d: $43
    ld e, [hl]                                    ; $633e: $5e
    ld b, [hl]                                    ; $633f: $46
    ld e, h                                       ; $6340: $5c
    ld b, h                                       ; $6341: $44
    ld e, h                                       ; $6342: $5c
    ld b, h                                       ; $6343: $44
    ld l, h                                       ; $6344: $6c
    ld h, h                                       ; $6345: $64
    ld l, $26                                     ; $6346: $2e $26
    ld e, h                                       ; $6348: $5c
    ld c, h                                       ; $6349: $4c
    ret c                                         ; $634a: $d8

    ret z                                         ; $634b: $c8

    cp b                                          ; $634c: $b8
    sbc b                                         ; $634d: $98
    or b                                          ; $634e: $b0
    sub b                                         ; $634f: $90
    or b                                          ; $6350: $b0
    sub b                                         ; $6351: $90
    or b                                          ; $6352: $b0
    sub b                                         ; $6353: $90
    or b                                          ; $6354: $b0
    sub b                                         ; $6355: $90
    or b                                          ; $6356: $b0
    sub b                                         ; $6357: $90
    ld a, $32                                     ; $6358: $3e $32
    rla                                           ; $635a: $17
    inc de                                        ; $635b: $13
    dec de                                        ; $635c: $1b
    add hl, de                                    ; $635d: $19
    dec bc                                        ; $635e: $0b
    add hl, bc                                    ; $635f: $09
    dec bc                                        ; $6360: $0b
    add hl, bc                                    ; $6361: $09
    dec bc                                        ; $6362: $0b
    add hl, bc                                    ; $6363: $09
    dec bc                                        ; $6364: $0b
    add hl, bc                                    ; $6365: $09
    rrca                                          ; $6366: $0f
    add hl, bc                                    ; $6367: $09
    cp b                                          ; $6368: $b8
    sbc b                                         ; $6369: $98
    ei                                            ; $636a: $fb
    bit 3, [hl]                                   ; $636b: $cb $5e
    ld c, [hl]                                    ; $636d: $4e
    ld l, [hl]                                    ; $636e: $6e
    ld h, [hl]                                    ; $636f: $66
    ld a, $32                                     ; $6370: $3e $32
    ld e, $1e                                     ; $6372: $1e $1e
    inc b                                         ; $6374: $04
    ld [bc], a                                    ; $6375: $02
    ldh a, [$ff1f]                                ; $6376: $f0 $1f
    add hl, de                                    ; $6378: $19
    rst RST_10                                    ; $6379: $d7
    db $d3                                        ; $637a: $d3
    ld a, [hl]                                    ; $637b: $7e
    ld [hl], d                                    ; $637c: $72
    xor $66                                       ; $637d: $ee $66
    db $fc                                        ; $637f: $fc
    ld c, h                                       ; $6380: $4c
    ld hl, sp+$78                                 ; $6381: $f8 $78
    ret nz                                        ; $6383: $c0

    ld b, b                                       ; $6384: $40
    ret nz                                        ; $6385: $c0

    ld b, b                                       ; $6386: $40
    ld [bc], a                                    ; $6387: $02
    ld [bc], a                                    ; $6388: $02
    ld e, $1e                                     ; $6389: $1e $1e
    ld [hl-], a                                   ; $638b: $32
    ld [hl-], a                                   ; $638c: $32
    ld h, $22                                     ; $638d: $26 $22
    ld l, [hl]                                    ; $638f: $6e
    ld h, [hl]                                    ; $6390: $66
    ld e, a                                       ; $6391: $5f
    ld c, [hl]                                    ; $6392: $4e
    ld e, e                                       ; $6393: $5b
    ld c, e                                       ; $6394: $4b
    ld e, b                                       ; $6395: $58
    ld c, b                                       ; $6396: $48
    ret nz                                        ; $6397: $c0

    ld b, b                                       ; $6398: $40
    ld hl, sp+$78                                 ; $6399: $f8 $78
    db $ec                                        ; $639b: $ec
    ld c, h                                       ; $639c: $4c
    db $f4                                        ; $639d: $f4
    ld b, h                                       ; $639e: $44
    cp $66                                        ; $639f: $fe $66
    cp $72                                        ; $63a1: $fe $72
    sbc $d2                                       ; $63a3: $de $d2
    ld d, $12                                     ; $63a5: $16 $12
    ld e, b                                       ; $63a7: $58
    ld c, b                                       ; $63a8: $48
    ld e, b                                       ; $63a9: $58
    ld c, b                                       ; $63aa: $48
    ld e, b                                       ; $63ab: $58
    ld c, b                                       ; $63ac: $48
    ld e, b                                       ; $63ad: $58
    ld c, b                                       ; $63ae: $48
    ld e, b                                       ; $63af: $58
    ld c, b                                       ; $63b0: $48
    ld e, b                                       ; $63b1: $58
    ld c, b                                       ; $63b2: $48
    ld e, b                                       ; $63b3: $58
    ld c, b                                       ; $63b4: $48
    ld e, b                                       ; $63b5: $58
    ld c, b                                       ; $63b6: $48
    ld d, $12                                     ; $63b7: $16 $12
    ld d, $12                                     ; $63b9: $16 $12
    ld d, $12                                     ; $63bb: $16 $12
    ld d, $12                                     ; $63bd: $16 $12
    ld d, $12                                     ; $63bf: $16 $12
    ld d, $12                                     ; $63c1: $16 $12
    ld d, $12                                     ; $63c3: $16 $12
    ld d, $12                                     ; $63c5: $16 $12
    ld e, b                                       ; $63c7: $58
    ld c, b                                       ; $63c8: $48
    ld e, e                                       ; $63c9: $5b
    ld c, e                                       ; $63ca: $4b
    ld e, [hl]                                    ; $63cb: $5e
    ld c, [hl]                                    ; $63cc: $4e
    ld l, [hl]                                    ; $63cd: $6e
    ld h, [hl]                                    ; $63ce: $66
    ld [hl], $22                                  ; $63cf: $36 $22
    ld a, $32                                     ; $63d1: $3e $32
    ld e, $1e                                     ; $63d3: $1e $1e
    ld [bc], a                                    ; $63d5: $02
    ld [bc], a                                    ; $63d6: $02
    ld d, $12                                     ; $63d7: $16 $12
    sub $d2                                       ; $63d9: $d6 $d2
    halt                                          ; $63db: $76
    ld [hl], d                                    ; $63dc: $72
    xor $66                                       ; $63dd: $ee $66
    db $ec                                        ; $63df: $ec
    ld b, h                                       ; $63e0: $44
    db $fc                                        ; $63e1: $fc
    ld c, h                                       ; $63e2: $4c
    ld hl, sp+$78                                 ; $63e3: $f8 $78
    ret nz                                        ; $63e5: $c0

    ld b, b                                       ; $63e6: $40
    inc b                                         ; $63e7: $04
    nop                                           ; $63e8: $00
    add b                                         ; $63e9: $80
    add e                                         ; $63ea: $83
    inc b                                         ; $63eb: $04
    ld h, b                                       ; $63ec: $60
    ld [hl], b                                    ; $63ed: $70
    ld e, b                                       ; $63ee: $58
    ld c, h                                       ; $63ef: $4c
    add h                                         ; $63f0: $84
    ld d, h                                       ; $63f1: $54
    ld b, h                                       ; $63f2: $44
    ld e, [hl]                                    ; $63f3: $5e
    ld b, [hl]                                    ; $63f4: $46
    inc b                                         ; $63f5: $04
    nop                                           ; $63f6: $00
    add b                                         ; $63f7: $80
    add e                                         ; $63f8: $83
    inc b                                         ; $63f9: $04
    ld b, $0e                                     ; $63fa: $06 $0e
    ld a, [de]                                    ; $63fc: $1a
    ld [hl-], a                                   ; $63fd: $32
    rst RST_38                                    ; $63fe: $ff
    ld h, $22                                     ; $63ff: $26 $22
    ld l, [hl]                                    ; $6401: $6e
    ld h, d                                       ; $6402: $62
    ld e, d                                       ; $6403: $5a
    ld b, d                                       ; $6404: $42
    ld l, a                                       ; $6405: $6f
    ld h, e                                       ; $6406: $63
    dec [hl]                                      ; $6407: $35
    ld sp, $1117                                  ; $6408: $31 $17 $11
    dec de                                        ; $640b: $1b
    add hl, de                                    ; $640c: $19
    dec bc                                        ; $640d: $0b
    add hl, bc                                    ; $640e: $09
    dec bc                                        ; $640f: $0b
    ld [$0c0d], sp                                ; $6410: $08 $0d $0c
    ld e, b                                       ; $6413: $58
    ld c, b                                       ; $6414: $48
    ld e, e                                       ; $6415: $5b
    ld c, e                                       ; $6416: $4b
    ld e, [hl]                                    ; $6417: $5e
    ld c, [hl]                                    ; $6418: $4e
    ld l, [hl]                                    ; $6419: $6e
    ld h, [hl]                                    ; $641a: $66
    ld [hl], $22                                  ; $641b: $36 $22
    cp [hl]                                       ; $641d: $be
    or d                                          ; $641e: $b2
    sbc a                                         ; $641f: $9f
    sbc [hl]                                      ; $6420: $9e
    adc a                                         ; $6421: $8f
    adc a                                         ; $6422: $8f
    ld d, $12                                     ; $6423: $16 $12
    sub $d2                                       ; $6425: $d6 $d2
    halt                                          ; $6427: $76
    ld [hl], d                                    ; $6428: $72
    xor $66                                       ; $6429: $ee $66
    db $ec                                        ; $642b: $ec

jr_005_642c:
    ld b, h                                       ; $642c: $44
    db $fd                                        ; $642d: $fd
    ld c, l                                       ; $642e: $4d
    ld sp, hl                                     ; $642f: $f9
    ld a, c                                       ; $6430: $79
    pop af                                        ; $6431: $f1
    pop af                                        ; $6432: $f1
    ld c, [hl]                                    ; $6433: $4e
    ld b, d                                       ; $6434: $42
    sbc $c6                                       ; $6435: $de $c6
    sbc h                                         ; $6437: $9c
    adc h                                         ; $6438: $8c
    cp b                                          ; $6439: $b8
    adc b                                         ; $643a: $88
    cp b                                          ; $643b: $b8
    sbc b                                         ; $643c: $98
    or b                                          ; $643d: $b0
    sub b                                         ; $643e: $90
    ld [hl], b                                    ; $643f: $70
    db $10                                        ; $6440: $10
    ld [hl], b                                    ; $6441: $70
    jr nc, jr_005_6449                            ; $6442: $30 $05

    inc b                                         ; $6444: $04
    dec b                                         ; $6445: $05
    inc b                                         ; $6446: $04
    dec b                                         ; $6447: $05
    inc b                                         ; $6448: $04

jr_005_6449:
    dec c                                         ; $6449: $0d
    inc c                                         ; $644a: $0c
    dec bc                                        ; $644b: $0b
    ld [$090b], sp                                ; $644c: $08 $0b $09
    dec de                                        ; $644f: $1b
    add hl, de                                    ; $6450: $19
    rla                                           ; $6451: $17
    inc de                                        ; $6452: $13
    cp b                                          ; $6453: $b8
    cp b                                          ; $6454: $b8
    rst RST_20                                    ; $6455: $e7
    db $e3                                        ; $6456: $e3
    rst RST_18                                    ; $6457: $df
    call z, $90bc                                 ; $6458: $cc $bc $90
    or b                                          ; $645b: $b0
    and b                                         ; $645c: $a0
    ld [hl], b                                    ; $645d: $70
    jr nz, @+$63                                  ; $645e: $20 $61

    ld b, b                                       ; $6460: $40
    ld h, e                                       ; $6461: $63
    ld b, b                                       ; $6462: $40
    dec e                                         ; $6463: $1d
    dec e                                         ; $6464: $1d
    rst RST_20                                    ; $6465: $e7
    rst RST_00                                    ; $6466: $c7
    ei                                            ; $6467: $fb
    inc sp                                        ; $6468: $33
    ld l, l                                       ; $6469: $6d
    add hl, de                                    ; $646a: $19
    scf                                           ; $646b: $37
    dec c                                         ; $646c: $0d
    or $0c                                        ; $646d: $f6 $0c
    db $e3                                        ; $646f: $e3
    ld e, $83                                     ; $6470: $1e $83
    ld a, [hl]                                    ; $6472: $7e
    ld h, b                                       ; $6473: $60
    jr nz, @+$62                                  ; $6474: $20 $60

    jr nz, jr_005_64d8                            ; $6476: $20 $60

    jr nz, jr_005_64ea                            ; $6478: $20 $70

    jr nc, jr_005_642c                            ; $647a: $30 $b0

    db $10                                        ; $647c: $10
    or b                                          ; $647d: $b0
    call $f890                                    ; $647e: $cd $90 $f8
    sbc b                                         ; $6481: $98
    ret c                                         ; $6482: $d8

    ret z                                         ; $6483: $c8

    rla                                           ; $6484: $17
    inc de                                        ; $6485: $13
    ld a, l                                       ; $6486: $7d

jr_005_6487:
    ld a, l                                       ; $6487: $7d
    ld h, e                                       ; $6488: $63
    ld h, e                                       ; $6489: $63
    dec a                                         ; $648a: $3d
    ld sp, $1c1e                                  ; $648b: $31 $1e $1c
    inc de                                        ; $648e: $13
    ld e, $1b                                     ; $648f: $1e $1b
    inc de                                        ; $6491: $13
    dec de                                        ; $6492: $1b
    add hl, de                                    ; $6493: $19
    ld h, a                                       ; $6494: $67
    ld b, b                                       ; $6495: $40
    halt                                          ; $6496: $76
    ld b, c                                       ; $6497: $41
    ld a, [hl]                                    ; $6498: $7e
    ld hl, $b3ac                                  ; $6499: $21 $ac $b3
    or b                                          ; $649c: $b0
    sbc a                                         ; $649d: $9f
    ld e, h                                       ; $649e: $5c
    ld c, a                                       ; $649f: $4f
    xor a                                         ; $64a0: $af
    inc hl                                        ; $64a1: $23
    db $db                                        ; $64a2: $db
    sbc b                                         ; $64a3: $98
    dec bc                                        ; $64a4: $0b
    cp $3b                                        ; $64a5: $fe $3b
    cp $77                                        ; $64a7: $fe $77
    db $fc                                        ; $64a9: $fc
    ld [hl], a                                    ; $64aa: $77
    db $fd                                        ; $64ab: $fd
    rst RST_08                                    ; $64ac: $cf
    ld sp, hl                                     ; $64ad: $f9
    ld a, $f2                                     ; $64ae: $3e $f2
    db $fd                                        ; $64b0: $fd
    call nz, $19fb                                ; $64b1: $c4 $fb $19
    ld hl, sp-$38                                 ; $64b4: $f8 $c8
    cp [hl]                                       ; $64b6: $be
    cp [hl]                                       ; $64b7: $be
    adc $c6                                       ; $64b8: $ce $c6
    cp h                                          ; $64ba: $bc
    adc h                                         ; $64bb: $8c
    ld a, b                                       ; $64bc: $78
    jr c, jr_005_6487                             ; $64bd: $38 $c8

    ld a, b                                       ; $64bf: $78
    ld hl, sp-$38                                 ; $64c0: $f8 $c8
    ret c                                         ; $64c2: $d8

    sbc b                                         ; $64c3: $98
    dec c                                         ; $64c4: $0d
    ld [$0c0e], sp                                ; $64c5: $08 $0e $0c
    rlca                                          ; $64c8: $07
    rlca                                          ; $64c9: $07
    ld bc, $0801                                  ; $64ca: $01 $01 $08
    nop                                           ; $64cd: $00
    and b                                         ; $64ce: $a0
    rst RST_38                                    ; $64cf: $ff
    rst RST_00                                    ; $64d0: $c7
    rst RST_38                                    ; $64d1: $ff
    ld [hl-], a                                   ; $64d2: $32
    cp $0e                                        ; $64d3: $fe $0e
    or $fa                                        ; $64d5: $f6 $fa
    ld a, a                                       ; $64d7: $7f

jr_005_64d8:
    ld h, a                                       ; $64d8: $67
    db $dd                                        ; $64d9: $dd
    call $f8f8                                    ; $64da: $cd $f8 $f8
    nop                                           ; $64dd: $00
    nop                                           ; $64de: $00
    rst RST_38                                    ; $64df: $ff
    db $e3                                        ; $64e0: $e3
    db $fd                                        ; $64e1: $fd
    ld c, [hl]                                    ; $64e2: $4e
    rst RST_38                                    ; $64e3: $ff
    ld [hl], b                                    ; $64e4: $70
    rst RST_18                                    ; $64e5: $df
    ld l, a                                       ; $64e6: $6f
    xor $e6                                       ; $64e7: $ee $e6
    or a                                          ; $64e9: $b7

jr_005_64ea:
    or e                                          ; $64ea: $b3
    rra                                           ; $64eb: $1f
    rra                                           ; $64ec: $1f
    nop                                           ; $64ed: $00
    nop                                           ; $64ee: $00
    nop                                           ; $64ef: $00
    inc b                                         ; $64f0: $04
    nop                                           ; $64f1: $00
    add b                                         ; $64f2: $80
    add e                                         ; $64f3: $83
    inc c                                         ; $64f4: $0c
    rlca                                          ; $64f5: $07
    rrca                                          ; $64f6: $0f
    inc c                                         ; $64f7: $0c
    inc c                                         ; $64f8: $0c
    inc c                                         ; $64f9: $0c
    ld l, h                                       ; $64fa: $6c
    ld l, h                                       ; $64fb: $6c
    inc c                                         ; $64fc: $0c
    inc c                                         ; $64fd: $0c
    inc c                                         ; $64fe: $0c
    rrca                                          ; $64ff: $0f
    rlca                                          ; $6500: $07
    ld [$8000], sp                                ; $6501: $08 $00 $80
    add e                                         ; $6504: $83
    inc c                                         ; $6505: $0c
    sbc c                                         ; $6506: $99
    reti                                          ; $6507: $d9


    reti                                          ; $6508: $d9


    db $dd                                        ; $6509: $dd
    db $dd                                        ; $650a: $dd
    rst RST_18                                    ; $650b: $df
    rst RST_18                                    ; $650c: $df
    db $db                                        ; $650d: $db
    db $db                                        ; $650e: $db
    reti                                          ; $650f: $d9


    reti                                          ; $6510: $d9


    sbc c                                         ; $6511: $99
    ld [$1800], sp                                ; $6512: $08 $00 $18
    add b                                         ; $6515: $80
    ld [$8000], sp                                ; $6516: $08 $00 $80
    add e                                         ; $6519: $83
    inc c                                         ; $651a: $0c
    sbc a                                         ; $651b: $9f
    rst RST_18                                    ; $651c: $df
    ret c                                         ; $651d: $d8

    ret c                                         ; $651e: $d8

    ret c                                         ; $651f: $d8

    rst RST_18                                    ; $6520: $df
    rst RST_18                                    ; $6521: $df
    ret c                                         ; $6522: $d8

    ret c                                         ; $6523: $d8

    ret c                                         ; $6524: $d8

    ret c                                         ; $6525: $d8

    sbc b                                         ; $6526: $98
    ld [$0400], sp                                ; $6527: $08 $00 $04
    cp a                                          ; $652a: $bf
    ld b, $30                                     ; $652b: $06 $30
    inc b                                         ; $652d: $04
    cp a                                          ; $652e: $bf
    ld a, [bc]                                    ; $652f: $0a
    jr nc, jr_005_6536                            ; $6530: $30 $04

    nop                                           ; $6532: $00
    nop                                           ; $6533: $00
    nop                                           ; $6534: $00
    sbc b                                         ; $6535: $98

jr_005_6536:
    add d                                         ; $6536: $82
    ld bc, $8002                                  ; $6537: $01 $02 $80
    inc bc                                        ; $653a: $03
    inc b                                         ; $653b: $04
    adc d                                         ; $653c: $8a
    ld [bc], a                                    ; $653d: $02
    inc b                                         ; $653e: $04
    ld b, $02                                     ; $653f: $06 $02
    inc b                                         ; $6541: $04
    ld b, $02                                     ; $6542: $06 $02
    inc b                                         ; $6544: $04
    ld b, $02                                     ; $6545: $06 $02
    add b                                         ; $6547: $80
    inc bc                                        ; $6548: $03
    inc b                                         ; $6549: $04
    add d                                         ; $654a: $82
    ld [bc], a                                    ; $654b: $02
    ld bc, $000c                                  ; $654c: $01 $0c $00
    add c                                         ; $654f: $81
    inc bc                                        ; $6550: $03
    ld [de], a                                    ; $6551: $12
    nop                                           ; $6552: $00
    add c                                         ; $6553: $81
    inc bc                                        ; $6554: $03
    inc c                                         ; $6555: $0c
    nop                                           ; $6556: $00
    add h                                         ; $6557: $84
    rlca                                          ; $6558: $07
    nop                                           ; $6559: $00
    inc h                                         ; $655a: $24
    dec h                                         ; $655b: $25
    inc c                                         ; $655c: $0c
    nop                                           ; $655d: $00
    add h                                         ; $655e: $84
    inc h                                         ; $655f: $24
    dec h                                         ; $6560: $25
    nop                                           ; $6561: $00
    rlca                                          ; $6562: $07
    inc c                                         ; $6563: $0c
    nop                                           ; $6564: $00
    add h                                         ; $6565: $84
    ld [$2600], sp                                ; $6566: $08 $00 $26
    daa                                           ; $6569: $27
    inc b                                         ; $656a: $04
    nop                                           ; $656b: $00
    add b                                         ; $656c: $80
    inc b                                         ; $656d: $04
    add hl, bc                                    ; $656e: $09
    inc b                                         ; $656f: $04
    nop                                           ; $6570: $00
    add h                                         ; $6571: $84
    ld h, $27                                     ; $6572: $26 $27
    nop                                           ; $6574: $00
    ld [$000c], sp                                ; $6575: $08 $0c $00
    add h                                         ; $6578: $84
    inc bc                                        ; $6579: $03
    nop                                           ; $657a: $00
    jr z, jr_005_65a6                             ; $657b: $28 $29

    inc b                                         ; $657d: $04
    nop                                           ; $657e: $00
    add b                                         ; $657f: $80
    inc bc                                        ; $6580: $03
    dec c                                         ; $6581: $0d
    dec b                                         ; $6582: $05
    nop                                           ; $6583: $00
    add h                                         ; $6584: $84
    jr z, jr_005_65b0                             ; $6585: $28 $29

    nop                                           ; $6587: $00
    inc bc                                        ; $6588: $03
    inc c                                         ; $6589: $0c
    nop                                           ; $658a: $00
    add h                                         ; $658b: $84
    rlca                                          ; $658c: $07
    nop                                           ; $658d: $00
    ld a, [hl+]                                   ; $658e: $2a
    dec hl                                        ; $658f: $2b
    inc c                                         ; $6590: $0c
    nop                                           ; $6591: $00
    add h                                         ; $6592: $84
    ld a, [hl+]                                   ; $6593: $2a
    dec hl                                        ; $6594: $2b
    nop                                           ; $6595: $00
    rlca                                          ; $6596: $07
    inc c                                         ; $6597: $0c
    nop                                           ; $6598: $00
    add h                                         ; $6599: $84
    ld [$2c00], sp                                ; $659a: $08 $00 $2c
    dec l                                         ; $659d: $2d
    inc b                                         ; $659e: $04
    nop                                           ; $659f: $00
    add l                                         ; $65a0: $85
    db $10                                        ; $65a1: $10
    ld de, $1200                                  ; $65a2: $11 $00 $12
    db $10                                        ; $65a5: $10

jr_005_65a6:
    inc bc                                        ; $65a6: $03
    nop                                           ; $65a7: $00
    add h                                         ; $65a8: $84

jr_005_65a9:
    inc l                                         ; $65a9: $2c
    dec l                                         ; $65aa: $2d
    nop                                           ; $65ab: $00
    ld [$000c], sp                                ; $65ac: $08 $0c $00
    add h                                         ; $65af: $84

jr_005_65b0:
    inc bc                                        ; $65b0: $03
    nop                                           ; $65b1: $00
    jr nc, jr_005_65e5                            ; $65b2: $30 $31

    inc b                                         ; $65b4: $04
    nop                                           ; $65b5: $00
    add b                                         ; $65b6: $80
    inc b                                         ; $65b7: $04
    inc de                                        ; $65b8: $13
    add c                                         ; $65b9: $81
    inc de                                        ; $65ba: $13
    inc bc                                        ; $65bb: $03
    nop                                           ; $65bc: $00
    add h                                         ; $65bd: $84
    jr nc, jr_005_65f1                            ; $65be: $30 $31

    nop                                           ; $65c0: $00
    inc bc                                        ; $65c1: $03
    inc c                                         ; $65c2: $0c
    nop                                           ; $65c3: $00
    add h                                         ; $65c4: $84
    rlca                                          ; $65c5: $07
    nop                                           ; $65c6: $00
    inc l                                         ; $65c7: $2c
    dec l                                         ; $65c8: $2d
    inc c                                         ; $65c9: $0c
    nop                                           ; $65ca: $00
    add h                                         ; $65cb: $84
    inc l                                         ; $65cc: $2c
    dec l                                         ; $65cd: $2d
    nop                                           ; $65ce: $00
    rlca                                          ; $65cf: $07
    inc c                                         ; $65d0: $0c
    nop                                           ; $65d1: $00
    add h                                         ; $65d2: $84
    ld [$2e00], sp                                ; $65d3: $08 $00 $2e
    cpl                                           ; $65d6: $2f
    inc b                                         ; $65d7: $04
    nop                                           ; $65d8: $00
    add b                                         ; $65d9: $80
    inc bc                                        ; $65da: $03
    dec e                                         ; $65db: $1d
    dec b                                         ; $65dc: $05
    nop                                           ; $65dd: $00
    add h                                         ; $65de: $84
    ld l, $2f                                     ; $65df: $2e $2f
    nop                                           ; $65e1: $00
    ld [$000c], sp                                ; $65e2: $08 $0c $00

jr_005_65e5:
    add h                                         ; $65e5: $84
    inc bc                                        ; $65e6: $03
    nop                                           ; $65e7: $00
    jr nc, @+$33                                  ; $65e8: $30 $31

    inc b                                         ; $65ea: $04
    nop                                           ; $65eb: $00
    add b                                         ; $65ec: $80
    inc bc                                        ; $65ed: $03
    jr nz, jr_005_65f5                            ; $65ee: $20 $05

    nop                                           ; $65f0: $00

jr_005_65f1:
    add h                                         ; $65f1: $84
    jr nc, jr_005_6625                            ; $65f2: $30 $31

    nop                                           ; $65f4: $00

jr_005_65f5:
    inc bc                                        ; $65f5: $03
    inc c                                         ; $65f6: $0c
    nop                                           ; $65f7: $00
    add l                                         ; $65f8: $85
    rlca                                          ; $65f9: $07
    ld [hl-], a                                   ; $65fa: $32
    inc l                                         ; $65fb: $2c
    dec l                                         ; $65fc: $2d
    inc sp                                        ; $65fd: $33
    ld a, [bc]                                    ; $65fe: $0a
    nop                                           ; $65ff: $00
    add l                                         ; $6600: $85
    ld [hl-], a                                   ; $6601: $32
    inc l                                         ; $6602: $2c
    dec l                                         ; $6603: $2d
    inc sp                                        ; $6604: $33
    rlca                                          ; $6605: $07
    inc c                                         ; $6606: $0c
    nop                                           ; $6607: $00
    add c                                         ; $6608: $81
    ld [$0480], sp                                ; $6609: $08 $80 $04
    inc [hl]                                      ; $660c: $34
    ld a, [bc]                                    ; $660d: $0a
    nop                                           ; $660e: $00
    add b                                         ; $660f: $80
    inc b                                         ; $6610: $04
    inc [hl]                                      ; $6611: $34
    add c                                         ; $6612: $81
    ld [$000c], sp                                ; $6613: $08 $0c $00
    add c                                         ; $6616: $81
    inc bc                                        ; $6617: $03
    add b                                         ; $6618: $80
    inc b                                         ; $6619: $04
    jr c, jr_005_661f                             ; $661a: $38 $03

    nop                                           ; $661c: $00
    add h                                         ; $661d: $84
    rla                                           ; $661e: $17

jr_005_661f:
    jr jr_005_662b                                ; $661f: $18 $0a

    add hl, de                                    ; $6621: $19
    inc bc                                        ; $6622: $03
    nop                                           ; $6623: $00
    add b                                         ; $6624: $80

jr_005_6625:
    inc b                                         ; $6625: $04
    jr c, jr_005_65a9                             ; $6626: $38 $81

    inc bc                                        ; $6628: $03
    inc c                                         ; $6629: $0c
    nop                                           ; $662a: $00

jr_005_662b:
    add c                                         ; $662b: $81
    rlca                                          ; $662c: $07
    add b                                         ; $662d: $80
    inc b                                         ; $662e: $04
    inc a                                         ; $662f: $3c
    inc bc                                        ; $6630: $03
    nop                                           ; $6631: $00
    add h                                         ; $6632: $84
    ld a, [de]                                    ; $6633: $1a
    dec de                                        ; $6634: $1b
    ld c, $1c                                     ; $6635: $0e $1c
    inc bc                                        ; $6637: $03
    nop                                           ; $6638: $00
    add b                                         ; $6639: $80
    inc b                                         ; $663a: $04
    inc a                                         ; $663b: $3c
    add c                                         ; $663c: $81
    rlca                                          ; $663d: $07
    inc c                                         ; $663e: $0c
    nop                                           ; $663f: $00
    add c                                         ; $6640: $81
    ld [$0380], sp                                ; $6641: $08 $80 $03
    ld b, b                                       ; $6644: $40
    add c                                         ; $6645: $81
    inc hl                                        ; $6646: $23
    ld a, [bc]                                    ; $6647: $0a
    nop                                           ; $6648: $00
    add b                                         ; $6649: $80
    inc bc                                        ; $664a: $03
    ld b, b                                       ; $664b: $40
    add d                                         ; $664c: $82
    inc hl                                        ; $664d: $23
    ld [$000c], sp                                ; $664e: $08 $0c $00
    add c                                         ; $6651: $81
    inc bc                                        ; $6652: $03
    ld [de], a                                    ; $6653: $12
    nop                                           ; $6654: $00
    add c                                         ; $6655: $81
    inc bc                                        ; $6656: $03
    inc c                                         ; $6657: $0c
    nop                                           ; $6658: $00
    add d                                         ; $6659: $82
    ld bc, $8002                                  ; $665a: $01 $02 $80
    inc bc                                        ; $665d: $03
    inc b                                         ; $665e: $04
    adc d                                         ; $665f: $8a
    ld [bc], a                                    ; $6660: $02
    inc b                                         ; $6661: $04
    ld b, $02                                     ; $6662: $06 $02
    inc b                                         ; $6664: $04
    ld b, $02                                     ; $6665: $06 $02
    inc b                                         ; $6667: $04
    ld b, $02                                     ; $6668: $06 $02
    add b                                         ; $666a: $80
    inc bc                                        ; $666b: $03
    inc b                                         ; $666c: $04
    add d                                         ; $666d: $82
    ld [bc], a                                    ; $666e: $02
    ld bc, $000c                                  ; $666f: $01 $0c $00
    nop                                           ; $6672: $00
    ld bc, $699c                                  ; $6673: $01 $9c $69
    nop                                           ; $6676: $00
    ld bc, $7e01                                  ; $6677: $01 $01 $7e
    ld h, [hl]                                    ; $667a: $66
    add b                                         ; $667b: $80
    ld bc, $1000                                  ; $667c: $01 $00 $10
    nop                                           ; $667f: $00
    sub e                                         ; $6680: $93
    cp $01                                        ; $6681: $fe $01
    add c                                         ; $6683: $81
    ld a, a                                       ; $6684: $7f
    cp c                                          ; $6685: $b9
    ld a, a                                       ; $6686: $7f
    and l                                         ; $6687: $a5
    ld a, e                                       ; $6688: $7b
    and l                                         ; $6689: $a5
    ld a, e                                       ; $668a: $7b
    sbc c                                         ; $668b: $99
    ld h, e                                       ; $668c: $63
    add c                                         ; $668d: $81
    ld a, a                                       ; $668e: $7f
    ld a, a                                       ; $668f: $7f
    rst RST_38                                    ; $6690: $ff
    nop                                           ; $6691: $00
    db $db                                        ; $6692: $db
    rst RST_38                                    ; $6693: $ff
    inc b                                         ; $6694: $04
    inc h                                         ; $6695: $24
    sbc h                                         ; $6696: $9c
    rst RST_38                                    ; $6697: $ff
    rst RST_38                                    ; $6698: $ff
    inc h                                         ; $6699: $24
    inc h                                         ; $669a: $24
    rst RST_38                                    ; $669b: $ff
    inc h                                         ; $669c: $24
    rst RST_38                                    ; $669d: $ff
    db $db                                        ; $669e: $db
    db $db                                        ; $669f: $db
    nop                                           ; $66a0: $00
    ld a, a                                       ; $66a1: $7f
    ccf                                           ; $66a2: $3f
    add b                                         ; $66a3: $80
    nop                                           ; $66a4: $00
    add b                                         ; $66a5: $80
    nop                                           ; $66a6: $00
    cp a                                          ; $66a7: $bf
    ld a, a                                       ; $66a8: $7f
    add b                                         ; $66a9: $80
    nop                                           ; $66aa: $00
    rst RST_38                                    ; $66ab: $ff
    ld b, b                                       ; $66ac: $40
    rst RST_38                                    ; $66ad: $ff
    ld a, a                                       ; $66ae: $7f
    ld a, a                                       ; $66af: $7f
    nop                                           ; $66b0: $00
    rst RST_38                                    ; $66b1: $ff
    rst RST_38                                    ; $66b2: $ff
    inc b                                         ; $66b3: $04
    nop                                           ; $66b4: $00
    add [hl]                                      ; $66b5: $86
    rst RST_38                                    ; $66b6: $ff
    rst RST_38                                    ; $66b7: $ff

jr_005_66b8:
    nop                                           ; $66b8: $00
    nop                                           ; $66b9: $00
    rst RST_38                                    ; $66ba: $ff

Call_005_66bb:
    nop                                           ; $66bb: $00
    inc bc                                        ; $66bc: $03
    rst RST_38                                    ; $66bd: $ff
    ret nz                                        ; $66be: $c0

    nop                                           ; $66bf: $00
    cp $fd                                        ; $66c0: $fe $fd
    inc bc                                        ; $66c2: $03
    ld bc, $0103                                  ; $66c3: $01 $03 $01
    rst RST_38                                    ; $66c6: $ff
    db $fd                                        ; $66c7: $fd
    inc bc                                        ; $66c8: $03
    ld bc, $03ff                                  ; $66c9: $01 $ff $03
    rst RST_38                                    ; $66cc: $ff
    cp $fe                                        ; $66cd: $fe $fe
    ld c, c                                       ; $66cf: $49
    sub a                                         ; $66d0: $97
    ld c, c                                       ; $66d1: $49
    sub a                                         ; $66d2: $97
    ld a, [hl]                                    ; $66d3: $7e
    ld a, [hl]                                    ; $66d4: $7e
    ld c, c                                       ; $66d5: $49
    sub a                                         ; $66d6: $97
    ld c, c                                       ; $66d7: $49
    sub a                                         ; $66d8: $97
    ld a, [hl]                                    ; $66d9: $7e
    ld a, [hl]                                    ; $66da: $7e
    ld c, c                                       ; $66db: $49
    sub a                                         ; $66dc: $97
    ld c, c                                       ; $66dd: $49
    sub a                                         ; $66de: $97
    nop                                           ; $66df: $00
    ld a, [hl]                                    ; $66e0: $7e
    dec bc                                        ; $66e1: $0b
    add a                                         ; $66e2: $87
    ld c, c                                       ; $66e3: $49
    sub a                                         ; $66e4: $97
    ld c, c                                       ; $66e5: $49
    sub a                                         ; $66e6: $97
    ld c, c                                       ; $66e7: $49
    sub a                                         ; $66e8: $97
    ld c, c                                       ; $66e9: $49
    sub a                                         ; $66ea: $97
    ld c, c                                       ; $66eb: $49
    sub a                                         ; $66ec: $97
    ld c, c                                       ; $66ed: $49
    sub a                                         ; $66ee: $97
    ld c, c                                       ; $66ef: $49
    sub a                                         ; $66f0: $97
    ld c, c                                       ; $66f1: $49
    sub a                                         ; $66f2: $97
    ld c, c                                       ; $66f3: $49
    sub a                                         ; $66f4: $97
    ld c, c                                       ; $66f5: $49
    sub a                                         ; $66f6: $97
    ld c, c                                       ; $66f7: $49
    sub a                                         ; $66f8: $97
    ld c, c                                       ; $66f9: $49
    sub a                                         ; $66fa: $97
    inc bc                                        ; $66fb: $03
    rst RST_38                                    ; $66fc: $ff
    ld a, [hl]                                    ; $66fd: $7e
    ld a, [hl]                                    ; $66fe: $7e
    ld [$8600], sp                                ; $66ff: $08 $00 $86
    ld [$4a00], sp                                ; $6702: $08 $00 $4a
    nop                                           ; $6705: $00
    nop                                           ; $6706: $00
    ld c, d                                       ; $6707: $4a
    ld [$8000], sp                                ; $6708: $08 $00 $80
    add e                                         ; $670b: $83
    dec b                                         ; $670c: $05
    rlca                                          ; $670d: $07
    rrca                                          ; $670e: $0f
    inc e                                         ; $670f: $1c
    jr @+$1a                                      ; $6710: $18 $18

    ld b, $00                                     ; $6712: $06 $00
    inc b                                         ; $6714: $04
    rst RST_38                                    ; $6715: $ff
    inc c                                         ; $6716: $0c
    nop                                           ; $6717: $00
    add b                                         ; $6718: $80
    add e                                         ; $6719: $83
    ld [de], a                                    ; $671a: $12
    ldh [$fff0], a                                ; $671b: $e0 $f0
    jr c, @+$1a                                   ; $671d: $38 $18

    jr @+$1a                                      ; $671f: $18 $18

    jr jr_005_673b                                ; $6721: $18 $18

    jr @+$1a                                      ; $6723: $18 $18

    jr jr_005_673f                                ; $6725: $18 $18

    jr jr_005_6741                                ; $6727: $18 $18

    jr jr_005_6747                                ; $6729: $18 $1c

    rrca                                          ; $672b: $0f
    rlca                                          ; $672c: $07
    ld b, $00                                     ; $672d: $06 $00
    inc b                                         ; $672f: $04
    jr jr_005_66b8                                ; $6730: $18 $86

    jr c, jr_005_676c                             ; $6732: $38 $38

    ldh a, [$fff0]                                ; $6734: $f0 $f0
    ldh [$ffe0], a                                ; $6736: $e0 $e0
    ld b, $00                                     ; $6738: $06 $00
    sub b                                         ; $673a: $90

jr_005_673b:
    ld h, e                                       ; $673b: $63
    ld e, $c7                                     ; $673c: $1e $c7
    inc a                                         ; $673e: $3c

jr_005_673f:
    rst RST_08                                    ; $673f: $cf
    inc a                                         ; $6740: $3c

jr_005_6741:
    push bc                                       ; $6741: $c5
    ld a, $45                                     ; $6742: $3e $45
    ld a, $62                                     ; $6744: $3e $62
    rra                                           ; $6746: $1f

jr_005_6747:
    ld sp, $1c0f                                  ; $6747: $31 $0f $1c
    inc bc                                        ; $674a: $03
    add b                                         ; $674b: $80
    add c                                         ; $674c: $81
    ld b, $01                                     ; $674d: $06 $01
    ld h, e                                       ; $674f: $63
    ld h, e                                       ; $6750: $63
    or e                                          ; $6751: $b3
    ld sp, hl                                     ; $6752: $f9
    cp $84                                        ; $6753: $fe $84
    rra                                           ; $6755: $1f
    ldh [$ff8f], a                                ; $6756: $e0 $8f
    ldh a, [$ff80]                                ; $6758: $f0 $80
    add c                                         ; $675a: $81
    ld b, $f7                                     ; $675b: $06 $f7
    rst RST_28                                    ; $675d: $ef
    rst RST_08                                    ; $675e: $cf
    rst RST_08                                    ; $675f: $cf
    rst RST_28                                    ; $6760: $ef
    rst RST_30                                    ; $6761: $f7
    adc d                                         ; $6762: $8a
    rst RST_38                                    ; $6763: $ff
    nop                                           ; $6764: $00
    rst RST_38                                    ; $6765: $ff
    nop                                           ; $6766: $00
    rst RST_38                                    ; $6767: $ff
    nop                                           ; $6768: $00
    rst RST_38                                    ; $6769: $ff
    nop                                           ; $676a: $00
    rst RST_38                                    ; $676b: $ff

jr_005_676c:
    nop                                           ; $676c: $00
    add b                                         ; $676d: $80
    add [hl]                                      ; $676e: $86
    dec b                                         ; $676f: $05
    inc b                                         ; $6770: $04
    inc b                                         ; $6771: $04
    ld c, h                                       ; $6772: $4c
    ld a, h                                       ; $6773: $7c
    ld a, b                                       ; $6774: $78
    sub b                                         ; $6775: $90
    rst RST_38                                    ; $6776: $ff
    nop                                           ; $6777: $00
    rst RST_38                                    ; $6778: $ff
    nop                                           ; $6779: $00
    rst RST_38                                    ; $677a: $ff
    nop                                           ; $677b: $00
    rst RST_38                                    ; $677c: $ff
    nop                                           ; $677d: $00
    rst RST_38                                    ; $677e: $ff
    nop                                           ; $677f: $00
    rst RST_38                                    ; $6780: $ff
    nop                                           ; $6781: $00
    rst RST_38                                    ; $6782: $ff
    nop                                           ; $6783: $00
    rst RST_38                                    ; $6784: $ff
    nop                                           ; $6785: $00
    add b                                         ; $6786: $80
    add [hl]                                      ; $6787: $86
    inc b                                         ; $6788: $04
    ld [bc], a                                    ; $6789: $02
    ld b, d                                       ; $678a: $42
    ld b, $4e                                     ; $678b: $06 $4e
    adc b                                         ; $678d: $88
    adc e                                         ; $678e: $8b
    ld a, h                                       ; $678f: $7c
    sub b                                         ; $6790: $90
    ld a, a                                       ; $6791: $7f
    inc b                                         ; $6792: $04
    ei                                            ; $6793: $fb
    ld h, h                                       ; $6794: $64
    ei                                            ; $6795: $fb
    add b                                         ; $6796: $80
    add [hl]                                      ; $6797: $86
    dec b                                         ; $6798: $05
    inc e                                         ; $6799: $1c
    inc e                                         ; $679a: $1c
    inc e                                         ; $679b: $1c
    dec a                                         ; $679c: $3d
    ld a, e                                       ; $679d: $7b
    xor d                                         ; $679e: $aa
    inc bc                                        ; $679f: $03
    rst RST_38                                    ; $67a0: $ff
    inc a                                         ; $67a1: $3c
    rst RST_38                                    ; $67a2: $ff
    ld [hl], b                                    ; $67a3: $70
    rst RST_38                                    ; $67a4: $ff
    ld de, $11fe                                  ; $67a5: $11 $fe $11
    cp $1d                                        ; $67a8: $fe $1d
    cp $19                                        ; $67aa: $fe $19
    cp $33                                        ; $67ac: $fe $33
    db $fc                                        ; $67ae: $fc
    ld [hl+], a                                   ; $67af: $22
    db $fc                                        ; $67b0: $fc
    ld b, [hl]                                    ; $67b1: $46
    ld hl, sp-$24                                 ; $67b2: $f8 $dc
    ldh [rSC], a                                  ; $67b4: $e0 $02
    ld bc, $001f                                  ; $67b6: $01 $1f $00
    ld sp, $210f                                  ; $67b9: $31 $0f $21
    rra                                           ; $67bc: $1f
    daa                                           ; $67bd: $27
    rra                                           ; $67be: $1f
    inc hl                                        ; $67bf: $23
    rra                                           ; $67c0: $1f
    ld sp, $1d0f                                  ; $67c1: $31 $0f $1d
    inc bc                                        ; $67c4: $03
    sbc c                                         ; $67c5: $99
    ldh [rIE], a                                  ; $67c6: $e0 $ff
    add b                                         ; $67c8: $80
    add b                                         ; $67c9: $80
    add c                                         ; $67ca: $81
    ld b, $cb                                     ; $67cb: $06 $cb
    sbc a                                         ; $67cd: $9f
    sbc [hl]                                      ; $67ce: $9e

jr_005_67cf:
    cp [hl]                                       ; $67cf: $be
    cp a                                          ; $67d0: $bf
    cp a                                          ; $67d1: $bf
    adc b                                         ; $67d2: $88
    cp a                                          ; $67d3: $bf
    ld b, b                                       ; $67d4: $40
    ret c                                         ; $67d5: $d8

    ccf                                           ; $67d6: $3f
    add $3f                                       ; $67d7: $c6 $3f
    db $e3                                        ; $67d9: $e3
    rra                                           ; $67da: $1f
    add b                                         ; $67db: $80
    add c                                         ; $67dc: $81
    inc b                                         ; $67dd: $04
    ld a, a                                       ; $67de: $7f
    ccf                                           ; $67df: $3f
    xor a                                         ; $67e0: $af
    db $eb                                        ; $67e1: $eb
    add [hl]                                      ; $67e2: $86
    ccf                                           ; $67e3: $3f
    ret nz                                        ; $67e4: $c0

    ccf                                           ; $67e5: $3f
    ret nz                                        ; $67e6: $c0

    ld a, a                                       ; $67e7: $7f
    add b                                         ; $67e8: $80
    add b                                         ; $67e9: $80
    add c                                         ; $67ea: $81
    dec b                                         ; $67eb: $05
    rst RST_20                                    ; $67ec: $e7
    rst RST_08                                    ; $67ed: $cf
    sbc l                                         ; $67ee: $9d
    cp c                                          ; $67ef: $b9
    ei                                            ; $67f0: $fb
    add [hl]                                      ; $67f1: $86
    ld a, h                                       ; $67f2: $7c
    add e                                         ; $67f3: $83
    add c                                         ; $67f4: $81
    ld a, a                                       ; $67f5: $7f
    pop bc                                        ; $67f6: $c1
    ccf                                           ; $67f7: $3f
    add b                                         ; $67f8: $80
    add [hl]                                      ; $67f9: $86
    inc b                                         ; $67fa: $04
    rrca                                          ; $67fb: $0f
    ld bc, $0301                                  ; $67fc: $01 $01 $03
    sub b                                         ; $67ff: $90
    ld a, e                                       ; $6800: $7b
    rlca                                          ; $6801: $07
    adc h                                         ; $6802: $8c
    di                                            ; $6803: $f3
    sbc h                                         ; $6804: $9c

jr_005_6805:
    db $e3                                        ; $6805: $e3
    jr c, jr_005_67cf                             ; $6806: $38 $c7

    ldh a, [rIF]                                  ; $6808: $f0 $0f
    ld h, c                                       ; $680a: $61
    cp $47                                        ; $680b: $fe $47
    ld hl, sp-$40                                 ; $680d: $f8 $c0
    rst RST_38                                    ; $680f: $ff
    add b                                         ; $6810: $80
    add [hl]                                      ; $6811: $86
    add hl, bc                                    ; $6812: $09
    ei                                            ; $6813: $fb
    ld a, a                                       ; $6814: $7f
    dec sp                                        ; $6815: $3b
    add hl, sp                                    ; $6816: $39
    add hl, sp                                    ; $6817: $39
    ld a, c                                       ; $6818: $79
    pop af                                        ; $6819: $f1
    di                                            ; $681a: $f3
    rst RST_28                                    ; $681b: $ef
    sbc l                                         ; $681c: $9d
    sub b                                         ; $681d: $90
    ldh [rOBP0], a                                ; $681e: $e0 $48
    ldh a, [rOBP0]                                ; $6820: $f0 $48
    ldh a, [rBCPS]                                ; $6822: $f0 $68
    ldh a, [rBCPS]                                ; $6824: $f0 $68
    ldh a, [rOBP0]                                ; $6826: $f0 $48
    ldh a, [rOBP0]                                ; $6828: $f0 $48
    ldh a, [$ff88]                                ; $682a: $f0 $88
    ldh a, [$ff0d]                                ; $682c: $f0 $0d
    inc bc                                        ; $682e: $03
    ld [$0807], sp                                ; $682f: $08 $07 $08
    rlca                                          ; $6832: $07
    add hl, bc                                    ; $6833: $09
    rlca                                          ; $6834: $07
    inc c                                         ; $6835: $0c
    inc bc                                        ; $6836: $03
    rlca                                          ; $6837: $07
    nop                                           ; $6838: $00
    ld bc, $0003                                  ; $6839: $01 $03 $00
    sub [hl]                                      ; $683c: $96
    ld e, [hl]                                    ; $683d: $5e
    add c                                         ; $683e: $81
    cp $81                                        ; $683f: $fe $81
    sbc b                                         ; $6841: $98
    rst RST_20                                    ; $6842: $e7
    ldh [c], a                                    ; $6843: $e2
    rst RST_38                                    ; $6844: $ff
    ld e, $ff                                     ; $6845: $1e $ff
    nop                                           ; $6847: $00
    rst RST_38                                    ; $6848: $ff
    cp $01                                        ; $6849: $fe $01
    ld b, $01                                     ; $684b: $06 $01
    ld a, [hl]                                    ; $684d: $7e
    add c                                         ; $684e: $81
    cp $81                                        ; $684f: $fe $81
    sbc b                                         ; $6851: $98
    rst RST_20                                    ; $6852: $e7
    add b                                         ; $6853: $80
    add l                                         ; $6854: $85
    dec b                                         ; $6855: $05
    ldh [c], a                                    ; $6856: $e2
    ld e, $4f                                     ; $6857: $1e $4f
    ccf                                           ; $6859: $3f
    inc bc                                        ; $685a: $03
    sbc l                                         ; $685b: $9d
    rst RST_38                                    ; $685c: $ff
    nop                                           ; $685d: $00
    rst RST_30                                    ; $685e: $f7
    ld [$18ef], sp                                ; $685f: $08 $ef $18
    rrca                                          ; $6862: $0f
    ld hl, sp+$17                                 ; $6863: $f8 $17
    ld hl, sp-$20                                 ; $6865: $f8 $e0
    rst RST_38                                    ; $6867: $ff
    ldh a, [rIE]                                  ; $6868: $f0 $ff
    cp a                                          ; $686a: $bf
    rst RST_38                                    ; $686b: $ff
    and $1f                                       ; $686c: $e6 $1f
    ldh [$ff1f], a                                ; $686e: $e0 $1f
    pop hl                                        ; $6870: $e1
    ld e, $c7                                     ; $6871: $1e $c7
    jr c, jr_005_6805                             ; $6873: $38 $90

    ld a, a                                       ; $6875: $7f
    db $10                                        ; $6876: $10
    rst RST_38                                    ; $6877: $ff
    jr c, jr_005_687d                             ; $6878: $38 $03

    rst RST_38                                    ; $687a: $ff
    sub b                                         ; $687b: $90
    ld e, h                                       ; $687c: $5c

jr_005_687d:
    and e                                         ; $687d: $a3
    pop de                                        ; $687e: $d1
    cpl                                           ; $687f: $2f
    add c                                         ; $6880: $81
    ld a, a                                       ; $6881: $7f
    ld b, $ff                                     ; $6882: $06 $ff
    ld a, c                                       ; $6884: $79
    rst RST_38                                    ; $6885: $ff
    ld b, b                                       ; $6886: $40
    rst RST_38                                    ; $6887: $ff
    rst RST_20                                    ; $6888: $e7
    ld hl, sp+$06                                 ; $6889: $f8 $06
    ld hl, sp-$80                                 ; $688b: $f8 $80
    add l                                         ; $688d: $85
    dec b                                         ; $688e: $05
    ld h, b                                       ; $688f: $60
    ld de, $0601                                  ; $6890: $11 $01 $06
    ld a, [$6183]                                 ; $6893: $fa $83 $61
    sbc [hl]                                      ; $6896: $9e
    rst RST_38                                    ; $6897: $ff
    inc bc                                        ; $6898: $03
    nop                                           ; $6899: $00
    adc e                                         ; $689a: $8b
    sbc b                                         ; $689b: $98
    ldh [$fff0], a                                ; $689c: $e0 $f0
    nop                                           ; $689e: $00
    ld b, b                                       ; $689f: $40
    add b                                         ; $68a0: $80
    ld b, b                                       ; $68a1: $40
    add b                                         ; $68a2: $80
    ret nz                                        ; $68a3: $c0

    nop                                           ; $68a4: $00
    add b                                         ; $68a5: $80
    dec b                                         ; $68a6: $05
    nop                                           ; $68a7: $00
    add l                                         ; $68a8: $85
    inc bc                                        ; $68a9: $03
    nop                                           ; $68aa: $00
    inc bc                                        ; $68ab: $03
    nop                                           ; $68ac: $00
    ld bc, $000c                                  ; $68ad: $01 $0c $00
    add a                                         ; $68b0: $87
    rst RST_38                                    ; $68b1: $ff
    add b                                         ; $68b2: $80
    ld a, a                                       ; $68b3: $7f
    rst RST_38                                    ; $68b4: $ff
    nop                                           ; $68b5: $00
    ld a, a                                       ; $68b6: $7f
    nop                                           ; $68b7: $00
    inc bc                                        ; $68b8: $03
    inc bc                                        ; $68b9: $03
    or e                                          ; $68ba: $b3
    ld [bc], a                                    ; $68bb: $02
    ld bc, $0001                                  ; $68bc: $01 $01 $00
    nop                                           ; $68bf: $00
    adc a                                         ; $68c0: $8f
    rst RST_38                                    ; $68c1: $ff
    pop bc                                        ; $68c2: $c1
    cp a                                          ; $68c3: $bf
    or b                                          ; $68c4: $b0
    adc a                                         ; $68c5: $8f
    jp c, Jump_005_4b40                           ; $68c6: $da $40 $4b

    ld b, b                                       ; $68c9: $40
    set 0, b                                      ; $68ca: $cb $c0
    pop bc                                        ; $68cc: $c1
    ld c, [hl]                                    ; $68cd: $4e
    adc $9f                                       ; $68ce: $ce $9f
    rst RST_28                                    ; $68d0: $ef
    rst RST_38                                    ; $68d1: $ff
    dec hl                                        ; $68d2: $2b
    cp $0b                                        ; $68d3: $fe $0b
    cp $e2                                        ; $68d5: $fe $e2
    ld e, $b3                                     ; $68d7: $1e $b3
    rrca                                          ; $68d9: $0f
    or b                                          ; $68da: $b0
    rrca                                          ; $68db: $0f
    add b                                         ; $68dc: $80
    ld a, a                                       ; $68dd: $7f
    ld [hl], c                                    ; $68de: $71
    rst RST_38                                    ; $68df: $ff
    ld c, $f0                                     ; $68e0: $0e $f0
    db $fc                                        ; $68e2: $fc
    nop                                           ; $68e3: $00
    ld hl, sp+$38                                 ; $68e4: $f8 $38
    ret z                                         ; $68e6: $c8

    ld hl, sp+$30                                 ; $68e7: $f8 $30
    ldh a, [rLCDC]                                ; $68e9: $f0 $40
    ret nz                                        ; $68eb: $c0

    add b                                         ; $68ec: $80
    add b                                         ; $68ed: $80
    ld c, $00                                     ; $68ee: $0e $00
    inc bc                                        ; $68f0: $03
    inc bc                                        ; $68f1: $03
    and c                                         ; $68f2: $a1
    ld [bc], a                                    ; $68f3: $02
    ld c, d                                       ; $68f4: $4a
    ld e, e                                       ; $68f5: $5b
    ld c, [hl]                                    ; $68f6: $4e
    ld e, a                                       ; $68f7: $5f
    ld d, b                                       ; $68f8: $50
    ld c, [hl]                                    ; $68f9: $4e
    ld e, [hl]                                    ; $68fa: $5e
    ld b, b                                       ; $68fb: $40
    ld d, a                                       ; $68fc: $57
    ld b, b                                       ; $68fd: $40
    sub [hl]                                      ; $68fe: $96
    add c                                         ; $68ff: $81
    sub l                                         ; $6900: $95
    add e                                         ; $6901: $83
    cp l                                          ; $6902: $bd
    add e                                         ; $6903: $83
    ld d, e                                       ; $6904: $53
    rst RST_18                                    ; $6905: $df
    ld [hl], e                                    ; $6906: $73
    rst RST_38                                    ; $6907: $ff
    add c                                         ; $6908: $81
    ld a, a                                       ; $6909: $7f
    pop af                                        ; $690a: $f1
    rrca                                          ; $690b: $0f
    di                                            ; $690c: $f3
    rrca                                          ; $690d: $0f
    ld [hl], e                                    ; $690e: $73
    adc a                                         ; $690f: $8f
    or e                                          ; $6910: $b3
    rst RST_08                                    ; $6911: $cf
    or e                                          ; $6912: $b3
    rst RST_08                                    ; $6913: $cf
    inc c                                         ; $6914: $0c
    nop                                           ; $6915: $00
    pop hl                                        ; $6916: $e1
    ld hl, sp+$30                                 ; $6917: $f8 $30
    ret c                                         ; $6919: $d8

    ldh a, [rSB]                                  ; $691a: $f0 $01
    ld bc, $0000                                  ; $691c: $01 $00 $00
    ccf                                           ; $691f: $3f
    ccf                                           ; $6920: $3f
    pop af                                        ; $6921: $f1
    ldh [$fffd], a                                ; $6922: $e0 $fd
    ld a, [de]                                    ; $6924: $1a
    rra                                           ; $6925: $1f
    rlca                                          ; $6926: $07
    rlca                                          ; $6927: $07
    ld bc, $0202                                  ; $6928: $01 $02 $02
    cp l                                          ; $692b: $bd
    add e                                         ; $692c: $83

jr_005_692d:
    push af                                       ; $692d: $f5
    add e                                         ; $692e: $83
    halt                                          ; $692f: $76
    add c                                         ; $6930: $81
    ld e, a                                       ; $6931: $5f
    jr nz, @+$4f                                  ; $6932: $20 $4d

    ldh [$ffdd], a                                ; $6934: $e0 $dd
    ret nz                                        ; $6936: $c0

    sub l                                         ; $6937: $95
    adc b                                         ; $6938: $88
    ld h, $1d                                     ; $6939: $26 $1d
    or e                                          ; $693b: $b3
    rst RST_08                                    ; $693c: $cf
    or c                                          ; $693d: $b1
    rst RST_08                                    ; $693e: $cf
    ld [hl], c                                    ; $693f: $71
    adc a                                         ; $6940: $8f
    reti                                          ; $6941: $d9


    rlca                                          ; $6942: $07
    ret c                                         ; $6943: $d8

    rlca                                          ; $6944: $07
    ld a, [hl-]                                   ; $6945: $3a
    rst RST_00                                    ; $6946: $c7
    dec de                                        ; $6947: $1b
    rst RST_20                                    ; $6948: $e7
    dec c                                         ; $6949: $0d
    di                                            ; $694a: $f3
    jr c, jr_005_692d                             ; $694b: $38 $e0

    ld [hl], b                                    ; $694d: $70
    ret nz                                        ; $694e: $c0

    ldh a, [$ff80]                                ; $694f: $f0 $80
    db $fc                                        ; $6951: $fc
    sbc h                                         ; $6952: $9c
    db $eb                                        ; $6953: $eb
    rst RST_30                                    ; $6954: $f7
    rrca                                          ; $6955: $0f
    rst RST_38                                    ; $6956: $ff
    ld a, a                                       ; $6957: $7f
    ldh a, [$fff8]                                ; $6958: $f0 $f8
    add b                                         ; $695a: $80
    dec b                                         ; $695b: $05
    inc b                                         ; $695c: $04
    ld b, $05                                     ; $695d: $06 $05
    ld c, $09                                     ; $695f: $0e $09
    dec a                                         ; $6961: $3d
    inc sp                                        ; $6962: $33
    ld [hl], a                                    ; $6963: $77
    ld c, [hl]                                    ; $6964: $4e
    sbc $b8                                       ; $6965: $de $b8
    ret c                                         ; $6967: $d8

    ldh [$ff60], a                                ; $6968: $e0 $60
    nop                                           ; $696a: $00
    ld b, $fd                                     ; $696b: $06 $fd
    ld a, $fc                                     ; $696d: $3e $fc
    cp $c4                                        ; $696f: $fe $c4
    rst RST_38                                    ; $6971: $ff
    ld [bc], a                                    ; $6972: $02
    add e                                         ; $6973: $83
    ld [bc], a                                    ; $6974: $02
    inc bc                                        ; $6975: $03
    ld [bc], a                                    ; $6976: $02
    inc bc                                        ; $6977: $03
    inc bc                                        ; $6978: $03
    ld bc, $34a0                                  ; $6979: $01 $a0 $34
    ei                                            ; $697c: $fb
    ld a, a                                       ; $697d: $7f
    ret z                                         ; $697e: $c8

    ld a, a                                       ; $697f: $7f
    add $73                                       ; $6980: $c6 $73
    pop bc                                        ; $6982: $c1
    pop hl                                        ; $6983: $e1
    add c                                         ; $6984: $81
    pop hl                                        ; $6985: $e1
    add b                                         ; $6986: $80
    ret nz                                        ; $6987: $c0

    add b                                         ; $6988: $80
    add b                                         ; $6989: $80
    nop                                           ; $698a: $00
    ld h, b                                       ; $698b: $60
    ret nz                                        ; $698c: $c0

    ld h, b                                       ; $698d: $60
    ret nz                                        ; $698e: $c0

    ld [hl], b                                    ; $698f: $70
    ret nz                                        ; $6990: $c0

    cp b                                          ; $6991: $b8
    ld h, b                                       ; $6992: $60
    call c, $e638                                 ; $6993: $dc $38 $e6
    db $fc                                        ; $6996: $fc
    ld a, [hl-]                                   ; $6997: $3a
    ld e, $06                                     ; $6998: $1e $06
    ld b, $00                                     ; $699a: $06 $00
    sbc b                                         ; $699c: $98
    rrca                                          ; $699d: $0f
    rrca                                          ; $699e: $0f
    inc de                                        ; $699f: $13
    jr jr_005_69b7                                ; $69a0: $18 $15

    inc de                                        ; $69a2: $13
    dec e                                         ; $69a3: $1d
    rla                                           ; $69a4: $17
    ld e, $17                                     ; $69a5: $1e $17
    dec de                                        ; $69a7: $1b
    rra                                           ; $69a8: $1f
    ccf                                           ; $69a9: $3f
    ccf                                           ; $69aa: $3f
    scf                                           ; $69ab: $37
    daa                                           ; $69ac: $27
    dec hl                                        ; $69ad: $2b
    jr z, jr_005_69eb                             ; $69ae: $28 $3b

    jr z, @+$39                                   ; $69b0: $28 $37

    rra                                           ; $69b2: $1f
    dec c                                         ; $69b3: $0d
    dec bc                                        ; $69b4: $0b
    inc bc                                        ; $69b5: $03
    rlca                                          ; $69b6: $07

jr_005_69b7:
    adc d                                         ; $69b7: $8a
    dec b                                         ; $69b8: $05
    rrca                                          ; $69b9: $0f
    dec b                                         ; $69ba: $05
    rra                                           ; $69bb: $1f
    inc bc                                        ; $69bc: $03
    rra                                           ; $69bd: $1f
    nop                                           ; $69be: $00
    rrca                                          ; $69bf: $0f
    nop                                           ; $69c0: $00
    inc bc                                        ; $69c1: $03
    dec de                                        ; $69c2: $1b
    nop                                           ; $69c3: $00
    add h                                         ; $69c4: $84
    db $fc                                        ; $69c5: $fc
    db $fc                                        ; $69c6: $fc
    or b                                          ; $69c7: $b0
    ld [hl], b                                    ; $69c8: $70
    add b                                         ; $69c9: $80
    add e                                         ; $69ca: $83
    dec b                                         ; $69cb: $05
    db $fc                                        ; $69cc: $fc
    ldh a, [$fff0]                                ; $69cd: $f0 $f0
    ldh a, [$fff8]                                ; $69cf: $f0 $f8
    sub a                                         ; $69d1: $97
    add sp, -$28                                  ; $69d2: $e8 $d8
    xor b                                         ; $69d4: $a8
    ld a, b                                       ; $69d5: $78
    xor b                                         ; $69d6: $a8
    ld a, b                                       ; $69d7: $78
    ret c                                         ; $69d8: $d8

    ldh a, [$ffb0]                                ; $69d9: $f0 $b0
    ld [hl], b                                    ; $69db: $70
    ret z                                         ; $69dc: $c8

    ret c                                         ; $69dd: $d8

    call z, $e044                                 ; $69de: $cc $44 $e0
    ld b, b                                       ; $69e1: $40
    ldh a, [$ff80]                                ; $69e2: $f0 $80
    ldh a, [rP1]                                  ; $69e4: $f0 $00
    add sp, $00                                   ; $69e6: $e8 $00
    call nz, Call_000_001b                        ; $69e8: $c4 $1b $00

jr_005_69eb:
    and l                                         ; $69eb: $a5
    rlca                                          ; $69ec: $07
    rlca                                          ; $69ed: $07
    rrca                                          ; $69ee: $0f
    add hl, bc                                    ; $69ef: $09
    dec bc                                        ; $69f0: $0b
    rrca                                          ; $69f1: $0f
    scf                                           ; $69f2: $37
    rla                                           ; $69f3: $17
    ld a, a                                       ; $69f4: $7f
    ld [hl], a                                    ; $69f5: $77
    rst RST_38                                    ; $69f6: $ff
    ld a, a                                       ; $69f7: $7f
    rst RST_38                                    ; $69f8: $ff
    rst RST_28                                    ; $69f9: $ef
    di                                            ; $69fa: $f3
    rst RST_38                                    ; $69fb: $ff
    ei                                            ; $69fc: $fb
    ret nc                                        ; $69fd: $d0

    push de                                       ; $69fe: $d5
    ld d, h                                       ; $69ff: $54
    ld e, l                                       ; $6a00: $5d
    ld d, h                                       ; $6a01: $54
    dec bc                                        ; $6a02: $0b
    rrca                                          ; $6a03: $0f
    dec b                                         ; $6a04: $05
    inc b                                         ; $6a05: $04
    inc bc                                        ; $6a06: $03
    inc bc                                        ; $6a07: $03
    rlca                                          ; $6a08: $07
    ld [bc], a                                    ; $6a09: $02
    rrca                                          ; $6a0a: $0f
    ld bc, $000f                                  ; $6a0b: $01 $0f $00
    rlca                                          ; $6a0e: $07
    nop                                           ; $6a0f: $00
    ld bc, $001b                                  ; $6a10: $01 $1b $00
    add h                                         ; $6a13: $84
    ldh a, [$ffe0]                                ; $6a14: $f0 $e0
    ld a, b                                       ; $6a16: $78
    ldh a, [rTAC]                                 ; $6a17: $f0 $07
    ld hl, sp-$66                                 ; $6a19: $f8 $9a
    ldh a, [$fff8]                                ; $6a1b: $f0 $f8
    ld hl, sp-$1c                                 ; $6a1d: $f8 $e4
    db $fc                                        ; $6a1f: $fc
    db $e4                                        ; $6a20: $e4
    inc e                                         ; $6a21: $1c
    call nc, $dc3c                                ; $6a22: $d4 $3c $dc
    inc [hl]                                      ; $6a25: $34
    add sp, -$08                                  ; $6a26: $e8 $f8
    cp b                                          ; $6a28: $b8
    sbc b                                         ; $6a29: $98
    db $e4                                        ; $6a2a: $e4
    db $e4                                        ; $6a2b: $e4
    or b                                          ; $6a2c: $b0
    ldh [$fff8], a                                ; $6a2d: $e0 $f8
    ret nz                                        ; $6a2f: $c0

    ld hl, sp+$00                                 ; $6a30: $f8 $00
    db $f4                                        ; $6a32: $f4
    nop                                           ; $6a33: $00
    ldh [c], a                                    ; $6a34: $e2
    dec de                                        ; $6a35: $1b
    nop                                           ; $6a36: $00
    nop                                           ; $6a37: $00
    nop                                           ; $6a38: $00
    sbc b                                         ; $6a39: $98
    add b                                         ; $6a3a: $80
    dec b                                         ; $6a3b: $05
    ld bc, $0289                                  ; $6a3c: $01 $89 $02
    inc bc                                        ; $6a3f: $03
    dec b                                         ; $6a40: $05
    ld [bc], a                                    ; $6a41: $02
    inc bc                                        ; $6a42: $03
    dec b                                         ; $6a43: $05
    ld [bc], a                                    ; $6a44: $02
    inc bc                                        ; $6a45: $03
    dec b                                         ; $6a46: $05
    add b                                         ; $6a47: $80
    inc b                                         ; $6a48: $04
    ld [bc], a                                    ; $6a49: $02
    add d                                         ; $6a4a: $82
    ld [bc], a                                    ; $6a4b: $02
    ld bc, $000c                                  ; $6a4c: $01 $0c $00
    add c                                         ; $6a4f: $81
    ld b, $03                                     ; $6a50: $06 $03
    nop                                           ; $6a52: $00
    add d                                         ; $6a53: $82
    add hl, bc                                    ; $6a54: $09
    nop                                           ; $6a55: $00
    add b                                         ; $6a56: $80
    ld [$8610], sp                                ; $6a57: $08 $10 $86
    nop                                           ; $6a5a: $00
    nop                                           ; $6a5b: $00
    add hl, bc                                    ; $6a5c: $09
    nop                                           ; $6a5d: $00
    nop                                           ; $6a5e: $00
    ld b, $0c                                     ; $6a5f: $06 $0c
    nop                                           ; $6a61: $00
    add c                                         ; $6a62: $81
    rlca                                          ; $6a63: $07
    dec b                                         ; $6a64: $05
    nop                                           ; $6a65: $00
    add b                                         ; $6a66: $80
    ld [$0518], sp                                ; $6a67: $08 $18 $05
    nop                                           ; $6a6a: $00
    add c                                         ; $6a6b: $81
    rlca                                          ; $6a6c: $07
    inc c                                         ; $6a6d: $0c
    nop                                           ; $6a6e: $00
    add e                                         ; $6a6f: $83
    ld [$0900], sp                                ; $6a70: $08 $00 $09
    inc bc                                        ; $6a73: $03
    nop                                           ; $6a74: $00
    add b                                         ; $6a75: $80
    ld [$0520], sp                                ; $6a76: $08 $20 $05
    nop                                           ; $6a79: $00
    add c                                         ; $6a7a: $81
    ld [$000c], sp                                ; $6a7b: $08 $0c $00
    add c                                         ; $6a7e: $81
    ld b, $04                                     ; $6a7f: $06 $04
    nop                                           ; $6a81: $00
    add d                                         ; $6a82: $82
    add hl, bc                                    ; $6a83: $09
    nop                                           ; $6a84: $00
    add b                                         ; $6a85: $80
    dec b                                         ; $6a86: $05
    jr z, @-$76                                   ; $6a87: $28 $88

    nop                                           ; $6a89: $00
    nop                                           ; $6a8a: $00
    add hl, bc                                    ; $6a8b: $09
    nop                                           ; $6a8c: $00
    nop                                           ; $6a8d: $00
    add hl, bc                                    ; $6a8e: $09
    nop                                           ; $6a8f: $00
    ld b, $0c                                     ; $6a90: $06 $0c
    nop                                           ; $6a92: $00
    add c                                         ; $6a93: $81
    rlca                                          ; $6a94: $07
    dec b                                         ; $6a95: $05
    nop                                           ; $6a96: $00
    add d                                         ; $6a97: $82
    add hl, bc                                    ; $6a98: $09
    add hl, bc                                    ; $6a99: $09
    add b                                         ; $6a9a: $80
    inc b                                         ; $6a9b: $04
    dec l                                         ; $6a9c: $2d
    add c                                         ; $6a9d: $81
    add hl, bc                                    ; $6a9e: $09
    ld b, $00                                     ; $6a9f: $06 $00
    add c                                         ; $6aa1: $81
    rlca                                          ; $6aa2: $07
    inc c                                         ; $6aa3: $0c
    nop                                           ; $6aa4: $00
    adc b                                         ; $6aa5: $88
    ld [$0900], sp                                ; $6aa6: $08 $00 $09
    nop                                           ; $6aa9: $00
    nop                                           ; $6aaa: $00
    add hl, bc                                    ; $6aab: $09
    nop                                           ; $6aac: $00
    add hl, bc                                    ; $6aad: $09
    add b                                         ; $6aae: $80
    inc b                                         ; $6aaf: $04
    ld sp, $0982                                  ; $6ab0: $31 $82 $09
    add hl, bc                                    ; $6ab3: $09
    inc b                                         ; $6ab4: $04
    nop                                           ; $6ab5: $00
    add d                                         ; $6ab6: $82
    add hl, bc                                    ; $6ab7: $09
    ld [$000c], sp                                ; $6ab8: $08 $0c $00
    add c                                         ; $6abb: $81
    ld b, $05                                     ; $6abc: $06 $05
    nop                                           ; $6abe: $00
    add d                                         ; $6abf: $82
    add hl, bc                                    ; $6ac0: $09
    nop                                           ; $6ac1: $00
    add b                                         ; $6ac2: $80
    inc b                                         ; $6ac3: $04
    dec [hl]                                      ; $6ac4: $35
    inc bc                                        ; $6ac5: $03
    nop                                           ; $6ac6: $00
    add c                                         ; $6ac7: $81
    add hl, bc                                    ; $6ac8: $09
    inc bc                                        ; $6ac9: $03
    nop                                           ; $6aca: $00
    add c                                         ; $6acb: $81
    ld b, $0c                                     ; $6acc: $06 $0c
    nop                                           ; $6ace: $00
    sub h                                         ; $6acf: $94
    rlca                                          ; $6ad0: $07
    nop                                           ; $6ad1: $00
    ld a, [bc]                                    ; $6ad2: $0a
    dec bc                                        ; $6ad3: $0b
    dec bc                                        ; $6ad4: $0b
    inc c                                         ; $6ad5: $0c
    ld a, [bc]                                    ; $6ad6: $0a
    dec bc                                        ; $6ad7: $0b
    dec bc                                        ; $6ad8: $0b
    inc c                                         ; $6ad9: $0c
    ld a, [bc]                                    ; $6ada: $0a
    dec bc                                        ; $6adb: $0b
    dec bc                                        ; $6adc: $0b
    inc c                                         ; $6add: $0c
    ld a, [bc]                                    ; $6ade: $0a
    dec bc                                        ; $6adf: $0b
    dec bc                                        ; $6ae0: $0b
    inc c                                         ; $6ae1: $0c
    nop                                           ; $6ae2: $00
    rlca                                          ; $6ae3: $07
    inc c                                         ; $6ae4: $0c
    nop                                           ; $6ae5: $00
    sub h                                         ; $6ae6: $94
    ld [$0d00], sp                                ; $6ae7: $08 $00 $0d
    nop                                           ; $6aea: $00
    nop                                           ; $6aeb: $00
    dec c                                         ; $6aec: $0d
    dec c                                         ; $6aed: $0d
    nop                                           ; $6aee: $00
    nop                                           ; $6aef: $00
    dec c                                         ; $6af0: $0d
    dec c                                         ; $6af1: $0d
    nop                                           ; $6af2: $00
    nop                                           ; $6af3: $00
    dec c                                         ; $6af4: $0d
    dec c                                         ; $6af5: $0d
    nop                                           ; $6af6: $00
    nop                                           ; $6af7: $00
    dec c                                         ; $6af8: $0d
    nop                                           ; $6af9: $00
    ld [$000c], sp                                ; $6afa: $08 $0c $00
    sub h                                         ; $6afd: $94
    ld b, $00                                     ; $6afe: $06 $00
    dec c                                         ; $6b00: $0d
    nop                                           ; $6b01: $00
    nop                                           ; $6b02: $00
    dec c                                         ; $6b03: $0d
    dec c                                         ; $6b04: $0d
    nop                                           ; $6b05: $00
    nop                                           ; $6b06: $00
    dec c                                         ; $6b07: $0d
    dec c                                         ; $6b08: $0d
    nop                                           ; $6b09: $00
    nop                                           ; $6b0a: $00
    dec c                                         ; $6b0b: $0d
    dec c                                         ; $6b0c: $0d
    nop                                           ; $6b0d: $00
    nop                                           ; $6b0e: $00
    dec c                                         ; $6b0f: $0d
    nop                                           ; $6b10: $00
    ld b, $0c                                     ; $6b11: $06 $0c
    nop                                           ; $6b13: $00
    sub h                                         ; $6b14: $94
    rlca                                          ; $6b15: $07
    nop                                           ; $6b16: $00
    ld c, $0b                                     ; $6b17: $0e $0b
    dec bc                                        ; $6b19: $0b
    rrca                                          ; $6b1a: $0f
    ld c, $0b                                     ; $6b1b: $0e $0b
    dec bc                                        ; $6b1d: $0b
    rrca                                          ; $6b1e: $0f
    ld c, $0b                                     ; $6b1f: $0e $0b
    dec bc                                        ; $6b21: $0b
    rrca                                          ; $6b22: $0f
    ld c, $0b                                     ; $6b23: $0e $0b
    dec bc                                        ; $6b25: $0b
    rrca                                          ; $6b26: $0f
    nop                                           ; $6b27: $00
    rlca                                          ; $6b28: $07
    inc c                                         ; $6b29: $0c
    nop                                           ; $6b2a: $00
    add c                                         ; $6b2b: $81
    ld [$0007], sp                                ; $6b2c: $08 $07 $00
    add c                                         ; $6b2f: $81
    add hl, bc                                    ; $6b30: $09
    inc bc                                        ; $6b31: $03
    nop                                           ; $6b32: $00
    add c                                         ; $6b33: $81
    add hl, bc                                    ; $6b34: $09
    ld b, $00                                     ; $6b35: $06 $00
    add c                                         ; $6b37: $81
    ld [$000c], sp                                ; $6b38: $08 $0c $00
    add c                                         ; $6b3b: $81
    ld b, $03                                     ; $6b3c: $06 $03
    nop                                           ; $6b3e: $00
    add h                                         ; $6b3f: $84
    add hl, bc                                    ; $6b40: $09
    nop                                           ; $6b41: $00
    nop                                           ; $6b42: $00
    add hl, bc                                    ; $6b43: $09
    rlca                                          ; $6b44: $07
    nop                                           ; $6b45: $00
    add c                                         ; $6b46: $81
    add hl, bc                                    ; $6b47: $09
    inc bc                                        ; $6b48: $03
    nop                                           ; $6b49: $00
    add c                                         ; $6b4a: $81
    ld b, $0c                                     ; $6b4b: $06 $0c
    nop                                           ; $6b4d: $00
    add c                                         ; $6b4e: $81
    rlca                                          ; $6b4f: $07
    ld [de], a                                    ; $6b50: $12
    nop                                           ; $6b51: $00
    add c                                         ; $6b52: $81
    rlca                                          ; $6b53: $07
    inc c                                         ; $6b54: $0c
    nop                                           ; $6b55: $00
    add e                                         ; $6b56: $83
    ld [$0900], sp                                ; $6b57: $08 $00 $09
    inc bc                                        ; $6b5a: $03
    nop                                           ; $6b5b: $00
    add c                                         ; $6b5c: $81
    add hl, bc                                    ; $6b5d: $09
    ld b, $00                                     ; $6b5e: $06 $00
    add c                                         ; $6b60: $81
    add hl, bc                                    ; $6b61: $09
    inc bc                                        ; $6b62: $03
    nop                                           ; $6b63: $00
    add e                                         ; $6b64: $83
    add hl, bc                                    ; $6b65: $09
    nop                                           ; $6b66: $00
    ld [$000c], sp                                ; $6b67: $08 $0c $00
    add c                                         ; $6b6a: $81
    ld b, $12                                     ; $6b6b: $06 $12
    nop                                           ; $6b6d: $00
    add c                                         ; $6b6e: $81
    ld b, $0c                                     ; $6b6f: $06 $0c
    nop                                           ; $6b71: $00
    add b                                         ; $6b72: $80
    dec b                                         ; $6b73: $05
    ld bc, $0289                                  ; $6b74: $01 $89 $02
    inc bc                                        ; $6b77: $03
    dec b                                         ; $6b78: $05
    ld [bc], a                                    ; $6b79: $02
    inc bc                                        ; $6b7a: $03
    dec b                                         ; $6b7b: $05
    ld [bc], a                                    ; $6b7c: $02
    inc bc                                        ; $6b7d: $03
    dec b                                         ; $6b7e: $05
    add b                                         ; $6b7f: $80
    inc b                                         ; $6b80: $04
    ld [bc], a                                    ; $6b81: $02
    add d                                         ; $6b82: $82
    ld [bc], a                                    ; $6b83: $02
    ld bc, $0100                                  ; $6b84: $01 $00 $01
    dec d                                         ; $6b87: $15
    ld l, l                                       ; $6b88: $6d
    add b                                         ; $6b89: $80
    nop                                           ; $6b8a: $00
    ld bc, $6b91                                  ; $6b8b: $01 $91 $6b
    add b                                         ; $6b8e: $80
    ld bc, $1000                                  ; $6b8f: $01 $00 $10
    nop                                           ; $6b92: $00
    add d                                         ; $6b93: $82
    ld bc, $0400                                  ; $6b94: $01 $00 $04
    ld a, a                                       ; $6b97: $7f
    add c                                         ; $6b98: $81
    ldh [$ff03], a                                ; $6b99: $e0 $03
    ld h, b                                       ; $6b9b: $60
    add l                                         ; $6b9c: $85
    ldh [$ff60], a                                ; $6b9d: $e0 $60
    ldh [$ff60], a                                ; $6b9f: $e0 $60
    ldh [rTAC], a                                 ; $6ba1: $e0 $07
    ld h, b                                       ; $6ba3: $60
    add c                                         ; $6ba4: $81
    ldh [$ff03], a                                ; $6ba5: $e0 $03
    ld h, b                                       ; $6ba7: $60
    add h                                         ; $6ba8: $84
    rst RST_38                                    ; $6ba9: $ff
    ld a, a                                       ; $6baa: $7f
    rst RST_38                                    ; $6bab: $ff
    ld a, a                                       ; $6bac: $7f
    add b                                         ; $6bad: $80
    inc bc                                        ; $6bae: $03
    rst RST_38                                    ; $6baf: $ff
    add [hl]                                      ; $6bb0: $86
    nop                                           ; $6bb1: $00
    rst RST_38                                    ; $6bb2: $ff
    cp $ff                                        ; $6bb3: $fe $ff
    cp $07                                        ; $6bb5: $fe $07
    inc bc                                        ; $6bb7: $03
    ld b, $8d                                     ; $6bb8: $06 $8d
    rlca                                          ; $6bba: $07
    ld b, $07                                     ; $6bbb: $06 $07
    ld b, $07                                     ; $6bbd: $06 $07
    ld b, $07                                     ; $6bbf: $06 $07
    ld b, $07                                     ; $6bc1: $06 $07
    ld b, $07                                     ; $6bc3: $06 $07
    ld b, $07                                     ; $6bc5: $06 $07
    inc bc                                        ; $6bc7: $03
    ld b, $83                                     ; $6bc8: $06 $83
    rst RST_38                                    ; $6bca: $ff
    cp $ff                                        ; $6bcb: $fe $ff
    add b                                         ; $6bcd: $80
    inc bc                                        ; $6bce: $03
    cp $82                                        ; $6bcf: $fe $82
    ld b, $06                                     ; $6bd1: $06 $06
    inc b                                         ; $6bd3: $04
    ld a, [hl]                                    ; $6bd4: $7e
    add c                                         ; $6bd5: $81
    ldh [$ff03], a                                ; $6bd6: $e0 $03
    ld h, b                                       ; $6bd8: $60
    adc l                                         ; $6bd9: $8d
    ldh [$ff60], a                                ; $6bda: $e0 $60
    ldh [$ff60], a                                ; $6bdc: $e0 $60
    ldh [$ff60], a                                ; $6bde: $e0 $60
    ld h, c                                       ; $6be0: $61
    ld h, b                                       ; $6be1: $60
    ld a, a                                       ; $6be2: $7f
    ld a, [hl]                                    ; $6be3: $7e
    ld a, a                                       ; $6be4: $7f
    ld a, [hl]                                    ; $6be5: $7e
    rlca                                          ; $6be6: $07
    inc bc                                        ; $6be7: $03
    ld b, $88                                     ; $6be8: $06 $88
    rlca                                          ; $6bea: $07
    ld b, $07                                     ; $6beb: $06 $07
    ld b, $07                                     ; $6bed: $06 $07
    ld b, $01                                     ; $6bef: $06 $01
    nop                                           ; $6bf1: $00
    inc b                                         ; $6bf2: $04
    ld a, a                                       ; $6bf3: $7f
    add c                                         ; $6bf4: $81
    ldh [$ff03], a                                ; $6bf5: $e0 $03
    ld h, b                                       ; $6bf7: $60
    inc b                                         ; $6bf8: $04
    ldh [rDIV], a                                 ; $6bf9: $e0 $04
    nop                                           ; $6bfb: $00
    dec b                                         ; $6bfc: $05
    ldh [$ff03], a                                ; $6bfd: $e0 $03
    ld h, b                                       ; $6bff: $60
    add [hl]                                      ; $6c00: $86
    rst RST_38                                    ; $6c01: $ff
    ld a, a                                       ; $6c02: $7f
    rst RST_38                                    ; $6c03: $ff
    ld a, a                                       ; $6c04: $7f
    rst RST_38                                    ; $6c05: $ff
    nop                                           ; $6c06: $00
    ld b, $60                                     ; $6c07: $06 $60
    add c                                         ; $6c09: $81
    ldh [$ff03], a                                ; $6c0a: $e0 $03
    ld h, b                                       ; $6c0c: $60
    adc l                                         ; $6c0d: $8d
    cp $7e                                        ; $6c0e: $fe $7e
    cp $7e                                        ; $6c10: $fe $7e
    cp $06                                        ; $6c12: $fe $06
    rlca                                          ; $6c14: $07
    ld b, $07                                     ; $6c15: $06 $07
    ld b, $07                                     ; $6c17: $06 $07
    ld b, $07                                     ; $6c19: $06 $07
    inc bc                                        ; $6c1b: $03
    ld b, $8d                                     ; $6c1c: $06 $8d
    ld a, a                                       ; $6c1e: $7f
    ld a, [hl]                                    ; $6c1f: $7e
    ld a, a                                       ; $6c20: $7f
    ld a, [hl]                                    ; $6c21: $7e
    ld a, a                                       ; $6c22: $7f
    ld h, b                                       ; $6c23: $60
    ld bc, $ff00                                  ; $6c24: $01 $00 $ff
    cp $ff                                        ; $6c27: $fe $ff
    cp $07                                        ; $6c29: $fe $07
    inc bc                                        ; $6c2b: $03
    ld b, $04                                     ; $6c2c: $06 $04
    rlca                                          ; $6c2e: $07
    inc b                                         ; $6c2f: $04
    nop                                           ; $6c30: $00
    dec b                                         ; $6c31: $05
    rlca                                          ; $6c32: $07
    inc bc                                        ; $6c33: $03
    ld b, $83                                     ; $6c34: $06 $83
    rst RST_38                                    ; $6c36: $ff
    cp $ff                                        ; $6c37: $fe $ff
    add b                                         ; $6c39: $80
    inc bc                                        ; $6c3a: $03
    cp $82                                        ; $6c3b: $fe $82
    nop                                           ; $6c3d: $00
    nop                                           ; $6c3e: $00
    dec b                                         ; $6c3f: $05
    ldh [$ff03], a                                ; $6c40: $e0 $03
    ld h, b                                       ; $6c42: $60
    adc b                                         ; $6c43: $88
    cp $7e                                        ; $6c44: $fe $7e
    cp $7e                                        ; $6c46: $fe $7e
    cp $06                                        ; $6c48: $fe $06
    nop                                           ; $6c4a: $00
    nop                                           ; $6c4b: $00
    dec b                                         ; $6c4c: $05
    rlca                                          ; $6c4d: $07
    inc bc                                        ; $6c4e: $03
    ld b, $8d                                     ; $6c4f: $06 $8d
    ld a, a                                       ; $6c51: $7f
    ld a, [hl]                                    ; $6c52: $7e
    ld a, a                                       ; $6c53: $7f
    ld a, [hl]                                    ; $6c54: $7e
    ld a, a                                       ; $6c55: $7f
    ld h, b                                       ; $6c56: $60
    ld h, c                                       ; $6c57: $61
    ld h, b                                       ; $6c58: $60
    ld a, a                                       ; $6c59: $7f
    ld a, [hl]                                    ; $6c5a: $7e
    ld a, a                                       ; $6c5b: $7f
    ld a, [hl]                                    ; $6c5c: $7e
    rlca                                          ; $6c5d: $07
    inc bc                                        ; $6c5e: $03
    ld b, $04                                     ; $6c5f: $06 $04
    rlca                                          ; $6c61: $07
    add h                                         ; $6c62: $84
    nop                                           ; $6c63: $00
    nop                                           ; $6c64: $00
    ld b, $06                                     ; $6c65: $06 $06
    inc b                                         ; $6c67: $04
    ld a, [hl]                                    ; $6c68: $7e
    add c                                         ; $6c69: $81
    ldh [$ff03], a                                ; $6c6a: $e0 $03
    ld h, b                                       ; $6c6c: $60
    inc b                                         ; $6c6d: $04
    ldh [$ff90], a                                ; $6c6e: $e0 $90
    nop                                           ; $6c70: $00
    nop                                           ; $6c71: $00
    ld bc, $7f00                                  ; $6c72: $01 $00 $7f
    nop                                           ; $6c75: $00
    ld a, a                                       ; $6c76: $7f
    nop                                           ; $6c77: $00
    rst RST_38                                    ; $6c78: $ff
    nop                                           ; $6c79: $00
    stop                                          ; $6c7a: $10 $00
    rst RST_30                                    ; $6c7c: $f7
    nop                                           ; $6c7d: $00
    rst RST_30                                    ; $6c7e: $f7
    nop                                           ; $6c7f: $00
    add b                                         ; $6c80: $80
    inc bc                                        ; $6c81: $03
    rst RST_38                                    ; $6c82: $ff
    rst RST_38                                    ; $6c83: $ff
    nop                                           ; $6c84: $00
    ld a, a                                       ; $6c85: $7f
    nop                                           ; $6c86: $00
    ld a, a                                       ; $6c87: $7f
    nop                                           ; $6c88: $00
    rst RST_38                                    ; $6c89: $ff
    nop                                           ; $6c8a: $00
    stop                                          ; $6c8b: $10 $00
    rst RST_30                                    ; $6c8d: $f7
    ld bc, $02f6                                  ; $6c8e: $01 $f6 $02
    cp $02                                        ; $6c91: $fe $02
    dec c                                         ; $6c93: $0d
    inc c                                         ; $6c94: $0c
    ld [hl], a                                    ; $6c95: $77
    inc d                                         ; $6c96: $14
    ld h, a                                       ; $6c97: $67
    inc h                                         ; $6c98: $24
    rst RST_08                                    ; $6c99: $cf
    ld b, h                                       ; $6c9a: $44
    sbc h                                         ; $6c9b: $9c
    add h                                         ; $6c9c: $84
    ccf                                           ; $6c9d: $3f
    inc b                                         ; $6c9e: $04
    ld [hl], a                                    ; $6c9f: $77
    inc c                                         ; $6ca0: $0c

jr_005_6ca1:
    rst RST_30                                    ; $6ca1: $f7
    inc l                                         ; $6ca2: $2c
    inc [hl]                                      ; $6ca3: $34
    inc [hl]                                      ; $6ca4: $34
    ld l, l                                       ; $6ca5: $6d
    inc l                                         ; $6ca6: $2c
    ld h, l                                       ; $6ca7: $65
    inc l                                         ; $6ca8: $2c
    db $eb                                        ; $6ca9: $eb
    ld h, $2d                                     ; $6caa: $26 $2d
    inc hl                                        ; $6cac: $23
    xor $21                                       ; $6cad: $ee $21
    rst RST_28                                    ; $6caf: $ef
    jr nz, jr_005_6ca1                            ; $6cb0: $20 $ef

    inc h                                         ; $6cb2: $24
    jp hl                                         ; $6cb3: $e9


    ld e, b                                       ; $6cb4: $58
    rst RST_28                                    ; $6cb5: $ef
    ld e, b                                       ; $6cb6: $58
    rst RST_28                                    ; $6cb7: $ef
    sbc b                                         ; $6cb8: $98
    rst RST_18                                    ; $6cb9: $df
    or b                                          ; $6cba: $b0
    ret nc                                        ; $6cbb: $d0

    or b                                          ; $6cbc: $b0
    or a                                          ; $6cbd: $b7
    ldh [rPCM34], a                               ; $6cbe: $e0 $77
    ret nz                                        ; $6cc0: $c0

    ld a, a                                       ; $6cc1: $7f
    ret nz                                        ; $6cc2: $c0

    rla                                           ; $6cc3: $17
    ld [de], a                                    ; $6cc4: $12
    ld [hl], a                                    ; $6cc5: $77
    ld [de], a                                    ; $6cc6: $12
    ld [hl], a                                    ; $6cc7: $77
    ld de, $09ff                                  ; $6cc8: $11 $ff $09
    dec de                                        ; $6ccb: $1b

jr_005_6ccc:
    add hl, bc                                    ; $6ccc: $09
    rst RST_30                                    ; $6ccd: $f7
    dec b                                         ; $6cce: $05
    or $02                                        ; $6ccf: $f6 $02
    cp $02                                        ; $6cd1: $fe $02
    xor l                                         ; $6cd3: $ad
    ld l, h                                       ; $6cd4: $6c
    or a                                          ; $6cd5: $b7
    ld [hl], h                                    ; $6cd6: $74
    and a                                         ; $6cd7: $a7
    ld h, h                                       ; $6cd8: $64
    rst RST_08                                    ; $6cd9: $cf
    ld b, h                                       ; $6cda: $44
    sbc h                                         ; $6cdb: $9c
    add h                                         ; $6cdc: $84
    ccf                                           ; $6cdd: $3f
    inc b                                         ; $6cde: $04
    ld [hl], a                                    ; $6cdf: $77
    inc c                                         ; $6ce0: $0c
    rst RST_30                                    ; $6ce1: $f7
    inc l                                         ; $6ce2: $2c
    rla                                           ; $6ce3: $17
    ld [de], a                                    ; $6ce4: $12
    ld [hl], a                                    ; $6ce5: $77
    ld [de], a                                    ; $6ce6: $12
    ld [hl], a                                    ; $6ce7: $77
    ld de, $09ff                                  ; $6ce8: $11 $ff $09
    dec de                                        ; $6ceb: $1b
    ld [$04f7], sp                                ; $6cec: $08 $f7 $04
    rst RST_30                                    ; $6cef: $f7
    inc bc                                        ; $6cf0: $03
    rst RST_38                                    ; $6cf1: $ff
    nop                                           ; $6cf2: $00
    and c                                         ; $6cf3: $a1
    ld h, b                                       ; $6cf4: $60
    cp a                                          ; $6cf5: $bf
    ld h, b                                       ; $6cf6: $60
    cp a                                          ; $6cf7: $bf
    ld h, b                                       ; $6cf8: $60
    rst RST_18                                    ; $6cf9: $df
    jr nc, jr_005_6ccc                            ; $6cfa: $30 $d0

    or b                                          ; $6cfc: $b0
    ld [hl], a                                    ; $6cfd: $77
    sub b                                         ; $6cfe: $90
    rst RST_10                                    ; $6cff: $d7

Jump_005_6d00:
    jr nc, @+$01                                  ; $6d00: $30 $ff

    sub b                                         ; $6d02: $90
    sub b                                         ; $6d03: $90
    or c                                          ; $6d04: $b1
    sub b                                         ; $6d05: $90
    cp a                                          ; $6d06: $bf
    sub b                                         ; $6d07: $90
    cp a                                          ; $6d08: $bf
    sub b                                         ; $6d09: $90
    cp a                                          ; $6d0a: $bf
    sub b                                         ; $6d0b: $90
    or b                                          ; $6d0c: $b0
    ret nc                                        ; $6d0d: $d0

    rst RST_10                                    ; $6d0e: $d7
    ld [hl], b                                    ; $6d0f: $70
    rst RST_30                                    ; $6d10: $f7
    jr nc, @+$01                                  ; $6d11: $30 $ff

    nop                                           ; $6d13: $00
    nop                                           ; $6d14: $00
    ld [$0400], sp                                ; $6d15: $08 $00 $04
    rrca                                          ; $6d18: $0f
    add b                                         ; $6d19: $80
    add e                                         ; $6d1a: $83

jr_005_6d1b:
    ld b, $0c                                     ; $6d1b: $06 $0c

Jump_005_6d1d:
    rrca                                          ; $6d1d: $0f
    rrca                                          ; $6d1e: $0f
    inc c                                         ; $6d1f: $0c
    inc c                                         ; $6d20: $0c
    inc c                                         ; $6d21: $0c
    stop                                          ; $6d22: $10 $00
    add b                                         ; $6d24: $80
    add e                                         ; $6d25: $83
    dec b                                         ; $6d26: $05
    ldh [$fff0], a                                ; $6d27: $e0 $f0
    jr nc, jr_005_6d1b                            ; $6d29: $30 $f0

    ldh [$ff0e], a                                ; $6d2b: $e0 $0e
    nop                                           ; $6d2d: $00
    nop                                           ; $6d2e: $00
    nop                                           ; $6d2f: $00
    sbc b                                         ; $6d30: $98
    inc d                                         ; $6d31: $14
    ld de, $000c                                  ; $6d32: $11 $0c $00
    add d                                         ; $6d35: $82
    ld [de], a                                    ; $6d36: $12
    inc de                                        ; $6d37: $13
    db $10                                        ; $6d38: $10
    ld de, $1282                                  ; $6d39: $11 $82 $12
    inc de                                        ; $6d3c: $13
    inc c                                         ; $6d3d: $0c
    nop                                           ; $6d3e: $00
    add d                                         ; $6d3f: $82
    inc d                                         ; $6d40: $14
    dec d                                         ; $6d41: $15
    db $10                                        ; $6d42: $10
    ld de, $1482                                  ; $6d43: $11 $82 $14
    dec d                                         ; $6d46: $15
    inc c                                         ; $6d47: $0c
    nop                                           ; $6d48: $00
    add d                                         ; $6d49: $82
    ld d, $17                                     ; $6d4a: $16 $17
    db $10                                        ; $6d4c: $10
    ld de, $1682                                  ; $6d4d: $11 $82 $16
    rla                                           ; $6d50: $17
    inc c                                         ; $6d51: $0c
    nop                                           ; $6d52: $00
    add d                                         ; $6d53: $82
    inc d                                         ; $6d54: $14
    dec d                                         ; $6d55: $15
    db $10                                        ; $6d56: $10
    ld de, $1482                                  ; $6d57: $11 $82 $14
    dec d                                         ; $6d5a: $15
    inc c                                         ; $6d5b: $0c
    nop                                           ; $6d5c: $00
    add d                                         ; $6d5d: $82
    ld d, $17                                     ; $6d5e: $16 $17
    db $10                                        ; $6d60: $10
    ld de, $1682                                  ; $6d61: $11 $82 $16
    rla                                           ; $6d64: $17
    inc c                                         ; $6d65: $0c
    nop                                           ; $6d66: $00
    add d                                         ; $6d67: $82
    inc d                                         ; $6d68: $14
    dec d                                         ; $6d69: $15
    db $10                                        ; $6d6a: $10
    ld de, $1482                                  ; $6d6b: $11 $82 $14
    dec d                                         ; $6d6e: $15
    inc c                                         ; $6d6f: $0c
    nop                                           ; $6d70: $00
    add d                                         ; $6d71: $82
    ld d, $17                                     ; $6d72: $16 $17
    db $10                                        ; $6d74: $10
    ld de, $1682                                  ; $6d75: $11 $82 $16
    rla                                           ; $6d78: $17
    inc c                                         ; $6d79: $0c
    nop                                           ; $6d7a: $00
    add d                                         ; $6d7b: $82
    inc d                                         ; $6d7c: $14
    dec d                                         ; $6d7d: $15
    db $10                                        ; $6d7e: $10
    ld de, $1482                                  ; $6d7f: $11 $82 $14
    dec d                                         ; $6d82: $15
    inc c                                         ; $6d83: $0c
    nop                                           ; $6d84: $00
    add d                                         ; $6d85: $82
    ld d, $17                                     ; $6d86: $16 $17
    db $10                                        ; $6d88: $10
    ld de, $1682                                  ; $6d89: $11 $82 $16
    rla                                           ; $6d8c: $17
    inc c                                         ; $6d8d: $0c
    nop                                           ; $6d8e: $00
    add d                                         ; $6d8f: $82
    inc d                                         ; $6d90: $14
    dec d                                         ; $6d91: $15
    db $10                                        ; $6d92: $10
    ld de, $1482                                  ; $6d93: $11 $82 $14
    dec d                                         ; $6d96: $15
    inc c                                         ; $6d97: $0c
    nop                                           ; $6d98: $00
    add d                                         ; $6d99: $82
    ld d, $17                                     ; $6d9a: $16 $17
    db $10                                        ; $6d9c: $10
    ld de, $1682                                  ; $6d9d: $11 $82 $16
    rla                                           ; $6da0: $17
    inc c                                         ; $6da1: $0c
    nop                                           ; $6da2: $00
    add d                                         ; $6da3: $82
    inc d                                         ; $6da4: $14
    dec d                                         ; $6da5: $15
    db $10                                        ; $6da6: $10
    ld de, $1482                                  ; $6da7: $11 $82 $14
    dec d                                         ; $6daa: $15
    inc c                                         ; $6dab: $0c
    nop                                           ; $6dac: $00
    add d                                         ; $6dad: $82
    ld d, $17                                     ; $6dae: $16 $17
    db $10                                        ; $6db0: $10
    ld de, $1682                                  ; $6db1: $11 $82 $16
    rla                                           ; $6db4: $17
    inc c                                         ; $6db5: $0c
    nop                                           ; $6db6: $00
    add d                                         ; $6db7: $82
    inc d                                         ; $6db8: $14
    dec d                                         ; $6db9: $15
    db $10                                        ; $6dba: $10
    ld de, $1482                                  ; $6dbb: $11 $82 $14
    dec d                                         ; $6dbe: $15
    inc c                                         ; $6dbf: $0c
    nop                                           ; $6dc0: $00
    add d                                         ; $6dc1: $82
    jr @+$1b                                      ; $6dc2: $18 $19

    db $10                                        ; $6dc4: $10
    ld de, $1882                                  ; $6dc5: $11 $82 $18
    add hl, de                                    ; $6dc8: $19
    inc c                                         ; $6dc9: $0c
    nop                                           ; $6dca: $00
    add d                                         ; $6dcb: $82
    ld de, $111a                                  ; $6dcc: $11 $1a $11
    ld de, $1a81                                  ; $6dcf: $11 $81 $1a
    inc c                                         ; $6dd2: $0c
    nop                                           ; $6dd3: $00
    inc d                                         ; $6dd4: $14
    ld de, $0100                                  ; $6dd5: $11 $00 $01
    db $dd                                        ; $6dd8: $dd
    ld l, l                                       ; $6dd9: $6d
    add b                                         ; $6dda: $80
    ld bc, $1000                                  ; $6ddb: $01 $00 $10
    nop                                           ; $6dde: $00
    adc a                                         ; $6ddf: $8f
    jr jr_005_6de2                                ; $6de0: $18 $00

jr_005_6de2:
    jr jr_005_6de4                                ; $6de2: $18 $00

jr_005_6de4:
    jr jr_005_6de6                                ; $6de4: $18 $00

jr_005_6de6:
    rst RST_38                                    ; $6de6: $ff
    nop                                           ; $6de7: $00
    rst RST_38                                    ; $6de8: $ff
    nop                                           ; $6de9: $00
    jr jr_005_6dec                                ; $6dea: $18 $00

jr_005_6dec:
    jr jr_005_6dee                                ; $6dec: $18 $00

jr_005_6dee:
    jr jr_005_6df7                                ; $6dee: $18 $07

    nop                                           ; $6df0: $00
    add e                                         ; $6df1: $83
    rst RST_38                                    ; $6df2: $ff
    nop                                           ; $6df3: $00
    rst RST_38                                    ; $6df4: $ff
    rlca                                          ; $6df5: $07
    nop                                           ; $6df6: $00

jr_005_6df7:
    add b                                         ; $6df7: $80
    add c                                         ; $6df8: $81
    ld [$1818], sp                                ; $6df9: $08 $18 $18

jr_005_6dfc:
    jr @+$1a                                      ; $6dfc: $18 $18

    jr @+$1a                                      ; $6dfe: $18 $18

    jr jr_005_6e1a                                ; $6e00: $18 $18

    add b                                         ; $6e02: $80
    add e                                         ; $6e03: $83
    rlca                                          ; $6e04: $07
    inc c                                         ; $6e05: $0c
    jr jr_005_6e38                                ; $6e06: $18 $30

    ld h, b                                       ; $6e08: $60
    jr nc, jr_005_6e23                            ; $6e09: $30 $18

    inc c                                         ; $6e0b: $0c
    add d                                         ; $6e0c: $82
    nop                                           ; $6e0d: $00
    nop                                           ; $6e0e: $00
    add b                                         ; $6e0f: $80
    add e                                         ; $6e10: $83
    rlca                                          ; $6e11: $07
    jr nc, jr_005_6e2c                            ; $6e12: $30 $18

    inc c                                         ; $6e14: $0c
    ld b, $0c                                     ; $6e15: $06 $0c
    jr jr_005_6e49                                ; $6e17: $18 $30

    add d                                         ; $6e19: $82

jr_005_6e1a:
    nop                                           ; $6e1a: $00
    nop                                           ; $6e1b: $00
    add b                                         ; $6e1c: $80
    add e                                         ; $6e1d: $83
    rlca                                          ; $6e1e: $07
    ld a, $63                                     ; $6e1f: $3e $63
    ld h, e                                       ; $6e21: $63
    ld a, a                                       ; $6e22: $7f

jr_005_6e23:
    ld h, e                                       ; $6e23: $63
    ld h, e                                       ; $6e24: $63
    ld h, e                                       ; $6e25: $63
    add d                                         ; $6e26: $82
    nop                                           ; $6e27: $00
    nop                                           ; $6e28: $00
    inc c                                         ; $6e29: $0c
    ld h, b                                       ; $6e2a: $60
    add h                                         ; $6e2b: $84

jr_005_6e2c:
    ld a, a                                       ; $6e2c: $7f
    ld a, a                                       ; $6e2d: $7f
    nop                                           ; $6e2e: $00
    nop                                           ; $6e2f: $00
    add b                                         ; $6e30: $80
    add e                                         ; $6e31: $83
    rlca                                          ; $6e32: $07
    ld a, [hl]                                    ; $6e33: $7e
    ld h, e                                       ; $6e34: $63
    ld h, e                                       ; $6e35: $63
    ld h, e                                       ; $6e36: $63
    ld a, [hl]                                    ; $6e37: $7e

jr_005_6e38:
    ld h, [hl]                                    ; $6e38: $66
    ld h, e                                       ; $6e39: $63
    add d                                         ; $6e3a: $82
    nop                                           ; $6e3b: $00
    nop                                           ; $6e3c: $00
    add b                                         ; $6e3d: $80
    add e                                         ; $6e3e: $83
    rlca                                          ; $6e3f: $07
    ld a, a                                       ; $6e40: $7f
    ld h, b                                       ; $6e41: $60
    ld h, b                                       ; $6e42: $60
    ld a, [hl]                                    ; $6e43: $7e
    ld h, b                                       ; $6e44: $60
    ld h, b                                       ; $6e45: $60
    ld a, a                                       ; $6e46: $7f
    add d                                         ; $6e47: $82
    nop                                           ; $6e48: $00

jr_005_6e49:
    nop                                           ; $6e49: $00
    add b                                         ; $6e4a: $80
    add e                                         ; $6e4b: $83
    rlca                                          ; $6e4c: $07
    ld a, $63                                     ; $6e4d: $3e $63
    ld h, b                                       ; $6e4f: $60
    ld a, $03                                     ; $6e50: $3e $03
    ld h, e                                       ; $6e52: $63
    ld a, $82                                     ; $6e53: $3e $82
    nop                                           ; $6e55: $00
    nop                                           ; $6e56: $00
    inc c                                         ; $6e57: $0c
    ld h, e                                       ; $6e58: $63
    add h                                         ; $6e59: $84
    ld a, $3e                                     ; $6e5a: $3e $3e
    nop                                           ; $6e5c: $00
    nop                                           ; $6e5d: $00
    add b                                         ; $6e5e: $80
    add e                                         ; $6e5f: $83
    rlca                                          ; $6e60: $07
    ld a, [hl]                                    ; $6e61: $7e
    jr jr_005_6e7c                                ; $6e62: $18 $18

    jr @+$1a                                      ; $6e64: $18 $18

    jr @+$1a                                      ; $6e66: $18 $18

    add a                                         ; $6e68: $87
    nop                                           ; $6e69: $00
    nop                                           ; $6e6a: $00
    ccf                                           ; $6e6b: $3f
    ccf                                           ; $6e6c: $3f
    inc sp                                        ; $6e6d: $33
    inc sp                                        ; $6e6e: $33
    ld [hl], e                                    ; $6e6f: $73
    inc bc                                        ; $6e70: $03
    ld h, e                                       ; $6e71: $63
    adc b                                         ; $6e72: $88
    inc bc                                        ; $6e73: $03
    inc bc                                        ; $6e74: $03
    rlca                                          ; $6e75: $07
    ld b, $1e                                     ; $6e76: $06 $1e
    ld e, $1c                                     ; $6e78: $1e $1c
    jr jr_005_6dfc                                ; $6e7a: $18 $80

jr_005_6e7c:
    add e                                         ; $6e7c: $83
    jr nz, jr_005_6efd                            ; $6e7d: $20 $7e

    jr jr_005_6e99                                ; $6e7f: $18 $18

    jr jr_005_6e9b                                ; $6e81: $18 $18

    jr jr_005_6e9d                                ; $6e83: $18 $18

    ld a, [hl]                                    ; $6e85: $7e
    cp $06                                        ; $6e86: $fe $06
    ld b, $0c                                     ; $6e88: $06 $0c
    jr @+$3a                                      ; $6e8a: $18 $38

    ld l, h                                       ; $6e8c: $6c
    add $c0                                       ; $6e8d: $c6 $c0
    ret nz                                        ; $6e8f: $c0

    ret nz                                        ; $6e90: $c0

    ldh a, [$ffdc]                                ; $6e91: $f0 $dc
    add $c0                                       ; $6e93: $c6 $c0
    ret nz                                        ; $6e95: $c0

    inc bc                                        ; $6e96: $03
    inc bc                                        ; $6e97: $03
    inc bc                                        ; $6e98: $03

jr_005_6e99:
    inc bc                                        ; $6e99: $03
    inc bc                                        ; $6e9a: $03

jr_005_6e9b:
    inc bc                                        ; $6e9b: $03
    inc bc                                        ; $6e9c: $03

jr_005_6e9d:
    inc bc                                        ; $6e9d: $03
    add d                                         ; $6e9e: $82
    nop                                           ; $6e9f: $00
    nop                                           ; $6ea0: $00
    add b                                         ; $6ea1: $80
    add e                                         ; $6ea2: $83
    dec bc                                        ; $6ea3: $0b
    ld bc, $1919                                  ; $6ea4: $01 $19 $19
    add hl, de                                    ; $6ea7: $19
    dec de                                        ; $6ea8: $1b
    ld [hl-], a                                   ; $6ea9: $32
    ldh [$ff6c], a                                ; $6eaa: $e0 $6c
    or [hl]                                       ; $6eac: $b6
    or [hl]                                       ; $6ead: $b6
    ret nz                                        ; $6eae: $c0

    add d                                         ; $6eaf: $82
    ldh [$ff60], a                                ; $6eb0: $e0 $60
    add b                                         ; $6eb2: $80
    add e                                         ; $6eb3: $83
    add hl, bc                                    ; $6eb4: $09
    jr nc, jr_005_6ed0                            ; $6eb5: $30 $19

    add hl, bc                                    ; $6eb7: $09
    jr @-$26                                      ; $6eb8: $18 $d8

    ret c                                         ; $6eba: $d8

    ret c                                         ; $6ebb: $d8

    db $db                                        ; $6ebc: $db
    db $db                                        ; $6ebd: $db
    add d                                         ; $6ebe: $82
    rst RST_18                                    ; $6ebf: $df
    sbc e                                         ; $6ec0: $9b
    add b                                         ; $6ec1: $80

Jump_005_6ec2:
    add e                                         ; $6ec2: $83
    ld [$639e], sp                                ; $6ec3: $08 $9e $63
    ld [hl], a                                    ; $6ec6: $77
    ld a, a                                       ; $6ec7: $7f
    ld l, e                                       ; $6ec8: $6b
    ld h, e                                       ; $6ec9: $63
    ld h, e                                       ; $6eca: $63
    ld h, e                                       ; $6ecb: $63
    add d                                         ; $6ecc: $82
    nop                                           ; $6ecd: $00
    nop                                           ; $6ece: $00
    nop                                           ; $6ecf: $00

jr_005_6ed0:
    nop                                           ; $6ed0: $00
    sbc b                                         ; $6ed1: $98
    inc hl                                        ; $6ed2: $23
    nop                                           ; $6ed3: $00
    add [hl]                                      ; $6ed4: $86
    inc b                                         ; $6ed5: $04
    nop                                           ; $6ed6: $00
    ld b, $07                                     ; $6ed7: $06 $07
    rlca                                          ; $6ed9: $07
    nop                                           ; $6eda: $00
    add b                                         ; $6edb: $80
    inc b                                         ; $6edc: $04
    ld [$0784], sp                                ; $6edd: $08 $84 $07
    inc c                                         ; $6ee0: $0c
    nop                                           ; $6ee1: $00
    dec b                                         ; $6ee2: $05
    dec [hl]                                      ; $6ee3: $35
    nop                                           ; $6ee4: $00
    add c                                         ; $6ee5: $81
    inc bc                                        ; $6ee6: $03
    dec b                                         ; $6ee7: $05
    nop                                           ; $6ee8: $00
    add c                                         ; $6ee9: $81
    inc bc                                        ; $6eea: $03
    inc d                                         ; $6eeb: $14
    nop                                           ; $6eec: $00
    add b                                         ; $6eed: $80
    inc b                                         ; $6eee: $04
    ld de, $0082                                  ; $6eef: $11 $82 $00
    inc bc                                        ; $6ef2: $03
    add b                                         ; $6ef3: $80
    inc b                                         ; $6ef4: $04
    dec c                                         ; $6ef5: $0d
    add d                                         ; $6ef6: $82
    nop                                           ; $6ef7: $00
    inc bc                                        ; $6ef8: $03
    add b                                         ; $6ef9: $80
    inc b                                         ; $6efa: $04
    dec c                                         ; $6efb: $0d
    dec d                                         ; $6efc: $15

jr_005_6efd:
    nop                                           ; $6efd: $00
    add c                                         ; $6efe: $81
    inc bc                                        ; $6eff: $03
    dec b                                         ; $6f00: $05
    nop                                           ; $6f01: $00
    add c                                         ; $6f02: $81
    inc bc                                        ; $6f03: $03
    inc d                                         ; $6f04: $14
    nop                                           ; $6f05: $00
    dec b                                         ; $6f06: $05
    ld [bc], a                                    ; $6f07: $02
    add c                                         ; $6f08: $81
    ld bc, $0205                                  ; $6f09: $01 $05 $02
    add c                                         ; $6f0c: $81
    ld bc, $0206                                  ; $6f0d: $01 $06 $02
    inc de                                        ; $6f10: $13
    nop                                           ; $6f11: $00
    adc d                                         ; $6f12: $8a
    inc bc                                        ; $6f13: $03
    nop                                           ; $6f14: $00
    nop                                           ; $6f15: $00
    add a                                         ; $6f16: $87
    nop                                           ; $6f17: $00
    nop                                           ; $6f18: $00
    inc bc                                        ; $6f19: $03
    nop                                           ; $6f1a: $00
    nop                                           ; $6f1b: $00
    add a                                         ; $6f1c: $87
    ld d, $00                                     ; $6f1d: $16 $00
    adc d                                         ; $6f1f: $8a
    inc bc                                        ; $6f20: $03
    nop                                           ; $6f21: $00
    nop                                           ; $6f22: $00
    add a                                         ; $6f23: $87
    nop                                           ; $6f24: $00
    nop                                           ; $6f25: $00
    inc bc                                        ; $6f26: $03
    nop                                           ; $6f27: $00
    nop                                           ; $6f28: $00
    add a                                         ; $6f29: $87
    ld d, $00                                     ; $6f2a: $16 $00
    adc d                                         ; $6f2c: $8a
    inc bc                                        ; $6f2d: $03
    nop                                           ; $6f2e: $00
    nop                                           ; $6f2f: $00
    add a                                         ; $6f30: $87
    nop                                           ; $6f31: $00
    nop                                           ; $6f32: $00
    inc bc                                        ; $6f33: $03
    nop                                           ; $6f34: $00
    nop                                           ; $6f35: $00
    add a                                         ; $6f36: $87
    ld d, $00                                     ; $6f37: $16 $00
    adc d                                         ; $6f39: $8a
    inc bc                                        ; $6f3a: $03
    nop                                           ; $6f3b: $00
    nop                                           ; $6f3c: $00
    add a                                         ; $6f3d: $87
    nop                                           ; $6f3e: $00
    nop                                           ; $6f3f: $00
    inc bc                                        ; $6f40: $03
    nop                                           ; $6f41: $00
    nop                                           ; $6f42: $00
    add a                                         ; $6f43: $87
    ld d, $00                                     ; $6f44: $16 $00
    adc d                                         ; $6f46: $8a
    inc bc                                        ; $6f47: $03
    nop                                           ; $6f48: $00
    nop                                           ; $6f49: $00
    add a                                         ; $6f4a: $87
    nop                                           ; $6f4b: $00
    nop                                           ; $6f4c: $00
    inc bc                                        ; $6f4d: $03
    nop                                           ; $6f4e: $00
    nop                                           ; $6f4f: $00
    add a                                         ; $6f50: $87
    ld d, $00                                     ; $6f51: $16 $00
    adc d                                         ; $6f53: $8a
    inc bc                                        ; $6f54: $03
    nop                                           ; $6f55: $00
    nop                                           ; $6f56: $00
    add a                                         ; $6f57: $87
    nop                                           ; $6f58: $00
    nop                                           ; $6f59: $00
    inc bc                                        ; $6f5a: $03
    nop                                           ; $6f5b: $00
    nop                                           ; $6f5c: $00
    add a                                         ; $6f5d: $87
    ld d, $00                                     ; $6f5e: $16 $00
    adc d                                         ; $6f60: $8a
    inc bc                                        ; $6f61: $03
    nop                                           ; $6f62: $00
    nop                                           ; $6f63: $00
    add a                                         ; $6f64: $87
    nop                                           ; $6f65: $00
    nop                                           ; $6f66: $00
    inc bc                                        ; $6f67: $03
    nop                                           ; $6f68: $00
    nop                                           ; $6f69: $00
    add a                                         ; $6f6a: $87
    ld d, $00                                     ; $6f6b: $16 $00
    adc d                                         ; $6f6d: $8a
    inc bc                                        ; $6f6e: $03
    nop                                           ; $6f6f: $00
    nop                                           ; $6f70: $00
    add a                                         ; $6f71: $87
    nop                                           ; $6f72: $00
    nop                                           ; $6f73: $00
    inc bc                                        ; $6f74: $03
    nop                                           ; $6f75: $00
    nop                                           ; $6f76: $00
    add a                                         ; $6f77: $87
    ld d, $00                                     ; $6f78: $16 $00
    adc d                                         ; $6f7a: $8a
    inc bc                                        ; $6f7b: $03
    nop                                           ; $6f7c: $00
    nop                                           ; $6f7d: $00
    add a                                         ; $6f7e: $87
    nop                                           ; $6f7f: $00
    nop                                           ; $6f80: $00
    inc bc                                        ; $6f81: $03
    nop                                           ; $6f82: $00
    nop                                           ; $6f83: $00
    add a                                         ; $6f84: $87
    inc de                                        ; $6f85: $13
    nop                                           ; $6f86: $00
    adc l                                         ; $6f87: $8d
    dec d                                         ; $6f88: $15
    nop                                           ; $6f89: $00
    nop                                           ; $6f8a: $00
    inc bc                                        ; $6f8b: $03
    nop                                           ; $6f8c: $00
    nop                                           ; $6f8d: $00
    add a                                         ; $6f8e: $87
    nop                                           ; $6f8f: $00
    nop                                           ; $6f90: $00
    inc bc                                        ; $6f91: $03
    nop                                           ; $6f92: $00
    nop                                           ; $6f93: $00
    add a                                         ; $6f94: $87
    jr nc, jr_005_6f97                            ; $6f95: $30 $00

jr_005_6f97:
    nop                                           ; $6f97: $00
    ld bc, $6fb0                                  ; $6f98: $01 $b0 $6f
    add b                                         ; $6f9b: $80
    ld bc, $0100                                  ; $6f9c: $01 $00 $01
    ld h, b                                       ; $6f9f: $60
    ld [hl], d                                    ; $6fa0: $72
    add b                                         ; $6fa1: $80
    ld bc, $0100                                  ; $6fa2: $01 $00 $01
    inc de                                        ; $6fa5: $13
    halt                                          ; $6fa6: $76
    add b                                         ; $6fa7: $80
    ld bc, $0100                                  ; $6fa8: $01 $00 $01
    pop de                                        ; $6fab: $d1
    ld a, c                                       ; $6fac: $79
    add b                                         ; $6fad: $80
    ld bc, $1700                                  ; $6fae: $01 $00 $17
    nop                                           ; $6fb1: $00
    adc e                                         ; $6fb2: $8b
    ld h, b                                       ; $6fb3: $60
    inc c                                         ; $6fb4: $0c
    and b                                         ; $6fb5: $a0
    rlca                                          ; $6fb6: $07
    or b                                          ; $6fb7: $b0
    inc b                                         ; $6fb8: $04
    ldh a, [rTMA]                                 ; $6fb9: $f0 $06
    stop                                          ; $6fbb: $10 $00
    inc c                                         ; $6fbd: $0c
    inc bc                                        ; $6fbe: $03
    nop                                           ; $6fbf: $00
    adc h                                         ; $6fc0: $8c
    cp b                                          ; $6fc1: $b8
    db $10                                        ; $6fc2: $10
    rst RST_00                                    ; $6fc3: $c7
    dec de                                        ; $6fc4: $1b
    ret nz                                        ; $6fc5: $c0

    ld e, $40                                     ; $6fc6: $1e $40
    inc c                                         ; $6fc8: $0c
    add b                                         ; $6fc9: $80
    nop                                           ; $6fca: $00
    ret nc                                        ; $6fcb: $d0

    jr nz, jr_005_6fd1                            ; $6fcc: $20 $03

jr_005_6fce:
    nop                                           ; $6fce: $00
    adc h                                         ; $6fcf: $8c
    inc b                                         ; $6fd0: $04

jr_005_6fd1:
    ld b, b                                       ; $6fd1: $40
    nop                                           ; $6fd2: $00
    nop                                           ; $6fd3: $00
    di                                            ; $6fd4: $f3

jr_005_6fd5:
    nop                                           ; $6fd5: $00
    ld [$c400], a                                 ; $6fd6: $ea $00 $c4
    nop                                           ; $6fd9: $00
    nop                                           ; $6fda: $00
    reti                                          ; $6fdb: $d9


    ld b, $00                                     ; $6fdc: $06 $00
    add b                                         ; $6fde: $80
    add c                                         ; $6fdf: $81
    dec b                                         ; $6fe0: $05
    ld b, b                                       ; $6fe1: $40
    sub h                                         ; $6fe2: $94
    ret nz                                        ; $6fe3: $c0

    ld [$0828], sp                                ; $6fe4: $08 $28 $08
    nop                                           ; $6fe7: $00
    add l                                         ; $6fe8: $85
    stop                                          ; $6fe9: $10 $00
    jr nz, jr_005_6fed                            ; $6feb: $20 $00

jr_005_6fed:
    sub h                                         ; $6fed: $94
    inc b                                         ; $6fee: $04
    nop                                           ; $6fef: $00
    cp a                                          ; $6ff0: $bf
    rrca                                          ; $6ff1: $0f
    db $10                                        ; $6ff2: $10
    ld b, $48                                     ; $6ff3: $06 $48
    inc bc                                        ; $6ff5: $03
    inc d                                         ; $6ff6: $14
    ld [bc], a                                    ; $6ff7: $02
    dec b                                         ; $6ff8: $05
    ld [bc], a                                    ; $6ff9: $02
    nop                                           ; $6ffa: $00
    inc d                                         ; $6ffb: $14
    ld b, $18                                     ; $6ffc: $06 $18
    ld a, [bc]                                    ; $6ffe: $0a
    nop                                           ; $6fff: $00
    ld h, h                                       ; $7000: $64
    adc d                                         ; $7001: $8a
    ld [bc], a                                    ; $7002: $02
    add hl, de                                    ; $7003: $19
    ld b, $f8                                     ; $7004: $06 $f8
    ld b, [hl]                                    ; $7006: $46
    sub b                                         ; $7007: $90
    call nz, Call_000_0420                        ; $7008: $c4 $20 $04
    db $e3                                        ; $700b: $e3
    ld d, b                                       ; $700c: $50
    ld [bc], a                                    ; $700d: $02
    add h                                         ; $700e: $84
    ld [bc], a                                    ; $700f: $02
    dec hl                                        ; $7010: $2b
    add b                                         ; $7011: $80
    ld sp, $0fc0                                  ; $7012: $31 $c0 $0f
    ldh [$ff80], a                                ; $7015: $e0 $80
    ld [hl], e                                    ; $7017: $73
    ldh [rNR33], a                                ; $7018: $e0 $1d
    inc h                                         ; $701a: $24
    sbc e                                         ; $701b: $9b
    ldh [$ff0b], a                                ; $701c: $e0 $0b
    db $10                                        ; $701e: $10
    ld l, a                                       ; $701f: $6f
    adc b                                         ; $7020: $88
    nop                                           ; $7021: $00
    add sp, $00                                   ; $7022: $e8 $00
    inc l                                         ; $7024: $2c
    ld b, b                                       ; $7025: $40
    or c                                          ; $7026: $b1
    ld b, b                                       ; $7027: $40
    sub c                                         ; $7028: $91
    ld h, h                                       ; $7029: $64
    add b                                         ; $702a: $80
    scf                                           ; $702b: $37
    dec c                                         ; $702c: $0d
    or b                                          ; $702d: $b0
    ld d, h                                       ; $702e: $54
    add hl, hl                                    ; $702f: $29
    add b                                         ; $7030: $80
    add c                                         ; $7031: $81
    ld b, $04                                     ; $7032: $06 $04
    add h                                         ; $7034: $84
    and c                                         ; $7035: $a1
    ld hl, $5b47                                  ; $7036: $21 $47 $5b
    add h                                         ; $7039: $84
    push bc                                       ; $703a: $c5
    ld a, [bc]                                    ; $703b: $0a
    ld a, [hl]                                    ; $703c: $7e
    add b                                         ; $703d: $80
    add b                                         ; $703e: $80
    add c                                         ; $703f: $81
    inc b                                         ; $7040: $04
    and b                                         ; $7041: $a0
    adc d                                         ; $7042: $8a
    ld [bc], a                                    ; $7043: $02
    jr nc, jr_005_6fce                            ; $7044: $30 $88

    ld [hl], h                                    ; $7046: $74
    ld bc, $08f5                                  ; $7047: $01 $f5 $08
    sub [hl]                                      ; $704a: $96
    jr z, @+$49                                   ; $704b: $28 $47

    jr c, jr_005_7055                             ; $704d: $38 $06

    nop                                           ; $704f: $00
    sub l                                         ; $7050: $95
    ld [hl+], a                                   ; $7051: $22
    nop                                           ; $7052: $00
    jr nz, jr_005_6fd5                            ; $7053: $20 $80

jr_005_7055:
    ret nz                                        ; $7055: $c0

    nop                                           ; $7056: $00
    inc c                                         ; $7057: $0c
    ret nz                                        ; $7058: $c0

    ld h, b                                       ; $7059: $60
    nop                                           ; $705a: $00
    jr nc, @+$0c                                  ; $705b: $30 $0a

    inc bc                                        ; $705d: $03
    inc [hl]                                      ; $705e: $34
    inc b                                         ; $705f: $04
    inc bc                                        ; $7060: $03
    ld e, $01                                     ; $7061: $1e $01
    inc b                                         ; $7063: $04
    nop                                           ; $7064: $00
    ld bc, $0003                                  ; $7065: $01 $03 $00
    jp nz, RST_10                                 ; $7068: $c2 $10 $00

    add hl, bc                                    ; $706b: $09
    or $6e                                        ; $706c: $f6 $6e
    stop                                          ; $706e: $10 $00
    cp $01                                        ; $7070: $fe $01
    xor b                                         ; $7072: $a8
    nop                                           ; $7073: $00
    rst RST_08                                    ; $7074: $cf
    add b                                         ; $7075: $80
    ld e, [hl]                                    ; $7076: $5e
    add b                                         ; $7077: $80
    ld e, a                                       ; $7078: $5f
    ld b, $59                                     ; $7079: $06 $59
    add hl, bc                                    ; $707b: $09
    db $10                                        ; $707c: $10
    sub d                                         ; $707d: $92
    ld l, l                                       ; $707e: $6d
    sbc b                                         ; $707f: $98
    ld h, d                                       ; $7080: $62
    adc h                                         ; $7081: $8c
    ld [hl], e                                    ; $7082: $73
    add [hl]                                      ; $7083: $86
    ld sp, $7106                                  ; $7084: $31 $06 $71
    nop                                           ; $7087: $00
    ld a, [hl]                                    ; $7088: $7e
    ld bc, $02fc                                  ; $7089: $01 $fc $02
    ret z                                         ; $708c: $c8

    adc h                                         ; $708d: $8c
    ld d, c                                       ; $708e: $51
    db $10                                        ; $708f: $10
    ld l, b                                       ; $7090: $68
    ld b, $b8                                     ; $7091: $06 $b8
    ld d, $c1                                     ; $7093: $16 $c1
    inc bc                                        ; $7095: $03
    xor h                                         ; $7096: $ac
    add $39                                       ; $7097: $c6 $39
    inc b                                         ; $7099: $04
    jp hl                                         ; $709a: $e9


    ld b, b                                       ; $709b: $40
    nop                                           ; $709c: $00
    ld [bc], a                                    ; $709d: $02
    ret nz                                        ; $709e: $c0

jr_005_709f:
    ldh a, [rP1]                                  ; $709f: $f0 $00
    ld c, b                                       ; $70a1: $48
    db $10                                        ; $70a2: $10
    ld d, b                                       ; $70a3: $50
    jr nz, @+$0c                                  ; $70a4: $20 $0a

    ldh [rNR10], a                                ; $70a6: $e0 $10
    jr nz, jr_005_70ba                            ; $70a8: $20 $10

    ld h, b                                       ; $70aa: $60
    rlca                                          ; $70ab: $07
    nop                                           ; $70ac: $00
    cp c                                          ; $70ad: $b9
    ld [bc], a                                    ; $70ae: $02
    ld de, $0600                                  ; $70af: $11 $00 $06
    ld bc, $0003                                  ; $70b2: $01 $03 $00
    nop                                           ; $70b5: $00
    ld b, $12                                     ; $70b6: $06 $12
    dec c                                         ; $70b8: $0d
    pop bc                                        ; $70b9: $c1

jr_005_70ba:
    db $10                                        ; $70ba: $10
    ld h, l                                       ; $70bb: $65
    db $10                                        ; $70bc: $10
    ld [bc], a                                    ; $70bd: $02
    ld de, $d902                                  ; $70be: $11 $02 $d9
    ld b, $71                                     ; $70c1: $06 $71
    cp [hl]                                       ; $70c3: $be
    ld b, c                                       ; $70c4: $41
    ld b, $f9                                     ; $70c5: $06 $f9
    dec b                                         ; $70c7: $05
    jp z, $402b                                   ; $70c8: $ca $2b $40

    reti                                          ; $70cb: $d9


    jr nz, jr_005_709f                            ; $70cc: $20 $d1

    ld a, [hl+]                                   ; $70ce: $2a
    ld [bc], a                                    ; $70cf: $02
    jp hl                                         ; $70d0: $e9


    ld b, b                                       ; $70d1: $40
    ccf                                           ; $70d2: $3f
    jr nc, jr_005_70e4                            ; $70d3: $30 $0f

    ldh a, [rIF]                                  ; $70d5: $f0 $0f
    nop                                           ; $70d7: $00
    ldh [$ff60], a                                ; $70d8: $e0 $60
    sub b                                         ; $70da: $90

jr_005_70db:
    add b                                         ; $70db: $80
    ld a, [hl]                                    ; $70dc: $7e
    ld bc, $0088                                  ; $70dd: $01 $88 $00
    rst RST_38                                    ; $70e0: $ff
    inc b                                         ; $70e1: $04
    inc bc                                        ; $70e2: $03
    ld d, h                                       ; $70e3: $54

jr_005_70e4:
    ld [bc], a                                    ; $70e4: $02
    ld a, h                                       ; $70e5: $7c
    ld [bc], a                                    ; $70e6: $02
    add b                                         ; $70e7: $80
    add c                                         ; $70e8: $81
    inc b                                         ; $70e9: $04
    add b                                         ; $70ea: $80
    add hl, bc                                    ; $70eb: $09
    ld b, d                                       ; $70ec: $42
    ldh [c], a                                    ; $70ed: $e2
    sub $0c                                       ; $70ee: $d6 $0c
    ldh a, [rSC]                                  ; $70f0: $f0 $02
    db $fd                                        ; $70f2: $fd
    nop                                           ; $70f3: $00
    rlca                                          ; $70f4: $07
    ld h, e                                       ; $70f5: $63
    inc e                                         ; $70f6: $1c
    ld b, $71                                     ; $70f7: $06 $71
    sub d                                         ; $70f9: $92
    ld h, h                                       ; $70fa: $64
    ld [de], a                                    ; $70fb: $12
    and h                                         ; $70fc: $a4
    ld [bc], a                                    ; $70fd: $02
    add b                                         ; $70fe: $80
    sub h                                         ; $70ff: $94
    ld b, b                                       ; $7100: $40
    db $10                                        ; $7101: $10
    ret nz                                        ; $7102: $c0

    inc bc                                        ; $7103: $03
    ret nz                                        ; $7104: $c0

    ld [hl-], a                                   ; $7105: $32
    ret nz                                        ; $7106: $c0

    ld d, c                                       ; $7107: $51
    xor [hl]                                      ; $7108: $ae
    ldh a, [rIF]                                  ; $7109: $f0 $0f
    and b                                         ; $710b: $a0
    rra                                           ; $710c: $1f
    sub h                                         ; $710d: $94
    dec bc                                        ; $710e: $0b
    sbc h                                         ; $710f: $9c
    inc bc                                        ; $7110: $03
    ld h, h                                       ; $7111: $64
    inc bc                                        ; $7112: $03
    ld [bc], a                                    ; $7113: $02
    ld l, c                                       ; $7114: $69
    adc [hl]                                      ; $7115: $8e
    ld hl, $6f00                                  ; $7116: $21 $00 $6f
    jr nz, jr_005_70db                            ; $7119: $20 $c0

    ld b, b                                       ; $711b: $40
    add b                                         ; $711c: $80
    ld h, b                                       ; $711d: $60
    add b                                         ; $711e: $80
    ld l, b                                       ; $711f: $68
    add b                                         ; $7120: $80
    ld b, c                                       ; $7121: $41
    add b                                         ; $7122: $80
    ld [hl], b                                    ; $7123: $70
    add b                                         ; $7124: $80
    ld e, e                                       ; $7125: $5b
    and b                                         ; $7126: $a0
    nop                                           ; $7127: $00
    rra                                           ; $7128: $1f
    ret nz                                        ; $7129: $c0

    rra                                           ; $712a: $1f
    ld b, b                                       ; $712b: $40
    jr c, @+$24                                   ; $712c: $38 $22

    db $10                                        ; $712e: $10
    add hl, hl                                    ; $712f: $29
    ld d, b                                       ; $7130: $50
    and d                                         ; $7131: $a2
    ld d, b                                       ; $7132: $50
    add h                                         ; $7133: $84
    ld [hl], e                                    ; $7134: $73
    inc h                                         ; $7135: $24
    db $db                                        ; $7136: $db
    nop                                           ; $7137: $00
    rst RST_38                                    ; $7138: $ff
    nop                                           ; $7139: $00
    rst RST_38                                    ; $713a: $ff
    inc d                                         ; $713b: $14
    ld l, e                                       ; $713c: $6b
    add b                                         ; $713d: $80
    ccf                                           ; $713e: $3f
    ret nz                                        ; $713f: $c0

    ccf                                           ; $7140: $3f
    pop hl                                        ; $7141: $e1
    ld e, $a8                                     ; $7142: $1e $a8
    ld d, b                                       ; $7144: $50
    inc bc                                        ; $7145: $03

jr_005_7146:
    nop                                           ; $7146: $00
    call nz, $00ff                                ; $7147: $c4 $ff $00
    rst RST_28                                    ; $714a: $ef
    inc bc                                        ; $714b: $03
    inc b                                         ; $714c: $04
    sub b                                         ; $714d: $90
    rlca                                          ; $714e: $07
    ld hl, sp+$07                                 ; $714f: $f8 $07
    inc h                                         ; $7151: $24
    db $db                                        ; $7152: $db
    nop                                           ; $7153: $00
    nop                                           ; $7154: $00
    stop                                          ; $7155: $10 $00
    ld b, b                                       ; $7157: $40
    ccf                                           ; $7158: $3f
    nop                                           ; $7159: $00
    and c                                         ; $715a: $a1
    ld b, $e1                                     ; $715b: $06 $e1
    ld c, $e1                                     ; $715d: $0e $e1
    sbc b                                         ; $715f: $98
    ld h, a                                       ; $7160: $67
    nop                                           ; $7161: $00
    rst RST_38                                    ; $7162: $ff
    sbc [hl]                                      ; $7163: $9e
    ld h, c                                       ; $7164: $61
    ld b, $01                                     ; $7165: $06 $01
    inc de                                        ; $7167: $13
    ldh [$ff94], a                                ; $7168: $e0 $94
    ld h, e                                       ; $716a: $63

jr_005_716b:
    sub h                                         ; $716b: $94
    ld h, e                                       ; $716c: $63
    inc d                                         ; $716d: $14
    ld h, e                                       ; $716e: $63
    inc h                                         ; $716f: $24
    inc bc                                        ; $7170: $03
    ld [bc], a                                    ; $7171: $02
    nop                                           ; $7172: $00
    ld b, b                                       ; $7173: $40
    nop                                           ; $7174: $00
    db $10                                        ; $7175: $10
    ld [HeaderGlobalChecksum], sp                 ; $7176: $08 $4e $01
    db $e4                                        ; $7179: $e4
    inc bc                                        ; $717a: $03
    db $f4                                        ; $717b: $f4
    dec bc                                        ; $717c: $0b
    db $fc                                        ; $717d: $fc
    inc bc                                        ; $717e: $03
    db $f4                                        ; $717f: $f4
    ld a, [bc]                                    ; $7180: $0a
    ld a, l                                       ; $7181: $7d
    ld [bc], a                                    ; $7182: $02
    ld hl, sp+$07                                 ; $7183: $f8 $07
    ld [hl], b                                    ; $7185: $70
    rlca                                          ; $7186: $07
    add b                                         ; $7187: $80
    ld b, b                                       ; $7188: $40
    ld [$c000], sp                                ; $7189: $08 $00 $c0
    inc bc                                        ; $718c: $03
    nop                                           ; $718d: $00
    xor c                                         ; $718e: $a9
    add b                                         ; $718f: $80
    ld a, b                                       ; $7190: $78
    ld [$e060], sp                                ; $7191: $08 $60 $e0
    db $10                                        ; $7194: $10
    adc h                                         ; $7195: $8c
    ld h, b                                       ; $7196: $60
    nop                                           ; $7197: $00
    ld h, l                                       ; $7198: $65
    ld c, $00                                     ; $7199: $0e $00
    inc bc                                        ; $719b: $03
    nop                                           ; $719c: $00
    ld b, $00                                     ; $719d: $06 $00
    db $dd                                        ; $719f: $dd
    jr nz, jr_005_71a3                            ; $71a0: $20 $01

    db $10                                        ; $71a2: $10

jr_005_71a3:
    ld a, [de]                                    ; $71a3: $1a
    ld hl, $0020                                  ; $71a4: $21 $20 $00
    add b                                         ; $71a7: $80
    ld h, b                                       ; $71a8: $60
    db $10                                        ; $71a9: $10
    ld b, $e8                                     ; $71aa: $06 $e8
    db $10                                        ; $71ac: $10
    ld [bc], a                                    ; $71ad: $02
    ld a, l                                       ; $71ae: $7d
    nop                                           ; $71af: $00
    inc bc                                        ; $71b0: $03
    add b                                         ; $71b1: $80
    ld h, b                                       ; $71b2: $60
    add b                                         ; $71b3: $80
    nop                                           ; $71b4: $00
    dec bc                                        ; $71b5: $0b

jr_005_71b6:
    nop                                           ; $71b6: $00
    ld hl, $0003                                  ; $71b7: $21 $03 $00
    adc d                                         ; $71ba: $8a
    adc e                                         ; $71bb: $8b
    nop                                           ; $71bc: $00
    ld a, a                                       ; $71bd: $7f
    nop                                           ; $71be: $00
    jr c, @-$3b                                   ; $71bf: $38 $c3

    nop                                           ; $71c1: $00
    jr c, @+$11                                   ; $71c2: $38 $0f

    jr nz, jr_005_7146                            ; $71c4: $20 $80

    add c                                         ; $71c6: $81
    inc b                                         ; $71c7: $04
    ld b, $0c                                     ; $71c8: $06 $0c
    ld h, b                                       ; $71ca: $60

jr_005_71cb:
    jr jr_005_716b                                ; $71cb: $18 $9e

    ld c, $f0                                     ; $71cd: $0e $f0
    ld bc, $ec02                                  ; $71cf: $01 $02 $ec
    ld bc, $009f                                  ; $71d2: $01 $9f $00
    ld e, e                                       ; $71d5: $5b
    nop                                           ; $71d6: $00
    ld de, $4402                                  ; $71d7: $11 $02 $44
    ld [bc], a                                    ; $71da: $02
    and d                                         ; $71db: $a2
    inc c                                         ; $71dc: $0c
    db $e4                                        ; $71dd: $e4
    jr @-$38                                      ; $71de: $18 $c6

    ld sp, $ca34                                  ; $71e0: $31 $34 $ca
    ld h, b                                       ; $71e3: $60
    sbc d                                         ; $71e4: $9a
    jp RST_38                                     ; $71e5: $c3 $38 $00


    jr jr_005_71f3                                ; $71e8: $18 $09

    db $10                                        ; $71ea: $10
    add b                                         ; $71eb: $80
    add c                                         ; $71ec: $81
    inc b                                         ; $71ed: $04
    add b                                         ; $71ee: $80
    inc bc                                        ; $71ef: $03
    add hl, bc                                    ; $71f0: $09
    ld h, l                                       ; $71f1: $65
    xor l                                         ; $71f2: $ad

jr_005_71f3:
    dec de                                        ; $71f3: $1b
    add b                                         ; $71f4: $80
    ld [hl], $40                                  ; $71f5: $36 $40
    pop de                                        ; $71f7: $d1
    ld c, $f4                                     ; $71f8: $0e $f4
    dec bc                                        ; $71fa: $0b
    call c, $f403                                 ; $71fb: $dc $03 $f4
    dec bc                                        ; $71fe: $0b
    call c, $f523                                 ; $71ff: $dc $23 $f5
    ld a, [bc]                                    ; $7202: $0a
    ld d, h                                       ; $7203: $54
    dec hl                                        ; $7204: $2b
    rst RST_30                                    ; $7205: $f7
    ld [$7a85], sp                                ; $7206: $08 $85 $7a
    jr nc, jr_005_71cb                            ; $7209: $30 $c0

    ld c, c                                       ; $720b: $49
    add b                                         ; $720c: $80
    ldh a, [rP1]                                  ; $720d: $f0 $00
    ld b, b                                       ; $720f: $40
    add b                                         ; $7210: $80
    ld h, h                                       ; $7211: $64
    add b                                         ; $7212: $80
    ld [hl], b                                    ; $7213: $70
    add b                                         ; $7214: $80
    inc hl                                        ; $7215: $23
    nop                                           ; $7216: $00
    rlca                                          ; $7217: $07
    ld [$0001], sp                                ; $7218: $08 $01 $00
    dec c                                         ; $721b: $0d
    ld [bc], a                                    ; $721c: $02
    dec bc                                        ; $721d: $0b
    inc b                                         ; $721e: $04
    ld b, b                                       ; $721f: $40
    rlca                                          ; $7220: $07
    nop                                           ; $7221: $00
    adc e                                         ; $7222: $8b
    ld bc, $1944                                  ; $7223: $01 $44 $19
    add h                                         ; $7226: $84
    pop hl                                        ; $7227: $e1
    db $10                                        ; $7228: $10
    ld b, $00                                     ; $7229: $06 $00
    inc c                                         ; $722b: $0c
    nop                                           ; $722c: $00
    jr nz, jr_005_7234                            ; $722d: $20 $05

    nop                                           ; $722f: $00
    add h                                         ; $7230: $84
    rst RST_00                                    ; $7231: $c7
    jr @+$44                                      ; $7232: $18 $42

jr_005_7234:
    jr c, jr_005_71b6                             ; $7234: $38 $80

    add c                                         ; $7236: $81
    inc b                                         ; $7237: $04
    sbc $b7                                       ; $7238: $de $b7
    ld hl, $0440                                  ; $723a: $21 $40 $04
    nop                                           ; $723d: $00
    and b                                         ; $723e: $a0
    rst RST_30                                    ; $723f: $f7
    ld [$608f], sp                                ; $7240: $08 $8f $60
    rrca                                          ; $7243: $0f
    ld d, b                                       ; $7244: $50
    add h                                         ; $7245: $84
    ld [$2690], sp                                ; $7246: $08 $90 $26
    ld [$0020], sp                                ; $7249: $08 $20 $00
    ld [bc], a                                    ; $724c: $02
    ld de, $1000                                  ; $724d: $11 $00 $10
    ret nz                                        ; $7250: $c0

    inc l                                         ; $7251: $2c
    db $10                                        ; $7252: $10

jr_005_7253:
    and d                                         ; $7253: $a2
    inc b                                         ; $7254: $04
    ld a, [hl+]                                   ; $7255: $2a

jr_005_7256:
    nop                                           ; $7256: $00
    inc d                                         ; $7257: $14
    ld [bc], a                                    ; $7258: $02
    nop                                           ; $7259: $00
    ld [bc], a                                    ; $725a: $02
    ld [bc], a                                    ; $725b: $02
    ld bc, $0001                                  ; $725c: $01 $01 $00
    nop                                           ; $725f: $00
    ld d, $00                                     ; $7260: $16 $00
    sbc d                                         ; $7262: $9a
    inc h                                         ; $7263: $24
    inc bc                                        ; $7264: $03
    ld a, [bc]                                    ; $7265: $0a
    nop                                           ; $7266: $00
    dec b                                         ; $7267: $05
    ld [bc], a                                    ; $7268: $02
    ld d, [hl]                                    ; $7269: $56
    ld [$052a], sp                                ; $726a: $08 $2a $05
    ld b, d                                       ; $726d: $42
    nop                                           ; $726e: $00
    ld [bc], a                                    ; $726f: $02
    nop                                           ; $7270: $00
    dec c                                         ; $7271: $0d
    ld b, d                                       ; $7272: $42
    ld [hl], b                                    ; $7273: $70
    add e                                         ; $7274: $83
    call z, $b003                                 ; $7275: $cc $03 $b0
    ld b, e                                       ; $7278: $43
    inc c                                         ; $7279: $0c
    jp Jump_005_43b0                              ; $727a: $c3 $b0 $43


    inc b                                         ; $727d: $04
    nop                                           ; $727e: $00
    adc h                                         ; $727f: $8c
    inc h                                         ; $7280: $24
    nop                                           ; $7281: $00
    nop                                           ; $7282: $00
    rst RST_38                                    ; $7283: $ff
    ld [hl-], a                                   ; $7284: $32
    push bc                                       ; $7285: $c5
    adc h                                         ; $7286: $8c
    ld d, e                                       ; $7287: $53
    xor [hl]                                      ; $7288: $ae
    ld bc, $522d                                  ; $7289: $01 $2d $52
    ld b, $00                                     ; $728c: $06 $00
    sub d                                         ; $728e: $92
    ret nz                                        ; $728f: $c0

    nop                                           ; $7290: $00
    jr nz, jr_005_7253                            ; $7291: $20 $c0

    ret nz                                        ; $7293: $c0

    jr nz, jr_005_7256                            ; $7294: $20 $c0

    jr nz, jr_005_72a8                            ; $7296: $20 $10

    ldh [rSCY], a                                 ; $7298: $e0 $42
    nop                                           ; $729a: $00
    inc b                                         ; $729b: $04
    nop                                           ; $729c: $00
    add b                                         ; $729d: $80
    ld b, b                                       ; $729e: $40
    adc b                                         ; $729f: $88
    nop                                           ; $72a0: $00
    add b                                         ; $72a1: $80
    add d                                         ; $72a2: $82
    inc b                                         ; $72a3: $04
    ld b, b                                       ; $72a4: $40
    ld [$9010], sp                                ; $72a5: $08 $10 $90

jr_005_72a8:
    ret nc                                        ; $72a8: $d0

    rra                                           ; $72a9: $1f
    ld b, b                                       ; $72aa: $40
    and $19                                       ; $72ab: $e6 $19
    ld a, d                                       ; $72ad: $7a
    add b                                         ; $72ae: $80
    ld [hl], $88                                  ; $72af: $36 $88
    push hl                                       ; $72b1: $e5
    stop                                          ; $72b2: $10 $00
    rst RST_38                                    ; $72b4: $ff
    sub l                                         ; $72b5: $95
    ld l, d                                       ; $72b6: $6a
    ld h, c                                       ; $72b7: $61
    jr jr_005_7253                                ; $72b8: $18 $99

    ld b, [hl]                                    ; $72ba: $46
    ld [bc], a                                    ; $72bb: $02
    ld a, h                                       ; $72bc: $7c
    xor [hl]                                      ; $72bd: $ae
    ld bc, $a453                                  ; $72be: $01 $53 $a4
    ld c, h                                       ; $72c1: $4c
    sub d                                         ; $72c2: $92
    nop                                           ; $72c3: $00
    rst RST_38                                    ; $72c4: $ff
    sbc c                                         ; $72c5: $99
    ld h, [hl]                                    ; $72c6: $66
    xor c                                         ; $72c7: $a9
    ld b, d                                       ; $72c8: $42
    add l                                         ; $72c9: $85
    ld a, [hl+]                                   ; $72ca: $2a
    push hl                                       ; $72cb: $e5
    ld a, [bc]                                    ; $72cc: $0a
    dec c                                         ; $72cd: $0d
    ld d, d                                       ; $72ce: $52
    xor e                                         ; $72cf: $ab
    inc d                                         ; $72d0: $14
    xor e                                         ; $72d1: $ab
    ld b, h                                       ; $72d2: $44
    nop                                           ; $72d3: $00
    rst RST_38                                    ; $72d4: $ff
    nop                                           ; $72d5: $00
    rst RST_38                                    ; $72d6: $ff
    ld l, b                                       ; $72d7: $68
    sub a                                         ; $72d8: $97
    ret nz                                        ; $72d9: $c0

    jr nz, jr_005_72dc                            ; $72da: $20 $00

jr_005_72dc:
    ldh [$ffd0], a                                ; $72dc: $e0 $d0
    jr nz, jr_005_72f0                            ; $72de: $20 $10

    ldh [$ffc0], a                                ; $72e0: $e0 $c0
    jr nz, jr_005_72e4                            ; $72e2: $20 $00

jr_005_72e4:
    ldh [rNR10], a                                ; $72e4: $e0 $10
    ldh [rP1], a                                  ; $72e6: $e0 $00
    ldh a, [rSC]                                  ; $72e8: $f0 $02
    nop                                           ; $72ea: $00
    nop                                           ; $72eb: $00
    ld [bc], a                                    ; $72ec: $02
    inc b                                         ; $72ed: $04
    nop                                           ; $72ee: $00
    nop                                           ; $72ef: $00

jr_005_72f0:
    ld b, $04                                     ; $72f0: $06 $04
    inc bc                                        ; $72f2: $03
    nop                                           ; $72f3: $00
    inc c                                         ; $72f4: $0c
    ld [$0007], sp                                ; $72f5: $08 $07 $00
    ld a, [bc]                                    ; $72f8: $0a
    rlca                                          ; $72f9: $07
    nop                                           ; $72fa: $00
    adc d                                         ; $72fb: $8a
    add h                                         ; $72fc: $84
    ld de, $6288                                  ; $72fd: $11 $88 $62
    ld [$004c], sp                                ; $7300: $08 $4c $00
    ld sp, $0500                                  ; $7303: $31 $00 $05
    add b                                         ; $7306: $80
    inc bc                                        ; $7307: $03
    nop                                           ; $7308: $00
    rst RST_38                                    ; $7309: $ff
    ld e, c                                       ; $730a: $59
    nop                                           ; $730b: $00
    ld [bc], a                                    ; $730c: $02
    inc b                                         ; $730d: $04
    dec bc                                        ; $730e: $0b
    nop                                           ; $730f: $00
    jr nz, @+$11                                  ; $7310: $20 $0f

    inc c                                         ; $7312: $0c
    inc bc                                        ; $7313: $03
    inc bc                                        ; $7314: $03
    nop                                           ; $7315: $00
    add d                                         ; $7316: $82
    nop                                           ; $7317: $00
    ld [hl+], a                                   ; $7318: $22
    nop                                           ; $7319: $00
    ld c, c                                       ; $731a: $49
    db $10                                        ; $731b: $10
    sub a                                         ; $731c: $97
    jr z, jr_005_7367                             ; $731d: $28 $48

    inc d                                         ; $731f: $14
    jp z, Jump_000_0a14                           ; $7320: $ca $14 $0a

    inc d                                         ; $7323: $14
    ld c, c                                       ; $7324: $49
    ld [hl], $80                                  ; $7325: $36 $80
    nop                                           ; $7327: $00
    inc a                                         ; $7328: $3c
    nop                                           ; $7329: $00
    ld b, l                                       ; $732a: $45
    ld a, [hl-]                                   ; $732b: $3a
    xor d                                         ; $732c: $aa
    ld d, l                                       ; $732d: $55
    ld c, c                                       ; $732e: $49
    sub d                                         ; $732f: $92
    ld c, c                                       ; $7330: $49
    sub d                                         ; $7331: $92
    ld c, c                                       ; $7332: $49
    sub d                                         ; $7333: $92
    ld c, c                                       ; $7334: $49
    or [hl]                                       ; $7335: $b6
    sub l                                         ; $7336: $95
    ld [bc], a                                    ; $7337: $02
    or l                                          ; $7338: $b5
    ld [bc], a                                    ; $7339: $02
    ld a, [bc]                                    ; $733a: $0a
    ld bc, $01aa                                  ; $733b: $01 $aa $01
    dec b                                         ; $733e: $05
    add b                                         ; $733f: $80
    ld d, d                                       ; $7340: $52
    add b                                         ; $7341: $80
    ld d, c                                       ; $7342: $51
    add b                                         ; $7343: $80
    dec h                                         ; $7344: $25
    ret nz                                        ; $7345: $c0

    ld l, l                                       ; $7346: $6d
    db $10                                        ; $7347: $10
    add l                                         ; $7348: $85
    ld a, [hl-]                                   ; $7349: $3a
    or h                                          ; $734a: $b4
    ld a, [bc]                                    ; $734b: $0a
    jp nz, Jump_005_6d1d                          ; $734c: $c2 $1d $6d

    add d                                         ; $734f: $82
    or b                                          ; $7350: $b0
    ld b, a                                       ; $7351: $47
    ld d, [hl]                                    ; $7352: $56
    ld hl, $2358                                  ; $7353: $21 $58 $23
    ld b, d                                       ; $7356: $42
    nop                                           ; $7357: $00
    add b                                         ; $7358: $80
    ld a, a                                       ; $7359: $7f
    ld [de], a                                    ; $735a: $12
    ld c, b                                       ; $735b: $48
    db $10                                        ; $735c: $10
    add b                                         ; $735d: $80
    dec b                                         ; $735e: $05
    jp z, $8250                                   ; $735f: $ca $50 $82

    ld hl, $00c8                                  ; $7362: $21 $c8 $00
    ldh [$ff89], a                                ; $7365: $e0 $89

jr_005_7367:
    nop                                           ; $7367: $00
    ld d, d                                       ; $7368: $52
    xor c                                         ; $7369: $a9
    nop                                           ; $736a: $00
    xor c                                         ; $736b: $a9
    and d                                         ; $736c: $a2
    add hl, bc                                    ; $736d: $09
    inc d                                         ; $736e: $14
    add hl, bc                                    ; $736f: $09
    sub d                                         ; $7370: $92
    add hl, bc                                    ; $7371: $09
    ld h, $09                                     ; $7372: $26 $09
    nop                                           ; $7374: $00
    rrca                                          ; $7375: $0f
    jr nz, @+$0f                                  ; $7376: $20 $0d

    ld [bc], a                                    ; $7378: $02
    ld sp, hl                                     ; $7379: $f9
    ldh [c], a                                    ; $737a: $e2
    inc c                                         ; $737b: $0c
    add c                                         ; $737c: $81
    ld [$0857], sp                                ; $737d: $08 $57 $08
    add b                                         ; $7380: $80
    jr jr_005_73a4                                ; $7381: $18 $21

    call nc, $f003                                ; $7383: $d4 $03 $f0
    call nz, Call_000_2000                        ; $7386: $c4 $00 $20
    sbc d                                         ; $7389: $9a
    nop                                           ; $738a: $00
    jr nc, jr_005_738d                            ; $738b: $30 $00

jr_005_738d:
    sbc $01                                       ; $738d: $de $01
    nop                                           ; $738f: $00
    db $fd                                        ; $7390: $fd
    nop                                           ; $7391: $00
    or [hl]                                       ; $7392: $b6
    ld a, [de]                                    ; $7393: $1a
    add b                                         ; $7394: $80
    ld a, [hl-]                                   ; $7395: $3a
    add b                                         ; $7396: $80
    add b                                         ; $7397: $80
    nop                                           ; $7398: $00
    ld h, h                                       ; $7399: $64
    nop                                           ; $739a: $00
    nop                                           ; $739b: $00
    add b                                         ; $739c: $80
    ldh [rNR32], a                                ; $739d: $e0 $1c
    nop                                           ; $739f: $00
    jr nz, jr_005_73ba                            ; $73a0: $20 $18

    and b                                         ; $73a2: $a0
    ld h, b                                       ; $73a3: $60

jr_005_73a4:
    inc bc                                        ; $73a4: $03
    nop                                           ; $73a5: $00
    add c                                         ; $73a6: $81
    ld c, $03                                     ; $73a7: $0e $03
    nop                                           ; $73a9: $00
    add c                                         ; $73aa: $81
    inc b                                         ; $73ab: $04
    inc bc                                        ; $73ac: $03
    nop                                           ; $73ad: $00
    ret nz                                        ; $73ae: $c0

    ld e, d                                       ; $73af: $5a
    dec b                                         ; $73b0: $05
    ld a, [bc]                                    ; $73b1: $0a
    dec b                                         ; $73b2: $05
    nop                                           ; $73b3: $00
    nop                                           ; $73b4: $00
    inc bc                                        ; $73b5: $03
    nop                                           ; $73b6: $00
    ld a, l                                       ; $73b7: $7d
    add d                                         ; $73b8: $82
    ld c, c                                       ; $73b9: $49

jr_005_73ba:
    sub d                                         ; $73ba: $92
    ld c, c                                       ; $73bb: $49
    sub d                                         ; $73bc: $92
    ld e, c                                       ; $73bd: $59
    add d                                         ; $73be: $82
    nop                                           ; $73bf: $00
    rst RST_38                                    ; $73c0: $ff
    nop                                           ; $73c1: $00
    rst RST_38                                    ; $73c2: $ff
    ld hl, $2d88                                  ; $73c3: $21 $88 $2d
    jp nc, $c025                                  ; $73c6: $d2 $25 $c0

    inc h                                         ; $73c9: $24
    ret nz                                        ; $73ca: $c0

    ld sp, $13c0                                  ; $73cb: $31 $c0 $13
    ldh [rP1], a                                  ; $73ce: $e0 $00
    rst RST_38                                    ; $73d0: $ff
    nop                                           ; $73d1: $00
    rst RST_38                                    ; $73d2: $ff
    ld b, d                                       ; $73d3: $42
    xor l                                         ; $73d4: $ad
    ld l, d                                       ; $73d5: $6a
    sub l                                         ; $73d6: $95
    xor l                                         ; $73d7: $ad
    db $10                                        ; $73d8: $10
    sub $08                                       ; $73d9: $d6 $08
    ld l, d                                       ; $73db: $6a
    inc b                                         ; $73dc: $04
    ld l, c                                       ; $73dd: $69
    ld b, $00                                     ; $73de: $06 $00
    rst RST_38                                    ; $73e0: $ff
    nop                                           ; $73e1: $00
    rst RST_38                                    ; $73e2: $ff
    add d                                         ; $73e3: $82
    ld a, l                                       ; $73e4: $7d
    ret nc                                        ; $73e5: $d0

    cpl                                           ; $73e6: $2f
    adc d                                         ; $73e7: $8a
    ld [hl], b                                    ; $73e8: $70
    db $10                                        ; $73e9: $10
    add sp, -$3b                                  ; $73ea: $e8 $c5
    jr c, jr_005_7450                             ; $73ec: $38 $62

    dec e                                         ; $73ee: $1d
    add b                                         ; $73ef: $80
    add [hl]                                      ; $73f0: $86
    inc b                                         ; $73f1: $04
    or $eb                                        ; $73f2: $f6 $eb
    ld a, d                                       ; $73f4: $7a
    db $fd                                        ; $73f5: $fd
    or b                                          ; $73f6: $b0
    call c, $1103                                 ; $73f7: $dc $03 $11
    nop                                           ; $73fa: $00
    ld b, h                                       ; $73fb: $44
    nop                                           ; $73fc: $00
    ld h, d                                       ; $73fd: $62
    sbc h                                         ; $73fe: $9c
    ld c, [hl]                                    ; $73ff: $4e
    nop                                           ; $7400: $00
    add hl, hl                                    ; $7401: $29
    nop                                           ; $7402: $00
    ld [hl], d                                    ; $7403: $72
    adc l                                         ; $7404: $8d
    ld [hl+], a                                   ; $7405: $22
    db $dd                                        ; $7406: $dd
    rlca                                          ; $7407: $07
    add sp, $02                                   ; $7408: $e8 $02
    ld hl, sp-$7b                                 ; $740a: $f8 $85
    ld a, b                                       ; $740c: $78
    add b                                         ; $740d: $80
    ld b, a                                       ; $740e: $47
    ld bc, $6678                                  ; $740f: $01 $78 $66
    jr @+$62                                      ; $7412: $18 $60

    sbc b                                         ; $7414: $98
    add b                                         ; $7415: $80
    ld a, b                                       ; $7416: $78
    ld h, h                                       ; $7417: $64
    add b                                         ; $7418: $80
    ld bc, $c4fe                                  ; $7419: $01 $fe $c4
    jr jr_005_741e                                ; $741c: $18 $00

jr_005_741e:
    ldh a, [$ff0a]                                ; $741e: $f0 $0a
    ld d, l                                       ; $7420: $55
    ret nz                                        ; $7421: $c0

    inc d                                         ; $7422: $14
    ld [hl+], a                                   ; $7423: $22
    nop                                           ; $7424: $00
    ld [hl], e                                    ; $7425: $73
    inc c                                         ; $7426: $0c
    dec b                                         ; $7427: $05
    nop                                           ; $7428: $00
    add c                                         ; $7429: $81
    dec c                                         ; $742a: $0d
    inc b                                         ; $742b: $04
    nop                                           ; $742c: $00
    add e                                         ; $742d: $83
    sub b                                         ; $742e: $90
    rlca                                          ; $742f: $07
    ld [bc], a                                    ; $7430: $02
    inc bc                                        ; $7431: $03
    nop                                           ; $7432: $00
    add c                                         ; $7433: $81
    rlca                                          ; $7434: $07
    inc bc                                        ; $7435: $03
    nop                                           ; $7436: $00
    add c                                         ; $7437: $81
    ret nz                                        ; $7438: $c0

    inc bc                                        ; $7439: $03
    nop                                           ; $743a: $00
    add c                                         ; $743b: $81
    ld b, $03                                     ; $743c: $06 $03
    nop                                           ; $743e: $00
    add l                                         ; $743f: $85
    sbc b                                         ; $7440: $98
    rlca                                          ; $7441: $07
    nop                                           ; $7442: $00
    db $ec                                        ; $7443: $ec
    sub a                                         ; $7444: $97
    inc bc                                        ; $7445: $03
    nop                                           ; $7446: $00
    add c                                         ; $7447: $81
    rst RST_00                                    ; $7448: $c7
    inc bc                                        ; $7449: $03
    nop                                           ; $744a: $00
    sbc b                                         ; $744b: $98
    jr nc, jr_005_744f                            ; $744c: $30 $01

    nop                                           ; $744e: $00

jr_005_744f:
    nop                                           ; $744f: $00

jr_005_7450:
    ccf                                           ; $7450: $3f
    ret nz                                        ; $7451: $c0

    ld d, h                                       ; $7452: $54
    ld [$037c], sp                                ; $7453: $08 $7c $03
    ld a, [$7f05]                                 ; $7456: $fa $05 $7f
    nop                                           ; $7459: $00
    ld bc, $3e16                                  ; $745a: $01 $16 $3e
    pop bc                                        ; $745d: $c1
    inc bc                                        ; $745e: $03
    inc b                                         ; $745f: $04
    ld a, a                                       ; $7460: $7f
    nop                                           ; $7461: $00
    inc bc                                        ; $7462: $03
    inc b                                         ; $7463: $04
    add b                                         ; $7464: $80

jr_005_7465:
    add [hl]                                      ; $7465: $86
    ld [$fba6], sp                                ; $7466: $08 $a6 $fb
    db $fd                                        ; $7469: $fd
    or d                                          ; $746a: $b2
    rst RST_30                                    ; $746b: $f7
    ld a, d                                       ; $746c: $7a
    ld [hl], a                                    ; $746d: $77
    dec hl                                        ; $746e: $2b
    and a                                         ; $746f: $a7
    ld b, e                                       ; $7470: $43
    nop                                           ; $7471: $00
    ld [$4700], sp                                ; $7472: $08 $00 $47
    add b                                         ; $7475: $80
    cp h                                          ; $7476: $bc
    ld b, b                                       ; $7477: $40
    sub b                                         ; $7478: $90
    ld h, b                                       ; $7479: $60
    ld c, [hl]                                    ; $747a: $4e
    or b                                          ; $747b: $b0
    and c                                         ; $747c: $a1
    ld e, b                                       ; $747d: $58
    ld a, d                                       ; $747e: $7a
    add h                                         ; $747f: $84
    xor e                                         ; $7480: $ab
    stop                                          ; $7481: $10 $00
    jr jr_005_748d                                ; $7483: $18 $08

    db $10                                        ; $7485: $10
    rst RST_20                                    ; $7486: $e7
    jr jr_005_7489                                ; $7487: $18 $00

jr_005_7489:
    jr jr_005_74ad                                ; $7489: $18 $22

    jr @-$33                                      ; $748b: $18 $cb

jr_005_748d:
    db $10                                        ; $748d: $10
    add b                                         ; $748e: $80
    dec de                                        ; $748f: $1b
    nop                                           ; $7490: $00
    ld bc, $004e                                  ; $7491: $01 $4e $00
    nop                                           ; $7494: $00
    ld bc, $03b1                                  ; $7495: $01 $b1 $03
    nop                                           ; $7498: $00
    sub e                                         ; $7499: $93
    ld b, $00                                     ; $749a: $06 $00
    db $10                                        ; $749c: $10
    inc bc                                        ; $749d: $03
    nop                                           ; $749e: $00
    ret nz                                        ; $749f: $c0

    add b                                         ; $74a0: $80
    nop                                           ; $74a1: $00
    ld h, h                                       ; $74a2: $64
    nop                                           ; $74a3: $00
    nop                                           ; $74a4: $00
    add b                                         ; $74a5: $80
    ldh [rNR32], a                                ; $74a6: $e0 $1c
    nop                                           ; $74a8: $00
    jr nz, jr_005_74c3                            ; $74a9: $20 $18

    and b                                         ; $74ab: $a0
    ld h, b                                       ; $74ac: $60

jr_005_74ad:
    inc b                                         ; $74ad: $04
    nop                                           ; $74ae: $00
    cp a                                          ; $74af: $bf
    inc b                                         ; $74b0: $04
    ld bc, $2c04                                  ; $74b1: $01 $04 $2c

jr_005_74b4:
    ld d, e                                       ; $74b4: $53
    ld [de], a                                    ; $74b5: $12
    nop                                           ; $74b6: $00
    dec d                                         ; $74b7: $15
    ld [$fd02], a                                 ; $74b8: $ea $02 $fd
    ld a, e                                       ; $74bb: $7b
    inc b                                         ; $74bc: $04
    inc b                                         ; $74bd: $04
    nop                                           ; $74be: $00
    nop                                           ; $74bf: $00
    ld e, a                                       ; $74c0: $5f
    add hl, bc                                    ; $74c1: $09
    ld b, b                                       ; $74c2: $40

jr_005_74c3:
    push de                                       ; $74c3: $d5
    ld a, [hl+]                                   ; $74c4: $2a
    ld h, a                                       ; $74c5: $67
    nop                                           ; $74c6: $00
    ld b, b                                       ; $74c7: $40
    cp a                                          ; $74c8: $bf
    ld d, h                                       ; $74c9: $54
    xor e                                         ; $74ca: $ab
    ei                                            ; $74cb: $fb
    inc b                                         ; $74cc: $04
    ld c, h                                       ; $74cd: $4c
    jr nz, jr_005_74e7                            ; $74ce: $20 $17

    xor b                                         ; $74d0: $a8
    ret nc                                        ; $74d1: $d0

    dec hl                                        ; $74d2: $2b
    jr nz, jr_005_74b4                            ; $74d3: $20 $df

    db $e4                                        ; $74d5: $e4
    jr jr_005_7465                                ; $74d6: $18 $8d

    ld [hl], b                                    ; $74d8: $70
    nop                                           ; $74d9: $00
    cp $f4                                        ; $74da: $fe $f4
    ld [$9824], sp                                ; $74dc: $08 $24 $98
    ldh [c], a                                    ; $74df: $e2
    dec e                                         ; $74e0: $1d
    inc bc                                        ; $74e1: $03
    inc b                                         ; $74e2: $04
    ld a, a                                       ; $74e3: $7f
    nop                                           ; $74e4: $00
    inc bc                                        ; $74e5: $03
    inc b                                         ; $74e6: $04

jr_005_74e7:
    rst RST_20                                    ; $74e7: $e7
    nop                                           ; $74e8: $00
    ld a, b                                       ; $74e9: $78
    rlca                                          ; $74ea: $07
    rlca                                          ; $74eb: $07
    nop                                           ; $74ec: $00
    jp $8004                                      ; $74ed: $c3 $04 $80


    add [hl]                                      ; $74f0: $86
    rrca                                          ; $74f1: $0f
    rst RST_30                                    ; $74f2: $f7
    dec a                                         ; $74f3: $3d
    ld a, $fd                                     ; $74f4: $3e $fd
    scf                                           ; $74f6: $37
    cp [hl]                                       ; $74f7: $be
    ccf                                           ; $74f8: $3f
    ccf                                           ; $74f9: $3f
    or $cb                                        ; $74fa: $f6 $cb
    xor l                                         ; $74fc: $ad
    ld [$fd7f], a                                 ; $74fd: $ea $7f $fd
    or $ff                                        ; $7500: $f6 $ff
    nop                                           ; $7502: $00
    rst RST_38                                    ; $7503: $ff
    ld hl, sp+$00                                 ; $7504: $f8 $00
    jr nz, jr_005_7520                            ; $7506: $20 $18

    ld b, b                                       ; $7508: $40
    sbc b                                         ; $7509: $98
    and b                                         ; $750a: $a0
    ld e, b                                       ; $750b: $58
    add b                                         ; $750c: $80
    ld a, b                                       ; $750d: $78
    ld c, d                                       ; $750e: $4a
    or b                                          ; $750f: $b0
    add hl, hl                                    ; $7510: $29
    ret nc                                        ; $7511: $d0

    inc b                                         ; $7512: $04
    ld hl, sp+$00                                 ; $7513: $f8 $00
    nop                                           ; $7515: $00
    inc bc                                        ; $7516: $03
    nop                                           ; $7517: $00
    ld h, b                                       ; $7518: $60
    ld [bc], a                                    ; $7519: $02
    nop                                           ; $751a: $00
    ld [$8800], sp                                ; $751b: $08 $00 $88
    nop                                           ; $751e: $00
    ld d, b                                       ; $751f: $50

jr_005_7520:
    ld [bc], a                                    ; $7520: $02
    ld [$02a4], sp                                ; $7521: $08 $a4 $02
    ld b, e                                       ; $7524: $43
    jr nz, @+$72                                  ; $7525: $20 $70

    ld b, $41                                     ; $7527: $06 $41
    nop                                           ; $7529: $00
    add hl, de                                    ; $752a: $19
    ld h, $41                                     ; $752b: $26 $41
    nop                                           ; $752d: $00
    ld e, b                                       ; $752e: $58
    ld b, $00                                     ; $752f: $06 $00
    ld h, d                                       ; $7531: $62
    inc hl                                        ; $7532: $23
    ld b, h                                       ; $7533: $44
    db $ed                                        ; $7534: $ed
    db $10                                        ; $7535: $10
    inc l                                         ; $7536: $2c
    sub b                                         ; $7537: $90
    rst RST_00                                    ; $7538: $c7
    jr jr_005_75a9                                ; $7539: $18 $6e

    sub b                                         ; $753b: $90
    and [hl]                                      ; $753c: $a6
    jr jr_005_75ac                                ; $753d: $18 $6d

    sub d                                         ; $753f: $92
    ld h, e                                       ; $7540: $63
    sbc h                                         ; $7541: $9c
    ld c, h                                       ; $7542: $4c
    inc de                                        ; $7543: $13
    nop                                           ; $7544: $00
    rst RST_38                                    ; $7545: $ff
    ret z                                         ; $7546: $c8

    scf                                           ; $7547: $37
    add b                                         ; $7548: $80
    ld a, a                                       ; $7549: $7f
    ret nz                                        ; $754a: $c0

    ccf                                           ; $754b: $3f
    nop                                           ; $754c: $00
    rst RST_38                                    ; $754d: $ff
    jp nz, $c73d                                  ; $754e: $c2 $3d $c7

    jr c, @-$62                                   ; $7551: $38 $9c

    ld h, c                                       ; $7553: $61
    nop                                           ; $7554: $00
    rst RST_38                                    ; $7555: $ff

jr_005_7556:
    nop                                           ; $7556: $00
    rst RST_38                                    ; $7557: $ff
    nop                                           ; $7558: $00
    rst RST_38                                    ; $7559: $ff
    add b                                         ; $755a: $80
    ld a, a                                       ; $755b: $7f
    nop                                           ; $755c: $00
    rst RST_38                                    ; $755d: $ff
    call nc, $a02b                                ; $755e: $d4 $2b $a0
    ld e, a                                       ; $7561: $5f
    add hl, bc                                    ; $7562: $09
    or [hl]                                       ; $7563: $b6
    ld c, b                                       ; $7564: $48
    or [hl]                                       ; $7565: $b6
    ld h, h                                       ; $7566: $64
    sbc c                                         ; $7567: $99
    inc h                                         ; $7568: $24
    ret c                                         ; $7569: $d8

    ld b, $f8                                     ; $756a: $06 $f8
    daa                                           ; $756c: $27
    ret c                                         ; $756d: $d8

    jr jr_005_7556                                ; $756e: $18 $e6

    ld hl, sp+$06                                 ; $7570: $f8 $06
    sbc h                                         ; $7572: $9c
    inc bc                                        ; $7573: $03
    db $10                                        ; $7574: $10
    add hl, hl                                    ; $7575: $29
    ld [$0000], sp                                ; $7576: $08 $00 $00
    and h                                         ; $7579: $a4
    nop                                           ; $757a: $00
    jr nz, jr_005_757d                            ; $757b: $20 $00

jr_005_757d:
    nop                                           ; $757d: $00
    add b                                         ; $757e: $80
    nop                                           ; $757f: $00
    ld [$208a], sp                                ; $7580: $08 $8a $20
    nop                                           ; $7583: $00
    nop                                           ; $7584: $00
    dec l                                         ; $7585: $2d
    nop                                           ; $7586: $00
    nop                                           ; $7587: $00
    ld bc, $0500                                  ; $7588: $01 $00 $05
    inc b                                         ; $758b: $04
    dec b                                         ; $758c: $05
    nop                                           ; $758d: $00
    add l                                         ; $758e: $85
    inc bc                                        ; $758f: $03
    nop                                           ; $7590: $00
    ld d, h                                       ; $7591: $54
    add hl, bc                                    ; $7592: $09
    dec [hl]                                      ; $7593: $35
    inc b                                         ; $7594: $04
    nop                                           ; $7595: $00
    add sp, $04                                   ; $7596: $e8 $04
    inc a                                         ; $7598: $3c
    nop                                           ; $7599: $00
    ld [$1806], sp                                ; $759a: $08 $06 $18
    rlca                                          ; $759d: $07
    nop                                           ; $759e: $00
    ld l, l                                       ; $759f: $6d
    nop                                           ; $75a0: $00
    nop                                           ; $75a1: $00
    add b                                         ; $75a2: $80
    ld b, [hl]                                    ; $75a3: $46
    dec h                                         ; $75a4: $25
    ld b, d                                       ; $75a5: $42
    dec e                                         ; $75a6: $1d
    ld b, d                                       ; $75a7: $42
    inc h                                         ; $75a8: $24

jr_005_75a9:
    ld b, d                                       ; $75a9: $42
    jr c, jr_005_75f3                             ; $75aa: $38 $47

jr_005_75ac:
    ld b, a                                       ; $75ac: $47
    jr c, jr_005_75b1                             ; $75ad: $38 $02

    ret nz                                        ; $75af: $c0

    nop                                           ; $75b0: $00

jr_005_75b1:
    nop                                           ; $75b1: $00
    ld b, e                                       ; $75b2: $43
    sbc h                                         ; $75b3: $9c
    ld c, b                                       ; $75b4: $48
    sub a                                         ; $75b5: $97
    ld a, [hl+]                                   ; $75b6: $2a
    sub l                                         ; $75b7: $95
    ret nc                                        ; $75b8: $d0

    rrca                                          ; $75b9: $0f
    ld c, a                                       ; $75ba: $4f
    or b                                          ; $75bb: $b0
    db $e4                                        ; $75bc: $e4
    dec bc                                        ; $75bd: $0b
    ld [$2104], sp                                ; $75be: $08 $04 $21
    nop                                           ; $75c1: $00
    sbc $01                                       ; $75c2: $de $01
    call nz, $933a                                ; $75c4: $c4 $3a $93
    ld l, h                                       ; $75c7: $6c
    ld h, [hl]                                    ; $75c8: $66
    sub c                                         ; $75c9: $91
    inc e                                         ; $75ca: $1c
    ldh [$ff03], a                                ; $75cb: $e0 $03
    nop                                           ; $75cd: $00
    nop                                           ; $75ce: $00
    ld a, [bc]                                    ; $75cf: $0a
    ret nz                                        ; $75d0: $c0

    nop                                           ; $75d1: $00
    ld h, c                                       ; $75d2: $61
    add h                                         ; $75d3: $84
    rra                                           ; $75d4: $1f
    nop                                           ; $75d5: $00
    call z, $8230                                 ; $75d6: $cc $30 $82
    ld d, l                                       ; $75d9: $55
    nop                                           ; $75da: $00
    nop                                           ; $75db: $00
    adc $00                                       ; $75dc: $ce $00
    inc c                                         ; $75de: $0c
    ld d, e                                       ; $75df: $53
    nop                                           ; $75e0: $00
    nop                                           ; $75e1: $00
    ldh a, [rTAC]                                 ; $75e2: $f0 $07
    inc bc                                        ; $75e4: $03
    nop                                           ; $75e5: $00
    ld sp, $3f00                                  ; $75e6: $31 $00 $3f
    ret nz                                        ; $75e9: $c0

    nop                                           ; $75ea: $00
    rrca                                          ; $75eb: $0f
    nop                                           ; $75ec: $00
    nop                                           ; $75ed: $00
    inc e                                         ; $75ee: $1c
    add b                                         ; $75ef: $80
    nop                                           ; $75f0: $00

jr_005_75f1:
    nop                                           ; $75f1: $00
    inc b                                         ; $75f2: $04

jr_005_75f3:
    db $e3                                        ; $75f3: $e3
    add d                                         ; $75f4: $82
    ld h, c                                       ; $75f5: $61
    inc a                                         ; $75f6: $3c
    ld bc, $00e7                                  ; $75f7: $01 $e7 $00
    nop                                           ; $75fa: $00
    ldh [$ff03], a                                ; $75fb: $e0 $03
    nop                                           ; $75fd: $00
    add b                                         ; $75fe: $80
    inc bc                                        ; $75ff: $03
    nop                                           ; $7600: $00
    sub b                                         ; $7601: $90
    ld b, $c0                                     ; $7602: $06 $c0
    ld bc, $0020                                  ; $7604: $01 $20 $00
    adc b                                         ; $7607: $88
    inc b                                         ; $7608: $04
    jr nz, jr_005_762b                            ; $7609: $20 $20

    sub b                                         ; $760b: $90
    ret nz                                        ; $760c: $c0

    nop                                           ; $760d: $00
    ld [bc], a                                    ; $760e: $02
    nop                                           ; $760f: $00
    jr nz, jr_005_7612                            ; $7610: $20 $00

jr_005_7612:
    nop                                           ; $7612: $00
    inc d                                         ; $7613: $14
    nop                                           ; $7614: $00
    add c                                         ; $7615: $81
    ld [$0003], sp                                ; $7616: $08 $03 $00
    add [hl]                                      ; $7619: $86
    ld [$0500], sp                                ; $761a: $08 $00 $05
    ld [$0804], sp                                ; $761d: $08 $04 $08
    add b                                         ; $7620: $80
    add c                                         ; $7621: $81
    ld b, $0d                                     ; $7622: $06 $0d
    ld c, h                                       ; $7624: $4c
    inc b                                         ; $7625: $04
    ld e, h                                       ; $7626: $5c
    inc b                                         ; $7627: $04
    inc c                                         ; $7628: $0c
    add a                                         ; $7629: $87
    db $f4                                        ; $762a: $f4

jr_005_762b:
    ld [$0804], sp                                ; $762b: $08 $04 $08
    inc b                                         ; $762e: $04
    ld [$0310], sp                                ; $762f: $08 $10 $03
    nop                                           ; $7632: $00
    adc h                                         ; $7633: $8c
    sub b                                         ; $7634: $90
    nop                                           ; $7635: $00

jr_005_7636:
    db $10                                        ; $7636: $10
    ld b, b                                       ; $7637: $40
    ld b, b                                       ; $7638: $40
    db $10                                        ; $7639: $10
    jp nc, Jump_000_0a20                          ; $763a: $d2 $20 $0a

    jr nc, @+$04                                  ; $763d: $30 $02

    ld a, b                                       ; $763f: $78
    ld [$8a00], sp                                ; $7640: $08 $00 $8a
    ld b, b                                       ; $7643: $40
    nop                                           ; $7644: $00
    stop                                          ; $7645: $10 $00
    stop                                          ; $7647: $10 $00
    ld [hl], d                                    ; $7649: $72
    inc c                                         ; $764a: $0c
    inc b                                         ; $764b: $04
    nop                                           ; $764c: $00
    add b                                         ; $764d: $80
    inc bc                                        ; $764e: $03
    nop                                           ; $764f: $00
    or b                                          ; $7650: $b0
    db $10                                        ; $7651: $10
    and l                                         ; $7652: $a5
    ld [$1902], sp                                ; $7653: $08 $02 $19
    inc h                                         ; $7656: $24
    ld a, [bc]                                    ; $7657: $0a
    add hl, bc                                    ; $7658: $09
    ld b, $a4                                     ; $7659: $06 $a4
    add hl, bc                                    ; $765b: $09
    ld b, b                                       ; $765c: $40
    ld [$8122], sp                                ; $765d: $08 $22 $81
    nop                                           ; $7660: $00
    ld c, h                                       ; $7661: $4c
    ld [bc], a                                    ; $7662: $02
    sbc c                                         ; $7663: $99
    ld b, b                                       ; $7664: $40
    cpl                                           ; $7665: $2f
    ldh a, [$ff0d]                                ; $7666: $f0 $0d
    ld b, d                                       ; $7668: $42
    or c                                          ; $7669: $b1
    adc a                                         ; $766a: $8f
    ld h, b                                       ; $766b: $60
    add b                                         ; $766c: $80
    ld b, e                                       ; $766d: $43
    nop                                           ; $766e: $00
    jr jr_005_75f1                                ; $766f: $18 $80

    ld h, b                                       ; $7671: $60
    ld [bc], a                                    ; $7672: $02
    ldh a, [$ff08]                                ; $7673: $f0 $08
    add b                                         ; $7675: $80
    ld [hl], b                                    ; $7676: $70
    add c                                         ; $7677: $81
    ld h, b                                       ; $7678: $60
    adc h                                         ; $7679: $8c
    ret nz                                        ; $767a: $c0

    ld [$000b], sp                                ; $767b: $08 $0b $00
    ld bc, $1900                                  ; $767e: $01 $00 $19
    inc bc                                        ; $7681: $03
    nop                                           ; $7682: $00
    pop bc                                        ; $7683: $c1
    ld [bc], a                                    ; $7684: $02
    nop                                           ; $7685: $00
    inc bc                                        ; $7686: $03
    inc b                                         ; $7687: $04
    jr @+$09                                      ; $7688: $18 $07

    nop                                           ; $768a: $00
    nop                                           ; $768b: $00

jr_005_768c:
    push bc                                       ; $768c: $c5
    ld [$0824], sp                                ; $768d: $08 $24 $08
    ld l, $00                                     ; $7690: $2e $00
    inc b                                         ; $7692: $04
    ld [$1804], sp                                ; $7693: $08 $04 $18
    ld c, [hl]                                    ; $7696: $4e
    nop                                           ; $7697: $00
    ld b, [hl]                                    ; $7698: $46
    sbc b                                         ; $7699: $98
    inc c                                         ; $769a: $0c
    nop                                           ; $769b: $00
    adc [hl]                                      ; $769c: $8e
    ld [hl], b                                    ; $769d: $70
    xor [hl]                                      ; $769e: $ae
    ld d, b                                       ; $769f: $50
    ld a, [bc]                                    ; $76a0: $0a
    ld [hl], b                                    ; $76a1: $70
    xor a                                         ; $76a2: $af
    db $10                                        ; $76a3: $10
    add [hl]                                      ; $76a4: $86
    ld a, b                                       ; $76a5: $78
    add [hl]                                      ; $76a6: $86
    ld a, b                                       ; $76a7: $78
    and l                                         ; $76a8: $a5
    ld d, d                                       ; $76a9: $52
    add a                                         ; $76aa: $87
    jr nc, jr_005_7636                            ; $76ab: $30 $89

    nop                                           ; $76ad: $00
    add d                                         ; $76ae: $82
    add hl, bc                                    ; $76af: $09
    and h                                         ; $76b0: $a4
    ld c, e                                       ; $76b1: $4b
    ret c                                         ; $76b2: $d8

    rlca                                          ; $76b3: $07
    ldh a, [$ff0e]                                ; $76b4: $f0 $0e
    and c                                         ; $76b6: $a1
    ld e, h                                       ; $76b7: $5c
    add c                                         ; $76b8: $81
    ld a, b                                       ; $76b9: $78
    add b                                         ; $76ba: $80
    ld [hl], b                                    ; $76bb: $70
    ld [bc], a                                    ; $76bc: $02
    db $fd                                        ; $76bd: $fd
    nop                                           ; $76be: $00
    rst RST_38                                    ; $76bf: $ff
    ld c, b                                       ; $76c0: $48
    add a                                         ; $76c1: $87
    ld [$0801], sp                                ; $76c2: $08 $01 $08
    inc bc                                        ; $76c5: $03
    nop                                           ; $76c6: $00
    add c                                         ; $76c7: $81
    add hl, bc                                    ; $76c8: $09
    inc bc                                        ; $76c9: $03

jr_005_76ca:
    nop                                           ; $76ca: $00
    jp Jump_000_0024                              ; $76cb: $c3 $24 $00


    pop bc                                        ; $76ce: $c1
    nop                                           ; $76cf: $00
    add [hl]                                      ; $76d0: $86
    ld h, b                                       ; $76d1: $60
    db $10                                        ; $76d2: $10
    add sp, $0b                                   ; $76d3: $e8 $0b
    db $f4                                        ; $76d5: $f4
    ld b, $39                                     ; $76d6: $06 $39
    dec b                                         ; $76d8: $05
    ld a, [de]                                    ; $76d9: $1a
    nop                                           ; $76da: $00
    rrca                                          ; $76db: $0f
    dec d                                         ; $76dc: $15
    ld a, [hl+]                                   ; $76dd: $2a
    adc b                                         ; $76de: $88
    rlca                                          ; $76df: $07
    inc d                                         ; $76e0: $14
    ld a, [bc]                                    ; $76e1: $0a
    ld [hl+], a                                   ; $76e2: $22
    add hl, bc                                    ; $76e3: $09
    sub b                                         ; $76e4: $90
    ld c, $11                                     ; $76e5: $0e $11
    inc c                                         ; $76e7: $0c
    add sp, $17                                   ; $76e8: $e8 $17
    jp nz, $1f19                                  ; $76ea: $c2 $19 $1f

    ldh [$ff3c], a                                ; $76ed: $e0 $3c
    jp $d428                                      ; $76ef: $c3 $28 $d4


    inc bc                                        ; $76f2: $03
    db $ec                                        ; $76f3: $ec
    nop                                           ; $76f4: $00
    rst RST_28                                    ; $76f5: $ef
    inc de                                        ; $76f6: $13
    call z, $bc02                                 ; $76f7: $cc $02 $bc
    ld c, b                                       ; $76fa: $48
    scf                                           ; $76fb: $37
    nop                                           ; $76fc: $00
    ldh [$ff60], a                                ; $76fd: $e0 $60
    inc b                                         ; $76ff: $04
    ldh [$ff0c], a                                ; $7700: $e0 $0c
    ld b, b                                       ; $7702: $40
    nop                                           ; $7703: $00
    ld h, b                                       ; $7704: $60
    adc [hl]                                      ; $7705: $8e
    nop                                           ; $7706: $00
    ld [hl], b                                    ; $7707: $70
    ld [bc], a                                    ; $7708: $02
    add b                                         ; $7709: $80
    jr z, jr_005_768c                             ; $770a: $28 $80

    nop                                           ; $770c: $00
    nop                                           ; $770d: $00
    ld b, [hl]                                    ; $770e: $46
    dec c                                         ; $770f: $0d
    nop                                           ; $7710: $00
    ldh a, [rBGP]                                 ; $7711: $f0 $47
    jr c, jr_005_771f                             ; $7713: $38 $0a

    ld [hl], l                                    ; $7715: $75
    adc b                                         ; $7716: $88
    scf                                           ; $7717: $37
    adc b                                         ; $7718: $88
    scf                                           ; $7719: $37
    ret nz                                        ; $771a: $c0

    ld a, $c0                                     ; $771b: $3e $c0
    inc a                                         ; $771d: $3c
    and l                                         ; $771e: $a5

jr_005_771f:
    ld e, b                                       ; $771f: $58
    dec l                                         ; $7720: $2d
    ld d, b                                       ; $7721: $50
    ld [bc], a                                    ; $7722: $02
    ldh [$ff0a], a                                ; $7723: $e0 $0a
    ret nz                                        ; $7725: $c0

    ld [bc], a                                    ; $7726: $02
    add c                                         ; $7727: $81
    ld de, $9302                                  ; $7728: $11 $02 $93
    inc b                                         ; $772b: $04
    dec d                                         ; $772c: $15
    ld [$1108], sp                                ; $772d: $08 $08 $11
    jr jr_005_7755                                ; $7730: $18 $23

    nop                                           ; $7732: $00
    ld a, b                                       ; $7733: $78
    ld a, b                                       ; $7734: $78
    add h                                         ; $7735: $84
    sub h                                         ; $7736: $94
    inc bc                                        ; $7737: $03
    inc hl                                        ; $7738: $23
    nop                                           ; $7739: $00
    ld b, b                                       ; $773a: $40
    jr c, @+$03                                   ; $773b: $38 $01

    cp $00                                        ; $773d: $fe $00
    rst RST_38                                    ; $773f: $ff
    nop                                           ; $7740: $00
    rst RST_38                                    ; $7741: $ff
    and b                                         ; $7742: $a0
    inc bc                                        ; $7743: $03
    nop                                           ; $7744: $00
    ld bc, $0024                                  ; $7745: $01 $24 $00
    jr nz, jr_005_76ca                            ; $7748: $20 $80

    xor b                                         ; $774a: $a8
    ld b, b                                       ; $774b: $40
    ld b, d                                       ; $774c: $42
    jr nc, jr_005_777f                            ; $774d: $30 $30

    ld [$c41a], sp                                ; $774f: $08 $1a $c4
    and h                                         ; $7752: $a4
    ld d, d                                       ; $7753: $52
    ld h, b                                       ; $7754: $60

jr_005_7755:
    sbc l                                         ; $7755: $9d
    ld [$c0f7], sp                                ; $7756: $08 $f7 $c0
    dec a                                         ; $7759: $3d
    ldh [rNR12], a                                ; $775a: $e0 $12
    add h                                         ; $775c: $84
    dec de                                        ; $775d: $1b
    nop                                           ; $775e: $00
    ld e, $20                                     ; $775f: $1e $20
    dec d                                         ; $7761: $15
    ldh a, [$ff0c]                                ; $7762: $f0 $0c
    ld d, c                                       ; $7764: $51
    xor b                                         ; $7765: $a8
    rlca                                          ; $7766: $07
    ld d, b                                       ; $7767: $50
    ld c, $c1                                     ; $7768: $0e $c1
    ld e, $c0                                     ; $776a: $1e $c0
    ld sp, $00cc                                  ; $776c: $31 $cc $00
    sbc d                                         ; $776f: $9a
    ld hl, $709e                                  ; $7770: $21 $9e $70
    add [hl]                                      ; $7773: $86
    ld b, d                                       ; $7774: $42
    adc h                                         ; $7775: $8c
    ld [$20e0], sp                                ; $7776: $08 $e0 $20
    jp $9e60                                      ; $7779: $c3 $60 $9e


    nop                                           ; $777c: $00
    ld hl, sp+$02                                 ; $777d: $f8 $02

jr_005_777f:
    adc b                                         ; $777f: $88
    ld h, h                                       ; $7780: $64
    ld [$0003], sp                                ; $7781: $08 $03 $00
    add [hl]                                      ; $7784: $86
    ret nz                                        ; $7785: $c0

    nop                                           ; $7786: $00
    nop                                           ; $7787: $00
    jr nz, jr_005_778a                            ; $7788: $20 $00

jr_005_778a:
    add b                                         ; $778a: $80
    ld b, $00                                     ; $778b: $06 $00
    rst RST_38                                    ; $778d: $ff
    ldh [rNR32], a                                ; $778e: $e0 $1c
    ld h, b                                       ; $7790: $60
    ld c, [hl]                                    ; $7791: $4e
    jr nc, jr_005_77e2                            ; $7792: $30 $4e

    ld sp, $1ae5                                  ; $7794: $31 $e5 $1a
    add d                                         ; $7797: $82
    inc a                                         ; $7798: $3c
    add $38                                       ; $7799: $c6 $38
    ld [hl+], a                                   ; $779b: $22
    ld e, c                                       ; $779c: $59
    db $10                                        ; $779d: $10
    ld l, e                                       ; $779e: $6b
    jr nz, jr_005_77e8                            ; $779f: $20 $47

    ld b, b                                       ; $77a1: $40
    adc a                                         ; $77a2: $8f
    ret nz                                        ; $77a3: $c0

    rra                                           ; $77a4: $1f
    ld b, b                                       ; $77a5: $40
    ccf                                           ; $77a6: $3f
    nop                                           ; $77a7: $00
    ld a, a                                       ; $77a8: $7f
    nop                                           ; $77a9: $00
    rst RST_38                                    ; $77aa: $ff
    inc b                                         ; $77ab: $04
    ei                                            ; $77ac: $fb
    nop                                           ; $77ad: $00
    rst RST_38                                    ; $77ae: $ff
    nop                                           ; $77af: $00
    rst RST_38                                    ; $77b0: $ff
    nop                                           ; $77b1: $00
    rst RST_38                                    ; $77b2: $ff
    nop                                           ; $77b3: $00
    rst RST_38                                    ; $77b4: $ff
    nop                                           ; $77b5: $00
    rst RST_38                                    ; $77b6: $ff
    nop                                           ; $77b7: $00
    rst RST_38                                    ; $77b8: $ff
    nop                                           ; $77b9: $00
    rst RST_38                                    ; $77ba: $ff
    nop                                           ; $77bb: $00
    rst RST_38                                    ; $77bc: $ff
    nop                                           ; $77bd: $00
    rst RST_38                                    ; $77be: $ff
    inc d                                         ; $77bf: $14
    db $e3                                        ; $77c0: $e3
    inc bc                                        ; $77c1: $03
    ldh a, [rSB]                                  ; $77c2: $f0 $01
    db $fc                                        ; $77c4: $fc
    ld bc, $00fe                                  ; $77c5: $01 $fe $00
    rst RST_38                                    ; $77c8: $ff
    nop                                           ; $77c9: $00
    rst RST_38                                    ; $77ca: $ff
    nop                                           ; $77cb: $00
    rst RST_38                                    ; $77cc: $ff
    nop                                           ; $77cd: $00
    rst RST_38                                    ; $77ce: $ff
    ld h, d                                       ; $77cf: $62
    dec c                                         ; $77d0: $0d
    ld h, d                                       ; $77d1: $62
    sbc l                                         ; $77d2: $9d
    and b                                         ; $77d3: $a0
    ld e, a                                       ; $77d4: $5f
    ld b, b                                       ; $77d5: $40
    ccf                                           ; $77d6: $3f
    ld hl, $411a                                  ; $77d7: $21 $1a $41
    sbc h                                         ; $77da: $9c
    rlca                                          ; $77db: $07
    ret c                                         ; $77dc: $d8

    ld [bc], a                                    ; $77dd: $02
    pop af                                        ; $77de: $f1
    ld b, b                                       ; $77df: $40
    jr @+$27                                      ; $77e0: $18 $25

jr_005_77e2:
    ret c                                         ; $77e2: $d8

    inc hl                                        ; $77e3: $23
    ret c                                         ; $77e4: $d8

    ld b, $18                                     ; $77e5: $06 $18
    ld [hl], b                                    ; $77e7: $70

jr_005_77e8:
    ld a, [bc]                                    ; $77e8: $0a
    ldh [rIF], a                                  ; $77e9: $e0 $0f
    add e                                         ; $77eb: $83
    jr nc, jr_005_77f3                            ; $77ec: $30 $05

    add sp, -$10                                  ; $77ee: $e8 $f0
    nop                                           ; $77f0: $00
    ldh a, [$ff0d]                                ; $77f1: $f0 $0d

jr_005_77f3:
    add b                                         ; $77f3: $80
    ld a, $04                                     ; $77f4: $3e $04
    ld [$e20d], a                                 ; $77f6: $ea $0d $e2
    jr jr_005_785f                                ; $77f9: $18 $64

    sbc d                                         ; $77fb: $9a
    ld h, b                                       ; $77fc: $60
    and a                                         ; $77fd: $a7
    db $10                                        ; $77fe: $10
    ld bc, $000e                                  ; $77ff: $01 $0e $00
    dec d                                         ; $7802: $15
    ld b, $00                                     ; $7803: $06 $00
    nop                                           ; $7805: $00
    ld bc, $0419                                  ; $7806: $01 $19 $04
    ld bc, $0800                                  ; $7809: $01 $00 $08
    ret nz                                        ; $780c: $c0

    adc h                                         ; $780d: $8c
    ld [$e005], sp                                ; $780e: $08 $05 $e0
    rra                                           ; $7811: $1f
    sub b                                         ; $7812: $90
    ld l, a                                       ; $7813: $6f
    jr nz, @+$61                                  ; $7814: $20 $5f

    inc b                                         ; $7816: $04
    dec sp                                        ; $7817: $3b
    ld b, b                                       ; $7818: $40
    ccf                                           ; $7819: $3f
    add b                                         ; $781a: $80
    add [hl]                                      ; $781b: $86
    inc b                                         ; $781c: $04
    ld a, a                                       ; $781d: $7f
    dec a                                         ; $781e: $3d
    ld a, d                                       ; $781f: $7a
    ld a, [hl]                                    ; $7820: $7e
    add [hl]                                      ; $7821: $86
    nop                                           ; $7822: $00
    rst RST_38                                    ; $7823: $ff
    db $10                                        ; $7824: $10
    rst RST_28                                    ; $7825: $ef
    nop                                           ; $7826: $00
    rst RST_38                                    ; $7827: $ff
    add b                                         ; $7828: $80
    add [hl]                                      ; $7829: $86
    dec b                                         ; $782a: $05
    db $d3                                        ; $782b: $d3
    ld [hl], h                                    ; $782c: $74
    cp e                                          ; $782d: $bb
    adc d                                         ; $782e: $8a

jr_005_782f:
    cp $ea                                        ; $782f: $fe $ea
    nop                                           ; $7831: $00
    rst RST_38                                    ; $7832: $ff
    ld b, b                                       ; $7833: $40
    cp a                                          ; $7834: $bf
    adc b                                         ; $7835: $88
    ld [hl], a                                    ; $7836: $77
    nop                                           ; $7837: $00
    rst RST_38                                    ; $7838: $ff
    ld c, b                                       ; $7839: $48
    or a                                          ; $783a: $b7

Call_005_783b:
    ld d, h                                       ; $783b: $54

jr_005_783c:
    xor e                                         ; $783c: $ab
    rla                                           ; $783d: $17
    add sp, $00                                   ; $783e: $e8 $00
    rst RST_38                                    ; $7840: $ff
    nop                                           ; $7841: $00
    rst RST_38                                    ; $7842: $ff
    nop                                           ; $7843: $00
    rst RST_38                                    ; $7844: $ff
    nop                                           ; $7845: $00
    rst RST_38                                    ; $7846: $ff
    nop                                           ; $7847: $00
    rst RST_38                                    ; $7848: $ff
    nop                                           ; $7849: $00
    rst RST_38                                    ; $784a: $ff
    nop                                           ; $784b: $00
    rst RST_38                                    ; $784c: $ff
    nop                                           ; $784d: $00
    rst RST_38                                    ; $784e: $ff
    inc b                                         ; $784f: $04
    di                                            ; $7850: $f3
    nop                                           ; $7851: $00
    ei                                            ; $7852: $fb
    nop                                           ; $7853: $00
    db $fc                                        ; $7854: $fc
    ld bc, $21fc                                  ; $7855: $01 $fc $21
    jp c, $db20                                   ; $7858: $da $20 $db

    nop                                           ; $785b: $00
    cp $01                                        ; $785c: $fe $01
    db $f4                                        ; $785e: $f4

jr_005_785f:
    ld d, $c1                                     ; $785f: $16 $c1
    jr jr_005_78a9                                ; $7861: $18 $46

    or e                                          ; $7863: $b3
    ld c, h                                       ; $7864: $4c
    and c                                         ; $7865: $a1
    ld d, h                                       ; $7866: $54
    nop                                           ; $7867: $00
    adc $19                                       ; $7868: $ce $19
    inc b                                         ; $786a: $04
    ldh [c], a                                    ; $786b: $e2
    dec c                                         ; $786c: $0d
    ld b, b                                       ; $786d: $40
    ld l, $39                                     ; $786e: $2e $39

Call_005_7870:
    ld b, h                                       ; $7870: $44
    ret nz                                        ; $7871: $c0

    dec sp                                        ; $7872: $3b
    dec b                                         ; $7873: $05
    add sp, $1c                                   ; $7874: $e8 $1c
    add b                                         ; $7876: $80
    ld h, h                                       ; $7877: $64
    dec bc                                        ; $7878: $0b
    sub $21                                       ; $7879: $d6 $21
    nop                                           ; $787b: $00
    rst RST_38                                    ; $787c: $ff
    inc l                                         ; $787d: $2c
    ret nz                                        ; $787e: $c0

    ld h, b                                       ; $787f: $60
    add b                                         ; $7880: $80
    nop                                           ; $7881: $00
    db $fc                                        ; $7882: $fc
    nop                                           ; $7883: $00
    nop                                           ; $7884: $00
    xor b                                         ; $7885: $a8
    nop                                           ; $7886: $00
    ld b, b                                       ; $7887: $40
    nop                                           ; $7888: $00
    ld [$02e0], sp                                ; $7889: $08 $e0 $02
    cp b                                          ; $788c: $b8
    jr jr_005_782f                                ; $788d: $18 $a0

    ld b, $79                                     ; $788f: $06 $79
    ld h, e                                       ; $7891: $63
    inc e                                         ; $7892: $1c
    xor $11                                       ; $7893: $ee $11
    adc d                                         ; $7895: $8a
    dec [hl]                                      ; $7896: $35
    ld b, a                                       ; $7897: $47
    jr c, jr_005_78bd                             ; $7898: $38 $23

    ld e, h                                       ; $789a: $5c
    add b                                         ; $789b: $80
    add [hl]                                      ; $789c: $86
    ld b, $78                                     ; $789d: $06 $78
    db $10                                        ; $789f: $10
    jr nc, jr_005_783c                            ; $78a0: $30 $9a

    jr nz, jr_005_78ec                            ; $78a2: $20 $48

    add d                                         ; $78a4: $82
    rst RST_38                                    ; $78a5: $ff
    nop                                           ; $78a6: $00
    add b                                         ; $78a7: $80
    add [hl]                                      ; $78a8: $86

jr_005_78a9:
    inc d                                         ; $78a9: $14
    inc b                                         ; $78aa: $04
    ld [de], a                                    ; $78ab: $12
    ld d, b                                       ; $78ac: $50
    sbc e                                         ; $78ad: $9b
    dec h                                         ; $78ae: $25
    sub h                                         ; $78af: $94
    ld b, d                                       ; $78b0: $42
    ld l, l                                       ; $78b1: $6d
    dec de                                        ; $78b2: $1b
    ld [hl+], a                                   ; $78b3: $22
    halt                                          ; $78b4: $76
    ld a, a                                       ; $78b5: $7f
    ld l, a                                       ; $78b6: $6f
    cp a                                          ; $78b7: $bf
    db $eb                                        ; $78b8: $eb
    sbc a                                         ; $78b9: $9f
    ld e, a                                       ; $78ba: $5f
    res 7, a                                      ; $78bb: $cb $bf

jr_005_78bd:
    db $fc                                        ; $78bd: $fc
    sub $40                                       ; $78be: $d6 $40
    cp e                                          ; $78c0: $bb
    ld bc, $00fe                                  ; $78c1: $01 $fe $00
    ld hl, sp+$42                                 ; $78c4: $f8 $42
    cp c                                          ; $78c6: $b9
    add b                                         ; $78c7: $80
    ld a, [hl]                                    ; $78c8: $7e
    nop                                           ; $78c9: $00
    rst RST_38                                    ; $78ca: $ff
    nop                                           ; $78cb: $00
    db $fc                                        ; $78cc: $fc
    db $10                                        ; $78cd: $10
    add sp, $07                                   ; $78ce: $e8 $07
    ldh [$ff87], a                                ; $78d0: $e0 $87
    ld d, b                                       ; $78d2: $50
    cp a                                          ; $78d3: $bf
    ld b, b                                       ; $78d4: $40
    xor h                                         ; $78d5: $ac
    ld b, c                                       ; $78d6: $41
    db $10                                        ; $78d7: $10
    jp z, Jump_005_6d00                           ; $78d8: $ca $00 $6d

    jp c, Jump_000_0705                           ; $78db: $da $05 $07

    ret nz                                        ; $78de: $c0

    dec e                                         ; $78df: $1d
    ret nz                                        ; $78e0: $c0

jr_005_78e1:
    inc sp                                        ; $78e1: $33
    ret nz                                        ; $78e2: $c0

    rrca                                          ; $78e3: $0f
    ldh [$ff3e], a                                ; $78e4: $e0 $3e
    add b                                         ; $78e6: $80
    nop                                           ; $78e7: $00
    rst RST_38                                    ; $78e8: $ff
    nop                                           ; $78e9: $00
    add $14                                       ; $78ea: $c6 $14

jr_005_78ec:
    add d                                         ; $78ec: $82
    nop                                           ; $78ed: $00
    cp [hl]                                       ; $78ee: $be
    nop                                           ; $78ef: $00
    ld a, [hl-]                                   ; $78f0: $3a
    nop                                           ; $78f1: $00
    add b                                         ; $78f2: $80
    db $fc                                        ; $78f3: $fc
    nop                                           ; $78f4: $00
    ldh [rP1], a                                  ; $78f5: $e0 $00
    ld [hl], b                                    ; $78f7: $70
    nop                                           ; $78f8: $00
    nop                                           ; $78f9: $00
    ld l, $00                                     ; $78fa: $2e $00
    add b                                         ; $78fc: $80
    inc h                                         ; $78fd: $24
    jr jr_005_7954                                ; $78fe: $18 $54

    xor b                                         ; $7900: $a8
    ld [hl], b                                    ; $7901: $70
    inc c                                         ; $7902: $0c
    jr nz, jr_005_78e1                            ; $7903: $20 $dc

    nop                                           ; $7905: $00
    inc a                                         ; $7906: $3c
    inc bc                                        ; $7907: $03
    ld a, h                                       ; $7908: $7c
    ldh [rNR10], a                                ; $7909: $e0 $10
    add e                                         ; $790b: $83
    db $10                                        ; $790c: $10
    add [hl]                                      ; $790d: $86
    ld a, c                                       ; $790e: $79
    add [hl]                                      ; $790f: $86
    add hl, sp                                    ; $7910: $39
    ld d, a                                       ; $7911: $57
    jr z, jr_005_7967                             ; $7912: $28 $53

    inc l                                         ; $7914: $2c
    add b                                         ; $7915: $80
    add [hl]                                      ; $7916: $86
    dec bc                                        ; $7917: $0b
    ld a, h                                       ; $7918: $7c
    ld a, a                                       ; $7919: $7f
    sbc a                                         ; $791a: $9f
    ld hl, sp+$25                                 ; $791b: $f8 $25
    dec l                                         ; $791d: $2d
    inc b                                         ; $791e: $04
    ld bc, $e912                                  ; $791f: $01 $12 $e9
    cp l                                          ; $7922: $bd
    add d                                         ; $7923: $82
    ld c, $00                                     ; $7924: $0e $00

jr_005_7926:
    add b                                         ; $7926: $80
    add [hl]                                      ; $7927: $86
    rlca                                          ; $7928: $07
    ld h, e                                       ; $7929: $63
    ld b, h                                       ; $792a: $44
    db $10                                        ; $792b: $10
    add hl, de                                    ; $792c: $19
    ld b, [hl]                                    ; $792d: $46
    dec h                                         ; $792e: $25
    ld a, a                                       ; $792f: $7f
    add d                                         ; $7930: $82
    ld bc, $8010                                  ; $7931: $01 $10 $80
    add [hl]                                      ; $7934: $86
    rlca                                          ; $7935: $07
    rst RST_10                                    ; $7936: $d7
    ld [hl], e                                    ; $7937: $73
    dec b                                         ; $7938: $05
    sub a                                         ; $7939: $97
    ld d, a                                       ; $793a: $57
    rst RST_18                                    ; $793b: $df
    xor a                                         ; $793c: $af

jr_005_793d:
    rst RST_38                                    ; $793d: $ff
    sbc b                                         ; $793e: $98
    nop                                           ; $793f: $00
    ld de, $83ee                                  ; $7940: $11 $ee $83
    ld a, b                                       ; $7943: $78
    inc bc                                        ; $7944: $03
    ld hl, sp+$20                                 ; $7945: $f8 $20
    rst RST_18                                    ; $7947: $df
    jr nz, jr_005_7926                            ; $7948: $20 $dc

    ld hl, $06d0                                  ; $794a: $21 $d0 $06
    pop af                                        ; $794d: $f1
    inc b                                         ; $794e: $04
    sub c                                         ; $794f: $91
    ld a, d                                       ; $7950: $7a
    dec b                                         ; $7951: $05
    ret nc                                        ; $7952: $d0

    rlca                                          ; $7953: $07

jr_005_7954:
    ld h, b                                       ; $7954: $60
    ld e, $00                                     ; $7955: $1e $00
    db $fd                                        ; $7957: $fd
    ld [bc], a                                    ; $7958: $02
    and l                                         ; $7959: $a5
    ld d, e                                       ; $795a: $53
    jr z, jr_005_79a0                             ; $795b: $28 $43

    jr nc, jr_005_793d                            ; $795d: $30 $de

    ld hl, $a718                                  ; $795f: $21 $18 $a7
    add sp, $17                                   ; $7962: $e8 $17
    ld c, b                                       ; $7964: $48
    sub h                                         ; $7965: $94
    inc hl                                        ; $7966: $23

jr_005_7967:
    ret nz                                        ; $7967: $c0

    ld c, $60                                     ; $7968: $0e $60
    rra                                           ; $796a: $1f
    ld h, b                                       ; $796b: $60
    pop bc                                        ; $796c: $c1
    ld [hl], $1b                                  ; $796d: $36 $1b
    ld h, b                                       ; $796f: $60
    add l                                         ; $7970: $85
    ld [hl], d                                    ; $7971: $72
    ld sp, $4302                                  ; $7972: $31 $02 $43
    jr nc, jr_005_799d                            ; $7975: $30 $26

    sub c                                         ; $7977: $91
    daa                                           ; $7978: $27
    sub b                                         ; $7979: $90
    ld b, d                                       ; $797a: $42
    ld sp, $d320                                  ; $797b: $31 $20 $d3
    stop                                          ; $797e: $10 $00
    and h                                         ; $7980: $a4
    ld e, c                                       ; $7981: $59
    add a                                         ; $7982: $87
    ld a, b                                       ; $7983: $78
    ld b, $f9                                     ; $7984: $06 $f9
    nop                                           ; $7986: $00
    rst RST_38                                    ; $7987: $ff
    ld b, l                                       ; $7988: $45
    cp d                                          ; $7989: $ba
    ld bc, $14fe                                  ; $798a: $01 $fe $14
    ldh [rNR52], a                                ; $798d: $e0 $26
    nop                                           ; $798f: $00
    adc a                                         ; $7990: $8f
    nop                                           ; $7991: $00
    ld [de], a                                    ; $7992: $12
    nop                                           ; $7993: $00
    add hl, sp                                    ; $7994: $39
    add $00                                       ; $7995: $c6 $00
    rst RST_38                                    ; $7997: $ff
    sbc $21                                       ; $7998: $de $21
    db $10                                        ; $799a: $10
    xor a                                         ; $799b: $af
    ld [hl], c                                    ; $799c: $71

jr_005_799d:
    adc h                                         ; $799d: $8c
    ld e, c                                       ; $799e: $59
    nop                                           ; $799f: $00

jr_005_79a0:
    ld h, d                                       ; $79a0: $62
    inc e                                         ; $79a1: $1c
    nop                                           ; $79a2: $00
    rrca                                          ; $79a3: $0f
    and b                                         ; $79a4: $a0
    ld e, a                                       ; $79a5: $5f
    ld h, b                                       ; $79a6: $60
    sbc b                                         ; $79a7: $98
    ld b, e                                       ; $79a8: $43
    adc b                                         ; $79a9: $88
    or [hl]                                       ; $79aa: $b6
    ld c, c                                       ; $79ab: $49
    ld [bc], a                                    ; $79ac: $02
    db $fd                                        ; $79ad: $fd
    ld h, b                                       ; $79ae: $60
    ld de, $02fc                                  ; $79af: $11 $fc $02
    nop                                           ; $79b2: $00
    jp c, $fb00                                   ; $79b3: $da $00 $fb

    nop                                           ; $79b6: $00
    ld h, a                                       ; $79b7: $67
    xor h                                         ; $79b8: $ac
    inc bc                                        ; $79b9: $03
    inc e                                         ; $79ba: $1c
    add d                                         ; $79bb: $82
    ld a, d                                       ; $79bc: $7a
    inc bc                                        ; $79bd: $03
    nop                                           ; $79be: $00
    sub b                                         ; $79bf: $90
    dec b                                         ; $79c0: $05
    ld a, [hl+]                                   ; $79c1: $2a
    inc d                                         ; $79c2: $14
    xor e                                         ; $79c3: $ab
    nop                                           ; $79c4: $00
    or $60                                        ; $79c5: $f6 $60
    ld [bc], a                                    ; $79c7: $02
    ld l, c                                       ; $79c8: $69
    ld [bc], a                                    ; $79c9: $02
    db $fd                                        ; $79ca: $fd
    nop                                           ; $79cb: $00
    ldh [$ff0a], a                                ; $79cc: $e0 $0a
    db $10                                        ; $79ce: $10

jr_005_79cf:
    add b                                         ; $79cf: $80
    nop                                           ; $79d0: $00
    ld [de], a                                    ; $79d1: $12
    nop                                           ; $79d2: $00
    add c                                         ; $79d3: $81
    db $10                                        ; $79d4: $10
    dec b                                         ; $79d5: $05
    nop                                           ; $79d6: $00
    adc b                                         ; $79d7: $88
    inc de                                        ; $79d8: $13
    nop                                           ; $79d9: $00
    jp nz, Jump_005_4e01                          ; $79da: $c2 $01 $4e

    jr nc, jr_005_7a4f                            ; $79dd: $30 $70

    dec bc                                        ; $79df: $0b
    add b                                         ; $79e0: $80
    add c                                         ; $79e1: $81
    dec b                                         ; $79e2: $05
    inc c                                         ; $79e3: $0c
    inc bc                                        ; $79e4: $03
    sbc c                                         ; $79e5: $99
    ld bc, $b63f                                  ; $79e6: $01 $3f $b6
    rlca                                          ; $79e9: $07
    ld hl, sp+$00                                 ; $79ea: $f8 $00
    rst RST_18                                    ; $79ec: $df
    nop                                           ; $79ed: $00
    ld h, [hl]                                    ; $79ee: $66
    ld h, e                                       ; $79ef: $63
    nop                                           ; $79f0: $00
    ldh [$ff1f], a                                ; $79f1: $e0 $1f
    dec sp                                        ; $79f3: $3b
    add h                                         ; $79f4: $84
    sub b                                         ; $79f5: $90
    ld l, a                                       ; $79f6: $6f
    ldh [$ff1f], a                                ; $79f7: $e0 $1f
    inc b                                         ; $79f9: $04
    ei                                            ; $79fa: $fb
    ld d, b                                       ; $79fb: $50
    adc a                                         ; $79fc: $8f
    ld [hl], b                                    ; $79fd: $70
    rrca                                          ; $79fe: $0f
    dec hl                                        ; $79ff: $2b
    ld b, b                                       ; $7a00: $40
    ld [bc], a                                    ; $7a01: $02
    ld sp, hl                                     ; $7a02: $f9
    nop                                           ; $7a03: $00
    rst RST_38                                    ; $7a04: $ff
    nop                                           ; $7a05: $00
    rst RST_38                                    ; $7a06: $ff
    nop                                           ; $7a07: $00
    rst RST_38                                    ; $7a08: $ff
    nop                                           ; $7a09: $00
    rst RST_38                                    ; $7a0a: $ff
    nop                                           ; $7a0b: $00
    rst RST_38                                    ; $7a0c: $ff
    nop                                           ; $7a0d: $00
    rst RST_38                                    ; $7a0e: $ff
    ld d, b                                       ; $7a0f: $50
    nop                                           ; $7a10: $00
    ld [$52f0], sp                                ; $7a11: $08 $f0 $52
    and b                                         ; $7a14: $a0
    add hl, bc                                    ; $7a15: $09
    ldh a, [rTMA]                                 ; $7a16: $f0 $06
    ld sp, hl                                     ; $7a18: $f9
    ld [bc], a                                    ; $7a19: $02
    ld sp, hl                                     ; $7a1a: $f9
    inc b                                         ; $7a1b: $04
    ld sp, hl                                     ; $7a1c: $f9
    ld b, $f9                                     ; $7a1d: $06 $f9
    add b                                         ; $7a1f: $80

jr_005_7a20:
    add c                                         ; $7a20: $81
    inc b                                         ; $7a21: $04
    inc b                                         ; $7a22: $04
    add b                                         ; $7a23: $80
    jr nc, jr_005_7a46                            ; $7a24: $30 $20

    cp b                                          ; $7a26: $b8
    db $d3                                        ; $7a27: $d3
    inc b                                         ; $7a28: $04
    xor b                                         ; $7a29: $a8
    ld d, d                                       ; $7a2a: $52
    ld l, c                                       ; $7a2b: $69
    sub h                                         ; $7a2c: $94

jr_005_7a2d:
    add b                                         ; $7a2d: $80
    jr nc, jr_005_7a31                            ; $7a2e: $30 $01

    nop                                           ; $7a30: $00

jr_005_7a31:
    and b                                         ; $7a31: $a0
    dec c                                         ; $7a32: $0d
    ld [$0802], sp                                ; $7a33: $08 $02 $08
    inc bc                                        ; $7a36: $03
    xor e                                         ; $7a37: $ab
    ld d, b                                       ; $7a38: $50
    inc a                                         ; $7a39: $3c
    ld bc, $000f                                  ; $7a3a: $01 $0f $00
    ld l, h                                       ; $7a3d: $6c
    ld [de], a                                    ; $7a3e: $12
    jp nz, Jump_000_183c                          ; $7a3f: $c2 $3c $18

    ldh [rNR13], a                                ; $7a42: $e0 $13
    ldh [rSB], a                                  ; $7a44: $e0 $01

jr_005_7a46:
    jr nc, jr_005_79cf                            ; $7a46: $30 $87

    nop                                           ; $7a48: $00
    ld d, h                                       ; $7a49: $54
    and e                                         ; $7a4a: $a3
    add a                                         ; $7a4b: $87
    jr nz, @-$2e                                  ; $7a4c: $20 $d0

    cpl                                           ; $7a4e: $2f

jr_005_7a4f:
    nop                                           ; $7a4f: $00
    inc e                                         ; $7a50: $1c
    ld d, c                                       ; $7a51: $51
    ld b, $b8                                     ; $7a52: $06 $b8
    rlca                                          ; $7a54: $07
    call nz, Call_005_783b                        ; $7a55: $c4 $3b $78
    ld b, $33                                     ; $7a58: $06 $33
    call z, $f005                                 ; $7a5a: $cc $05 $f0
    rlca                                          ; $7a5d: $07
    ld h, b                                       ; $7a5e: $60
    add b                                         ; $7a5f: $80
    add [hl]                                      ; $7a60: $86
    inc b                                         ; $7a61: $04
    rla                                           ; $7a62: $17
    ld a, a                                       ; $7a63: $7f
    cp d                                          ; $7a64: $ba
    rst RST_10                                    ; $7a65: $d7
    xor l                                         ; $7a66: $ad
    inc h                                         ; $7a67: $24
    dec de                                        ; $7a68: $1b
    ld b, b                                       ; $7a69: $40
    rra                                           ; $7a6a: $1f
    ret nz                                        ; $7a6b: $c0

    ccf                                           ; $7a6c: $3f
    adc h                                         ; $7a6d: $8c
    ld h, e                                       ; $7a6e: $63
    nop                                           ; $7a6f: $00
    rst RST_38                                    ; $7a70: $ff
    ld de, $a4ee                                  ; $7a71: $11 $ee $a4
    ld e, e                                       ; $7a74: $5b
    ld [hl], e                                    ; $7a75: $73
    adc h                                         ; $7a76: $8c
    nop                                           ; $7a77: $00
    rst RST_38                                    ; $7a78: $ff
    ld b, [hl]                                    ; $7a79: $46
    adc c                                         ; $7a7a: $89
    dec b                                         ; $7a7b: $05
    ld a, [$ff00]                                 ; $7a7c: $fa $00 $ff
    ld b, $f8                                     ; $7a7f: $06 $f8
    adc b                                         ; $7a81: $88
    ld [hl], c                                    ; $7a82: $71
    inc c                                         ; $7a83: $0c
    pop af                                        ; $7a84: $f1
    ld b, d                                       ; $7a85: $42
    cp c                                          ; $7a86: $b9
    ld a, [bc]                                    ; $7a87: $0a
    pop af                                        ; $7a88: $f1
    ld b, l                                       ; $7a89: $45
    cp d                                          ; $7a8a: $ba
    ld bc, $04fa                                  ; $7a8b: $01 $fa $04
    ei                                            ; $7a8e: $fb
    and b                                         ; $7a8f: $a0
    inc b                                         ; $7a90: $04
    add sp, $04                                   ; $7a91: $e8 $04
    halt                                          ; $7a93: $76
    inc bc                                        ; $7a94: $03
    nop                                           ; $7a95: $00
    add [hl]                                      ; $7a96: $86
    ld d, h                                       ; $7a97: $54
    jr nz, jr_005_7a20                            ; $7a98: $20 $86

    jr z, jr_005_7a2d                             ; $7a9a: $28 $91

    ld h, h                                       ; $7a9c: $64
    add b                                         ; $7a9d: $80
    add c                                         ; $7a9e: $81
    inc b                                         ; $7a9f: $04
    ld hl, sp+$07                                 ; $7aa0: $f8 $07
    rrca                                          ; $7aa2: $0f
    ld b, [hl]                                    ; $7aa3: $46
    push hl                                       ; $7aa4: $e5
    db $10                                        ; $7aa5: $10
    inc bc                                        ; $7aa6: $03
    ld [bc], a                                    ; $7aa7: $02
    dec c                                         ; $7aa8: $0d
    ld a, [bc]                                    ; $7aa9: $0a
    inc b                                         ; $7aaa: $04
    ld [$1826], sp                                ; $7aab: $08 $26 $18
    ld b, [hl]                                    ; $7aae: $46
    db $10                                        ; $7aaf: $10
    db $ec                                        ; $7ab0: $ec
    ret nz                                        ; $7ab1: $c0

    jr c, jr_005_7ab6                             ; $7ab2: $38 $02

    ld a, b                                       ; $7ab4: $78
    ld c, c                                       ; $7ab5: $49

jr_005_7ab6:
    and h                                         ; $7ab6: $a4
    ld b, h                                       ; $7ab7: $44
    add e                                         ; $7ab8: $83
    ld a, a                                       ; $7ab9: $7f
    nop                                           ; $7aba: $00
    rla                                           ; $7abb: $17
    nop                                           ; $7abc: $00
    xor l                                         ; $7abd: $ad
    ld [bc], a                                    ; $7abe: $02
    adc d                                         ; $7abf: $8a
    ld h, c                                       ; $7ac0: $61
    ld [$89c6], sp                                ; $7ac1: $08 $c6 $89
    ld [hl], h                                    ; $7ac4: $74
    sbc b                                         ; $7ac5: $98
    ld b, a                                       ; $7ac6: $47
    or b                                          ; $7ac7: $b0
    ld c, [hl]                                    ; $7ac8: $4e
    ld bc, $81fa                                  ; $7ac9: $01 $fa $81
    ld l, d                                       ; $7acc: $6a
    dec bc                                        ; $7acd: $0b
    ld b, b                                       ; $7ace: $40
    db $10                                        ; $7acf: $10
    xor [hl]                                      ; $7ad0: $ae
    ret nz                                        ; $7ad1: $c0

    ccf                                           ; $7ad2: $3f
    adc e                                         ; $7ad3: $8b
    ld [hl], h                                    ; $7ad4: $74
    ld [hl], $c8                                  ; $7ad5: $36 $c8
    add b                                         ; $7ad7: $80
    ld a, a                                       ; $7ad8: $7f
    adc h                                         ; $7ad9: $8c
    ld [hl], e                                    ; $7ada: $73
    add b                                         ; $7adb: $80
    ld a, a                                       ; $7adc: $7f
    inc de                                        ; $7add: $13
    ret nz                                        ; $7ade: $c0

    call RST_00                                   ; $7adf: $cd $00 $00
    rst RST_38                                    ; $7ae2: $ff
    rst RST_38                                    ; $7ae3: $ff
    nop                                           ; $7ae4: $00
    scf                                           ; $7ae5: $37
    nop                                           ; $7ae6: $00
    nop                                           ; $7ae7: $00
    ei                                            ; $7ae8: $fb
    ld d, b                                       ; $7ae9: $50
    xor a                                         ; $7aea: $af
    nop                                           ; $7aeb: $00
    rst RST_38                                    ; $7aec: $ff
    add l                                         ; $7aed: $85
    nop                                           ; $7aee: $00
    db $e3                                        ; $7aef: $e3
    inc e                                         ; $7af0: $1c
    ld bc, $d0fc                                  ; $7af1: $01 $fc $d0
    inc l                                         ; $7af4: $2c
    nop                                           ; $7af5: $00
    dec sp                                        ; $7af6: $3b
    nop                                           ; $7af7: $00
    db $fd                                        ; $7af8: $fd
    pop bc                                        ; $7af9: $c1
    ld a, $02                                     ; $7afa: $3e $02
    db $fc                                        ; $7afc: $fc
    or c                                          ; $7afd: $b1
    ld c, $1c                                     ; $7afe: $0e $1c
    ret nz                                        ; $7b00: $c0

    nop                                           ; $7b01: $00
    pop hl                                        ; $7b02: $e1
    nop                                           ; $7b03: $00
    inc h                                         ; $7b04: $24
    ld h, b                                       ; $7b05: $60
    add b                                         ; $7b06: $80
    stop                                          ; $7b07: $10 $00
    ret nz                                        ; $7b09: $c0

    inc bc                                        ; $7b0a: $03
    nop                                           ; $7b0b: $00
    xor d                                         ; $7b0c: $aa
    ld d, h                                       ; $7b0d: $54
    nop                                           ; $7b0e: $00

jr_005_7b0f:
    inc c                                         ; $7b0f: $0c
    nop                                           ; $7b10: $00
    jr c, jr_005_7b59                             ; $7b11: $38 $46

    inc b                                         ; $7b13: $04
    sbc d                                         ; $7b14: $9a
    jr c, jr_005_7b1b                             ; $7b15: $38 $04

    ld e, b                                       ; $7b17: $58
    ld b, $10                                     ; $7b18: $06 $10
    inc c                                         ; $7b1a: $0c

jr_005_7b1b:
    ld sp, $890c                                  ; $7b1b: $31 $0c $89
    inc b                                         ; $7b1e: $04
    inc e                                         ; $7b1f: $1c
    inc bc                                        ; $7b20: $03
    ld h, h                                       ; $7b21: $64
    dec bc                                        ; $7b22: $0b
    ld d, d                                       ; $7b23: $52
    dec c                                         ; $7b24: $0d
    ldh a, [$ff0e]                                ; $7b25: $f0 $0e
    nop                                           ; $7b27: $00
    inc a                                         ; $7b28: $3c
    ldh [rNR32], a                                ; $7b29: $e0 $1c
    adc b                                         ; $7b2b: $88
    ld h, h                                       ; $7b2c: $64
    adc b                                         ; $7b2d: $88
    inc b                                         ; $7b2e: $04
    ld [hl], $89                                  ; $7b2f: $36 $89
    ld a, $81                                     ; $7b31: $3e $81
    ld d, h                                       ; $7b33: $54
    dec bc                                        ; $7b34: $0b
    ld sp, $800e                                  ; $7b35: $31 $0e $80
    add [hl]                                      ; $7b38: $86
    inc b                                         ; $7b39: $04
    inc c                                         ; $7b3a: $0c
    ld c, $3f                                     ; $7b3b: $0e $3f

jr_005_7b3d:
    rra                                           ; $7b3d: $1f
    ld hl, sp+$12                                 ; $7b3e: $f8 $12

jr_005_7b40:
    add b                                         ; $7b40: $80
    nop                                           ; $7b41: $00
    rst RST_38                                    ; $7b42: $ff
    inc b                                         ; $7b43: $04
    ei                                            ; $7b44: $fb
    ld b, e                                       ; $7b45: $43
    nop                                           ; $7b46: $00
    sbc b                                         ; $7b47: $98
    nop                                           ; $7b48: $00
    adc b                                         ; $7b49: $88
    ld [hl], a                                    ; $7b4a: $77
    nop                                           ; $7b4b: $00
    rst RST_38                                    ; $7b4c: $ff
    nop                                           ; $7b4d: $00
    ld l, a                                       ; $7b4e: $6f
    ld de, $0000                                  ; $7b4f: $11 $00 $00
    rst RST_38                                    ; $7b52: $ff
    nop                                           ; $7b53: $00
    rst RST_38                                    ; $7b54: $ff
    adc b                                         ; $7b55: $88
    inc bc                                        ; $7b56: $03
    ld [hl], h                                    ; $7b57: $74
    nop                                           ; $7b58: $00

jr_005_7b59:
    inc bc                                        ; $7b59: $03
    ld hl, sp+$00                                 ; $7b5a: $f8 $00
    rst RST_38                                    ; $7b5c: $ff
    nop                                           ; $7b5d: $00
    rst RST_38                                    ; $7b5e: $ff
    ldh a, [$ff0e]                                ; $7b5f: $f0 $0e
    nop                                           ; $7b61: $00
    rst RST_38                                    ; $7b62: $ff
    ld h, b                                       ; $7b63: $60
    sbc [hl]                                      ; $7b64: $9e
    inc de                                        ; $7b65: $13
    db $ec                                        ; $7b66: $ec
    ld [hl], c                                    ; $7b67: $71
    ld c, $cd                                     ; $7b68: $0e $cd
    ld [bc], a                                    ; $7b6a: $02
    nop                                           ; $7b6b: $00
    rst RST_38                                    ; $7b6c: $ff
    ld bc, $f0fe                                  ; $7b6d: $01 $fe $f0
    nop                                           ; $7b70: $00
    pop hl                                        ; $7b71: $e1
    inc b                                         ; $7b72: $04
    ld [hl], b                                    ; $7b73: $70
    add b                                         ; $7b74: $80
    jr c, jr_005_7bb7                             ; $7b75: $38 $40

    inc b                                         ; $7b77: $04
    jr z, jr_005_7b3d                             ; $7b78: $28 $c3

    nop                                           ; $7b7a: $00
    ret nz                                        ; $7b7b: $c0

    inc b                                         ; $7b7c: $04
    ld l, d                                       ; $7b7d: $6a
    add b                                         ; $7b7e: $80
    ld [de], a                                    ; $7b7f: $12
    add hl, bc                                    ; $7b80: $09
    inc d                                         ; $7b81: $14
    dec bc                                        ; $7b82: $0b
    jr nc, jr_005_7bd1                            ; $7b83: $30 $4c

    jr nc, @+$0a                                  ; $7b85: $30 $08

    ld h, d                                       ; $7b87: $62
    db $10                                        ; $7b88: $10
    ld b, b                                       ; $7b89: $40
    jr nc, jr_005_7b0f                            ; $7b8a: $30 $83

    ld h, b                                       ; $7b8c: $60
    rlca                                          ; $7b8d: $07
    ldh a, [$ff39]                                ; $7b8e: $f0 $39
    add h                                         ; $7b90: $84
    ld sp, $910c                                  ; $7b91: $31 $0c $91
    inc c                                         ; $7b94: $0c
    pop af                                        ; $7b95: $f1
    inc b                                         ; $7b96: $04
    ld a, e                                       ; $7b97: $7b
    inc b                                         ; $7b98: $04
    ldh a, [rIF]                                  ; $7b99: $f0 $0f
    pop af                                        ; $7b9b: $f1
    ld c, $e4                                     ; $7b9c: $0e $e4
    dec de                                        ; $7b9e: $1b
    jp z, $d630                                   ; $7b9f: $ca $30 $d6

    jr nz, jr_005_7b40                            ; $7ba2: $20 $9c

    ld h, e                                       ; $7ba4: $63
    add b                                         ; $7ba5: $80
    ld a, a                                       ; $7ba6: $7f
    nop                                           ; $7ba7: $00
    rst RST_38                                    ; $7ba8: $ff
    inc bc                                        ; $7ba9: $03
    db $fc                                        ; $7baa: $fc
    db $fd                                        ; $7bab: $fd
    ld [bc], a                                    ; $7bac: $02
    adc l                                         ; $7bad: $8d
    nop                                           ; $7bae: $00
    jr nc, jr_005_7bb1                            ; $7baf: $30 $00

jr_005_7bb1:
    adc h                                         ; $7bb1: $8c
    nop                                           ; $7bb2: $00
    inc d                                         ; $7bb3: $14
    db $eb                                        ; $7bb4: $eb
    nop                                           ; $7bb5: $00
    rst RST_38                                    ; $7bb6: $ff

jr_005_7bb7:
    add b                                         ; $7bb7: $80
    add [hl]                                      ; $7bb8: $86
    inc b                                         ; $7bb9: $04
    ei                                            ; $7bba: $fb
    ld c, a                                       ; $7bbb: $4f
    add [hl]                                      ; $7bbc: $86
    ld e, a                                       ; $7bbd: $5f
    add c                                         ; $7bbe: $81
    ld c, a                                       ; $7bbf: $4f
    inc bc                                        ; $7bc0: $03
    nop                                           ; $7bc1: $00
    add [hl]                                      ; $7bc2: $86
    adc b                                         ; $7bc3: $88
    ld b, b                                       ; $7bc4: $40
    ld [bc], a                                    ; $7bc5: $02
    cp l                                          ; $7bc6: $bd
    nop                                           ; $7bc7: $00
    rst RST_38                                    ; $7bc8: $ff
    add b                                         ; $7bc9: $80
    add [hl]                                      ; $7bca: $86
    inc b                                         ; $7bcb: $04
    cpl                                           ; $7bcc: $2f
    ld a, [$f39d]                                 ; $7bcd: $fa $9d $f3
    pop bc                                        ; $7bd0: $c1

jr_005_7bd1:
    ld c, h                                       ; $7bd1: $4c
    inc bc                                        ; $7bd2: $03
    ld e, $01                                     ; $7bd3: $1e $01
    ld a, [hl-]                                   ; $7bd5: $3a
    ld bc, $ff00                                  ; $7bd6: $01 $00 $ff
    inc bc                                        ; $7bd9: $03
    db $fc                                        ; $7bda: $fc
    ret nc                                        ; $7bdb: $d0

    cpl                                           ; $7bdc: $2f
    inc b                                         ; $7bdd: $04
    ei                                            ; $7bde: $fb
    ld b, c                                       ; $7bdf: $41
    sub b                                         ; $7be0: $90
    ld [hl+], a                                   ; $7be1: $22
    call nc, $c238                                ; $7be2: $d4 $38 $c2
    ld hl, $30d0                                  ; $7be5: $21 $d0 $30
    ret nz                                        ; $7be8: $c0

    ld [$1cf2], sp                                ; $7be9: $08 $f2 $1c
    ldh [$ff0a], a                                ; $7bec: $e0 $0a
    ldh a, [$ff67]                                ; $7bee: $f0 $67
    sub b                                         ; $7bf0: $90
    ldh [c], a                                    ; $7bf1: $e2
    ld de, $0027                                  ; $7bf2: $11 $27 $00
    ld l, [hl]                                    ; $7bf5: $6e
    ld de, $1126                                  ; $7bf6: $11 $26 $11
    ld l, [hl]                                    ; $7bf9: $6e
    ld de, $01c6                                  ; $7bfa: $11 $c6 $01
    cpl                                           ; $7bfd: $2f
    db $10                                        ; $7bfe: $10
    add $38                                       ; $7bff: $c6 $38
    ld bc, $0cfe                                  ; $7c01: $01 $fe $0c
    ldh a, [rDIV]                                 ; $7c04: $f0 $04
    ld a, [$fd02]                                 ; $7c06: $fa $02 $fd
    nop                                           ; $7c09: $00
    rst RST_38                                    ; $7c0a: $ff
    ld b, $f9                                     ; $7c0b: $06 $f9
    nop                                           ; $7c0d: $00
    rst RST_38                                    ; $7c0e: $ff
    nop                                           ; $7c0f: $00
    nop                                           ; $7c10: $00
    sub b                                         ; $7c11: $90
    inc bc                                        ; $7c12: $03

jr_005_7c13:
    nop                                           ; $7c13: $00
    adc l                                         ; $7c14: $8d
    cp b                                          ; $7c15: $b8
    nop                                           ; $7c16: $00
    inc d                                         ; $7c17: $14
    add sp, $20                                   ; $7c18: $e8 $20
    rst RST_18                                    ; $7c1a: $df
    add b                                         ; $7c1b: $80
    ld a, a                                       ; $7c1c: $7f
    ld h, $d9                                     ; $7c1d: $26 $d9
    rlca                                          ; $7c1f: $07
    nop                                           ; $7c20: $00
    ld h, b                                       ; $7c21: $60
    dec b                                         ; $7c22: $05
    nop                                           ; $7c23: $00
    adc l                                         ; $7c24: $8d
    jr c, jr_005_7c27                             ; $7c25: $38 $00

jr_005_7c27:
    nop                                           ; $7c27: $00
    rst RST_38                                    ; $7c28: $ff
    sbc [hl]                                      ; $7c29: $9e
    ld h, c                                       ; $7c2a: $61
    nop                                           ; $7c2b: $00
    rst RST_38                                    ; $7c2c: $ff
    sub a                                         ; $7c2d: $97
    ld l, b                                       ; $7c2e: $68
    cp b                                          ; $7c2f: $b8
    rlca                                          ; $7c30: $07
    ld [bc], a                                    ; $7c31: $02
    dec b                                         ; $7c32: $05
    nop                                           ; $7c33: $00
    xor e                                         ; $7c34: $ab
    ld h, b                                       ; $7c35: $60

jr_005_7c36:
    add b                                         ; $7c36: $80
    inc b                                         ; $7c37: $04
    ld hl, sp-$60                                 ; $7c38: $f8 $a0
    ld e, a                                       ; $7c3a: $5f
    db $10                                        ; $7c3b: $10
    rst RST_28                                    ; $7c3c: $ef
    nop                                           ; $7c3d: $00
    rst RST_38                                    ; $7c3e: $ff
    rst RST_28                                    ; $7c3f: $ef
    nop                                           ; $7c40: $00

jr_005_7c41:
    ld [bc], a                                    ; $7c41: $02
    ld bc, $0001                                  ; $7c42: $01 $01 $00
    inc e                                         ; $7c45: $1c
    nop                                           ; $7c46: $00
    jp Boot                                       ; $7c47: $c3 $00 $01


    db $fc                                        ; $7c4a: $fc
    ld [$91f0], sp                                ; $7c4b: $08 $f0 $91
    ld l, h                                       ; $7c4e: $6c
    add h                                         ; $7c4f: $84
    ld [hl], b                                    ; $7c50: $70
    ld [de], a                                    ; $7c51: $12
    add sp, $68                                   ; $7c52: $e8 $68
    inc d                                         ; $7c54: $14
    ld h, b                                       ; $7c55: $60
    inc e                                         ; $7c56: $1c
    add h                                         ; $7c57: $84
    ld a, b                                       ; $7c58: $78
    db $f4                                        ; $7c59: $f4
    ld a, [bc]                                    ; $7c5a: $0a
    dec b                                         ; $7c5b: $05
    ld [bc], a                                    ; $7c5c: $02
    inc bc                                        ; $7c5d: $03
    nop                                           ; $7c5e: $00
    inc b                                         ; $7c5f: $04
    rlca                                          ; $7c60: $07
    nop                                           ; $7c61: $00
    xor c                                         ; $7c62: $a9
    ld bc, $0400                                  ; $7c63: $01 $00 $04
    nop                                           ; $7c66: $00
    ld l, [hl]                                    ; $7c67: $6e
    ld bc, $07d8                                  ; $7c68: $01 $d8 $07
    ld e, d                                       ; $7c6b: $5a
    dec b                                         ; $7c6c: $05
    jr nz, jr_005_7c86                            ; $7c6d: $20 $17

    ld b, [hl]                                    ; $7c6f: $46
    add hl, de                                    ; $7c70: $19
    sub b                                         ; $7c71: $90
    ld b, e                                       ; $7c72: $43
    inc b                                         ; $7c73: $04
    jr z, jr_005_7c36                             ; $7c74: $28 $c0

    nop                                           ; $7c76: $00
    rrca                                          ; $7c77: $0f
    ldh a, [$ff9b]                                ; $7c78: $f0 $9b
    ld h, b                                       ; $7c7a: $60
    inc [hl]                                      ; $7c7b: $34
    ret nz                                        ; $7c7c: $c0

    and $00                                       ; $7c7d: $e6 $00
    jr c, jr_005_7c41                             ; $7c7f: $38 $c0

    add l                                         ; $7c81: $85
    ld [$009a], sp                                ; $7c82: $08 $9a $00
    adc b                                         ; $7c85: $88

jr_005_7c86:
    nop                                           ; $7c86: $00
    nop                                           ; $7c87: $00
    rst RST_38                                    ; $7c88: $ff
    ld hl, sp+$07                                 ; $7c89: $f8 $07
    scf                                           ; $7c8b: $37
    inc bc                                        ; $7c8c: $03
    nop                                           ; $7c8d: $00
    add b                                         ; $7c8e: $80
    add c                                         ; $7c8f: $81
    inc b                                         ; $7c90: $04
    jr nc, jr_005_7c13                            ; $7c91: $30 $80

    inc d                                         ; $7c93: $14
    inc bc                                        ; $7c94: $03
    add [hl]                                      ; $7c95: $86
    adc $31                                       ; $7c96: $ce $31
    dec b                                         ; $7c98: $05
    ld a, [$0730]                                 ; $7c99: $fa $30 $07
    ld [$8b00], sp                                ; $7c9c: $08 $00 $8b
    inc bc                                        ; $7c9f: $03
    nop                                           ; $7ca0: $00
    dec hl                                        ; $7ca1: $2b
    call nc, $f708                                ; $7ca2: $d4 $08 $f7
    ld h, e                                       ; $7ca5: $63
    sbc h                                         ; $7ca6: $9c
    nop                                           ; $7ca7: $00
    ld a, a                                       ; $7ca8: $7f
    rlca                                          ; $7ca9: $07
    rlca                                          ; $7caa: $07
    nop                                           ; $7cab: $00
    adc e                                         ; $7cac: $8b
    ld c, b                                       ; $7cad: $48
    or a                                          ; $7cae: $b7
    inc d                                         ; $7caf: $14
    db $eb                                        ; $7cb0: $eb
    nop                                           ; $7cb1: $00
    rst RST_38                                    ; $7cb2: $ff
    sbc c                                         ; $7cb3: $99
    ld h, [hl]                                    ; $7cb4: $66
    ret nz                                        ; $7cb5: $c0

    dec de                                        ; $7cb6: $1b
    adc [hl]                                      ; $7cb7: $8e
    inc bc                                        ; $7cb8: $03
    nop                                           ; $7cb9: $00
    sub d                                         ; $7cba: $92
    inc bc                                        ; $7cbb: $03
    nop                                           ; $7cbc: $00
    nop                                           ; $7cbd: $00
    ld a, [$7288]                                 ; $7cbe: $fa $88 $72
    add b                                         ; $7cc1: $80
    ld a, l                                       ; $7cc2: $7d
    ld [$6ef4], sp                                ; $7cc3: $08 $f4 $6e
    sub b                                         ; $7cc6: $90
    or b                                          ; $7cc7: $b0
    ld c, b                                       ; $7cc8: $48
    call Call_000_2400                            ; $7cc9: $cd $00 $24
    stop                                          ; $7ccc: $10 $00
    nop                                           ; $7cce: $00
    sbc b                                         ; $7ccf: $98
    ld b, a                                       ; $7cd0: $47
    nop                                           ; $7cd1: $00
    add c                                         ; $7cd2: $81
    ld bc, $001f                                  ; $7cd3: $01 $1f $00
    add b                                         ; $7cd6: $80
    inc b                                         ; $7cd7: $04
    ld [bc], a                                    ; $7cd8: $02
    add d                                         ; $7cd9: $82
    nop                                           ; $7cda: $00
    dec b                                         ; $7cdb: $05
    ld a, [de]                                    ; $7cdc: $1a
    nop                                           ; $7cdd: $00
    add b                                         ; $7cde: $80
    rlca                                          ; $7cdf: $07
    ld b, $1b                                     ; $7ce0: $06 $1b
    nop                                           ; $7ce2: $00
    add b                                         ; $7ce3: $80
    dec b                                         ; $7ce4: $05
    dec c                                         ; $7ce5: $0d
    rla                                           ; $7ce6: $17
    nop                                           ; $7ce7: $00
    add b                                         ; $7ce8: $80
    ld [$1812], sp                                ; $7ce9: $08 $12 $18
    nop                                           ; $7cec: $00
    add c                                         ; $7ced: $81
    ld [de], a                                    ; $7cee: $12
    add b                                         ; $7cef: $80
    rlca                                          ; $7cf0: $07
    ld a, [de]                                    ; $7cf1: $1a
    jr jr_005_7cf4                                ; $7cf2: $18 $00

jr_005_7cf4:
    add b                                         ; $7cf4: $80
    ld [$1b21], sp                                ; $7cf5: $08 $21 $1b
    nop                                           ; $7cf8: $00
    add b                                         ; $7cf9: $80
    dec b                                         ; $7cfa: $05
    add hl, hl                                    ; $7cfb: $29
    inc de                                        ; $7cfc: $13
    nop                                           ; $7cfd: $00
    nop                                           ; $7cfe: $00
    nop                                           ; $7cff: $00
    sbc b                                         ; $7d00: $98
    ld c, c                                       ; $7d01: $49
    nop                                           ; $7d02: $00
    add b                                         ; $7d03: $80
    inc b                                         ; $7d04: $04
    ld bc, $0003                                  ; $7d05: $01 $03 $00
    add c                                         ; $7d08: $81
    dec b                                         ; $7d09: $05
    rla                                           ; $7d0a: $17
    nop                                           ; $7d0b: $00
    add c                                         ; $7d0c: $81
    inc c                                         ; $7d0d: $0c
    add b                                         ; $7d0e: $80
    inc b                                         ; $7d0f: $04
    ld b, $84                                     ; $7d10: $06 $84
    nop                                           ; $7d12: $00
    nop                                           ; $7d13: $00
    ld a, [bc]                                    ; $7d14: $0a
    dec bc                                        ; $7d15: $0b
    jr jr_005_7d18                                ; $7d16: $18 $00

jr_005_7d18:
    add b                                         ; $7d18: $80
    add hl, bc                                    ; $7d19: $09
    dec c                                         ; $7d1a: $0d
    ld d, $00                                     ; $7d1b: $16 $00
    add d                                         ; $7d1d: $82
    ld d, $17                                     ; $7d1e: $16 $17
    add b                                         ; $7d20: $80
    rlca                                          ; $7d21: $07
    rla                                           ; $7d22: $17
    add c                                         ; $7d23: $81
    dec e                                         ; $7d24: $1d
    rla                                           ; $7d25: $17
    nop                                           ; $7d26: $00
    add b                                         ; $7d27: $80
    add hl, bc                                    ; $7d28: $09
    ld e, $16                                     ; $7d29: $1e $16
    nop                                           ; $7d2b: $00
    add c                                         ; $7d2c: $81
    ld d, $80                                     ; $7d2d: $16 $80
    ld [$1827], sp                                ; $7d2f: $08 $27 $18
    nop                                           ; $7d32: $00
    add h                                         ; $7d33: $84
    ld e, $2f                                     ; $7d34: $1e $2f
    jr nc, jr_005_7d62                            ; $7d36: $30 $2a

    add b                                         ; $7d38: $80
    inc b                                         ; $7d39: $04
    ld sp, $0017                                  ; $7d3a: $31 $17 $00
    add b                                         ; $7d3d: $80
    add hl, bc                                    ; $7d3e: $09
    dec [hl]                                      ; $7d3f: $35
    rrca                                          ; $7d40: $0f
    nop                                           ; $7d41: $00
    nop                                           ; $7d42: $00
    nop                                           ; $7d43: $00
    sbc b                                         ; $7d44: $98
    inc hl                                        ; $7d45: $23
    nop                                           ; $7d46: $00
    add c                                         ; $7d47: $81
    ld bc, $001f                                  ; $7d48: $01 $1f $00
    add l                                         ; $7d4b: $85
    ld [bc], a                                    ; $7d4c: $02
    inc bc                                        ; $7d4d: $03
    nop                                           ; $7d4e: $00
    inc b                                         ; $7d4f: $04
    nop                                           ; $7d50: $00
    add b                                         ; $7d51: $80
    inc bc                                        ; $7d52: $03
    dec b                                         ; $7d53: $05
    rla                                           ; $7d54: $17
    nop                                           ; $7d55: $00
    add b                                         ; $7d56: $80
    add hl, bc                                    ; $7d57: $09
    ld [$0017], sp                                ; $7d58: $08 $17 $00
    add d                                         ; $7d5b: $82
    ld de, $8009                                  ; $7d5c: $11 $09 $80
    ld [$1612], sp                                ; $7d5f: $08 $12 $16

jr_005_7d62:
    nop                                           ; $7d62: $00
    add d                                         ; $7d63: $82
    ld [$8009], sp                                ; $7d64: $08 $09 $80
    rlca                                          ; $7d67: $07
    ld a, [de]                                    ; $7d68: $1a
    add c                                         ; $7d69: $81
    add hl, de                                    ; $7d6a: $19
    ld d, $00                                     ; $7d6b: $16 $00
    add d                                         ; $7d6d: $82
    ld hl, $8009                                  ; $7d6e: $21 $09 $80
    ld [$1622], sp                                ; $7d71: $08 $22 $16
    nop                                           ; $7d74: $00
    add d                                         ; $7d75: $82
    ld [$8009], sp                                ; $7d76: $08 $09 $80
    ld [$162a], sp                                ; $7d79: $08 $2a $16
    nop                                           ; $7d7c: $00
    add c                                         ; $7d7d: $81
    ld hl, $0880                                  ; $7d7e: $21 $80 $08
    ld [hl-], a                                   ; $7d81: $32
    add c                                         ; $7d82: $81
    add hl, hl                                    ; $7d83: $29
    ld d, $00                                     ; $7d84: $16 $00
    add c                                         ; $7d86: $81
    ld [$0380], sp                                ; $7d87: $08 $80 $03
    ld a, [hl-]                                   ; $7d8a: $3a
    add c                                         ; $7d8b: $81
    inc a                                         ; $7d8c: $3c
    add b                                         ; $7d8d: $80
    inc b                                         ; $7d8e: $04
    inc a                                         ; $7d8f: $3c
    add c                                         ; $7d90: $81
    ld sp, $0017                                  ; $7d91: $31 $17 $00
    adc b                                         ; $7d94: $88
    ld de, $0000                                  ; $7d95: $11 $00 $00
    ld de, $0011                                  ; $7d98: $11 $11 $00
    nop                                           ; $7d9b: $00
    ld de, $0015                                  ; $7d9c: $11 $15 $00
    nop                                           ; $7d9f: $00
    nop                                           ; $7da0: $00
    sbc b                                         ; $7da1: $98
    ld l, e                                       ; $7da2: $6b
    nop                                           ; $7da3: $00
    add b                                         ; $7da4: $80
    ld b, $01                                     ; $7da5: $06 $01
    add hl, de                                    ; $7da7: $19
    nop                                           ; $7da8: $00
    add b                                         ; $7da9: $80
    rlca                                          ; $7daa: $07
    rlca                                          ; $7dab: $07
    add hl, de                                    ; $7dac: $19
    nop                                           ; $7dad: $00
    add b                                         ; $7dae: $80
    rlca                                          ; $7daf: $07
    ld c, $19                                     ; $7db0: $0e $19
    nop                                           ; $7db2: $00
    add b                                         ; $7db3: $80
    rlca                                          ; $7db4: $07
    dec d                                         ; $7db5: $15
    add hl, de                                    ; $7db6: $19
    nop                                           ; $7db7: $00
    add b                                         ; $7db8: $80
    rlca                                          ; $7db9: $07
    inc e                                         ; $7dba: $1c
    add hl, de                                    ; $7dbb: $19
    nop                                           ; $7dbc: $00
    add b                                         ; $7dbd: $80
    rlca                                          ; $7dbe: $07
    inc hl                                        ; $7dbf: $23
    jr jr_005_7dc2                                ; $7dc0: $18 $00

jr_005_7dc2:
    add b                                         ; $7dc2: $80
    ld [$0f2a], sp                                ; $7dc3: $08 $2a $0f
    nop                                           ; $7dc6: $00
    nop                                           ; $7dc7: $00
    nop                                           ; $7dc8: $00
    sbc b                                         ; $7dc9: $98
    inc d                                         ; $7dca: $14
    db $10                                        ; $7dcb: $10
    inc c                                         ; $7dcc: $0c
    nop                                           ; $7dcd: $00
    inc d                                         ; $7dce: $14
    ld [de], a                                    ; $7dcf: $12
    inc c                                         ; $7dd0: $0c
    nop                                           ; $7dd1: $00
    inc d                                         ; $7dd2: $14
    dec hl                                        ; $7dd3: $2b
    ld a, a                                       ; $7dd4: $7f
    nop                                           ; $7dd5: $00
    jr nc, jr_005_7dd8                            ; $7dd6: $30 $00

jr_005_7dd8:
    adc b                                         ; $7dd8: $88
    ld [$0009], sp                                ; $7dd9: $08 $09 $00
    ld [$0009], sp                                ; $7ddc: $08 $09 $00
    ld [$1809], sp                                ; $7ddf: $08 $09 $18
    nop                                           ; $7de2: $00
    adc b                                         ; $7de3: $88
    ld a, [bc]                                    ; $7de4: $0a
    dec bc                                        ; $7de5: $0b
    nop                                           ; $7de6: $00
    ld a, [bc]                                    ; $7de7: $0a
    dec bc                                        ; $7de8: $0b
    nop                                           ; $7de9: $00
    ld a, [bc]                                    ; $7dea: $0a
    dec bc                                        ; $7deb: $0b
    rla                                           ; $7dec: $17
    nop                                           ; $7ded: $00
    add b                                         ; $7dee: $80
    inc bc                                        ; $7def: $03
    inc c                                         ; $7df0: $0c
    add h                                         ; $7df1: $84
    ld bc, $0e0d                                  ; $7df2: $01 $0d $0e
    ld b, $80                                     ; $7df5: $06 $80
    inc bc                                        ; $7df7: $03
    dec c                                         ; $7df8: $0d
    inc d                                         ; $7df9: $14
    nop                                           ; $7dfa: $00
    add h                                         ; $7dfb: $84
    dec b                                         ; $7dfc: $05
    dec b                                         ; $7dfd: $05
    rlca                                          ; $7dfe: $07
    ld de, $0380                                  ; $7dff: $11 $80 $03
    ld [bc], a                                    ; $7e02: $02
    inc b                                         ; $7e03: $04
    ld de, $0781                                  ; $7e04: $11 $81 $07
    ld [$2d05], sp                                ; $7e07: $08 $05 $2d
    nop                                           ; $7e0a: $00
    add [hl]                                      ; $7e0b: $86
    inc de                                        ; $7e0c: $13
    inc de                                        ; $7e0d: $13
    nop                                           ; $7e0e: $00
    inc d                                         ; $7e0f: $14
    inc de                                        ; $7e10: $13
    nop                                           ; $7e11: $00
    add b                                         ; $7e12: $80
    inc bc                                        ; $7e13: $03
    dec d                                         ; $7e14: $15
    adc c                                         ; $7e15: $89
    inc d                                         ; $7e16: $14
    nop                                           ; $7e17: $00
    jr @+$18                                      ; $7e18: $18 $16

    add hl, de                                    ; $7e1a: $19
    ld d, $18                                     ; $7e1b: $16 $18
    nop                                           ; $7e1d: $00
    ld a, [de]                                    ; $7e1e: $1a
    ld c, $00                                     ; $7e1f: $0e $00
    add [hl]                                      ; $7e21: $86
    dec de                                        ; $7e22: $1b
    inc e                                         ; $7e23: $1c
    nop                                           ; $7e24: $00
    dec e                                         ; $7e25: $1d
    inc e                                         ; $7e26: $1c
    nop                                           ; $7e27: $00
    add b                                         ; $7e28: $80
    inc bc                                        ; $7e29: $03
    ld e, $89                                     ; $7e2a: $1e $89
    dec e                                         ; $7e2c: $1d
    nop                                           ; $7e2d: $00
    ld hl, $221f                                  ; $7e2e: $21 $1f $22
    rra                                           ; $7e31: $1f
    ld hl, $1d00                                  ; $7e32: $21 $00 $1d
    ld c, $00                                     ; $7e35: $0e $00
    add [hl]                                      ; $7e37: $86
    inc hl                                        ; $7e38: $23
    inc h                                         ; $7e39: $24
    nop                                           ; $7e3a: $00
    dec h                                         ; $7e3b: $25
    inc h                                         ; $7e3c: $24
    nop                                           ; $7e3d: $00
    add b                                         ; $7e3e: $80
    inc bc                                        ; $7e3f: $03
    ld h, $89                                     ; $7e40: $26 $89
    dec h                                         ; $7e42: $25
    nop                                           ; $7e43: $00
    daa                                           ; $7e44: $27
    daa                                           ; $7e45: $27
    add hl, hl                                    ; $7e46: $29
    daa                                           ; $7e47: $27
    daa                                           ; $7e48: $27
    nop                                           ; $7e49: $00
    ld a, [hl+]                                   ; $7e4a: $2a
    ld c, l                                       ; $7e4b: $4d
    nop                                           ; $7e4c: $00
    nop                                           ; $7e4d: $00
    ld h, b                                       ; $7e4e: $60
    ret z                                         ; $7e4f: $c8

    ld b, $00                                     ; $7e50: $06 $00
    add b                                         ; $7e52: $80
    dec b                                         ; $7e53: $05
    add c                                         ; $7e54: $81
    add e                                         ; $7e55: $83
    add h                                         ; $7e56: $84
    add h                                         ; $7e57: $84
    add [hl]                                      ; $7e58: $86
    inc de                                        ; $7e59: $13
    nop                                           ; $7e5a: $00
    add c                                         ; $7e5b: $81
    add a                                         ; $7e5c: $87
    inc b                                         ; $7e5d: $04
    adc b                                         ; $7e5e: $88
    add b                                         ; $7e5f: $80
    ld [$0489], sp                                ; $7e60: $08 $89 $04
    adc b                                         ; $7e63: $88
    add c                                         ; $7e64: $81
    sub c                                         ; $7e65: $91
    ld c, $00                                     ; $7e66: $0e $00
    add b                                         ; $7e68: $80
    ld [de], a                                    ; $7e69: $12
    sub d                                         ; $7e6a: $92
    ld c, $00                                     ; $7e6b: $0e $00
    add b                                         ; $7e6d: $80
    ld [de], a                                    ; $7e6e: $12
    and h                                         ; $7e6f: $a4
    ld c, $00                                     ; $7e70: $0e $00
    add b                                         ; $7e72: $80
    ld [de], a                                    ; $7e73: $12
    or [hl]                                       ; $7e74: $b6

jr_005_7e75:
    ld c, $00                                     ; $7e75: $0e $00

jr_005_7e77:
    add d                                         ; $7e77: $82
    ret z                                         ; $7e78: $c8

    ret                                           ; $7e79: $c9


    add b                                         ; $7e7a: $80
    inc bc                                        ; $7e7b: $03
    ret                                           ; $7e7c: $c9


    inc bc                                        ; $7e7d: $03
    res 0, c                                      ; $7e7e: $cb $81
    call z, $cb05                                 ; $7e80: $cc $05 $cb

jr_005_7e83:
    add h                                         ; $7e83: $84
    call $c9c9                                    ; $7e84: $cd $c9 $c9
    adc $0d                                       ; $7e87: $ce $0d
    nop                                           ; $7e89: $00
    nop                                           ; $7e8a: $00
    nop                                           ; $7e8b: $00
    sbc b                                         ; $7e8c: $98
    ld a, a                                       ; $7e8d: $7f
    ld e, a                                       ; $7e8e: $5f

jr_005_7e8f:
    ld a, a                                       ; $7e8f: $7f
    ld e, a                                       ; $7e90: $5f
    ld a, a                                       ; $7e91: $7f
    ld e, a                                       ; $7e92: $5f
    ld a, a                                       ; $7e93: $7f
    ld e, a                                       ; $7e94: $5f

jr_005_7e95:
    ld b, h                                       ; $7e95: $44
    ld e, a                                       ; $7e96: $5f
    nop                                           ; $7e97: $00
    nop                                           ; $7e98: $00
    sbc b                                         ; $7e99: $98
    ld h, a                                       ; $7e9a: $67

jr_005_7e9b:
    nop                                           ; $7e9b: $00
    add b                                         ; $7e9c: $80
    inc b                                         ; $7e9d: $04
    ld bc, $0082                                  ; $7e9e: $01 $82 $00
    add hl, bc                                    ; $7ea1: $09
    ld a, [de]                                    ; $7ea2: $1a
    nop                                           ; $7ea3: $00
    add b                                         ; $7ea4: $80

jr_005_7ea5:
    inc b                                         ; $7ea5: $04
    dec b                                         ; $7ea6: $05

jr_005_7ea7:
    add d                                         ; $7ea7: $82
    nop                                           ; $7ea8: $00
    ld a, [bc]                                    ; $7ea9: $0a
    dec [hl]                                      ; $7eaa: $35
    nop                                           ; $7eab: $00
    add b                                         ; $7eac: $80
    ld b, $0b                                     ; $7ead: $06 $0b
    add c                                         ; $7eaf: $81
    nop                                           ; $7eb0: $00
    add b                                         ; $7eb1: $80
    ld [$8111], sp                                ; $7eb2: $08 $11 $81

jr_005_7eb5:
    add hl, bc                                    ; $7eb5: $09
    stop                                          ; $7eb6: $10 $00
    add b                                         ; $7eb8: $80
    ld b, $19                                     ; $7eb9: $06 $19
    add c                                         ; $7ebb: $81
    nop                                           ; $7ebc: $00
    add b                                         ; $7ebd: $80
    rlca                                          ; $7ebe: $07

jr_005_7ebf:
    rra                                           ; $7ebf: $1f
    add d                                         ; $7ec0: $82
    nop                                           ; $7ec1: $00
    ld a, [bc]                                    ; $7ec2: $0a
    ld [hl], $00                                  ; $7ec3: $36 $00
    add b                                         ; $7ec5: $80
    inc b                                         ; $7ec6: $04
    ld h, $1c                                     ; $7ec7: $26 $1c
    nop                                           ; $7ec9: $00
    add b                                         ; $7eca: $80

jr_005_7ecb:
    inc b                                         ; $7ecb: $04
    ld a, [hl+]                                   ; $7ecc: $2a
    inc e                                         ; $7ecd: $1c
    nop                                           ; $7ece: $00
    add b                                         ; $7ecf: $80
    inc b                                         ; $7ed0: $04
    ld l, $5d                                     ; $7ed1: $2e $5d
    nop                                           ; $7ed3: $00
    add d                                         ; $7ed4: $82
    inc sp                                        ; $7ed5: $33
    inc [hl]                                      ; $7ed6: $34
    rla                                           ; $7ed7: $17
    nop                                           ; $7ed8: $00
    sub b                                         ; $7ed9: $90
    ld [hl-], a                                   ; $7eda: $32
    nop                                           ; $7edb: $00
    nop                                           ; $7edc: $00
    ld [hl-], a                                   ; $7edd: $32
    ld [hl-], a                                   ; $7ede: $32
    nop                                           ; $7edf: $00
    ld [hl-], a                                   ; $7ee0: $32
    dec [hl]                                      ; $7ee1: $35
    ld [hl], $32                                  ; $7ee2: $36 $32
    nop                                           ; $7ee4: $00
    ld [hl-], a                                   ; $7ee5: $32
    ld [hl-], a                                   ; $7ee6: $32
    nop                                           ; $7ee7: $00
    nop                                           ; $7ee8: $00
    ld [hl-], a                                   ; $7ee9: $32
    ld c, [hl]                                    ; $7eea: $4e
    nop                                           ; $7eeb: $00
    nop                                           ; $7eec: $00
    jr jr_005_7f5f                                ; $7eed: $18 $70

    ld d, $80                                     ; $7eef: $16 $80
    jr @+$7a                                      ; $7ef1: $18 $78

    jr jr_005_7e75                                ; $7ef3: $18 $80

    jr jr_005_7e77                                ; $7ef5: $18 $80

    ld a, [de]                                    ; $7ef7: $1a
    add b                                         ; $7ef8: $80
    jr jr_005_7e83                                ; $7ef9: $18 $88

    inc e                                         ; $7efb: $1c
    add b                                         ; $7efc: $80
    jr jr_005_7e8f                                ; $7efd: $18 $90

    ld e, $80                                     ; $7eff: $1e $80
    jr jr_005_7e9b                                ; $7f01: $18 $98

    jr nz, @-$7e                                  ; $7f03: $20 $80

    jr z, jr_005_7f77                             ; $7f05: $28 $70

    ld [hl+], a                                   ; $7f07: $22
    add b                                         ; $7f08: $80
    jr z, jr_005_7f83                             ; $7f09: $28 $78

    inc h                                         ; $7f0b: $24
    add b                                         ; $7f0c: $80
    jr z, jr_005_7e8f                             ; $7f0d: $28 $80

    ld h, $80                                     ; $7f0f: $26 $80
    jr z, jr_005_7e9b                             ; $7f11: $28 $88

    jr z, jr_005_7e95                             ; $7f13: $28 $80

    jr z, jr_005_7ea7                             ; $7f15: $28 $90

    ld a, [hl+]                                   ; $7f17: $2a
    add b                                         ; $7f18: $80
    jr z, @-$66                                   ; $7f19: $28 $98

    inc l                                         ; $7f1b: $2c
    add b                                         ; $7f1c: $80
    jr c, jr_005_7f8f                             ; $7f1d: $38 $70

    ld l, $80                                     ; $7f1f: $2e $80
    jr c, jr_005_7f9b                             ; $7f21: $38 $78

    jr nc, jr_005_7ea5                            ; $7f23: $30 $80

    jr c, jr_005_7ea7                             ; $7f25: $38 $80

    ld [hl-], a                                   ; $7f27: $32
    add b                                         ; $7f28: $80
    jr c, @-$76                                   ; $7f29: $38 $88

    inc [hl]                                      ; $7f2b: $34
    add b                                         ; $7f2c: $80
    jr c, jr_005_7ebf                             ; $7f2d: $38 $90

    ld [hl], $80                                  ; $7f2f: $36 $80
    jr c, jr_005_7ecb                             ; $7f31: $38 $98

    jr c, jr_005_7eb5                             ; $7f33: $38 $80

    add l                                         ; $7f35: $85
    nop                                           ; $7f36: $00
    nop                                           ; $7f37: $00
    ldh a, [rP1]                                  ; $7f38: $f0 $00
    rst RST_38                                    ; $7f3a: $ff
    dec b                                         ; $7f3b: $05
    nop                                           ; $7f3c: $00
    add l                                         ; $7f3d: $85
    cp $00                                        ; $7f3e: $fe $00
    ld hl, sp+$00                                 ; $7f40: $f8 $00
    ret nz                                        ; $7f42: $c0

    dec b                                         ; $7f43: $05
    nop                                           ; $7f44: $00
    add c                                         ; $7f45: $81
    ret nz                                        ; $7f46: $c0

    add hl, de                                    ; $7f47: $19
    nop                                           ; $7f48: $00
    sub [hl]                                      ; $7f49: $96
    db $db                                        ; $7f4a: $db
    nop                                           ; $7f4b: $00
    rrca                                          ; $7f4c: $0f
    rrca                                          ; $7f4d: $0f
    dec de                                        ; $7f4e: $1b
    db $10                                        ; $7f4f: $10
    dec d                                         ; $7f50: $15
    inc de                                        ; $7f51: $13
    rra                                           ; $7f52: $1f
    rla                                           ; $7f53: $17
    rra                                           ; $7f54: $1f
    rla                                           ; $7f55: $17
    dec bc                                        ; $7f56: $0b
    rrca                                          ; $7f57: $0f
    rra                                           ; $7f58: $1f
    rra                                           ; $7f59: $1f
    ld sp, $fc20                                  ; $7f5a: $31 $20 $fc
    db $fc                                        ; $7f5d: $fc
    or b                                          ; $7f5e: $b0

jr_005_7f5f:
    ld [hl], b                                    ; $7f5f: $70
    add b                                         ; $7f60: $80
    add e                                         ; $7f61: $83
    dec b                                         ; $7f62: $05
    db $fc                                        ; $7f63: $fc
    ldh a, [$fff0]                                ; $7f64: $f0 $f0
    ldh [$fff0], a                                ; $7f66: $e0 $f0
    and d                                         ; $7f68: $a2
    ld l, b                                       ; $7f69: $68
    jr jr_005_7f97                                ; $7f6a: $18 $2b

    jr z, @+$3d                                   ; $7f6c: $28 $3b

    jr z, jr_005_7faf                             ; $7f6e: $28 $3f

    rra                                           ; $7f70: $1f
    dec c                                         ; $7f71: $0d
    dec bc                                        ; $7f72: $0b
    rrca                                          ; $7f73: $0f
    rrca                                          ; $7f74: $0f
    rlca                                          ; $7f75: $07
    dec b                                         ; $7f76: $05

jr_005_7f77:
    rlca                                          ; $7f77: $07
    dec b                                         ; $7f78: $05
    rst RST_28                                    ; $7f79: $ef
    rra                                           ; $7f7a: $1f
    xor b                                         ; $7f7b: $a8
    ld a, b                                       ; $7f7c: $78
    xor b                                         ; $7f7d: $a8
    ld a, b                                       ; $7f7e: $78
    ld hl, sp-$10                                 ; $7f7f: $f8 $f0
    or b                                          ; $7f81: $b0
    ld [hl], b                                    ; $7f82: $70

jr_005_7f83:
    add sp, -$08                                  ; $7f83: $e8 $f8
    call z, $c044                                 ; $7f85: $cc $44 $c0
    ld b, b                                       ; $7f88: $40
    di                                            ; $7f89: $f3
    db $fc                                        ; $7f8a: $fc
    nop                                           ; $7f8b: $00
    sub h                                         ; $7f8c: $94
    rlca                                          ; $7f8d: $07
    rlca                                          ; $7f8e: $07

jr_005_7f8f:
    rrca                                          ; $7f8f: $0f
    add hl, bc                                    ; $7f90: $09
    dec bc                                        ; $7f91: $0b
    rrca                                          ; $7f92: $0f
    scf                                           ; $7f93: $37
    rla                                           ; $7f94: $17
    ld a, a                                       ; $7f95: $7f
    ld [hl], a                                    ; $7f96: $77

jr_005_7f97:
    rst RST_38                                    ; $7f97: $ff
    ld a, a                                       ; $7f98: $7f
    rst RST_30                                    ; $7f99: $f7
    rst RST_20                                    ; $7f9a: $e7

jr_005_7f9b:
    db $ec                                        ; $7f9b: $ec
    db $ec                                        ; $7f9c: $ec
    ldh a, [$ffe0]                                ; $7f9d: $f0 $e0
    ld a, b                                       ; $7f9f: $78
    ldh a, [rTAC]                                 ; $7fa0: $f0 $07
    ld hl, sp-$5b                                 ; $7fa2: $f8 $a5
    ldh a, [$fff0]                                ; $7fa4: $f0 $f0
    ldh [$ffd8], a                                ; $7fa6: $e0 $d8
    jr c, @-$03                                   ; $7fa8: $38 $fb

    ret nc                                        ; $7faa: $d0

    push de                                       ; $7fab: $d5
    ld d, h                                       ; $7fac: $54
    ld e, l                                       ; $7fad: $5d
    ld d, h                                       ; $7fae: $54

jr_005_7faf:
    rrca                                          ; $7faf: $0f
    rrca                                          ; $7fb0: $0f
    dec b                                         ; $7fb1: $05
    inc b                                         ; $7fb2: $04
    rlca                                          ; $7fb3: $07
    rlca                                          ; $7fb4: $07
    inc bc                                        ; $7fb5: $03
    ld [bc], a                                    ; $7fb6: $02
    rst RST_10                                    ; $7fb7: $d7
    rrca                                          ; $7fb8: $0f
    db $e4                                        ; $7fb9: $e4
    inc e                                         ; $7fba: $1c
    call nc, $dc3c                                ; $7fbb: $d4 $3c $dc
    inc [hl]                                      ; $7fbe: $34
    ld hl, sp-$08                                 ; $7fbf: $f8 $f8
    cp b                                          ; $7fc1: $b8
    sbc b                                         ; $7fc2: $98
    db $f4                                        ; $7fc3: $f4
    db $f4                                        ; $7fc4: $f4
    and b                                         ; $7fc5: $a0
    ldh [$fff3], a                                ; $7fc6: $e0 $f3
    db $fc                                        ; $7fc8: $fc
    nop                                           ; $7fc9: $00
    ld a, $7f                                     ; $7fca: $3e $7f
    rst RST_38                                    ; $7fcc: $ff
    rst RST_38                                    ; $7fcd: $ff
    rst RST_00                                    ; $7fce: $c7
    rst RST_28                                    ; $7fcf: $ef
    ld a, h                                       ; $7fd0: $7c
    cp $00                                        ; $7fd1: $fe $00
    rst RST_38                                    ; $7fd3: $ff
    rst RST_38                                    ; $7fd4: $ff
    rst RST_38                                    ; $7fd5: $ff
    rst RST_38                                    ; $7fd6: $ff
    rst RST_38                                    ; $7fd7: $ff
    rst RST_38                                    ; $7fd8: $ff
    rst RST_38                                    ; $7fd9: $ff
    rst RST_38                                    ; $7fda: $ff
    rst RST_38                                    ; $7fdb: $ff
    rst RST_38                                    ; $7fdc: $ff
    rst RST_38                                    ; $7fdd: $ff
    rst RST_38                                    ; $7fde: $ff
    rst RST_38                                    ; $7fdf: $ff
    rst RST_38                                    ; $7fe0: $ff
    rst RST_38                                    ; $7fe1: $ff
    rst RST_38                                    ; $7fe2: $ff
    rst RST_38                                    ; $7fe3: $ff
    rst RST_38                                    ; $7fe4: $ff
    rst RST_38                                    ; $7fe5: $ff
    rst RST_38                                    ; $7fe6: $ff
    rst RST_38                                    ; $7fe7: $ff
    rst RST_38                                    ; $7fe8: $ff
    rst RST_38                                    ; $7fe9: $ff
    rst RST_38                                    ; $7fea: $ff
    rst RST_38                                    ; $7feb: $ff
    rst RST_38                                    ; $7fec: $ff
    rst RST_38                                    ; $7fed: $ff
    rst RST_38                                    ; $7fee: $ff
    rst RST_38                                    ; $7fef: $ff
    rst RST_38                                    ; $7ff0: $ff
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
