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
      44:      	ldr	q0, [x8]
      48:      	str	q0, [sp, #16]
      4c:      	ldr	q0, [x8, #16]
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
