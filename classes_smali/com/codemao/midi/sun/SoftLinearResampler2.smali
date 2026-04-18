.class public Lcom/codemao/midi/sun/SoftLinearResampler2;
.super Lcom/codemao/midi/sun/SoftAbstractResampler;
.source "SoftLinearResampler2.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Lcom/codemao/midi/sun/SoftAbstractResampler;-><init>()V

    return-void
.end method


# virtual methods
.method public getPadding()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public interpolate([F[FF[FF[F[II)V
    .registers 23

    move/from16 v0, p8

    const/4 v1, 0x0

    .line 44
    aget v2, p4, v1

    .line 45
    aget v3, p2, v1

    .line 46
    aget v4, p7, v1

    cmpg-float v5, v3, p3

    if-gez v5, :cond_75

    if-lt v4, v0, :cond_10

    goto :goto_75

    :cond_10
    const/high16 v5, 0x47000000  # 32768.0f

    mul-float v6, v3, v5

    float-to-int v6, v6

    mul-float v7, p3, v5

    float-to-int v7, v7

    mul-float v2, v2, v5

    float-to-int v2, v2

    int-to-float v8, v2

    const/high16 v9, 0x38000000

    mul-float v8, v8, v9

    const/4 v10, 0x0

    cmpl-float v10, p5, v10

    if-nez v10, :cond_4c

    sub-int/2addr v7, v6

    .line 71
    rem-int v5, v7, v2

    if-eqz v5, :cond_2d

    sub-int v5, v2, v5

    add-int/2addr v7, v5

    .line 74
    :cond_2d
    div-int/2addr v7, v2

    add-int/2addr v7, v4

    if-ge v7, v0, :cond_32

    goto :goto_33

    :cond_32
    move v7, v0

    :goto_33
    if-ge v4, v7, :cond_6f

    shr-int/lit8 v0, v6, 0xf

    int-to-float v5, v0

    sub-float v5, v3, v5

    .line 81
    aget v9, p1, v0

    add-int/lit8 v10, v4, 0x1

    add-int/lit8 v0, v0, 0x1

    .line 82
    aget v0, p1, v0

    sub-float/2addr v0, v9

    mul-float v0, v0, v5

    add-float/2addr v9, v0

    aput v9, p6, v4

    add-int/2addr v6, v2

    add-float/2addr v3, v8

    move v4, v10

    goto :goto_33

    :cond_4c
    mul-float v5, v5, p5

    float-to-int v5, v5

    int-to-float v10, v5

    mul-float v10, v10, v9

    :goto_52
    if-ge v6, v7, :cond_6f

    if-ge v4, v0, :cond_6f

    shr-int/lit8 v9, v6, 0xf

    int-to-float v11, v9

    sub-float v11, v3, v11

    .line 95
    aget v12, p1, v9

    add-int/lit8 v13, v4, 0x1

    add-int/lit8 v9, v9, 0x1

    .line 96
    aget v9, p1, v9

    sub-float/2addr v9, v12

    mul-float v9, v9, v11

    add-float/2addr v12, v9

    aput v12, p6, v4

    add-float/2addr v3, v8

    add-int/2addr v6, v2

    add-float/2addr v8, v10

    add-int/2addr v2, v5

    move v4, v13

    goto :goto_52

    .line 103
    :cond_6f
    aput v3, p2, v1

    .line 104
    aput v4, p7, v1

    .line 105
    aput v8, p4, v1

    :cond_75
    :goto_75
    return-void
.end method
