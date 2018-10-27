Keyboard functions:
Shift-Insert range 0900 - 4000 (03FF??)
Shift-Delete range 0900 - 03FF (03FF is set to 00 on use of delete function).
Shift -Address jumps to location stored at 08D2 and 08D3

Info:
Stack Start 08C0
Stack Max Length C0
User Code Start 0900
KeyData location 08E0 (placed there by NMI routine)

		   0000 c3 00 02             jp 0x0200		Jump to MONSTART

		   0003 ff                   rst 0x38
                     |
		   0007 ff                   rst 0x38

		   0008 2a c0 08             ld hl,(0x08c0)
		   000b e9                   jp (hl)

		   000c ff                   rst 0x38
                     |
		   000f ff                   rst 0x38

		   0010 2a c2 08             ld hl,(0x08c2)
		   0013 e9                   jp (hl)

		   0014 ff                   rst 0x38
                     |
		   0017 ff                   rst 0x38

		   0018 2a c4 08             ld hl,(0x08c4)
		   001b e9                   jp (hl)

		   001c ff                   rst 0x38
                     |
		   001f ff                   rst 0x38

		   0020 2a c6 08             ld hl,(0x08c6)
		   0023 e9                   jp (hl)

		   0024 ff                   rst 0x38
                     |
		   0027 ff                   rst 0x38

		   0028 2a c8 08             ld hl,(0x08c8)
		   002b e9                   jp (hl)

		   002c ff                   rst 0x38
                     |
		   002f ff                   rst 0x38

		   0030 2a ca 08             ld hl,(0x08ca)
		   0033 e9                   jp (hl)
                     |
		   0037 ff                   rst 0x38

Restart 38h	   0038 2a cc 08             ld hl,(0x08cc)
		   003b e9                   jp (hl)

Unused		   003c ff
                     |
		   0065 ff

		   0066 f5                   push af
		   0067 db 00                in a,(0x00)
		   0069 32 e0 08             ld (0x08e0),a
		   006c f1                   pop af
		   006d ed 45                retn

Unused		   006f ff
                     |
		   007f ff

7seg data	   0080 eb                   ex de,hl
		   0081 28 cd                jr z,0x0050
		   0083 ad                   xor l
		   0084 2e a7                ld l,0xa7
		   0086 e7                   rst 0x20
		   0087 29                   add hl,hl
		   0088 ef                   rst 0x28
		   0089 2f                   cpl
		   008a 6f                   ld l,a
		   008b e6 c3                and 0xc3
		   008d ec c7 47             call pe,0x47c7
		   0090 e3                   ex (sp),hl
		   0091 66                   ld h,(hl)
		   0092 28 e8                jr z,0x007c
		   0094 4e                   ld c,(hl)
		   0095 c2 2d 6b             jp nz,0x6b2d
		   0098 eb                   ex de,hl
		   0099 4f                   ld c,a
		   009a 2f                   cpl
		   009b 4b                   ld c,e
		   009c a7                   and a
		   009d 46                   ld b,(hl)
		   009e ea e0 ac             jp pe,0xace0
		   00a1 a4                   and h
		   00a2 ae                   xor (hl)
		   00a3 c9                   ret
		   00a4 10 08                djnz 0x00ae
		   00a6 18 04                jr 0x00ac
		   00a8 2c                   inc l
		   00a9 00                   nop

		   00aa ff                   rst 0x38
		   00ab ff                   rst 0x38
		   00ac ff                   rst 0x38
		   00ad ff                   rst 0x38
		   00ae ff                   rst 0x38
		   00af ff                   rst 0x38

		   00b0 00                   nop
		   00b1 09                   add hl,bc
		   00b2 00                   nop
		   00b3 00                   nop

		   00b4 ff                   rst 0x38
		   00b5 ff                   rst 0x38
		   00b6 ff                   rst 0x38
		   00b7 ff                   rst 0x38
		   00b8 ff                   rst 0x38
		   00b9 ff                   rst 0x38
		   00ba ff                   rst 0x38
		   00bb ff                   rst 0x38

		   00bc f8                   ret m
		   00bd ff                   rst 0x38
		   00be 00                   nop
		   00bf 00                   nop

