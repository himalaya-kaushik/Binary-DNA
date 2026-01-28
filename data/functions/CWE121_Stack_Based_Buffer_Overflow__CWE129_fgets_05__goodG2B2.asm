     5b0:      	sub	sp, sp, #80
     5b4:      	stp	x29, x30, [sp, #64]
     5b8:      	add	x29, sp, #64
     5bc:      	adrp	x8, 0x0 <_goodG2B2+0xc>
     5c0:      	ldr	x8, [x8]
     5c4:      	ldr	x8, [x8]
     5c8:      	stur	x8, [x29, #-8]
     5cc:      	mov	w8, #-1
     5d0:      	str	w8, [sp, #12]
     5d4:      	adrp	x8, 0x0 <_goodG2B2+0x24>
     5d8:      	ldr	w8, [x8]
     5dc:      	subs	w8, w8, #0
     5e0:      	cset	w8, eq
     5e4:      	tbnz	w8, #0, 0x5f8 <_goodG2B2+0x48>
     5e8:      	b	0x5ec <_goodG2B2+0x3c>
     5ec:      	mov	w8, #7
     5f0:      	str	w8, [sp, #12]
     5f4:      	b	0x5f8 <_goodG2B2+0x48>
     5f8:      	adrp	x8, 0x0 <_goodG2B2+0x48>
     5fc:      	ldr	w8, [x8]
     600:      	subs	w8, w8, #0
     604:      	cset	w8, eq
     608:      	tbnz	w8, #0, 0x69c <_goodG2B2+0xec>
     60c:      	b	0x610 <_goodG2B2+0x60>
     610:      	add	x0, sp, #16
     614:      	mov	w1, #0
     618:      	mov	x2, #40
     61c:      	bl	0x61c <_goodG2B2+0x6c>
     620:      	ldr	w8, [sp, #12]
     624:      	subs	w8, w8, #0
     628:      	cset	w8, lt
     62c:      	tbnz	w8, #0, 0x688 <_goodG2B2+0xd8>
     630:      	b	0x634 <_goodG2B2+0x84>
     634:      	ldrsw	x10, [sp, #12]
     638:      	add	x9, sp, #16
     63c:      	mov	w8, #1
     640:      	str	w8, [x9, x10, lsl #2]
     644:      	str	wzr, [sp, #8]
     648:      	b	0x64c <_goodG2B2+0x9c>
     64c:      	ldr	w8, [sp, #8]
     650:      	subs	w8, w8, #10
     654:      	cset	w8, ge
     658:      	tbnz	w8, #0, 0x684 <_goodG2B2+0xd4>
     65c:      	b	0x660 <_goodG2B2+0xb0>
     660:      	ldrsw	x9, [sp, #8]
     664:      	add	x8, sp, #16
     668:      	ldr	w0, [x8, x9, lsl #2]
     66c:      	bl	0x66c <_goodG2B2+0xbc>
     670:      	b	0x674 <_goodG2B2+0xc4>
     674:      	ldr	w8, [sp, #8]
     678:      	add	w8, w8, #1
     67c:      	str	w8, [sp, #8]
     680:      	b	0x64c <_goodG2B2+0x9c>
     684:      	b	0x698 <_goodG2B2+0xe8>
     688:      	adrp	x0, 0x0 <_goodG2B2+0xd8>
     68c:      	add	x0, x0, #0
     690:      	bl	0x690 <_goodG2B2+0xe0>
     694:      	b	0x698 <_goodG2B2+0xe8>
     698:      	b	0x69c <_goodG2B2+0xec>
     69c:      	ldur	x9, [x29, #-8]
     6a0:      	adrp	x8, 0x0 <_goodG2B2+0xf0>
     6a4:      	ldr	x8, [x8]
     6a8:      	ldr	x8, [x8]
     6ac:      	subs	x8, x8, x9
     6b0:      	cset	w8, eq
     6b4:      	tbnz	w8, #0, 0x6c0 <_goodG2B2+0x110>
     6b8:      	b	0x6bc <_goodG2B2+0x10c>
     6bc:      	bl	0x6bc <_goodG2B2+0x10c>
     6c0:      	ldp	x29, x30, [sp, #64]
     6c4:      	add	sp, sp, #80
     6c8:      	ret