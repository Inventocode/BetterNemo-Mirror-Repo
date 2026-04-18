.class final Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;
.super Lcom/google/android/exoplayer2/transformer/TransformerBaseRenderer;
.source "TransformerAudioRenderer.java"


# static fields
.field private static final DEFAULT_ENCODER_BITRATE:I = 0x20000

.field private static final SPEED_UNSET:F = -1.0f

.field private static final TAG:Ljava/lang/String; = "TransformerAudioRenderer"


# instance fields
.field private currentSpeed:F

.field private decoder:Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;

.field private final decoderInputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

.field private decoderInputFormat:Lcom/google/android/exoplayer2/Format;

.field private drainingSonicForSpeedChange:Z

.field private encoder:Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;

.field private encoderInputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

.field private final encoderInputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

.field private hasEncoderOutputFormat:Z

.field private muxerWrapperTrackEnded:Z

.field private nextEncoderInputBufferTimeUs:J

.field private final sonicAudioProcessor:Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;

.field private sonicOutputBuffer:Ljava/nio/ByteBuffer;

.field private speedProvider:Lcom/google/android/exoplayer2/transformer/SpeedProvider;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/transformer/MuxerWrapper;Lcom/google/android/exoplayer2/transformer/TransformerMediaClock;Lcom/google/android/exoplayer2/transformer/Transformation;)V
    .registers 5

    const/4 v0, 0x1

    .line 69
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/exoplayer2/transformer/TransformerBaseRenderer;-><init>(ILcom/google/android/exoplayer2/transformer/MuxerWrapper;Lcom/google/android/exoplayer2/transformer/TransformerMediaClock;Lcom/google/android/exoplayer2/transformer/Transformation;)V

    .line 70
    new-instance p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->decoderInputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 72
    new-instance p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->encoderInputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 74
    new-instance p1, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->sonicAudioProcessor:Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;

    .line 75
    sget-object p1, Lcom/google/android/exoplayer2/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->sonicOutputBuffer:Ljava/nio/ByteBuffer;

    const-wide/16 p1, 0x0

    .line 76
    iput-wide p1, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->nextEncoderInputBufferTimeUs:J

    const/high16 p1, -0x40800000  # -1.0f

    .line 77
    iput p1, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->currentSpeed:F

    return-void
.end method

.method private createRendererException(Ljava/lang/Throwable;I)Lcom/google/android/exoplayer2/ExoPlaybackException;
    .registers 10

    .line 429
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BaseRenderer;->getIndex()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->decoderInputFormat:Lcom/google/android/exoplayer2/Format;

    const-string v1, "TransformerAudioRenderer"

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p1

    move v6, p2

    .line 426
    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Throwable;Ljava/lang/String;ILcom/google/android/exoplayer2/Format;IZI)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    return-object p1
.end method

