.class public Lcom/codemao/midi/sun/SoftLinearResampler;
.super Lcom/codemao/midi/sun/SoftAbstractResampler;
.source "SoftLinearResampler.java"


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

    const/4 v0, 0x2

    return v0
.end method

.method public interpolate([F[FF[FF[F[II)V
    .registers 18

    move/from16 v0, p8

    const/4 v1, 0x0

    .line 42
    aget v2, p4, v1

    .line 43
    aget v3, p2, v1

    .line 44
    aget v4, p7, v1

    const/4 v5, 0x0

    cmpl-float v5, p5, v5

    if-nez v5, :cond_29

    :goto_e
    cmpg-float v5, v3, p3

    if-gez v5, :cond_45

    if-ge v4, v0, :cond_45

    float-to-int v5, v3

    int-to-float v6, v5

    sub-float v6, v3, v6

    .line 51
    aget v7, p1, v5

    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    .line 52
    aget v5, p1, v5

    sub-float/2addr v5, v7

    mul-float v5, v5, v6

    add-float/2addr v7, v5

    aput v7, p6, v4

    add-float/2addr v3, v2

    move v4, v8

    goto :goto_e

    :cond_29
    :goto_29
    cmpg-float v5, v3, p3

    if-gez v5, :cond_45

    if-ge v4, v0, :cond_45

    float-to-int v5, v3

    int-to-float v6, v5

    sub-float v6, v3, v6

    .line 59
    aget v7, p1, v5

    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    .line 60
    aget v5, p1, v5

    sub-float/2addr v5, v7

    mul-float v5, v5, v6

    add-float/2addr v7, v5

    aput v7, p6, v4

    add-float/2addr v3, v2

    add-float/2addr v2, p5

    move v4, v8

    goto :goto_29

    .line 65
    :cond_45
    aput v3, p2, v1

    .line 66
    aput v4, p7, v1

    .line 67
    aput v2, p4, v1

    return-void
.end method
