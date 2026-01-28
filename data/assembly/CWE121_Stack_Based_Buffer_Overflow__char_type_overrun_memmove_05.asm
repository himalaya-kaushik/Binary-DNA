
./data/binaries/CWE121_Stack_Based_Buffer_Overflow__char_type_overrun_memmove_05.o:	file format mach-o arm64

Disassembly of section __TEXT,__text:

0000000000000000 <_CWE121_Stack_Based_Buffer_Overflow__char_type_overrun_memmove_05_bad>:
       0:      	sub	sp, sp, #80
       4:      	stp	x29, x30, [sp, #64]
       8:      	add	x29, sp, #64
       c:      	adrp	x8, 0x0 <ltmp0+0xc>
      10:      	ldr	x8, [x8]
      14:      	ldr	x8, [x8]
      18:      	stur	x8, [x29, #-8]
      1c:      	adrp	x8, 0x0 <ltmp0+0x1c>
      20:      	ldr	w8, [x8]
      24:      	subs	w8, w8, #0
      28:      	cset	w8, eq
      2c:      	tbnz	w8, #0, 0x80 <ltmp0+0x80>
      30:      	b	0x34 <ltmp0+0x34>
      34:      	add	x8, sp, #16
      38:      	str	x8, [sp, #8]
      3c:      	adrp	x8, 0x0 <ltmp0+0x3c>
      40:      	add	x8, x8, #0
      44:      	str	x8, [sp]
      48:      	str	x8, [sp, #32]
      4c:      	ldr	x0, [sp, #32]
      50:      	bl	0x50 <ltmp0+0x50>
      54:      	ldr	x8, [sp]
      58:      	ldr	x0, [sp, #8]
      5c:      	ldr	q1, [x8]
      60:      	ldr	q0, [x8, #16]
      64:      	str	q1, [sp, #16]
      68:      	str	q0, [sp, #32]
      6c:      	strb	wzr, [sp, #31]
      70:      	bl	0x70 <ltmp0+0x70>
      74:      	ldr	x0, [sp, #32]
      78:      	bl	0x78 <ltmp0+0x78>
      7c:      	b	0x80 <ltmp0+0x80>
      80:      	ldur	x9, [x29, #-8]
      84:      	adrp	x8, 0x0 <ltmp0+0x84>
      88:      	ldr	x8, [x8]
      8c:      	ldr	x8, [x8]
      90:      	subs	x8, x8, x9
      94:      	cset	w8, eq
      98:      	tbnz	w8, #0, 0xa4 <ltmp0+0xa4>
      9c:      	b	0xa0 <ltmp0+0xa0>
      a0:      	bl	0xa0 <ltmp0+0xa0>
      a4:      	ldp	x29, x30, [sp, #64]
      a8:      	add	sp, sp, #80
      ac:      	ret

00000000000000b0 <_CWE121_Stack_Based_Buffer_Overflow__char_type_overrun_memmove_05_good>:
      b0:      	stp	x29, x30, [sp, #-16]!
      b4:      	mov	x29, sp
      b8:      	bl	0xb8 <_CWE121_Stack_Based_Buffer_Overflow__char_type_overrun_memmove_05_good+0x8>
      bc:      	bl	0xbc <_CWE121_Stack_Based_Buffer_Overflow__char_type_overrun_memmove_05_good+0xc>
      c0:      	ldp	x29, x30, [sp], #16
      c4:      	ret

00000000000000c8 <_good1>:
      c8:      	sub	sp, sp, #80
      cc:      	stp	x29, x30, [sp, #64]
      d0:      	add	x29, sp, #64
      d4:      	adrp	x8, 0x0 <_good1+0xc>
      d8:      	ldr	x8, [x8]
      dc:      	ldr	x8, [x8]
      e0:      	stur	x8, [x29, #-8]
      e4:      	adrp	x8, 0x0 <_good1+0x1c>
      e8:      	ldr	w8, [x8]
      ec:      	subs	w8, w8, #0
      f0:      	cset	w8, eq
      f4:      	tbnz	w8, #0, 0x10c <_good1+0x44>
      f8:      	b	0xfc <_good1+0x34>
      fc:      	adrp	x0, 0x0 <_good1+0x34>
     100:      	add	x0, x0, #0
     104:      	bl	0x104 <_good1+0x3c>
     108:      	b	0x150 <_good1+0x88>
     10c:      	add	x8, sp, #16
     110:      	str	x8, [sp, #8]
     114:      	adrp	x8, 0x0 <_good1+0x4c>
     118:      	add	x8, x8, #0
     11c:      	str	x8, [sp]
     120:      	str	x8, [sp, #32]
     124:      	ldr	x0, [sp, #32]
     128:      	bl	0x128 <_good1+0x60>
     12c:      	ldr	x8, [sp]
     130:      	ldr	x0, [sp, #8]
     134:      	ldr	q0, [x8]
     138:      	str	q0, [sp, #16]
     13c:      	strb	wzr, [sp, #31]
     140:      	bl	0x140 <_good1+0x78>
     144:      	ldr	x0, [sp, #32]
     148:      	bl	0x148 <_good1+0x80>
     14c:      	b	0x150 <_good1+0x88>
     150:      	ldur	x9, [x29, #-8]
     154:      	adrp	x8, 0x0 <_good1+0x8c>
     158:      	ldr	x8, [x8]
     15c:      	ldr	x8, [x8]
     160:      	subs	x8, x8, x9
     164:      	cset	w8, eq
     168:      	tbnz	w8, #0, 0x174 <_good1+0xac>
     16c:      	b	0x170 <_good1+0xa8>
     170:      	bl	0x170 <_good1+0xa8>
     174:      	ldp	x29, x30, [sp, #64]
     178:      	add	sp, sp, #80
     17c:      	ret

0000000000000180 <_good2>:
     180:      	sub	sp, sp, #80
     184:      	stp	x29, x30, [sp, #64]
     188:      	add	x29, sp, #64
     18c:      	adrp	x8, 0x0 <_good2+0xc>
     190:      	ldr	x8, [x8]
     194:      	ldr	x8, [x8]
     198:      	stur	x8, [x29, #-8]
     19c:      	adrp	x8, 0x0 <_good2+0x1c>
     1a0:      	ldr	w8, [x8]
     1a4:      	subs	w8, w8, #0
     1a8:      	cset	w8, eq
     1ac:      	tbnz	w8, #0, 0x1f8 <_good2+0x78>
     1b0:      	b	0x1b4 <_good2+0x34>
     1b4:      	add	x8, sp, #16
     1b8:      	str	x8, [sp, #8]
     1bc:      	adrp	x8, 0x0 <_good2+0x3c>
     1c0:      	add	x8, x8, #0
     1c4:      	str	x8, [sp]
     1c8:      	str	x8, [sp, #32]
     1cc:      	ldr	x0, [sp, #32]
     1d0:      	bl	0x1d0 <_good2+0x50>
     1d4:      	ldr	x8, [sp]
     1d8:      	ldr	x0, [sp, #8]
     1dc:      	ldr	q0, [x8]
     1e0:      	str	q0, [sp, #16]
     1e4:      	strb	wzr, [sp, #31]
     1e8:      	bl	0x1e8 <_good2+0x68>
     1ec:      	ldr	x0, [sp, #32]
     1f0:      	bl	0x1f0 <_good2+0x70>
     1f4:      	b	0x1f8 <_good2+0x78>
     1f8:      	ldur	x9, [x29, #-8]
     1fc:      	adrp	x8, 0x0 <_good2+0x7c>
     200:      	ldr	x8, [x8]
     204:      	ldr	x8, [x8]
     208:      	subs	x8, x8, x9
     20c:      	cset	w8, eq
     210:      	tbnz	w8, #0, 0x21c <_good2+0x9c>
     214:      	b	0x218 <_good2+0x98>
     218:      	bl	0x218 <_good2+0x98>
     21c:      	ldp	x29, x30, [sp, #64]
     220:      	add	sp, sp, #80
     224:      	ret