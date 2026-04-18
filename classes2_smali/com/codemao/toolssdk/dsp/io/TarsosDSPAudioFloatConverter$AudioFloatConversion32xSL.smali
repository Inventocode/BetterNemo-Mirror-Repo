.class Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion32xSL;
.super Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter;
.source "TarsosDSPAudioFloatConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioFloatConversion32xSL"
.end annotation


# instance fields
.field final xbytes:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 769
    invoke-direct {p0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter;-><init>()V

    .line 770
    iput p1, p0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion32xSL;->xbytes:I

    return-void
.end method


# virtual methods
.method public toByteArray([FII[BI)[B
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, p3, :cond_38

    add-int/lit8 v2, p2, 0x1

    .line 792
    aget p2, p1, p2

    const/high16 v3, 0x4f000000

    mul-float p2, p2, v3

    float-to-int p2, p2

    const/4 v3, 0x0

    .line 793
    :goto_e
    iget v4, p0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion32xSL;->xbytes:I

    if-ge v3, v4, :cond_1a

    add-int/lit8 v4, p5, 0x1

    .line 794
    aput-byte v0, p4, p5

    add-int/lit8 v3, v3, 0x1

    move p5, v4

    goto :goto_e

    :cond_1a
    add-int/lit8 v3, p5, 0x1

    int-to-byte v4, p2

    .line 796
    aput-byte v4, p4, p5

    add-int/lit8 p5, v3, 0x1

    ushr-int/lit8 v4, p2, 0x8

    int-to-byte v4, v4

    .line 797
    aput-byte v4, p4, v3

    add-int/lit8 v3, p5, 0x1

    ushr-int/lit8 v4, p2, 0x10

    int-to-byte v4, v4

    .line 798
    aput-byte v4, p4, p5

    add-int/lit8 p5, v3, 0x1

    ushr-int/lit8 p2, p2, 0x18

    int-to-byte p2, p2

    .line 799
    aput-byte p2, p4, v3

    add-int/lit8 v1, v1, 0x1

    move p2, v2

    goto :goto_2

    :cond_38
    return-object p4
.end method

.method public toFloatArray([BI[FII)[F
    .registers 10

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p5, :cond_35

    .line 778
    iget v1, p0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter$AudioFloatConversion32xSL;->xbytes:I

    add-int/2addr p2, v1

    add-int/lit8 v1, p2, 0x1

    .line 779
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr p2, v1

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr p2, v2

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr p2, v1

    add-int/lit8 v1, p4, 0x1

    int-to-float p2, p2

    const/high16 v3, 0x30000000

    mul-float p2, p2, v3

    .line 782
    aput p2, p3, p4

    add-int/lit8 v0, v0, 0x1

    move p4, v1

    move p2, v2

    goto :goto_1

    :cond_35
    return-object p3
.end method