.method private ensureDecoderConfigured()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "decoderInputFormat",
            "decoder"
        }
        result = true
    .end annotation

    .line 386
    iget-object v0, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->decoder:Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->decoderInputFormat:Lcom/google/android/exoplayer2/Format;

    if-eqz v0, :cond_a

    return v1

    .line 390
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BaseRenderer;->getFormatHolder()Lcom/google/android/exoplayer2/FormatHolder;

    move-result-object v0

    .line 391
    iget-object v2, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->decoderInputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 v3, 0x2

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/exoplayer2/BaseRenderer;->readSource(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    move-result v2

    const/4 v3, -0x5

    if-eq v2, v3, :cond_1a

    const/4 v0, 0x0

    return v0

    .line 395
    :cond_1a
    iget-object v0, v0, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/Format;

    iput-object v0, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->decoderInputFormat:Lcom/google/android/exoplayer2/Format;

    .line 398
    :try_start_24
    invoke-static {v0}, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->createForAudioDecoding(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;

    move-result-object v0
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_28} :catch_3c

    .line 403
    new-instance v2, Lcom/google/android/exoplayer2/transformer/SegmentSpeedProvider;

    iget-object v3, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->decoderInputFormat:Lcom/google/android/exoplayer2/Format;

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/transformer/SegmentSpeedProvider;-><init>(Lcom/google/android/exoplayer2/Format;)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->speedProvider:Lcom/google/android/exoplayer2/transformer/SpeedProvider;

    const-wide/16 v3, 0x0

    .line 404
    invoke-interface {v2, v3, v4}, Lcom/google/android/exoplayer2/transformer/SpeedProvider;->getSpeed(J)F

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->currentSpeed:F

    .line 405
    iput-object v0, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->decoder:Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;

    return v1

    :catch_3c
    move-exception v0

    const/16 v1, 0x3e8

    .line 401
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->createRendererException(Ljava/lang/Throwable;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0
.end method

.method private ensureEncoderAndAudioProcessingConfigured()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "encoder",
            "encoderInputAudioFormat"
        }
        result = true
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "decoder",
            "decoderInputFormat"
        }
    .end annotation

    .line 335
    iget-object v0, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->encoder:Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->encoderInputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    if-eqz v0, :cond_a

    return v1

    .line 338
    :cond_a
    iget-object v0, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->decoder:Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;

    .line 339
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->getOutputFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    if-nez v0, :cond_14

    const/4 v0, 0x0

    return v0

    .line 343
    :cond_14
    new-instance v2, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iget v3, v0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    iget v4, v0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    invoke-direct {v2, v3, v4, v0}, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;-><init>(III)V

    .line 348
    iget-object v0, p0, Lcom/google/android/exoplayer2/transformer/TransformerBaseRenderer;->transformation:Lcom/google/android/exoplayer2/transformer/Transformation;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/transformer/Transformation;->flattenForSlowMotion:Z

    const/16 v3, 0x3e8

    if-eqz v0, :cond_39

    .line 350
    :try_start_27
    iget-object v0, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->sonicAudioProcessor:Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->configure(Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;)Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    move-result-object v2

    .line 351
    iget v0, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->currentSpeed:F

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->flushSonicAndSetSpeed(F)V
    :try_end_32
    .catch Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException; {:try_start_27 .. :try_end_32} :catch_33

    goto :goto_39

    :catch_33
    move-exception v0

    .line 354
    invoke-direct {p0, v0, v3}, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->createRendererException(Ljava/lang/Throwable;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0

    .line 358
    :cond_39
    :goto_39
    iget-object v0, p0, Lcom/google/android/exoplayer2/transformer/TransformerBaseRenderer;->transformation:Lcom/google/android/exoplayer2/transformer/Transformation;

    iget-object v0, v0, Lcom/google/android/exoplayer2/transformer/Transformation;->audioMimeType:Ljava/lang/String;

    if-nez v0, :cond_43

    .line 359
    iget-object v0, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->decoderInputFormat:Lcom/google/android/exoplayer2/Format;

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 362
    :cond_43
    :try_start_43
    new-instance v4, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 365
    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    iget v4, v2, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->sampleRate:I

    .line 366
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleRate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    iget v4, v2, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->channelCount:I

    .line 367
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    const/high16 v4, 0x20000

    .line 368
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setAverageBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 369
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 363
    invoke-static {v0}, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->createForAudioEncoding(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->encoder:Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_68} :catch_6b

    .line 374
    iput-object v2, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->encoderInputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    return v1

    :catch_6b
    move-exception v0

    .line 372
    invoke-direct {p0, v0, v3}, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->createRendererException(Ljava/lang/Throwable;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0
.end method

.method private feedDecoderFromInput(Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;)Z
    .registers 7

    .line 273
    iget-object v0, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->decoderInputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->maybeDequeueInputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 277
    :cond_a
    iget-object v0, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->decoderInputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 279
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BaseRenderer;->getFormatHolder()Lcom/google/android/exoplayer2/FormatHolder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->decoderInputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/BaseRenderer;->readSource(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    move-result v0

    const/4 v2, -0x5

    if-eq v0, v2, :cond_47

    const/4 v2, -0x4

    if-eq v0, v2, :cond_20

    return v1

    .line 282
    :cond_20
    iget-object v0, p0, Lcom/google/android/exoplayer2/transformer/TransformerBaseRenderer;->mediaClock:Lcom/google/android/exoplayer2/transformer/TransformerMediaClock;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BaseRenderer;->getTrackType()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->decoderInputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/transformer/TransformerMediaClock;->updateTimeForTrackType(IJ)V

    .line 283
    iget-object v0, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->decoderInputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-wide v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iget-wide v3, p0, Lcom/google/android/exoplayer2/transformer/TransformerBaseRenderer;->streamOffsetUs:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    .line 284
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->flip()V

    .line 285
    iget-object v0, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->decoderInputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->queueInputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V

    .line 286
    iget-object p1, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->decoderInputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/Buffer;->isEndOfStream()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    .line 288
    :cond_47
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Format changes are not supported."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private feedEncoder(Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;Ljava/nio/ByteBuffer;)V
    .registers 10
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "encoderInputAudioFormat"
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->encoderInputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v0, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 302
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 303
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 304
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 305
    iget-object v2, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->encoderInputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-wide v3, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->nextEncoderInputBufferTimeUs:J

    iput-wide v3, v2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    .line 308
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    int-to-long v5, v0

    iget-object v0, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->encoderInputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iget v2, v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->bytesPerFrame:I

    iget v0, v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->sampleRate:I

    .line 307
    invoke-static {v5, v6, v2, v0}, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->getBufferDurationUs(JII)J

    move-result-wide v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->nextEncoderInputBufferTimeUs:J

    .line 311
    iget-object v0, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->encoderInputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/decoder/Buffer;->setFlags(I)V

    .line 312
    iget-object v0, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->encoderInputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->flip()V

    .line 313
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 314
    iget-object p2, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->encoderInputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->queueInputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V

    return-void
.end method

.method private feedEncoderFromDecoder(Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;)Z
    .registers 6
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "encoderInputAudioFormat"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->encoderInputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->maybeDequeueInputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 182
    :cond_a
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 183
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->queueEndOfStreamToEncoder(Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;)V

    return v1

    .line 187
    :cond_14
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->getOutputBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    if-nez v0, :cond_1b

    return v1

    .line 191
    :cond_1b
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->getOutputBufferInfo()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->isSpeedChanging(Landroid/media/MediaCodec$BufferInfo;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 192
    iget p1, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->currentSpeed:F

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->flushSonicAndSetSpeed(F)V

    return v1

    .line 195
    :cond_31
    invoke-direct {p0, p2, v0}, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->feedEncoder(Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;Ljava/nio/ByteBuffer;)V

    .line 196
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result p2

    if-nez p2, :cond_3d

    .line 197
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->releaseOutputBuffer()V

    :cond_3d
    const/4 p1, 0x1

    return p1
.end method

.method private feedEncoderFromSonic(Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;)Z
    .registers 5
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "encoderInputAudioFormat"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->encoderInputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->maybeDequeueInputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 213
    :cond_a
    iget-object v0, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->sonicOutputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_32

    .line 214
    iget-object v0, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->sonicAudioProcessor:Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->getOutput()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->sonicOutputBuffer:Ljava/nio/ByteBuffer;

    .line 215
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_32

    .line 216
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->isEnded()Z

    move-result p1

    if-eqz p1, :cond_31

    iget-object p1, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->sonicAudioProcessor:Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->isEnded()Z

    move-result p1

    if-eqz p1, :cond_31

    .line 217
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->queueEndOfStreamToEncoder(Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;)V

    :cond_31
    return v1

    .line 223
    :cond_32
    iget-object p1, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->sonicOutputBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, p2, p1}, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->feedEncoder(Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;Ljava/nio/ByteBuffer;)V

    const/4 p1, 0x1

    return p1
.end method

.method private feedMuxerFromEncoder(Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;)Z
    .registers 11

    .line 141
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->hasEncoderOutputFormat:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_14

    .line 142
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->getOutputFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    if-nez v0, :cond_d

    return v2

    .line 146
    :cond_d
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->hasEncoderOutputFormat:Z

    .line 147
    iget-object v3, p0, Lcom/google/android/exoplayer2/transformer/TransformerBaseRenderer;->muxerWrapper:Lcom/google/android/exoplayer2/transformer/MuxerWrapper;

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/transformer/MuxerWrapper;->addTrackFormat(Lcom/google/android/exoplayer2/Format;)V

    .line 150
    :cond_14
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 151
    iget-object p1, p0, Lcom/google/android/exoplayer2/transformer/TransformerBaseRenderer;->muxerWrapper:Lcom/google/android/exoplayer2/transformer/MuxerWrapper;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BaseRenderer;->getTrackType()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/transformer/MuxerWrapper;->endTrack(I)V

    .line 152
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->muxerWrapperTrackEnded:Z

    return v2

    .line 155
    :cond_26
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->getOutputBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    if-nez v5, :cond_2d

    return v2

    .line 159
    :cond_2d
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->getOutputBufferInfo()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaCodec$BufferInfo;

    .line 160
    iget-object v3, p0, Lcom/google/android/exoplayer2/transformer/TransformerBaseRenderer;->muxerWrapper:Lcom/google/android/exoplayer2/transformer/MuxerWrapper;

    .line 161
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BaseRenderer;->getTrackType()I

    move-result v4

    const/4 v6, 0x1

    iget-wide v7, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 160
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/exoplayer2/transformer/MuxerWrapper;->writeSample(ILjava/nio/ByteBuffer;ZJ)Z

    move-result v0

    if-nez v0, :cond_47

    return v2

    .line 167
    :cond_47
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->releaseOutputBuffer()V

    return v1
.end method

.method private feedSonicFromDecoder(Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;)Z
    .registers 6

    .line 232
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->drainingSonicForSpeedChange:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 233
    iget-object p1, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->sonicAudioProcessor:Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->isEnded()Z

    move-result p1

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->sonicOutputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result p1

    if-nez p1, :cond_1c

    .line 234
    iget p1, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->currentSpeed:F

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->flushSonicAndSetSpeed(F)V

    .line 235
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->drainingSonicForSpeedChange:Z

    :cond_1c
    return v1

    .line 242
    :cond_1d
    iget-object v0, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->sonicOutputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_26

    return v1

    .line 246
    :cond_26
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 247
    iget-object p1, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->sonicAudioProcessor:Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->queueEndOfStream()V

    return v1

    .line 250
    :cond_32
    iget-object v0, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->sonicAudioProcessor:Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->isEnded()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 252
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->getOutputBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    if-nez v0, :cond_44

    return v1

    .line 256
    :cond_44
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->getOutputBufferInfo()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->isSpeedChanging(Landroid/media/MediaCodec$BufferInfo;)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 257
    iget-object p1, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->sonicAudioProcessor:Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->queueEndOfStream()V

    .line 258
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->drainingSonicForSpeedChange:Z

    return v1

    .line 261
    :cond_5c
    iget-object v1, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->sonicAudioProcessor:Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->queueInput(Ljava/nio/ByteBuffer;)V

    .line 262
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_6a

    .line 263
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->releaseOutputBuffer()V

    :cond_6a
    return v2
.end method

.method private flushSonicAndSetSpeed(F)V
    .registers 3

    .line 420
    iget-object v0, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->sonicAudioProcessor:Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->setSpeed(F)V

    .line 421
    iget-object v0, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->sonicAudioProcessor:Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->setPitch(F)V

    .line 422
    iget-object p1, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->sonicAudioProcessor:Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->flush()V

    return-void
.end method

.method private static getBufferDurationUs(JII)J
    .registers 6

    int-to-long v0, p2

    .line 437
    div-long/2addr p0, v0

    const-wide/32 v0, 0xf4240

    mul-long p0, p0, v0

    int-to-long p2, p3

    .line 438
    div-long/2addr p0, p2

    return-wide p0
.end method

.method private isSpeedChanging(Landroid/media/MediaCodec$BufferInfo;)Z
    .registers 6

    .line 410
    iget-object v0, p0, Lcom/google/android/exoplayer2/transformer/TransformerBaseRenderer;->transformation:Lcom/google/android/exoplayer2/transformer/Transformation;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/transformer/Transformation;->flattenForSlowMotion:Z

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 413
    :cond_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->speedProvider:Lcom/google/android/exoplayer2/transformer/SpeedProvider;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/transformer/SpeedProvider;

    iget-wide v2, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-interface {v0, v2, v3}, Lcom/google/android/exoplayer2/transformer/SpeedProvider;->getSpeed(J)F

    move-result p1

    .line 414
    iget v0, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->currentSpeed:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1d

    const/4 v1, 0x1

    .line 415
    :cond_1d
    iput p1, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->currentSpeed:F

    return v1
.end method

.method private queueEndOfStreamToEncoder(Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;)V
    .registers 5

    .line 318
    iget-object v0, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->encoderInputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v0, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 319
    iget-object v0, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->encoderInputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->nextEncoderInputBufferTimeUs:J

    iput-wide v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    const/4 v1, 0x4

    .line 320
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/decoder/Buffer;->addFlag(I)V

    .line 321
    iget-object v0, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->encoderInputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->flip()V

    .line 323
    iget-object v0, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->encoderInputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->queueInputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    const-string v0, "TransformerAudioRenderer"

    return-object v0
.end method

.method public isEnded()Z
    .registers 2

    .line 87
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->muxerWrapperTrackEnded:Z

    return v0
.end method

.method protected onReset()V
    .registers 3

    .line 92
    iget-object v0, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->decoderInputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 93
    iget-object v0, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->decoderInputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 94
    iget-object v0, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->encoderInputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 95
    iget-object v0, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->encoderInputBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iput-object v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 96
    iget-object v0, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->sonicAudioProcessor:Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->reset()V

    .line 97
    iget-object v0, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->decoder:Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;

    if-eqz v0, :cond_21

    .line 98
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->release()V

    .line 99
    iput-object v1, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->decoder:Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;

    .line 101
    :cond_21
    iget-object v0, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->encoder:Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;

    if-eqz v0, :cond_2a

    .line 102
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;->release()V

    .line 103
    iput-object v1, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->encoder:Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;

    .line 105
    :cond_2a
    iput-object v1, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->speedProvider:Lcom/google/android/exoplayer2/transformer/SpeedProvider;

    .line 106
    sget-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->sonicOutputBuffer:Ljava/nio/ByteBuffer;

    const-wide/16 v0, 0x0

    .line 107
    iput-wide v0, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->nextEncoderInputBufferTimeUs:J

    const/high16 v0, -0x40800000  # -1.0f

    .line 108
    iput v0, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->currentSpeed:F

    const/4 v0, 0x0

    .line 109
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->muxerWrapperTrackEnded:Z

    .line 110
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->hasEncoderOutputFormat:Z

    .line 111
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->drainingSonicForSpeedChange:Z

    return-void
.end method

.method public render(JJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 116
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/transformer/TransformerBaseRenderer;->isRendererStarted:Z

    if-eqz p1, :cond_46

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->isEnded()Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_46

    .line 120
    :cond_b
    invoke-direct {p0}, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->ensureDecoderConfigured()Z

    move-result p1

    if-eqz p1, :cond_46

    .line 121
    iget-object p1, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->decoder:Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;

    .line 122
    invoke-direct {p0}, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->ensureEncoderAndAudioProcessingConfigured()Z

    move-result p2

    if-eqz p2, :cond_3f

    .line 123
    iget-object p2, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->encoder:Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;

    .line 124
    :goto_1b
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->feedMuxerFromEncoder(Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;)Z

    move-result p3

    if-eqz p3, :cond_22

    goto :goto_1b

    .line 125
    :cond_22
    iget-object p3, p0, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->sonicAudioProcessor:Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->isActive()Z

    move-result p3

    if-eqz p3, :cond_38

    .line 126
    :goto_2a
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->feedEncoderFromSonic(Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;)Z

    move-result p3

    if-eqz p3, :cond_31

    goto :goto_2a

    .line 127
    :cond_31
    :goto_31
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->feedSonicFromDecoder(Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;)Z

    move-result p2

    if-eqz p2, :cond_3f

    goto :goto_31

    .line 129
    :cond_38
    :goto_38
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->feedEncoderFromDecoder(Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;)Z

    move-result p3

    if-eqz p3, :cond_3f

    goto :goto_38

    .line 132
    :cond_3f
    :goto_3f
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/transformer/TransformerAudioRenderer;->feedDecoderFromInput(Lcom/google/android/exoplayer2/transformer/MediaCodecAdapterWrapper;)Z

    move-result p2

    if-eqz p2, :cond_46

    goto :goto_3f

    :cond_46
    :goto_46
    return-void
.end method
