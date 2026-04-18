.class Lcom/codemao/midi/sun/AudioFloatInputStream$BytaArrayAudioFloatInputStream;
.super Lcom/codemao/midi/sun/AudioFloatInputStream;
.source "AudioFloatInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/midi/sun/AudioFloatInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BytaArrayAudioFloatInputStream"
.end annotation


# instance fields
.field private buffer:[B

.field private buffer_len:I

.field private buffer_offset:I

.field private converter:Lcom/codemao/midi/sun/AudioFloatConverter;

.field private format:Lcom/codemao/midi/javax/sampled/AudioFormat;

.field private framesize_pc:I

.field private markpos:I

.field private pos:I


# direct methods
.method public constructor <init>(Lcom/codemao/midi/sun/AudioFloatConverter;[BII)V
    .registers 6

    .line 59
    invoke-direct {p0}, Lcom/codemao/midi/sun/AudioFloatInputStream;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lcom/codemao/midi/sun/AudioFloatInputStream$BytaArrayAudioFloatInputStream;->pos:I

    .line 50
    iput v0, p0, Lcom/codemao/midi/sun/AudioFloatInputStream$BytaArrayAudioFloatInputStream;->markpos:I

    .line 60
    iput-object p1, p0, Lcom/codemao/midi/sun/AudioFloatInputStream$BytaArrayAudioFloatInputStream;->converter:Lcom/codemao/midi/sun/AudioFloatConverter;

    .line 61
    invoke-virtual {p1}, Lcom/codemao/midi/sun/AudioFloatConverter;->getFormat()Lcom/codemao/midi/javax/sampled/AudioFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/midi/sun/AudioFloatInputStream$BytaArrayAudioFloatInputStream;->format:Lcom/codemao/midi/javax/sampled/AudioFormat;

    .line 62
    iput-object p2, p0, Lcom/codemao/midi/sun/AudioFloatInputStream$BytaArrayAudioFloatInputStream;->buffer:[B

    .line 63
    iput p3, p0, Lcom/codemao/midi/sun/AudioFloatInputStream$BytaArrayAudioFloatInputStream;->buffer_offset:I

    .line 64
    invoke-virtual {p1}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getFrameSize()I

    move-result p1

    iget-object p2, p0, Lcom/codemao/midi/sun/AudioFloatInputStream$BytaArrayAudioFloatInputStream;->format:Lcom/codemao/midi/javax/sampled/AudioFormat;

    invoke-virtual {p2}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getChannels()I

    move-result p2

    div-int/2addr p1, p2

    iput p1, p0, Lcom/codemao/midi/sun/AudioFloatInputStream$BytaArrayAudioFloatInputStream;->framesize_pc:I

    .line 65
    div-int/2addr p4, p1

    iput p4, p0, Lcom/codemao/midi/sun/AudioFloatInputStream$BytaArrayAudioFloatInputStream;->buffer_len:I

    return-void
.end method


# virtual methods
.method public available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    iget v0, p0, Lcom/codemao/midi/sun/AudioFloatInputStream$BytaArrayAudioFloatInputStream;->buffer_len:I

    iget v1, p0, Lcom/codemao/midi/sun/AudioFloatInputStream$BytaArrayAudioFloatInputStream;->pos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public getFormat()Lcom/codemao/midi/javax/sampled/AudioFormat;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/codemao/midi/sun/AudioFloatInputStream$BytaArrayAudioFloatInputStream;->format:Lcom/codemao/midi/javax/sampled/AudioFormat;

    return-object v0
.end method

.method public getFrameLength()J
    .registers 3

    .line 74
    iget v0, p0, Lcom/codemao/midi/sun/AudioFloatInputStream$BytaArrayAudioFloatInputStream;->buffer_len:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public mark(I)V
    .registers 2

    .line 113
    iget p1, p0, Lcom/codemao/midi/sun/AudioFloatInputStream$BytaArrayAudioFloatInputStream;->pos:I

    iput p1, p0, Lcom/codemao/midi/sun/AudioFloatInputStream$BytaArrayAudioFloatInputStream;->markpos:I

    return-void
.end method

.method public markSupported()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public read([FII)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-ltz p2, :cond_34

    if-ltz p3, :cond_34

    .line 80
    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_34

    .line 82
    iget v0, p0, Lcom/codemao/midi/sun/AudioFloatInputStream$BytaArrayAudioFloatInputStream;->pos:I

    iget v1, p0, Lcom/codemao/midi/sun/AudioFloatInputStream$BytaArrayAudioFloatInputStream;->buffer_len:I

    if-lt v0, v1, :cond_13

    const/4 p1, -0x1

    return p1

    :cond_13
    if-nez p3, :cond_17

    const/4 p1, 0x0

    return p1

    :cond_17
    add-int v2, v0, p3

    if-le v2, v1, :cond_1d

    sub-int p3, v1, v0

    .line 88
    :cond_1d
    iget-object v1, p0, Lcom/codemao/midi/sun/AudioFloatInputStream$BytaArrayAudioFloatInputStream;->converter:Lcom/codemao/midi/sun/AudioFloatConverter;

    iget-object v2, p0, Lcom/codemao/midi/sun/AudioFloatInputStream$BytaArrayAudioFloatInputStream;->buffer:[B

    iget v3, p0, Lcom/codemao/midi/sun/AudioFloatInputStream$BytaArrayAudioFloatInputStream;->buffer_offset:I

    iget v4, p0, Lcom/codemao/midi/sun/AudioFloatInputStream$BytaArrayAudioFloatInputStream;->framesize_pc:I

    mul-int v0, v0, v4

    add-int/2addr v3, v0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/codemao/midi/sun/AudioFloatConverter;->toFloatArray([BI[FII)[F

    .line 90
    iget p1, p0, Lcom/codemao/midi/sun/AudioFloatInputStream$BytaArrayAudioFloatInputStream;->pos:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/codemao/midi/sun/AudioFloatInputStream$BytaArrayAudioFloatInputStream;->pos:I

    return p3

    .line 81
    :cond_34
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public reset()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    iget v0, p0, Lcom/codemao/midi/sun/AudioFloatInputStream$BytaArrayAudioFloatInputStream;->markpos:I

    iput v0, p0, Lcom/codemao/midi/sun/AudioFloatInputStream$BytaArrayAudioFloatInputStream;->pos:I

    return-void
.end method

.method public skip(J)J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    iget v0, p0, Lcom/codemao/midi/sun/AudioFloatInputStream$BytaArrayAudioFloatInputStream;->pos:I

    iget v1, p0, Lcom/codemao/midi/sun/AudioFloatInputStream$BytaArrayAudioFloatInputStream;->buffer_len:I

    if-lt v0, v1, :cond_9

    const-wide/16 p1, -0x1

    return-wide p1

    :cond_9
    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-gtz v4, :cond_10

    return-wide v2

    :cond_10
    int-to-long v2, v0

    add-long/2addr v2, p1

    int-to-long v4, v1

    cmp-long v6, v2, v4

    if-lez v6, :cond_19

    sub-int/2addr v1, v0

    int-to-long p1, v1

    :cond_19
    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v1, v0

    .line 101
    iput v1, p0, Lcom/codemao/midi/sun/AudioFloatInputStream$BytaArrayAudioFloatInputStream;->pos:I

    return-wide p1
.end method
