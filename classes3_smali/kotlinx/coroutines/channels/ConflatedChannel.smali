.class public Lkotlinx/coroutines/channels/ConflatedChannel;
.super Lkotlinx/coroutines/channels/AbstractChannel;
.source "ConflatedChannel.kt"


# annotations
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
    value = "SMAP\nConflatedChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConflatedChannel.kt\nkotlinx/coroutines/channels/ConflatedChannel\n+ 2 Concurrent.kt\nkotlinx/coroutines/internal/ConcurrentKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,143:1\n17#2:144\n17#2:145\n17#2:147\n17#2:148\n17#2:149\n17#2:150\n17#2:151\n1#3:146\n*S KotlinDebug\n*F\n+ 1 ConflatedChannel.kt\nkotlinx/coroutines/channels/ConflatedChannel\n*L\n26#1:144\n35#1:145\n63#1:147\n96#1:148\n107#1:149\n119#1:150\n134#1:151\n*E\n"
.end annotation


# instance fields
.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/AbstractChannel;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 28
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/channels/ConflatedChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 30
    sget-object p1, Lkotlinx/coroutines/channels/AbstractChannelKt;->EMPTY:Lkotlinx/coroutines/internal/Symbol;

    iput-object p1, p0, Lkotlinx/coroutines/channels/ConflatedChannel;->value:Ljava/lang/Object;

    return-void
.end method

.method private final updateValueLocked(Ljava/lang/Object;)Lkotlinx/coroutines/internal/UndeliveredElementException;
    .registers 6

    .line 127
    iget-object v0, p0, Lkotlinx/coroutines/channels/ConflatedChannel;->value:Ljava/lang/Object;

    .line 128
    sget-object v1, Lkotlinx/coroutines/channels/AbstractChannelKt;->EMPTY:Lkotlinx/coroutines/internal/Symbol;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_8

    goto :goto_12

    .line 129
    :cond_8
    iget-object v1, p0, Lkotlinx/coroutines/channels/AbstractSendChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    if-nez v1, :cond_d

    goto :goto_12

    :cond_d
    const/4 v3, 0x2

    invoke-static {v1, v0, v2, v3, v2}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->callUndeliveredElementCatchingException$default(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;ILjava/lang/Object;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    move-result-object v2

    .line 130
    :goto_12
    iput-object p1, p0, Lkotlinx/coroutines/channels/ConflatedChannel;->value:Ljava/lang/Object;

    return-object v2
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

    .line 134
    iget-object v0, p0, Lkotlinx/coroutines/channels/ConflatedChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 17
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 135
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

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/channels/ConflatedChannel;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
    .registers 3

    .line 22
    iget-object v0, p0, Lkotlinx/coroutines/channels/ConflatedChannel;->value:Ljava/lang/Object;

    sget-object v1, Lkotlinx/coroutines/channels/AbstractChannelKt;->EMPTY:Lkotlinx/coroutines/internal/Symbol;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method protected offerInternal(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lkotlinx/coroutines/channels/ConflatedChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 17
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 36
    :try_start_5
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractSendChannel;->getClosedForSend()Lkotlinx/coroutines/channels/Closed;

    move-result-object v1

    if-nez v1, :cond_57

    .line 38
    iget-object v1, p0, Lkotlinx/coroutines/channels/ConflatedChannel;->value:Ljava/lang/Object;

    sget-object v2, Lkotlinx/coroutines/channels/AbstractChannelKt;->EMPTY:Lkotlinx/coroutines/internal/Symbol;

    if-ne v1, v2, :cond_4a

    .line 41
    :cond_11
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->takeFirstReceiveOrPeekClosed()Lkotlinx/coroutines/channels/ReceiveOrClosed;

    move-result-object v1

    if-nez v1, :cond_18

    goto :goto_4a

    .line 42
    :cond_18
    instance-of v2, v1, Lkotlinx/coroutines/channels/Closed;
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_5b

    if-eqz v2, :cond_20

    .line 43
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    :cond_20
    const/4 v2, 0x0

    .line 45
    :try_start_21
    invoke-interface {v1, p1, v2}, Lkotlinx/coroutines/channels/ReceiveOrClosed;->tryResumeReceive(Ljava/lang/Object;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;)Lkotlinx/coroutines/internal/Symbol;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 47
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v3

    if-eqz v3, :cond_3d

    sget-object v3, Lkotlinx/coroutines/CancellableContinuationImplKt;->RESUME_TOKEN:Lkotlinx/coroutines/internal/Symbol;

    if-ne v2, v3, :cond_33

    const/4 v2, 0x1

    goto :goto_34

    :cond_33
    const/4 v2, 0x0

    :goto_34
    if-eqz v2, :cond_37

    goto :goto_3d

    :cond_37
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 53
    :cond_3d
    :goto_3d
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3f
    .catchall {:try_start_21 .. :try_end_3f} :catchall_5b

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 56
    invoke-interface {v1, p1}, Lkotlinx/coroutines/channels/ReceiveOrClosed;->completeResumeReceive(Ljava/lang/Object;)V

    .line 57
    invoke-interface {v1}, Lkotlinx/coroutines/channels/ReceiveOrClosed;->getOfferResult()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 52
    :cond_4a
    :goto_4a
    :try_start_4a
    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/ConflatedChannel;->updateValueLocked(Ljava/lang/Object;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    move-result-object p1

    if-nez p1, :cond_56

    .line 53
    sget-object p1, Lkotlinx/coroutines/channels/AbstractChannelKt;->OFFER_SUCCESS:Lkotlinx/coroutines/internal/Symbol;
    :try_end_52
    .catchall {:try_start_4a .. :try_end_52} :catchall_5b

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    .line 52
    :cond_56
    :try_start_56
    throw p1
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_5b

    .line 36
    :cond_57
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    :catchall_5b
    move-exception p1

    .line 53
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method protected pollInternal()Ljava/lang/Object;
    .registers 4

    .line 96
    iget-object v0, p0, Lkotlinx/coroutines/channels/ConflatedChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 17
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 97
    :try_start_5
    iget-object v1, p0, Lkotlinx/coroutines/channels/ConflatedChannel;->value:Ljava/lang/Object;

    sget-object v2, Lkotlinx/coroutines/channels/AbstractChannelKt;->EMPTY:Lkotlinx/coroutines/internal/Symbol;

    if-ne v1, v2, :cond_17

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractSendChannel;->getClosedForSend()Lkotlinx/coroutines/channels/Closed;

    move-result-object v1

    if-nez v1, :cond_13

    sget-object v1, Lkotlinx/coroutines/channels/AbstractChannelKt;->POLL_FAILED:Lkotlinx/coroutines/internal/Symbol;
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_1f

    :cond_13
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    .line 99
    :cond_17
    :try_start_17
    iput-object v2, p0, Lkotlinx/coroutines/channels/ConflatedChannel;->value:Ljava/lang/Object;

    .line 100
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_1f

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    :catchall_1f
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method
