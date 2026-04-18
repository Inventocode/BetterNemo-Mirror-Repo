.class public Lcom/codemao/midi/sun/SoftCubicResampler;
.super Lcom/codemao/midi/sun/SoftAbstractResampler;
.source "SoftCubicResampler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Lcom/codemao/midi/sun/SoftAbstractResampler;-><init>()V

    return-void
.end method


# virtual methods
.method public getPadding()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method

.method public interpolate([F[FF[FF[F[II)V
    .registers 20

    move/from16 v0, p8

    const/4 v1, 0x0

    .line 41
    aget v2, p4, v1

    .line 42
    aget v3, p2, v1

    .line 43
    aget v4, p7, v1

    const/4 v5, 0x0

    cmpl-float v5, p5, v5

    if-nez v5, :cond_3d

    :goto_e
    cmpg-float v5, v3, p3

    if-gez v5, :cond_6e

    if-ge v4, v0, :cond_6e

    float-to-int v5, v3

    int-to-float v6, v5

    sub-float v6, v3, v6

    add-int/lit8 v7, v5, -0x1

    .line 50
    aget v7, p1, v7

    .line 51
    aget v8, p1, v5

    add-int/lit8 v9, v5, 0x1

    .line 52
    aget v9, p1, v9

    add-int/lit8 v5, v5, 0x2

    .line 53
    aget v5, p1, v5

    sub-float/2addr v5, v9

    add-float/2addr v5, v8

    sub-float/2addr v5, v7

    sub-float v10, v7, v8

    sub-float/2addr v10, v5

    sub-float/2addr v9, v7

    add-int/lit8 v7, v4, 0x1

    mul-float v5, v5, v6

    add-float/2addr v5, v10

    mul-float v5, v5, v6

    add-float/2addr v5, v9

    mul-float v5, v5, v6

    add-float/2addr v5, v8

    .line 60
    aput v5, p6, v4

    add-float/2addr v3, v2

    move v4, v7

    goto :goto_e

    :cond_3d
    :goto_3d
    cmpg-float v5, v3, p3

    if-gez v5, :cond_6e

    if-ge v4, v0, :cond_6e

    float-to-int v5, v3

    int-to-float v6, v5

    sub-float v6, v3, v6

    add-int/lit8 v7, v5, -0x1

    .line 67
    aget v7, p1, v7

    .line 68
    aget v8, p1, v5

    add-int/lit8 v9, v5, 0x1

    .line 69
    aget v9, p1, v9

    add-int/lit8 v5, v5, 0x2

    .line 70
    aget v5, p1, v5

    sub-float/2addr v5, v9

    add-float/2addr v5, v8

    sub-float/2addr v5, v7

    sub-float v10, v7, v8

    sub-float/2addr v10, v5

    sub-float/2addr v9, v7

    add-int/lit8 v7, v4, 0x1

    mul-float v5, v5, v6

    add-float/2addr v5, v10

    mul-float v5, v5, v6

    add-float/2addr v5, v9

    mul-float v5, v5, v6

    add-float/2addr v5, v8

    .line 77
    aput v5, p6, v4

    add-float/2addr v3, v2

    add-float v2, v2, p5

    move v4, v7

    goto :goto_3d

    .line 82
    :cond_6e
    aput v3, p2, v1

    .line 83
    aput v4, p7, v1

    .line 84
    aput v2, p4, v1

    return-void
.end method
