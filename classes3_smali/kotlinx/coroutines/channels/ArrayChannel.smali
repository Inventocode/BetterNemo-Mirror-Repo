.class public Lkotlinx/coroutines/channels/ArrayChannel;
.super Lkotlinx/coroutines/channels/AbstractChannel;
.source "ArrayChannel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/channels/ArrayChannel$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/channels/AbstractChannel<",
        "TE;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nArrayChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ArrayChannel.kt\nkotlinx/coroutines/channels/ArrayChannel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Concurrent.kt\nkotlinx/coroutines/internal/ConcurrentKt\n*L\n1#1,308:1\n1#2:309\n17#3:310\n17#3:311\n17#3:312\n17#3:313\n17#3:314\n17#3:315\n17#3:316\n17#3:317\n17#3:318\n*S KotlinDebug\n*F\n+ 1 ArrayChannel.kt\nkotlinx/coroutines/channels/ArrayChannel\n*L\n52#1:310\n53#1:311\n58#1:312\n90#1:313\n129#1:314\n181#1:315\n221#1:316\n277#1:317\n286#1:318\n*E\n"
.end annotation


# instance fields
.field private buffer:[Ljava/lang/Object;

.field private final capacity:I

.field private head:I

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final onBufferOverflow:Lkotlinx/coroutines/channels/BufferOverflow;

.field private volatile synthetic size:I


# direct methods
.method public constructor <init>(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlinx/coroutines/channels/BufferOverflow;",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p3}, Lkotlinx/coroutines/channels/AbstractChannel;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 26
    iput p1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->capacity:I

    .line 27
    iput-object p2, p0, Lkotlinx/coroutines/channels/ArrayChannel;->onBufferOverflow:Lkotlinx/coroutines/channels/BufferOverflow;

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-lt p1, p3, :cond_c

    goto :goto_d

    :cond_c
    const/4 p3, 0x0

    :goto_d
    if-eqz p3, :cond_2f

    .line 36
    new-instance p3, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p3, p0, Lkotlinx/coroutines/channels/ArrayChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    const/16 p3, 0x8

    .line 42
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    new-array p1, p1, [Ljava/lang/Object;

    sget-object v1, Lkotlinx/coroutines/channels/AbstractChannelKt;->EMPTY:Lkotlinx/coroutines/internal/Symbol;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lkotlin/collections/ArraysKt;->fill$default([Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;)V

    sget-object p3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iput-object p1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    .line 45
    iput p2, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    return-void

    .line 33
    :cond_2f
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ArrayChannel capacity must be at least 1, but "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " was specified"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private final enqueueElement(ILjava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 150
    iget v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->capacity:I

    if-ge p1, v0, :cond_11

    .line 151
    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/ArrayChannel;->ensureCapacity(I)V

    .line 152
    iget-object v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    iget v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    add-int/2addr v1, p1

    array-length p1, v0

    rem-int/2addr v1, p1

    aput-object p2, v0, v1

    goto :goto_3e

    .line 155
    :cond_11
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->onBufferOverflow:Lkotlinx/coroutines/channels/BufferOverflow;

    sget-object v2, Lkotlinx/coroutines/channels/BufferOverflow;->DROP_OLDEST:Lkotlinx/coroutines/channels/BufferOverflow;

    if-ne v0, v2, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    if-eqz v0, :cond_24

    goto :goto_2a

    :cond_24
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 156
    :cond_2a
    :goto_2a
    iget-object v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    iget v2, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    array-length v3, v0

    rem-int v3, v2, v3

    const/4 v4, 0x0

    aput-object v4, v0, v3

    add-int/2addr p1, v2

    .line 157
    array-length v3, v0

    rem-int/2addr p1, v3

    aput-object p2, v0, p1

    add-int/2addr v2, v1

    .line 158
    array-length p1, v0

    rem-int/2addr v2, p1

    iput v2, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    :goto_3e
    return-void
.end method

.method private final ensureCapacity(I)V
    .registers 10

    .line 164
    iget-object v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    array-length v1, v0

    if-lt p1, v1, :cond_2f

    .line 165
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->capacity:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 166
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    if-lez p1, :cond_26

    const/4 v3, 0x0

    :goto_14
    add-int/lit8 v4, v3, 0x1

    .line 168
    iget-object v5, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    iget v6, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    add-int/2addr v6, v3

    array-length v7, v5

    rem-int/2addr v6, v7

    aget-object v5, v5, v6

    aput-object v5, v1, v3

    if-lt v4, p1, :cond_24

    goto :goto_26

    :cond_24
    move v3, v4

    goto :goto_14

    .line 170
    :cond_26
    :goto_26
    sget-object v3, Lkotlinx/coroutines/channels/AbstractChannelKt;->EMPTY:Lkotlinx/coroutines/internal/Symbol;

    invoke-static {v1, v3, p1, v0}, Lkotlin/collections/ArraysKt;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 171
    iput-object v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    .line 172
    iput v2, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    :cond_2f
    return-void
.end method

.method private final updateBufferSize(I)Lkotlinx/coroutines/internal/Symbol;
    .registers 5

    .line 136
    iget v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->capacity:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p1, v0, :cond_a

    add-int/2addr p1, v2

    .line 137
    iput p1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    return-object v1

    .line 141
    :cond_a
    iget-object p1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->onBufferOverflow:Lkotlinx/coroutines/channels/BufferOverflow;

    sget-object v0, Lkotlinx/coroutines/channels/ArrayChannel$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    if-eq p1, v2, :cond_26

    const/4 v0, 0x2

    if-eq p1, v0, :cond_23

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1d

    goto :goto_28

    .line 144
    :cond_1d
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 143
    :cond_23
    sget-object v1, Lkotlinx/coroutines/channels/AbstractChannelKt;->OFFER_SUCCESS:Lkotlinx/coroutines/internal/Symbol;

    goto :goto_28

    .line 142
    :cond_26
    sget-object v1, Lkotlinx/coroutines/channels/AbstractChannelKt;->OFFER_FAILED:Lkotlinx/coroutines/internal/Symbol;

    :goto_28
    return-object v1
.end method


# virtual methods
.method protected enqueueReceiveInternal(Lkotlinx/coroutines/channels/Receive;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/Receive<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 17
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 278
    :try_start_5
    invoke-super {p0, p1}, Lkotlinx/coroutines/channels/AbstractChannel;->enqueueReceiveInternal(Lkotlinx/coroutines/channels/Receive;)Z

    move-result p1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_d

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    :catchall_d
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method protected getBufferDebugString()Ljava/lang/String;
    .registers 3

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(buffer:capacity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->capacity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final isBufferAlwaysEmpty()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected final isBufferEmpty()Z
    .registers 2

    .line 48
    iget v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method protected offerInternal(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 17
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 59
    :try_start_5
    iget v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    .line 60
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractSendChannel;->getClosedForSend()Lkotlinx/coroutines/channels/Closed;

    move-result-object v2

    if-nez v2, :cond_5f

    .line 62
    invoke-direct {p0, v1}, Lkotlinx/coroutines/channels/ArrayChannel;->updateBufferSize(I)Lkotlinx/coroutines/internal/Symbol;

    move-result-object v2

    if-nez v2, :cond_5b

    if-nez v1, :cond_52

    .line 66
    :cond_15
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->takeFirstReceiveOrPeekClosed()Lkotlinx/coroutines/channels/ReceiveOrClosed;

    move-result-object v2

    if-nez v2, :cond_1c

    goto :goto_52

    .line 67
    :cond_1c
    instance-of v3, v2, Lkotlinx/coroutines/channels/Closed;

    if-eqz v3, :cond_26

    .line 68
    iput v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:I
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_63

    .line 69
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v2

    :cond_26
    const/4 v3, 0x0

    .line 71
    :try_start_27
    invoke-interface {v2, p1, v3}, Lkotlinx/coroutines/channels/ReceiveOrClosed;->tryResumeReceive(Ljava/lang/Object;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;)Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 73
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v4

    if-eqz v4, :cond_43

    sget-object v4, Lkotlinx/coroutines/CancellableContinuationImplKt;->RESUME_TOKEN:Lkotlinx/coroutines/internal/Symbol;

    if-ne v3, v4, :cond_39

    const/4 v3, 0x1

    goto :goto_3a

    :cond_39
    const/4 v3, 0x0

    :goto_3a
    if-eqz v3, :cond_3d

    goto :goto_43

    :cond_3d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 74
    :cond_43
    :goto_43
    iput v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    .line 80
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_47
    .catchall {:try_start_27 .. :try_end_47} :catchall_63

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 83
    invoke-interface {v2, p1}, Lkotlinx/coroutines/channels/ReceiveOrClosed;->completeResumeReceive(Ljava/lang/Object;)V

    .line 84
    invoke-interface {v2}, Lkotlinx/coroutines/channels/ReceiveOrClosed;->getOfferResult()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 79
    :cond_52
    :goto_52
    :try_start_52
    invoke-direct {p0, v1, p1}, Lkotlinx/coroutines/channels/ArrayChannel;->enqueueElement(ILjava/lang/Object;)V

    .line 80
    sget-object p1, Lkotlinx/coroutines/channels/AbstractChannelKt;->OFFER_SUCCESS:Lkotlinx/coroutines/internal/Symbol;
    :try_end_57
    .catchall {:try_start_52 .. :try_end_57} :catchall_63

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    .line 62
    :cond_5b
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v2

    .line 60
    :cond_5f
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v2

    :catchall_63
    move-exception p1

    .line 80
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method protected pollInternal()Ljava/lang/Object;
    .registers 10

    .line 181
    iget-object v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 17
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 182
    :try_start_5
    iget v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    if-nez v1, :cond_15

    .line 183
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractSendChannel;->getClosedForSend()Lkotlinx/coroutines/channels/Closed;

    move-result-object v1

    if-nez v1, :cond_11

    sget-object v1, Lkotlinx/coroutines/channels/AbstractChannelKt;->POLL_FAILED:Lkotlinx/coroutines/internal/Symbol;
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_83

    :cond_11
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    .line 185
    :cond_15
    :try_start_15
    iget-object v2, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    iget v3, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    aget-object v4, v2, v3

    const/4 v5, 0x0

    .line 186
    aput-object v5, v2, v3

    add-int/lit8 v2, v1, -0x1

    .line 187
    iput v2, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    .line 189
    sget-object v2, Lkotlinx/coroutines/channels/AbstractChannelKt;->POLL_FAILED:Lkotlinx/coroutines/internal/Symbol;

    .line 190
    iget v3, p0, Lkotlinx/coroutines/channels/ArrayChannel;->capacity:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v1, v3, :cond_59

    move-object v3, v5

    .line 192
    :goto_2b
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractSendChannel;->takeFirstSendOrPeekClosed()Lkotlinx/coroutines/channels/Send;

    move-result-object v8

    if-nez v8, :cond_33

    move-object v5, v3

    goto :goto_59

    .line 193
    :cond_33
    invoke-virtual {v8, v5}, Lkotlinx/coroutines/channels/Send;->tryResumeSend(Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;)Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    if-eqz v3, :cond_54

    .line 195
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v2

    if-eqz v2, :cond_4d

    sget-object v2, Lkotlinx/coroutines/CancellableContinuationImplKt;->RESUME_TOKEN:Lkotlinx/coroutines/internal/Symbol;

    if-ne v3, v2, :cond_44

    const/4 v6, 0x1

    :cond_44
    if-eqz v6, :cond_47

    goto :goto_4d

    :cond_47
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 197
    :cond_4d
    :goto_4d
    invoke-virtual {v8}, Lkotlinx/coroutines/channels/Send;->getPollResult()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v8

    const/4 v6, 0x1

    goto :goto_59

    .line 201
    :cond_54
    invoke-virtual {v8}, Lkotlinx/coroutines/channels/Send;->undeliveredElement()V

    move-object v3, v8

    goto :goto_2b

    .line 204
    :cond_59
    :goto_59
    sget-object v3, Lkotlinx/coroutines/channels/AbstractChannelKt;->POLL_FAILED:Lkotlinx/coroutines/internal/Symbol;

    if-eq v2, v3, :cond_6c

    instance-of v3, v2, Lkotlinx/coroutines/channels/Closed;

    if-nez v3, :cond_6c

    .line 205
    iput v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    .line 206
    iget-object v3, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    iget v8, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    add-int/2addr v8, v1

    array-length v1, v3

    rem-int/2addr v8, v1

    aput-object v2, v3, v8

    .line 208
    :cond_6c
    iget v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    add-int/2addr v1, v7

    iget-object v2, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    .line 209
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_77
    .catchall {:try_start_15 .. :try_end_77} :catchall_83

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-eqz v6, :cond_82

    .line 212
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lkotlinx/coroutines/channels/Send;->completeResumeSend()V

    :cond_82
    return-object v4

    :catchall_83
    move-exception v1

    .line 209
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method
