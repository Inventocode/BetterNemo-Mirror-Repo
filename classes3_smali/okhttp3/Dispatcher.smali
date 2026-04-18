.class public final Lokhttp3/Dispatcher;
.super Ljava/lang/Object;
.source "Dispatcher.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDispatcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Dispatcher.kt\nokhttp3/Dispatcher\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,238:1\n1313#2:239\n1382#2,3:240\n1313#2:243\n1382#2,3:244\n*E\n*S KotlinDebug\n*F\n+ 1 Dispatcher.kt\nokhttp3/Dispatcher\n*L\n219#1:239\n219#1,3:240\n224#1:243\n224#1,3:244\n*E\n"
.end annotation


# instance fields
.field private executorServiceOrNull:Ljava/util/concurrent/ExecutorService;

.field private idleCallback:Ljava/lang/Runnable;

.field private maxRequests:I

.field private maxRequestsPerHost:I

.field private final readyAsyncCalls:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lokhttp3/RealCall$AsyncCall;",
            ">;"
        }
    .end annotation
.end field

.field private final runningAsyncCalls:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lokhttp3/RealCall$AsyncCall;",
            ">;"
        }
    .end annotation
.end field

.field private final runningSyncCalls:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lokhttp3/RealCall;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    .line 43
    iput v0, p0, Lokhttp3/Dispatcher;->maxRequests:I

    const/4 v0, 0x5

    .line 62
    iput v0, p0, Lokhttp3/Dispatcher;->maxRequestsPerHost:I

    .line 99
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/util/ArrayDeque;

    .line 102
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/ArrayDeque;

    .line 105
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/util/ArrayDeque;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .registers 3

    const-string v0, "executorService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-direct {p0}, Lokhttp3/Dispatcher;-><init>()V

    .line 108
    iput-object p1, p0, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private final findExistingCallWithHost(Ljava/lang/String;)Lokhttp3/RealCall$AsyncCall;
    .registers 5

    .line 126
    iget-object v0, p0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/RealCall$AsyncCall;

    .line 127
    invoke-virtual {v1}, Lokhttp3/RealCall$AsyncCall;->host()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v1

    .line 129
    :cond_1d
    iget-object v0, p0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/RealCall$AsyncCall;

    .line 130
    invoke-virtual {v1}, Lokhttp3/RealCall$AsyncCall;->host()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    return-object v1

    :cond_3a
    const/4 p1, 0x0

    return-object p1
.end method

