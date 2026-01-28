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
