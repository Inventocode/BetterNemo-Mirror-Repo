.class public Lcom/codemao/toolssdk/dsp/AudioDispatcher;
.super Ljava/lang/Object;
.source "AudioDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private audioByteBuffer:[B

.field private audioEvent:Lcom/codemao/toolssdk/dsp/AudioEvent;

.field private audioFloatBuffer:[F

.field private final audioInputStream:Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioInputStream;

.field private final audioProcessors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/dsp/AudioProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private byteOverlap:I

.field private byteStepSize:I

.field private bytesProcessed:J

.field private bytesToSkip:J

.field private final converter:Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter;

.field private floatOverlap:I

.field private floatStepSize:I

.field private final format:Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;

.field private stopped:Z

.field private zeroPadFirstBuffer:Z

.field private zeroPadLastBuffer:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 46
    const-class v0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;

    .line 52
    const-class v0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioInputStream;II)V
    .registers 5

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->audioProcessors:Ljava/util/List;

    .line 155
    iput-object p1, p0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->audioInputStream:Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioInputStream;

    .line 157
    invoke-interface {p1}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioInputStream;->getFormat()Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->format:Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;

    .line 160
    invoke-virtual {p0, p2, p3}, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->setStepSizeAndOverlap(II)V

    .line 162
    new-instance p2, Lcom/codemao/toolssdk/dsp/AudioEvent;

    invoke-direct {p2, p1}, Lcom/codemao/toolssdk/dsp/AudioEvent;-><init>(Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;)V

    iput-object p2, p0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->audioEvent:Lcom/codemao/toolssdk/dsp/AudioEvent;

    .line 163
    iget-object v0, p0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->audioFloatBuffer:[F

    invoke-virtual {p2, v0}, Lcom/codemao/toolssdk/dsp/AudioEvent;->setFloatBuffer([F)V

    .line 164
    iget-object p2, p0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->audioEvent:Lcom/codemao/toolssdk/dsp/AudioEvent;

    invoke-virtual {p2, p3}, Lcom/codemao/toolssdk/dsp/AudioEvent;->setOverlap(I)V

    .line 166
    invoke-static {p1}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter;->getConverter(Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;)Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->converter:Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter;

    const/4 p1, 0x0

    .line 168
    iput-boolean p1, p0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->stopped:Z

    const-wide/16 p1, 0x0

    .line 170
    iput-wide p1, p0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->bytesToSkip:J

    const/4 p1, 0x1

    .line 172
    iput-boolean p1, p0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->zeroPadLastBuffer:Z

    return-void
.end method

.method private readNextAudioBlock()I
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 364
    iget-wide v1, v0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->bytesProcessed:J

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    cmp-long v7, v1, v3

    if-eqz v7, :cond_15

    iget-wide v3, v0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->bytesToSkip:J

    cmp-long v7, v1, v3

    if-nez v7, :cond_13

    goto :goto_15

    :cond_13
    const/4 v1, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v1, 0x1

    :goto_16
    if-eqz v1, :cond_22

    .line 372
    iget-boolean v2, v0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->zeroPadFirstBuffer:Z

    if-nez v2, :cond_22

    .line 375
    iget-object v2, v0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->audioByteBuffer:[B

    array-length v2, v2

    const/4 v4, 0x0

    const/4 v9, 0x0

    goto :goto_29

    .line 381
    :cond_22
    iget v2, v0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->byteStepSize:I

    .line 382
    iget v3, v0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->byteOverlap:I

    .line 383
    iget v4, v0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->floatOverlap:I

    move v9, v3

    :goto_29
    if-nez v1, :cond_39

    .line 388
    iget-object v3, v0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->audioFloatBuffer:[F

    array-length v7, v3

    iget v8, v0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->floatOverlap:I

    iget v10, v0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->floatStepSize:I

    add-int v11, v8, v10

    if-ne v7, v11, :cond_39

    .line 389
    invoke-static {v3, v10, v3, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_39
    const/4 v3, 0x0

    const/4 v13, 0x0

    .line 407
    :goto_3b
    iget-boolean v7, v0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->stopped:Z

    if-nez v7, :cond_58

    if-nez v3, :cond_58

    if-ge v13, v2, :cond_58

    const/4 v7, -0x1

    .line 409
    :try_start_44
    iget-object v8, v0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->audioInputStream:Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioInputStream;

    iget-object v10, v0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->audioByteBuffer:[B

    add-int v11, v9, v13

    sub-int v12, v2, v13

    invoke-interface {v8, v10, v11, v12}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioInputStream;->read([BII)I

    move-result v8
    :try_end_50
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_44 .. :try_end_50} :catch_51

    goto :goto_52

    :catch_51
    const/4 v8, -0x1

    :goto_52
    if-ne v8, v7, :cond_56

    const/4 v3, 0x1

    goto :goto_3b

    :cond_56
    add-int/2addr v13, v8

    goto :goto_3b

    :cond_58
    if-eqz v3, :cond_a7

    .line 426
    iget-boolean v1, v0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->zeroPadLastBuffer:Z

    if-eqz v1, :cond_75

    add-int v1, v9, v13

    .line 428
    :goto_60
    iget-object v8, v0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->audioByteBuffer:[B

    array-length v2, v8

    if-ge v1, v2, :cond_6a

    .line 429
    aput-byte v6, v8, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_60

    .line 431
    :cond_6a
    iget-object v7, v0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->converter:Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter;

    iget-object v10, v0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->audioFloatBuffer:[F

    iget v12, v0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->floatStepSize:I

    move v11, v4

    invoke-virtual/range {v7 .. v12}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter;->toFloatArray([BI[FII)[F

    goto :goto_d1

    .line 434
    :cond_75
    iget-object v1, v0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->audioByteBuffer:[B

    add-int v2, v9, v13

    .line 435
    new-array v2, v2, [B

    iput-object v2, v0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->audioByteBuffer:[B

    .line 436
    :goto_7d
    iget-object v2, v0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->audioByteBuffer:[B

    array-length v3, v2

    if-ge v6, v3, :cond_89

    .line 437
    aget-byte v3, v1, v6

    aput-byte v3, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_7d

    .line 439
    :cond_89
    iget-object v1, v0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->format:Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->getFrameSize()I

    move-result v1

    div-int v12, v13, v1

    .line 440
    iget-object v1, v0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->format:Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->getFrameSize()I

    move-result v1

    div-int v1, v13, v1

    add-int/2addr v1, v4

    new-array v10, v1, [F

    iput-object v10, v0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->audioFloatBuffer:[F

    .line 441
    iget-object v7, v0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->converter:Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter;

    iget-object v8, v0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->audioByteBuffer:[B

    move v11, v4

    invoke-virtual/range {v7 .. v12}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter;->toFloatArray([BI[FII)[F

    goto :goto_d1

    :cond_a7
    if-ne v2, v13, :cond_cf

    if-eqz v1, :cond_c2

    .line 447
    iget-boolean v1, v0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->zeroPadFirstBuffer:Z

    if-nez v1, :cond_c2

    .line 448
    iget-object v14, v0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->converter:Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter;

    iget-object v15, v0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->audioByteBuffer:[B

    const/16 v16, 0x0

    iget-object v1, v0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->audioFloatBuffer:[F

    const/16 v18, 0x0

    array-length v2, v1

    move-object/from16 v17, v1

    move/from16 v19, v2

    invoke-virtual/range {v14 .. v19}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter;->toFloatArray([BI[FII)[F

    goto :goto_d1

    .line 450
    :cond_c2
    iget-object v7, v0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->converter:Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter;

    iget-object v8, v0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->audioByteBuffer:[B

    iget-object v10, v0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->audioFloatBuffer:[F

    iget v12, v0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->floatStepSize:I

    move v11, v4

    invoke-virtual/range {v7 .. v12}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter;->toFloatArray([BI[FII)[F

    goto :goto_d1

    :cond_cf
    if-eqz v7, :cond_de

    .line 461
    :goto_d1
    iget-object v1, v0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->audioEvent:Lcom/codemao/toolssdk/dsp/AudioEvent;

    iget-object v2, v0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->audioFloatBuffer:[F

    invoke-virtual {v1, v2}, Lcom/codemao/toolssdk/dsp/AudioEvent;->setFloatBuffer([F)V

    .line 462
    iget-object v1, v0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->audioEvent:Lcom/codemao/toolssdk/dsp/AudioEvent;

    invoke-virtual {v1, v4}, Lcom/codemao/toolssdk/dsp/AudioEvent;->setOverlap(I)V

    return v13

    .line 455
    :cond_de
    new-instance v1, Ljava/io/IOException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 456
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v5

    const-string v2, "The end of the audio stream has not been reached and the number of bytes read (%d) is not equal to the expected amount of bytes(%d)."

    .line 455
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private skipToStart()V
    .registers 7

    const-wide/16 v0, 0x0

    .line 312
    :try_start_2
    iget-object v2, p0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->audioInputStream:Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioInputStream;

    iget-wide v3, p0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->bytesToSkip:J

    invoke-interface {v2, v3, v4}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioInputStream;->skip(J)J

    move-result-wide v0

    .line 313
    iget-wide v2, p0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->bytesToSkip:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_16

    .line 316
    iget-wide v4, p0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->bytesProcessed:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->bytesProcessed:J

    return-void

    .line 314
    :cond_16
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_1c} :catch_1c

    :catch_1c
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 318
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    iget-wide v3, p0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->bytesToSkip:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v2, v0

    const-string v0, "Did not skip the expected amount of bytes,  %d skipped, %d expected!"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 319
    sget-object v1, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->LOG:Ljava/util/logging/Logger;

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 320
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public addAudioProcessor(Lcom/codemao/toolssdk/dsp/AudioProcessor;)V
    .registers 5

    .line 233
    iget-object v0, p0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->audioProcessors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    sget-object v0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->LOG:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added an audioprocessor to the list of processors: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return-void
.end method

.method public getFormat()Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;
    .registers 2

    .line 472
    iget-object v0, p0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->format:Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;

    return-object v0
.end method

.method public isStopped()Z
    .registers 2

    .line 494
    iget-boolean v0, p0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->stopped:Z

    return v0
.end method

.method public removeAudioProcessor(Lcom/codemao/toolssdk/dsp/AudioProcessor;)V
    .registers 5

    .line 244
    iget-object v0, p0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->audioProcessors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 246
    sget-object v0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->LOG:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove an audioprocessor to the list of processors: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return-void
.end method

.method public run()V
    .registers 7

    const-string v0, "Error while reading audio input stream: "

    .line 253
    iget-wide v1, p0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->bytesToSkip:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_d

    .line 254
    invoke-direct {p0}, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->skipToStart()V

    .line 260
    :cond_d
    :try_start_d
    iget-object v1, p0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->audioEvent:Lcom/codemao/toolssdk/dsp/AudioEvent;

    iget-wide v2, p0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->bytesProcessed:J

    invoke-virtual {v1, v2, v3}, Lcom/codemao/toolssdk/dsp/AudioEvent;->setBytesProcessed(J)V

    .line 261
    invoke-direct {p0}, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->readNextAudioBlock()I

    move-result v1
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_18} :catch_7f

    :cond_18
    :goto_18
    if-eqz v1, :cond_72

    .line 269
    iget-boolean v2, p0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->stopped:Z

    if-nez v2, :cond_72

    .line 272
    iget-object v2, p0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->audioProcessors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/toolssdk/dsp/AudioProcessor;

    .line 273
    iget-object v4, p0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->audioEvent:Lcom/codemao/toolssdk/dsp/AudioEvent;

    invoke-interface {v3, v4}, Lcom/codemao/toolssdk/dsp/AudioProcessor;->process(Lcom/codemao/toolssdk/dsp/AudioEvent;)Z

    move-result v3

    if-nez v3, :cond_24

    .line 279
    :cond_38
    iget-boolean v2, p0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->stopped:Z

    if-nez v2, :cond_18

    .line 281
    iget-wide v2, p0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->bytesProcessed:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->bytesProcessed:J

    .line 282
    iget-object v1, p0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->audioEvent:Lcom/codemao/toolssdk/dsp/AudioEvent;

    invoke-virtual {v1, v2, v3}, Lcom/codemao/toolssdk/dsp/AudioEvent;->setBytesProcessed(J)V

    .line 287
    :try_start_47
    invoke-direct {p0}, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->readNextAudioBlock()I

    move-result v1

    .line 288
    iget-object v2, p0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->audioEvent:Lcom/codemao/toolssdk/dsp/AudioEvent;

    iget v3, p0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->floatOverlap:I

    invoke-virtual {v2, v3}, Lcom/codemao/toolssdk/dsp/AudioEvent;->setOverlap(I)V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_52} :catch_53

    goto :goto_18

    :catch_53
    move-exception v1

    .line 290
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 291
    sget-object v1, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->LOG:Ljava/util/logging/Logger;

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 292
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 300
    :cond_72
    iget-boolean v0, p0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->stopped:Z

    if-nez v0, :cond_79

    .line 301
    invoke-virtual {p0}, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->stop()V

    .line 305
    :cond_79
    iget-object v0, p0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->audioInputStream:Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioInputStream;

    invoke-interface {v0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioInputStream;->destroyPipe()V

    return-void

    :catch_7f
    move-exception v1

    .line 263
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 264
    sget-object v1, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->LOG:Ljava/util/logging/Logger;

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 265
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setStepSizeAndOverlap(II)V
    .registers 4

    .line 196
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->audioFloatBuffer:[F

    .line 197
    iput p2, p0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->floatOverlap:I

    .line 198
    array-length v0, p1

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->floatStepSize:I

    .line 200
    array-length p1, p1

    iget-object p2, p0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->format:Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;

    invoke-virtual {p2}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->getFrameSize()I

    move-result p2

    mul-int p1, p1, p2

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->audioByteBuffer:[B

    .line 201
    iget p1, p0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->floatOverlap:I

    iget-object p2, p0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->format:Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;

    invoke-virtual {p2}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->getFrameSize()I

    move-result p2

    mul-int p1, p1, p2

    iput p1, p0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->byteOverlap:I

    .line 202
    iget p1, p0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->floatStepSize:I

    iget-object p2, p0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->format:Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;

    invoke-virtual {p2}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->getFrameSize()I

    move-result p2

    mul-int p1, p1, p2

    iput p1, p0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->byteStepSize:I

    return-void
.end method

.method public stop()V
    .registers 5

    const/4 v0, 0x1

    .line 328
    iput-boolean v0, p0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->stopped:Z

    .line 329
    iget-object v0, p0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->audioProcessors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/toolssdk/dsp/AudioProcessor;

    .line 330
    invoke-interface {v1}, Lcom/codemao/toolssdk/dsp/AudioProcessor;->processingFinished()V

    goto :goto_9

    .line 332
    :cond_19
    iget-object v0, p0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->audioProcessors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 334
    :try_start_1e
    iget-object v0, p0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->audioInputStream:Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioInputStream;

    invoke-interface {v0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioInputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_23} :catch_24

    goto :goto_44

    :catch_24
    move-exception v0

    .line 336
    sget-object v1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "停止录音异常:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dRecordLocal(Ljava/lang/String;)V

    .line 337
    sget-object v1, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "Closing audio stream error."

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_44
    return-void
.end method