.method private final finished(Ljava/util/Deque;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Deque<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 205
    monitor-enter p0

    .line 206
    :try_start_1
    invoke-interface {p1, p2}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 207
    iget-object p1, p0, Lokhttp3/Dispatcher;->idleCallback:Ljava/lang/Runnable;

    .line 208
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_20

    .line 205
    monitor-exit p0

    .line 210
    invoke-direct {p0}, Lokhttp3/Dispatcher;->promoteAndExecute()Z

    move-result p2

    if-nez p2, :cond_17

    if-eqz p1, :cond_17

    .line 213
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_17
    return-void

    .line 206
    :cond_18
    :try_start_18
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Call wasn\'t in-flight!"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_20

    :catchall_20
    move-exception p1

    .line 205
    monitor-exit p0

    throw p1
.end method

.method private final promoteAndExecute()Z
    .registers 7

    .line 159
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 163
    monitor-enter p0

    .line 164
    :try_start_9
    iget-object v1, p0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "readyAsyncCalls.iterator()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    .line 166
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/RealCall$AsyncCall;

    .line 168
    iget-object v3, p0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->size()I

    move-result v3

    iget v4, p0, Lokhttp3/Dispatcher;->maxRequests:I

    if-lt v3, v4, :cond_2b

    goto :goto_50

    .line 169
    :cond_2b
    invoke-virtual {v2}, Lokhttp3/RealCall$AsyncCall;->callsPerHost()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    iget v4, p0, Lokhttp3/Dispatcher;->maxRequestsPerHost:I

    if-lt v3, v4, :cond_38

    goto :goto_14

    .line 171
    :cond_38
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 172
    invoke-virtual {v2}, Lokhttp3/RealCall$AsyncCall;->callsPerHost()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const-string v3, "asyncCall"

    .line 173
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v3, p0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/ArrayDeque;

    invoke-virtual {v3, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 176
    :cond_50
    :goto_50
    invoke-virtual {p0}, Lokhttp3/Dispatcher;->runningCallsCount()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_59

    const/4 v1, 0x1

    goto :goto_5a

    :cond_59
    const/4 v1, 0x0

    .line 177
    :goto_5a
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5c
    .catchall {:try_start_9 .. :try_end_5c} :catchall_74

    .line 163
    monitor-exit p0

    .line 179
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    :goto_61
    if-ge v2, v3, :cond_73

    .line 180
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokhttp3/RealCall$AsyncCall;

    .line 181
    invoke-virtual {p0}, Lokhttp3/Dispatcher;->executorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    invoke-virtual {v4, v5}, Lokhttp3/RealCall$AsyncCall;->executeOn(Ljava/util/concurrent/ExecutorService;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_61

    :cond_73
    return v1

    :catchall_74
    move-exception v0

    .line 163
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final -deprecated_executorService()Ljava/util/concurrent/ExecutorService;
    .registers 2

    .line 236
    invoke-virtual {p0}, Lokhttp3/Dispatcher;->executorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized cancelAll()V
    .registers 3

    monitor-enter p0

    .line 140
    :try_start_1
    iget-object v0, p0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/RealCall$AsyncCall;

    .line 141
    invoke-virtual {v1}, Lokhttp3/RealCall$AsyncCall;->get()Lokhttp3/RealCall;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/RealCall;->cancel()V

    goto :goto_7

    .line 143
    :cond_1b
    iget-object v0, p0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/RealCall$AsyncCall;

    .line 144
    invoke-virtual {v1}, Lokhttp3/RealCall$AsyncCall;->get()Lokhttp3/RealCall;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/RealCall;->cancel()V

    goto :goto_21

    .line 146
    :cond_35
    iget-object v0, p0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/RealCall;

    .line 147
    invoke-virtual {v1}, Lokhttp3/RealCall;->cancel()V
    :try_end_4a
    .catchall {:try_start_1 .. :try_end_4a} :catchall_4d

    goto :goto_3b

    .line 149
    :cond_4b
    monitor-exit p0

    return-void

    :catchall_4d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final enqueue$okhttp(Lokhttp3/RealCall$AsyncCall;)V
    .registers 3

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    monitor-enter p0

    .line 113
    :try_start_6
    iget-object v0, p0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-virtual {p1}, Lokhttp3/RealCall$AsyncCall;->get()Lokhttp3/RealCall;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/RealCall;->getForWebSocket()Z

    move-result v0

    if-nez v0, :cond_22

    .line 118
    invoke-virtual {p1}, Lokhttp3/RealCall$AsyncCall;->host()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lokhttp3/Dispatcher;->findExistingCallWithHost(Ljava/lang/String;)Lokhttp3/RealCall$AsyncCall;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 119
    invoke-virtual {p1, v0}, Lokhttp3/RealCall$AsyncCall;->reuseCallsPerHostFrom(Lokhttp3/RealCall$AsyncCall;)V

    .line 121
    :cond_22
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_24
    .catchall {:try_start_6 .. :try_end_24} :catchall_29

    .line 112
    monitor-exit p0

    .line 122
    invoke-direct {p0}, Lokhttp3/Dispatcher;->promoteAndExecute()Z

    return-void

    :catchall_29
    move-exception p1

    .line 112
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized executed$okhttp(Lokhttp3/RealCall;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 190
    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized executorService()Ljava/util/concurrent/ExecutorService;
    .registers 10

    monitor-enter p0

    .line 91
    :try_start_1
    iget-object v0, p0, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_21

    .line 92
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 93
    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v1, "OkHttp Dispatcher"

    const/4 v8, 0x0

    invoke-static {v1, v8}, Lokhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    move-object v1, v0

    .line 92
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/util/concurrent/ExecutorService;

    .line 95
    :cond_21
    iget-object v0, p0, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_28

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2a

    :cond_28
    monitor-exit p0

    return-object v0

    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final finished$okhttp(Lokhttp3/RealCall$AsyncCall;)V
    .registers 3

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    invoke-virtual {p1}, Lokhttp3/RealCall$AsyncCall;->callsPerHost()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 195
    iget-object v0, p0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/ArrayDeque;

    invoke-direct {p0, v0, p1}, Lokhttp3/Dispatcher;->finished(Ljava/util/Deque;Ljava/lang/Object;)V

    return-void
.end method

.method public final finished$okhttp(Lokhttp3/RealCall;)V
    .registers 3

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/util/ArrayDeque;

    invoke-direct {p0, v0, p1}, Lokhttp3/Dispatcher;->finished(Ljava/util/Deque;Ljava/lang/Object;)V

    return-void
.end method

.method public final declared-synchronized getIdleCallback()Ljava/lang/Runnable;
    .registers 2

    monitor-enter p0

    .line 84
    :try_start_1
    iget-object v0, p0, Lokhttp3/Dispatcher;->idleCallback:Ljava/lang/Runnable;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getMaxRequests()I
    .registers 2

    monitor-enter p0

    .line 43
    :try_start_1
    iget v0, p0, Lokhttp3/Dispatcher;->maxRequests:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getMaxRequestsPerHost()I
    .registers 2

    monitor-enter p0

    .line 62
    :try_start_1
    iget v0, p0, Lokhttp3/Dispatcher;->maxRequestsPerHost:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized queuedCalls()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/Call;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 219
    :try_start_1
    iget-object v0, p0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/util/ArrayDeque;

    .line 1313
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 240
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 241
    check-cast v2, Lokhttp3/RealCall$AsyncCall;

    .line 219
    invoke-virtual {v2}, Lokhttp3/RealCall$AsyncCall;->get()Lokhttp3/RealCall;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_26
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const-string v1, "Collections.unmodifiable…ncCalls.map { it.get() })"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_31

    monitor-exit p0

    return-object v0

    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized queuedCallsCount()I
    .registers 2

    monitor-enter p0

    .line 227
    :try_start_1
    iget-object v0, p0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized runningCalls()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/Call;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 224
    :try_start_1
    iget-object v0, p0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/util/ArrayDeque;

    iget-object v1, p0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/ArrayDeque;

    .line 1313
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 244
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 245
    check-cast v3, Lokhttp3/RealCall$AsyncCall;

    .line 224
    invoke-virtual {v3}, Lokhttp3/RealCall$AsyncCall;->get()Lokhttp3/RealCall;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_28
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const-string v1, "Collections.unmodifiable…ncCalls.map { it.get() })"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_37

    monitor-exit p0

    return-object v0

    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized runningCallsCount()I
    .registers 3

    monitor-enter p0

    .line 229
    :try_start_1
    iget-object v0, p0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    iget-object v1, p0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_10

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setIdleCallback(Ljava/lang/Runnable;)V
    .registers 2

    monitor-enter p0

    .line 84
    :try_start_1
    iput-object p1, p0, Lokhttp3/Dispatcher;->idleCallback:Ljava/lang/Runnable;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setMaxRequests(I)V
    .registers 4

    const/4 v0, 0x1

    if-lt p1, v0, :cond_4

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_14

    .line 46
    monitor-enter p0

    .line 47
    :try_start_8
    iput p1, p0, Lokhttp3/Dispatcher;->maxRequests:I

    .line 48
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_11

    .line 46
    monitor-exit p0

    .line 49
    invoke-direct {p0}, Lokhttp3/Dispatcher;->promoteAndExecute()Z

    return-void

    :catchall_11
    move-exception p1

    .line 46
    monitor-exit p0

    throw p1

    .line 45
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "max < 1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setMaxRequestsPerHost(I)V
    .registers 4

    const/4 v0, 0x1

    if-lt p1, v0, :cond_4

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_14

    .line 65
    monitor-enter p0

    .line 66
    :try_start_8
    iput p1, p0, Lokhttp3/Dispatcher;->maxRequestsPerHost:I

    .line 67
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_11

    .line 65
    monitor-exit p0

    .line 68
    invoke-direct {p0}, Lokhttp3/Dispatcher;->promoteAndExecute()Z

    return-void

    :catchall_11
    move-exception p1

    .line 65
    monitor-exit p0

    throw p1

    .line 64
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "max < 1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
