
./data/binaries/CWE121_Stack_Based_Buffer_Overflow__char_type_overrun_memmove_04.o:	file format mach-o arm64

Disassembly of section __TEXT,__text:

0000000000000000 <_CWE121_Stack_Based_Buffer_Overflow__char_type_overrun_memmove_04_bad>:
       0:      	sub	sp, sp, #80
       4:      	stp	x29, x30, [sp, #64]
       8:      	add	x29, sp, #64
       c:      	adrp	x8, 0x0 <ltmp0+0xc>
      10:      	ldr	x8, [x8]
      14:      	ldr	x8, [x8]
      18:      	stur	x8, [x29, #-8]
      1c:      	add	x8, sp, #16
      20:      	str	x8, [sp, #8]
      24:      	adrp	x8, 0x0 <ltmp0+0x24>
      28:      	add	x8, x8, #0
      2c:      	str	x8, [sp]
      30:      	str	x8, [sp, #32]
      34:      	ldr	x0, [sp, #32]
      38:      	bl	0x38 <ltmp0+0x38>
      3c:      	ldr	x8, [sp]
      40:      	ldr	x0, [sp, #8]
      44:      	ldr	q1, [x8]
      48:      	ldr	q0, [x8, #16]
      4c:      	str	q1, [sp, #16]
      50:      	str	q0, [sp, #32]
      54:      	strb	wzr, [sp, #31]
      58:      	bl	0x58 <ltmp0+0x58>
      5c:      	ldr	x0, [sp, #32]
      60:      	bl	0x60 <ltmp0+0x60>
      64:      	ldur	x9, [x29, #-8]
      68:      	adrp	x8, 0x0 <ltmp0+0x68>
      6c:      	ldr	x8, [x8]
      70:      	ldr	x8, [x8]
      74:      	subs	x8, x8, x9
      78:      	cset	w8, eq
      7c:      	tbnz	w8, #0, 0x88 <ltmp0+0x88>
      80:      	b	0x84 <ltmp0+0x84>
      84:      	bl	0x84 <ltmp0+0x84>
      88:      	ldp	x29, x30, [sp, #64]
      8c:      	add	sp, sp, #80
      90:      	ret

0000000000000094 <_CWE121_Stack_Based_Buffer_Overflow__char_type_overrun_memmove_04_good>:
      94:      	stp	x29, x30, [sp, #-16]!
      98:      	mov	x29, sp
      9c:      	bl	0x9c <_CWE121_Stack_Based_Buffer_Overflow__char_type_overrun_memmove_04_good+0x8>
      a0:      	bl	0xa0 <_CWE121_Stack_Based_Buffer_Overflow__char_type_overrun_memmove_04_good+0xc>
      a4:      	ldp	x29, x30, [sp], #16
      a8:      	ret

00000000000000ac <_good1>:
      ac:      	sub	sp, sp, #80
      b0:      	stp	x29, x30, [sp, #64]
      b4:      	add	x29, sp, #64
      b8:      	adrp	x8, 0x0 <_good1+0xc>
      bc:      	ldr	x8, [x8]
      c0:      	ldr	x8, [x8]
      c4:      	stur	x8, [x29, #-8]
      c8:      	add	x8, sp, #16
      cc:      	str	x8, [sp, #8]
      d0:      	adrp	x8, 0x0 <_good1+0x24>
      d4:      	add	x8, x8, #0
      d8:      	str	x8, [sp]
      dc:      	str	x8, [sp, #32]
      e0:      	ldr	x0, [sp, #32]
      e4:      	bl	0xe4 <_good1+0x38>
      e8:      	ldr	x8, [sp]
      ec:      	ldr	x0, [sp, #8]
      f0:      	ldr	q0, [x8]
      f4:      	str	q0, [sp, #16]
      f8:      	strb	wzr, [sp, #31]
      fc:      	bl	0xfc <_good1+0x50>
     100:      	ldr	x0, [sp, #32]
     104:      	bl	0x104 <_good1+0x58>
     108:      	ldur	x9, [x29, #-8]
     10c:      	adrp	x8, 0x0 <_good1+0x60>
     110:      	ldr	x8, [x8]
     114:      	ldr	x8, [x8]
     118:      	subs	x8, x8, x9
     11c:      	cset	w8, eq
     120:      	tbnz	w8, #0, 0x12c <_good1+0x80>
     124:      	b	0x128 <_good1+0x7c>
     128:      	bl	0x128 <_good1+0x7c>
     12c:      	ldp	x29, x30, [sp, #64]
     130:      	add	sp, sp, #80
     134:      	ret

0000000000000138 <_good2>:
     138:      	sub	sp, sp, #80
     13c:      	stp	x29, x30, [sp, #64]
     140:      	add	x29, sp, #64
     144:      	adrp	x8, 0x0 <_good2+0xc>
     148:      	ldr	x8, [x8]
     14c:      	ldr	x8, [x8]
     150:      	stur	x8, [x29, #-8]
     154:      	add	x8, sp, #16
     158:      	str	x8, [sp, #8]
     15c:      	adrp	x8, 0x0 <_good2+0x24>
     160:      	add	x8, x8, #0
     164:      	str	x8, [sp]
     168:      	str	x8, [sp, #32]
     16c:      	ldr	x0, [sp, #32]
     170:      	bl	0x170 <_good2+0x38>
     174:      	ldr	x8, [sp]
     178:      	ldr	x0, [sp, #8]
     17c:      	ldr	q0, [x8]
     180:      	str	q0, [sp, #16]
     184:      	strb	wzr, [sp, #31]
     188:      	bl	0x188 <_good2+0x50>
     18c:      	ldr	x0, [sp, #32]
     190:      	bl	0x190 <_good2+0x58>
     194:      	ldur	x9, [x29, #-8]
     198:      	adrp	x8, 0x0 <_good2+0x60>
     19c:      	ldr	x8, [x8]
     1a0:      	ldr	x8, [x8]
     1a4:      	subs	x8, x8, x9
     1a8:      	cset	w8, eq
     1ac:      	tbnz	w8, #0, 0x1b8 <_good2+0x80>
     1b0:      	b	0x1b4 <_good2+0x7c>
     1b4:      	bl	0x1b4 <_good2+0x7c>
     1b8:      	ldp	x29, x30, [sp, #64]
     1bc:      	add	sp, sp, #80
     1c0:      	ret