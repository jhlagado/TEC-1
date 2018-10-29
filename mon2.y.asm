                                                            ;Keyboard functions:
                                                            ;Shift-Insert range 0900 - 4000 (03FF??)
                                                            ;Shift-Delete range 0900 - 03FF (03FF is set to 00 on use of delete
                                                            ;function).
                                                            ;Shift -Address jumps to location stored at 08D2 and 08D3
                                                            ;Info:
                                                            ;Stack Start 08C0
                                                            ;Stack Max Length C0
                                                            ;User Code Start 0900
                                                            ;KeyData location 08E0 (placed there by NMI routine)
                    STARTROM:       ORG 0x0000
0000 c3 00 02                       jp 0x0200		        ;Jump to MONSTART
0003 ff                             db 0xFF
0004 ff                             db 0xFF
0005 ff                             db 0xFF
0006 ff                             db 0xFF
0007 ff                             db 0xFF
0008 2a c0 08                       ld hl,(0x08c0)
000b e9                             jp (hl)
000C ff                             db 0xFF
000D ff                             db 0xFF
000E ff                             db 0xFF
000F ff                             db 0xFF
0010 2a c2 08                       ld hl,(0x08c2)
0013 e9                             jp (hl)
0014 ff                             db 0xFF
0015 ff                             db 0xFF
0016 ff                             db 0xFF
0017 ff                             db 0xFF
0018 2a c4 08                       ld hl,(0x08c4)
001b e9                             jp (hl)
001C ff                             db 0xFF
001D ff                             db 0xFF
001E ff                             db 0xFF
001F ff                             db 0xFF
0020 2a c6 08                       ld hl,(0x08c6)
0023 e9                             jp (hl)
0024 ff                             db 0xFF
0025 ff                             db 0xFF
0026 ff                             db 0xFF
0027 ff                             db 0xFF
0028 2a c8 08                       ld hl,(0x08c8)
002b e9                             jp (hl)
002C ff                             db 0xFF
002D ff                             db 0xFF
002E ff                             db 0xFF
002F ff                             db 0xFF
0030 2a ca 08                       ld hl,(0x08ca)
0033 e9                             jp (hl)
0034 ff                             db 0xFF
0035 ff                             db 0xFF
0036 ff                             db 0xFF
0037 ff                             db 0xFF
0038 2a cc 08       RESTART38:      ld hl,(0x08cc)
003b e9                             jp (hl)
003C ff                             db 0xFF
003D ff                             db 0xFF
003E ff                             db 0xFF
003F ff                             db 0xFF
0040 ff                             db 0xFF
0041 ff                             db 0xFF
0042 ff                             db 0xFF
0043 ff                             db 0xFF
0044 ff                             db 0xFF
0045 ff                             db 0xFF
0046 ff                             db 0xFF
0047 ff                             db 0xFF
0048 ff                             db 0xFF
0049 ff                             db 0xFF
004A ff                             db 0xFF
004B ff                             db 0xFF
004C ff                             db 0xFF
004D ff                             db 0xFF
004E ff                             db 0xFF
004F ff                             db 0xFF
0050 ff                             db 0xFF
0051 ff                             db 0xFF
0052 ff                             db 0xFF
0053 ff                             db 0xFF
0054 ff                             db 0xFF
0055 ff                             db 0xFF
0056 ff                             db 0xFF
0057 ff                             db 0xFF
0058 ff                             db 0xFF
0059 ff                             db 0xFF
005A ff                             db 0xFF
005B ff                             db 0xFF
005C ff                             db 0xFF
005D ff                             db 0xFF
005E ff                             db 0xFF
005F ff                             db 0xFF
0060 ff                             db 0xFF
0061 ff                             db 0xFF
0062 ff                             db 0xFF
0063 ff                             db 0xFF
0064 ff                             db 0xFF
0065 ff                             db 0xFF
0066 f5                             push af
0067 db 00                          in a,(0x00)
0069 32 e0 08                       ld (0x08e0),a
006c f1                             pop af
006d ed 45                          retn
006F ff                             db 0xFF
0070 ff                             db 0xFF
0071 ff                             db 0xFF
0072 ff                             db 0xFF
0073 ff                             db 0xFF
0074 ff                             db 0xFF
0075 ff                             db 0xFF
0076 ff                             db 0xFF
0077 ff                             db 0xFF
0078 ff                             db 0xFF
0079 ff                             db 0xFF
007A ff                             db 0xFF
007B ff                             db 0xFF
007C ff                             db 0xFF
007D ff                             db 0xFF
007E ff                             db 0xFF
007F ff                             db 0xFF
                    SEVSEGDATA:     org 0x0080
0080 eb                             ex de,hl
0081 28 cd                          jr z,0x0050
0083 ad                             xor l
0084 2e a7                          ld l,0xa7
0086 e7                             rst 0x20
0087 29                             add hl,hl
0088 ef                             rst 0x28
0089 2f                             cpl
008a 6f                             ld l,a
008b e6 c3                          and 0xc3
008d ec c7 47                       call pe,0x47c7
0090 e3                             ex (sp),hl
0091 66                             ld h,(hl)
0092 28 e8                          jr z,0x007c
0094 4e                             ld c,(hl)
0095 c2 2d 6b                       jp nz,0x6b2d
0098 eb                             ex de,hl
0099 4f                             ld c,a
009a 2f                             cpl
009b 4b                             ld c,e
009c a7                             and a
009d 46                             ld b,(hl)
009e ea e0 ac                       jp pe,0xace0
00a1 a4                             and h
00a2 ae                             xor (hl)
00a3 c9                             ret
00a4 10 08                          djnz 0x00ae
00a6 18 04                          jr 0x00ac
00a8 2c                             inc l
00a9 00                             nop
00aa ff                             db 0xFF
00ab ff                             db 0xFF
00ac ff                             db 0xFF
00ad ff                             db 0xFF
00ae ff                             db 0xFF
00af ff                             db 0xFF
00b0 00                             nop
00b1 09                             add hl,bc
00b2 00                             nop
00b3 00                             nop
00b4 ff                             db 0xFF
00b5 ff                             db 0xFF
00b6 ff                             db 0xFF
00b7 ff                             db 0xFF
00b8 ff                             db 0xFF
00b9 ff                             db 0xFF
00ba ff                             db 0xFF
00bb ff                             db 0xFF
00bc f8                             ret m
00bd ff                             db 0xFF
00be 00                             nop
00bf 00                             nop
                    DEMOTEXT:       ORG 0x00c0              ;Data table for text message demo.
