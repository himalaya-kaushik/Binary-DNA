
./data/binaries/CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_01.o:	file format mach-o arm64

Disassembly of section __TEXT,__text:

0000000000000000 <_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_01_bad>:
       0:      	sub	sp, sp, #96
       4:      	stp	x29, x30, [sp, #80]
       8:      	add	x29, sp, #80
       c:      	adrp	x8, 0x0 <ltmp0+0xc>
      10:      	ldr	x8, [x8]
      14:      	ldr	x8, [x8]
      18:      	stur	x8, [x29, #-8]
      1c:      	mov	w8, #-1
      20:      	str	w8, [sp, #12]
      24:      	sub	x0, x29, #24
      28:      	stur	xzr, [x29, #-24]
      2c:      	stur	xzr, [x0, #6]
      30:      	adrp	x8, 0x0 <ltmp0+0x30>
      34:      	ldr	x8, [x8]
      38:      	ldr	x2, [x8]
      3c:      	mov	w1, #14
      40:      	bl	0x40 <ltmp0+0x40>
      44:      	subs	x8, x0, #0
      48:      	cset	w8, eq
      4c:      	tbnz	w8, #0, 0x64 <ltmp0+0x64>
      50:      	b	0x54 <ltmp0+0x54>
      54:      	sub	x0, x29, #24
      58:      	bl	0x58 <ltmp0+0x58>
      5c:      	str	w0, [sp, #12]
      60:      	b	0x74 <ltmp0+0x74>
      64:      	adrp	x0, 0x0 <ltmp0+0x64>
      68:      	add	x0, x0, #0
      6c:      	bl	0x6c <ltmp0+0x6c>
      70:      	b	0x74 <ltmp0+0x74>
      74:      	add	x0, sp, #16
      78:      	mov	w1, #0
      7c:      	mov	x2, #40
      80:      	bl	0x80 <ltmp0+0x80>
      84:      	ldr	w8, [sp, #12]
      88:      	subs	w8, w8, #0
      8c:      	cset	w8, lt
      90:      	tbnz	w8, #0, 0xec <ltmp0+0xec>
      94:      	b	0x98 <ltmp0+0x98>
      98:      	ldrsw	x10, [sp, #12]
      9c:      	add	x9, sp, #16
      a0:      	mov	w8, #1
      a4:      	str	w8, [x9, x10, lsl #2]
      a8:      	str	wzr, [sp, #8]
      ac:      	b	0xb0 <ltmp0+0xb0>
      b0:      	ldr	w8, [sp, #8]
      b4:      	subs	w8, w8, #10
      b8:      	cset	w8, ge
      bc:      	tbnz	w8, #0, 0xe8 <ltmp0+0xe8>
      c0:      	b	0xc4 <ltmp0+0xc4>
      c4:      	ldrsw	x9, [sp, #8]
      c8:      	add	x8, sp, #16
      cc:      	ldr	w0, [x8, x9, lsl #2]
      d0:      	bl	0xd0 <ltmp0+0xd0>
      d4:      	b	0xd8 <ltmp0+0xd8>
      d8:      	ldr	w8, [sp, #8]
      dc:      	add	w8, w8, #1
      e0:      	str	w8, [sp, #8]
      e4:      	b	0xb0 <ltmp0+0xb0>
      e8:      	b	0xfc <ltmp0+0xfc>
      ec:      	adrp	x0, 0x0 <ltmp0+0xec>
      f0:      	add	x0, x0, #0
      f4:      	bl	0xf4 <ltmp0+0xf4>
      f8:      	b	0xfc <ltmp0+0xfc>
      fc:      	ldur	x9, [x29, #-8]
     100:      	adrp	x8, 0x0 <ltmp0+0x100>
     104:      	ldr	x8, [x8]
     108:      	ldr	x8, [x8]
     10c:      	subs	x8, x8, x9
     110:      	cset	w8, eq
     114:      	tbnz	w8, #0, 0x120 <ltmp0+0x120>
     118:      	b	0x11c <ltmp0+0x11c>
     11c:      	bl	0x11c <ltmp0+0x11c>
     120:      	ldp	x29, x30, [sp, #80]
     124:      	add	sp, sp, #96
     128:      	ret

000000000000012c <_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_01_good>:
     12c:      	stp	x29, x30, [sp, #-16]!
     130:      	mov	x29, sp
     134:      	bl	0x134 <_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_01_good+0x8>
     138:      	bl	0x138 <_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_01_good+0xc>
     13c:      	ldp	x29, x30, [sp], #16
     140:      	ret

0000000000000144 <_goodG2B>:
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

0000000000000228 <_goodB2G>:
     228:      	sub	sp, sp, #96
     22c:      	stp	x29, x30, [sp, #80]
     230:      	add	x29, sp, #80
     234:      	adrp	x8, 0x0 <_goodB2G+0xc>
     238:      	ldr	x8, [x8]
     23c:      	ldr	x8, [x8]
     240:      	stur	x8, [x29, #-8]
     244:      	mov	w8, #-1
     248:      	str	w8, [sp, #12]
     24c:      	sub	x0, x29, #24
     250:      	stur	xzr, [x29, #-24]
     254:      	stur	xzr, [x0, #6]
     258:      	adrp	x8, 0x0 <_goodB2G+0x30>
     25c:      	ldr	x8, [x8]
     260:      	ldr	x2, [x8]
     264:      	mov	w1, #14
     268:      	bl	0x268 <_goodB2G+0x40>
     26c:      	subs	x8, x0, #0
     270:      	cset	w8, eq
     274:      	tbnz	w8, #0, 0x28c <_goodB2G+0x64>
     278:      	b	0x27c <_goodB2G+0x54>
     27c:      	sub	x0, x29, #24
     280:      	bl	0x280 <_goodB2G+0x58>
     284:      	str	w0, [sp, #12]
     288:      	b	0x29c <_goodB2G+0x74>
     28c:      	adrp	x0, 0x0 <_goodB2G+0x64>
     290:      	add	x0, x0, #0
     294:      	bl	0x294 <_goodB2G+0x6c>
     298:      	b	0x29c <_goodB2G+0x74>
     29c:      	add	x0, sp, #16
     2a0:      	mov	w1, #0
     2a4:      	mov	x2, #40
     2a8:      	bl	0x2a8 <_goodB2G+0x80>
     2ac:      	ldr	w8, [sp, #12]
     2b0:      	subs	w8, w8, #0
     2b4:      	cset	w8, lt
     2b8:      	tbnz	w8, #0, 0x328 <_goodB2G+0x100>
     2bc:      	b	0x2c0 <_goodB2G+0x98>
     2c0:      	ldr	w8, [sp, #12]
     2c4:      	subs	w8, w8, #10
     2c8:      	cset	w8, ge
     2cc:      	tbnz	w8, #0, 0x328 <_goodB2G+0x100>
     2d0:      	b	0x2d4 <_goodB2G+0xac>
     2d4:      	ldrsw	x10, [sp, #12]
     2d8:      	add	x9, sp, #16
     2dc:      	mov	w8, #1
     2e0:      	str	w8, [x9, x10, lsl #2]
     2e4:      	str	wzr, [sp, #8]
     2e8:      	b	0x2ec <_goodB2G+0xc4>
     2ec:      	ldr	w8, [sp, #8]
     2f0:      	subs	w8, w8, #10
     2f4:      	cset	w8, ge
     2f8:      	tbnz	w8, #0, 0x324 <_goodB2G+0xfc>
     2fc:      	b	0x300 <_goodB2G+0xd8>
     300:      	ldrsw	x9, [sp, #8]
     304:      	add	x8, sp, #16
     308:      	ldr	w0, [x8, x9, lsl #2]
     30c:      	bl	0x30c <_goodB2G+0xe4>
     310:      	b	0x314 <_goodB2G+0xec>
     314:      	ldr	w8, [sp, #8]
     318:      	add	w8, w8, #1
     31c:      	str	w8, [sp, #8]
     320:      	b	0x2ec <_goodB2G+0xc4>
     324:      	b	0x338 <_goodB2G+0x110>
     328:      	adrp	x0, 0x0 <_goodB2G+0x100>
     32c:      	add	x0, x0, #0
     330:      	bl	0x330 <_goodB2G+0x108>
     334:      	b	0x338 <_goodB2G+0x110>
     338:      	ldur	x9, [x29, #-8]
     33c:      	adrp	x8, 0x0 <_goodB2G+0x114>
     340:      	ldr	x8, [x8]
     344:      	ldr	x8, [x8]
     348:      	subs	x8, x8, x9
     34c:      	cset	w8, eq
     350:      	tbnz	w8, #0, 0x35c <_goodB2G+0x134>
     354:      	b	0x358 <_goodB2G+0x130>
     358:      	bl	0x358 <_goodB2G+0x130>
     35c:      	ldp	x29, x30, [sp, #80]
     360:      	add	sp, sp, #96
     364:      	ret