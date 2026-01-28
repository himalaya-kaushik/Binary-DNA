
./data/binaries/CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_06.o:	file format mach-o arm64

Disassembly of section __TEXT,__text:

0000000000000000 <_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_06_bad>:
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

000000000000012c <_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_06_good>:
     12c:      	stp	x29, x30, [sp, #-16]!
     130:      	mov	x29, sp
     134:      	bl	0x134 <_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_06_good+0x8>
     138:      	bl	0x138 <_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_06_good+0xc>
     13c:      	bl	0x13c <_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_06_good+0x10>
     140:      	bl	0x140 <_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_06_good+0x14>
     144:      	ldp	x29, x30, [sp], #16
     148:      	ret

000000000000014c <_goodB2G1>:
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

000000000000028c <_goodB2G2>:
     28c:      	sub	sp, sp, #96
     290:      	stp	x29, x30, [sp, #80]
     294:      	add	x29, sp, #80
     298:      	adrp	x8, 0x0 <_goodB2G2+0xc>
     29c:      	ldr	x8, [x8]
     2a0:      	ldr	x8, [x8]
     2a4:      	stur	x8, [x29, #-8]
     2a8:      	mov	w8, #-1
     2ac:      	str	w8, [sp, #12]
     2b0:      	sub	x0, x29, #24
     2b4:      	stur	xzr, [x29, #-24]
     2b8:      	stur	xzr, [x0, #6]
     2bc:      	adrp	x8, 0x0 <_goodB2G2+0x30>
     2c0:      	ldr	x8, [x8]
     2c4:      	ldr	x2, [x8]
     2c8:      	mov	w1, #14
     2cc:      	bl	0x2cc <_goodB2G2+0x40>
     2d0:      	subs	x8, x0, #0
     2d4:      	cset	w8, eq
     2d8:      	tbnz	w8, #0, 0x2f0 <_goodB2G2+0x64>
     2dc:      	b	0x2e0 <_goodB2G2+0x54>
     2e0:      	sub	x0, x29, #24
     2e4:      	bl	0x2e4 <_goodB2G2+0x58>
     2e8:      	str	w0, [sp, #12]
     2ec:      	b	0x300 <_goodB2G2+0x74>
     2f0:      	adrp	x0, 0x0 <_goodB2G2+0x64>
     2f4:      	add	x0, x0, #0
     2f8:      	bl	0x2f8 <_goodB2G2+0x6c>
     2fc:      	b	0x300 <_goodB2G2+0x74>
     300:      	add	x0, sp, #16
     304:      	mov	w1, #0
     308:      	mov	x2, #40
     30c:      	bl	0x30c <_goodB2G2+0x80>
     310:      	ldr	w8, [sp, #12]
     314:      	subs	w8, w8, #0
     318:      	cset	w8, lt
     31c:      	tbnz	w8, #0, 0x38c <_goodB2G2+0x100>
     320:      	b	0x324 <_goodB2G2+0x98>
     324:      	ldr	w8, [sp, #12]
     328:      	subs	w8, w8, #10
     32c:      	cset	w8, ge
     330:      	tbnz	w8, #0, 0x38c <_goodB2G2+0x100>
     334:      	b	0x338 <_goodB2G2+0xac>
     338:      	ldrsw	x10, [sp, #12]
     33c:      	add	x9, sp, #16
     340:      	mov	w8, #1
     344:      	str	w8, [x9, x10, lsl #2]
     348:      	str	wzr, [sp, #8]
     34c:      	b	0x350 <_goodB2G2+0xc4>
     350:      	ldr	w8, [sp, #8]
     354:      	subs	w8, w8, #10
     358:      	cset	w8, ge
     35c:      	tbnz	w8, #0, 0x388 <_goodB2G2+0xfc>
     360:      	b	0x364 <_goodB2G2+0xd8>
     364:      	ldrsw	x9, [sp, #8]
     368:      	add	x8, sp, #16
     36c:      	ldr	w0, [x8, x9, lsl #2]
     370:      	bl	0x370 <_goodB2G2+0xe4>
     374:      	b	0x378 <_goodB2G2+0xec>
     378:      	ldr	w8, [sp, #8]
     37c:      	add	w8, w8, #1
     380:      	str	w8, [sp, #8]
     384:      	b	0x350 <_goodB2G2+0xc4>
     388:      	b	0x39c <_goodB2G2+0x110>
     38c:      	adrp	x0, 0x0 <_goodB2G2+0x100>
     390:      	add	x0, x0, #0
     394:      	bl	0x394 <_goodB2G2+0x108>
     398:      	b	0x39c <_goodB2G2+0x110>
     39c:      	ldur	x9, [x29, #-8]
     3a0:      	adrp	x8, 0x0 <_goodB2G2+0x114>
     3a4:      	ldr	x8, [x8]
     3a8:      	ldr	x8, [x8]
     3ac:      	subs	x8, x8, x9
     3b0:      	cset	w8, eq
     3b4:      	tbnz	w8, #0, 0x3c0 <_goodB2G2+0x134>
     3b8:      	b	0x3bc <_goodB2G2+0x130>
     3bc:      	bl	0x3bc <_goodB2G2+0x130>
     3c0:      	ldp	x29, x30, [sp, #80]
     3c4:      	add	sp, sp, #96
     3c8:      	ret

00000000000003cc <_goodG2B1>:
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

00000000000004b0 <_goodG2B2>:
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