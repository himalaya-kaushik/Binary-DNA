     30c:      	sub	sp, sp, #96
     310:      	stp	x29, x30, [sp, #80]
     314:      	add	x29, sp, #80
     318:      	adrp	x8, 0x0 <_goodB2G2+0xc>
     31c:      	ldr	x8, [x8]
     320:      	ldr	x8, [x8]
     324:      	stur	x8, [x29, #-8]
     328:      	mov	w8, #-1
     32c:      	str	w8, [sp, #12]
     330:      	adrp	x8, 0x0 <_goodB2G2+0x24>
     334:      	ldr	w8, [x8]
     338:      	subs	w8, w8, #0
     33c:      	cset	w8, eq
     340:      	tbnz	w8, #0, 0x39c <_goodB2G2+0x90>
     344:      	b	0x348 <_goodB2G2+0x3c>
     348:      	sub	x0, x29, #24
     34c:      	stur	xzr, [x29, #-24]
     350:      	stur	xzr, [x0, #6]
     354:      	adrp	x8, 0x0 <_goodB2G2+0x48>
     358:      	ldr	x8, [x8]
     35c:      	ldr	x2, [x8]
     360:      	mov	w1, #14
     364:      	bl	0x364 <_goodB2G2+0x58>
     368:      	subs	x8, x0, #0
     36c:      	cset	w8, eq
     370:      	tbnz	w8, #0, 0x388 <_goodB2G2+0x7c>
     374:      	b	0x378 <_goodB2G2+0x6c>
     378:      	sub	x0, x29, #24
     37c:      	bl	0x37c <_goodB2G2+0x70>
     380:      	str	w0, [sp, #12]
     384:      	b	0x398 <_goodB2G2+0x8c>
     388:      	adrp	x0, 0x0 <_goodB2G2+0x7c>
     38c:      	add	x0, x0, #0
     390:      	bl	0x390 <_goodB2G2+0x84>
     394:      	b	0x398 <_goodB2G2+0x8c>
     398:      	b	0x39c <_goodB2G2+0x90>
     39c:      	adrp	x8, 0x0 <_goodB2G2+0x90>
     3a0:      	ldr	w8, [x8]
     3a4:      	subs	w8, w8, #0
     3a8:      	cset	w8, eq
     3ac:      	tbnz	w8, #0, 0x454 <_goodB2G2+0x148>
     3b0:      	b	0x3b4 <_goodB2G2+0xa8>
     3b4:      	add	x0, sp, #16
     3b8:      	mov	w1, #0
     3bc:      	mov	x2, #40
     3c0:      	bl	0x3c0 <_goodB2G2+0xb4>
     3c4:      	ldr	w8, [sp, #12]
     3c8:      	subs	w8, w8, #0
     3cc:      	cset	w8, lt
     3d0:      	tbnz	w8, #0, 0x440 <_goodB2G2+0x134>
     3d4:      	b	0x3d8 <_goodB2G2+0xcc>
     3d8:      	ldr	w8, [sp, #12]
     3dc:      	subs	w8, w8, #10
     3e0:      	cset	w8, ge
     3e4:      	tbnz	w8, #0, 0x440 <_goodB2G2+0x134>
     3e8:      	b	0x3ec <_goodB2G2+0xe0>
     3ec:      	ldrsw	x10, [sp, #12]
     3f0:      	add	x9, sp, #16
     3f4:      	mov	w8, #1
     3f8:      	str	w8, [x9, x10, lsl #2]
     3fc:      	str	wzr, [sp, #8]
     400:      	b	0x404 <_goodB2G2+0xf8>
     404:      	ldr	w8, [sp, #8]
     408:      	subs	w8, w8, #10
     40c:      	cset	w8, ge
     410:      	tbnz	w8, #0, 0x43c <_goodB2G2+0x130>
     414:      	b	0x418 <_goodB2G2+0x10c>
     418:      	ldrsw	x9, [sp, #8]
     41c:      	add	x8, sp, #16
     420:      	ldr	w0, [x8, x9, lsl #2]
     424:      	bl	0x424 <_goodB2G2+0x118>
     428:      	b	0x42c <_goodB2G2+0x120>
     42c:      	ldr	w8, [sp, #8]
     430:      	add	w8, w8, #1
     434:      	str	w8, [sp, #8]
     438:      	b	0x404 <_goodB2G2+0xf8>
     43c:      	b	0x450 <_goodB2G2+0x144>
     440:      	adrp	x0, 0x0 <_goodB2G2+0x134>
     444:      	add	x0, x0, #0
     448:      	bl	0x448 <_goodB2G2+0x13c>
     44c:      	b	0x450 <_goodB2G2+0x144>
     450:      	b	0x454 <_goodB2G2+0x148>
     454:      	ldur	x9, [x29, #-8]
     458:      	adrp	x8, 0x0 <_goodB2G2+0x14c>
     45c:      	ldr	x8, [x8]
     460:      	ldr	x8, [x8]
     464:      	subs	x8, x8, x9
     468:      	cset	w8, eq
     46c:      	tbnz	w8, #0, 0x478 <_goodB2G2+0x16c>
     470:      	b	0x474 <_goodB2G2+0x168>
     474:      	bl	0x474 <_goodB2G2+0x168>
     478:      	ldp	x29, x30, [sp, #80]
     47c:      	add	sp, sp, #96
     480:      	ret
