     3cc:      	sub	sp, sp, #80
     3d0:      	stp	x29, x30, [sp, #64]
     3d4:      	add	x29, sp, #64
     3d8:      	adrp	x8, 0x0 <_goodG2B1+0xc>
     3dc:      	ldr	x8, [x8]
     3e0:      	ldr	x8, [x8]
     3e4:      	stur	x8, [x29, #-8]
     3e8:      	mov	w8, #-1
     3ec:      	str	w8, [sp, #12]
     3f0:      	mov	w8, #7
     3f4:      	str	w8, [sp, #12]
     3f8:      	add	x0, sp, #16
     3fc:      	mov	w1, #0
     400:      	mov	x2, #40
     404:      	bl	0x404 <_goodG2B1+0x38>
     408:      	ldr	w8, [sp, #12]
     40c:      	subs	w8, w8, #0
     410:      	cset	w8, lt
     414:      	tbnz	w8, #0, 0x470 <_goodG2B1+0xa4>
     418:      	b	0x41c <_goodG2B1+0x50>
     41c:      	ldrsw	x10, [sp, #12]
     420:      	add	x9, sp, #16
     424:      	mov	w8, #1
     428:      	str	w8, [x9, x10, lsl #2]
     42c:      	str	wzr, [sp, #8]
     430:      	b	0x434 <_goodG2B1+0x68>
     434:      	ldr	w8, [sp, #8]
     438:      	subs	w8, w8, #10
     43c:      	cset	w8, ge
     440:      	tbnz	w8, #0, 0x46c <_goodG2B1+0xa0>
     444:      	b	0x448 <_goodG2B1+0x7c>
     448:      	ldrsw	x9, [sp, #8]
     44c:      	add	x8, sp, #16
     450:      	ldr	w0, [x8, x9, lsl #2]
     454:      	bl	0x454 <_goodG2B1+0x88>
     458:      	b	0x45c <_goodG2B1+0x90>
     45c:      	ldr	w8, [sp, #8]
     460:      	add	w8, w8, #1
     464:      	str	w8, [sp, #8]
     468:      	b	0x434 <_goodG2B1+0x68>
     46c:      	b	0x480 <_goodG2B1+0xb4>
     470:      	adrp	x0, 0x0 <_goodG2B1+0xa4>
     474:      	add	x0, x0, #0
     478:      	bl	0x478 <_goodG2B1+0xac>
     47c:      	b	0x480 <_goodG2B1+0xb4>
     480:      	ldur	x9, [x29, #-8]
     484:      	adrp	x8, 0x0 <_goodG2B1+0xb8>
     488:      	ldr	x8, [x8]
     48c:      	ldr	x8, [x8]
     490:      	subs	x8, x8, x9
     494:      	cset	w8, eq
     498:      	tbnz	w8, #0, 0x4a4 <_goodG2B1+0xd8>
     49c:      	b	0x4a0 <_goodG2B1+0xd4>
     4a0:      	bl	0x4a0 <_goodG2B1+0xd4>
     4a4:      	ldp	x29, x30, [sp, #64]
     4a8:      	add	sp, sp, #80
     4ac:      	ret
