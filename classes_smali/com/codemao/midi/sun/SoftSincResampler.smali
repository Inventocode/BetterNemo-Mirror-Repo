.class public Lcom/codemao/midi/sun/SoftSincResampler;
.super Lcom/codemao/midi/sun/SoftAbstractResampler;
.source "SoftSincResampler.java"


# instance fields
.field sinc_scale_size:I

.field sinc_table:[[[F

.field sinc_table_center:I

.field sinc_table_fsize:I

.field sinc_table_size:I


# direct methods
.method public constructor <init>()V
    .registers 9

    .line 43
    invoke-direct {p0}, Lcom/codemao/midi/sun/SoftAbstractResampler;-><init>()V

    const/16 v0, 0x64

    .line 37
    iput v0, p0, Lcom/codemao/midi/sun/SoftSincResampler;->sinc_scale_size:I

    const/16 v1, 0x320

    .line 38
    iput v1, p0, Lcom/codemao/midi/sun/SoftSincResampler;->sinc_table_fsize:I

    const/16 v2, 0x1e

    .line 39
    iput v2, p0, Lcom/codemao/midi/sun/SoftSincResampler;->sinc_table_size:I

    const/4 v3, 0x2

    .line 40
    div-int/2addr v2, v3

    iput v2, p0, Lcom/codemao/midi/sun/SoftSincResampler;->sinc_table_center:I

    new-array v2, v3, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    .line 44
    const-class v0, [F

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[F

    iput-object v0, p0, Lcom/codemao/midi/sun/SoftSincResampler;->sinc_table:[[[F

    const/4 v0, 0x0

    .line 45
    :goto_26
    iget v2, p0, Lcom/codemao/midi/sun/SoftSincResampler;->sinc_scale_size:I

    if-ge v0, v2, :cond_57

    int-to-double v2, v0

    const-wide v4, 0x3ff199999999999aL  # 1.1

    .line 46
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide/high16 v4, 0x4024000000000000L  # 10.0

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    add-double/2addr v2, v4

    div-double/2addr v4, v2

    double-to-float v2, v4

    const/4 v3, 0x0

    .line 47
    :goto_3d
    iget v4, p0, Lcom/codemao/midi/sun/SoftSincResampler;->sinc_table_fsize:I

    if-ge v3, v4, :cond_54

    .line 48
    iget-object v5, p0, Lcom/codemao/midi/sun/SoftSincResampler;->sinc_table:[[[F

    aget-object v5, v5, v0

    iget v6, p0, Lcom/codemao/midi/sun/SoftSincResampler;->sinc_table_size:I

    neg-int v7, v3

    int-to-float v7, v7

    int-to-float v4, v4

    div-float/2addr v7, v4

    invoke-static {v6, v7, v2}, Lcom/codemao/midi/sun/SoftSincResampler;->sincTable(IFF)[F

    move-result-object v4

    aput-object v4, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    :cond_54
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_57
    return-void
.end method

.method public static sinc(D)D
    .registers 5

    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-nez v2, :cond_9

    const-wide/high16 p0, 0x3ff0000000000000L  # 1.0

    goto :goto_16

    :cond_9
    const-wide v0, 0x400921fb54442d18L  # Math.PI

    mul-double p0, p0, v0

    .line 56
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    div-double p0, v0, p0

    :goto_16
    return-wide p0
.end method

.method public static sincTable(IFF)[F
    .registers 12

    .line 72
    div-int/lit8 v0, p0, 0x2

    .line 73
    invoke-static {p0, p1}, Lcom/codemao/midi/sun/SoftSincResampler;->wHanning(IF)[F

    move-result-object v1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, p0, :cond_22

    .line 75
    aget v3, v1, v2

    float-to-double v3, v3

    neg-int v5, v0

    add-int/2addr v5, v2

    int-to-float v5, v5

    add-float/2addr v5, p1

    mul-float v5, v5, p2

    float-to-double v5, v5

    invoke-static {v5, v6}, Lcom/codemao/midi/sun/SoftSincResampler;->sinc(D)D

    move-result-wide v5

    float-to-double v7, p2

    mul-double v5, v5, v7

    mul-double v3, v3, v5

    double-to-float v3, v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_22
    return-object v1
.end method

.method public static wHanning(IF)[F
    .registers 10

    .line 61
    new-array v0, p0, [F

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p0, :cond_22

    const-wide/high16 v2, -0x4020000000000000L  # -0.5

    const-wide v4, 0x401921fb54442d18L  # 6.283185307179586

    int-to-float v6, v1

    add-float/2addr v6, p1

    float-to-double v6, v6

    mul-double v6, v6, v4

    int-to-double v4, p0

    div-double/2addr v6, v4

    .line 64
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double v4, v4, v2

    const-wide/high16 v2, 0x3fe0000000000000L  # 0.5

    add-double/2addr v4, v2

    double-to-float v2, v4

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_22
    return-object v0
.end method


# virtual methods
.method public getPadding()I
    .registers 2

    .line 81
    iget v0, p0, Lcom/codemao/midi/sun/SoftSincResampler;->sinc_table_size:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public interpolate([F[FF[FF[F[II)V
    .registers 25

    move-object/from16 v0, p0

    move/from16 v1, p8

    const/4 v2, 0x0

    .line 87
    aget v3, p4, v2

    .line 88
    aget v4, p2, v2

    .line 89
    aget v5, p7, v2

    .line 92
    iget v6, v0, Lcom/codemao/midi/sun/SoftSincResampler;->sinc_scale_size:I

    add-int/lit8 v6, v6, -0x1

    const/high16 v7, 0x41200000  # 10.0f

    const/high16 v8, 0x3f800000  # 1.0f

    const/4 v9, 0x0

    cmpl-float v10, p5, v9

    if-nez v10, :cond_57

    sub-float v8, v3, v8

    mul-float v8, v8, v7

    float-to-int v7, v8

    if-gez v7, :cond_21

    const/4 v6, 0x0

    goto :goto_25

    :cond_21
    if-le v7, v6, :cond_24

    goto :goto_25

    :cond_24
    move v6, v7

    .line 100
    :goto_25
    iget-object v7, v0, Lcom/codemao/midi/sun/SoftSincResampler;->sinc_table:[[[F

    aget-object v6, v7, v6

    :goto_29
    cmpg-float v7, v4, p3

    if-gez v7, :cond_97

    if-ge v5, v1, :cond_97

    float-to-int v7, v4

    int-to-float v8, v7

    sub-float v8, v4, v8

    .line 103
    iget v10, v0, Lcom/codemao/midi/sun/SoftSincResampler;->sinc_table_fsize:I

    int-to-float v10, v10

    mul-float v8, v8, v10

    float-to-int v8, v8

    aget-object v8, v6, v8

    .line 105
    iget v10, v0, Lcom/codemao/midi/sun/SoftSincResampler;->sinc_table_center:I

    sub-int/2addr v7, v10

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 107
    :goto_40
    iget v12, v0, Lcom/codemao/midi/sun/SoftSincResampler;->sinc_table_size:I

    if-ge v10, v12, :cond_50

    .line 108
    aget v12, p1, v7

    aget v13, v8, v10

    mul-float v12, v12, v13

    add-float/2addr v11, v12

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_40

    :cond_50
    add-int/lit8 v7, v5, 0x1

    .line 109
    aput v11, p6, v5

    add-float/2addr v4, v3

    move v5, v7

    goto :goto_29

    :cond_57
    :goto_57
    cmpg-float v10, v4, p3

    if-gez v10, :cond_97

    if-ge v5, v1, :cond_97

    float-to-int v10, v4

    sub-float v11, v3, v8

    mul-float v11, v11, v7

    float-to-int v11, v11

    if-gez v11, :cond_67

    const/4 v11, 0x0

    goto :goto_6a

    :cond_67
    if-le v11, v6, :cond_6a

    move v11, v6

    .line 120
    :cond_6a
    :goto_6a
    iget-object v12, v0, Lcom/codemao/midi/sun/SoftSincResampler;->sinc_table:[[[F

    aget-object v11, v12, v11

    int-to-float v12, v10

    sub-float v12, v4, v12

    .line 122
    iget v13, v0, Lcom/codemao/midi/sun/SoftSincResampler;->sinc_table_fsize:I

    int-to-float v13, v13

    mul-float v12, v12, v13

    float-to-int v12, v12

    aget-object v11, v11, v12

    .line 124
    iget v12, v0, Lcom/codemao/midi/sun/SoftSincResampler;->sinc_table_center:I

    sub-int/2addr v10, v12

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 126
    :goto_7e
    iget v14, v0, Lcom/codemao/midi/sun/SoftSincResampler;->sinc_table_size:I

    if-ge v12, v14, :cond_8e

    .line 127
    aget v14, p1, v10

    aget v15, v11, v12

    mul-float v14, v14, v15

    add-float/2addr v13, v14

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_7e

    :cond_8e
    add-int/lit8 v10, v5, 0x1

    .line 128
    aput v13, p6, v5

    add-float/2addr v4, v3

    add-float v3, v3, p5

    move v5, v10

    goto :goto_57

    .line 134
    :cond_97
    aput v4, p2, v2

    .line 135
    aput v5, p7, v2

    .line 136
    aput v3, p4, v2

    return-void
.end method
