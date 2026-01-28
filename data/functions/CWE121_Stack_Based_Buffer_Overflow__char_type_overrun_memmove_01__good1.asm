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