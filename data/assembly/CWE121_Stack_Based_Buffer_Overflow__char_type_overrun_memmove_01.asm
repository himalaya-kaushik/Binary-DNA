
./data/binaries/CWE121_Stack_Based_Buffer_Overflow__char_type_overrun_memmove_01.o:	file format mach-o arm64

Disassembly of section __TEXT,__text:

0000000000000000 <_CWE121_Stack_Based_Buffer_Overflow__char_type_overrun_memmove_01_bad>:
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

0000000000000094 <_CWE121_Stack_Based_Buffer_Overflow__char_type_overrun_memmove_01_good>:
      94:      	stp	x29, x30, [sp, #-16]!
      98:      	mov	x29, sp
      9c:      	bl	0x9c <_CWE121_Stack_Based_Buffer_Overflow__char_type_overrun_memmove_01_good+0x8>
      a0:      	ldp	x29, x30, [sp], #16
      a4:      	ret

00000000000000a8 <_good1>:
      a8:      	sub	sp, sp, #80
      ac:      	stp	x29, x30, [sp, #64]
      b0:      	add	x29, sp, #64
      b4:      	adrp	x8, 0x0 <_good1+0xc>
      b8:      	ldr	x8, [x8]
      bc:      	ldr	x8, [x8]
      c0:      	stur	x8, [x29, #-8]
      c4:      	add	x8, sp, #16
      c8:      	str	x8, [sp, #8]
      cc:      	adrp	x8, 0x0 <_good1+0x24>
      d0:      	add	x8, x8, #0
      d4:      	str	x8, [sp]
      d8:      	str	x8, [sp, #32]
      dc:      	ldr	x0, [sp, #32]
      e0:      	bl	0xe0 <_good1+0x38>
      e4:      	ldr	x8, [sp]
      e8:      	ldr	x0, [sp, #8]
      ec:      	ldr	q0, [x8]
      f0:      	str	q0, [sp, #16]
      f4:      	strb	wzr, [sp, #31]
      f8:      	bl	0xf8 <_good1+0x50>
      fc:      	ldr	x0, [sp, #32]
     100:      	bl	0x100 <_good1+0x58>
     104:      	ldur	x9, [x29, #-8]
     108:      	adrp	x8, 0x0 <_good1+0x60>
     10c:      	ldr	x8, [x8]
     110:      	ldr	x8, [x8]
     114:      	subs	x8, x8, x9
     118:      	cset	w8, eq
     11c:      	tbnz	w8, #0, 0x128 <_good1+0x80>
     120:      	b	0x124 <_good1+0x7c>
     124:      	bl	0x124 <_good1+0x7c>
     128:      	ldp	x29, x30, [sp, #64]
     12c:      	add	sp, sp, #80
     130:      	ret