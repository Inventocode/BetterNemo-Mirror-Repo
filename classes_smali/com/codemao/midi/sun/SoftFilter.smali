.class public Lcom/codemao/midi/sun/SoftFilter;
.super Ljava/lang/Object;
.source "SoftFilter.java"


# instance fields
.field private a0:F

.field private a1:F

.field private a2:F

.field private b1:F

.field private b2:F

.field private cutoff:D

.field private dirty:Z

.field private filtertype:I

.field private gain:F

.field private last_a0:F

.field private last_a1:F

.field private last_a2:F

.field private last_b1:F

.field private last_b2:F

.field private last_gain:F

.field private last_q:F

.field private last_set:Z

.field private last_wet:F

.field private q:F

.field private resonancedB:D

.field private samplerate:F

.field private wet:F

.field private x1:F

.field private x2:F

.field private xx1:F

.field private xx2:F

.field private y1:F

.field private y2:F

.field private yy1:F

.field private yy2:F


# direct methods
.method public constructor <init>(F)V
    .registers 4

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/codemao/midi/sun/SoftFilter;->filtertype:I

    const/high16 v1, 0x3f800000  # 1.0f

    .line 73
    iput v1, p0, Lcom/codemao/midi/sun/SoftFilter;->gain:F

    const/4 v1, 0x0

    .line 74
    iput v1, p0, Lcom/codemao/midi/sun/SoftFilter;->wet:F

    .line 75
    iput v1, p0, Lcom/codemao/midi/sun/SoftFilter;->last_wet:F

    .line 83
    iput-boolean v0, p0, Lcom/codemao/midi/sun/SoftFilter;->last_set:Z

    const-wide v0, 0x40e5888000000000L  # 44100.0

    .line 84
    iput-wide v0, p0, Lcom/codemao/midi/sun/SoftFilter;->cutoff:D

    const-wide/16 v0, 0x0

    .line 85
    iput-wide v0, p0, Lcom/codemao/midi/sun/SoftFilter;->resonancedB:D

    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lcom/codemao/midi/sun/SoftFilter;->dirty:Z

    .line 89
    iput p1, p0, Lcom/codemao/midi/sun/SoftFilter;->samplerate:F

    .line 90
    iput-boolean v0, p0, Lcom/codemao/midi/sun/SoftFilter;->dirty:Z

    return-void
.end method

