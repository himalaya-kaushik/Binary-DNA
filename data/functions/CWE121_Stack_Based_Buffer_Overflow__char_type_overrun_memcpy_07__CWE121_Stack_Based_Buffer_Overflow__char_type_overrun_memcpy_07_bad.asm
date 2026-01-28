       0:      	sub	sp, sp, #80
       4:      	stp	x29, x30, [sp, #64]
       8:      	add	x29, sp, #64
       c:      	adrp	x8, 0x0 <ltmp0+0xc>
      10:      	ldr	x8, [x8]
      14:      	ldr	x8, [x8]
      18:      	stur	x8, [x29, #-8]
      1c:      	adrp	x8, 0x0 <ltmp0+0x1c>
      20:      	ldr	w8, [x8]
      24:      	subs	w8, w8, #5
      28:      	cset	w8, ne
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
      5c:      	ldr	q0, [x8]
      60:      	str	q0, [sp, #16]
      64:      	ldr	q0, [x8, #16]
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
