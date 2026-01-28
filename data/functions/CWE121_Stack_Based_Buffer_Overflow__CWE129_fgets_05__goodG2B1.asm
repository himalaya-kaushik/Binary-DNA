     484:      	sub	sp, sp, #80
     488:      	stp	x29, x30, [sp, #64]
     48c:      	add	x29, sp, #64
     490:      	adrp	x8, 0x0 <_goodG2B1+0xc>
     494:      	ldr	x8, [x8]
     498:      	ldr	x8, [x8]
     49c:      	stur	x8, [x29, #-8]
     4a0:      	mov	w8, #-1
     4a4:      	str	w8, [sp, #12]
     4a8:      	adrp	x8, 0x0 <_goodG2B1+0x24>
     4ac:      	ldr	w8, [x8]
     4b0:      	subs	w8, w8, #0
     4b4:      	cset	w8, eq
     4b8:      	tbnz	w8, #0, 0x4d0 <_goodG2B1+0x4c>
     4bc:      	b	0x4c0 <_goodG2B1+0x3c>
     4c0:      	adrp	x0, 0x0 <_goodG2B1+0x3c>
     4c4:      	add	x0, x0, #0
     4c8:      	bl	0x4c8 <_goodG2B1+0x44>
     4cc:      	b	0x4dc <_goodG2B1+0x58>
     4d0:      	mov	w8, #7
     4d4:      	str	w8, [sp, #12]
     4d8:      	b	0x4dc <_goodG2B1+0x58>
     4dc:      	adrp	x8, 0x0 <_goodG2B1+0x58>
     4e0:      	ldr	w8, [x8]
     4e4:      	subs	w8, w8, #0
     4e8:      	cset	w8, eq
     4ec:      	tbnz	w8, #0, 0x580 <_goodG2B1+0xfc>
     4f0:      	b	0x4f4 <_goodG2B1+0x70>
     4f4:      	add	x0, sp, #16
     4f8:      	mov	w1, #0
     4fc:      	mov	x2, #40
     500:      	bl	0x500 <_goodG2B1+0x7c>
     504:      	ldr	w8, [sp, #12]
     508:      	subs	w8, w8, #0
     50c:      	cset	w8, lt
     510:      	tbnz	w8, #0, 0x56c <_goodG2B1+0xe8>
     514:      	b	0x518 <_goodG2B1+0x94>
     518:      	ldrsw	x10, [sp, #12]
     51c:      	add	x9, sp, #16
     520:      	mov	w8, #1
     524:      	str	w8, [x9, x10, lsl #2]
     528:      	str	wzr, [sp, #8]
     52c:      	b	0x530 <_goodG2B1+0xac>
     530:      	ldr	w8, [sp, #8]
     534:      	subs	w8, w8, #10
     538:      	cset	w8, ge
     53c:      	tbnz	w8, #0, 0x568 <_goodG2B1+0xe4>
     540:      	b	0x544 <_goodG2B1+0xc0>
     544:      	ldrsw	x9, [sp, #8]
     548:      	add	x8, sp, #16
     54c:      	ldr	w0, [x8, x9, lsl #2]
     550:      	bl	0x550 <_goodG2B1+0xcc>
     554:      	b	0x558 <_goodG2B1+0xd4>
     558:      	ldr	w8, [sp, #8]
     55c:      	add	w8, w8, #1
     560:      	str	w8, [sp, #8]
     564:      	b	0x530 <_goodG2B1+0xac>
     568:      	b	0x57c <_goodG2B1+0xf8>
     56c:      	adrp	x0, 0x0 <_goodG2B1+0xe8>
     570:      	add	x0, x0, #0
     574:      	bl	0x574 <_goodG2B1+0xf0>
     578:      	b	0x57c <_goodG2B1+0xf8>
     57c:      	b	0x580 <_goodG2B1+0xfc>
     580:      	ldur	x9, [x29, #-8]
     584:      	adrp	x8, 0x0 <_goodG2B1+0x100>
     588:      	ldr	x8, [x8]
     58c:      	ldr	x8, [x8]
     590:      	subs	x8, x8, x9
     594:      	cset	w8, eq
     598:      	tbnz	w8, #0, 0x5a4 <_goodG2B1+0x120>
     59c:      	b	0x5a0 <_goodG2B1+0x11c>
     5a0:      	bl	0x5a0 <_goodG2B1+0x11c>
     5a4:      	ldp	x29, x30, [sp, #64]
     5a8:      	add	sp, sp, #80
     5ac:      	ret