00c0 1b                             db 0x1b                 ;ROUTINE
00c1 18                             db 0x18
00c2 1e                             db 0x1e
00c3 1d                             db 0x1d
00c4 12                             db 0x12
00c5 17                             db 0x17
00c6 0e                             db 0x0e
00c7 29                             db 0x29                 ;[space]
00c8 0b                             db 0x0b                 ;BY
00c9 22                             db 0x22
00ca 29                             db 0x29                 ;[space]
00cb 17                             db 0x17                 ;NIC.   (Nic Enots - Ken Stone's old programming pseudonym)
00cc 12                             db 0x12
00cd 0c                             db 0x0c
00ce 24                             db 0x24
00cf 29                             db 0x29                 ;[space]
00d0 29                             db 0x29                 ;[space]
00d1 29                             db 0x29                 ;[space]
00d2 29                             db 0x29                 ;[space]
00d3 29                             db 0x29                 ;[space]
00d4 fe                             db 0xfe                 ;(repeat text)
00d5 1c                             db 0x1c                 ;STONE  (Text for real surname hidden in code)
00d6 1d                             db 0x1d
00d7 18                             db 0x18
00d8 17                             db 0x17
00d9 0a                             db 0x0a
00da ff                             db 0xff                 ;(end text)
00DB ff                             db 0xFF
00DC ff                             db 0xFF
00DD ff                             db 0xFF
00DE ff                             db 0xFF
00DF ff                             db 0xFF
00e0 cd 89 02                       call 0x0289
00e3 03                             inc bc
00e4 18 04                          jr 0x00ea
00e6 cd 89 02                       call 0x0289
00e9 0b                             dec bc
00ea cd 90 04                       call 0x0490
00ed cd 70 02                       call 0x0270
00f0 21 df 08                       ld hl,0x08df
00f3 cb c6                          set 0,(hl)
00f5 cb 8e                          res 1,(hl)
00f7 c3 78 03                       jp 0x0378
00FA ff                             db 0xFF
00FB ff                             db 0xFF
00FC ff                             db 0xFF
00FD ff                             db 0xFF
00FE ff                             db 0xFF
00FF ff                             db 0xFF
0100                TABLES:         ORG 0x0100              ;tables
0100 fd             FRQTBL:         defb 0xfd               ;(division table for frequencies)
0101 10 10                          djnz 0x0113
0103 fd                             defb 0xfd
0104 11 ef 12                       ld de,0x12ef
0107 e1                             pop hl
0108 13                             inc de
0109 54                             ld d,h
010a 14                             inc d
010b c9                             ret
010c 10 be                          djnz 0x00cc
010e 10 b2                          djnz 0x00c2
0110 10 a9                          djnz 0x00bb
0112 19                             add hl,de
0113 9f                             sbc a,a
0114 1a                             ld a,(de)
0115 96                             sub (hl)
0116 1c                             inc e
0117 80                             add a,b
0118 1e 86                          ld e,0x86
011a 20 7f                          jr nz,0x019b
011c 22 77 24                       ld (0x2477),hl
011f 71                             ld (hl),c
0120 26 6a                          ld h,0x6a
0122 28 64                          jr z,0x0188
0124 2a 5f 2d                       ld hl,(0x2d5f)
0127 59                             ld e,c
0128 2f                             cpl
0129 54                             ld d,h
012a 32 50 35                       ld (0x3550),a
012d 4b                             ld c,e
012e 38 47                          jr c,0x0177
0130 3c                             inc a
0131 43                             ld b,e
0132 3f                             ccf
0133 3f                             ccf
0134 43                             ld b,e
0135 3c                             inc a
0136 47                             ld b,a
0137 38 4b                          jr c,0x0184
0139 35                             dec (hl)
013a 50                             ld d,b
013b 32 54 2f                       ld (0x2f54),a
013e 59                             ld e,c
013f 2d                             dec l
0140 5f                             ld e,a
0141 2a 64 28                       ld hl,(0x2864)
0144 6a                             ld l,d
0145 26 71                          ld h,0x71
0147 24                             inc h
0148 77                             ld (hl),a
0149 22 7f 20                       ld (0x207f),hl
014c 86                             add a,(hl)
014d 1e 8e                          ld e,0x8e
014f 1c                             inc e
0150 96                             sub (hl)
0151 1a                             ld a,(de)
0152 94                             sub h
0153 19                             add hl,de
0154 a9                             xor c
0155 18 b3                          jr 0x010a
0157 16 be                          ld d,0xbe
0159 15                             dec d
015a c9                             ret
015b 14                             inc d
015c d5                             push de
015d 13                             inc de
015e e1                             pop hl
015f 12                             ld (de),a
0160 ef                             rst 0x28
0161 11 fd 10                       ld de,0x10fd
0164 ff                             db 0xFF
0165 ff                             db 0xFF
0166 ff                             db 0xFF
0167 ff                             db 0xFF
0168 ff                             db 0xFF
0169 ff                             db 0xFF
016A ff                             db 0xFF
016B ff                             db 0xFF
016C ff                             db 0xFF
016D ff                             db 0xFF
016E ff                             db 0xFF
016F ff                             db 0xFF
                    PLAYTONE:       org 0x0170          ;TONE routine. 0170
0170 c5                             push bc
0171 d5                             push de
0172 e5                             push hl
0173 f5                             push af
0174 a7                             and a               ;Set Z Flag
0175 20 03                          jr nz,0x017a        ;If not zero, Jump Rel to ptnotzero
0177 5f                             ld e,a              ;Clear E
0178 18 02                          jr 0x017c           ;Jump Rel to ptzero
017a 1e 80          ptAisnotzero:   ld e,0x80           ;Load E with 80h
017c 21 00 01       ptAiszero:      ld hl,0x0100        ;(^division table for frequencies)
017f 87                             add a,a
0180 85                             add a,l
0181 6f                             ld l,a
0182 4e                             ld c,(hl)
0183 23                             inc hl
0184 46             lengthloop:     ld b,(hl)
0185 7b                             ld a,e
0186 d3 01                          out (0x01),a
0188 10 fe          toneloop:       djnz 0x0188
018a 46                             ld b,(hl)
018b af                             xor a
018c d3 01                          out (0x01),a
018e 10 fe                          djnz 0x018e
0190 0d                             dec c
0191 20 f1                          jr nz,0x0184
0193 f1                             pop af
0194 e1                             pop hl
0195 d1                             pop de
0196 c1                             pop bc
0197 c9                             ret
0198 ff                             db 0xFF
0199 ff                             db 0xFF
019A ff                             db 0xFF
019B ff                             db 0xFF
019C ff                             db 0xFF
019D ff                             db 0xFF
019E ff                             db 0xFF
019F ff                             db 0xFF
01a0                PLAYTUNE:       org 0x01a0  ;MUSIC routine.
01a0 f5                             push af
01a1 e5                             push hl
01a2 2a d6 08                       ld hl,(0x08d6)
01a5 7e                             ld a,(hl)
01a6 fe ff                          cp 0xff
01a8 20 03                          jr nz,0x01ad
01aa e1                             pop hl
01ab f1                             pop af
01ac c9                             ret
01ad fe fe                          cp 0xfe
01af 28 f1                          jr z,0x01a2
01b1 23                             inc hl
01b2 cd 70 01                       call 0x0170         ;Call PlayTone
01b5 18 ee                          jr 0x01a5
01B7 ff                             db 0xFF
01B8 ff                             db 0xFF
01B9 ff                             db 0xFF
01BA ff                             db 0xFF
01BB ff                             db 0xFF
01BC ff                             db 0xFF
01BD ff                             db 0xFF
01BE ff                             db 0xFF
01BF ff                             db 0xFF
01c0 21 df 08                       ld hl,0x08df
01c3 cb 46                          bit 0,(hl)
01c5 20 07                          jr nz,0x01ce
01c7 cb c6                          set 0,(hl)
01c9 cb 8e                          res 1,(hl)
01cb c3 78 03                       jp 0x0378
01ce cb 86                          res 0,(hl)
01d0 cb ce                          set 1,(hl)
01d2 c3 78 03                       jp 0x0378
01D5 ff                             db 0xFF
01D6 ff                             db 0xFF
01D7 ff                             db 0xFF
01d8                MPDISPLAY:      ORG 0x01d8              ;MULTIPASS DISPLAY
01d8 c5                             push bc
01d9 06 80                          ld b,0x80
01db cd a0 02                       call 0x02a0             ;Call DISPLAY
01de 10 fb                          djnz 0x01db
01e0 c1                             pop bc
01e1 c9                             ret
01e2 ff                             db 0xFF
01e3 ff                             db 0xFF
01e4 ed 4b d2 08                    ld bc,(0x08d2)
01e8 cd 90 04                       call 0x0490
01eb cd 70 02                       call 0x0270
01ee c3 78 03                       jp 0x0378
01f1 ff                             db 0xFF
01f2 ed 4b d4 08                    ld bc,(0x08d4)
01f6 cd 90 04                       call 0x0490
01f9 cd 70 02                       call 0x0270
01fc c3 78 03                       jp 0x0378
01ff ff                             db 0xFF
0200                MONSTART:       ORG 0x0200              ;Main monitor program entry point.
0200 ed 73 e8 08                    ld (0x08e8),sp
0204 31 00 09                       ld sp,0x0900
0207 f5                             push af
0208 c5                             push bc
0209 d5                             push de
020a e5                             push hl
020b dd e5                          push ix
020d fd e5                          push iy
020f 08                             ex af,af'
0210 d9                             exx
0211 f5                             push af
0212 c5                             push bc
0213 d5                             push de
0214 e5                             push hl
0215 ed 57                          ld a,i
0217 f5                             push af
0218 af                             xor a
0219 32 cc 08                       ld (0x08cc),a
021c 32 cd 08                       ld (0x08cd),a
021f 3e ff                          ld a,0xff
0221 32 e0 08                       ld (0x08e0),a
0224 c3 40 02                       jp 0x0240
0227 ff                             db 0xFF
0228 ff                             db 0xFF
0229 ff                             db 0xFF
022A ff                             db 0xFF
022B ff                             db 0xFF
022C ff                             db 0xFF
022D ff                             db 0xFF
022E ff                             db 0xFF
022F ff                             db 0xFF
0230 ff                             db 0xFF
0231 ff                             db 0xFF
0232 ff                             db 0xFF
0233 ff                             db 0xFF
0234 ff                             db 0xFF
0235 ff                             db 0xFF
0236 ff                             db 0xFF
0237 ff                             db 0xFF
0238 ff                             db 0xFF
0239 ff                             db 0xFF
023A ff                             db 0xFF
023B ff                             db 0xFF
023C ff                             db 0xFF
023D ff                             db 0xFF
023E ff                             db 0xFF
023F ff                             db 0xFF
0240 31 c0 08                       ld sp,0x08c0
0243 af                             xor a
0244 d3 01                          out (0x01),a
0246 d3 02                          out (0x02),a
0248 21 b0 00                       ld hl,0x00b0
024b 11 d8 08                       ld de,0x08d8
024e 01 05 00                       ld bc,0x0005
0251 ed b0                          ldir
0253 cd 70 02                       call 0x0270
0256 3e 08                          ld a,0x08
0258 cd 70 01                       call 0x0170
025b 3e 0f                          ld a,0x0f
025d cd 70 01                       call 0x0170
0260 3e 01                          ld a,0x01
0262 32 df 08                       ld (0x08df),a
0265 cd a0 02                       call 0x02a0
0268 cd 60 03                       call 0x0360
026b 18 f8                          jr 0x0265
026d ff                             db 0xFF
026F ff                             db 0xFF
026f ff                             db 0xFF
0270                GETADDRDATA:    org  0x0270             ;GetAddressedData
0270 f5                             push af
0271 e5                             push hl
0272 c5                             push bc
0273 cd 89 02                       call 0x0289
0276 e6 f0                          and 0xf0
0278 0f                             rrca
0279 0f                             rrca
027a 0f                             rrca
027b 0f                             rrca
027c 32 dc 08                       ld (0x08dc),a
027f 0a                             ld a,(bc)
0280 e6 0f                          and 0x0f
0282 32 dd 08                       ld (0x08dd),a
0285 c1                             pop bc
0286 e1                             pop hl
0287 f1                             pop af
0288 c9                             ret
                                                            ;GetEditorAddress
                                                            ;The address used by editor and shown on the 7 segment display is
                                                            ;stored in one location only, to prevent a situation where dislayed
                                                            ;address and real address could differ. In a trade off in
                                                            ;processing
                                                            ;time, it was more efficient to store the address in the optimal
                                                            ;from for the display routine. As such it needs converting to and
                                                            ;from this format when used by the monitor program.
                                                            ;The chosen location is the display buffer, where the address is
                                                            ;broken into nibbles and spread across four bytes, 08D8, 08D9,
                                                            ;08DA,
                                                            ;08DB, MSN to LSN. GetEditorAddress is used to retrieve this
                                                            ;address.
                                                            ;The data held here is only valid while the monitor program is
                                                            ;running. As soon as something else is written to the display it is
                                                            ;lost. Resetting the computer restores it to the default 0900h.
                                                            ;GetEditorAddress, when called, loads BC with the address currently
                                                            ;held In the display buffer. It also loads A with the data held at
                                                            ;the location addressed by BC.
                                                            ;E.G. If the LED display shows 0900 CD, calling 0289 will load BC
                                                            ;with 0900 (B is the MSB) and loads A with CD. This routine is not
                                                            ;transparent. HL is destroyed. BC and A hold the results. If this
                                                            ;routine is called during a user program that is not an extension ;;to
                                                            ;the monitor, the result will have no meaning.
0289                GETEDITADDR:    ORG 0x0289              ;GetEditorAddress
0289 21 d8 08                       ld hl,0x08d8
028c 7e                             ld a,(hl)
028d 07                             rlca
028e 07                             rlca
028f 07                             rlca
0290 07                             rlca
0291 23                             inc hl
0292 86                             add a,(hl)
0293 47                             ld b,a
0294 23                             inc hl
0295 7e                             ld a,(hl)
0296 07                             rlca
0297 07                             rlca
0298 07                             rlca
0299 07                             rlca
029a 23                             inc hl
029b 86                             add a,(hl)
029c 4f                             ld c,a
029d 0a                             ld a,(bc)
029e c9                             ret
029f ff                             db 0xFF
02a0                DISPLAY:        org 0x02a0
02a0 f5                             push af
02a1 e5                             push hl
02a2 d5                             push de
02a3 c5                             push bc
02a4 11 d8 08                       ld de,0x08d8
02a7 af                             xor a
02a8 d3 01                          out (0x01),a
02aa cd 50 03                       call 0x0350
02ad cb 4e                          bit 1,(hl)
02af 28 02                          jr z,0x02b3
02b1 cb e7                          set 4,a
02b3 d3 02                          out (0x02),a
02b5 3e 20                          ld a,0x20
02b7 d3 01                          out (0x01),a
02b9 06 20                          ld b,0x20
02bb 10 fe                          djnz 0x02bb
02bd af                             xor a
02be d3 01                          out (0x01),a
02c0 cd 50 03                       call 0x0350
02c3 cb 4e                          bit 1,(hl)
02c5 28 02                          jr z,0x02c9
02c7 cb e7                          set 4,a
02c9 d3 02                          out (0x02),a
02cb 3e 10                          ld a,0x10
02cd d3 01                          out (0x01),a
02cf 06 20                          ld b,0x20
02d1 10 fe                          djnz 0x02d1
02d3 af                             xor a
02d4 d3 01                          out (0x01),a
02d6 cd 50 03                       call 0x0350
02d9 cb 4e                          bit 1,(hl)
02db 28 02                          jr z,0x02df
02dd cb e7                          set 4,a
02df d3 02                          out (0x02),a
02e1 3e 08                          ld a,0x08
02e3 d3 01                          out (0x01),a
02e5 06 20                          ld b,0x20
02e7 10 fe                          djnz 0x02e7
02e9 af                             xor a
02ea d3 01                          out (0x01),a
02ec cd 50 03                       call 0x0350
02ef cb 4e                          bit 1,(hl)
02f1 28 02                          jr z,0x02f5
02f3 cb e7                          set 4,a
02f5 d3 02                          out (0x02),a
02f7 3e 04                          ld a,0x04
02f9 d3 01                          out (0x01),a
02fb 06 20                          ld b,0x20
02fd 10 fe                          djnz 0x02fd
02ff af                             xor a
0300 d3 01                          out (0x01),a
0302 00                             nop
0303 c3 18 03                       jp 0x0318
0306 ff                             db 0xFF
0307 ff                             db 0xFF
0308 ff                             db 0xFF
0309 ff                             db 0xFF
030a ff                             db 0xFF
030b ff                             db 0xFF
030c cd 89 02                       call 0x0289
030f c5                             push bc
0310 e1                             pop hl
0311 31 c0 08                       ld sp,0x08c0
0314 e9                             jp (hl)
0315 ff                             db 0xFF
0316 ff                             db 0xFF
0317 ff                             db 0xFF
0318 cd 50 03                       call 0x0350
031b cb 46                          bit 0,(hl)
031d 28 02                          jr z,0x0321
031f cb e7                          set 4,a
0321 d3 02                          out (0x02),a
0323 3e 02                          ld a,0x02
0325 d3 01                          out (0x01),a
0327 06 20                          ld b,0x20
0329 10 fe                          djnz 0x0329
032b af                             xor a
032c d3 01                          out (0x01),a
032e cd 50 03                       call 0x0350
0331 cb 46                          bit 0,(hl)
0333 28 02                          jr z,0x0337
0335 cb e7                          set 4,a
0337 d3 02                          out (0x02),a
0339 3e 01                          ld a,0x01
033b d3 01                          out (0x01),a
033d 06 20                          ld b,0x20
033f 10 fe                          djnz 0x033f
0341 af                             xor a
0342 d3 01                          out (0x01),a
0344 c1                             pop bc
0345 d1                             pop de
0346 e1                             pop hl
0347 f1                             pop af
0348 c9                             ret
0349 ff                             db 0xFF
034a ff                             db 0xFF
034b ff                             db 0xFF
034c ff                             db 0xFF
034d ff                             db 0xFF
034e ff                             db 0xFF
034f ff                             db 0xFF
                                                            ;Hex2SevenSeg converts the Hex value (0 to29) into the ;
                                                            ;corresponding seven-segment data. It is part of the display ;
                                                            ;destroyed, DE is incremented, A is converted from the value to its
                                                            ;7 segment form.
                    HEX2SEG:        org 0x0350              ;Hex2SevenSeg
0350 21 80 00                       ld hl,0x0080
0353 1a                             ld a,(de)
0354 85                             add a,l
0355 6f                             ld l,a
0356 7e                             ld a,(hl)
0357 13                             inc de
0358 21 df 08                       ld hl,0x08df
035b c9                             ret
035c ff                             db 0xFF
035d ff                             db 0xFF
035e ff                             db 0xFF
035f ff                             db 0xFF
0360 f5                             push af
0361 e5                             push hl
0362 21 e0 08                       ld hl,0x08e0
0365 3e ff                          ld a,0xff
0367 be                             cp (hl)
0368 28 0e                          jr z,0x0378
036a 7e                             ld a,(hl)
036b e6 1f                          and 0x1f
036d cb 6e                          bit 5,(hl)
036f 20 02                          jr nz,0x0373
0371 c6 14                          add a,0x14
0373 c3 a8 03                       jp 0x03a8
0376 ff                             db 0xFF
0377 ff                             db 0xFF
0378 e1                             pop hl
0379 f1                             pop af
037a c9                             ret
037b ff                             db 0xFF
037c ff                             db 0xFF
037d e1                             pop hl
037e f1                             pop af
037f c9                             ret
0380 ff                             db 0xFF
0381 ff                             db 0xFF
0382 ff                             db 0xFF
0383 ff                             db 0xFF
0384 cd 89 02                       call 0x0289
0387 c5                             push bc
0388 dd e1                          pop ix
038a dd 23                          inc ix
038c dd e5                          push ix
038e e1                             pop hl
038f 7c                             ld a,h
0390 fe 40                          cp 0x40
0392 28 08                          jr z,0x039c
0394 dd 7e 00                       ld a,(ix+0)
0397 dd 77 ff                       ld (ix-1),a
039a 18 ee                          jr 0x038a
039c 3e 00                          ld a,0x00
039e 32 ff 3f                       ld (0x3fff),a
03a1 cd 70 02                       call 0x0270
03a4 c3 78 03                       jp 0x0378
03a7 ff                             db 0xFF
03a8 c6 01                          add a,0x01
03aa cd 70 01                       call 0x0170
03ad c3 21 04                       jp 0x0421
03b0 cd 89 02                       call 0x0289
03b3 0b                             dec bc
03b4 dd 21 fe 3f                    ld ix,0x3ffe
03b8 dd 7e 00                       ld a,(ix+0)
03bb dd 77 01                       ld (ix+1),a
03be dd 2b                          dec ix
03c0 dd e5                          push ix
03c2 e1                             pop hl
03c3 79                             ld a,c
03c4 bd                             cp l
03c5 20 f1                          jr nz,0x03b8
03c7 78                             ld a,b
03c8 bc                             cp h
03c9 20 ed                          jr nz,0x03b8
03cb dd 36 01 00                    ld (ix+1),0x00
03cf cd 70 02                       call 0x0270
03d2 c3 78 03                       jp 0x0378
03d5 ff                             db 0xFF
03d6 ff                             db 0xFF
03d7 ff                             db 0xFF
03d8                RUNWRITING:     org 0x03d8;             RUNNING WRITING
03d8 e5                             push hl
03d9 f5                             push af
03da dd e5                          push ix
03dc c5                             push bc
03dd af                             xor a
03de 32 df 08                       ld (0x08df),a
03e1 06 06                          ld b,0x06
03e3 21 d8 08                       ld hl,0x08d8
03e6 3e 29                          ld a,0x29
03e8 77                             ld (hl),a
03e9 23                             inc hl
03ea 10 fc                          djnz 0x03e8
03ec 2a d0 08                       ld hl,(0x08d0)
03ef 7e                             ld a,(hl)
03f0 fe ff                          cp 0xff
03f2 20 06                          jr nz,0x03fa
03f4 c1                             pop bc
03f5 dd e1                          pop ix
03f7 f1                             pop af
03f8 e1                             pop hl
03f9 c9                             ret
03fa fe fe                          cp 0xfe
03fc 28 ee                          jr z,0x03ec
03fe dd 21 d8 08                    ld ix,0x08d8
0402 06 05                          ld b,0x05
0404 dd 7e 01                       ld a,(ix+1)
0407 dd 77 00                       ld (ix+0),a
040a dd 23                          inc ix
040c 10 f6                          djnz 0x0404
040e 7e                             ld a,(hl)
040f 32 dd 08                       ld (0x08dd),a
0412 23                             inc hl
0413 06 40                          ld b,0x40
0415 cd a0 02                       call 0x02a0
0418 10 fb                          djnz 0x0415
041a 18 d3                          jr 0x03ef
041c ff                             db 0xFF
041d ff                             db 0xFF
041e ff                             db 0xFF
041f ff                             db 0xFF
0420 ff                             db 0xFF
0421 d6 01                          sub 0x01
0423 36 ff                          ld (hl),0xff
0425 cb 67                          bit 4,a
0427 c2 c0 04                       jp nz,0x04c0
042a cb 6f                          bit 5,a
042c c2 c0 04                       jp nz,0x04c0
042f 21 df 08                       ld hl,0x08df
0432 cb 46                          bit 0,(hl)
0434 ca 55 04                       jp z,0x0455
0437 57                             ld d,a
0438 cd 89 02                       call 0x0289
043b 21 df 08                       ld hl,0x08df
043e cb 5e                          bit 3,(hl)
0440 20 03                          jr nz,0x0445
0442 af                             xor a
0443 cb de                          set 3,(hl)
0445 07                             rlca
0446 07                             rlca
0447 07                             rlca
0448 07                             rlca
0449 e6 f0                          and 0xf0
044b 82                             add a,d
044c 02                             ld (bc),a
044d cd 70 02                       call 0x0270
0450 c3 7d 03                       jp 0x037d
0453 ff                             db 0xFF
0454 ff                             db 0xFF
0455 57                             ld d,a
0456 21 df 08                       ld hl,0x08df
0459 cb 9e                          res 3,(hl)
045b cb 66                          bit 4,(hl)
045d 20 08                          jr nz,0x0467
045f 01 00 00                       ld bc,0x0000
0462 cd 90 04                       call 0x0490
0465 cb e6                          set 4,(hl)
0467 cd 89 02                       call 0x0289
046a 78                             ld a,b
046b 07                             rlca
046c 07                             rlca
046d 07                             rlca
046e 07                             rlca
046f e6 f0                          and 0xf0
0471 5f                             ld e,a
0472 79                             ld a,c
0473 07                             rlca
0474 07                             rlca
0475 07                             rlca
0476 07                             rlca
0477 e6 0f                          and 0x0f
0479 83                             add a,e
047a 47                             ld b,a
047b 79                             ld a,c
047c 07                             rlca
047d 07                             rlca
047e 07                             rlca
047f 07                             rlca
0480 e6 f0                          and 0xf0
0482 82                             add a,d
0483 4f                             ld c,a
0484 cd 90 04                       call 0x0490
0487 cd 70 02                       call 0x0270
048a c3 7d 03                       jp 0x037d
048d ff                             db 0xFF
048e ff                             db 0xFF
048f ff                             db 0xFF
                                                            ;SetEditorAddress 0490 is the opposite of the GetEditorAddress
                                                            ;0289 routine.
                                                            ; It loads the display buffer (08D8, 08D9, 08DA, 08DB) with the
                                                            ;value held in BC.
                                                            ; This routine is transparent.
0490                SETEDITADDR:    org 0x0490              ;SetEditorAddress
0490 f5                             push af
0491 e5                             push hl
0492 21 d8 08                       ld hl,0x08d8
0495 78                             ld a,b
0496 e6 f0                          and 0xf0
0498 07                             rlca
0499 07                             rlca
049a 07                             rlca
049b 07                             rlca
049c 77                             ld (hl),a
049d 23                             inc hl
049e 78                             ld a,b
049f e6 0f                          and 0x0f
04a1 77                             ld (hl),a
04a2 23                             inc hl
04a3 79                             ld a,c
04a4 e6 f0                          and 0xf0
04a6 07                             rlca
04a7 07                             rlca
04a8 07                             rlca
04a9 07                             rlca
04aa 77                             ld (hl),a
04ab 23                             inc hl
04ac 79                             ld a,c
04ad e6 0f                          and 0x0f
04af 77                             ld (hl),a
04b0 e1                             pop hl
04b1 f1                             pop af
04b2 c9                             ret
04B3 ff                             db 0xFF
04B4 ff                             db 0xFF
04B5 ff                             db 0xFF
04B6 ff                             db 0xFF
04B7 ff                             db 0xFF
04B8 ff                             db 0xFF
04B9 ff                             db 0xFF
04BA ff                             db 0xFF
04BB ff                             db 0xFF
04BC ff                             db 0xFF
04BD ff                             db 0xFF
04BE ff                             db 0xFF
04BF ff                             db 0xFF
04c0 21 df 08                       ld hl,0x08df
04c3 cb 9e                          res 3,(hl)
04c5 cb a6                          res 4,(hl)
04c7 fe 10                          cp 0x10
04c9 ca e0 00                       jp z,0x00e0
04cc fe 11                          cp 0x11
04ce ca e6 00                       jp z,0x00e6
04d1 fe 12                          cp 0x12
04d3 ca 0c 03                       jp z,0x030c
04d6 fe 13                          cp 0x13
04d8 ca c0 01                       jp z,0x01c0
04db fe 14                          cp 0x14
04dd ca 50 05                       jp z,0x0550
04e0 fe 15                          cp 0x15
04e2 ca ff ff                       jp z,0xffff
04e5 fe 16                          cp 0x16
04e7 ca ff ff                       jp z,0xffff
04ea fe 17                          cp 0x17
04ec ca f2 01                       jp z,0x01f2
04ef fe 18                          cp 0x18
04f1 ca 70 05                       jp z,0x0570
04f4 fe 19                          cp 0x19
04f6 ca ff ff                       jp z,0xffff
04f9 fe 1a                          cp 0x1a
04fb ca ff ff                       jp z,0xffff
04fe fe 1b                          cp 0x1b
0500 ca ff ff                       jp z,0xffff
0503 fe 1c                          cp 0x1c
0505 ca 60 06                       jp z,0x0660
0508 fe 1d                          cp 0x1d
050a ca ff ff                       jp z,0xffff
050d fe 1e                          cp 0x1e
050f ca ff ff                       jp z,0xffff
0512 fe 1f                          cp 0x1f
0514 ca ff ff                       jp z,0xffff
0517 fe 20                          cp 0x20
0519 ca ff ff                       jp z,0xffff
051c fe 21                          cp 0x21
051e ca ff ff                       jp z,0xffff
0521 fe 22                          cp 0x22
0523 ca ff ff                       jp z,0xffff
0526 fe 23                          cp 0x23
0528 ca ff ff                       jp z,0xffff
052b fe 24                          cp 0x24
052d ca b0 03                       jp z,0x03b0
0530 fe 25                          cp 0x25
0532 ca 84 03                       jp z,0x0384
0535 fe 26                          cp 0x26
0537 ca ff ff                       jp z,0xffff
053a fe 27                          cp 0x27
053c ca e4 01                       jp z,0x01e4
053f c3 78 03                       jp 0x0378
0542 FF                             RST   0x38
0543 FF                             RST   0x38
0544 FF                             RST   0x38
0545 FF                             RST   0x38
0546 FF                             RST   0x38
0547 FF                             RST   0x38
0548 FF                             RST   0x38
0549 FF                             RST   0x38
054A FF                             RST   0x38
054B FF                             RST   0x38
054C FF                             RST   0x38
054D FF                             RST   0x38
054E FF                             RST   0x38
054F FF                             RST   0x38
0550 cd 89 02                       call 0x0289
0553 60                             ld h,b
0554 69                             ld l,c
0555 3a e1 08                       ld a,(0x08e1)
0558 23                             inc hl
0559 be                             cp (hl)
055a 20 fc                          jr nz,0x0558
055c 44                             ld b,h
055d 4d                             ld c,l
055e cd 90 04                       call 0x0490
0561 c3 53 02                       jp 0x0253
0564 ff                             db 0xFF
0565 FF                             db 0xFF
0566 FF                             db 0xFF
0567 FF                             db 0xFF
0568 FF                             db 0xFF
0569 FF                             db 0xFF
056A FF                             db 0xFF
056B FF                             db 0xFF
056C FF                             db 0xFF
056D FF                             db 0xFF
056E FF                             db 0xFF
056F FF                             db 0xFF
0570 FF                             db 0xFF
0571 FF                             db 0xFF
0572 FF                             db 0xFF
0573 FF                             db 0xFF
0574 FF                             db 0xFF
0575 FF                             db 0xFF
0576 FF                             db 0xFF
0577 FF                             db 0xFF
0578 FF                             db 0xFF
0579 FF                             db 0xFF
057A FF                             db 0xFF
057B FF                             db 0xFF
057C FF                             db 0xFF
057D FF                             db 0xFF
057E FF                             db 0xFF
057F FF                             db 0xFF
0580 FF                             db 0xFF
0581 FF                             db 0xFF
0582 FF                             db 0xFF
0583 FF                             db 0xFF
0584 FF                             db 0xFF
0585 FF                             db 0xFF
0586 FF                             db 0xFF
0587 FF                             db 0xFF
0588 FF                             db 0xFF
0589 FF                             db 0xFF
058A FF                             db 0xFF
058B FF                             db 0xFF
058C FF                             db 0xFF
058D FF                             db 0xFF
058E FF                             db 0xFF
058F FF                             db 0xFF
0590 FF                             db 0xFF
0591 FF                             db 0xFF
0592 FF                             db 0xFF
0593 FF                             db 0xFF
0594 FF                             db 0xFF
0595 FF                             db 0xFF
0596 FF                             db 0xFF
0597 FF                             db 0xFF
0598 FF                             db 0xFF
0599 FF                             db 0xFF
059A FF                             db 0xFF
059B FF                             db 0xFF
059C FF                             db 0xFF
059D FF                             db 0xFF
059E FF                             db 0xFF
059F FF                             db 0xFF
05A0 FF                             db 0xFF
05A1 FF                             db 0xFF
05A2 FF                             db 0xFF
05A3 FF                             db 0xFF
05A4 FF                             db 0xFF
05A5 FF                             db 0xFF
05A6 FF                             db 0xFF
05A7 FF                             db 0xFF
05A8 FF                             db 0xFF
05A9 FF                             db 0xFF
05AA FF                             db 0xFF
05AB FF                             db 0xFF
05AC FF                             db 0xFF
05AD FF                             db 0xFF
05AE FF                             db 0xFF
05AF FF                             db 0xFF
05B0 FF                             db 0xFF
05B1 FF                             db 0xFF
05B2 FF                             db 0xFF
05B3 FF                             db 0xFF
05B4 FF                             db 0xFF
05B5 FF                             db 0xFF
05B6 FF                             db 0xFF
05B7 FF                             db 0xFF
05B8 FF                             db 0xFF
05B9 FF                             db 0xFF
05BA FF                             db 0xFF
05BB FF                             db 0xFF
05BC FF                             db 0xFF
05BD FF                             db 0xFF
05BE FF                             db 0xFF
05BF FF                             db 0xFF
05C0 FF                             db 0xFF
05C1 FF                             db 0xFF
05C2 FF                             db 0xFF
05C3 FF                             db 0xFF
05C4 FF                             db 0xFF
05C5 FF                             db 0xFF
05C6 FF                             db 0xFF
05C7 FF                             db 0xFF
05C8 FF                             db 0xFF
05C9 FF                             db 0xFF
05CA FF                             db 0xFF
05CB FF                             db 0xFF
05CC FF                             db 0xFF
05CD FF                             db 0xFF
05CE FF                             db 0xFF
05CF FF                             db 0xFF
05D0 FF                             db 0xFF
05D1 FF                             db 0xFF
05D2 FF                             db 0xFF
05D3 FF                             db 0xFF
05D4 FF                             db 0xFF
05D5 FF                             db 0xFF
05D6 FF                             db 0xFF
05D7 FF                             db 0xFF
05D8 FF                             db 0xFF
05D9 FF                             db 0xFF
05DA FF                             db 0xFF
05DB FF                             db 0xFF
05DC FF                             db 0xFF
05DD FF                             db 0xFF
05DE FF                             db 0xFF
05DF FF                             db 0xFF
05E0 FF                             db 0xFF
05E1 FF                             db 0xFF
05E2 FF                             db 0xFF
05E3 FF                             db 0xFF
05E4 FF                             db 0xFF
05E5 FF                             db 0xFF
05E6 FF                             db 0xFF
05E7 FF                             db 0xFF
05E8 FF                             db 0xFF
05E9 FF                             db 0xFF
05EA FF                             db 0xFF
05EB FF                             db 0xFF
05EC FF                             db 0xFF
05ED FF                             db 0xFF
05EE FF                             db 0xFF
05EF FF                             db 0xFF
05F0 FF                             db 0xFF
05F1 FF                             db 0xFF
05F2 FF                             db 0xFF
05F3 FF                             db 0xFF
05F4 FF                             db 0xFF
05F5 FF                             db 0xFF
05F6 FF                             db 0xFF
05F7 FF                             db 0xFF
05F8 FF                             db 0xFF
05F9 FF                             db 0xFF
05FA FF                             db 0xFF
05FB FF                             db 0xFF
05FC FF                             db 0xFF
05FD FF                             db 0xFF
05FE FF                             db 0xFF
05FF FF                             db 0xFF
0600 FF                             db 0xFF
0601 FF                             db 0xFF
0602 FF                             db 0xFF
0603 FF                             db 0xFF
0604 FF                             db 0xFF
0605 FF                             db 0xFF
0606 FF                             db 0xFF
0607 FF                             db 0xFF
0608 FF                             db 0xFF
0609 FF                             db 0xFF
060A FF                             db 0xFF
060B FF                             db 0xFF
060C FF                             db 0xFF
060D FF                             db 0xFF
060E FF                             db 0xFF
060F FF                             db 0xFF
0610 FF                             db 0xFF
0611 FF                             db 0xFF
0612 FF                             db 0xFF
0613 FF                             db 0xFF
0614 FF                             db 0xFF
0615 FF                             db 0xFF
0616 FF                             db 0xFF
0617 FF                             db 0xFF
0618 FF                             db 0xFF
0619 FF                             db 0xFF
061A FF                             db 0xFF
061B FF                             db 0xFF
061C FF                             db 0xFF
061D FF                             db 0xFF
061E FF                             db 0xFF
061F FF                             db 0xFF
0620 FF                             db 0xFF
0621 FF                             db 0xFF
0622 FF                             db 0xFF
0623 FF                             db 0xFF
0624 FF                             db 0xFF
0625 FF                             db 0xFF
0626 FF                             db 0xFF
0627 FF                             db 0xFF
0628 FF                             db 0xFF
0629 FF                             db 0xFF
062A FF                             db 0xFF
062B FF                             db 0xFF
062C FF                             db 0xFF
062D FF                             db 0xFF
062E FF                             db 0xFF
062F FF                             db 0xFF
0630 FF                             db 0xFF
0631 FF                             db 0xFF
0632 FF                             db 0xFF
0633 FF                             db 0xFF
0634 FF                             db 0xFF
0635 FF                             db 0xFF
0636 FF                             db 0xFF
0637 FF                             db 0xFF
0638 FF                             db 0xFF
0639 FF                             db 0xFF
063A FF                             db 0xFF
063B FF                             db 0xFF
063C FF                             db 0xFF
063D FF                             db 0xFF
063E FF                             db 0xFF
063F FF                             db 0xFF
0640 FF                             db 0xFF
0641 FF                             db 0xFF
0642 FF                             db 0xFF
0643 FF                             db 0xFF
0644 FF                             db 0xFF
0645 FF                             db 0xFF
0646 FF                             db 0xFF
0647 FF                             db 0xFF
0648 FF                             db 0xFF
0649 FF                             db 0xFF
064A FF                             db 0xFF
064B FF                             db 0xFF
064C FF                             db 0xFF
064D FF                             db 0xFF
064E FF                             db 0xFF
064F FF                             db 0xFF
0650 FF                             db 0xFF
0651 FF                             db 0xFF
0652 FF                             db 0xFF
0653 FF                             db 0xFF
0654 FF                             db 0xFF
0655 FF                             db 0xFF
0656 FF                             db 0xFF
0657 FF                             db 0xFF
0658 FF                             db 0xFF
0659 FF                             db 0xFF
065A FF                             db 0xFF
065B FF                             db 0xFF
065C FF                             db 0xFF
065D FF                             db 0xFF
065E FF                             db 0xFF
065F FF                             db 0xFF
0660 FF                             db 0xFF
0661 FF                             db 0xFF
0662 FF                             db 0xFF
0663 FF                             db 0xFF
0664 FF                             db 0xFF
0665 FF                             db 0xFF
0666 FF                             db 0xFF
0667 FF                             db 0xFF
0668 FF                             db 0xFF
0669 FF                             db 0xFF
066A FF                             db 0xFF
066B FF                             db 0xFF
066C FF                             db 0xFF
066D FF                             db 0xFF
066E FF                             db 0xFF
066F FF                             db 0xFF
0670 FF                             db 0xFF
0671 FF                             db 0xFF
0672 FF                             db 0xFF
0673 FF                             db 0xFF
0674 FF                             db 0xFF
0675 FF                             db 0xFF
0676 FF                             db 0xFF
0677 FF                             db 0xFF
0678 FF                             db 0xFF
0679 FF                             db 0xFF
067A FF                             db 0xFF
067B FF                             db 0xFF
067C FF                             db 0xFF
067D FF                             db 0xFF
067E FF                             db 0xFF
067F FF                             db 0xFF
0680 FF                             db 0xFF
0681 FF                             db 0xFF
0682 FF                             db 0xFF
0683 FF                             db 0xFF
0684 FF                             db 0xFF
0685 FF                             db 0xFF
0686 FF                             db 0xFF
0687 FF                             db 0xFF
0688 FF                             db 0xFF
0689 FF                             db 0xFF
068A FF                             db 0xFF
068B FF                             db 0xFF
068C FF                             db 0xFF
068D FF                             db 0xFF
068E FF                             db 0xFF
068F FF                             db 0xFF
0690 FF                             db 0xFF
0691 FF                             db 0xFF
0692 FF                             db 0xFF
0693 FF                             db 0xFF
0694 FF                             db 0xFF
0695 FF                             db 0xFF
0696 FF                             db 0xFF
0697 FF                             db 0xFF
0698 FF                             db 0xFF
0699 FF                             db 0xFF
069A FF                             db 0xFF
069B FF                             db 0xFF
069C FF                             db 0xFF
069D FF                             db 0xFF
069E FF                             db 0xFF
069F FF                             db 0xFF
06A0 FF                             db 0xFF
06A1 FF                             db 0xFF
06A2 FF                             db 0xFF
06A3 FF                             db 0xFF
06A4 FF                             db 0xFF
06A5 FF                             db 0xFF
06A6 FF                             db 0xFF
06A7 FF                             db 0xFF
06A8 FF                             db 0xFF
06A9 FF                             db 0xFF
06AA FF                             db 0xFF
06AB FF                             db 0xFF
06AC FF                             db 0xFF
06AD FF                             db 0xFF
06AE FF                             db 0xFF
06AF FF                             db 0xFF
06B0 FF                             db 0xFF
06B1 FF                             db 0xFF
06B2 FF                             db 0xFF
06B3 FF                             db 0xFF
06B4 FF                             db 0xFF
06B5 FF                             db 0xFF
06B6 FF                             db 0xFF
06B7 FF                             db 0xFF
06B8 FF                             db 0xFF
06B9 FF                             db 0xFF
06BA FF                             db 0xFF
06BB FF                             db 0xFF
06BC FF                             db 0xFF
06BD FF                             db 0xFF
06BE FF                             db 0xFF
06BF FF                             db 0xFF
06C0 FF                             db 0xFF
06C1 FF                             db 0xFF
06C2 FF                             db 0xFF
06C3 FF                             db 0xFF
06C4 FF                             db 0xFF
06C5 FF                             db 0xFF
06C6 FF                             db 0xFF
06C7 FF                             db 0xFF
06C8 FF                             db 0xFF
06C9 FF                             db 0xFF
06CA FF                             db 0xFF
06CB FF                             db 0xFF
06CC FF                             db 0xFF
06CD FF                             db 0xFF
06CE FF                             db 0xFF
06CF FF                             db 0xFF
06D0 FF                             db 0xFF
06D1 FF                             db 0xFF
06D2 FF                             db 0xFF
06D3 FF                             db 0xFF
06D4 FF                             db 0xFF
06D5 FF                             db 0xFF
06D6 FF                             db 0xFF
06D7 FF                             db 0xFF
06D8 FF                             db 0xFF
06D9 FF                             db 0xFF
06DA FF                             db 0xFF
06DB FF                             db 0xFF
06DC FF                             db 0xFF
06DD FF                             db 0xFF
06DE FF                             db 0xFF
06DF FF                             db 0xFF
06E0 FF                             db 0xFF
06E1 FF                             db 0xFF
06E2 FF                             db 0xFF
06E3 FF                             db 0xFF
06E4 FF                             db 0xFF
06E5 FF                             db 0xFF
06E6 FF                             db 0xFF
06E7 FF                             db 0xFF
06E8 FF                             db 0xFF
06E9 FF                             db 0xFF
06EA FF                             db 0xFF
06EB FF                             db 0xFF
06EC FF                             db 0xFF
06ED FF                             db 0xFF
06EE FF                             db 0xFF
06EF FF                             db 0xFF
06F0 FF                             db 0xFF
06F1 FF                             db 0xFF
06F2 FF                             db 0xFF
06F3 FF                             db 0xFF
06F4 FF                             db 0xFF
06F5 FF                             db 0xFF
06F6 FF                             db 0xFF
06F7 FF                             db 0xFF
06F8 FF                             db 0xFF
06F9 FF                             db 0xFF
06FA FF                             db 0xFF
06FB FF                             db 0xFF
06FC FF                             db 0xFF
06FD FF                             db 0xFF
06FE FF                             db 0xFF
06FF FF                             db 0xFF
0700 FF                             db 0xFF
0701 FF                             db 0xFF
0702 FF                             db 0xFF
0703 FF                             db 0xFF
0704 FF                             db 0xFF
0705 FF                             db 0xFF
0706 FF                             db 0xFF
0707 FF                             db 0xFF
0708 FF                             db 0xFF
0709 FF                             db 0xFF
070A FF                             db 0xFF
070B FF                             db 0xFF
070C FF                             db 0xFF
070D FF                             db 0xFF
070E FF                             db 0xFF
070F FF                             db 0xFF
0710 FF                             db 0xFF
0711 FF                             db 0xFF
0712 FF                             db 0xFF
0713 FF                             db 0xFF
0714 FF                             db 0xFF
0715 FF                             db 0xFF
0716 FF                             db 0xFF
0717 FF                             db 0xFF
0718 FF                             db 0xFF
0719 FF                             db 0xFF
071A FF                             db 0xFF
071B FF                             db 0xFF
071C FF                             db 0xFF
071D FF                             db 0xFF
071E FF                             db 0xFF
071F FF                             db 0xFF
0720 FF                             db 0xFF
0721 FF                             db 0xFF
0722 FF                             db 0xFF
0723 FF                             db 0xFF
0724 FF                             db 0xFF
0725 FF                             db 0xFF
0726 FF                             db 0xFF
0727 FF                             db 0xFF
0728 FF                             db 0xFF
0729 FF                             db 0xFF
072A FF                             db 0xFF
072B FF                             db 0xFF
072C FF                             db 0xFF
072D FF                             db 0xFF
072E FF                             db 0xFF
072F FF                             db 0xFF
0730 FF                             db 0xFF
0731 FF                             db 0xFF
0732 FF                             db 0xFF
0733 FF                             db 0xFF
0734 FF                             db 0xFF
0735 FF                             db 0xFF
0736 FF                             db 0xFF
0737 FF                             db 0xFF
0738 FF                             db 0xFF
0739 FF                             db 0xFF
073A FF                             db 0xFF
073B FF                             db 0xFF
073C FF                             db 0xFF
073D FF                             db 0xFF
073E FF                             db 0xFF
073F FF                             db 0xFF
0740 FF                             db 0xFF
0741 FF                             db 0xFF
0742 FF                             db 0xFF
0743 FF                             db 0xFF
0744 FF                             db 0xFF
0745 FF                             db 0xFF
0746 FF                             db 0xFF
0747 FF                             db 0xFF
0748 FF                             db 0xFF
0749 FF                             db 0xFF
074A FF                             db 0xFF
074B FF                             db 0xFF
074C FF                             db 0xFF
074D FF                             db 0xFF
074E FF                             db 0xFF
074F FF                             db 0xFF
0750 FF                             db 0xFF
0751 FF                             db 0xFF
0752 FF                             db 0xFF
0753 FF                             db 0xFF
0754 FF                             db 0xFF
0755 FF                             db 0xFF
0756 FF                             db 0xFF
0757 FF                             db 0xFF
0758 FF                             db 0xFF
0759 FF                             db 0xFF
075A FF                             db 0xFF
075B FF                             db 0xFF
075C FF                             db 0xFF
075D FF                             db 0xFF
075E FF                             db 0xFF
075F FF                             db 0xFF
0760 FF                             db 0xFF
0761 FF                             db 0xFF
0762 FF                             db 0xFF
0763 FF                             db 0xFF
0764 FF                             db 0xFF
0765 FF                             db 0xFF
0766 FF                             db 0xFF
0767 FF                             db 0xFF
0768 FF                             db 0xFF
0769 FF                             db 0xFF
076A FF                             db 0xFF
076B FF                             db 0xFF
076C FF                             db 0xFF
076D FF                             db 0xFF
076E FF                             db 0xFF
076F FF                             db 0xFF
0770 FF                             db 0xFF
0771 FF                             db 0xFF
0772 FF                             db 0xFF
0773 FF                             db 0xFF
0774 FF                             db 0xFF
0775 FF                             db 0xFF
0776 FF                             db 0xFF
0777 FF                             db 0xFF
0778 FF                             db 0xFF
0779 FF                             db 0xFF
077A FF                             db 0xFF
077B FF                             db 0xFF
077C FF                             db 0xFF
077D FF                             db 0xFF
077E FF                             db 0xFF
077F FF                             db 0xFF
0780 FF                             db 0xFF
0781 FF                             db 0xFF
0782 FF                             db 0xFF
0783 FF                             db 0xFF
0784 FF                             db 0xFF
0785 FF                             db 0xFF
0786 FF                             db 0xFF
0787 FF                             db 0xFF
0788 FF                             db 0xFF
0789 FF                             db 0xFF
078A FF                             db 0xFF
078B FF                             db 0xFF
078C FF                             db 0xFF
078D FF                             db 0xFF
078E FF                             db 0xFF
078F FF                             db 0xFF
0790 FF                             db 0xFF
0791 FF                             db 0xFF
0792 FF                             db 0xFF
0793 FF                             db 0xFF
0794 FF                             db 0xFF
0795 FF                             db 0xFF
0796 FF                             db 0xFF
0797 FF                             db 0xFF
0798 FF                             db 0xFF
0799 FF                             db 0xFF
079A FF                             db 0xFF
079B FF                             db 0xFF
079C FF                             db 0xFF
079D FF                             db 0xFF
079E FF                             db 0xFF
079F FF                             db 0xFF
07A0 FF                             db 0xFF
07A1 FF                             db 0xFF
07A2 FF                             db 0xFF
07A3 FF                             db 0xFF
07A4 FF                             db 0xFF
07A5 FF                             db 0xFF
07A6 FF                             db 0xFF
07A7 FF                             db 0xFF
07A8 FF                             db 0xFF
07A9 FF                             db 0xFF
07AA FF                             db 0xFF
07AB FF                             db 0xFF
07AC FF                             db 0xFF
07AD FF                             db 0xFF
07AE FF                             db 0xFF
07AF FF                             db 0xFF
07B0 FF                             db 0xFF
07B1 FF                             db 0xFF
07B2 FF                             db 0xFF
07B3 FF                             db 0xFF
07B4 FF                             db 0xFF
07B5 FF                             db 0xFF
07B6 FF                             db 0xFF
07B7 FF                             db 0xFF
07B8 FF                             db 0xFF
07B9 FF                             db 0xFF
07BA FF                             db 0xFF
07BB FF                             db 0xFF
07BC FF                             db 0xFF
07BD FF                             db 0xFF
07BE FF                             db 0xFF
07BF FF                             db 0xFF
07C0 FF                             db 0xFF
07C1 FF                             db 0xFF
07C2 FF                             db 0xFF
07C3 FF                             db 0xFF
07C4 FF                             db 0xFF
07C5 FF                             db 0xFF
07C6 FF                             db 0xFF
07C7 FF                             db 0xFF
07C8 FF                             db 0xFF
07C9 FF                             db 0xFF
07CA FF                             db 0xFF
07CB FF                             db 0xFF
07CC FF                             db 0xFF
07CD FF                             db 0xFF
07CE FF                             db 0xFF
07CF FF                             db 0xFF
07D0 FF                             db 0xFF
07D1 FF                             db 0xFF
07D2 FF                             db 0xFF
07D3 FF                             db 0xFF
07D4 FF                             db 0xFF
07D5 FF                             db 0xFF
07D6 FF                             db 0xFF
07D7 FF                             db 0xFF
07D8 FF                             db 0xFF
07D9 FF                             db 0xFF
07DA FF                             db 0xFF
07DB FF                             db 0xFF
07DC FF                             db 0xFF
07DD FF                             db 0xFF
07DE FF                             db 0xFF
07DF FF                             db 0xFF
07E0 FF                             db 0xFF
07E1 FF                             db 0xFF
07E2 FF                             db 0xFF
07E3 FF                             db 0xFF
07E4 FF                             db 0xFF
07E5 FF                             db 0xFF
07E6 FF                             db 0xFF
07E7 FF                             db 0xFF
07E8 FF                             db 0xFF
07E9 FF                             db 0xFF
07EA FF                             db 0xFF
07EB FF                             db 0xFF
07EC FF                             db 0xFF
07ED FF                             db 0xFF
07EE FF                             db 0xFF
07EF FF                             db 0xFF
07F0 FF                             db 0xFF
07F1 FF                             db 0xFF
07F2 FF                             db 0xFF
07F3 FF                             db 0xFF
07F4 FF                             db 0xFF
07F5 FF                             db 0xFF
07F6 FF                             db 0xFF
07F7 FF                             db 0xFF
07F8 FF                             db 0xFF
07F9 FF                             db 0xFF
07FA FF                             db 0xFF
07FB FF                             db 0xFF
07FC FF                             db 0xFF
07FD FF                             db 0xFF
07FE FF                             db 0xFF
07FF FF                             db 0xFF
