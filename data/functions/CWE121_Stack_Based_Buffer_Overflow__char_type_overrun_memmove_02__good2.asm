     138:      	sub	sp, sp, #80
     13c:      	stp	x29, x30, [sp, #64]
     140:      	add	x29, sp, #64
     144:      	adrp	x8, 0x0 <_good2+0xc>
     148:      	ldr	x8, [x8]
     14c:      	ldr	x8, [x8]
     150:      	stur	x8, [x29, #-8]
     154:      	add	x8, sp, #16
     158:      	str	x8, [sp, #8]
     15c:      	adrp	x8, 0x0 <_good2+0x24>
     160:      	add	x8, x8, #0
     164:      	str	x8, [sp]
     168:      	str	x8, [sp, #32]
     16c:      	ldr	x0, [sp, #32]
     170:      	bl	0x170 <_good2+0x38>
     174:      	ldr	x8, [sp]
     178:      	ldr	x0, [sp, #8]
     17c:      	ldr	q0, [x8]
     180:      	str	q0, [sp, #16]
     184:      	strb	wzr, [sp, #31]
     188:      	bl	0x188 <_good2+0x50>
     18c:      	ldr	x0, [sp, #32]
     190:      	bl	0x190 <_good2+0x58>
     194:      	ldur	x9, [x29, #-8]
     198:      	adrp	x8, 0x0 <_good2+0x60>
     19c:      	ldr	x8, [x8]
     1a0:      	ldr	x8, [x8]
     1a4:      	subs	x8, x8, x9
     1a8:      	cset	w8, eq
     1ac:      	tbnz	w8, #0, 0x1b8 <_good2+0x80>
     1b0:      	b	0x1b4 <_good2+0x7c>
     1b4:      	bl	0x1b4 <_good2+0x7c>
     1b8:      	ldp	x29, x30, [sp, #64]
     1bc:      	add	sp, sp, #80
     1c0:      	ret