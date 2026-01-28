     28c:      	sub	sp, sp, #96
     290:      	stp	x29, x30, [sp, #80]
     294:      	add	x29, sp, #80
     298:      	adrp	x8, 0x0 <_goodB2G2+0xc>
     29c:      	ldr	x8, [x8]
     2a0:      	ldr	x8, [x8]
     2a4:      	stur	x8, [x29, #-8]
     2a8:      	mov	w8, #-1
     2ac:      	str	w8, [sp, #12]
     2b0:      	sub	x0, x29, #24
     2b4:      	stur	xzr, [x29, #-24]
     2b8:      	stur	xzr, [x0, #6]
     2bc:      	adrp	x8, 0x0 <_goodB2G2+0x30>
     2c0:      	ldr	x8, [x8]
     2c4:      	ldr	x2, [x8]
     2c8:      	mov	w1, #14
     2cc:      	bl	0x2cc <_goodB2G2+0x40>
     2d0:      	subs	x8, x0, #0
     2d4:      	cset	w8, eq
     2d8:      	tbnz	w8, #0, 0x2f0 <_goodB2G2+0x64>
     2dc:      	b	0x2e0 <_goodB2G2+0x54>
     2e0:      	sub	x0, x29, #24
     2e4:      	bl	0x2e4 <_goodB2G2+0x58>
     2e8:      	str	w0, [sp, #12]
     2ec:      	b	0x300 <_goodB2G2+0x74>
     2f0:      	adrp	x0, 0x0 <_goodB2G2+0x64>
     2f4:      	add	x0, x0, #0
     2f8:      	bl	0x2f8 <_goodB2G2+0x6c>
     2fc:      	b	0x300 <_goodB2G2+0x74>
     300:      	add	x0, sp, #16
     304:      	mov	w1, #0
     308:      	mov	x2, #40
     30c:      	bl	0x30c <_goodB2G2+0x80>
     310:      	ldr	w8, [sp, #12]
     314:      	subs	w8, w8, #0
     318:      	cset	w8, lt
     31c:      	tbnz	w8, #0, 0x38c <_goodB2G2+0x100>
     320:      	b	0x324 <_goodB2G2+0x98>
     324:      	ldr	w8, [sp, #12]
     328:      	subs	w8, w8, #10
     32c:      	cset	w8, ge
     330:      	tbnz	w8, #0, 0x38c <_goodB2G2+0x100>
     334:      	b	0x338 <_goodB2G2+0xac>
     338:      	ldrsw	x10, [sp, #12]
     33c:      	add	x9, sp, #16
     340:      	mov	w8, #1
     344:      	str	w8, [x9, x10, lsl #2]
     348:      	str	wzr, [sp, #8]
     34c:      	b	0x350 <_goodB2G2+0xc4>
     350:      	ldr	w8, [sp, #8]
     354:      	subs	w8, w8, #10
     358:      	cset	w8, ge
     35c:      	tbnz	w8, #0, 0x388 <_goodB2G2+0xfc>
     360:      	b	0x364 <_goodB2G2+0xd8>
     364:      	ldrsw	x9, [sp, #8]
     368:      	add	x8, sp, #16
     36c:      	ldr	w0, [x8, x9, lsl #2]
     370:      	bl	0x370 <_goodB2G2+0xe4>
     374:      	b	0x378 <_goodB2G2+0xec>
     378:      	ldr	w8, [sp, #8]
     37c:      	add	w8, w8, #1
     380:      	str	w8, [sp, #8]
     384:      	b	0x350 <_goodB2G2+0xc4>
     388:      	b	0x39c <_goodB2G2+0x110>
     38c:      	adrp	x0, 0x0 <_goodB2G2+0x100>
     390:      	add	x0, x0, #0
     394:      	bl	0x394 <_goodB2G2+0x108>
     398:      	b	0x39c <_goodB2G2+0x110>
     39c:      	ldur	x9, [x29, #-8]
     3a0:      	adrp	x8, 0x0 <_goodB2G2+0x114>
     3a4:      	ldr	x8, [x8]
     3a8:      	ldr	x8, [x8]
     3ac:      	subs	x8, x8, x9
     3b0:      	cset	w8, eq
     3b4:      	tbnz	w8, #0, 0x3c0 <_goodB2G2+0x134>
     3b8:      	b	0x3bc <_goodB2G2+0x130>
     3bc:      	bl	0x3bc <_goodB2G2+0x130>
     3c0:      	ldp	x29, x30, [sp, #80]
     3c4:      	add	sp, sp, #96
     3c8:      	ret
