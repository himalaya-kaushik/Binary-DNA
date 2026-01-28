     14c:      	sub	sp, sp, #96
     150:      	stp	x29, x30, [sp, #80]
     154:      	add	x29, sp, #80
     158:      	adrp	x8, 0x0 <_goodB2G1+0xc>
     15c:      	ldr	x8, [x8]
     160:      	ldr	x8, [x8]
     164:      	stur	x8, [x29, #-8]
     168:      	mov	w8, #-1
     16c:      	str	w8, [sp, #12]
     170:      	sub	x0, x29, #24
     174:      	stur	xzr, [x29, #-24]
     178:      	stur	xzr, [x0, #6]
     17c:      	adrp	x8, 0x0 <_goodB2G1+0x30>
     180:      	ldr	x8, [x8]
     184:      	ldr	x2, [x8]
     188:      	mov	w1, #14
     18c:      	bl	0x18c <_goodB2G1+0x40>
     190:      	subs	x8, x0, #0
     194:      	cset	w8, eq
     198:      	tbnz	w8, #0, 0x1b0 <_goodB2G1+0x64>
     19c:      	b	0x1a0 <_goodB2G1+0x54>
     1a0:      	sub	x0, x29, #24
     1a4:      	bl	0x1a4 <_goodB2G1+0x58>
     1a8:      	str	w0, [sp, #12]
     1ac:      	b	0x1c0 <_goodB2G1+0x74>
     1b0:      	adrp	x0, 0x0 <_goodB2G1+0x64>
     1b4:      	add	x0, x0, #0
     1b8:      	bl	0x1b8 <_goodB2G1+0x6c>
     1bc:      	b	0x1c0 <_goodB2G1+0x74>
     1c0:      	add	x0, sp, #16
     1c4:      	mov	w1, #0
     1c8:      	mov	x2, #40
     1cc:      	bl	0x1cc <_goodB2G1+0x80>
     1d0:      	ldr	w8, [sp, #12]
     1d4:      	subs	w8, w8, #0
     1d8:      	cset	w8, lt
     1dc:      	tbnz	w8, #0, 0x24c <_goodB2G1+0x100>
     1e0:      	b	0x1e4 <_goodB2G1+0x98>
     1e4:      	ldr	w8, [sp, #12]
     1e8:      	subs	w8, w8, #10
     1ec:      	cset	w8, ge
     1f0:      	tbnz	w8, #0, 0x24c <_goodB2G1+0x100>
     1f4:      	b	0x1f8 <_goodB2G1+0xac>
     1f8:      	ldrsw	x10, [sp, #12]
     1fc:      	add	x9, sp, #16
     200:      	mov	w8, #1
     204:      	str	w8, [x9, x10, lsl #2]
     208:      	str	wzr, [sp, #8]
     20c:      	b	0x210 <_goodB2G1+0xc4>
     210:      	ldr	w8, [sp, #8]
     214:      	subs	w8, w8, #10
     218:      	cset	w8, ge
     21c:      	tbnz	w8, #0, 0x248 <_goodB2G1+0xfc>
     220:      	b	0x224 <_goodB2G1+0xd8>
     224:      	ldrsw	x9, [sp, #8]
     228:      	add	x8, sp, #16
     22c:      	ldr	w0, [x8, x9, lsl #2]
     230:      	bl	0x230 <_goodB2G1+0xe4>
     234:      	b	0x238 <_goodB2G1+0xec>
     238:      	ldr	w8, [sp, #8]
     23c:      	add	w8, w8, #1
     240:      	str	w8, [sp, #8]
     244:      	b	0x210 <_goodB2G1+0xc4>
     248:      	b	0x25c <_goodB2G1+0x110>
     24c:      	adrp	x0, 0x0 <_goodB2G1+0x100>
     250:      	add	x0, x0, #0
     254:      	bl	0x254 <_goodB2G1+0x108>
     258:      	b	0x25c <_goodB2G1+0x110>
     25c:      	ldur	x9, [x29, #-8]
     260:      	adrp	x8, 0x0 <_goodB2G1+0x114>
     264:      	ldr	x8, [x8]
     268:      	ldr	x8, [x8]
     26c:      	subs	x8, x8, x9
     270:      	cset	w8, eq
     274:      	tbnz	w8, #0, 0x280 <_goodB2G1+0x134>
     278:      	b	0x27c <_goodB2G1+0x130>
     27c:      	bl	0x27c <_goodB2G1+0x130>
     280:      	ldp	x29, x30, [sp, #80]
     284:      	add	sp, sp, #96
     288:      	ret
