.class Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;
.super Ljava/lang/Object;
.source "AsynchronousMediaCodecBufferEnqueuer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;
    }
.end annotation


# static fields
.field private static final MESSAGE_PARAMS_INSTANCE_POOL:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;",
            ">;"
        }
    .end annotation
.end field

.field private static final MSG_OPEN_CV:I = 0x2

.field private static final MSG_QUEUE_INPUT_BUFFER:I = 0x0

.field private static final MSG_QUEUE_SECURE_INPUT_BUFFER:I = 0x1

.field private static final QUEUE_SECURE_LOCK:Ljava/lang/Object;


# instance fields
.field private final codec:Landroid/media/MediaCodec;

.field private final conditionVariable:Lcom/google/android/exoplayer2/util/ConditionVariable;

.field private handler:Landroid/os/Handler;

.field private final handlerThread:Landroid/os/HandlerThread;

.field private final pendingRuntimeException:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/RuntimeException;",
            ">;"
        }
    .end annotation
.end field

.field private started:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 53
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->MESSAGE_PARAMS_INSTANCE_POOL:Ljava/util/ArrayDeque;

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->QUEUE_SECURE_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;)V
    .registers 4

    .line 71
    new-instance v0, Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ConditionVariable;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;-><init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Lcom/google/android/exoplayer2/util/ConditionVariable;)V

    return-void
.end method

.method constructor <init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Lcom/google/android/exoplayer2/util/ConditionVariable;)V
    .registers 4

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->codec:Landroid/media/MediaCodec;

    .line 78
    iput-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->handlerThread:Landroid/os/HandlerThread;

    .line 79
    iput-object p3, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->conditionVariable:Lcom/google/android/exoplayer2/util/ConditionVariable;

    .line 80
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->pendingRuntimeException:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;Landroid/os/Message;)V
    .registers 2

    .line 46
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->doHandleMessage(Landroid/os/Message;)V

    return-void
.end method

.method private blockUntilHandlerThreadIsIdle()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->conditionVariable:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ConditionVariable;->close()Z

    .line 185
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->handler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 186
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->conditionVariable:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ConditionVariable;->block()V

    return-void
.end method

