.class final Lkotlinx/coroutines/flow/SharedFlowImpl;
.super Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;
.source "SharedFlow.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/MutableSharedFlow;
.implements Lkotlinx/coroutines/flow/Flow;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;,
        Lkotlinx/coroutines/flow/SharedFlowImpl$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/flow/internal/AbstractSharedFlow<",
        "Lkotlinx/coroutines/flow/SharedFlowSlot;",
        ">;",
        "Lkotlinx/coroutines/flow/MutableSharedFlow<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSharedFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SharedFlow.kt\nkotlinx/coroutines/flow/SharedFlowImpl\n+ 2 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 3 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 AbstractSharedFlow.kt\nkotlinx/coroutines/flow/internal/AbstractSharedFlow\n+ 6 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 7 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,701:1\n20#2:702\n20#2:704\n20#2:722\n20#2:725\n20#2:733\n20#2:743\n20#2:753\n329#3:703\n1#4:705\n96#5,2:706\n98#5,2:709\n100#5:712\n96#5,2:726\n98#5,2:729\n100#5:732\n96#5,2:746\n98#5,2:749\n100#5:752\n13536#6:708\n13537#6:711\n13536#6:728\n13537#6:731\n13536#6:748\n13537#6:751\n310#7,9:713\n319#7,2:723\n310#7,9:734\n319#7,2:744\n*S KotlinDebug\n*F\n+ 1 SharedFlow.kt\nkotlinx/coroutines/flow/SharedFlowImpl\n*L\n327#1:702\n360#1:704\n454#1:722\n475#1:725\n595#1:733\n630#1:743\n658#1:753\n342#1:703\n422#1:706,2\n422#1:709,2\n422#1:712\n498#1:726,2\n498#1:729,2\n498#1:732\n645#1:746,2\n645#1:749,2\n645#1:752\n422#1:708\n422#1:711\n498#1:728\n498#1:731\n645#1:748\n645#1:751\n452#1:713,9\n452#1:723,2\n629#1:734,9\n629#1:744,2\n*E\n"
.end annotation


