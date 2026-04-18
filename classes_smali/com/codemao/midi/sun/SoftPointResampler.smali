.class public Lcom/codemao/midi/sun/SoftPointResampler;
.super Lcom/codemao/midi/sun/SoftAbstractResampler;
.source "SoftPointResampler.java"


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

    const/16 v0, 0x64

    return v0
.end method

.method public interpolate([F[FF[FF[F[II)V
    .registers 15

    const/4 v0, 0x0

    .line 41
    aget v1, p4, v0

    .line 42
    aget v2, p2, v0

    .line 43
    aget v3, p7, v0

    int-to-float p8, p8

    const/4 v4, 0x0

    cmpl-float v4, p5, v4

    if-nez v4, :cond_20

    :goto_d
    cmpg-float p5, v2, p3

    if-gez p5, :cond_34

    int-to-float p5, v3

    cmpg-float p5, p5, p8

    if-gez p5, :cond_34

    add-int/lit8 p5, v3, 0x1

    float-to-int v4, v2

    .line 48
    aget v4, p1, v4

    aput v4, p6, v3

    add-float/2addr v2, v1

    move v3, p5

    goto :goto_d

    :cond_20
    :goto_20
    cmpg-float v4, v2, p3

    if-gez v4, :cond_34

    int-to-float v4, v3

    cmpg-float v4, v4, p8

    if-gez v4, :cond_34

    add-int/lit8 v4, v3, 0x1

    float-to-int v5, v2

    .line 53
    aget v5, p1, v5

    aput v5, p6, v3

    add-float/2addr v2, v1

    add-float/2addr v1, p5

    move v3, v4

    goto :goto_20

    .line 58
    :cond_34
    aput v2, p2, v0

    .line 59
    aput v3, p7, v0

    .line 60
    aput v1, p4, v0

    return-void
.end method
