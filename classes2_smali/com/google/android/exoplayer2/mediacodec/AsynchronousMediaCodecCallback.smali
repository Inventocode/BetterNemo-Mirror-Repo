.class final Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;
.super Landroid/media/MediaCodec$Callback;
.source "AsynchronousMediaCodecCallback.java"


# instance fields
.field private final availableInputBuffers:Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;

.field private final availableOutputBuffers:Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;

.field private final bufferInfos:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/media/MediaCodec$BufferInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final callbackThread:Landroid/os/HandlerThread;

.field private currentFormat:Landroid/media/MediaFormat;

.field private final formats:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/media/MediaFormat;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private internalException:Ljava/lang/IllegalStateException;

.field private final lock:Ljava/lang/Object;

.field private mediaCodecException:Landroid/media/MediaCodec$CodecException;

.field private pendingFlushCount:J

.field private pendingOutputFormat:Landroid/media/MediaFormat;

.field private shutDown:Z


# direct methods
.method public static synthetic $r8$lambda$kiZ5I-MTkQ3pbbS-EOnZPGh8_-U(Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->lambda$flushAsync$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method constructor <init>(Landroid/os/HandlerThread;)V
    .registers 3

    .line 81
    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    .line 83
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->callbackThread:Landroid/os/HandlerThread;

    .line 84
    new-instance p1, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->availableInputBuffers:Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;

    .line 85
    new-instance p1, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->availableOutputBuffers:Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;

    .line 86
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->bufferInfos:Ljava/util/ArrayDeque;

    .line 87
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->formats:Ljava/util/ArrayDeque;

    return-void
.end method

.method private addOutputFormat(Landroid/media/MediaFormat;)V
    .registers 4

    .line 296
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->availableOutputBuffers:Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->add(I)V

    .line 297
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->formats:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private flushInternal()V
    .registers 2

    .line 276
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->formats:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 277
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->formats:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaFormat;

    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->pendingOutputFormat:Landroid/media/MediaFormat;

    .line 282
    :cond_12
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->availableInputBuffers:Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->clear()V

    .line 283
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->availableOutputBuffers:Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->clear()V

    .line 284
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->bufferInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 285
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->formats:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x0

    .line 286
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->mediaCodecException:Landroid/media/MediaCodec$CodecException;

    return-void
.end method

.method private isFlushingOrShutdown()Z
    .registers 6

    .line 291
    iget-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->pendingFlushCount:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_f

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->shutDown:Z

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method private synthetic lambda$flushAsync$0(Ljava/lang/Runnable;)V
    .registers 2

    .line 202
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->onFlushCompleted(Ljava/lang/Runnable;)V

    return-void
.end method

.method private maybeThrowException()V
    .registers 1

    .line 302
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->maybeThrowInternalException()V

    .line 303
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->maybeThrowMediaCodecException()V

    return-void
.end method

.method private maybeThrowInternalException()V
    .registers 3

    .line 308
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->internalException:Ljava/lang/IllegalStateException;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    .line 310
    iput-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->internalException:Ljava/lang/IllegalStateException;

    .line 311
    throw v0
.end method

.method private maybeThrowMediaCodecException()V
    .registers 3

    .line 317
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->mediaCodecException:Landroid/media/MediaCodec$CodecException;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    .line 319
    iput-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->mediaCodecException:Landroid/media/MediaCodec$CodecException;

    .line 320
    throw v0
.end method

.method private onFlushCompleted(Ljava/lang/Runnable;)V
    .registers 3

    .line 243
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 244
    :try_start_3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->onFlushCompletedSynchronized(Ljava/lang/Runnable;)V

    .line 245
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p1
.end method

.method private onFlushCompletedSynchronized(Ljava/lang/Runnable;)V
    .registers 7

    .line 250
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->shutDown:Z

    if-eqz v0, :cond_5

    return-void

    .line 254
    :cond_5
    iget-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->pendingFlushCount:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->pendingFlushCount:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_13

    return-void

    :cond_13
    cmp-long v4, v0, v2

    if-gez v4, :cond_20

    .line 260
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->setInternalException(Ljava/lang/IllegalStateException;)V

    return-void

    .line 263
    :cond_20
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->flushInternal()V

    .line 265
    :try_start_23
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_26
    .catch Ljava/lang/IllegalStateException; {:try_start_23 .. :try_end_26} :catch_31
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_26} :catch_27

    goto :goto_35

    :catch_27
    move-exception p1

    .line 269
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->setInternalException(Ljava/lang/IllegalStateException;)V

    goto :goto_35

    :catch_31
    move-exception p1

    .line 267
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->setInternalException(Ljava/lang/IllegalStateException;)V

    :goto_35
    return-void
.end method

