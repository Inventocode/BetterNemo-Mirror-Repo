.class public Lcom/codemao/midi/sun/SoftLanczosResampler;
.super Lcom/codemao/midi/sun/SoftAbstractResampler;
.source "SoftLanczosResampler.java"


# instance fields
.field sinc_table:[[F

.field sinc_table_center:I

.field sinc_table_fsize:I

.field sinc_table_size:I


# direct methods
.method public constructor <init>()V
    .registers 6

    .line 40
    invoke-direct {p0}, Lcom/codemao/midi/sun/SoftAbstractResampler;-><init>()V

    const/16 v0, 0x7d0

    .line 35
    iput v0, p0, Lcom/codemao/midi/sun/SoftLanczosResampler;->sinc_table_fsize:I

    const/4 v1, 0x5

    .line 36
    iput v1, p0, Lcom/codemao/midi/sun/SoftLanczosResampler;->sinc_table_size:I

    .line 37
    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/codemao/midi/sun/SoftLanczosResampler;->sinc_table_center:I

    new-array v0, v0, [[F

    .line 41
    iput-object v0, p0, Lcom/codemao/midi/sun/SoftLanczosResampler;->sinc_table:[[F

    const/4 v0, 0x0

    .line 42
    :goto_13
    iget v1, p0, Lcom/codemao/midi/sun/SoftLanczosResampler;->sinc_table_fsize:I

    if-ge v0, v1, :cond_28

    .line 43
    iget-object v2, p0, Lcom/codemao/midi/sun/SoftLanczosResampler;->sinc_table:[[F

    iget v3, p0, Lcom/codemao/midi/sun/SoftLanczosResampler;->sinc_table_size:I

    neg-int v4, v0

    int-to-float v4, v4

    int-to-float v1, v1

    div-float/2addr v4, v1

    invoke-static {v3, v4}, Lcom/codemao/midi/sun/SoftLanczosResampler;->sincTable(IF)[F

    move-result-object v1

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_28
    return-void
.end method

.method public static sincTable(IF)[F
    .registers 12

    .line 55
    div-int/lit8 v0, p0, 0x2

    .line 56
    new-array v1, p0, [F

    const/4 v2, 0x0

    :goto_5
    if-ge v2, p0, :cond_46

    neg-int v3, v0

    add-int/2addr v3, v2

    int-to-float v3, v3

    add-float/2addr v3, p1

    const/high16 v4, -0x40000000  # -2.0f

    const/4 v5, 0x0

    cmpg-float v4, v3, v4

    if-ltz v4, :cond_41

    const/high16 v4, 0x40000000  # 2.0f

    cmpl-float v4, v3, v4

    if-lez v4, :cond_19

    goto :goto_41

    :cond_19
    cmpl-float v4, v3, v5

    if-nez v4, :cond_22

    const/high16 v3, 0x3f800000  # 1.0f

    .line 62
    aput v3, v1, v2

    goto :goto_43

    :cond_22
    const-wide v4, 0x400921fb54442d18L  # Math.PI

    float-to-double v6, v3

    mul-double v6, v6, v4

    .line 64
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    const-wide/high16 v8, 0x4000000000000000L  # 2.0

    mul-double v3, v3, v8

    div-double v8, v6, v8

    .line 65
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double v3, v3, v8

    mul-double v6, v6, v6

    div-double/2addr v3, v6

    double-to-float v3, v3

    aput v3, v1, v2

    goto :goto_43

    .line 60
    :cond_41
    :goto_41
    aput v5, v1, v2

    :goto_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_46
    return-object v1
.end method


# virtual methods
.method public getPadding()I
    .registers 2

    .line 74
    iget v0, p0, Lcom/codemao/midi/sun/SoftLanczosResampler;->sinc_table_size:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public interpolate([F[FF[FF[F[II)V
    .registers 22

    move-object v0, p0

    move/from16 v1, p8

    const/4 v2, 0x0

    .line 80
    aget v3, p4, v2

    .line 81
    aget v4, p2, v2

    .line 82
    aget v5, p7, v2

    const/4 v6, 0x0

    cmpl-float v7, p5, v6

    if-nez v7, :cond_3f

    :goto_f
    cmpg-float v7, v4, p3

    if-gez v7, :cond_71

    if-ge v5, v1, :cond_71

    float-to-int v7, v4

    .line 89
    iget-object v8, v0, Lcom/codemao/midi/sun/SoftLanczosResampler;->sinc_table:[[F

    int-to-float v9, v7

    sub-float v9, v4, v9

    iget v10, v0, Lcom/codemao/midi/sun/SoftLanczosResampler;->sinc_table_fsize:I

    int-to-float v10, v10

    mul-float v9, v9, v10

    float-to-int v9, v9

    aget-object v8, v8, v9

    .line 91
    iget v9, v0, Lcom/codemao/midi/sun/SoftLanczosResampler;->sinc_table_center:I

    sub-int/2addr v7, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 93
    :goto_28
    iget v11, v0, Lcom/codemao/midi/sun/SoftLanczosResampler;->sinc_table_size:I

    if-ge v9, v11, :cond_38

    .line 94
    aget v11, p1, v7

    aget v12, v8, v9

    mul-float v11, v11, v12

    add-float/2addr v10, v11

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_28

    :cond_38
    add-int/lit8 v7, v5, 0x1

    .line 95
    aput v10, p6, v5

    add-float/2addr v4, v3

    move v5, v7

    goto :goto_f

    :cond_3f
    :goto_3f
    cmpg-float v7, v4, p3

    if-gez v7, :cond_71

    if-ge v5, v1, :cond_71

    float-to-int v7, v4

    .line 101
    iget-object v8, v0, Lcom/codemao/midi/sun/SoftLanczosResampler;->sinc_table:[[F

    int-to-float v9, v7

    sub-float v9, v4, v9

    iget v10, v0, Lcom/codemao/midi/sun/SoftLanczosResampler;->sinc_table_fsize:I

    int-to-float v10, v10

    mul-float v9, v9, v10

    float-to-int v9, v9

    aget-object v8, v8, v9

    .line 103
    iget v9, v0, Lcom/codemao/midi/sun/SoftLanczosResampler;->sinc_table_center:I

    sub-int/2addr v7, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 105
    :goto_58
    iget v11, v0, Lcom/codemao/midi/sun/SoftLanczosResampler;->sinc_table_size:I

    if-ge v9, v11, :cond_68

    .line 106
    aget v11, p1, v7

    aget v12, v8, v9

    mul-float v11, v11, v12

    add-float/2addr v10, v11

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_58

    :cond_68
    add-int/lit8 v7, v5, 0x1

    .line 107
    aput v10, p6, v5

    add-float/2addr v4, v3

    add-float v3, v3, p5

    move v5, v7

    goto :goto_3f

    .line 113
    :cond_71
    aput v4, p2, v2

    .line 114
    aput v5, p7, v2

    .line 115
    aput v3, p4, v2

    return-void
.end method
