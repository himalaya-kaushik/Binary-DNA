     144:      	sub	sp, sp, #80
     148:      	stp	x29, x30, [sp, #64]
     14c:      	add	x29, sp, #64
     150:      	adrp	x8, 0x0 <_goodG2B+0xc>
     154:      	ldr	x8, [x8]
     158:      	ldr	x8, [x8]
     15c:      	stur	x8, [x29, #-8]
     160:      	mov	w8, #-1
     164:      	str	w8, [sp, #12]
     168:      	mov	w8, #7
     16c:      	str	w8, [sp, #12]
     170:      	add	x0, sp, #16
     174:      	mov	w1, #0
     178:      	mov	x2, #40
     17c:      	bl	0x17c <_goodG2B+0x38>
     180:      	ldr	w8, [sp, #12]
     184:      	subs	w8, w8, #0
     188:      	cset	w8, lt
     18c:      	tbnz	w8, #0, 0x1e8 <_goodG2B+0xa4>
     190:      	b	0x194 <_goodG2B+0x50>
     194:      	ldrsw	x10, [sp, #12]
     198:      	add	x9, sp, #16
     19c:      	mov	w8, #1
     1a0:      	str	w8, [x9, x10, lsl #2]
     1a4:      	str	wzr, [sp, #8]
     1a8:      	b	0x1ac <_goodG2B+0x68>
     1ac:      	ldr	w8, [sp, #8]
     1b0:      	subs	w8, w8, #10
     1b4:      	cset	w8, ge
     1b8:      	tbnz	w8, #0, 0x1e4 <_goodG2B+0xa0>
     1bc:      	b	0x1c0 <_goodG2B+0x7c>
     1c0:      	ldrsw	x9, [sp, #8]
     1c4:      	add	x8, sp, #16
     1c8:      	ldr	w0, [x8, x9, lsl #2]
     1cc:      	bl	0x1cc <_goodG2B+0x88>
     1d0:      	b	0x1d4 <_goodG2B+0x90>
     1d4:      	ldr	w8, [sp, #8]
     1d8:      	add	w8, w8, #1
     1dc:      	str	w8, [sp, #8]
     1e0:      	b	0x1ac <_goodG2B+0x68>
     1e4:      	b	0x1f8 <_goodG2B+0xb4>
     1e8:      	adrp	x0, 0x0 <_goodG2B+0xa4>
     1ec:      	add	x0, x0, #0
     1f0:      	bl	0x1f0 <_goodG2B+0xac>
     1f4:      	b	0x1f8 <_goodG2B+0xb4>
     1f8:      	ldur	x9, [x29, #-8]
     1fc:      	adrp	x8, 0x0 <_goodG2B+0xb8>
     200:      	ldr	x8, [x8]
     204:      	ldr	x8, [x8]
     208:      	subs	x8, x8, x9
     20c:      	cset	w8, eq
     210:      	tbnz	w8, #0, 0x21c <_goodG2B+0xd8>
     214:      	b	0x218 <_goodG2B+0xd4>
     218:      	bl	0x218 <_goodG2B+0xd4>
     21c:      	ldp	x29, x30, [sp, #64]
     220:      	add	sp, sp, #80
     224:      	ret
