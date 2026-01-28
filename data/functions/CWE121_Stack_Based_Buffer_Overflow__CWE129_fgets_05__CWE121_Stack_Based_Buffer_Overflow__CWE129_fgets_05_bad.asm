       0:      	sub	sp, sp, #96
       4:      	stp	x29, x30, [sp, #80]
       8:      	add	x29, sp, #80
       c:      	adrp	x8, 0x0 <ltmp0+0xc>
      10:      	ldr	x8, [x8]
      14:      	ldr	x8, [x8]
      18:      	stur	x8, [x29, #-8]
      1c:      	mov	w8, #-1
      20:      	str	w8, [sp, #12]
      24:      	adrp	x8, 0x0 <ltmp0+0x24>
      28:      	ldr	w8, [x8]
      2c:      	subs	w8, w8, #0
      30:      	cset	w8, eq
      34:      	tbnz	w8, #0, 0x90 <ltmp0+0x90>
      38:      	b	0x3c <ltmp0+0x3c>
      3c:      	sub	x0, x29, #24
      40:      	stur	xzr, [x29, #-24]
      44:      	stur	xzr, [x0, #6]
      48:      	adrp	x8, 0x0 <ltmp0+0x48>
      4c:      	ldr	x8, [x8]
      50:      	ldr	x2, [x8]
      54:      	mov	w1, #14
      58:      	bl	0x58 <ltmp0+0x58>
      5c:      	subs	x8, x0, #0
      60:      	cset	w8, eq
      64:      	tbnz	w8, #0, 0x7c <ltmp0+0x7c>
      68:      	b	0x6c <ltmp0+0x6c>
      6c:      	sub	x0, x29, #24
      70:      	bl	0x70 <ltmp0+0x70>
      74:      	str	w0, [sp, #12]
      78:      	b	0x8c <ltmp0+0x8c>
      7c:      	adrp	x0, 0x0 <ltmp0+0x7c>
      80:      	add	x0, x0, #0
      84:      	bl	0x84 <ltmp0+0x84>
      88:      	b	0x8c <ltmp0+0x8c>
      8c:      	b	0x90 <ltmp0+0x90>
      90:      	adrp	x8, 0x0 <ltmp0+0x90>
      94:      	ldr	w8, [x8]
      98:      	subs	w8, w8, #0
      9c:      	cset	w8, eq
      a0:      	tbnz	w8, #0, 0x134 <ltmp0+0x134>
      a4:      	b	0xa8 <ltmp0+0xa8>
      a8:      	add	x0, sp, #16
      ac:      	mov	w1, #0
      b0:      	mov	x2, #40
      b4:      	bl	0xb4 <ltmp0+0xb4>
      b8:      	ldr	w8, [sp, #12]
      bc:      	subs	w8, w8, #0
      c0:      	cset	w8, lt
      c4:      	tbnz	w8, #0, 0x120 <ltmp0+0x120>
      c8:      	b	0xcc <ltmp0+0xcc>
      cc:      	ldrsw	x10, [sp, #12]
      d0:      	add	x9, sp, #16
      d4:      	mov	w8, #1
      d8:      	str	w8, [x9, x10, lsl #2]
      dc:      	str	wzr, [sp, #8]
      e0:      	b	0xe4 <ltmp0+0xe4>
      e4:      	ldr	w8, [sp, #8]
      e8:      	subs	w8, w8, #10
      ec:      	cset	w8, ge
      f0:      	tbnz	w8, #0, 0x11c <ltmp0+0x11c>
      f4:      	b	0xf8 <ltmp0+0xf8>
      f8:      	ldrsw	x9, [sp, #8]
      fc:      	add	x8, sp, #16
     100:      	ldr	w0, [x8, x9, lsl #2]
     104:      	bl	0x104 <ltmp0+0x104>
     108:      	b	0x10c <ltmp0+0x10c>
     10c:      	ldr	w8, [sp, #8]
     110:      	add	w8, w8, #1
     114:      	str	w8, [sp, #8]
     118:      	b	0xe4 <ltmp0+0xe4>
     11c:      	b	0x130 <ltmp0+0x130>
     120:      	adrp	x0, 0x0 <ltmp0+0x120>
     124:      	add	x0, x0, #0
     128:      	bl	0x128 <ltmp0+0x128>
     12c:      	b	0x130 <ltmp0+0x130>
     130:      	b	0x134 <ltmp0+0x134>
     134:      	ldur	x9, [x29, #-8]
     138:      	adrp	x8, 0x0 <ltmp0+0x138>
     13c:      	ldr	x8, [x8]
     140:      	ldr	x8, [x8]
     144:      	subs	x8, x8, x9
     148:      	cset	w8, eq
     14c:      	tbnz	w8, #0, 0x158 <ltmp0+0x158>
     150:      	b	0x154 <ltmp0+0x154>
     154:      	bl	0x154 <ltmp0+0x154>
     158:      	ldp	x29, x30, [sp, #80]
     15c:      	add	sp, sp, #96
     160:      	ret