.method private setInternalException(Ljava/lang/IllegalStateException;)V
    .registers 3

    .line 325
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 326
    :try_start_3
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->internalException:Ljava/lang/IllegalStateException;

    .line 327
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method


# virtual methods
.method public dequeueInputBufferIndex()I
    .registers 4

    .line 128
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->isFlushingOrShutdown()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_c

    .line 130
    monitor-exit v0

    return v2

    .line 132
    :cond_c
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->maybeThrowException()V

    .line 133
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->availableInputBuffers:Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_1e

    .line 135
    :cond_18
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->availableInputBuffers:Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->remove()I

    move-result v2

    :goto_1e
    monitor-exit v0

    return v2

    :catchall_20
    move-exception v1

    .line 137
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public dequeueOutputBufferIndex(Landroid/media/MediaCodec$BufferInfo;)I
    .registers 11

    .line 147
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 148
    :try_start_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->isFlushingOrShutdown()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_c

    .line 149
    monitor-exit v0

    return v2

    .line 151
    :cond_c
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->maybeThrowException()V

    .line 152
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->availableOutputBuffers:Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 153
    monitor-exit v0

    return v2

    .line 155
    :cond_19
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->availableOutputBuffers:Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->remove()I

    move-result v1

    if-ltz v1, :cond_3b

    .line 157
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->currentFormat:Landroid/media/MediaFormat;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->bufferInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaCodec$BufferInfo;

    .line 159
    iget v4, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v5, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v6, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v8, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    goto :goto_48

    :cond_3b
    const/4 p1, -0x2

    if-ne v1, p1, :cond_48

    .line 165
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->formats:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaFormat;

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->currentFormat:Landroid/media/MediaFormat;

    .line 167
    :cond_48
    :goto_48
    monitor-exit v0

    return v1

    :catchall_4a
    move-exception p1

    .line 170
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_4a

    throw p1
.end method

.method public flushAsync(Ljava/lang/Runnable;)V
    .registers 7

    .line 200
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 201
    :try_start_3
    iget-wide v1, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->pendingFlushCount:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->pendingFlushCount:J

    .line 202
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->handler:Landroid/os/Handler;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    new-instance v2, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 203
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method public getOutputFormat()Landroid/media/MediaFormat;
    .registers 3

    .line 183
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 184
    :try_start_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->currentFormat:Landroid/media/MediaFormat;

    if-eqz v1, :cond_9

    .line 187
    monitor-exit v0

    return-object v1

    .line 185
    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :catchall_f
    move-exception v1

    .line 188
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public initialize(Landroid/media/MediaCodec;)V
    .registers 4

    .line 99
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->handler:Landroid/os/Handler;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 101
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->callbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 102
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->callbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 103
    invoke-virtual {p1, p0, v0}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    .line 106
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->handler:Landroid/os/Handler;

    return-void
.end method

.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .registers 3

    .line 229
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    monitor-enter p1

    .line 230
    :try_start_3
    iput-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->mediaCodecException:Landroid/media/MediaCodec$CodecException;

    .line 231
    monitor-exit p1

    return-void

    :catchall_7
    move-exception p2

    monitor-exit p1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p2
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .registers 4

    .line 210
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    monitor-enter p1

    .line 211
    :try_start_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->availableInputBuffers:Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->add(I)V

    .line 212
    monitor-exit p1

    return-void

    :catchall_a
    move-exception p2

    monitor-exit p1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p2
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .registers 5

    .line 217
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    monitor-enter p1

    .line 218
    :try_start_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->pendingOutputFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_d

    .line 219
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->addOutputFormat(Landroid/media/MediaFormat;)V

    const/4 v0, 0x0

    .line 220
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->pendingOutputFormat:Landroid/media/MediaFormat;

    .line 222
    :cond_d
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->availableOutputBuffers:Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/mediacodec/IntArrayQueue;->add(I)V

    .line 223
    iget-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->bufferInfos:Ljava/util/ArrayDeque;

    invoke-virtual {p2, p3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 224
    monitor-exit p1

    return-void

    :catchall_19
    move-exception p2

    monitor-exit p1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p2
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .registers 3

    .line 236
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    monitor-enter p1

    .line 237
    :try_start_3
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->addOutputFormat(Landroid/media/MediaFormat;)V

    const/4 p2, 0x0

    .line 238
    iput-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->pendingOutputFormat:Landroid/media/MediaFormat;

    .line 239
    monitor-exit p1

    return-void

    :catchall_b
    move-exception p2

    monitor-exit p1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p2
.end method

.method public shutdown()V
    .registers 3

    .line 116
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 117
    :try_start_4
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->shutDown:Z

    .line 118
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->callbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 119
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->flushInternal()V

    .line 120
    monitor-exit v0

    return-void

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_10

    throw v1
.end method