.method private static copy(Lcom/google/android/exoplayer2/decoder/CryptoInfo;Landroid/media/MediaCodec$CryptoInfo;)V
    .registers 4

    .line 292
    iget v0, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->numSubSamples:I

    iput v0, p1, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    .line 293
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->numBytesOfClearData:[I

    iget-object v1, p1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 294
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->copy([I[I)[I

    move-result-object v0

    iput-object v0, p1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 295
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->numBytesOfEncryptedData:[I

    iget-object v1, p1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    .line 296
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->copy([I[I)[I

    move-result-object v0

    iput-object v0, p1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    .line 297
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->key:[B

    iget-object v1, p1, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->copy([B[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p1, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    .line 298
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->iv:[B

    iget-object v1, p1, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->copy([B[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p1, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    .line 299
    iget v0, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->mode:I

    iput v0, p1, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    .line 300
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_4e

    .line 301
    new-instance v0, Landroid/media/MediaCodec$CryptoInfo$Pattern;

    iget v1, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->encryptedBlocks:I

    iget p0, p0, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->clearBlocks:I

    invoke-direct {v0, v1, p0}, Landroid/media/MediaCodec$CryptoInfo$Pattern;-><init>(II)V

    .line 304
    invoke-virtual {p1, v0}, Landroid/media/MediaCodec$CryptoInfo;->setPattern(Landroid/media/MediaCodec$CryptoInfo$Pattern;)V

    :cond_4e
    return-void
.end method

.method private static copy([B[B)[B
    .registers 4

    if-nez p0, :cond_3

    return-object p1

    :cond_3
    if-eqz p1, :cond_10

    .line 342
    array-length v0, p1

    array-length v1, p0

    if-ge v0, v1, :cond_a

    goto :goto_10

    .line 345
    :cond_a
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    .line 343
    :cond_10
    :goto_10
    array-length p1, p0

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    return-object p0
.end method

.method private static copy([I[I)[I
    .registers 4

    if-nez p0, :cond_3

    return-object p1

    :cond_3
    if-eqz p1, :cond_10

    .line 321
    array-length v0, p1

    array-length v1, p0

    if-ge v0, v1, :cond_a

    goto :goto_10

    .line 324
    :cond_a
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    .line 322
    :cond_10
    :goto_10
    array-length p1, p0

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    return-object p0
.end method

.method private doHandleMessage(Landroid/os/Message;)V
    .registers 9

    .line 198
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_33

    const/4 v1, 0x1

    if-eq v0, v1, :cond_20

    const/4 v1, 0x2

    if-eq v0, v1, :cond_19

    .line 217
    new-instance v0, Ljava/lang/IllegalStateException;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->setPendingRuntimeException(Ljava/lang/RuntimeException;)V

    goto :goto_1e

    .line 214
    :cond_19
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->conditionVariable:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ConditionVariable;->open()Z

    :goto_1e
    const/4 p1, 0x0

    goto :goto_45

    .line 205
    :cond_20
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;

    .line 206
    iget v1, p1, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->index:I

    iget v2, p1, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->offset:I

    iget-object v3, p1, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->cryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    iget-wide v4, p1, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->presentationTimeUs:J

    iget v6, p1, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->flags:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->doQueueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    goto :goto_45

    .line 200
    :cond_33
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;

    .line 201
    iget v1, p1, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->index:I

    iget v2, p1, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->offset:I

    iget v3, p1, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->size:I

    iget-wide v4, p1, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->presentationTimeUs:J

    iget v6, p1, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->flags:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->doQueueInputBuffer(IIIJI)V

    :goto_45
    if-eqz p1, :cond_4a

    .line 220
    invoke-static {p1}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->recycleMessageParams(Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;)V

    :cond_4a
    return-void
.end method

.method private doQueueInputBuffer(IIIJI)V
    .registers 14

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->codec:Landroid/media/MediaCodec;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_f

    :catch_b
    move-exception p1

    .line 229
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->setPendingRuntimeException(Ljava/lang/RuntimeException;)V

    :goto_f
    return-void
.end method

.method private doQueueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V
    .registers 15

    .line 239
    :try_start_0
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->QUEUE_SECURE_LOCK:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_12

    .line 240
    :try_start_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->codec:Landroid/media/MediaCodec;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-wide v5, p4

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    .line 241
    monitor-exit v0

    goto :goto_16

    :catchall_f
    move-exception p1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    :try_start_11
    throw p1
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_12} :catch_12

    :catch_12
    move-exception p1

    .line 243
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->setPendingRuntimeException(Ljava/lang/RuntimeException;)V

    :goto_16
    return-void
.end method

.method private flushHandlerThread()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->handler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    const/4 v1, 0x0

    .line 177
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 178
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->blockUntilHandlerThreadIsIdle()V

    .line 180
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->maybeThrowException()V

    return-void
.end method

.method private static getMessageParams()Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;
    .registers 2

    .line 248
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->MESSAGE_PARAMS_INSTANCE_POOL:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 249
    :try_start_3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 250
    new-instance v1, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;-><init>()V

    monitor-exit v0

    return-object v1

    .line 252
    :cond_10
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;

    monitor-exit v0

    return-object v1

    :catchall_18
    move-exception v1

    .line 254
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method private maybeThrowException()V
    .registers 3

    .line 165
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->pendingRuntimeException:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/RuntimeException;

    if-nez v0, :cond_c

    return-void

    .line 167
    :cond_c
    throw v0
.end method

.method private static recycleMessageParams(Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;)V
    .registers 2

    .line 258
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->MESSAGE_PARAMS_INSTANCE_POOL:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 259
    :try_start_3
    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 260
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method


# virtual methods
.method public flush()V
    .registers 3

    .line 138
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->started:Z

    if-eqz v0, :cond_16

    .line 140
    :try_start_4
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->flushHandlerThread()V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_16

    :catch_8
    move-exception v0

    .line 142
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 145
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_16
    :goto_16
    return-void
.end method

.method public queueInputBuffer(IIIJI)V
    .registers 15

    .line 109
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->maybeThrowException()V

    .line 110
    invoke-static {}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->getMessageParams()Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;

    move-result-object v7

    move-object v0, v7

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move v6, p6

    .line 111
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->setQueueParams(IIIJI)V

    .line 112
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->handler:Landroid/os/Handler;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 113
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public queueSecureInputBuffer(IILcom/google/android/exoplayer2/decoder/CryptoInfo;JI)V
    .registers 15

    .line 127
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->maybeThrowException()V

    .line 128
    invoke-static {}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->getMessageParams()Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;

    move-result-object v7

    const/4 v3, 0x0

    move-object v0, v7

    move v1, p1

    move v2, p2

    move-wide v4, p4

    move v6, p6

    .line 129
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->setQueueParams(IIIJI)V

    .line 130
    iget-object p1, v7, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->cryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    invoke-static {p3, p1}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->copy(Lcom/google/android/exoplayer2/decoder/CryptoInfo;Landroid/media/MediaCodec$CryptoInfo;)V

    .line 131
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->handler:Landroid/os/Handler;

    .line 132
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 133
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method setPendingRuntimeException(Ljava/lang/RuntimeException;)V
    .registers 3

    .line 193
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->pendingRuntimeException:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public shutdown()V
    .registers 2

    .line 152
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->started:Z

    if-eqz v0, :cond_c

    .line 153
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->flush()V

    .line 154
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_c
    const/4 v0, 0x0

    .line 156
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->started:Z

    return-void
.end method

.method public start()V
    .registers 3

    .line 89
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->started:Z

    if-nez v0, :cond_19

    .line 90
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 91
    new-instance v0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$1;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->handlerThread:Landroid/os/HandlerThread;

    .line 92
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$1;-><init>(Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->handler:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 98
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->started:Z

    :cond_19
    return-void
.end method

.method public waitUntilQueueingComplete()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 161
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->blockUntilHandlerThreadIsIdle()V

    return-void
.end method