Data table for text message demo.
                   00c0 1b 18 1e 1d 12 17 0e ROUTINE
		   00c7 29                   [space]
		   00c8 0b 22                BY
		   00ca 29                   [space]
		   00cb 17 12 0c 24          NIC.   (Nic Enots - Ken Stone's old programming pseudonym)
		   00cf 29                   [space]
		   00d0 29                   [space]
		   00d1 29                   [space]
		   00d2 29                   [space]
		   00d3 29                   [space]
		   00d4 fe                   (repeat text)

		   00d5 1c 1d 18 17 0a       STONE  (Text for real surname hidden in code)
		   00da ff                   (end text)

unused		   00db ff
                     |
		   00df ff

		   00e0 cd 89 02             call 0x0289
		   00e3 03                   inc bc
		   00e4 18 04                jr 0x00ea
		   00e6 cd 89 02             call 0x0289
		   00e9 0b                   dec bc
		   00ea cd 90 04             call 0x0490
		   00ed cd 70 02             call 0x0270
		   00f0 21 df 08             ld hl,0x08df
		   00f3 cb c6                set 0,(hl)
		   00f5 cb 8e                res 1,(hl)
		   00f7 c3 78 03             jp 0x0378

unused		   00fa ff
                     |
		   00ff ff
tables
(division table for frequencies)
		   0100 fd                   defb 0xfd
		   0101 10 10                djnz 0x0113
		   0103 fd                   defb 0xfd
		   0104 11 ef 12             ld de,0x12ef
		   0107 e1                   pop hl
		   0108 13                   inc de
		   0109 54                   ld d,h
		   010a 14                   inc d
		   010b c9                   ret
		   010c 10 be                djnz 0x00cc
		   010e 10 b2                djnz 0x00c2
		   0110 10 a9                djnz 0x00bb
		   0112 19                   add hl,de
		   0113 9f                   sbc a,a
		   0114 1a                   ld a,(de)
		   0115 96                   sub (hl)
		   0116 1c                   inc e
		   0117 80                   add a,b
		   0118 1e 86                ld e,0x86
		   011a 20 7f                jr nz,0x019b
		   011c 22 77 24             ld (0x2477),hl
		   011f 71                   ld (hl),c
		   0120 26 6a                ld h,0x6a
		   0122 28 64                jr z,0x0188
		   0124 2a 5f 2d             ld hl,(0x2d5f)
		   0127 59                   ld e,c
		   0128 2f                   cpl
		   0129 54                   ld d,h
		   012a 32 50 35             ld (0x3550),a
		   012d 4b                   ld c,e
		   012e 38 47                jr c,0x0177
		   0130 3c                   inc a
		   0131 43                   ld b,e
		   0132 3f                   ccf
		   0133 3f                   ccf
		   0134 43                   ld b,e
		   0135 3c                   inc a
		   0136 47                   ld b,a
		   0137 38 4b                jr c,0x0184
		   0139 35                   dec (hl)
		   013a 50                   ld d,b
		   013b 32 54 2f             ld (0x2f54),a
		   013e 59                   ld e,c
		   013f 2d                   dec l
		   0140 5f                   ld e,a
		   0141 2a 64 28             ld hl,(0x2864)
		   0144 6a                   ld l,d
		   0145 26 71                ld h,0x71
		   0147 24                   inc h
		   0148 77                   ld (hl),a
		   0149 22 7f 20             ld (0x207f),hl
		   014c 86                   add a,(hl)
		   014d 1e 8e                ld e,0x8e
		   014f 1c                   inc e
		   0150 96                   sub (hl)
		   0151 1a                   ld a,(de)
		   0152 94                   sub h
		   0153 19                   add hl,de
		   0154 a9                   xor c
		   0155 18 b3                jr 0x010a
		   0157 16 be                ld d,0xbe
		   0159 15                   dec d
		   015a c9                   ret
		   015b 14                   inc d
		   015c d5                   push de
		   015d 13                   inc de
		   015e e1                   pop hl
		   015f 12                   ld (de),a
		   0160 ef                   rst 0x28
		   0161 11 fd 10             ld de,0x10fd

unused		   0164 ff
                     |
		   016f ff

TONE routine. 0170
PLAYTONE	   0170 c5                   push bc
		   0171 d5                   push de
		   0172 e5                   push hl
		   0173 f5                   push af
		   0174 a7                   and a         Set Z Flag
		   0175 20 03                jr nz,0x017a  If not zero, Jump Rel to ptnotzero
		   0177 5f                   ld e,a        Clear E
		   0178 18 02                jr 0x017c     Jump Rel to ptzero
ptAisnotzero	   017a 1e 80                ld e,0x80     Load E with 80h
ptAiszero	   017c 21 00 01             ld hl,0x0100 (^division table for frequencies)
		   017f 87                   add a,a
		   0180 85                   add a,l
		   0181 6f                   ld l,a
		   0182 4e                   ld c,(hl)
		   0183 23                   inc hl
lengthloop	   0184 46                   ld b,(hl)
		   0185 7b                   ld a,e
		   0186 d3 01                out (0x01),a
toneloop	   0188 10 fe                djnz 0x0188
		   018a 46                   ld b,(hl)
		   018b af                   xor a
		   018c d3 01                out (0x01),a
		   018e 10 fe                djnz 0x018e
		   0190 0d                   dec c
		   0191 20 f1                jr nz,0x0184
		   0193 f1                   pop af
		   0194 e1                   pop hl
		   0195 d1                   pop de
		   0196 c1                   pop bc
		   0197 c9                   ret

unused		   0198
                     |
		   019f

MUSIC routine. 01A0
PLAYTUNE	   01a0 f5                   push af
		   01a1 e5                   push hl
		   01a2 2a d6 08             ld hl,(0x08d6)
		   01a5 7e                   ld a,(hl)
		   01a6 fe ff                cp 0xff
		   01a8 20 03                jr nz,0x01ad
		   01aa e1                   pop hl
		   01ab f1                   pop af
		   01ac c9                   ret
		   01ad fe fe                cp 0xfe
		   01af 28 f1                jr z,0x01a2
		   01b1 23                   inc hl
		   01b2 cd 70 01             call 0x0170 Call PlayTone
		   01b5 18 ee                jr 0x01a5

unused		   01b7 ff                   rst 0x38
                     |
		   01bf ff                   rst 0x38

		   01c0 21 df 08             ld hl,0x08df
		   01c3 cb 46                bit 0,(hl)
		   01c5 20 07                jr nz,0x01ce
		   01c7 cb c6                set 0,(hl)
		   01c9 cb 8e                res 1,(hl)
		   01cb c3 78 03             jp 0x0378
		   01ce cb 86                res 0,(hl)
		   01d0 cb ce                set 1,(hl)
		   01d2 c3 78 03             jp 0x0378

unused		   01d5 ff
                     |
		   01d7 ff

MULTIPASS DISPLAY  01d8 c5                   push bc
		   01d9 06 80                ld b,0x80
		   01db cd a0 02             call 0x02a0     Call DISPLAY
		   01de 10 fb                djnz 0x01db
		   01e0 c1                   pop bc
		   01e1 c9                   ret
		   01e2 ff                   rst 0x38
		   01e3 ff                   rst 0x38
		   01e4 ed 4b d2 08          ld bc,(0x08d2)
		   01e8 cd 90 04             call 0x0490
		   01eb cd 70 02             call 0x0270
		   01ee c3 78 03             jp 0x0378
		   01f1 ff                   rst 0x38
		   01f2 ed 4b d4 08          ld bc,(0x08d4)
		   01f6 cd 90 04             call 0x0490
		   01f9 cd 70 02             call 0x0270
		   01fc c3 78 03             jp 0x0378

unused		   01ff ff

Main monitor program entry point.
MONSTART           0200 ed 73 e8 08          ld (0x08e8),sp
		   0204 31 00 09             ld sp,0x0900
		   0207 f5                   push af
		   0208 c5                   push bc
		   0209 d5                   push de
		   020a e5                   push hl
		   020b dd e5                push ix
		   020d fd e5                push iy
		   020f 08                   ex af,af'
		   0210 d9                   exx
		   0211 f5                   push af
		   0212 c5                   push bc
		   0213 d5                   push de
		   0214 e5                   push hl
		   0215 ed 57                ld a,i
		   0217 f5                   push af
		   0218 af                   xor a
		   0219 32 cc 08             ld (0x08cc),a
		   021c 32 cd 08             ld (0x08cd),a
		   021f 3e ff                ld a,0xff
		   0221 32 e0 08             ld (0x08e0),a
		   0224 c3 40 02             jp 0x0240

unused		   0227 ff                   rst 0x38
                     |
		   023f ff                   rst 0x38

		   0240 31 c0 08             ld sp,0x08c0
		   0243 af                   xor a
		   0244 d3 01                out (0x01),a
		   0246 d3 02                out (0x02),a
		   0248 21 b0 00             ld hl,0x00b0
		   024b 11 d8 08             ld de,0x08d8
		   024e 01 05 00             ld bc,0x0005
		   0251 ed b0                ldir
		   0253 cd 70 02             call 0x0270
		   0256 3e 08                ld a,0x08
		   0258 cd 70 01             call 0x0170
		   025b 3e 0f                ld a,0x0f
		   025d cd 70 01             call 0x0170
		   0260 3e 01                ld a,0x01
		   0262 32 df 08             ld (0x08df),a
		   0265 cd a0 02             call 0x02a0
		   0268 cd 60 03             call 0x0360
		   026b 18 f8                jr 0x0265

unused		   026d ff
                     |
		   026f ff

GetAddressedData   0270 f5                   push af
		   0271 e5                   push hl
		   0272 c5                   push bc
		   0273 cd 89 02             call 0x0289
		   0276 e6 f0                and 0xf0
		   0278 0f                   rrca
		   0279 0f                   rrca
		   027a 0f                   rrca
		   027b 0f                   rrca
		   027c 32 dc 08             ld (0x08dc),a
		   027f 0a                   ld a,(bc)
		   0280 e6 0f                and 0x0f
		   0282 32 dd 08             ld (0x08dd),a
		   0285 c1                   pop bc
		   0286 e1                   pop hl
		   0287 f1                   pop af
		   0288 c9                   ret

GetEditorAddress

The address used by editor and shown on the 7 segment display is stored in one location only, to prevent a situation where dislayed address and real address could differ. In a trade off in processing time, it was more efficient to store the address in the optimal form for the display routine. As such it needs converting to and from this format when used by the monitor program.
The chosen location is the display buffer, where the address is broken into nibbles and spread across four bytes, 08D8, 08D9, 08DA, 08DB, MSN to LSN. GetEditorAddress is used to retrieve this address.
The data held here is only valid while the monitor program is running. As soon as something else is written to the display it is lost. Resetting the computer restores it to the default 0900h.

GetEditorAddress, when called, loads BC with the address currently held In the display buffer. It also loads A with the data held at the location addressed by BC.

E.G. If the LED display shows 0900 CD, calling 0289 will load BC with 0900 (B is the MSB) and loads A with CD. This routine is not transparent. HL is destroyed. BC and A hold the results. If this routine is called during a user program that is not an extension to the monitor, the result will have no meaning.

GetEditorAddress   0289 21 d8 08             ld hl,0x08d8
		   028c 7e                   ld a,(hl)
		   028d 07                   rlca
		   028e 07                   rlca
		   028f 07                   rlca
		   0290 07                   rlca
		   0291 23                   inc hl
		   0292 86                   add a,(hl)
		   0293 47                   ld b,a
		   0294 23                   inc hl
		   0295 7e                   ld a,(hl)
		   0296 07                   rlca
		   0297 07                   rlca
		   0298 07                   rlca
		   0299 07                   rlca
		   029a 23                   inc hl
		   029b 86                   add a,(hl)
		   029c 4f                   ld c,a
		   029d 0a                   ld a,(bc)
		   029e c9                   ret

unused		   029f ff

DISPLAY		   02a0 f5                   push af
		   02a1 e5                   push hl
		   02a2 d5                   push de
		   02a3 c5                   push bc
		   02a4 11 d8 08             ld de,0x08d8
		   02a7 af                   xor a
		   02a8 d3 01                out (0x01),a
		   02aa cd 50 03             call 0x0350
		   02ad cb 4e                bit 1,(hl)
		   02af 28 02                jr z,0x02b3
		   02b1 cb e7                set 4,a
		   02b3 d3 02                out (0x02),a
		   02b5 3e 20                ld a,0x20
		   02b7 d3 01                out (0x01),a
		   02b9 06 20                ld b,0x20
		   02bb 10 fe                djnz 0x02bb
		   02bd af                   xor a
		   02be d3 01                out (0x01),a
		   02c0 cd 50 03             call 0x0350
		   02c3 cb 4e                bit 1,(hl)
		   02c5 28 02                jr z,0x02c9
		   02c7 cb e7                set 4,a
		   02c9 d3 02                out (0x02),a
		   02cb 3e 10                ld a,0x10
		   02cd d3 01                out (0x01),a
		   02cf 06 20                ld b,0x20
		   02d1 10 fe                djnz 0x02d1
		   02d3 af                   xor a
		   02d4 d3 01                out (0x01),a
		   02d6 cd 50 03             call 0x0350
		   02d9 cb 4e                bit 1,(hl)
		   02db 28 02                jr z,0x02df
		   02dd cb e7                set 4,a
		   02df d3 02                out (0x02),a
		   02e1 3e 08                ld a,0x08
		   02e3 d3 01                out (0x01),a
		   02e5 06 20                ld b,0x20
		   02e7 10 fe                djnz 0x02e7
		   02e9 af                   xor a
		   02ea d3 01                out (0x01),a
		   02ec cd 50 03             call 0x0350
		   02ef cb 4e                bit 1,(hl)
		   02f1 28 02                jr z,0x02f5
		   02f3 cb e7                set 4,a
		   02f5 d3 02                out (0x02),a
		   02f7 3e 04                ld a,0x04
		   02f9 d3 01                out (0x01),a
		   02fb 06 20                ld b,0x20
		   02fd 10 fe                djnz 0x02fd
		   02ff af                   xor a
		   0300 d3 01                out (0x01),a
		   0302 00                   nop
		   0303 c3 18 03             jp 0x0318
		   0306 ff                   rst 0x38
		   0307 ff                   rst 0x38
		   0308 ff                   rst 0x38
		   0309 ff                   rst 0x38
		   030a ff                   rst 0x38
		   030b ff                   rst 0x38
		   030c cd 89 02             call 0x0289
		   030f c5                   push bc
		   0310 e1                   pop hl
		   0311 31 c0 08             ld sp,0x08c0
		   0314 e9                   jp (hl)
		   0315 ff                   rst 0x38
		   0316 ff                   rst 0x38
		   0317 ff                   rst 0x38
		   0318 cd 50 03             call 0x0350
		   031b cb 46                bit 0,(hl)
		   031d 28 02                jr z,0x0321
		   031f cb e7                set 4,a
		   0321 d3 02                out (0x02),a
		   0323 3e 02                ld a,0x02
		   0325 d3 01                out (0x01),a
		   0327 06 20                ld b,0x20
		   0329 10 fe                djnz 0x0329
		   032b af                   xor a
		   032c d3 01                out (0x01),a
		   032e cd 50 03             call 0x0350
		   0331 cb 46                bit 0,(hl)
		   0333 28 02                jr z,0x0337
		   0335 cb e7                set 4,a
		   0337 d3 02                out (0x02),a
		   0339 3e 01                ld a,0x01
		   033b d3 01                out (0x01),a
		   033d 06 20                ld b,0x20
		   033f 10 fe                djnz 0x033f
		   0341 af                   xor a
		   0342 d3 01                out (0x01),a
		   0344 c1                   pop bc
		   0345 d1                   pop de
		   0346 e1                   pop hl
		   0347 f1                   pop af
		   0348 c9                   ret

Unused
		   0349 ff
		   034a ff
		   034b ff
		   034c ff
		   034d ff
		   034e ff
		   034f ff

Hex2SevenSeg converts the Hex value (0 to29) into the corresponding seven-segment data. It is part of the display routine. HL is destroyed, DE is incremented, A is converted from the value to its 7 segment form.

Hex2SevenSeg       0350 21 80 00             ld hl,0x0080
		   0353 1a                   ld a,(de)
		   0354 85                   add a,l
		   0355 6f                   ld l,a
		   0356 7e                   ld a,(hl)
		   0357 13                   inc de
		   0358 21 df 08             ld hl,0x08df
		   035b c9                   ret

		   035c ff                   rst 0x38
		   035d ff                   rst 0x38
		   035e ff                   rst 0x38
		   035f ff                   rst 0x38

		   0360 f5                   push af
		   0361 e5                   push hl
		   0362 21 e0 08             ld hl,0x08e0
		   0365 3e ff                ld a,0xff
		   0367 be                   cp (hl)
		   0368 28 0e                jr z,0x0378
		   036a 7e                   ld a,(hl)
		   036b e6 1f                and 0x1f
		   036d cb 6e                bit 5,(hl)
		   036f 20 02                jr nz,0x0373
		   0371 c6 14                add a,0x14
		   0373 c3 a8 03             jp 0x03a8
		   0376 ff                   rst 0x38
		   0377 ff                   rst 0x38
		   0378 e1                   pop hl
		   0379 f1                   pop af
		   037a c9                   ret
		   037b ff                   rst 0x38
		   037c ff                   rst 0x38
		   037d e1                   pop hl
		   037e f1                   pop af
		   037f c9                   ret
		   0380 ff                   rst 0x38
		   0381 ff                   rst 0x38
		   0382 ff                   rst 0x38
		   0383 ff                   rst 0x38
		   0384 cd 89 02             call 0x0289
		   0387 c5                   push bc
		   0388 dd e1                pop ix
		   038a dd 23                inc ix
		   038c dd e5                push ix
		   038e e1                   pop hl
		   038f 7c                   ld a,h
		   0390 fe 40                cp 0x40
		   0392 28 08                jr z,0x039c
		   0394 dd 7e 00             ld a,(ix+0)
		   0397 dd 77 ff             ld (ix-1),a
		   039a 18 ee                jr 0x038a
		   039c 3e 00                ld a,0x00
		   039e 32 ff 3f             ld (0x3fff),a
		   03a1 cd 70 02             call 0x0270
		   03a4 c3 78 03             jp 0x0378
		   03a7 ff                   rst 0x38
		   03a8 c6 01                add a,0x01
		   03aa cd 70 01             call 0x0170
		   03ad c3 21 04             jp 0x0421
		   03b0 cd 89 02             call 0x0289
		   03b3 0b                   dec bc
		   03b4 dd 21 fe 3f          ld ix,0x3ffe
		   03b8 dd 7e 00             ld a,(ix+0)
		   03bb dd 77 01             ld (ix+1),a
		   03be dd 2b                dec ix
		   03c0 dd e5                push ix
		   03c2 e1                   pop hl
		   03c3 79                   ld a,c
		   03c4 bd                   cp l
		   03c5 20 f1                jr nz,0x03b8
		   03c7 78                   ld a,b
		   03c8 bc                   cp h
		   03c9 20 ed                jr nz,0x03b8
		   03cb dd 36 01 00          ld (ix+1),0x00
		   03cf cd 70 02             call 0x0270
		   03d2 c3 78 03             jp 0x0378
		   03d5 ff
		   03d6 ff
		   03d7 ff

RUNNING WRITING	   03d8 e5                   push hl
		   03d9 f5                   push af
		   03da dd e5                push ix
		   03dc c5                   push bc
		   03dd af                   xor a
		   03de 32 df 08             ld (0x08df),a
		   03e1 06 06                ld b,0x06
		   03e3 21 d8 08             ld hl,0x08d8
		   03e6 3e 29                ld a,0x29
		   03e8 77                   ld (hl),a
		   03e9 23                   inc hl
		   03ea 10 fc                djnz 0x03e8
		   03ec 2a d0 08             ld hl,(0x08d0)
		   03ef 7e                   ld a,(hl)
		   03f0 fe ff                cp 0xff
		   03f2 20 06                jr nz,0x03fa
		   03f4 c1                   pop bc
		   03f5 dd e1                pop ix
		   03f7 f1                   pop af
		   03f8 e1                   pop hl
		   03f9 c9                   ret
		   03fa fe fe                cp 0xfe
		   03fc 28 ee                jr z,0x03ec
		   03fe dd 21 d8 08          ld ix,0x08d8
		   0402 06 05                ld b,0x05
		   0404 dd 7e 01             ld a,(ix+1)
		   0407 dd 77 00             ld (ix+0),a
		   040a dd 23                inc ix
		   040c 10 f6                djnz 0x0404
		   040e 7e                   ld a,(hl)
		   040f 32 dd 08             ld (0x08dd),a
		   0412 23                   inc hl
		   0413 06 40                ld b,0x40
		   0415 cd a0 02             call 0x02a0
		   0418 10 fb                djnz 0x0415
		   041a 18 d3                jr 0x03ef

		   041c ff                   rst 0x38
		   041d ff                   rst 0x38
		   041e ff                   rst 0x38
		   041f ff                   rst 0x38
		   0420 ff                   rst 0x38

		   0421 d6 01                sub 0x01
		   0423 36 ff                ld (hl),0xff
		   0425 cb 67                bit 4,a
		   0427 c2 c0 04             jp nz,0x04c0
		   042a cb 6f                bit 5,a
		   042c c2 c0 04             jp nz,0x04c0
		   042f 21 df 08             ld hl,0x08df
		   0432 cb 46                bit 0,(hl)
		   0434 ca 55 04             jp z,0x0455
		   0437 57                   ld d,a
		   0438 cd 89 02             call 0x0289
		   043b 21 df 08             ld hl,0x08df
		   043e cb 5e                bit 3,(hl)
		   0440 20 03                jr nz,0x0445
		   0442 af                   xor a
		   0443 cb de                set 3,(hl)
		   0445 07                   rlca
		   0446 07                   rlca
		   0447 07                   rlca
		   0448 07                   rlca
		   0449 e6 f0                and 0xf0
		   044b 82                   add a,d
		   044c 02                   ld (bc),a
		   044d cd 70 02             call 0x0270
		   0450 c3 7d 03             jp 0x037d

		   0453 ff                   rst 0x38
		   0454 ff                   rst 0x38

		   0455 57                   ld d,a
		   0456 21 df 08             ld hl,0x08df
		   0459 cb 9e                res 3,(hl)
		   045b cb 66                bit 4,(hl)
		   045d 20 08                jr nz,0x0467
		   045f 01 00 00             ld bc,0x0000
		   0462 cd 90 04             call 0x0490
		   0465 cb e6                set 4,(hl)
		   0467 cd 89 02             call 0x0289
		   046a 78                   ld a,b
		   046b 07                   rlca
		   046c 07                   rlca
		   046d 07                   rlca
		   046e 07                   rlca
		   046f e6 f0                and 0xf0
		   0471 5f                   ld e,a
		   0472 79                   ld a,c
		   0473 07                   rlca
		   0474 07                   rlca
		   0475 07                   rlca
		   0476 07                   rlca
		   0477 e6 0f                and 0x0f
		   0479 83                   add a,e
		   047a 47                   ld b,a
		   047b 79                   ld a,c
		   047c 07                   rlca
		   047d 07                   rlca
		   047e 07                   rlca
		   047f 07                   rlca
		   0480 e6 f0                and 0xf0
		   0482 82                   add a,d
		   0483 4f                   ld c,a
		   0484 cd 90 04             call 0x0490
		   0487 cd 70 02             call 0x0270
		   048a c3 7d 03             jp 0x037d

		   048d ff                   rst 0x38
		   048e ff                   rst 0x38
		   048f ff                   rst 0x38


SetEditorAddress 0490 is the opposite of the GetEditorAddress 0289 routine. It loads the display buffer (08D8, 08D9, 08DA, 08DB) with the value held in BC. This routine is transparent.

SetEditorAddress   0490 f5                   push af
		   0491 e5                   push hl
		   0492 21 d8 08             ld hl,0x08d8
		   0495 78                   ld a,b
		   0496 e6 f0                and 0xf0
		   0498 07                   rlca
		   0499 07                   rlca
		   049a 07                   rlca
		   049b 07                   rlca
		   049c 77                   ld (hl),a
		   049d 23                   inc hl
		   049e 78                   ld a,b
		   049f e6 0f                and 0x0f
		   04a1 77                   ld (hl),a
		   04a2 23                   inc hl
		   04a3 79                   ld a,c
		   04a4 e6 f0                and 0xf0
		   04a6 07                   rlca
		   04a7 07                   rlca
		   04a8 07                   rlca
		   04a9 07                   rlca
		   04aa 77                   ld (hl),a
		   04ab 23                   inc hl
		   04ac 79                   ld a,c
		   04ad e6 0f                and 0x0f
		   04af 77                   ld (hl),a
		   04b0 e1                   pop hl
		   04b1 f1                   pop af
		   04b2 c9                   ret

unused		   04b3 ff
                     |
		   04bf ff

		   04c0 21 df 08             ld hl,0x08df
		   04c3 cb 9e                res 3,(hl)
		   04c5 cb a6                res 4,(hl)
		   04c7 fe 10                cp 0x10
		   04c9 ca e0 00             jp z,0x00e0
		   04cc fe 11                cp 0x11
		   04ce ca e6 00             jp z,0x00e6
		   04d1 fe 12                cp 0x12
		   04d3 ca 0c 03             jp z,0x030c
		   04d6 fe 13                cp 0x13
		   04d8 ca c0 01             jp z,0x01c0
		   04db fe 14                cp 0x14
		   04dd ca 50 05             jp z,0x0550
		   04e0 fe 15                cp 0x15
		   04e2 ca ff ff             jp z,0xffff
		   04e5 fe 16                cp 0x16
		   04e7 ca ff ff             jp z,0xffff
		   04ea fe 17                cp 0x17
		   04ec ca f2 01             jp z,0x01f2
		   04ef fe 18                cp 0x18
		   04f1 ca 70 05             jp z,0x0570
		   04f4 fe 19                cp 0x19
		   04f6 ca ff ff             jp z,0xffff
		   04f9 fe 1a                cp 0x1a
		   04fb ca ff ff             jp z,0xffff
		   04fe fe 1b                cp 0x1b
		   0500 ca ff ff             jp z,0xffff
		   0503 fe 1c                cp 0x1c
		   0505 ca 60 06             jp z,0x0660
		   0508 fe 1d                cp 0x1d
		   050a ca ff ff             jp z,0xffff
		   050d fe 1e                cp 0x1e
		   050f ca ff ff             jp z,0xffff
		   0512 fe 1f                cp 0x1f
		   0514 ca ff ff             jp z,0xffff
		   0517 fe 20                cp 0x20
		   0519 ca ff ff             jp z,0xffff
		   051c fe 21                cp 0x21
		   051e ca ff ff             jp z,0xffff
		   0521 fe 22                cp 0x22
		   0523 ca ff ff             jp z,0xffff
		   0526 fe 23                cp 0x23
		   0528 ca ff ff             jp z,0xffff
		   052b fe 24                cp 0x24
		   052d ca b0 03             jp z,0x03b0
		   0530 fe 25                cp 0x25
		   0532 ca 84 03             jp z,0x0384
		   0535 fe 26                cp 0x26
		   0537 ca ff ff             jp z,0xffff
		   053a fe 27                cp 0x27
		   053c ca e4 01             jp z,0x01e4
		   053f c3 78 03             jp 0x0378

unused		   0542 ff
                     |
		   054f ff

		   0550 cd 89 02             call 0x0289
		   0553 60                   ld h,b
		   0554 69                   ld l,c
		   0555 3a e1 08             ld a,(0x08e1)
		   0558 23                   inc hl
		   0559 be                   cp (hl)
		   055a 20 fc                jr nz,0x0558
		   055c 44                   ld b,h
		   055d 4d                   ld c,l
		   055e cd 90 04             call 0x0490
		   0561 c3 53 02             jp 0x0253

unused		   0564 ff
                     |
		   07ff ff
