.class Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatFormatConverterInputStream;
.super Ljava/io/InputStream;
.source "AudioFloatFormatConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/midi/sun/AudioFloatFormatConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioFloatFormatConverterInputStream"
.end annotation


# instance fields
.field private converter:Lcom/codemao/midi/sun/AudioFloatConverter;

.field private fsize:I

.field private readfloatbuffer:[F

.field private stream:Lcom/codemao/midi/sun/AudioFloatInputStream;


# direct methods
.method public constructor <init>(Lcom/codemao/midi/javax/sampled/AudioFormat;Lcom/codemao/midi/sun/AudioFloatInputStream;)V
    .registers 4

    .line 58
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatFormatConverterInputStream;->fsize:I

    .line 59
    iput-object p2, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatFormatConverterInputStream;->stream:Lcom/codemao/midi/sun/AudioFloatInputStream;

    .line 60
    invoke-static {p1}, Lcom/codemao/midi/sun/AudioFloatConverter;->getConverter(Lcom/codemao/midi/javax/sampled/AudioFormat;)Lcom/codemao/midi/sun/AudioFloatConverter;

    move-result-object p2

    iput-object p2, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatFormatConverterInputStream;->converter:Lcom/codemao/midi/sun/AudioFloatConverter;

    .line 61
    invoke-virtual {p1}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result p1

    add-int/lit8 p1, p1, 0x7

    div-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatFormatConverterInputStream;->fsize:I

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

    .line 85
    iget-object v0, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatFormatConverterInputStream;->stream:Lcom/codemao/midi/sun/AudioFloatInputStream;

    invoke-virtual {v0}, Lcom/codemao/midi/sun/AudioFloatInputStream;->available()I

    move-result v0

    if-gez v0, :cond_9

    return v0

    .line 88
    :cond_9
    iget v1, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatFormatConverterInputStream;->fsize:I

    mul-int v0, v0, v1

    return v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatFormatConverterInputStream;->stream:Lcom/codemao/midi/sun/AudioFloatInputStream;

    invoke-virtual {v0}, Lcom/codemao/midi/sun/AudioFloatInputStream;->close()V

    return-void
.end method

.method public declared-synchronized mark(I)V
    .registers 4

    monitor-enter p0

    .line 96
    :try_start_1
    iget-object v0, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatFormatConverterInputStream;->stream:Lcom/codemao/midi/sun/AudioFloatInputStream;

    iget v1, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatFormatConverterInputStream;->fsize:I

    mul-int p1, p1, v1

    invoke-virtual {v0, p1}, Lcom/codemao/midi/sun/AudioFloatInputStream;->mark(I)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 97
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public markSupported()Z
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatFormatConverterInputStream;->stream:Lcom/codemao/midi/sun/AudioFloatInputStream;

    invoke-virtual {v0}, Lcom/codemao/midi/sun/AudioFloatInputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 66
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-gez v1, :cond_a

    return v1

    :cond_a
    const/4 v1, 0x0

    .line 69
    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget v0, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatFormatConverterInputStream;->fsize:I

    div-int/2addr p3, v0

    .line 75
    iget-object v0, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatFormatConverterInputStream;->readfloatbuffer:[F

    if-eqz v0, :cond_a

    array-length v0, v0

    if-ge v0, p3, :cond_e

    .line 76
    :cond_a
    new-array v0, p3, [F

    iput-object v0, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatFormatConverterInputStream;->readfloatbuffer:[F

    .line 77
    :cond_e
    iget-object v0, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatFormatConverterInputStream;->stream:Lcom/codemao/midi/sun/AudioFloatInputStream;

    iget-object v1, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatFormatConverterInputStream;->readfloatbuffer:[F

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p3}, Lcom/codemao/midi/sun/AudioFloatInputStream;->read([FII)I

    move-result p3

    if-gez p3, :cond_1a

    return p3

    .line 80
    :cond_1a
    iget-object v3, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatFormatConverterInputStream;->converter:Lcom/codemao/midi/sun/AudioFloatConverter;

    iget-object v4, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatFormatConverterInputStream;->readfloatbuffer:[F

    const/4 v5, 0x0

    move v6, p3

    move-object v7, p1

    move v8, p2

    invoke-virtual/range {v3 .. v8}, Lcom/codemao/midi/sun/AudioFloatConverter;->toByteArray([FII[BI)[B

    .line 81
    iget p1, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatFormatConverterInputStream;->fsize:I

    mul-int p3, p3, p1

    return p3
.end method

.method public declared-synchronized reset()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 104
    :try_start_1
    iget-object v0, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatFormatConverterInputStream;->stream:Lcom/codemao/midi/sun/AudioFloatInputStream;

    invoke-virtual {v0}, Lcom/codemao/midi/sun/AudioFloatInputStream;->reset()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 105
    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatFormatConverterInputStream;->stream:Lcom/codemao/midi/sun/AudioFloatInputStream;

    iget v1, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatFormatConverterInputStream;->fsize:I

    int-to-long v1, v1

    div-long/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Lcom/codemao/midi/sun/AudioFloatInputStream;->skip(J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_11

    return-wide p1

    .line 111
    :cond_11
    iget v0, p0, Lcom/codemao/midi/sun/AudioFloatFormatConverter$AudioFloatFormatConverterInputStream;->fsize:I

    int-to-long v0, v0

    mul-long p1, p1, v0

    return-wide p1
.end method
