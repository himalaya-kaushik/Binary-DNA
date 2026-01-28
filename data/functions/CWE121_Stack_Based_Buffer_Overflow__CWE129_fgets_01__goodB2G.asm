     228:      	sub	sp, sp, #96
     22c:      	stp	x29, x30, [sp, #80]
     230:      	add	x29, sp, #80
     234:      	adrp	x8, 0x0 <_goodB2G+0xc>
     238:      	ldr	x8, [x8]
     23c:      	ldr	x8, [x8]
     240:      	stur	x8, [x29, #-8]
     244:      	mov	w8, #-1
     248:      	str	w8, [sp, #12]
     24c:      	sub	x0, x29, #24
     250:      	stur	xzr, [x29, #-24]
     254:      	stur	xzr, [x0, #6]
     258:      	adrp	x8, 0x0 <_goodB2G+0x30>
     25c:      	ldr	x8, [x8]
     260:      	ldr	x2, [x8]
     264:      	mov	w1, #14
     268:      	bl	0x268 <_goodB2G+0x40>
     26c:      	subs	x8, x0, #0
     270:      	cset	w8, eq
     274:      	tbnz	w8, #0, 0x28c <_goodB2G+0x64>
     278:      	b	0x27c <_goodB2G+0x54>
     27c:      	sub	x0, x29, #24
     280:      	bl	0x280 <_goodB2G+0x58>
     284:      	str	w0, [sp, #12]
     288:      	b	0x29c <_goodB2G+0x74>
     28c:      	adrp	x0, 0x0 <_goodB2G+0x64>
     290:      	add	x0, x0, #0
     294:      	bl	0x294 <_goodB2G+0x6c>
     298:      	b	0x29c <_goodB2G+0x74>
     29c:      	add	x0, sp, #16
     2a0:      	mov	w1, #0
     2a4:      	mov	x2, #40
     2a8:      	bl	0x2a8 <_goodB2G+0x80>
     2ac:      	ldr	w8, [sp, #12]
     2b0:      	subs	w8, w8, #0
     2b4:      	cset	w8, lt
     2b8:      	tbnz	w8, #0, 0x328 <_goodB2G+0x100>
     2bc:      	b	0x2c0 <_goodB2G+0x98>
     2c0:      	ldr	w8, [sp, #12]
     2c4:      	subs	w8, w8, #10
     2c8:      	cset	w8, ge
     2cc:      	tbnz	w8, #0, 0x328 <_goodB2G+0x100>
     2d0:      	b	0x2d4 <_goodB2G+0xac>
     2d4:      	ldrsw	x10, [sp, #12]
     2d8:      	add	x9, sp, #16
     2dc:      	mov	w8, #1
     2e0:      	str	w8, [x9, x10, lsl #2]
     2e4:      	str	wzr, [sp, #8]
     2e8:      	b	0x2ec <_goodB2G+0xc4>
     2ec:      	ldr	w8, [sp, #8]
     2f0:      	subs	w8, w8, #10
     2f4:      	cset	w8, ge
     2f8:      	tbnz	w8, #0, 0x324 <_goodB2G+0xfc>
     2fc:      	b	0x300 <_goodB2G+0xd8>
     300:      	ldrsw	x9, [sp, #8]
     304:      	add	x8, sp, #16
     308:      	ldr	w0, [x8, x9, lsl #2]
     30c:      	bl	0x30c <_goodB2G+0xe4>
     310:      	b	0x314 <_goodB2G+0xec>
     314:      	ldr	w8, [sp, #8]
     318:      	add	w8, w8, #1
     31c:      	str	w8, [sp, #8]
     320:      	b	0x2ec <_goodB2G+0xc4>
     324:      	b	0x338 <_goodB2G+0x110>
     328:      	adrp	x0, 0x0 <_goodB2G+0x100>
     32c:      	add	x0, x0, #0
     330:      	bl	0x330 <_goodB2G+0x108>
     334:      	b	0x338 <_goodB2G+0x110>
     338:      	ldur	x9, [x29, #-8]
     33c:      	adrp	x8, 0x0 <_goodB2G+0x114>
     340:      	ldr	x8, [x8]
     344:      	ldr	x8, [x8]
     348:      	subs	x8, x8, x9
     34c:      	cset	w8, eq
     350:      	tbnz	w8, #0, 0x35c <_goodB2G+0x134>
     354:      	b	0x358 <_goodB2G+0x130>
     358:      	bl	0x358 <_goodB2G+0x130>
     35c:      	ldp	x29, x30, [sp, #80]
     360:      	add	sp, sp, #96
     364:      	ret