.method private sinh(D)D
    .registers 5

    .line 286
    invoke-static {p1, p2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    neg-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->exp(D)D

    move-result-wide p1

    sub-double/2addr v0, p1

    const-wide/high16 p1, 0x3fe0000000000000L  # 0.5

    mul-double v0, v0, p1

    return-wide v0
.end method


# virtual methods
.method public filter1(Lcom/codemao/midi/sun/SoftAudioBuffer;)V
    .registers 21

    move-object/from16 v0, p0

    .line 546
    iget-boolean v1, v0, Lcom/codemao/midi/sun/SoftFilter;->dirty:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 547
    invoke-virtual/range {p0 .. p0}, Lcom/codemao/midi/sun/SoftFilter;->filter1calc()V

    .line 548
    iput-boolean v2, v0, Lcom/codemao/midi/sun/SoftFilter;->dirty:Z

    .line 550
    :cond_c
    iget-boolean v1, v0, Lcom/codemao/midi/sun/SoftFilter;->last_set:Z

    if-nez v1, :cond_23

    .line 551
    iget v1, v0, Lcom/codemao/midi/sun/SoftFilter;->a0:F

    iput v1, v0, Lcom/codemao/midi/sun/SoftFilter;->last_a0:F

    .line 552
    iget v1, v0, Lcom/codemao/midi/sun/SoftFilter;->q:F

    iput v1, v0, Lcom/codemao/midi/sun/SoftFilter;->last_q:F

    .line 553
    iget v1, v0, Lcom/codemao/midi/sun/SoftFilter;->gain:F

    iput v1, v0, Lcom/codemao/midi/sun/SoftFilter;->last_gain:F

    .line 554
    iget v1, v0, Lcom/codemao/midi/sun/SoftFilter;->wet:F

    iput v1, v0, Lcom/codemao/midi/sun/SoftFilter;->last_wet:F

    const/4 v1, 0x1

    .line 555
    iput-boolean v1, v0, Lcom/codemao/midi/sun/SoftFilter;->last_set:Z

    .line 558
    :cond_23
    iget v1, v0, Lcom/codemao/midi/sun/SoftFilter;->wet:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_30

    iget v1, v0, Lcom/codemao/midi/sun/SoftFilter;->last_wet:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_df

    .line 560
    :cond_30
    invoke-virtual/range {p1 .. p1}, Lcom/codemao/midi/sun/SoftAudioBuffer;->array()[F

    move-result-object v1

    .line 561
    array-length v4, v1

    .line 562
    iget v5, v0, Lcom/codemao/midi/sun/SoftFilter;->last_a0:F

    .line 563
    iget v6, v0, Lcom/codemao/midi/sun/SoftFilter;->last_q:F

    .line 564
    iget v7, v0, Lcom/codemao/midi/sun/SoftFilter;->last_gain:F

    .line 565
    iget v8, v0, Lcom/codemao/midi/sun/SoftFilter;->last_wet:F

    .line 566
    iget v9, v0, Lcom/codemao/midi/sun/SoftFilter;->a0:F

    sub-float/2addr v9, v5

    int-to-float v10, v4

    div-float/2addr v9, v10

    .line 567
    iget v11, v0, Lcom/codemao/midi/sun/SoftFilter;->q:F

    sub-float/2addr v11, v6

    div-float/2addr v11, v10

    .line 568
    iget v12, v0, Lcom/codemao/midi/sun/SoftFilter;->gain:F

    sub-float/2addr v12, v7

    div-float/2addr v12, v10

    .line 569
    iget v13, v0, Lcom/codemao/midi/sun/SoftFilter;->wet:F

    sub-float/2addr v13, v8

    div-float/2addr v13, v10

    .line 570
    iget v10, v0, Lcom/codemao/midi/sun/SoftFilter;->y2:F

    .line 571
    iget v14, v0, Lcom/codemao/midi/sun/SoftFilter;->y1:F

    const/high16 v15, 0x3f800000  # 1.0f

    cmpl-float v16, v13, v3

    if-eqz v16, :cond_83

    :goto_58
    if-ge v2, v4, :cond_c1

    add-float/2addr v5, v9

    add-float/2addr v6, v11

    add-float/2addr v7, v12

    add-float/2addr v8, v13

    mul-float v16, v6, v5

    sub-float v16, v15, v16

    mul-float v14, v14, v16

    .line 580
    aget v17, v1, v2

    sub-float v17, v17, v10

    mul-float v17, v17, v5

    add-float v14, v14, v17

    mul-float v16, v16, v10

    mul-float v10, v5, v14

    add-float v10, v16, v10

    mul-float v16, v10, v7

    mul-float v16, v16, v8

    .line 582
    aget v17, v1, v2

    sub-float v18, v15, v8

    mul-float v17, v17, v18

    add-float v16, v16, v17

    aput v16, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_58

    :cond_83
    cmpl-float v8, v9, v3

    if-nez v8, :cond_a4

    cmpl-float v8, v11, v3

    if-nez v8, :cond_a4

    mul-float v6, v6, v5

    sub-float/2addr v15, v6

    :goto_8e
    if-ge v2, v4, :cond_c1

    mul-float v14, v14, v15

    .line 587
    aget v6, v1, v2

    sub-float/2addr v6, v10

    mul-float v6, v6, v5

    add-float/2addr v14, v6

    mul-float v10, v10, v15

    mul-float v6, v5, v14

    add-float/2addr v10, v6

    mul-float v6, v10, v7

    .line 589
    aput v6, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8e

    :cond_a4
    :goto_a4
    if-ge v2, v4, :cond_c1

    add-float/2addr v5, v9

    add-float/2addr v6, v11

    add-float/2addr v7, v12

    mul-float v8, v6, v5

    sub-float v8, v15, v8

    mul-float v14, v14, v8

    .line 597
    aget v13, v1, v2

    sub-float/2addr v13, v10

    mul-float v13, v13, v5

    add-float/2addr v14, v13

    mul-float v8, v8, v10

    mul-float v10, v5, v14

    add-float/2addr v10, v8

    mul-float v8, v10, v7

    .line 599
    aput v8, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a4

    .line 603
    :cond_c1
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    const-wide v4, 0x3e45798ee2308c3aL  # 1.0E-8

    cmpg-double v6, v1, v4

    if-gez v6, :cond_d0

    const/4 v10, 0x0

    .line 605
    :cond_d0
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    cmpg-double v6, v1, v4

    if-gez v6, :cond_da

    goto :goto_db

    :cond_da
    move v3, v14

    .line 607
    :goto_db
    iput v10, v0, Lcom/codemao/midi/sun/SoftFilter;->y2:F

    .line 608
    iput v3, v0, Lcom/codemao/midi/sun/SoftFilter;->y1:F

    .line 611
    :cond_df
    iget v1, v0, Lcom/codemao/midi/sun/SoftFilter;->a0:F

    iput v1, v0, Lcom/codemao/midi/sun/SoftFilter;->last_a0:F

    .line 612
    iget v1, v0, Lcom/codemao/midi/sun/SoftFilter;->q:F

    iput v1, v0, Lcom/codemao/midi/sun/SoftFilter;->last_q:F

    .line 613
    iget v1, v0, Lcom/codemao/midi/sun/SoftFilter;->gain:F

    iput v1, v0, Lcom/codemao/midi/sun/SoftFilter;->last_gain:F

    .line 614
    iget v1, v0, Lcom/codemao/midi/sun/SoftFilter;->wet:F

    iput v1, v0, Lcom/codemao/midi/sun/SoftFilter;->last_wet:F

    return-void
.end method

.method public filter1calc()V
    .registers 9

    .line 527
    iget-wide v0, p0, Lcom/codemao/midi/sun/SoftFilter;->cutoff:D

    const-wide/high16 v2, 0x405e000000000000L  # 120.0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_a

    .line 528
    iput-wide v2, p0, Lcom/codemao/midi/sun/SoftFilter;->cutoff:D

    :cond_a
    const-wide v0, 0x401d524fe24f89f2L  # 7.3303828583761845

    .line 529
    iget-wide v2, p0, Lcom/codemao/midi/sun/SoftFilter;->cutoff:D

    mul-double v2, v2, v0

    iget v0, p0, Lcom/codemao/midi/sun/SoftFilter;->samplerate:F

    float-to-double v0, v0

    div-double/2addr v2, v0

    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    cmpl-double v4, v2, v0

    if-lez v4, :cond_1e

    move-wide v2, v0

    .line 532
    :cond_1e
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    sub-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v4, 0x3ff921fb54442d18L  # 1.5707963267948966

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double v0, v0, v4

    double-to-float v0, v0

    iput v0, p0, Lcom/codemao/midi/sun/SoftFilter;->a0:F

    .line 533
    iget-wide v0, p0, Lcom/codemao/midi/sun/SoftFilter;->resonancedB:D

    const-wide/16 v4, 0x0

    cmpg-double v6, v0, v4

    if-gez v6, :cond_3f

    .line 534
    iput-wide v4, p0, Lcom/codemao/midi/sun/SoftFilter;->resonancedB:D

    .line 535
    :cond_3f
    iget-wide v0, p0, Lcom/codemao/midi/sun/SoftFilter;->resonancedB:D

    const-wide/high16 v4, 0x4034000000000000L  # 20.0

    cmpl-double v6, v0, v4

    if-lez v6, :cond_49

    .line 536
    iput-wide v4, p0, Lcom/codemao/midi/sun/SoftFilter;->resonancedB:D

    :cond_49
    const-wide/high16 v0, 0x3fe0000000000000L  # 0.5

    .line 537
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iget-wide v6, p0, Lcom/codemao/midi/sun/SoftFilter;->resonancedB:D

    div-double/2addr v6, v4

    neg-double v4, v6

    const-wide/high16 v6, 0x4024000000000000L  # 10.0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double v0, v0, v4

    double-to-float v0, v0

    iput v0, p0, Lcom/codemao/midi/sun/SoftFilter;->q:F

    .line 538
    iget-wide v0, p0, Lcom/codemao/midi/sun/SoftFilter;->resonancedB:D

    neg-double v0, v0

    const-wide/high16 v4, 0x4044000000000000L  # 40.0

    div-double/2addr v0, v4

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/codemao/midi/sun/SoftFilter;->gain:F

    .line 539
    iget v0, p0, Lcom/codemao/midi/sun/SoftFilter;->wet:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_8a

    .line 540
    iget-wide v0, p0, Lcom/codemao/midi/sun/SoftFilter;->resonancedB:D

    const-wide v4, 0x3ee4f8b588e368f1L  # 1.0E-5

    cmpl-double v6, v0, v4

    if-gtz v6, :cond_86

    const-wide v0, 0x3fefffffca501acbL  # 0.9999999

    cmpg-double v4, v2, v0

    if-gez v4, :cond_8a

    :cond_86
    const/high16 v0, 0x3f800000  # 1.0f

    .line 541
    iput v0, p0, Lcom/codemao/midi/sun/SoftFilter;->wet:F

    :cond_8a
    return-void
.end method

.method public filter2(Lcom/codemao/midi/sun/SoftAudioBuffer;)V
    .registers 29

    move-object/from16 v0, p0

    .line 415
    invoke-virtual/range {p1 .. p1}, Lcom/codemao/midi/sun/SoftAudioBuffer;->array()[F

    move-result-object v1

    .line 417
    iget-boolean v2, v0, Lcom/codemao/midi/sun/SoftFilter;->dirty:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_10

    .line 418
    invoke-virtual/range {p0 .. p0}, Lcom/codemao/midi/sun/SoftFilter;->filter2calc()V

    .line 419
    iput-boolean v3, v0, Lcom/codemao/midi/sun/SoftFilter;->dirty:Z

    .line 421
    :cond_10
    iget-boolean v2, v0, Lcom/codemao/midi/sun/SoftFilter;->last_set:Z

    if-nez v2, :cond_37

    .line 422
    iget v2, v0, Lcom/codemao/midi/sun/SoftFilter;->a0:F

    iput v2, v0, Lcom/codemao/midi/sun/SoftFilter;->last_a0:F

    .line 423
    iget v2, v0, Lcom/codemao/midi/sun/SoftFilter;->a1:F

    iput v2, v0, Lcom/codemao/midi/sun/SoftFilter;->last_a1:F

    .line 424
    iget v2, v0, Lcom/codemao/midi/sun/SoftFilter;->a2:F

    iput v2, v0, Lcom/codemao/midi/sun/SoftFilter;->last_a2:F

    .line 425
    iget v2, v0, Lcom/codemao/midi/sun/SoftFilter;->b1:F

    iput v2, v0, Lcom/codemao/midi/sun/SoftFilter;->last_b1:F

    .line 426
    iget v2, v0, Lcom/codemao/midi/sun/SoftFilter;->b2:F

    iput v2, v0, Lcom/codemao/midi/sun/SoftFilter;->last_b2:F

    .line 427
    iget v2, v0, Lcom/codemao/midi/sun/SoftFilter;->q:F

    iput v2, v0, Lcom/codemao/midi/sun/SoftFilter;->last_q:F

    .line 428
    iget v2, v0, Lcom/codemao/midi/sun/SoftFilter;->gain:F

    iput v2, v0, Lcom/codemao/midi/sun/SoftFilter;->last_gain:F

    .line 429
    iget v2, v0, Lcom/codemao/midi/sun/SoftFilter;->wet:F

    iput v2, v0, Lcom/codemao/midi/sun/SoftFilter;->last_wet:F

    const/4 v2, 0x1

    .line 430
    iput-boolean v2, v0, Lcom/codemao/midi/sun/SoftFilter;->last_set:Z

    .line 433
    :cond_37
    iget v2, v0, Lcom/codemao/midi/sun/SoftFilter;->wet:F

    const/4 v4, 0x0

    cmpl-float v5, v2, v4

    if-gtz v5, :cond_44

    iget v5, v0, Lcom/codemao/midi/sun/SoftFilter;->last_wet:F

    cmpl-float v5, v5, v4

    if-lez v5, :cond_17f

    .line 435
    :cond_44
    array-length v5, v1

    .line 436
    iget v6, v0, Lcom/codemao/midi/sun/SoftFilter;->last_a0:F

    .line 437
    iget v7, v0, Lcom/codemao/midi/sun/SoftFilter;->last_a1:F

    .line 438
    iget v8, v0, Lcom/codemao/midi/sun/SoftFilter;->last_a2:F

    .line 439
    iget v9, v0, Lcom/codemao/midi/sun/SoftFilter;->last_b1:F

    .line 440
    iget v10, v0, Lcom/codemao/midi/sun/SoftFilter;->last_b2:F

    .line 441
    iget v11, v0, Lcom/codemao/midi/sun/SoftFilter;->last_gain:F

    .line 442
    iget v12, v0, Lcom/codemao/midi/sun/SoftFilter;->last_wet:F

    .line 443
    iget v13, v0, Lcom/codemao/midi/sun/SoftFilter;->a0:F

    sub-float/2addr v13, v6

    int-to-float v14, v5

    div-float/2addr v13, v14

    .line 444
    iget v15, v0, Lcom/codemao/midi/sun/SoftFilter;->a1:F

    sub-float/2addr v15, v7

    div-float/2addr v15, v14

    .line 445
    iget v3, v0, Lcom/codemao/midi/sun/SoftFilter;->a2:F

    sub-float/2addr v3, v8

    div-float/2addr v3, v14

    .line 446
    iget v4, v0, Lcom/codemao/midi/sun/SoftFilter;->b1:F

    sub-float/2addr v4, v9

    div-float/2addr v4, v14

    move/from16 v17, v9

    .line 447
    iget v9, v0, Lcom/codemao/midi/sun/SoftFilter;->b2:F

    sub-float/2addr v9, v10

    div-float/2addr v9, v14

    move/from16 v18, v10

    .line 448
    iget v10, v0, Lcom/codemao/midi/sun/SoftFilter;->gain:F

    sub-float/2addr v10, v11

    div-float/2addr v10, v14

    sub-float/2addr v2, v12

    div-float/2addr v2, v14

    .line 450
    iget v14, v0, Lcom/codemao/midi/sun/SoftFilter;->x1:F

    move/from16 v19, v12

    .line 451
    iget v12, v0, Lcom/codemao/midi/sun/SoftFilter;->x2:F

    move/from16 v20, v12

    .line 452
    iget v12, v0, Lcom/codemao/midi/sun/SoftFilter;->y1:F

    move/from16 v21, v12

    .line 453
    iget v12, v0, Lcom/codemao/midi/sun/SoftFilter;->y2:F

    const/16 v16, 0x0

    cmpl-float v22, v2, v16

    if-eqz v22, :cond_d1

    move/from16 v22, v14

    move v14, v12

    move v12, v11

    move v11, v8

    move v8, v7

    move v7, v6

    const/4 v6, 0x0

    :goto_8e
    if-ge v6, v5, :cond_c9

    add-float/2addr v7, v13

    add-float/2addr v8, v15

    add-float/2addr v11, v3

    add-float v17, v17, v4

    add-float v18, v18, v9

    add-float/2addr v12, v10

    add-float v19, v19, v2

    .line 464
    aget v23, v1, v6

    mul-float v24, v7, v23

    mul-float v25, v8, v22

    add-float v24, v24, v25

    mul-float v20, v20, v11

    add-float v24, v24, v20

    mul-float v20, v17, v21

    sub-float v24, v24, v20

    mul-float v14, v14, v18

    sub-float v14, v24, v14

    mul-float v20, v14, v12

    mul-float v20, v20, v19

    const/high16 v24, 0x3f800000  # 1.0f

    sub-float v24, v24, v19

    mul-float v24, v24, v23

    add-float v20, v20, v24

    .line 466
    aput v20, v1, v6

    add-int/lit8 v6, v6, 0x1

    move/from16 v20, v22

    move/from16 v22, v23

    move/from16 v26, v21

    move/from16 v21, v14

    move/from16 v14, v26

    goto :goto_8e

    :cond_c9
    move/from16 v12, v20

    move/from16 v19, v22

    const/16 v16, 0x0

    goto/16 :goto_142

    :cond_d1
    const/16 v16, 0x0

    cmpl-float v2, v13, v16

    if-nez v2, :cond_10f

    cmpl-float v2, v15, v16

    if-nez v2, :cond_10f

    cmpl-float v2, v3, v16

    if-nez v2, :cond_10f

    cmpl-float v2, v4, v16

    if-nez v2, :cond_10f

    cmpl-float v2, v9, v16

    if-nez v2, :cond_10f

    move v2, v12

    move/from16 v12, v20

    const/4 v3, 0x0

    :goto_eb
    if-ge v3, v5, :cond_10b

    .line 475
    aget v4, v1, v3

    mul-float v9, v6, v4

    mul-float v10, v7, v14

    add-float/2addr v9, v10

    mul-float v12, v12, v8

    add-float/2addr v9, v12

    mul-float v10, v17, v21

    sub-float/2addr v9, v10

    mul-float v10, v18, v2

    sub-float v12, v9, v10

    mul-float v2, v12, v11

    .line 477
    aput v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    move/from16 v2, v21

    move/from16 v21, v12

    move v12, v14

    move v14, v4

    goto :goto_eb

    :cond_10b
    move/from16 v19, v14

    move v14, v2

    goto :goto_142

    :cond_10f
    move/from16 v19, v14

    const/4 v2, 0x0

    move v14, v12

    move/from16 v12, v20

    :goto_115
    if-ge v2, v5, :cond_142

    add-float/2addr v6, v13

    add-float/2addr v7, v15

    add-float/2addr v8, v3

    add-float v17, v17, v4

    add-float v18, v18, v9

    add-float/2addr v11, v10

    .line 491
    aget v20, v1, v2

    mul-float v22, v6, v20

    mul-float v23, v7, v19

    add-float v22, v22, v23

    mul-float v12, v12, v8

    add-float v22, v22, v12

    mul-float v12, v17, v21

    sub-float v22, v22, v12

    mul-float v14, v14, v18

    sub-float v12, v22, v14

    mul-float v14, v12, v11

    .line 493
    aput v14, v1, v2

    add-int/lit8 v2, v2, 0x1

    move/from16 v14, v21

    move/from16 v21, v12

    move/from16 v12, v19

    move/from16 v19, v20

    goto :goto_115

    .line 501
    :cond_142
    :goto_142
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x3e45798ee2308c3aL  # 1.0E-8

    cmpg-double v5, v1, v3

    if-gez v5, :cond_152

    const/4 v1, 0x0

    goto :goto_154

    :cond_152
    move/from16 v1, v19

    .line 503
    :goto_154
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v5, v2

    cmpg-double v2, v5, v3

    if-gez v2, :cond_15e

    const/4 v12, 0x0

    .line 505
    :cond_15e
    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v5, v2

    cmpg-double v2, v5, v3

    if-gez v2, :cond_169

    const/4 v2, 0x0

    goto :goto_16b

    :cond_169
    move/from16 v2, v21

    .line 507
    :goto_16b
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v5, v5

    cmpg-double v7, v5, v3

    if-gez v7, :cond_176

    const/4 v4, 0x0

    goto :goto_177

    :cond_176
    move v4, v14

    .line 509
    :goto_177
    iput v1, v0, Lcom/codemao/midi/sun/SoftFilter;->x1:F

    .line 510
    iput v12, v0, Lcom/codemao/midi/sun/SoftFilter;->x2:F

    .line 511
    iput v2, v0, Lcom/codemao/midi/sun/SoftFilter;->y1:F

    .line 512
    iput v4, v0, Lcom/codemao/midi/sun/SoftFilter;->y2:F

    .line 515
    :cond_17f
    iget v1, v0, Lcom/codemao/midi/sun/SoftFilter;->a0:F

    iput v1, v0, Lcom/codemao/midi/sun/SoftFilter;->last_a0:F

    .line 516
    iget v1, v0, Lcom/codemao/midi/sun/SoftFilter;->a1:F

    iput v1, v0, Lcom/codemao/midi/sun/SoftFilter;->last_a1:F

    .line 517
    iget v1, v0, Lcom/codemao/midi/sun/SoftFilter;->a2:F

    iput v1, v0, Lcom/codemao/midi/sun/SoftFilter;->last_a2:F

    .line 518
    iget v1, v0, Lcom/codemao/midi/sun/SoftFilter;->b1:F

    iput v1, v0, Lcom/codemao/midi/sun/SoftFilter;->last_b1:F

    .line 519
    iget v1, v0, Lcom/codemao/midi/sun/SoftFilter;->b2:F

    iput v1, v0, Lcom/codemao/midi/sun/SoftFilter;->last_b2:F

    .line 520
    iget v1, v0, Lcom/codemao/midi/sun/SoftFilter;->q:F

    iput v1, v0, Lcom/codemao/midi/sun/SoftFilter;->last_q:F

    .line 521
    iget v1, v0, Lcom/codemao/midi/sun/SoftFilter;->gain:F

    iput v1, v0, Lcom/codemao/midi/sun/SoftFilter;->last_gain:F

    .line 522
    iget v1, v0, Lcom/codemao/midi/sun/SoftFilter;->wet:F

    iput v1, v0, Lcom/codemao/midi/sun/SoftFilter;->last_wet:F

    return-void
.end method

.method public filter2calc()V
    .registers 35

    move-object/from16 v0, p0

    .line 291
    iget-wide v1, v0, Lcom/codemao/midi/sun/SoftFilter;->resonancedB:D

    const-wide/16 v3, 0x0

    cmpg-double v5, v1, v3

    if-gez v5, :cond_b

    move-wide v1, v3

    :cond_b
    const-wide/high16 v5, 0x403e000000000000L  # 30.0

    cmpl-double v7, v1, v5

    if-lez v7, :cond_12

    move-wide v1, v5

    .line 296
    :cond_12
    iget v5, v0, Lcom/codemao/midi/sun/SoftFilter;->filtertype:I

    const/16 v6, 0x13

    const/4 v7, 0x3

    if-eq v5, v7, :cond_1b

    if-ne v5, v6, :cond_22

    :cond_1b
    const-wide v8, 0x3fe3333333333333L  # 0.6

    mul-double v1, v1, v8

    :cond_22
    const/16 v8, 0x21

    const-wide v9, 0x401921fb54442d18L  # 6.283185307179586

    const-wide/high16 v13, 0x4034000000000000L  # 20.0

    const-wide/high16 v6, 0x4024000000000000L  # 10.0

    const-wide v16, 0x400921fb54442d18L  # Math.PI

    const/high16 v15, 0x3f800000  # 1.0f

    const-wide/high16 v18, 0x4000000000000000L  # 2.0

    const-wide v20, 0x3fdccccccccccccdL  # 0.45

    const-wide/high16 v22, 0x3ff0000000000000L  # 1.0

    if-ne v5, v8, :cond_98

    .line 300
    iput v15, v0, Lcom/codemao/midi/sun/SoftFilter;->wet:F

    .line 301
    iget-wide v3, v0, Lcom/codemao/midi/sun/SoftFilter;->cutoff:D

    iget v5, v0, Lcom/codemao/midi/sun/SoftFilter;->samplerate:F

    float-to-double v11, v5

    div-double/2addr v3, v11

    cmpl-double v5, v3, v20

    if-lez v5, :cond_4d

    move-wide/from16 v3, v20

    :cond_4d
    div-double v11, v1, v13

    neg-double v11, v11

    .line 305
    invoke-static {v6, v7, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    mul-double v11, v11, v16

    mul-double v3, v3, v9

    .line 308
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    .line 309
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v30

    .line 310
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->log(D)D

    move-result-wide v32

    mul-double v32, v32, v11

    mul-double v32, v32, v3

    mul-double v3, v30, v18

    div-double v3, v32, v3

    invoke-direct {v0, v3, v4}, Lcom/codemao/midi/sun/SoftFilter;->sinh(D)D

    move-result-wide v3

    mul-double v3, v3, v30

    neg-double v11, v3

    add-double v30, v3, v22

    const-wide/high16 v26, -0x4000000000000000L  # -2.0

    mul-double v28, v28, v26

    sub-double v32, v22, v3

    div-double v30, v22, v30

    mul-double v9, v28, v30

    double-to-float v5, v9

    .line 320
    iput v5, v0, Lcom/codemao/midi/sun/SoftFilter;->b1:F

    mul-double v8, v32, v30

    double-to-float v5, v8

    .line 321
    iput v5, v0, Lcom/codemao/midi/sun/SoftFilter;->b2:F

    mul-double v3, v3, v30

    double-to-float v3, v3

    .line 322
    iput v3, v0, Lcom/codemao/midi/sun/SoftFilter;->a0:F

    const-wide/16 v3, 0x0

    mul-double v3, v3, v30

    double-to-float v3, v3

    .line 323
    iput v3, v0, Lcom/codemao/midi/sun/SoftFilter;->a1:F

    mul-double v11, v11, v30

    double-to-float v3, v11

    .line 324
    iput v3, v0, Lcom/codemao/midi/sun/SoftFilter;->a2:F

    .line 327
    :cond_98
    iget v3, v0, Lcom/codemao/midi/sun/SoftFilter;->filtertype:I

    const/16 v4, 0x31

    if-ne v3, v4, :cond_f3

    .line 328
    iput v15, v0, Lcom/codemao/midi/sun/SoftFilter;->wet:F

    .line 329
    iget-wide v3, v0, Lcom/codemao/midi/sun/SoftFilter;->cutoff:D

    iget v5, v0, Lcom/codemao/midi/sun/SoftFilter;->samplerate:F

    float-to-double v8, v5

    div-double/2addr v3, v8

    cmpl-double v5, v3, v20

    if-lez v5, :cond_ac

    move-wide/from16 v3, v20

    :cond_ac
    div-double v8, v1, v13

    neg-double v8, v8

    .line 333
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double v8, v8, v16

    const-wide v10, 0x401921fb54442d18L  # 6.283185307179586

    mul-double v3, v3, v10

    .line 336
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    .line 337
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    .line 338
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->log(D)D

    move-result-wide v28

    mul-double v28, v28, v8

    mul-double v28, v28, v3

    mul-double v3, v24, v18

    div-double v3, v28, v3

    invoke-direct {v0, v3, v4}, Lcom/codemao/midi/sun/SoftFilter;->sinh(D)D

    move-result-wide v3

    mul-double v24, v24, v3

    const-wide/high16 v3, -0x4000000000000000L  # -2.0

    mul-double v10, v10, v3

    add-double v3, v24, v22

    sub-double v8, v22, v24

    div-double v3, v22, v3

    mul-double v10, v10, v3

    double-to-float v5, v10

    .line 348
    iput v5, v0, Lcom/codemao/midi/sun/SoftFilter;->b1:F

    mul-double v8, v8, v3

    double-to-float v8, v8

    .line 349
    iput v8, v0, Lcom/codemao/midi/sun/SoftFilter;->b2:F

    mul-double v3, v3, v22

    double-to-float v3, v3

    .line 350
    iput v3, v0, Lcom/codemao/midi/sun/SoftFilter;->a0:F

    .line 351
    iput v5, v0, Lcom/codemao/midi/sun/SoftFilter;->a1:F

    .line 352
    iput v3, v0, Lcom/codemao/midi/sun/SoftFilter;->a2:F

    .line 355
    :cond_f3
    iget v3, v0, Lcom/codemao/midi/sun/SoftFilter;->filtertype:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_fb

    const/4 v4, 0x3

    if-ne v3, v4, :cond_157

    .line 356
    :cond_fb
    iget-wide v3, v0, Lcom/codemao/midi/sun/SoftFilter;->cutoff:D

    iget v5, v0, Lcom/codemao/midi/sun/SoftFilter;->samplerate:F

    float-to-double v8, v5

    div-double/2addr v3, v8

    cmpl-double v5, v3, v20

    if-lez v5, :cond_11d

    .line 358
    iget v3, v0, Lcom/codemao/midi/sun/SoftFilter;->wet:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_11a

    const-wide v8, 0x3ee4f8b588e368f1L  # 1.0E-5

    cmpg-double v3, v1, v8

    if-gez v3, :cond_118

    .line 360
    iput v4, v0, Lcom/codemao/midi/sun/SoftFilter;->wet:F

    goto :goto_11a

    .line 362
    :cond_118
    iput v15, v0, Lcom/codemao/midi/sun/SoftFilter;->wet:F

    :cond_11a
    :goto_11a
    move-wide/from16 v3, v20

    goto :goto_11f

    .line 366
    :cond_11d
    iput v15, v0, Lcom/codemao/midi/sun/SoftFilter;->wet:F

    :goto_11f
    mul-double v3, v3, v16

    .line 368
    invoke-static {v3, v4}, Ljava/lang/Math;->tan(D)D

    move-result-wide v3

    div-double v3, v22, v3

    mul-double v8, v3, v3

    div-double v10, v1, v13

    neg-double v10, v10

    .line 370
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    .line 371
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v24

    mul-double v24, v24, v10

    mul-double v24, v24, v3

    add-double v3, v24, v22

    add-double/2addr v3, v8

    div-double v3, v22, v3

    mul-double v10, v3, v18

    sub-double v28, v22, v8

    mul-double v6, v10, v28

    sub-double v24, v22, v24

    add-double v24, v24, v8

    mul-double v8, v3, v24

    double-to-float v3, v3

    .line 378
    iput v3, v0, Lcom/codemao/midi/sun/SoftFilter;->a0:F

    double-to-float v4, v10

    .line 379
    iput v4, v0, Lcom/codemao/midi/sun/SoftFilter;->a1:F

    .line 380
    iput v3, v0, Lcom/codemao/midi/sun/SoftFilter;->a2:F

    double-to-float v3, v6

    .line 381
    iput v3, v0, Lcom/codemao/midi/sun/SoftFilter;->b1:F

    double-to-float v3, v8

    .line 382
    iput v3, v0, Lcom/codemao/midi/sun/SoftFilter;->b2:F

    .line 386
    :cond_157
    iget v3, v0, Lcom/codemao/midi/sun/SoftFilter;->filtertype:I

    const/16 v4, 0x11

    if-eq v3, v4, :cond_161

    const/16 v4, 0x13

    if-ne v3, v4, :cond_1b6

    .line 387
    :cond_161
    iget-wide v3, v0, Lcom/codemao/midi/sun/SoftFilter;->cutoff:D

    iget v5, v0, Lcom/codemao/midi/sun/SoftFilter;->samplerate:F

    float-to-double v5, v5

    div-double/2addr v3, v5

    cmpl-double v5, v3, v20

    if-lez v5, :cond_16c

    goto :goto_16e

    :cond_16c
    move-wide/from16 v20, v3

    :goto_16e
    const-wide v3, 0x3f1a36e2eb1c432dL  # 1.0E-4

    cmpg-double v5, v20, v3

    if-gez v5, :cond_179

    move-wide/from16 v20, v3

    .line 392
    :cond_179
    iput v15, v0, Lcom/codemao/midi/sun/SoftFilter;->wet:F

    mul-double v20, v20, v16

    .line 393
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->tan(D)D

    move-result-wide v3

    mul-double v5, v3, v3

    div-double/2addr v1, v13

    neg-double v1, v1

    const-wide/high16 v7, 0x4024000000000000L  # 10.0

    .line 395
    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    .line 396
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    mul-double v7, v7, v1

    mul-double v7, v7, v3

    add-double v1, v7, v22

    add-double/2addr v1, v5

    div-double v1, v22, v1

    const-wide/high16 v3, -0x4000000000000000L  # -2.0

    mul-double v11, v1, v3

    mul-double v18, v18, v1

    sub-double v3, v5, v22

    mul-double v3, v3, v18

    sub-double v22, v22, v7

    add-double v22, v22, v5

    mul-double v5, v1, v22

    double-to-float v1, v1

    .line 403
    iput v1, v0, Lcom/codemao/midi/sun/SoftFilter;->a0:F

    double-to-float v2, v11

    .line 404
    iput v2, v0, Lcom/codemao/midi/sun/SoftFilter;->a1:F

    .line 405
    iput v1, v0, Lcom/codemao/midi/sun/SoftFilter;->a2:F

    double-to-float v1, v3

    .line 406
    iput v1, v0, Lcom/codemao/midi/sun/SoftFilter;->b1:F

    double-to-float v1, v5

    .line 407
    iput v1, v0, Lcom/codemao/midi/sun/SoftFilter;->b2:F

    :cond_1b6
    return-void
.end method

.method public filter4(Lcom/codemao/midi/sun/SoftAudioBuffer;)V
    .registers 35

    move-object/from16 v0, p0

    .line 150
    invoke-virtual/range {p1 .. p1}, Lcom/codemao/midi/sun/SoftAudioBuffer;->array()[F

    move-result-object v1

    .line 152
    iget-boolean v2, v0, Lcom/codemao/midi/sun/SoftFilter;->dirty:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_10

    .line 153
    invoke-virtual/range {p0 .. p0}, Lcom/codemao/midi/sun/SoftFilter;->filter2calc()V

    .line 154
    iput-boolean v3, v0, Lcom/codemao/midi/sun/SoftFilter;->dirty:Z

    .line 156
    :cond_10
    iget-boolean v2, v0, Lcom/codemao/midi/sun/SoftFilter;->last_set:Z

    if-nez v2, :cond_33

    .line 157
    iget v2, v0, Lcom/codemao/midi/sun/SoftFilter;->a0:F

    iput v2, v0, Lcom/codemao/midi/sun/SoftFilter;->last_a0:F

    .line 158
    iget v2, v0, Lcom/codemao/midi/sun/SoftFilter;->a1:F

    iput v2, v0, Lcom/codemao/midi/sun/SoftFilter;->last_a1:F

    .line 159
    iget v2, v0, Lcom/codemao/midi/sun/SoftFilter;->a2:F

    iput v2, v0, Lcom/codemao/midi/sun/SoftFilter;->last_a2:F

    .line 160
    iget v2, v0, Lcom/codemao/midi/sun/SoftFilter;->b1:F

    iput v2, v0, Lcom/codemao/midi/sun/SoftFilter;->last_b1:F

    .line 161
    iget v2, v0, Lcom/codemao/midi/sun/SoftFilter;->b2:F

    iput v2, v0, Lcom/codemao/midi/sun/SoftFilter;->last_b2:F

    .line 162
    iget v2, v0, Lcom/codemao/midi/sun/SoftFilter;->gain:F

    iput v2, v0, Lcom/codemao/midi/sun/SoftFilter;->last_gain:F

    .line 163
    iget v2, v0, Lcom/codemao/midi/sun/SoftFilter;->wet:F

    iput v2, v0, Lcom/codemao/midi/sun/SoftFilter;->last_wet:F

    const/4 v2, 0x1

    .line 164
    iput-boolean v2, v0, Lcom/codemao/midi/sun/SoftFilter;->last_set:Z

    .line 167
    :cond_33
    iget v2, v0, Lcom/codemao/midi/sun/SoftFilter;->wet:F

    const/4 v4, 0x0

    cmpl-float v5, v2, v4

    if-gtz v5, :cond_40

    iget v5, v0, Lcom/codemao/midi/sun/SoftFilter;->last_wet:F

    cmpl-float v5, v5, v4

    if-lez v5, :cond_217

    .line 169
    :cond_40
    array-length v5, v1

    .line 170
    iget v6, v0, Lcom/codemao/midi/sun/SoftFilter;->last_a0:F

    .line 171
    iget v7, v0, Lcom/codemao/midi/sun/SoftFilter;->last_a1:F

    .line 172
    iget v8, v0, Lcom/codemao/midi/sun/SoftFilter;->last_a2:F

    .line 173
    iget v9, v0, Lcom/codemao/midi/sun/SoftFilter;->last_b1:F

    .line 174
    iget v10, v0, Lcom/codemao/midi/sun/SoftFilter;->last_b2:F

    .line 175
    iget v11, v0, Lcom/codemao/midi/sun/SoftFilter;->last_gain:F

    .line 176
    iget v12, v0, Lcom/codemao/midi/sun/SoftFilter;->last_wet:F

    .line 177
    iget v13, v0, Lcom/codemao/midi/sun/SoftFilter;->a0:F

    sub-float/2addr v13, v6

    int-to-float v14, v5

    div-float/2addr v13, v14

    .line 178
    iget v15, v0, Lcom/codemao/midi/sun/SoftFilter;->a1:F

    sub-float/2addr v15, v7

    div-float/2addr v15, v14

    .line 179
    iget v3, v0, Lcom/codemao/midi/sun/SoftFilter;->a2:F

    sub-float/2addr v3, v8

    div-float/2addr v3, v14

    .line 180
    iget v4, v0, Lcom/codemao/midi/sun/SoftFilter;->b1:F

    sub-float/2addr v4, v9

    div-float/2addr v4, v14

    move/from16 v17, v9

    .line 181
    iget v9, v0, Lcom/codemao/midi/sun/SoftFilter;->b2:F

    sub-float/2addr v9, v10

    div-float/2addr v9, v14

    move/from16 v18, v10

    .line 182
    iget v10, v0, Lcom/codemao/midi/sun/SoftFilter;->gain:F

    sub-float/2addr v10, v11

    div-float/2addr v10, v14

    sub-float/2addr v2, v12

    div-float/2addr v2, v14

    .line 184
    iget v14, v0, Lcom/codemao/midi/sun/SoftFilter;->x1:F

    move/from16 v19, v14

    .line 185
    iget v14, v0, Lcom/codemao/midi/sun/SoftFilter;->x2:F

    move/from16 v20, v14

    .line 186
    iget v14, v0, Lcom/codemao/midi/sun/SoftFilter;->y1:F

    move/from16 v21, v14

    .line 187
    iget v14, v0, Lcom/codemao/midi/sun/SoftFilter;->y2:F

    move/from16 v22, v14

    .line 188
    iget v14, v0, Lcom/codemao/midi/sun/SoftFilter;->xx1:F

    move/from16 v23, v14

    .line 189
    iget v14, v0, Lcom/codemao/midi/sun/SoftFilter;->xx2:F

    move/from16 v24, v14

    .line 190
    iget v14, v0, Lcom/codemao/midi/sun/SoftFilter;->yy1:F

    move/from16 v25, v14

    .line 191
    iget v14, v0, Lcom/codemao/midi/sun/SoftFilter;->yy2:F

    const/high16 v26, 0x3f800000  # 1.0f

    const/16 v16, 0x0

    cmpl-float v27, v2, v16

    if-eqz v27, :cond_102

    move/from16 v27, v14

    move v14, v12

    move v12, v11

    move v11, v8

    move v8, v7

    move v7, v6

    const/4 v6, 0x0

    :goto_9c
    if-ge v6, v5, :cond_f4

    add-float/2addr v7, v13

    add-float/2addr v8, v15

    add-float/2addr v11, v3

    add-float v17, v17, v4

    add-float v18, v18, v9

    add-float/2addr v12, v10

    add-float/2addr v14, v2

    .line 202
    aget v28, v1, v6

    mul-float v29, v7, v28

    mul-float v30, v8, v19

    add-float v29, v29, v30

    mul-float v20, v20, v11

    add-float v29, v29, v20

    mul-float v20, v17, v21

    sub-float v29, v29, v20

    mul-float v22, v22, v18

    sub-float v20, v29, v22

    mul-float v22, v20, v12

    mul-float v22, v22, v14

    sub-float v29, v26, v14

    mul-float v30, v28, v29

    add-float v22, v22, v30

    mul-float v30, v7, v22

    mul-float v31, v8, v23

    add-float v30, v30, v31

    mul-float v24, v24, v11

    add-float v30, v30, v24

    mul-float v24, v17, v25

    sub-float v30, v30, v24

    mul-float v27, v27, v18

    sub-float v24, v30, v27

    mul-float v27, v24, v12

    mul-float v27, v27, v14

    mul-float v29, v29, v22

    add-float v27, v27, v29

    .line 210
    aput v27, v1, v6

    add-int/lit8 v6, v6, 0x1

    move/from16 v27, v25

    move/from16 v25, v24

    move/from16 v24, v23

    move/from16 v23, v22

    move/from16 v22, v21

    move/from16 v21, v20

    move/from16 v20, v19

    move/from16 v19, v28

    goto :goto_9c

    :cond_f4
    move/from16 v14, v19

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v27

    const/16 v16, 0x0

    goto/16 :goto_1d1

    :cond_102
    const/16 v16, 0x0

    cmpl-float v2, v13, v16

    if-nez v2, :cond_169

    cmpl-float v2, v15, v16

    if-nez v2, :cond_169

    cmpl-float v2, v3, v16

    if-nez v2, :cond_169

    cmpl-float v2, v4, v16

    if-nez v2, :cond_169

    cmpl-float v2, v9, v16

    if-nez v2, :cond_169

    move v2, v14

    move/from16 v14, v19

    const/4 v3, 0x0

    :goto_11c
    if-ge v3, v5, :cond_167

    .line 219
    aget v4, v1, v3

    mul-float v9, v6, v4

    mul-float v10, v7, v14

    add-float/2addr v9, v10

    mul-float v20, v20, v8

    add-float v9, v9, v20

    mul-float v10, v17, v21

    sub-float/2addr v9, v10

    mul-float v10, v18, v22

    sub-float/2addr v9, v10

    mul-float v10, v9, v11

    mul-float v10, v10, v12

    sub-float v13, v26, v12

    mul-float v15, v4, v13

    add-float/2addr v10, v15

    mul-float v15, v6, v10

    mul-float v19, v7, v23

    add-float v15, v15, v19

    mul-float v24, v24, v8

    add-float v15, v15, v24

    mul-float v19, v17, v25

    sub-float v15, v15, v19

    mul-float v2, v2, v18

    sub-float v2, v15, v2

    mul-float v15, v2, v11

    mul-float v15, v15, v12

    mul-float v13, v13, v10

    add-float/2addr v15, v13

    .line 227
    aput v15, v1, v3

    add-int/lit8 v3, v3, 0x1

    move/from16 v20, v14

    move/from16 v22, v21

    move/from16 v24, v23

    move v14, v4

    move/from16 v21, v9

    move/from16 v23, v10

    move/from16 v32, v25

    move/from16 v25, v2

    move/from16 v2, v32

    goto :goto_11c

    :cond_167
    move v4, v2

    goto :goto_1cb

    :cond_169
    const/4 v2, 0x0

    move/from16 v32, v19

    move/from16 v19, v14

    move/from16 v14, v32

    :goto_170
    if-ge v2, v5, :cond_1c9

    add-float/2addr v6, v13

    add-float/2addr v7, v15

    add-float/2addr v8, v3

    add-float v17, v17, v4

    add-float v18, v18, v9

    add-float/2addr v11, v10

    .line 241
    aget v27, v1, v2

    mul-float v28, v6, v27

    mul-float v29, v7, v14

    add-float v28, v28, v29

    mul-float v20, v20, v8

    add-float v28, v28, v20

    mul-float v20, v17, v21

    sub-float v28, v28, v20

    mul-float v22, v22, v18

    sub-float v20, v28, v22

    mul-float v22, v20, v11

    mul-float v22, v22, v12

    sub-float v28, v26, v12

    mul-float v29, v27, v28

    add-float v22, v22, v29

    mul-float v29, v6, v22

    mul-float v30, v7, v23

    add-float v29, v29, v30

    mul-float v24, v24, v8

    add-float v29, v29, v24

    mul-float v24, v17, v25

    sub-float v29, v29, v24

    mul-float v19, v19, v18

    sub-float v19, v29, v19

    mul-float v24, v19, v11

    mul-float v24, v24, v12

    mul-float v28, v28, v22

    add-float v24, v24, v28

    .line 249
    aput v24, v1, v2

    add-int/lit8 v2, v2, 0x1

    move/from16 v24, v23

    move/from16 v23, v22

    move/from16 v22, v21

    move/from16 v21, v20

    move/from16 v20, v14

    move/from16 v14, v27

    move/from16 v32, v25

    move/from16 v25, v19

    move/from16 v19, v32

    goto :goto_170

    :cond_1c9
    move/from16 v4, v19

    :goto_1cb
    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    .line 257
    :goto_1d1
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v5, v5

    const-wide v7, 0x3e45798ee2308c3aL  # 1.0E-8

    cmpg-double v9, v5, v7

    if-gez v9, :cond_1e0

    const/4 v14, 0x0

    .line 259
    :cond_1e0
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v5, v5

    cmpg-double v9, v5, v7

    if-gez v9, :cond_1eb

    const/4 v5, 0x0

    goto :goto_1ed

    :cond_1eb
    move/from16 v5, v20

    .line 261
    :goto_1ed
    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v9, v6

    cmpg-double v6, v9, v7

    if-gez v6, :cond_1f8

    const/4 v6, 0x0

    goto :goto_1fa

    :cond_1f8
    move/from16 v6, v21

    .line 263
    :goto_1fa
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-double v9, v9

    cmpg-double v11, v9, v7

    if-gez v11, :cond_205

    const/4 v7, 0x0

    goto :goto_207

    :cond_205
    move/from16 v7, v22

    .line 265
    :goto_207
    iput v14, v0, Lcom/codemao/midi/sun/SoftFilter;->x1:F

    .line 266
    iput v5, v0, Lcom/codemao/midi/sun/SoftFilter;->x2:F

    .line 267
    iput v6, v0, Lcom/codemao/midi/sun/SoftFilter;->y1:F

    .line 268
    iput v7, v0, Lcom/codemao/midi/sun/SoftFilter;->y2:F

    .line 269
    iput v1, v0, Lcom/codemao/midi/sun/SoftFilter;->xx1:F

    .line 270
    iput v2, v0, Lcom/codemao/midi/sun/SoftFilter;->xx2:F

    .line 271
    iput v3, v0, Lcom/codemao/midi/sun/SoftFilter;->yy1:F

    .line 272
    iput v4, v0, Lcom/codemao/midi/sun/SoftFilter;->yy2:F

    .line 275
    :cond_217
    iget v1, v0, Lcom/codemao/midi/sun/SoftFilter;->a0:F

    iput v1, v0, Lcom/codemao/midi/sun/SoftFilter;->last_a0:F

    .line 276
    iget v1, v0, Lcom/codemao/midi/sun/SoftFilter;->a1:F

    iput v1, v0, Lcom/codemao/midi/sun/SoftFilter;->last_a1:F

    .line 277
    iget v1, v0, Lcom/codemao/midi/sun/SoftFilter;->a2:F

    iput v1, v0, Lcom/codemao/midi/sun/SoftFilter;->last_a2:F

    .line 278
    iget v1, v0, Lcom/codemao/midi/sun/SoftFilter;->b1:F

    iput v1, v0, Lcom/codemao/midi/sun/SoftFilter;->last_b1:F

    .line 279
    iget v1, v0, Lcom/codemao/midi/sun/SoftFilter;->b2:F

    iput v1, v0, Lcom/codemao/midi/sun/SoftFilter;->last_b2:F

    .line 280
    iget v1, v0, Lcom/codemao/midi/sun/SoftFilter;->gain:F

    iput v1, v0, Lcom/codemao/midi/sun/SoftFilter;->last_gain:F

    .line 281
    iget v1, v0, Lcom/codemao/midi/sun/SoftFilter;->wet:F

    iput v1, v0, Lcom/codemao/midi/sun/SoftFilter;->last_wet:F

    return-void
.end method

.method public processAudio(Lcom/codemao/midi/sun/SoftAudioBuffer;)V
    .registers 4

    .line 132
    iget v0, p0, Lcom/codemao/midi/sun/SoftFilter;->filtertype:I

    if-nez v0, :cond_7

    .line 133
    invoke-virtual {p0, p1}, Lcom/codemao/midi/sun/SoftFilter;->filter1(Lcom/codemao/midi/sun/SoftAudioBuffer;)V

    .line 134
    :cond_7
    iget v0, p0, Lcom/codemao/midi/sun/SoftFilter;->filtertype:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 135
    invoke-virtual {p0, p1}, Lcom/codemao/midi/sun/SoftFilter;->filter2(Lcom/codemao/midi/sun/SoftAudioBuffer;)V

    .line 136
    :cond_f
    iget v0, p0, Lcom/codemao/midi/sun/SoftFilter;->filtertype:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_18

    .line 137
    invoke-virtual {p0, p1}, Lcom/codemao/midi/sun/SoftFilter;->filter2(Lcom/codemao/midi/sun/SoftAudioBuffer;)V

    .line 138
    :cond_18
    iget v0, p0, Lcom/codemao/midi/sun/SoftFilter;->filtertype:I

    const/16 v1, 0x21

    if-ne v0, v1, :cond_21

    .line 139
    invoke-virtual {p0, p1}, Lcom/codemao/midi/sun/SoftFilter;->filter2(Lcom/codemao/midi/sun/SoftAudioBuffer;)V

    .line 140
    :cond_21
    iget v0, p0, Lcom/codemao/midi/sun/SoftFilter;->filtertype:I

    const/16 v1, 0x31

    if-ne v0, v1, :cond_2a

    .line 141
    invoke-virtual {p0, p1}, Lcom/codemao/midi/sun/SoftFilter;->filter2(Lcom/codemao/midi/sun/SoftAudioBuffer;)V

    .line 142
    :cond_2a
    iget v0, p0, Lcom/codemao/midi/sun/SoftFilter;->filtertype:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_32

    .line 143
    invoke-virtual {p0, p1}, Lcom/codemao/midi/sun/SoftFilter;->filter4(Lcom/codemao/midi/sun/SoftAudioBuffer;)V

    .line 144
    :cond_32
    iget v0, p0, Lcom/codemao/midi/sun/SoftFilter;->filtertype:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_3b

    .line 145
    invoke-virtual {p0, p1}, Lcom/codemao/midi/sun/SoftFilter;->filter4(Lcom/codemao/midi/sun/SoftAudioBuffer;)V

    :cond_3b
    return-void
.end method

.method public reset()V
    .registers 3

    const/4 v0, 0x1

    .line 108
    iput-boolean v0, p0, Lcom/codemao/midi/sun/SoftFilter;->dirty:Z

    const/4 v0, 0x0

    .line 109
    iput-boolean v0, p0, Lcom/codemao/midi/sun/SoftFilter;->last_set:Z

    const/4 v0, 0x0

    .line 110
    iput v0, p0, Lcom/codemao/midi/sun/SoftFilter;->x1:F

    .line 111
    iput v0, p0, Lcom/codemao/midi/sun/SoftFilter;->x2:F

    .line 112
    iput v0, p0, Lcom/codemao/midi/sun/SoftFilter;->y1:F

    .line 113
    iput v0, p0, Lcom/codemao/midi/sun/SoftFilter;->y2:F

    .line 114
    iput v0, p0, Lcom/codemao/midi/sun/SoftFilter;->xx1:F

    .line 115
    iput v0, p0, Lcom/codemao/midi/sun/SoftFilter;->xx2:F

    .line 116
    iput v0, p0, Lcom/codemao/midi/sun/SoftFilter;->yy1:F

    .line 117
    iput v0, p0, Lcom/codemao/midi/sun/SoftFilter;->yy2:F

    .line 118
    iput v0, p0, Lcom/codemao/midi/sun/SoftFilter;->wet:F

    const/high16 v1, 0x3f800000  # 1.0f

    .line 119
    iput v1, p0, Lcom/codemao/midi/sun/SoftFilter;->gain:F

    .line 120
    iput v0, p0, Lcom/codemao/midi/sun/SoftFilter;->a0:F

    .line 121
    iput v0, p0, Lcom/codemao/midi/sun/SoftFilter;->a1:F

    .line 122
    iput v0, p0, Lcom/codemao/midi/sun/SoftFilter;->a2:F

    .line 123
    iput v0, p0, Lcom/codemao/midi/sun/SoftFilter;->b1:F

    .line 124
    iput v0, p0, Lcom/codemao/midi/sun/SoftFilter;->b2:F

    return-void
.end method

.method public setFilterType(I)V
    .registers 2

    .line 128
    iput p1, p0, Lcom/codemao/midi/sun/SoftFilter;->filtertype:I

    return-void
.end method

.method public setFrequency(D)V
    .registers 6

    .line 94
    iget-wide v0, p0, Lcom/codemao/midi/sun/SoftFilter;->cutoff:D

    cmpl-double v2, v0, p1

    if-nez v2, :cond_7

    return-void

    .line 96
    :cond_7
    iput-wide p1, p0, Lcom/codemao/midi/sun/SoftFilter;->cutoff:D

    const/4 p1, 0x1

    .line 97
    iput-boolean p1, p0, Lcom/codemao/midi/sun/SoftFilter;->dirty:Z

    return-void
.end method

.method public setResonance(D)V
    .registers 6

    .line 101
    iget-wide v0, p0, Lcom/codemao/midi/sun/SoftFilter;->resonancedB:D

    cmpl-double v2, v0, p1

    if-nez v2, :cond_7

    return-void

    .line 103
    :cond_7
    iput-wide p1, p0, Lcom/codemao/midi/sun/SoftFilter;->resonancedB:D

    const/4 p1, 0x1

    .line 104
    iput-boolean p1, p0, Lcom/codemao/midi/sun/SoftFilter;->dirty:Z

    return-void
.end method
