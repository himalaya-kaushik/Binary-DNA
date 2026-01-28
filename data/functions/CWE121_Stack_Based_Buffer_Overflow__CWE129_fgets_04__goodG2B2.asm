     4b0:      	sub	sp, sp, #80
     4b4:      	stp	x29, x30, [sp, #64]
     4b8:      	add	x29, sp, #64
     4bc:      	adrp	x8, 0x0 <_goodG2B2+0xc>
     4c0:      	ldr	x8, [x8]
     4c4:      	ldr	x8, [x8]
     4c8:      	stur	x8, [x29, #-8]
     4cc:      	mov	w8, #-1
     4d0:      	str	w8, [sp, #12]
     4d4:      	mov	w8, #7
     4d8:      	str	w8, [sp, #12]
     4dc:      	add	x0, sp, #16
     4e0:      	mov	w1, #0
     4e4:      	mov	x2, #40
     4e8:      	bl	0x4e8 <_goodG2B2+0x38>
     4ec:      	ldr	w8, [sp, #12]
     4f0:      	subs	w8, w8, #0
     4f4:      	cset	w8, lt
     4f8:      	tbnz	w8, #0, 0x554 <_goodG2B2+0xa4>
     4fc:      	b	0x500 <_goodG2B2+0x50>
     500:      	ldrsw	x10, [sp, #12]
     504:      	add	x9, sp, #16
     508:      	mov	w8, #1
     50c:      	str	w8, [x9, x10, lsl #2]
     510:      	str	wzr, [sp, #8]
     514:      	b	0x518 <_goodG2B2+0x68>
     518:      	ldr	w8, [sp, #8]
     51c:      	subs	w8, w8, #10
     520:      	cset	w8, ge
     524:      	tbnz	w8, #0, 0x550 <_goodG2B2+0xa0>
     528:      	b	0x52c <_goodG2B2+0x7c>
     52c:      	ldrsw	x9, [sp, #8]
     530:      	add	x8, sp, #16
     534:      	ldr	w0, [x8, x9, lsl #2]
     538:      	bl	0x538 <_goodG2B2+0x88>
     53c:      	b	0x540 <_goodG2B2+0x90>
     540:      	ldr	w8, [sp, #8]
     544:      	add	w8, w8, #1
     548:      	str	w8, [sp, #8]
     54c:      	b	0x518 <_goodG2B2+0x68>
     550:      	b	0x564 <_goodG2B2+0xb4>
     554:      	adrp	x0, 0x0 <_goodG2B2+0xa4>
     558:      	add	x0, x0, #0
     55c:      	bl	0x55c <_goodG2B2+0xac>
     560:      	b	0x564 <_goodG2B2+0xb4>
     564:      	ldur	x9, [x29, #-8]
     568:      	adrp	x8, 0x0 <_goodG2B2+0xb8>
     56c:      	ldr	x8, [x8]
     570:      	ldr	x8, [x8]
     574:      	subs	x8, x8, x9
     578:      	cset	w8, eq
     57c:      	tbnz	w8, #0, 0x588 <_goodG2B2+0xd8>
     580:      	b	0x584 <_goodG2B2+0xd4>
     584:      	bl	0x584 <_goodG2B2+0xd4>
     588:      	ldp	x29, x30, [sp, #64]
     58c:      	add	sp, sp, #80
     590:      	ret