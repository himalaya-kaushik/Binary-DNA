
./data/binaries/CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_05.o:	file format mach-o arm64

Disassembly of section __TEXT,__text:

0000000000000000 <_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_05_bad>:
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

0000000000000164 <_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_05_good>:
     164:      	stp	x29, x30, [sp, #-16]!
     168:      	mov	x29, sp
     16c:      	bl	0x16c <_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_05_good+0x8>
     170:      	bl	0x170 <_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_05_good+0xc>
     174:      	bl	0x174 <_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_05_good+0x10>
     178:      	bl	0x178 <_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_05_good+0x14>
     17c:      	ldp	x29, x30, [sp], #16
     180:      	ret

0000000000000184 <_goodB2G1>:
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

000000000000030c <_goodB2G2>:
     30c:      	sub	sp, sp, #96
     310:      	stp	x29, x30, [sp, #80]
     314:      	add	x29, sp, #80
     318:      	adrp	x8, 0x0 <_goodB2G2+0xc>
     31c:      	ldr	x8, [x8]
     320:      	ldr	x8, [x8]
     324:      	stur	x8, [x29, #-8]
     328:      	mov	w8, #-1
     32c:      	str	w8, [sp, #12]
     330:      	adrp	x8, 0x0 <_goodB2G2+0x24>
     334:      	ldr	w8, [x8]
     338:      	subs	w8, w8, #0
     33c:      	cset	w8, eq
     340:      	tbnz	w8, #0, 0x39c <_goodB2G2+0x90>
     344:      	b	0x348 <_goodB2G2+0x3c>
     348:      	sub	x0, x29, #24
     34c:      	stur	xzr, [x29, #-24]
     350:      	stur	xzr, [x0, #6]
     354:      	adrp	x8, 0x0 <_goodB2G2+0x48>
     358:      	ldr	x8, [x8]
     35c:      	ldr	x2, [x8]
     360:      	mov	w1, #14
     364:      	bl	0x364 <_goodB2G2+0x58>
     368:      	subs	x8, x0, #0
     36c:      	cset	w8, eq
     370:      	tbnz	w8, #0, 0x388 <_goodB2G2+0x7c>
     374:      	b	0x378 <_goodB2G2+0x6c>
     378:      	sub	x0, x29, #24
     37c:      	bl	0x37c <_goodB2G2+0x70>
     380:      	str	w0, [sp, #12]
     384:      	b	0x398 <_goodB2G2+0x8c>
     388:      	adrp	x0, 0x0 <_goodB2G2+0x7c>
     38c:      	add	x0, x0, #0
     390:      	bl	0x390 <_goodB2G2+0x84>
     394:      	b	0x398 <_goodB2G2+0x8c>
     398:      	b	0x39c <_goodB2G2+0x90>
     39c:      	adrp	x8, 0x0 <_goodB2G2+0x90>
     3a0:      	ldr	w8, [x8]
     3a4:      	subs	w8, w8, #0
     3a8:      	cset	w8, eq
     3ac:      	tbnz	w8, #0, 0x454 <_goodB2G2+0x148>
     3b0:      	b	0x3b4 <_goodB2G2+0xa8>
     3b4:      	add	x0, sp, #16
     3b8:      	mov	w1, #0
     3bc:      	mov	x2, #40
     3c0:      	bl	0x3c0 <_goodB2G2+0xb4>
     3c4:      	ldr	w8, [sp, #12]
     3c8:      	subs	w8, w8, #0
     3cc:      	cset	w8, lt
     3d0:      	tbnz	w8, #0, 0x440 <_goodB2G2+0x134>
     3d4:      	b	0x3d8 <_goodB2G2+0xcc>
     3d8:      	ldr	w8, [sp, #12]
     3dc:      	subs	w8, w8, #10
     3e0:      	cset	w8, ge
     3e4:      	tbnz	w8, #0, 0x440 <_goodB2G2+0x134>
     3e8:      	b	0x3ec <_goodB2G2+0xe0>
     3ec:      	ldrsw	x10, [sp, #12]
     3f0:      	add	x9, sp, #16
     3f4:      	mov	w8, #1
     3f8:      	str	w8, [x9, x10, lsl #2]
     3fc:      	str	wzr, [sp, #8]
     400:      	b	0x404 <_goodB2G2+0xf8>
     404:      	ldr	w8, [sp, #8]
     408:      	subs	w8, w8, #10
     40c:      	cset	w8, ge
     410:      	tbnz	w8, #0, 0x43c <_goodB2G2+0x130>
     414:      	b	0x418 <_goodB2G2+0x10c>
     418:      	ldrsw	x9, [sp, #8]
     41c:      	add	x8, sp, #16
     420:      	ldr	w0, [x8, x9, lsl #2]
     424:      	bl	0x424 <_goodB2G2+0x118>
     428:      	b	0x42c <_goodB2G2+0x120>
     42c:      	ldr	w8, [sp, #8]
     430:      	add	w8, w8, #1
     434:      	str	w8, [sp, #8]
     438:      	b	0x404 <_goodB2G2+0xf8>
     43c:      	b	0x450 <_goodB2G2+0x144>
     440:      	adrp	x0, 0x0 <_goodB2G2+0x134>
     444:      	add	x0, x0, #0
     448:      	bl	0x448 <_goodB2G2+0x13c>
     44c:      	b	0x450 <_goodB2G2+0x144>
     450:      	b	0x454 <_goodB2G2+0x148>
     454:      	ldur	x9, [x29, #-8]
     458:      	adrp	x8, 0x0 <_goodB2G2+0x14c>
     45c:      	ldr	x8, [x8]
     460:      	ldr	x8, [x8]
     464:      	subs	x8, x8, x9
     468:      	cset	w8, eq
     46c:      	tbnz	w8, #0, 0x478 <_goodB2G2+0x16c>
     470:      	b	0x474 <_goodB2G2+0x168>
     474:      	bl	0x474 <_goodB2G2+0x168>
     478:      	ldp	x29, x30, [sp, #80]
     47c:      	add	sp, sp, #96
     480:      	ret

0000000000000484 <_goodG2B1>:
     484:      	sub	sp, sp, #80
     488:      	stp	x29, x30, [sp, #64]
     48c:      	add	x29, sp, #64
     490:      	adrp	x8, 0x0 <_goodG2B1+0xc>
     494:      	ldr	x8, [x8]
     498:      	ldr	x8, [x8]
     49c:      	stur	x8, [x29, #-8]
     4a0:      	mov	w8, #-1
     4a4:      	str	w8, [sp, #12]
     4a8:      	adrp	x8, 0x0 <_goodG2B1+0x24>
     4ac:      	ldr	w8, [x8]
     4b0:      	subs	w8, w8, #0
     4b4:      	cset	w8, eq
     4b8:      	tbnz	w8, #0, 0x4d0 <_goodG2B1+0x4c>
     4bc:      	b	0x4c0 <_goodG2B1+0x3c>
     4c0:      	adrp	x0, 0x0 <_goodG2B1+0x3c>
     4c4:      	add	x0, x0, #0
     4c8:      	bl	0x4c8 <_goodG2B1+0x44>
     4cc:      	b	0x4dc <_goodG2B1+0x58>
     4d0:      	mov	w8, #7
     4d4:      	str	w8, [sp, #12]
     4d8:      	b	0x4dc <_goodG2B1+0x58>
     4dc:      	adrp	x8, 0x0 <_goodG2B1+0x58>
     4e0:      	ldr	w8, [x8]
     4e4:      	subs	w8, w8, #0
     4e8:      	cset	w8, eq
     4ec:      	tbnz	w8, #0, 0x580 <_goodG2B1+0xfc>
     4f0:      	b	0x4f4 <_goodG2B1+0x70>
     4f4:      	add	x0, sp, #16
     4f8:      	mov	w1, #0
     4fc:      	mov	x2, #40
     500:      	bl	0x500 <_goodG2B1+0x7c>
     504:      	ldr	w8, [sp, #12]
     508:      	subs	w8, w8, #0
     50c:      	cset	w8, lt
     510:      	tbnz	w8, #0, 0x56c <_goodG2B1+0xe8>
     514:      	b	0x518 <_goodG2B1+0x94>
     518:      	ldrsw	x10, [sp, #12]
     51c:      	add	x9, sp, #16
     520:      	mov	w8, #1
     524:      	str	w8, [x9, x10, lsl #2]
     528:      	str	wzr, [sp, #8]
     52c:      	b	0x530 <_goodG2B1+0xac>
     530:      	ldr	w8, [sp, #8]
     534:      	subs	w8, w8, #10
     538:      	cset	w8, ge
     53c:      	tbnz	w8, #0, 0x568 <_goodG2B1+0xe4>
     540:      	b	0x544 <_goodG2B1+0xc0>
     544:      	ldrsw	x9, [sp, #8]
     548:      	add	x8, sp, #16
     54c:      	ldr	w0, [x8, x9, lsl #2]
     550:      	bl	0x550 <_goodG2B1+0xcc>
     554:      	b	0x558 <_goodG2B1+0xd4>
     558:      	ldr	w8, [sp, #8]
     55c:      	add	w8, w8, #1
     560:      	str	w8, [sp, #8]
     564:      	b	0x530 <_goodG2B1+0xac>
     568:      	b	0x57c <_goodG2B1+0xf8>
     56c:      	adrp	x0, 0x0 <_goodG2B1+0xe8>
     570:      	add	x0, x0, #0
     574:      	bl	0x574 <_goodG2B1+0xf0>
     578:      	b	0x57c <_goodG2B1+0xf8>
     57c:      	b	0x580 <_goodG2B1+0xfc>
     580:      	ldur	x9, [x29, #-8]
     584:      	adrp	x8, 0x0 <_goodG2B1+0x100>
     588:      	ldr	x8, [x8]
     58c:      	ldr	x8, [x8]
     590:      	subs	x8, x8, x9
     594:      	cset	w8, eq
     598:      	tbnz	w8, #0, 0x5a4 <_goodG2B1+0x120>
     59c:      	b	0x5a0 <_goodG2B1+0x11c>
     5a0:      	bl	0x5a0 <_goodG2B1+0x11c>
     5a4:      	ldp	x29, x30, [sp, #64]
     5a8:      	add	sp, sp, #80
     5ac:      	ret

00000000000005b0 <_goodG2B2>:
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