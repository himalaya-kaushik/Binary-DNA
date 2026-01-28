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
