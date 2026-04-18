.class public Lcom/codemao/midi/javax/sampled/AudioInputStream;
.super Ljava/io/InputStream;
.source "AudioInputStream.java"


# instance fields
.field protected format:Lcom/codemao/midi/javax/sampled/AudioFormat;

.field protected frameLength:J

.field protected framePos:J

.field protected frameSize:I

.field private markPushBackBuffer:[B

.field private markPushBackLen:I

.field private markpos:J

.field private pushBackBuffer:[B

.field private pushBackLen:I

.field private stream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/codemao/midi/javax/sampled/AudioFormat;J)V
    .registers 7

    .line 107
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcom/codemao/midi/javax/sampled/AudioInputStream;->pushBackBuffer:[B

    const/4 v1, 0x0

    .line 84
    iput v1, p0, Lcom/codemao/midi/javax/sampled/AudioInputStream;->pushBackLen:I

    .line 89
    iput-object v0, p0, Lcom/codemao/midi/javax/sampled/AudioInputStream;->markPushBackBuffer:[B

    .line 94
    iput v1, p0, Lcom/codemao/midi/javax/sampled/AudioInputStream;->markPushBackLen:I

    .line 109
    iput-object p2, p0, Lcom/codemao/midi/javax/sampled/AudioInputStream;->format:Lcom/codemao/midi/javax/sampled/AudioFormat;

    .line 110
    iput-wide p3, p0, Lcom/codemao/midi/javax/sampled/AudioInputStream;->frameLength:J

    .line 111
    invoke-virtual {p2}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getFrameSize()I

    move-result p2

    iput p2, p0, Lcom/codemao/midi/javax/sampled/AudioInputStream;->frameSize:I

    const/4 p3, -0x1

    if-eq p2, p3, :cond_1c

    if-gtz p2, :cond_1f

    :cond_1c
    const/4 p2, 0x1

    .line 116
    iput p2, p0, Lcom/codemao/midi/javax/sampled/AudioInputStream;->frameSize:I

    .line 119
    :cond_1f
    iput-object p1, p0, Lcom/codemao/midi/javax/sampled/AudioInputStream;->stream:Ljava/io/InputStream;

    const-wide/16 p1, 0x0

    .line 120
    iput-wide p1, p0, Lcom/codemao/midi/javax/sampled/AudioInputStream;->framePos:J

    .line 121
    iput-wide p1, p0, Lcom/codemao/midi/javax/sampled/AudioInputStream;->markpos:J

    return-void
.end method


# virtual methods
.method public available()I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 352
    iget-object v0, p0, Lcom/codemao/midi/javax/sampled/AudioInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 355
    iget-wide v1, p0, Lcom/codemao/midi/javax/sampled/AudioInputStream;->frameLength:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1f

    iget v3, p0, Lcom/codemao/midi/javax/sampled/AudioInputStream;->frameSize:I

    div-int v4, v0, v3

    int-to-long v4, v4

    iget-wide v6, p0, Lcom/codemao/midi/javax/sampled/AudioInputStream;->framePos:J

    sub-long v8, v1, v6

    cmp-long v10, v4, v8

    if-lez v10, :cond_1f

    sub-long/2addr v1, v6

    long-to-int v0, v1

    mul-int v0, v0, v3

    :cond_1f
    return v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 369
    iget-object v0, p0, Lcom/codemao/midi/javax/sampled/AudioInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public getFormat()Lcom/codemao/midi/javax/sampled/AudioFormat;
    .registers 2

    .line 153
    iget-object v0, p0, Lcom/codemao/midi/javax/sampled/AudioInputStream;->format:Lcom/codemao/midi/javax/sampled/AudioFormat;

    return-object v0
.end method

.method public getFrameLength()J
    .registers 3

    .line 162
    iget-wide v0, p0, Lcom/codemao/midi/javax/sampled/AudioInputStream;->frameLength:J

    return-wide v0
.end method

.method public mark(I)V
    .registers 5

    .line 383
    iget-object v0, p0, Lcom/codemao/midi/javax/sampled/AudioInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 384
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioInputStream;->markSupported()Z

    move-result p1

    if-eqz p1, :cond_27

    .line 385
    iget-wide v0, p0, Lcom/codemao/midi/javax/sampled/AudioInputStream;->framePos:J

    iput-wide v0, p0, Lcom/codemao/midi/javax/sampled/AudioInputStream;->markpos:J

    .line 387
    iget p1, p0, Lcom/codemao/midi/javax/sampled/AudioInputStream;->pushBackLen:I

    iput p1, p0, Lcom/codemao/midi/javax/sampled/AudioInputStream;->markPushBackLen:I

    if-lez p1, :cond_27

    .line 389
    iget-object v0, p0, Lcom/codemao/midi/javax/sampled/AudioInputStream;->markPushBackBuffer:[B

    if-nez v0, :cond_1f

    .line 390
    iget v0, p0, Lcom/codemao/midi/javax/sampled/AudioInputStream;->frameSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/codemao/midi/javax/sampled/AudioInputStream;->markPushBackBuffer:[B

    .line 392
    :cond_1f
    iget-object v0, p0, Lcom/codemao/midi/javax/sampled/AudioInputStream;->pushBackBuffer:[B

    iget-object v1, p0, Lcom/codemao/midi/javax/sampled/AudioInputStream;->markPushBackBuffer:[B

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_27
    return-void
.end method

.method public markSupported()Z
    .registers 2

    .line 430
    iget-object v0, p0, Lcom/codemao/midi/javax/sampled/AudioInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

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

    .line 179
    iget v0, p0, Lcom/codemao/midi/javax/sampled/AudioInputStream;->frameSize:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    new-array v0, v1, [B

    .line 184
    invoke-virtual {p0, v0}, Lcom/codemao/midi/javax/sampled/AudioInputStream;->read([B)I

    move-result v1

    if-gtz v1, :cond_f

    const/4 v0, -0x1

    return v0

    :cond_f
    const/4 v1, 0x0

    .line 189
    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 180
    :cond_15
    new-instance v0, Ljava/io/IOException;

    const-string v1, "cannot read a single byte if frame size > 1"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([B)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/codemao/midi/javax/sampled/AudioInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    iget v0, p0, Lcom/codemao/midi/javax/sampled/AudioInputStream;->frameSize:I

    rem-int v1, p3, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    .line 240
    rem-int v1, p3, v0

    sub-int/2addr p3, v1

    if-nez p3, :cond_d

    return v2

    .line 246
    :cond_d
    iget-wide v3, p0, Lcom/codemao/midi/javax/sampled/AudioInputStream;->frameLength:J

    const-wide/16 v5, -0x1

    const/4 v1, -0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_2a

    .line 247
    iget-wide v5, p0, Lcom/codemao/midi/javax/sampled/AudioInputStream;->framePos:J

    cmp-long v7, v5, v3

    if-ltz v7, :cond_1d

    return v1

    .line 252
    :cond_1d
    div-int v7, p3, v0

    int-to-long v7, v7

    sub-long v9, v3, v5

    cmp-long v11, v7, v9

    if-lez v11, :cond_2a

    sub-long/2addr v3, v5

    long-to-int p3, v3

    mul-int p3, p3, v0

    .line 263
    :cond_2a
    iget v0, p0, Lcom/codemao/midi/javax/sampled/AudioInputStream;->pushBackLen:I

    if-lez v0, :cond_3e

    if-lt p3, v0, :cond_3e

    .line 264
    iget-object v3, p0, Lcom/codemao/midi/javax/sampled/AudioInputStream;->pushBackBuffer:[B

    invoke-static {v3, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 266
    iget v0, p0, Lcom/codemao/midi/javax/sampled/AudioInputStream;->pushBackLen:I

    add-int v3, p2, v0

    sub-int/2addr p3, v0

    add-int/2addr v0, v2

    .line 269
    iput v2, p0, Lcom/codemao/midi/javax/sampled/AudioInputStream;->pushBackLen:I

    goto :goto_40

    :cond_3e
    move v3, p2

    const/4 v0, 0x0

    .line 272
    :goto_40
    iget-object v4, p0, Lcom/codemao/midi/javax/sampled/AudioInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v4, p1, v3, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    if-ne p3, v1, :cond_49

    return v1

    :cond_49
    if-lez p3, :cond_4c

    add-int/2addr v0, p3

    :cond_4c
    if-lez v0, :cond_72

    .line 280
    iget p3, p0, Lcom/codemao/midi/javax/sampled/AudioInputStream;->frameSize:I

    rem-int v1, v0, p3

    iput v1, p0, Lcom/codemao/midi/javax/sampled/AudioInputStream;->pushBackLen:I

    if-lez v1, :cond_68

    .line 284
    iget-object v3, p0, Lcom/codemao/midi/javax/sampled/AudioInputStream;->pushBackBuffer:[B

    if-nez v3, :cond_5e

    .line 285
    new-array p3, p3, [B

    iput-object p3, p0, Lcom/codemao/midi/javax/sampled/AudioInputStream;->pushBackBuffer:[B

    :cond_5e
    add-int/2addr p2, v0

    sub-int/2addr p2, v1

    .line 287
    iget-object p3, p0, Lcom/codemao/midi/javax/sampled/AudioInputStream;->pushBackBuffer:[B

    invoke-static {p1, p2, p3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 289
    iget p1, p0, Lcom/codemao/midi/javax/sampled/AudioInputStream;->pushBackLen:I

    sub-int/2addr v0, p1

    .line 292
    :cond_68
    iget-wide p1, p0, Lcom/codemao/midi/javax/sampled/AudioInputStream;->framePos:J

    iget p3, p0, Lcom/codemao/midi/javax/sampled/AudioInputStream;->frameSize:I

    div-int p3, v0, p3

    int-to-long v1, p3

    add-long/2addr p1, v1

    iput-wide p1, p0, Lcom/codemao/midi/javax/sampled/AudioInputStream;->framePos:J

    :cond_72
    return v0
.end method

.method public reset()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 407
    iget-object v0, p0, Lcom/codemao/midi/javax/sampled/AudioInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 408
    iget-wide v0, p0, Lcom/codemao/midi/javax/sampled/AudioInputStream;->markpos:J

    iput-wide v0, p0, Lcom/codemao/midi/javax/sampled/AudioInputStream;->framePos:J

    .line 410
    iget v0, p0, Lcom/codemao/midi/javax/sampled/AudioInputStream;->markPushBackLen:I

    iput v0, p0, Lcom/codemao/midi/javax/sampled/AudioInputStream;->pushBackLen:I

    if-lez v0, :cond_23

    .line 412
    iget-object v1, p0, Lcom/codemao/midi/javax/sampled/AudioInputStream;->pushBackBuffer:[B

    if-nez v1, :cond_1b

    .line 413
    iget v1, p0, Lcom/codemao/midi/javax/sampled/AudioInputStream;->frameSize:I

    add-int/lit8 v1, v1, -0x1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/codemao/midi/javax/sampled/AudioInputStream;->pushBackBuffer:[B

    .line 415
    :cond_1b
    iget-object v1, p0, Lcom/codemao/midi/javax/sampled/AudioInputStream;->markPushBackBuffer:[B

    iget-object v2, p0, Lcom/codemao/midi/javax/sampled/AudioInputStream;->pushBackBuffer:[B

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_23
    return-void
.end method

.method public skip(J)J
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    iget v0, p0, Lcom/codemao/midi/javax/sampled/AudioInputStream;->frameSize:I

    int-to-long v1, v0

    rem-long v1, p1, v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_f

    int-to-long v1, v0

    .line 311
    rem-long v1, p1, v1

    sub-long/2addr p1, v1

    .line 314
    :cond_f
    iget-wide v1, p0, Lcom/codemao/midi/javax/sampled/AudioInputStream;->frameLength:J

    const-wide/16 v5, -0x1

    cmp-long v7, v1, v5

    if-eqz v7, :cond_26

    int-to-long v5, v0

    .line 316
    div-long v5, p1, v5

    iget-wide v7, p0, Lcom/codemao/midi/javax/sampled/AudioInputStream;->framePos:J

    sub-long v9, v1, v7

    cmp-long v11, v5, v9

    if-lez v11, :cond_26

    sub-long/2addr v1, v7

    int-to-long p1, v0

    mul-long p1, p1, v1

    .line 320
    :cond_26
    iget-object v0, p0, Lcom/codemao/midi/javax/sampled/AudioInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    .line 323
    iget v0, p0, Lcom/codemao/midi/javax/sampled/AudioInputStream;->frameSize:I

    int-to-long v1, v0

    rem-long v1, p1, v1

    cmp-long v5, v1, v3

    if-nez v5, :cond_42

    cmp-long v1, p1, v3

    if-ltz v1, :cond_41

    .line 329
    iget-wide v1, p0, Lcom/codemao/midi/javax/sampled/AudioInputStream;->framePos:J

    int-to-long v3, v0

    div-long v3, p1, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/codemao/midi/javax/sampled/AudioInputStream;->framePos:J

    :cond_41
    return-wide p1

    .line 326
    :cond_42
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Could not skip an integer number of frames."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
