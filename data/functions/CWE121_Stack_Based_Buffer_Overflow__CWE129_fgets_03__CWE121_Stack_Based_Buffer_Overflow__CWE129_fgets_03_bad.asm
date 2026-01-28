       0:      	sub	sp, sp, #96
       4:      	stp	x29, x30, [sp, #80]
       8:      	add	x29, sp, #80
       c:      	adrp	x8, 0x0 <ltmp0+0xc>
      10:      	ldr	x8, [x8]
      14:      	ldr	x8, [x8]
      18:      	stur	x8, [x29, #-8]
      1c:      	mov	w8, #-1
      20:      	str	w8, [sp, #12]
      24:      	sub	x0, x29, #24
      28:      	stur	xzr, [x29, #-24]
      2c:      	stur	xzr, [x0, #6]
      30:      	adrp	x8, 0x0 <ltmp0+0x30>
      34:      	ldr	x8, [x8]
      38:      	ldr	x2, [x8]
      3c:      	mov	w1, #14
      40:      	bl	0x40 <ltmp0+0x40>
      44:      	subs	x8, x0, #0
      48:      	cset	w8, eq
      4c:      	tbnz	w8, #0, 0x64 <ltmp0+0x64>
      50:      	b	0x54 <ltmp0+0x54>
      54:      	sub	x0, x29, #24
      58:      	bl	0x58 <ltmp0+0x58>
      5c:      	str	w0, [sp, #12]
      60:      	b	0x74 <ltmp0+0x74>
      64:      	adrp	x0, 0x0 <ltmp0+0x64>
      68:      	add	x0, x0, #0
      6c:      	bl	0x6c <ltmp0+0x6c>
      70:      	b	0x74 <ltmp0+0x74>
      74:      	add	x0, sp, #16
      78:      	mov	w1, #0
      7c:      	mov	x2, #40
      80:      	bl	0x80 <ltmp0+0x80>
      84:      	ldr	w8, [sp, #12]
      88:      	subs	w8, w8, #0
      8c:      	cset	w8, lt
      90:      	tbnz	w8, #0, 0xec <ltmp0+0xec>
      94:      	b	0x98 <ltmp0+0x98>
      98:      	ldrsw	x10, [sp, #12]
      9c:      	add	x9, sp, #16
      a0:      	mov	w8, #1
      a4:      	str	w8, [x9, x10, lsl #2]
      a8:      	str	wzr, [sp, #8]
      ac:      	b	0xb0 <ltmp0+0xb0>
      b0:      	ldr	w8, [sp, #8]
      b4:      	subs	w8, w8, #10
      b8:      	cset	w8, ge
      bc:      	tbnz	w8, #0, 0xe8 <ltmp0+0xe8>
      c0:      	b	0xc4 <ltmp0+0xc4>
      c4:      	ldrsw	x9, [sp, #8]
      c8:      	add	x8, sp, #16
      cc:      	ldr	w0, [x8, x9, lsl #2]
      d0:      	bl	0xd0 <ltmp0+0xd0>
      d4:      	b	0xd8 <ltmp0+0xd8>
      d8:      	ldr	w8, [sp, #8]
      dc:      	add	w8, w8, #1
      e0:      	str	w8, [sp, #8]
      e4:      	b	0xb0 <ltmp0+0xb0>
      e8:      	b	0xfc <ltmp0+0xfc>
      ec:      	adrp	x0, 0x0 <ltmp0+0xec>
      f0:      	add	x0, x0, #0
      f4:      	bl	0xf4 <ltmp0+0xf4>
      f8:      	b	0xfc <ltmp0+0xfc>
      fc:      	ldur	x9, [x29, #-8]
     100:      	adrp	x8, 0x0 <ltmp0+0x100>
     104:      	ldr	x8, [x8]
     108:      	ldr	x8, [x8]
     10c:      	subs	x8, x8, x9
     110:      	cset	w8, eq
     114:      	tbnz	w8, #0, 0x120 <ltmp0+0x120>
     118:      	b	0x11c <ltmp0+0x11c>
     11c:      	bl	0x11c <ltmp0+0x11c>
     120:      	ldp	x29, x30, [sp, #80]
     124:      	add	sp, sp, #96
     128:      	ret
