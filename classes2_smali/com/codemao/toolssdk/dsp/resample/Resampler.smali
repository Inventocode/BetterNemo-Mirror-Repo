.class public Lcom/codemao/toolssdk/dsp/resample/Resampler;
.super Ljava/lang/Object;
.source "Resampler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/dsp/resample/Resampler$Result;
    }
.end annotation


# instance fields
.field private final Imp:[F

.field private final ImpD:[F

.field private final LpScl:F

.field private final Nmult:I

.field private final Nwing:I

.field private Time:D

.field private final X:[F

.field private final XSize:I

.field private final Xoff:I

.field private Xp:I

.field private Xread:I

.field private final Y:[F

.field private Yp:I

.field private final maxFactor:D

.field private final minFactor:D


# direct methods
.method public constructor <init>(ZDD)V
    .registers 21

    move-object v0, p0

    move-wide/from16 v1, p2

    move-wide/from16 v3, p4

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v5, 0x0

    cmpg-double v7, v1, v5

    if-lez v7, :cond_d5

    cmpg-double v7, v3, v5

    if-lez v7, :cond_d5

    cmpg-double v5, v3, v1

    if-ltz v5, :cond_cd

    .line 111
    iput-wide v1, v0, Lcom/codemao/toolssdk/dsp/resample/Resampler;->minFactor:D

    .line 112
    iput-wide v3, v0, Lcom/codemao/toolssdk/dsp/resample/Resampler;->maxFactor:D

    if-eqz p1, :cond_1f

    const/16 v5, 0x23

    goto :goto_21

    :cond_1f
    const/16 v5, 0xb

    .line 113
    :goto_21
    iput v5, v0, Lcom/codemao/toolssdk/dsp/resample/Resampler;->Nmult:I

    const/high16 v6, 0x3f800000  # 1.0f

    .line 114
    iput v6, v0, Lcom/codemao/toolssdk/dsp/resample/Resampler;->LpScl:F

    add-int/lit8 v5, v5, -0x1

    const/16 v6, 0x1000

    mul-int/lit16 v5, v5, 0x1000

    .line 115
    div-int/lit8 v5, v5, 0x2

    iput v5, v0, Lcom/codemao/toolssdk/dsp/resample/Resampler;->Nwing:I

    const-wide/high16 v11, 0x4018000000000000L  # 6.0

    .line 120
    new-array v14, v5, [D

    const-wide v9, 0x3fdccccccccccccdL  # 0.45

    const/16 v13, 0x1000

    move-object v7, v14

    move v8, v5

    .line 122
    invoke-static/range {v7 .. v13}, Lcom/codemao/toolssdk/dsp/resample/FilterKit;->lrsLpFilter([DIDDI)V

    .line 123
    new-array v7, v5, [F

    iput-object v7, v0, Lcom/codemao/toolssdk/dsp/resample/Resampler;->Imp:[F

    .line 124
    new-array v5, v5, [F

    iput-object v5, v0, Lcom/codemao/toolssdk/dsp/resample/Resampler;->ImpD:[F

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 126
    :goto_4b
    iget v8, v0, Lcom/codemao/toolssdk/dsp/resample/Resampler;->Nwing:I

    if-ge v7, v8, :cond_59

    .line 127
    iget-object v8, v0, Lcom/codemao/toolssdk/dsp/resample/Resampler;->Imp:[F

    aget-wide v9, v14, v7

    double-to-float v9, v9

    aput v9, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4b

    :cond_59
    const/4 v7, 0x0

    .line 132
    :goto_5a
    iget v8, v0, Lcom/codemao/toolssdk/dsp/resample/Resampler;->Nwing:I

    add-int/lit8 v9, v8, -0x1

    if-ge v7, v9, :cond_6f

    .line 133
    iget-object v8, v0, Lcom/codemao/toolssdk/dsp/resample/Resampler;->ImpD:[F

    iget-object v9, v0, Lcom/codemao/toolssdk/dsp/resample/Resampler;->Imp:[F

    add-int/lit8 v10, v7, 0x1

    aget v11, v9, v10

    aget v9, v9, v7

    sub-float/2addr v11, v9

    aput v11, v8, v7

    move v7, v10

    goto :goto_5a

    .line 137
    :cond_6f
    iget-object v7, v0, Lcom/codemao/toolssdk/dsp/resample/Resampler;->ImpD:[F

    add-int/lit8 v9, v8, -0x1

    iget-object v10, v0, Lcom/codemao/toolssdk/dsp/resample/Resampler;->Imp:[F

    add-int/lit8 v8, v8, -0x1

    aget v8, v10, v8

    neg-float v8, v8

    aput v8, v7, v9

    .line 140
    iget v7, v0, Lcom/codemao/toolssdk/dsp/resample/Resampler;->Nmult:I

    add-int/lit8 v7, v7, 0x1

    int-to-double v7, v7

    const-wide/high16 v9, 0x4000000000000000L  # 2.0

    div-double/2addr v7, v9

    const-wide/high16 v11, 0x3ff0000000000000L  # 1.0

    div-double v1, v11, v1

    invoke-static {v11, v12, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    mul-double v7, v7, v1

    const-wide/high16 v1, 0x4024000000000000L  # 10.0

    add-double/2addr v7, v1

    double-to-int v7, v7

    .line 141
    iget v8, v0, Lcom/codemao/toolssdk/dsp/resample/Resampler;->Nmult:I

    add-int/lit8 v8, v8, 0x1

    int-to-double v13, v8

    div-double/2addr v13, v9

    div-double v9, v11, v3

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    mul-double v13, v13, v8

    add-double/2addr v13, v1

    double-to-int v1, v13

    .line 142
    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/codemao/toolssdk/dsp/resample/Resampler;->Xoff:I

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0xa

    .line 149
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Lcom/codemao/toolssdk/dsp/resample/Resampler;->XSize:I

    add-int v6, v2, v1

    .line 150
    new-array v6, v6, [F

    iput-object v6, v0, Lcom/codemao/toolssdk/dsp/resample/Resampler;->X:[F

    .line 151
    iput v1, v0, Lcom/codemao/toolssdk/dsp/resample/Resampler;->Xp:I

    .line 152
    iput v1, v0, Lcom/codemao/toolssdk/dsp/resample/Resampler;->Xread:I

    int-to-double v6, v2

    mul-double v6, v6, v3

    const-wide/high16 v2, 0x4000000000000000L  # 2.0

    add-double/2addr v6, v2

    double-to-int v2, v6

    .line 157
    new-array v2, v2, [F

    iput-object v2, v0, Lcom/codemao/toolssdk/dsp/resample/Resampler;->Y:[F

    .line 158
    iput v5, v0, Lcom/codemao/toolssdk/dsp/resample/Resampler;->Yp:I

    int-to-double v1, v1

    .line 160
    iput-wide v1, v0, Lcom/codemao/toolssdk/dsp/resample/Resampler;->Time:D

    return-void

    .line 108
    :cond_cd
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "minFactor must be <= maxFactor"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    :cond_d5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "minFactor and maxFactor must be positive"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private lrsSrcUD([F[FDIIF[F[FZ)I
    .registers 38

    move-object/from16 v0, p0

    .line 443
    iget-wide v1, v0, Lcom/codemao/toolssdk/dsp/resample/Resampler;->Time:D

    const-wide/high16 v3, 0x3ff0000000000000L  # 1.0

    div-double v5, v3, p3

    const-wide/high16 v7, 0x40b0000000000000L  # 4096.0

    mul-double v9, p3, v7

    .line 450
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    move/from16 v9, p5

    int-to-double v9, v9

    add-double/2addr v9, v1

    const/4 v11, 0x0

    const/16 v22, 0x0

    :goto_17
    cmpg-double v11, v1, v9

    if-gez v11, :cond_50

    .line 454
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    sub-double v17, v1, v11

    sub-double v23, v3, v17

    double-to-int v15, v1

    add-int/lit8 v25, v15, 0x1

    const/16 v19, -0x1

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move/from16 v13, p6

    move/from16 v14, p10

    move/from16 v16, v15

    move-object/from16 v15, p1

    move-wide/from16 v20, v7

    .line 459
    invoke-static/range {v11 .. v21}, Lcom/codemao/toolssdk/dsp/resample/FilterKit;->lrsFilterUD([F[FIZ[FIDID)F

    move-result v26

    const/16 v19, 0x1

    move/from16 v16, v25

    move-wide/from16 v17, v23

    .line 461
    invoke-static/range {v11 .. v21}, Lcom/codemao/toolssdk/dsp/resample/FilterKit;->lrsFilterUD([F[FIZ[FIDID)F

    move-result v11

    add-float v26, v26, v11

    mul-float v26, v26, p7

    add-int/lit8 v11, v22, 0x1

    .line 465
    aput v26, p2, v22

    add-double/2addr v1, v5

    move/from16 v22, v11

    goto :goto_17

    .line 470
    :cond_50
    iput-wide v1, v0, Lcom/codemao/toolssdk/dsp/resample/Resampler;->Time:D

    return v22
.end method

.method private lrsSrcUp([F[FDIIF[F[FZ)I
    .registers 40

    move-object/from16 v0, p0

    .line 405
    iget-wide v1, v0, Lcom/codemao/toolssdk/dsp/resample/Resampler;->Time:D

    const-wide/high16 v3, 0x3ff0000000000000L  # 1.0

    div-double v5, v3, p3

    move/from16 v7, p5

    int-to-double v7, v7

    add-double/2addr v7, v1

    const/4 v9, 0x0

    :goto_d
    cmpg-double v10, v1, v7

    if-gez v10, :cond_48

    .line 413
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    sub-double v18, v1, v10

    sub-double v26, v3, v18

    double-to-int v10, v1

    add-int/lit8 v25, v10, 0x1

    const/16 v20, -0x1

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move/from16 v14, p6

    move/from16 v15, p10

    move-object/from16 v16, p1

    move/from16 v17, v10

    .line 418
    invoke-static/range {v12 .. v20}, Lcom/codemao/toolssdk/dsp/resample/FilterKit;->lrsFilterUp([F[FIZ[FIDI)F

    move-result v10

    const/16 v28, 0x1

    move-object/from16 v20, p8

    move-object/from16 v21, p9

    move/from16 v22, p6

    move/from16 v23, p10

    move-object/from16 v24, p1

    .line 420
    invoke-static/range {v20 .. v28}, Lcom/codemao/toolssdk/dsp/resample/FilterKit;->lrsFilterUp([F[FIZ[FIDI)F

    move-result v11

    add-float/2addr v10, v11

    mul-float v10, v10, p7

    add-int/lit8 v11, v9, 0x1

    .line 424
    aput v10, p2, v9

    add-double/2addr v1, v5

    move v9, v11

    goto :goto_d

    .line 428
    :cond_48
    iput-wide v1, v0, Lcom/codemao/toolssdk/dsp/resample/Resampler;->Time:D

    return v9
.end method


# virtual methods
.method public process(D[FIIZ[FII)Lcom/codemao/toolssdk/dsp/resample/Resampler$Result;
    .registers 16

    .line 380
    invoke-static {p3, p4, p5}, Ljava/nio/FloatBuffer;->wrap([FII)Ljava/nio/FloatBuffer;

    move-result-object p3

    .line 381
    invoke-static {p7, p8, p9}, Ljava/nio/FloatBuffer;->wrap([FII)Ljava/nio/FloatBuffer;

    move-result-object p5

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v4, p6

    move-object v5, p5

    .line 383
    invoke-virtual/range {v0 .. v5}, Lcom/codemao/toolssdk/dsp/resample/Resampler;->process(DLjava/nio/FloatBuffer;ZLjava/nio/FloatBuffer;)Z

    .line 385
    new-instance p1, Lcom/codemao/toolssdk/dsp/resample/Resampler$Result;

    invoke-virtual {p3}, Ljava/nio/FloatBuffer;->position()I

    move-result p2

    sub-int/2addr p2, p4

    invoke-virtual {p5}, Ljava/nio/FloatBuffer;->position()I

    move-result p3

    sub-int/2addr p3, p8

    invoke-direct {p1, p2, p3}, Lcom/codemao/toolssdk/dsp/resample/Resampler$Result;-><init>(II)V

    return-object p1
.end method

.method public process(DLcom/codemao/toolssdk/dsp/resample/SampleBuffers;Z)Z
    .registers 33

    move-object/from16 v11, p0

    move-wide/from16 v12, p1

    move-object/from16 v14, p3

    .line 176
    iget-wide v0, v11, Lcom/codemao/toolssdk/dsp/resample/Resampler;->minFactor:D

    cmpg-double v2, v12, v0

    if-ltz v2, :cond_168

    iget-wide v0, v11, Lcom/codemao/toolssdk/dsp/resample/Resampler;->maxFactor:D

    cmpl-double v2, v12, v0

    if-gtz v2, :cond_168

    .line 181
    invoke-interface/range {p3 .. p3}, Lcom/codemao/toolssdk/dsp/resample/SampleBuffers;->getOutputBufferLength()I

    move-result v15

    .line 182
    invoke-interface/range {p3 .. p3}, Lcom/codemao/toolssdk/dsp/resample/SampleBuffers;->getInputBufferLength()I

    move-result v10

    .line 184
    iget-object v9, v11, Lcom/codemao/toolssdk/dsp/resample/Resampler;->Imp:[F

    .line 185
    iget-object v8, v11, Lcom/codemao/toolssdk/dsp/resample/Resampler;->ImpD:[F

    .line 186
    iget v0, v11, Lcom/codemao/toolssdk/dsp/resample/Resampler;->LpScl:F

    .line 187
    iget v7, v11, Lcom/codemao/toolssdk/dsp/resample/Resampler;->Nwing:I

    const/16 v16, 0x0

    .line 195
    iget v1, v11, Lcom/codemao/toolssdk/dsp/resample/Resampler;->Yp:I

    const/4 v6, 0x0

    if-eqz v1, :cond_4e

    add-int/lit8 v2, v15, 0x0

    if-lez v2, :cond_4e

    .line 196
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 198
    iget-object v2, v11, Lcom/codemao/toolssdk/dsp/resample/Resampler;->Y:[F

    invoke-interface {v14, v2, v6, v1}, Lcom/codemao/toolssdk/dsp/resample/SampleBuffers;->consumeOutput([FII)V

    add-int/lit8 v2, v1, 0x0

    const/4 v3, 0x0

    .line 204
    :goto_39
    iget v4, v11, Lcom/codemao/toolssdk/dsp/resample/Resampler;->Yp:I

    sub-int v5, v4, v1

    if-ge v3, v5, :cond_4a

    .line 205
    iget-object v4, v11, Lcom/codemao/toolssdk/dsp/resample/Resampler;->Y:[F

    add-int v5, v3, v1

    aget v5, v4, v5

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    :cond_4a
    sub-int/2addr v4, v1

    .line 207
    iput v4, v11, Lcom/codemao/toolssdk/dsp/resample/Resampler;->Yp:I

    goto :goto_4f

    :cond_4e
    const/4 v2, 0x0

    .line 212
    :goto_4f
    iget v1, v11, Lcom/codemao/toolssdk/dsp/resample/Resampler;->Yp:I

    const/16 v17, 0x1

    if-eqz v1, :cond_59

    if-nez v2, :cond_58

    const/4 v6, 0x1

    :cond_58
    return v6

    :cond_59
    const-wide/high16 v18, 0x3ff0000000000000L  # 1.0

    cmpg-double v1, v12, v18

    if-gez v1, :cond_63

    float-to-double v0, v0

    mul-double v0, v0, v12

    double-to-float v0, v0

    :cond_63
    move/from16 v20, v0

    move/from16 v21, v2

    const/4 v0, 0x0

    .line 233
    :goto_68
    iget v1, v11, Lcom/codemao/toolssdk/dsp/resample/Resampler;->XSize:I

    iget v2, v11, Lcom/codemao/toolssdk/dsp/resample/Resampler;->Xread:I

    sub-int/2addr v1, v2

    sub-int v3, v10, v0

    if-lt v1, v3, :cond_72

    move v1, v3

    .line 239
    :cond_72
    iget-object v3, v11, Lcom/codemao/toolssdk/dsp/resample/Resampler;->X:[F

    invoke-interface {v14, v3, v2, v1}, Lcom/codemao/toolssdk/dsp/resample/SampleBuffers;->produceInput([FII)V

    add-int v5, v0, v1

    .line 245
    iget v0, v11, Lcom/codemao/toolssdk/dsp/resample/Resampler;->Xread:I

    add-int/2addr v0, v1

    iput v0, v11, Lcom/codemao/toolssdk/dsp/resample/Resampler;->Xread:I

    if-eqz p4, :cond_95

    if-ne v5, v10, :cond_95

    .line 252
    iget v1, v11, Lcom/codemao/toolssdk/dsp/resample/Resampler;->Xoff:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    .line 253
    :goto_86
    iget v2, v11, Lcom/codemao/toolssdk/dsp/resample/Resampler;->Xoff:I

    if-ge v1, v2, :cond_9a

    .line 254
    iget-object v2, v11, Lcom/codemao/toolssdk/dsp/resample/Resampler;->X:[F

    iget v3, v11, Lcom/codemao/toolssdk/dsp/resample/Resampler;->Xread:I

    add-int/2addr v3, v1

    const/4 v4, 0x0

    aput v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_86

    .line 257
    :cond_95
    iget v1, v11, Lcom/codemao/toolssdk/dsp/resample/Resampler;->Xoff:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    :cond_9a
    move v3, v0

    if-gtz v3, :cond_a2

    move/from16 v23, v5

    const/4 v2, 0x0

    goto/16 :goto_153

    :cond_a2
    cmpl-double v0, v12, v18

    if-ltz v0, :cond_c9

    .line 272
    iget-object v1, v11, Lcom/codemao/toolssdk/dsp/resample/Resampler;->X:[F

    iget-object v2, v11, Lcom/codemao/toolssdk/dsp/resample/Resampler;->Y:[F

    move-object/from16 v0, p0

    move/from16 v22, v3

    move-wide/from16 v3, p1

    move/from16 v23, v5

    move/from16 v5, v22

    move v6, v7

    move/from16 v24, v7

    move/from16 v7, v20

    move-object/from16 v25, v8

    move-object v8, v9

    move-object/from16 v26, v9

    move-object/from16 v9, v25

    move/from16 v27, v10

    move/from16 v10, v16

    invoke-direct/range {v0 .. v10}, Lcom/codemao/toolssdk/dsp/resample/Resampler;->lrsSrcUp([F[FDIIF[F[FZ)I

    move-result v0

    goto :goto_ec

    :cond_c9
    move/from16 v22, v3

    move/from16 v23, v5

    move/from16 v24, v7

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move/from16 v27, v10

    .line 274
    iget-object v1, v11, Lcom/codemao/toolssdk/dsp/resample/Resampler;->X:[F

    iget-object v2, v11, Lcom/codemao/toolssdk/dsp/resample/Resampler;->Y:[F

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v3, p1

    move/from16 v5, v22

    move/from16 v6, v24

    move/from16 v7, v20

    move-object/from16 v8, v26

    move-object/from16 v9, v25

    invoke-direct/range {v0 .. v10}, Lcom/codemao/toolssdk/dsp/resample/Resampler;->lrsSrcUD([F[FDIIF[F[FZ)I

    move-result v0

    .line 283
    :goto_ec
    iget-wide v1, v11, Lcom/codemao/toolssdk/dsp/resample/Resampler;->Time:D

    move/from16 v3, v22

    int-to-double v4, v3

    sub-double/2addr v1, v4

    iput-wide v1, v11, Lcom/codemao/toolssdk/dsp/resample/Resampler;->Time:D

    .line 284
    iget v4, v11, Lcom/codemao/toolssdk/dsp/resample/Resampler;->Xp:I

    add-int/2addr v4, v3

    iput v4, v11, Lcom/codemao/toolssdk/dsp/resample/Resampler;->Xp:I

    double-to-int v3, v1

    .line 287
    iget v5, v11, Lcom/codemao/toolssdk/dsp/resample/Resampler;->Xoff:I

    sub-int/2addr v3, v5

    if-eqz v3, :cond_106

    int-to-double v6, v3

    sub-double/2addr v1, v6

    .line 289
    iput-wide v1, v11, Lcom/codemao/toolssdk/dsp/resample/Resampler;->Time:D

    add-int/2addr v4, v3

    .line 290
    iput v4, v11, Lcom/codemao/toolssdk/dsp/resample/Resampler;->Xp:I

    .line 294
    :cond_106
    iget v1, v11, Lcom/codemao/toolssdk/dsp/resample/Resampler;->Xread:I

    iget v2, v11, Lcom/codemao/toolssdk/dsp/resample/Resampler;->Xp:I

    sub-int/2addr v2, v5

    sub-int/2addr v1, v2

    const/4 v6, 0x0

    :goto_10d
    if-ge v6, v1, :cond_11e

    .line 297
    iget-object v2, v11, Lcom/codemao/toolssdk/dsp/resample/Resampler;->X:[F

    iget v3, v11, Lcom/codemao/toolssdk/dsp/resample/Resampler;->Xp:I

    iget v4, v11, Lcom/codemao/toolssdk/dsp/resample/Resampler;->Xoff:I

    sub-int/2addr v3, v4

    add-int/2addr v3, v6

    aget v3, v2, v3

    aput v3, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_10d

    .line 305
    :cond_11e
    iput v1, v11, Lcom/codemao/toolssdk/dsp/resample/Resampler;->Xread:I

    .line 306
    iget v1, v11, Lcom/codemao/toolssdk/dsp/resample/Resampler;->Xoff:I

    iput v1, v11, Lcom/codemao/toolssdk/dsp/resample/Resampler;->Xp:I

    .line 308
    iput v0, v11, Lcom/codemao/toolssdk/dsp/resample/Resampler;->Yp:I

    if-eqz v0, :cond_14e

    sub-int v1, v15, v21

    if-lez v1, :cond_14e

    .line 312
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 314
    iget-object v1, v11, Lcom/codemao/toolssdk/dsp/resample/Resampler;->Y:[F

    const/4 v2, 0x0

    invoke-interface {v14, v1, v2, v0}, Lcom/codemao/toolssdk/dsp/resample/SampleBuffers;->consumeOutput([FII)V

    add-int v21, v21, v0

    const/4 v6, 0x0

    .line 320
    :goto_139
    iget v1, v11, Lcom/codemao/toolssdk/dsp/resample/Resampler;->Yp:I

    sub-int v3, v1, v0

    if-ge v6, v3, :cond_14a

    .line 321
    iget-object v1, v11, Lcom/codemao/toolssdk/dsp/resample/Resampler;->Y:[F

    add-int v3, v6, v0

    aget v3, v1, v3

    aput v3, v1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_139

    :cond_14a
    sub-int/2addr v1, v0

    .line 323
    iput v1, v11, Lcom/codemao/toolssdk/dsp/resample/Resampler;->Yp:I

    goto :goto_14f

    :cond_14e
    const/4 v2, 0x0

    .line 328
    :goto_14f
    iget v0, v11, Lcom/codemao/toolssdk/dsp/resample/Resampler;->Yp:I

    if-eqz v0, :cond_15b

    :goto_153
    if-nez v23, :cond_159

    if-nez v21, :cond_159

    const/4 v6, 0x1

    goto :goto_15a

    :cond_159
    const/4 v6, 0x0

    :goto_15a
    return v6

    :cond_15b
    move/from16 v0, v23

    move/from16 v7, v24

    move-object/from16 v8, v25

    move-object/from16 v9, v26

    move/from16 v10, v27

    const/4 v6, 0x0

    goto/16 :goto_68

    .line 177
    :cond_168
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "factor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " is not between minFactor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v11, Lcom/codemao/toolssdk/dsp/resample/Resampler;->minFactor:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " and maxFactor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v11, Lcom/codemao/toolssdk/dsp/resample/Resampler;->maxFactor:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public process(DLjava/nio/FloatBuffer;ZLjava/nio/FloatBuffer;)Z
    .registers 7

    .line 346
    new-instance v0, Lcom/codemao/toolssdk/dsp/resample/Resampler$1;

    invoke-direct {v0, p0, p3, p5}, Lcom/codemao/toolssdk/dsp/resample/Resampler$1;-><init>(Lcom/codemao/toolssdk/dsp/resample/Resampler;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 363
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/codemao/toolssdk/dsp/resample/Resampler;->process(DLcom/codemao/toolssdk/dsp/resample/SampleBuffers;Z)Z

    move-result p1

    return p1
.end method