# instance fields
.field private buffer:[Ljava/lang/Object;

.field private final bufferCapacity:I

.field private bufferSize:I

.field private minCollectorIndex:J

.field private final onBufferOverflow:Lkotlinx/coroutines/channels/BufferOverflow;

.field private queueSize:I

.field private final replay:I

.field private replayIndex:J


# direct methods
.method public constructor <init>(IILkotlinx/coroutines/channels/BufferOverflow;)V
    .registers 4

    .line 282
    invoke-direct {p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;-><init>()V

    .line 279
    iput p1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->replay:I

    .line 280
    iput p2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferCapacity:I

    .line 281
    iput-object p3, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->onBufferOverflow:Lkotlinx/coroutines/channels/BufferOverflow;

    return-void
.end method

.method public static final synthetic access$cancelEmitter(Lkotlinx/coroutines/flow/SharedFlowImpl;Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;)V
    .registers 2

    .line 278
    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->cancelEmitter(Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;)V

    return-void
.end method

.method public static final synthetic access$enqueueLocked(Lkotlinx/coroutines/flow/SharedFlowImpl;Ljava/lang/Object;)V
    .registers 2

    .line 278
    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->enqueueLocked(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$findSlotsToResumeLocked(Lkotlinx/coroutines/flow/SharedFlowImpl;[Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;
    .registers 2

    .line 278
    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->findSlotsToResumeLocked([Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getBufferCapacity$p(Lkotlinx/coroutines/flow/SharedFlowImpl;)I
    .registers 1

    .line 278
    iget p0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferCapacity:I

    return p0
.end method

.method public static final synthetic access$getHead(Lkotlinx/coroutines/flow/SharedFlowImpl;)J
    .registers 3

    .line 278
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$getQueueSize$p(Lkotlinx/coroutines/flow/SharedFlowImpl;)I
    .registers 1

    .line 278
    iget p0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    return p0
.end method

.method public static final synthetic access$getTotalSize(Lkotlinx/coroutines/flow/SharedFlowImpl;)I
    .registers 1

    .line 278
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getTotalSize()I

    move-result p0

    return p0
.end method

.method public static final synthetic access$setQueueSize$p(Lkotlinx/coroutines/flow/SharedFlowImpl;I)V
    .registers 2

    .line 278
    iput p1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    return-void
.end method

.method public static final synthetic access$tryEmitLocked(Lkotlinx/coroutines/flow/SharedFlowImpl;Ljava/lang/Object;)Z
    .registers 2

    .line 278
    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->tryEmitLocked(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$tryPeekLocked(Lkotlinx/coroutines/flow/SharedFlowImpl;Lkotlinx/coroutines/flow/SharedFlowSlot;)J
    .registers 2

    .line 278
    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->tryPeekLocked(Lkotlinx/coroutines/flow/SharedFlowSlot;)J

    move-result-wide p0

    return-wide p0
.end method

.method private final awaitValue(Lkotlinx/coroutines/flow/SharedFlowSlot;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/SharedFlowSlot;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 311
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 317
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 20
    monitor-enter p0

    .line 631
    :try_start_e
    invoke-static {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->access$tryPeekLocked(Lkotlinx/coroutines/flow/SharedFlowImpl;Lkotlinx/coroutines/flow/SharedFlowSlot;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_1d

    .line 633
    iput-object v0, p1, Lkotlinx/coroutines/flow/SharedFlowSlot;->cont:Lkotlin/coroutines/Continuation;

    .line 638
    iput-object v0, p1, Lkotlinx/coroutines/flow/SharedFlowSlot;->cont:Lkotlin/coroutines/Continuation;

    goto :goto_28

    .line 635
    :cond_1d
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 639
    :goto_28
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2a
    .catchall {:try_start_e .. :try_end_2a} :catchall_40

    monitor-exit p0

    .line 319
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 310
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_38

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    .line 320
    :cond_38
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne v0, p2, :cond_3f

    return-object v0

    :cond_3f
    return-object p1

    :catchall_40
    move-exception p1

    .line 639
    monitor-exit p0

    throw p1
.end method

.method private final cancelEmitter(Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;)V
    .registers 7

    .line 20
    monitor-enter p0

    .line 476
    :try_start_1
    iget-wide v0, p1, Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;->index:J

    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    move-result-wide v2
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_2a

    cmp-long v4, v0, v2

    if-gez v4, :cond_d

    monitor-exit p0

    return-void

    .line 477
    :cond_d
    :try_start_d
    iget-object v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->buffer:[Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 478
    iget-wide v1, p1, Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;->index:J

    invoke-static {v0, v1, v2}, Lkotlinx/coroutines/flow/SharedFlowKt;->access$getBufferAt([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_2a

    if-eq v1, p1, :cond_1c

    monitor-exit p0

    return-void

    .line 479
    :cond_1c
    :try_start_1c
    iget-wide v1, p1, Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;->index:J

    sget-object p1, Lkotlinx/coroutines/flow/SharedFlowKt;->NO_VALUE:Lkotlinx/coroutines/internal/Symbol;

    invoke-static {v0, v1, v2, p1}, Lkotlinx/coroutines/flow/SharedFlowKt;->access$setBufferAt([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 480
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->cleanupTailLocked()V

    .line 481
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_28
    .catchall {:try_start_1c .. :try_end_28} :catchall_2a

    monitor-exit p0

    return-void

    :catchall_2a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final cleanupTailLocked()V
    .registers 6

    .line 584
    iget v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferCapacity:I

    if-nez v0, :cond_a

    iget v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_a

    return-void

    .line 585
    :cond_a
    iget-object v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->buffer:[Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 586
    :goto_f
    iget v1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    if-lez v1, :cond_3d

    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    move-result-wide v1

    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getTotalSize()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lkotlinx/coroutines/flow/SharedFlowKt;->access$getBufferAt([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lkotlinx/coroutines/flow/SharedFlowKt;->NO_VALUE:Lkotlinx/coroutines/internal/Symbol;

    if-ne v1, v2, :cond_3d

    .line 587
    iget v1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    .line 588
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    move-result-wide v1

    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getTotalSize()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lkotlinx/coroutines/flow/SharedFlowKt;->access$setBufferAt([Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_f

    :cond_3d
    return-void
.end method

.method private final correctCollectorIndexesOnDropOldest(J)V
    .registers 12

    .line 96
    invoke-static {p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->access$getNCollectors(Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;)I

    move-result v0

    if-nez v0, :cond_7

    goto :goto_29

    .line 97
    :cond_7
    invoke-static {p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->access$getSlots(Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;)[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    move-result-object v0

    if-nez v0, :cond_e

    goto :goto_29

    .line 13536
    :cond_e
    array-length v1, v0

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_29

    aget-object v3, v0, v2

    if-eqz v3, :cond_26

    .line 98
    check-cast v3, Lkotlinx/coroutines/flow/SharedFlowSlot;

    .line 424
    iget-wide v4, v3, Lkotlinx/coroutines/flow/SharedFlowSlot;->index:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-ltz v8, :cond_26

    cmp-long v6, v4, p1

    if-gez v6, :cond_26

    .line 425
    iput-wide p1, v3, Lkotlinx/coroutines/flow/SharedFlowSlot;->index:J

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 428
    :cond_29
    :goto_29
    iput-wide p1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->minCollectorIndex:J

    return-void
.end method

.method private final dropOldestLocked()V
    .registers 6

    .line 413
    iget-object v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->buffer:[Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lkotlinx/coroutines/flow/SharedFlowKt;->access$setBufferAt([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 414
    iget v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    .line 415
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 416
    iget-wide v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->replayIndex:J

    cmp-long v4, v2, v0

    if-gez v4, :cond_22

    iput-wide v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->replayIndex:J

    .line 417
    :cond_22
    iget-wide v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->minCollectorIndex:J

    cmp-long v4, v2, v0

    if-gez v4, :cond_2b

    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->correctCollectorIndexesOnDropOldest(J)V

    .line 418
    :cond_2b
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-nez v4, :cond_3b

    const/4 v0, 0x1

    goto :goto_3c

    :cond_3b
    const/4 v0, 0x0

    :goto_3c
    if-eqz v0, :cond_3f

    goto :goto_45

    :cond_3f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_45
    :goto_45
    return-void
.end method

.method private final emitSuspend(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 311
    new-instance v6, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    const/4 v7, 0x1

    invoke-direct {v6, v0, v7}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 317
    invoke-virtual {v6}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 453
    sget-object v8, Lkotlinx/coroutines/flow/internal/AbstractSharedFlowKt;->EMPTY_RESUMES:[Lkotlin/coroutines/Continuation;

    .line 20
    monitor-enter p0

    .line 456
    :try_start_10
    invoke-static {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->access$tryEmitLocked(Lkotlinx/coroutines/flow/SharedFlowImpl;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 457
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v6, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 458
    invoke-static {p0, v8}, Lkotlinx/coroutines/flow/SharedFlowImpl;->access$findSlotsToResumeLocked(Lkotlinx/coroutines/flow/SharedFlowImpl;[Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;

    move-result-object p1

    const/4 v0, 0x0

    goto :goto_51

    .line 462
    :cond_27
    new-instance v9, Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;

    invoke-static {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->access$getHead(Lkotlinx/coroutines/flow/SharedFlowImpl;)J

    move-result-wide v0

    invoke-static {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->access$getTotalSize(Lkotlinx/coroutines/flow/SharedFlowImpl;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v2, v0

    move-object v0, v9

    move-object v1, p0

    move-object v4, p1

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;-><init>(Lkotlinx/coroutines/flow/SharedFlowImpl;JLjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 463
    invoke-static {p0, v9}, Lkotlinx/coroutines/flow/SharedFlowImpl;->access$enqueueLocked(Lkotlinx/coroutines/flow/SharedFlowImpl;Ljava/lang/Object;)V

    .line 464
    invoke-static {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->access$getQueueSize$p(Lkotlinx/coroutines/flow/SharedFlowImpl;)I

    move-result p1

    add-int/2addr p1, v7

    invoke-static {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->access$setQueueSize$p(Lkotlinx/coroutines/flow/SharedFlowImpl;I)V

    .line 466
    invoke-static {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->access$getBufferCapacity$p(Lkotlinx/coroutines/flow/SharedFlowImpl;)I

    move-result p1

    if-nez p1, :cond_4f

    invoke-static {p0, v8}, Lkotlinx/coroutines/flow/SharedFlowImpl;->access$findSlotsToResumeLocked(Lkotlinx/coroutines/flow/SharedFlowImpl;[Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;

    move-result-object v8
    :try_end_4f
    .catchall {:try_start_10 .. :try_end_4f} :catchall_86

    :cond_4f
    move-object p1, v8

    move-object v0, v9

    .line 462
    :goto_51
    monitor-exit p0

    if-nez v0, :cond_55

    goto :goto_58

    .line 470
    :cond_55
    invoke-static {v6, v0}, Lkotlinx/coroutines/CancellableContinuationKt;->disposeOnCancellation(Lkotlinx/coroutines/CancellableContinuation;Lkotlinx/coroutines/DisposableHandle;)V

    :goto_58
    const/4 v0, 0x0

    .line 472
    array-length v1, p1

    :goto_5a
    if-ge v0, v1, :cond_6f

    aget-object v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    if-nez v2, :cond_63

    goto :goto_5a

    :cond_63
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_5a

    .line 319
    :cond_6f
    invoke-virtual {v6}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p1

    .line 310
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_7c

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    .line 320
    :cond_7c
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_83

    return-object p1

    :cond_83
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_86
    move-exception p1

    .line 462
    monitor-exit p0

    throw p1
.end method

.method private final enqueueLocked(Ljava/lang/Object;)V
    .registers 8

    .line 433
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getTotalSize()I

    move-result v0

    .line 434
    iget-object v1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->buffer:[Ljava/lang/Object;

    const/4 v2, 0x2

    if-nez v1, :cond_10

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 435
    invoke-direct {p0, v1, v3, v2}, Lkotlinx/coroutines/flow/SharedFlowImpl;->growBuffer([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    goto :goto_1a

    .line 436
    :cond_10
    array-length v3, v1

    if-lt v0, v3, :cond_1a

    array-length v3, v1

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {p0, v1, v0, v3}, Lkotlinx/coroutines/flow/SharedFlowImpl;->growBuffer([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    .line 438
    :cond_1a
    :goto_1a
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    move-result-wide v2

    int-to-long v4, v0

    add-long/2addr v2, v4

    invoke-static {v1, v2, v3, p1}, Lkotlinx/coroutines/flow/SharedFlowKt;->access$setBufferAt([Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method private final findSlotsToResumeLocked([Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;)[",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 644
    array-length v0, p1

    .line 96
    invoke-static {p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->access$getNCollectors(Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;)I

    move-result v1

    if-nez v1, :cond_8

    goto :goto_4b

    .line 97
    :cond_8
    invoke-static {p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->access$getSlots(Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;)[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    move-result-object v1

    if-nez v1, :cond_f

    goto :goto_4b

    .line 13536
    :cond_f
    array-length v2, v1

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v2, :cond_4b

    aget-object v4, v1, v3

    if-eqz v4, :cond_48

    .line 98
    check-cast v4, Lkotlinx/coroutines/flow/SharedFlowSlot;

    .line 646
    iget-object v5, v4, Lkotlinx/coroutines/flow/SharedFlowSlot;->cont:Lkotlin/coroutines/Continuation;

    if-nez v5, :cond_1e

    goto :goto_48

    .line 647
    :cond_1e
    invoke-direct {p0, v4}, Lkotlinx/coroutines/flow/SharedFlowImpl;->tryPeekLocked(Lkotlinx/coroutines/flow/SharedFlowSlot;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-gez v10, :cond_29

    goto :goto_48

    .line 648
    :cond_29
    array-length v6, p1

    if-lt v0, v6, :cond_3d

    array-length v6, p1

    const/4 v7, 0x2

    mul-int/lit8 v6, v6, 0x2

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v6, "java.util.Arrays.copyOf(this, newSize)"

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 649
    :cond_3d
    move-object v6, p1

    check-cast v6, [Lkotlin/coroutines/Continuation;

    add-int/lit8 v7, v0, 0x1

    aput-object v5, v6, v0

    const/4 v0, 0x0

    .line 650
    iput-object v0, v4, Lkotlinx/coroutines/flow/SharedFlowSlot;->cont:Lkotlin/coroutines/Continuation;

    move v0, v7

    :cond_48
    :goto_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 652
    :cond_4b
    :goto_4b
    check-cast p1, [Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method private final getBufferEndIndex()J
    .registers 5

    .line 323
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    move-result-wide v0

    iget v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private final getHead()J
    .registers 5

    .line 320
    iget-wide v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->minCollectorIndex:J

    iget-wide v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->replayIndex:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private final getPeekedValueLockedAt(J)Ljava/lang/Object;
    .registers 4

    .line 624
    iget-object v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->buffer:[Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0, p1, p2}, Lkotlinx/coroutines/flow/SharedFlowKt;->access$getBufferAt([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 625
    instance-of p2, p1, Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;

    if-eqz p2, :cond_11

    check-cast p1, Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;

    iget-object p1, p1, Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;->value:Ljava/lang/Object;

    :cond_11
    return-object p1
.end method

.method private final getQueueEndIndex()J
    .registers 5

    .line 324
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    move-result-wide v0

    iget v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private final getReplaySize()I
    .registers 5

    .line 321
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    move-result-wide v0

    iget v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->replayIndex:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method private final getTotalSize()I
    .registers 3

    .line 322
    iget v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    iget v1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    add-int/2addr v0, v1

    return v0
.end method

.method private final growBuffer([Ljava/lang/Object;II)[Ljava/lang/Object;
    .registers 10

    const/4 v0, 0x0

    if-lez p3, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    :goto_6
    if-eqz v1, :cond_26

    .line 443
    new-array p3, p3, [Ljava/lang/Object;

    iput-object p3, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->buffer:[Ljava/lang/Object;

    if-nez p1, :cond_f

    return-object p3

    .line 445
    :cond_f
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    move-result-wide v1

    if-lez p2, :cond_25

    :goto_15
    add-int/lit8 v3, v0, 0x1

    int-to-long v4, v0

    add-long/2addr v4, v1

    .line 447
    invoke-static {p1, v4, v5}, Lkotlinx/coroutines/flow/SharedFlowKt;->access$getBufferAt([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p3, v4, v5, v0}, Lkotlinx/coroutines/flow/SharedFlowKt;->access$setBufferAt([Ljava/lang/Object;JLjava/lang/Object;)V

    if-lt v3, p2, :cond_23

    goto :goto_25

    :cond_23
    move v0, v3

    goto :goto_15

    :cond_25
    :goto_25
    return-object p3

    .line 442
    :cond_26
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Buffer size overflow"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final tryEmitLocked(Ljava/lang/Object;)Z
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 380
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->getNCollectors()I

    move-result v0

    if-nez v0, :cond_b

    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->tryEmitNoCollectorsLocked(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 383
    :cond_b
    iget v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    iget v1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferCapacity:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_2d

    iget-wide v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->minCollectorIndex:J

    iget-wide v3, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->replayIndex:J

    cmp-long v5, v0, v3

    if-gtz v5, :cond_2d

    .line 384
    iget-object v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->onBufferOverflow:Lkotlinx/coroutines/channels/BufferOverflow;

    sget-object v1, Lkotlinx/coroutines/flow/SharedFlowImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, v2, :cond_2b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2a

    goto :goto_2d

    :cond_2a
    return v2

    :cond_2b
    const/4 p1, 0x0

    return p1

    .line 390
    :cond_2d
    :goto_2d
    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->enqueueLocked(Ljava/lang/Object;)V

    .line 391
    iget p1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    add-int/2addr p1, v2

    iput p1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    .line 393
    iget v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferCapacity:I

    if-le p1, v0, :cond_3c

    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->dropOldestLocked()V

    .line 395
    :cond_3c
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getReplaySize()I

    move-result p1

    iget v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->replay:I

    if-le p1, v0, :cond_58

    .line 396
    iget-wide v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->replayIndex:J

    const-wide/16 v3, 0x1

    add-long v6, v0, v3

    iget-wide v8, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->minCollectorIndex:J

    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getBufferEndIndex()J

    move-result-wide v10

    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getQueueEndIndex()J

    move-result-wide v12

    move-object v5, p0

    invoke-direct/range {v5 .. v13}, Lkotlinx/coroutines/flow/SharedFlowImpl;->updateBufferLocked(JJJJ)V

    :cond_58
    return v2
.end method

.method private final tryEmitNoCollectorsLocked(Ljava/lang/Object;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 402
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->getNCollectors()I

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    if-eqz v0, :cond_13

    goto :goto_19

    :cond_13
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 403
    :cond_19
    :goto_19
    iget v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->replay:I

    if-nez v0, :cond_1e

    return v1

    .line 404
    :cond_1e
    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->enqueueLocked(Ljava/lang/Object;)V

    .line 405
    iget p1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    add-int/2addr p1, v1

    iput p1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    .line 407
    iget v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->replay:I

    if-le p1, v0, :cond_2d

    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->dropOldestLocked()V

    .line 408
    :cond_2d
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    move-result-wide v2

    iget p1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    int-to-long v4, p1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->minCollectorIndex:J

    return v1
.end method

.method private final tryPeekLocked(Lkotlinx/coroutines/flow/SharedFlowSlot;)J
    .registers 8

    .line 614
    iget-wide v0, p1, Lkotlinx/coroutines/flow/SharedFlowSlot;->index:J

    .line 615
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getBufferEndIndex()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_b

    return-wide v0

    .line 616
    :cond_b
    iget p1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferCapacity:I

    const-wide/16 v2, -0x1

    if-lez p1, :cond_12

    return-wide v2

    .line 618
    :cond_12
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    move-result-wide v4

    cmp-long p1, v0, v4

    if-lez p1, :cond_1b

    return-wide v2

    .line 619
    :cond_1b
    iget p1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    if-nez p1, :cond_20

    return-wide v2

    :cond_20
    return-wide v0
.end method

.method private final tryTakeValue(Lkotlinx/coroutines/flow/SharedFlowSlot;)Ljava/lang/Object;
    .registers 10

    .line 594
    sget-object v0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlowKt;->EMPTY_RESUMES:[Lkotlin/coroutines/Continuation;

    .line 20
    monitor-enter p0

    .line 596
    :try_start_3
    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->tryPeekLocked(Lkotlinx/coroutines/flow/SharedFlowSlot;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_10

    .line 598
    sget-object p1, Lkotlinx/coroutines/flow/SharedFlowKt;->NO_VALUE:Lkotlinx/coroutines/internal/Symbol;

    goto :goto_22

    .line 600
    :cond_10
    iget-wide v3, p1, Lkotlinx/coroutines/flow/SharedFlowSlot;->index:J

    .line 601
    invoke-direct {p0, v1, v2}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getPeekedValueLockedAt(J)Ljava/lang/Object;

    move-result-object v0

    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    .line 602
    iput-wide v1, p1, Lkotlinx/coroutines/flow/SharedFlowSlot;->index:J

    .line 603
    invoke-virtual {p0, v3, v4}, Lkotlinx/coroutines/flow/SharedFlowImpl;->updateCollectorIndexLocked$kotlinx_coroutines_core(J)[Lkotlin/coroutines/Continuation;

    move-result-object p1
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_3b

    move-object v7, v0

    move-object v0, p1

    move-object p1, v7

    .line 597
    :goto_22
    monitor-exit p0

    const/4 v1, 0x0

    .line 607
    array-length v2, v0

    :goto_25
    if-ge v1, v2, :cond_3a

    aget-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    if-nez v3, :cond_2e

    goto :goto_25

    :cond_2e
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_25

    :cond_3a
    return-object p1

    :catchall_3b
    move-exception p1

    .line 597
    monitor-exit p0

    throw p1
.end method

.method private final updateBufferLocked(JJJJ)V
    .registers 24

    move-object v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    .line 566
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 567
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v7, :cond_25

    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    move-result-wide v10

    cmp-long v7, v5, v10

    if-ltz v7, :cond_1b

    const/4 v7, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v7, 0x0

    :goto_1c
    if-eqz v7, :cond_1f

    goto :goto_25

    :cond_1f
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 569
    :cond_25
    :goto_25
    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    move-result-wide v10

    cmp-long v7, v10, v5

    if-gez v7, :cond_40

    :goto_2d
    const-wide/16 v12, 0x1

    add-long/2addr v12, v10

    iget-object v7, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->buffer:[Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v14, 0x0

    invoke-static {v7, v10, v11, v14}, Lkotlinx/coroutines/flow/SharedFlowKt;->access$setBufferAt([Ljava/lang/Object;JLjava/lang/Object;)V

    cmp-long v7, v12, v5

    if-ltz v7, :cond_3e

    goto :goto_40

    :cond_3e
    move-wide v10, v12

    goto :goto_2d

    .line 571
    :cond_40
    :goto_40
    iput-wide v1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->replayIndex:J

    .line 572
    iput-wide v3, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->minCollectorIndex:J

    sub-long v1, p5, v5

    long-to-int v2, v1

    .line 573
    iput v2, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    sub-long v1, p7, p5

    long-to-int v2, v1

    .line 574
    iput v2, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    .line 576
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v1

    if-eqz v1, :cond_64

    iget v1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    if-ltz v1, :cond_5a

    const/4 v1, 0x1

    goto :goto_5b

    :cond_5a
    const/4 v1, 0x0

    :goto_5b
    if-eqz v1, :cond_5e

    goto :goto_64

    :cond_5e
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 577
    :cond_64
    :goto_64
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v1

    if-eqz v1, :cond_7a

    iget v1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    if-ltz v1, :cond_70

    const/4 v1, 0x1

    goto :goto_71

    :cond_70
    const/4 v1, 0x0

    :goto_71
    if-eqz v1, :cond_74

    goto :goto_7a

    :cond_74
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 578
    :cond_7a
    :goto_7a
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v1

    if-eqz v1, :cond_99

    iget-wide v1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->replayIndex:J

    invoke-direct {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    move-result-wide v3

    iget v5, v0, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    cmp-long v5, v1, v3

    if-gtz v5, :cond_8f

    goto :goto_90

    :cond_8f
    const/4 v8, 0x0

    :goto_90
    if-eqz v8, :cond_93

    goto :goto_99

    :cond_93
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_99
    :goto_99
    return-void
.end method


# virtual methods
.method public collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;

    iget v1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;-><init>(Lkotlinx/coroutines/flow/SharedFlowImpl;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 338
    iget v2, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_71

    if-eq v2, v5, :cond_5d

    if-eq v2, v4, :cond_49

    if-ne v2, v3, :cond_41

    iget-object p1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$3:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/Job;

    iget-object v2, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/SharedFlowSlot;

    iget-object v5, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v6, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/flow/SharedFlowImpl;

    :try_start_3b
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_6f

    :cond_3e
    move-object p2, p1

    move-object p1, v5

    goto :goto_9e

    .line 354
    :cond_41
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 338
    :cond_49
    iget-object p1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$3:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/Job;

    iget-object v2, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/SharedFlowSlot;

    iget-object v5, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v6, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/flow/SharedFlowImpl;

    :try_start_59
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_6f

    goto :goto_a0

    :cond_5d
    iget-object p1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$2:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Lkotlinx/coroutines/flow/SharedFlowSlot;

    iget-object p1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v5, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$0:Ljava/lang/Object;

    move-object v6, v5

    check-cast v6, Lkotlinx/coroutines/flow/SharedFlowImpl;

    :try_start_6b
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_6f

    goto :goto_92

    :catchall_6f
    move-exception p1

    goto :goto_d2

    :cond_71
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 339
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->allocateSlot()Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lkotlinx/coroutines/flow/SharedFlowSlot;

    .line 341
    :try_start_7b
    instance-of p2, p1, Lkotlinx/coroutines/flow/SubscribedFlowCollector;

    if-eqz p2, :cond_91

    move-object p2, p1

    check-cast p2, Lkotlinx/coroutines/flow/SubscribedFlowCollector;

    iput-object p0, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$2:Ljava/lang/Object;

    iput v5, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->label:I

    invoke-virtual {p2, v0}, Lkotlinx/coroutines/flow/SubscribedFlowCollector;->onSubscription(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2
    :try_end_8e
    .catchall {:try_start_7b .. :try_end_8e} :catchall_d0

    if-ne p2, v1, :cond_91

    return-object v1

    :cond_91
    move-object v6, p0

    .line 329
    :goto_92
    :try_start_92
    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    .line 342
    sget-object v5, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {p2, v5}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object p2

    check-cast p2, Lkotlinx/coroutines/Job;

    :goto_9e
    move-object v5, p1

    move-object p1, p2

    .line 346
    :cond_a0
    :goto_a0
    invoke-direct {v6, v2}, Lkotlinx/coroutines/flow/SharedFlowImpl;->tryTakeValue(Lkotlinx/coroutines/flow/SharedFlowSlot;)Ljava/lang/Object;

    move-result-object p2

    .line 347
    sget-object v7, Lkotlinx/coroutines/flow/SharedFlowKt;->NO_VALUE:Lkotlinx/coroutines/internal/Symbol;

    if-eq p2, v7, :cond_bf

    if-nez p1, :cond_ab

    goto :goto_ae

    .line 350
    :cond_ab
    invoke-static {p1}, Lkotlinx/coroutines/JobKt;->ensureActive(Lkotlinx/coroutines/Job;)V

    .line 351
    :goto_ae
    iput-object v6, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$2:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$3:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->label:I

    invoke-interface {v5, p2, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3e

    return-object v1

    .line 348
    :cond_bf
    iput-object v6, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$2:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$3:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->label:I

    invoke-direct {v6, v2, v0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->awaitValue(Lkotlinx/coroutines/flow/SharedFlowSlot;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2
    :try_end_cd
    .catchall {:try_start_92 .. :try_end_cd} :catchall_6f

    if-ne p2, v1, :cond_a0

    return-object v1

    :catchall_d0
    move-exception p1

    move-object v6, p0

    .line 354
    :goto_d2
    invoke-virtual {v6, v2}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->freeSlot(Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;)V

    throw p1
.end method

.method protected createSlot()Lkotlinx/coroutines/flow/SharedFlowSlot;
    .registers 2

    .line 655
    new-instance v0, Lkotlinx/coroutines/flow/SharedFlowSlot;

    invoke-direct {v0}, Lkotlinx/coroutines/flow/SharedFlowSlot;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createSlot()Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    .registers 2

    .line 278
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->createSlot()Lkotlinx/coroutines/flow/SharedFlowSlot;

    move-result-object v0

    return-object v0
.end method

.method protected createSlotArray(I)[Lkotlinx/coroutines/flow/SharedFlowSlot;
    .registers 2

    .line 656
    new-array p1, p1, [Lkotlinx/coroutines/flow/SharedFlowSlot;

    return-object p1
.end method

.method public bridge synthetic createSlotArray(I)[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    .registers 2

    .line 278
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->createSlotArray(I)[Lkotlinx/coroutines/flow/SharedFlowSlot;

    move-result-object p1

    return-object p1
.end method

.method public emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 373
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->tryEmit(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 374
    :cond_9
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emitSuspend(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_14

    return-object p1

    :cond_14
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public tryEmit(Ljava/lang/Object;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 359
    sget-object v0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlowKt;->EMPTY_RESUMES:[Lkotlin/coroutines/Continuation;

    .line 20
    monitor-enter p0

    .line 361
    :try_start_3
    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->tryEmitLocked(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_10

    .line 362
    invoke-direct {p0, v0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->findSlotsToResumeLocked([Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;

    move-result-object v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_29

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    .line 361
    :goto_11
    monitor-exit p0

    .line 368
    array-length v2, v0

    :goto_13
    if-ge v1, v2, :cond_28

    aget-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    if-nez v3, :cond_1c

    goto :goto_13

    :cond_1c
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_13

    :cond_28
    return p1

    :catchall_29
    move-exception p1

    .line 361
    monitor-exit p0

    throw p1
.end method

.method public final updateCollectorIndexLocked$kotlinx_coroutines_core(J)[Lkotlin/coroutines/Continuation;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)[",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    move-object/from16 v9, p0

    .line 491
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-wide v0, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->minCollectorIndex:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-eqz v0, :cond_14

    goto :goto_1a

    :cond_14
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 492
    :cond_1a
    :goto_1a
    iget-wide v0, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->minCollectorIndex:J

    cmp-long v2, p1, v0

    if-lez v2, :cond_23

    sget-object v0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlowKt;->EMPTY_RESUMES:[Lkotlin/coroutines/Continuation;

    return-object v0

    .line 494
    :cond_23
    invoke-direct/range {p0 .. p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getHead()J

    move-result-wide v0

    .line 495
    iget v2, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferSize:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    .line 497
    iget v4, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferCapacity:I

    const-wide/16 v5, 0x1

    if-nez v4, :cond_36

    iget v4, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    if-lez v4, :cond_36

    add-long/2addr v2, v5

    .line 96
    :cond_36
    invoke-static/range {p0 .. p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->access$getNCollectors(Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;)I

    move-result v4

    if-nez v4, :cond_3d

    goto :goto_5e

    .line 97
    :cond_3d
    invoke-static/range {p0 .. p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->access$getSlots(Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;)[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    move-result-object v4

    if-nez v4, :cond_44

    goto :goto_5e

    .line 13536
    :cond_44
    array-length v7, v4

    const/4 v8, 0x0

    :goto_46
    if-ge v8, v7, :cond_5e

    aget-object v12, v4, v8

    if-eqz v12, :cond_5b

    .line 98
    check-cast v12, Lkotlinx/coroutines/flow/SharedFlowSlot;

    .line 500
    iget-wide v12, v12, Lkotlinx/coroutines/flow/SharedFlowSlot;->index:J

    const-wide/16 v14, 0x0

    cmp-long v16, v12, v14

    if-ltz v16, :cond_5b

    cmp-long v14, v12, v2

    if-gez v14, :cond_5b

    move-wide v2, v12

    :cond_5b
    add-int/lit8 v8, v8, 0x1

    goto :goto_46

    .line 502
    :cond_5e
    :goto_5e
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v4

    if-eqz v4, :cond_76

    iget-wide v7, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->minCollectorIndex:J

    cmp-long v4, v2, v7

    if-ltz v4, :cond_6c

    const/4 v4, 0x1

    goto :goto_6d

    :cond_6c
    const/4 v4, 0x0

    :goto_6d
    if-eqz v4, :cond_70

    goto :goto_76

    :cond_70
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 503
    :cond_76
    :goto_76
    iget-wide v7, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->minCollectorIndex:J

    cmp-long v4, v2, v7

    if-gtz v4, :cond_7f

    sget-object v0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlowKt;->EMPTY_RESUMES:[Lkotlin/coroutines/Continuation;

    return-object v0

    .line 506
    :cond_7f
    invoke-direct/range {p0 .. p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->getBufferEndIndex()J

    move-result-wide v7

    .line 507
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->getNCollectors()I

    move-result v4

    if-lez v4, :cond_96

    sub-long v12, v7, v2

    long-to-int v4, v12

    .line 512
    iget v12, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    iget v13, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferCapacity:I

    sub-int/2addr v13, v4

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_98

    .line 515
    :cond_96
    iget v4, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    .line 517
    :goto_98
    sget-object v12, Lkotlinx/coroutines/flow/internal/AbstractSharedFlowKt;->EMPTY_RESUMES:[Lkotlin/coroutines/Continuation;

    .line 518
    iget v13, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->queueSize:I

    int-to-long v13, v13

    add-long/2addr v13, v7

    if-lez v4, :cond_e6

    .line 520
    new-array v12, v4, [Lkotlin/coroutines/Continuation;

    .line 522
    iget-object v15, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->buffer:[Ljava/lang/Object;

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    cmp-long v16, v7, v13

    if-gez v16, :cond_e6

    move-wide v10, v7

    const/16 v17, 0x0

    :goto_ae
    add-long v18, v7, v5

    .line 524
    invoke-static {v15, v7, v8}, Lkotlinx/coroutines/flow/SharedFlowKt;->access$getBufferAt([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 525
    sget-object v6, Lkotlinx/coroutines/flow/SharedFlowKt;->NO_VALUE:Lkotlinx/coroutines/internal/Symbol;

    move-wide/from16 v20, v2

    if-eq v5, v6, :cond_d9

    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.flow.SharedFlowImpl.Emitter"

    .line 526
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;

    add-int/lit8 v2, v17, 0x1

    .line 527
    iget-object v3, v5, Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;->cont:Lkotlin/coroutines/Continuation;

    aput-object v3, v12, v17

    .line 528
    invoke-static {v15, v7, v8, v6}, Lkotlinx/coroutines/flow/SharedFlowKt;->access$setBufferAt([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 529
    iget-object v3, v5, Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;->value:Ljava/lang/Object;

    invoke-static {v15, v10, v11, v3}, Lkotlinx/coroutines/flow/SharedFlowKt;->access$setBufferAt([Ljava/lang/Object;JLjava/lang/Object;)V

    const-wide/16 v5, 0x1

    add-long v7, v10, v5

    if-lt v2, v4, :cond_d6

    goto :goto_e8

    :cond_d6
    move/from16 v17, v2

    move-wide v10, v7

    :cond_d9
    cmp-long v2, v18, v13

    if-ltz v2, :cond_df

    move-wide v7, v10

    goto :goto_e8

    :cond_df
    move-wide/from16 v7, v18

    move-wide/from16 v2, v20

    const-wide/16 v5, 0x1

    goto :goto_ae

    :cond_e6
    move-wide/from16 v20, v2

    :goto_e8
    sub-long v0, v7, v0

    long-to-int v1, v0

    .line 542
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->getNCollectors()I

    move-result v0

    if-nez v0, :cond_f3

    move-wide v3, v7

    goto :goto_f5

    :cond_f3
    move-wide/from16 v3, v20

    .line 544
    :goto_f5
    iget-wide v5, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->replayIndex:J

    iget v0, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->replay:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    sub-long v0, v7, v0

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 546
    iget v2, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->bufferCapacity:I

    if-nez v2, :cond_121

    cmp-long v2, v0, v13

    if-gez v2, :cond_121

    iget-object v2, v9, Lkotlinx/coroutines/flow/SharedFlowImpl;->buffer:[Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2, v0, v1}, Lkotlinx/coroutines/flow/SharedFlowKt;->access$getBufferAt([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    sget-object v5, Lkotlinx/coroutines/flow/SharedFlowKt;->NO_VALUE:Lkotlinx/coroutines/internal/Symbol;

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_121

    const-wide/16 v5, 0x1

    add-long/2addr v7, v5

    add-long/2addr v0, v5

    :cond_121
    move-wide v1, v0

    move-wide v5, v7

    move-object/from16 v0, p0

    move-wide v7, v13

    .line 551
    invoke-direct/range {v0 .. v8}, Lkotlinx/coroutines/flow/SharedFlowImpl;->updateBufferLocked(JJJJ)V

    .line 553
    invoke-direct/range {p0 .. p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->cleanupTailLocked()V

    .line 555
    array-length v0, v12

    if-nez v0, :cond_131

    const/4 v10, 0x1

    goto :goto_132

    :cond_131
    const/4 v10, 0x0

    :goto_132
    const/4 v0, 0x1

    xor-int/2addr v0, v10

    if-eqz v0, :cond_13a

    invoke-direct {v9, v12}, Lkotlinx/coroutines/flow/SharedFlowImpl;->findSlotsToResumeLocked([Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;

    move-result-object v12

    :cond_13a
    return-object v12
.end method

.method public final updateNewCollectorIndexLocked$kotlinx_coroutines_core()J
    .registers 6

    .line 484
    iget-wide v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->replayIndex:J

    .line 485
    iget-wide v2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->minCollectorIndex:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_a

    iput-wide v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl;->minCollectorIndex:J

    :cond_a
    return-wide v0
.end method
