.class Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatLSBFilter;
.super Lcom/codemao/midi/sun/AudioFloatConverter;
.source "AudioFloatConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/midi/sun/AudioFloatConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioFloatLSBFilter"
.end annotation


# instance fields
.field private converter:Lcom/codemao/midi/sun/AudioFloatConverter;

.field private final mask:B

.field private mask_buffer:[B

.field private final offset:I

.field private final stepsize:I


# direct methods
.method public constructor <init>(Lcom/codemao/midi/sun/AudioFloatConverter;Lcom/codemao/midi/javax/sampled/AudioFormat;)V
    .registers 6

    .line 67
    invoke-direct {p0}, Lcom/codemao/midi/sun/AudioFloatConverter;-><init>()V

    .line 68
    invoke-virtual {p2}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result v0

    .line 69
    invoke-virtual {p2}, Lcom/codemao/midi/javax/sampled/AudioFormat;->isBigEndian()Z

    move-result p2

    .line 70
    iput-object p1, p0, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatLSBFilter;->converter:Lcom/codemao/midi/sun/AudioFloatConverter;

    add-int/lit8 p1, v0, 0x7

    .line 71
    div-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatLSBFilter;->stepsize:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_19

    sub-int/2addr p1, v1

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    .line 72
    :goto_1a
    iput p1, p0, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatLSBFilter;->offset:I

    .line 73
    rem-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_23

    .line 75
    iput-byte v2, p0, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatLSBFilter;->mask:B

    goto :goto_5a

    :cond_23
    if-ne v0, v1, :cond_2a

    const/16 p1, -0x80

    .line 77
    iput-byte p1, p0, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatLSBFilter;->mask:B

    goto :goto_5a

    :cond_2a
    const/4 p1, 0x2

    if-ne v0, p1, :cond_32

    const/16 p1, -0x40

    .line 79
    iput-byte p1, p0, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatLSBFilter;->mask:B

    goto :goto_5a

    :cond_32
    const/4 p1, 0x3

    if-ne v0, p1, :cond_3a

    const/16 p1, -0x20

    .line 81
    iput-byte p1, p0, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatLSBFilter;->mask:B

    goto :goto_5a

    :cond_3a
    const/4 p1, 0x4

    if-ne v0, p1, :cond_42

    const/16 p1, -0x10

    .line 83
    iput-byte p1, p0, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatLSBFilter;->mask:B

    goto :goto_5a

    :cond_42
    const/4 p1, 0x5

    if-ne v0, p1, :cond_49

    const/4 p1, -0x8

    .line 85
    iput-byte p1, p0, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatLSBFilter;->mask:B

    goto :goto_5a

    :cond_49
    const/4 p1, 0x6

    if-ne v0, p1, :cond_50

    const/4 p1, -0x4

    .line 87
    iput-byte p1, p0, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatLSBFilter;->mask:B

    goto :goto_5a

    :cond_50
    const/4 p1, 0x7

    if-ne v0, p1, :cond_57

    const/4 p1, -0x2

    .line 89
    iput-byte p1, p0, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatLSBFilter;->mask:B

    goto :goto_5a

    :cond_57
    const/4 p1, -0x1

    .line 91
    iput-byte p1, p0, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatLSBFilter;->mask:B

    :goto_5a
    return-void
.end method


# virtual methods
.method public toByteArray([FII[BI)[B
    .registers 12

    .line 96
    iget-object v0, p0, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatLSBFilter;->converter:Lcom/codemao/midi/sun/AudioFloatConverter;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/codemao/midi/sun/AudioFloatConverter;->toByteArray([FII[BI)[B

    move-result-object p1

    .line 99
    iget p2, p0, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatLSBFilter;->stepsize:I

    mul-int p3, p3, p2

    .line 100
    iget p2, p0, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatLSBFilter;->offset:I

    :goto_11
    add-int/2addr p5, p2

    if-ge p5, p3, :cond_1f

    .line 101
    aget-byte p2, p4, p5

    iget-byte v0, p0, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatLSBFilter;->mask:B

    and-int/2addr p2, v0

    int-to-byte p2, p2

    aput-byte p2, p4, p5

    .line 100
    iget p2, p0, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatLSBFilter;->stepsize:I

    goto :goto_11

    :cond_1f
    return-object p1
.end method

.method public toFloatArray([BI[FII)[F
    .registers 13

    .line 109
    iget-object v0, p0, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatLSBFilter;->mask_buffer:[B

    if-eqz v0, :cond_8

    array-length v0, v0

    array-length v1, p1

    if-ge v0, v1, :cond_d

    .line 110
    :cond_8
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatLSBFilter;->mask_buffer:[B

    .line 111
    :cond_d
    iget-object v0, p0, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatLSBFilter;->mask_buffer:[B

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    iget p1, p0, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatLSBFilter;->stepsize:I

    mul-int p1, p1, p5

    .line 113
    iget v0, p0, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatLSBFilter;->offset:I

    add-int/2addr v0, p2

    :goto_1b
    if-ge v0, p1, :cond_2b

    .line 114
    iget-object v1, p0, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatLSBFilter;->mask_buffer:[B

    aget-byte v2, v1, v0

    iget-byte v3, p0, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatLSBFilter;->mask:B

    and-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 113
    iget v1, p0, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatLSBFilter;->stepsize:I

    add-int/2addr v0, v1

    goto :goto_1b

    .line 116
    :cond_2b
    iget-object v1, p0, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatLSBFilter;->converter:Lcom/codemao/midi/sun/AudioFloatConverter;

    iget-object v2, p0, Lcom/codemao/midi/sun/AudioFloatConverter$AudioFloatLSBFilter;->mask_buffer:[B

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/codemao/midi/sun/AudioFloatConverter;->toFloatArray([BI[FII)[F

    move-result-object p1

    return-object p1
.end method
