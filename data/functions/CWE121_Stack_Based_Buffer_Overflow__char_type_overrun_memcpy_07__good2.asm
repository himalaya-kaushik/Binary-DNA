     180:      	sub	sp, sp, #80
     184:      	stp	x29, x30, [sp, #64]
     188:      	add	x29, sp, #64
     18c:      	adrp	x8, 0x0 <_good2+0xc>
     190:      	ldr	x8, [x8]
     194:      	ldr	x8, [x8]
     198:      	stur	x8, [x29, #-8]
     19c:      	adrp	x8, 0x0 <_good2+0x1c>
     1a0:      	ldr	w8, [x8]
     1a4:      	subs	w8, w8, #5
     1a8:      	cset	w8, ne
     1ac:      	tbnz	w8, #0, 0x1f8 <_good2+0x78>
     1b0:      	b	0x1b4 <_good2+0x34>
     1b4:      	add	x8, sp, #16
     1b8:      	str	x8, [sp, #8]
     1bc:      	adrp	x8, 0x0 <_good2+0x3c>
     1c0:      	add	x8, x8, #0
     1c4:      	str	x8, [sp]
     1c8:      	str	x8, [sp, #32]
     1cc:      	ldr	x0, [sp, #32]
     1d0:      	bl	0x1d0 <_good2+0x50>
     1d4:      	ldr	x8, [sp]
     1d8:      	ldr	x0, [sp, #8]
     1dc:      	ldr	q0, [x8]
     1e0:      	str	q0, [sp, #16]
     1e4:      	strb	wzr, [sp, #31]
     1e8:      	bl	0x1e8 <_good2+0x68>
     1ec:      	ldr	x0, [sp, #32]
     1f0:      	bl	0x1f0 <_good2+0x70>
     1f4:      	b	0x1f8 <_good2+0x78>
     1f8:      	ldur	x9, [x29, #-8]
     1fc:      	adrp	x8, 0x0 <_good2+0x7c>
     200:      	ldr	x8, [x8]
     204:      	ldr	x8, [x8]
     208:      	subs	x8, x8, x9
     20c:      	cset	w8, eq
     210:      	tbnz	w8, #0, 0x21c <_good2+0x9c>
     214:      	b	0x218 <_good2+0x98>
     218:      	bl	0x218 <_good2+0x98>
     21c:      	ldp	x29, x30, [sp, #64]
     220:      	add	sp, sp, #80
     224:      	ret