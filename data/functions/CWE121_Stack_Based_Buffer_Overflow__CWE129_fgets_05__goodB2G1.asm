     184:      	sub	sp, sp, #96
     188:      	stp	x29, x30, [sp, #80]
     18c:      	add	x29, sp, #80
     190:      	adrp	x8, 0x0 <_goodB2G1+0xc>
     194:      	ldr	x8, [x8]
     198:      	ldr	x8, [x8]
     19c:      	stur	x8, [x29, #-8]
     1a0:      	mov	w8, #-1
     1a4:      	str	w8, [sp, #12]
     1a8:      	adrp	x8, 0x0 <_goodB2G1+0x24>
     1ac:      	ldr	w8, [x8]
     1b0:      	subs	w8, w8, #0
     1b4:      	cset	w8, eq
     1b8:      	tbnz	w8, #0, 0x214 <_goodB2G1+0x90>
     1bc:      	b	0x1c0 <_goodB2G1+0x3c>
     1c0:      	sub	x0, x29, #24
     1c4:      	stur	xzr, [x29, #-24]
     1c8:      	stur	xzr, [x0, #6]
     1cc:      	adrp	x8, 0x0 <_goodB2G1+0x48>
     1d0:      	ldr	x8, [x8]
     1d4:      	ldr	x2, [x8]
     1d8:      	mov	w1, #14
     1dc:      	bl	0x1dc <_goodB2G1+0x58>
     1e0:      	subs	x8, x0, #0
     1e4:      	cset	w8, eq
     1e8:      	tbnz	w8, #0, 0x200 <_goodB2G1+0x7c>
     1ec:      	b	0x1f0 <_goodB2G1+0x6c>
     1f0:      	sub	x0, x29, #24
     1f4:      	bl	0x1f4 <_goodB2G1+0x70>
     1f8:      	str	w0, [sp, #12]
     1fc:      	b	0x210 <_goodB2G1+0x8c>
     200:      	adrp	x0, 0x0 <_goodB2G1+0x7c>
     204:      	add	x0, x0, #0
     208:      	bl	0x208 <_goodB2G1+0x84>
     20c:      	b	0x210 <_goodB2G1+0x8c>
     210:      	b	0x214 <_goodB2G1+0x90>
     214:      	adrp	x8, 0x0 <_goodB2G1+0x90>
     218:      	ldr	w8, [x8]
     21c:      	subs	w8, w8, #0
     220:      	cset	w8, eq
     224:      	tbnz	w8, #0, 0x23c <_goodB2G1+0xb8>
     228:      	b	0x22c <_goodB2G1+0xa8>
     22c:      	adrp	x0, 0x0 <_goodB2G1+0xa8>
     230:      	add	x0, x0, #0
     234:      	bl	0x234 <_goodB2G1+0xb0>
     238:      	b	0x2dc <_goodB2G1+0x158>
     23c:      	add	x0, sp, #16
     240:      	mov	w1, #0
     244:      	mov	x2, #40
     248:      	bl	0x248 <_goodB2G1+0xc4>
     24c:      	ldr	w8, [sp, #12]
     250:      	subs	w8, w8, #0
     254:      	cset	w8, lt
     258:      	tbnz	w8, #0, 0x2c8 <_goodB2G1+0x144>
     25c:      	b	0x260 <_goodB2G1+0xdc>
     260:      	ldr	w8, [sp, #12]
     264:      	subs	w8, w8, #10
     268:      	cset	w8, ge
     26c:      	tbnz	w8, #0, 0x2c8 <_goodB2G1+0x144>
     270:      	b	0x274 <_goodB2G1+0xf0>
     274:      	ldrsw	x10, [sp, #12]
     278:      	add	x9, sp, #16
     27c:      	mov	w8, #1
     280:      	str	w8, [x9, x10, lsl #2]
     284:      	str	wzr, [sp, #8]
     288:      	b	0x28c <_goodB2G1+0x108>
     28c:      	ldr	w8, [sp, #8]
     290:      	subs	w8, w8, #10
     294:      	cset	w8, ge
     298:      	tbnz	w8, #0, 0x2c4 <_goodB2G1+0x140>
     29c:      	b	0x2a0 <_goodB2G1+0x11c>
     2a0:      	ldrsw	x9, [sp, #8]
     2a4:      	add	x8, sp, #16
     2a8:      	ldr	w0, [x8, x9, lsl #2]
     2ac:      	bl	0x2ac <_goodB2G1+0x128>
     2b0:      	b	0x2b4 <_goodB2G1+0x130>
     2b4:      	ldr	w8, [sp, #8]
     2b8:      	add	w8, w8, #1
     2bc:      	str	w8, [sp, #8]
     2c0:      	b	0x28c <_goodB2G1+0x108>
     2c4:      	b	0x2d8 <_goodB2G1+0x154>
     2c8:      	adrp	x0, 0x0 <_goodB2G1+0x144>
     2cc:      	add	x0, x0, #0
     2d0:      	bl	0x2d0 <_goodB2G1+0x14c>
     2d4:      	b	0x2d8 <_goodB2G1+0x154>
     2d8:      	b	0x2dc <_goodB2G1+0x158>
     2dc:      	ldur	x9, [x29, #-8]
     2e0:      	adrp	x8, 0x0 <_goodB2G1+0x15c>
     2e4:      	ldr	x8, [x8]
     2e8:      	ldr	x8, [x8]
     2ec:      	subs	x8, x8, x9
     2f0:      	cset	w8, eq
     2f4:      	tbnz	w8, #0, 0x300 <_goodB2G1+0x17c>
     2f8:      	b	0x2fc <_goodB2G1+0x178>
     2fc:      	bl	0x2fc <_goodB2G1+0x178>
     300:      	ldp	x29, x30, [sp, #80]
     304:      	add	sp, sp, #96
     308:      	ret
