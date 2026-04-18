.class public final Lokhttp3/internal/connection/RealConnectionPool;
.super Ljava/lang/Object;
.source "RealConnectionPool.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/connection/RealConnectionPool$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRealConnectionPool.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealConnectionPool.kt\nokhttp3/internal/connection/RealConnectionPool\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Util.kt\nokhttp3/internal/Util\n*L\n1#1,269:1\n1522#2,4:270\n544#3:274\n*E\n*S KotlinDebug\n*F\n+ 1 RealConnectionPool.kt\nokhttp3/internal/connection/RealConnectionPool\n*L\n68#1,4:270\n119#1:274\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lokhttp3/internal/connection/RealConnectionPool$Companion;

.field private static final executor:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field private final cleanupRunnable:Lokhttp3/internal/connection/RealConnectionPool$cleanupRunnable$1;

.field private cleanupRunning:Z

.field private final connections:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lokhttp3/internal/connection/RealConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final keepAliveDurationNs:J

.field private final maxIdleConnections:I

.field private final routeDatabase:Lokhttp3/internal/connection/RouteDatabase;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    new-instance v0, Lokhttp3/internal/connection/RealConnectionPool$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/internal/connection/RealConnectionPool$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokhttp3/internal/connection/RealConnectionPool;->Companion:Lokhttp3/internal/connection/RealConnectionPool$Companion;

    .line 258
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 261
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 262
    new-instance v8, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v8}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v1, "OkHttp ConnectionPool"

    const/4 v2, 0x1

    .line 263
    invoke-static {v1, v2}, Lokhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v9

    const/4 v3, 0x0

    const v4, 0x7fffffff

    const-wide/16 v5, 0x3c

    move-object v2, v0

    .line 258
    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lokhttp3/internal/connection/RealConnectionPool;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>(IJLjava/util/concurrent/TimeUnit;)V
    .registers 7

    const-string v0, "timeUnit"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lokhttp3/internal/connection/RealConnectionPool;->maxIdleConnections:I

    .line 41
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/internal/connection/RealConnectionPool;->keepAliveDurationNs:J

    .line 43
    new-instance p1, Lokhttp3/internal/connection/RealConnectionPool$cleanupRunnable$1;

    invoke-direct {p1, p0}, Lokhttp3/internal/connection/RealConnectionPool$cleanupRunnable$1;-><init>(Lokhttp3/internal/connection/RealConnectionPool;)V

    iput-object p1, p0, Lokhttp3/internal/connection/RealConnectionPool;->cleanupRunnable:Lokhttp3/internal/connection/RealConnectionPool$cleanupRunnable$1;

    .line 58
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/util/ArrayDeque;

    .line 59
    new-instance p1, Lokhttp3/internal/connection/RouteDatabase;

    invoke-direct {p1}, Lokhttp3/internal/connection/RouteDatabase;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/connection/RealConnectionPool;->routeDatabase:Lokhttp3/internal/connection/RouteDatabase;

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-lez p1, :cond_2d

    const/4 p1, 0x1

    goto :goto_2e

    :cond_2d
    const/4 p1, 0x0

    :goto_2e
    if-eqz p1, :cond_31

    return-void

    .line 64
    :cond_31
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "keepAliveDuration <= 0: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private final pruneAndGetAllocationCount(Lokhttp3/internal/connection/RealConnection;J)I
    .registers 10

    .line 211
    invoke-virtual {p1}, Lokhttp3/internal/connection/RealConnection;->getTransmitters()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 213
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_65

    .line 214
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/Reference;

    .line 216
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1b

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 222
    :cond_1b
    check-cast v3, Lokhttp3/internal/connection/Transmitter$TransmitterReference;

    .line 223
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "A connection to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lokhttp3/internal/connection/RealConnection;->route()Lokhttp3/Route;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " was leaked. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Did you forget to close a response body?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 225
    sget-object v5, Lokhttp3/internal/platform/Platform;->Companion:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {v5}, Lokhttp3/internal/platform/Platform$Companion;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v5

    invoke-virtual {v3}, Lokhttp3/internal/connection/Transmitter$TransmitterReference;->getCallStackTrace()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5, v4, v3}, Lokhttp3/internal/platform/Platform;->logCloseableLeak(Ljava/lang/String;Ljava/lang/Object;)V

    .line 227
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v3, 0x1

    .line 228
    invoke-virtual {p1, v3}, Lokhttp3/internal/connection/RealConnection;->setNoNewExchanges(Z)V

    .line 231
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 232
    iget-wide v2, p0, Lokhttp3/internal/connection/RealConnectionPool;->keepAliveDurationNs:J

    sub-long/2addr p2, v2

    invoke-virtual {p1, p2, p3}, Lokhttp3/internal/connection/RealConnection;->setIdleAtNanos$okhttp(J)V

    return v1

    .line 237
    :cond_65
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method


# virtual methods
.method public final cleanup(J)J
    .registers 14

    .line 157
    monitor-enter p0

    .line 158
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/high16 v3, -0x8000000000000000L

    const/4 v5, 0x0

    const/4 v6, 0x0

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lokhttp3/internal/connection/RealConnection;

    const-string v8, "connection"

    .line 160
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v7, p1, p2}, Lokhttp3/internal/connection/RealConnectionPool;->pruneAndGetAllocationCount(Lokhttp3/internal/connection/RealConnection;J)I

    move-result v8

    if-lez v8, :cond_27

    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_27
    add-int/lit8 v5, v5, 0x1

    .line 168
    invoke-virtual {v7}, Lokhttp3/internal/connection/RealConnection;->getIdleAtNanos$okhttp()J

    move-result-wide v8

    sub-long v8, p1, v8

    cmp-long v10, v8, v3

    if-lez v10, :cond_d

    move-object v2, v7

    move-wide v3, v8

    goto :goto_d

    .line 177
    :cond_36
    iget-wide p1, p0, Lokhttp3/internal/connection/RealConnectionPool;->keepAliveDurationNs:J

    cmp-long v0, v3, p1

    if-gez v0, :cond_50

    iget v0, p0, Lokhttp3/internal/connection/RealConnectionPool;->maxIdleConnections:I
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_65

    if-le v5, v0, :cond_41

    goto :goto_50

    :cond_41
    if-lez v5, :cond_46

    sub-long/2addr p1, v3

    .line 184
    monitor-exit p0

    return-wide p1

    :cond_46
    if-lez v6, :cond_4a

    .line 189
    monitor-exit p0

    return-wide p1

    .line 193
    :cond_4a
    :try_start_4a
    iput-boolean v1, p0, Lokhttp3/internal/connection/RealConnectionPool;->cleanupRunning:Z
    :try_end_4c
    .catchall {:try_start_4a .. :try_end_4c} :catchall_65

    const-wide/16 p1, -0x1

    .line 194
    monitor-exit p0

    return-wide p1

    .line 180
    :cond_50
    :goto_50
    :try_start_50
    iget-object p1, p0, Lokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v2}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z
    :try_end_55
    .catchall {:try_start_50 .. :try_end_55} :catchall_65

    .line 157
    monitor-exit p0

    if-nez v2, :cond_5b

    .line 199
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5b
    invoke-virtual {v2}, Lokhttp3/internal/connection/RealConnection;->socket()Ljava/net/Socket;

    move-result-object p1

    invoke-static {p1}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    const-wide/16 p1, 0x0

    return-wide p1

    :catchall_65
    move-exception p1

    .line 157
    monitor-exit p0

    throw p1
.end method

.method public final connectFailed(Lokhttp3/Route;Ljava/io/IOException;)V
    .registers 6

    const-string v0, "failedRoute"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "failure"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    invoke-virtual {p1}, Lokhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_31

    .line 244
    invoke-virtual {p1}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v0

    .line 245
    invoke-virtual {v0}, Lokhttp3/Address;->proxySelector()Ljava/net/ProxySelector;

    move-result-object v1

    .line 246
    invoke-virtual {v0}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->uri()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p1}, Lokhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    .line 245
    invoke-virtual {v1, v0, v2, p2}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    .line 249
    :cond_31
    iget-object p2, p0, Lokhttp3/internal/connection/RealConnectionPool;->routeDatabase:Lokhttp3/internal/connection/RouteDatabase;

    invoke-virtual {p2, p1}, Lokhttp3/internal/connection/RouteDatabase;->failed(Lokhttp3/Route;)V

    return-void
.end method

.method public final connectionBecameIdle(Lokhttp3/internal/connection/RealConnection;)Z
    .registers 3

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    .line 114
    invoke-virtual {p1}, Lokhttp3/internal/connection/RealConnection;->getNoNewExchanges()Z

    move-result v0

    if-nez v0, :cond_18

    iget v0, p0, Lokhttp3/internal/connection/RealConnectionPool;->maxIdleConnections:I

    if-nez v0, :cond_13

    goto :goto_18

    .line 544
    :cond_13
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    const/4 p1, 0x0

    goto :goto_1e

    .line 115
    :cond_18
    :goto_18
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    :goto_1e
    return p1
.end method

.method public final declared-synchronized connectionCount()I
    .registers 2

    monitor-enter p0

    .line 72
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/util/ArrayDeque;

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

.method public final evictAll()V
    .registers 5

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 126
    monitor-enter p0

    .line 127
    :try_start_6
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "connections.iterator()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 129
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/internal/connection/RealConnection;

    .line 130
    invoke-virtual {v2}, Lokhttp3/internal/connection/RealConnection;->getTransmitters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_11

    const/4 v3, 0x1

    .line 131
    invoke-virtual {v2, v3}, Lokhttp3/internal/connection/RealConnection;->setNoNewExchanges(Z)V

    const-string v3, "connection"

    .line 132
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_11

    .line 136
    :cond_37
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_39
    .catchall {:try_start_6 .. :try_end_39} :catchall_53

    .line 126
    monitor-exit p0

    .line 138
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/internal/connection/RealConnection;

    .line 139
    invoke-virtual {v1}, Lokhttp3/internal/connection/RealConnection;->socket()Ljava/net/Socket;

    move-result-object v1

    invoke-static {v1}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    goto :goto_3e

    :cond_52
    return-void

    :catchall_53
    move-exception v0

    .line 126
    monitor-exit p0

    throw v0
.end method

.method public final getCleanupRunning()Z
    .registers 2

    .line 60
    iget-boolean v0, p0, Lokhttp3/internal/connection/RealConnectionPool;->cleanupRunning:Z

    return v0
.end method

.method public final getRouteDatabase()Lokhttp3/internal/connection/RouteDatabase;
    .registers 2

    .line 59
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnectionPool;->routeDatabase:Lokhttp3/internal/connection/RouteDatabase;

    return-object v0
.end method

.method public final declared-synchronized idleConnectionCount()I
    .registers 4

    monitor-enter p0

    .line 68
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/util/ArrayDeque;

    .line 1522
    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_31

    .line 272
    :cond_f
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/internal/connection/RealConnection;

    .line 68
    invoke-virtual {v1}, Lokhttp3/internal/connection/RealConnection;->getTransmitters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    add-int/lit8 v2, v2, 0x1

    if-gez v2, :cond_13

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwCountOverflow()V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_33

    goto :goto_13

    .line 1525
    :cond_31
    :goto_31
    monitor-exit p0

    return v2

    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final put(Lokhttp3/internal/connection/RealConnection;)V
    .registers 4

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    .line 101
    iget-boolean v0, p0, Lokhttp3/internal/connection/RealConnectionPool;->cleanupRunning:Z

    if-nez v0, :cond_16

    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Lokhttp3/internal/connection/RealConnectionPool;->cleanupRunning:Z

    .line 103
    sget-object v0, Lokhttp3/internal/connection/RealConnectionPool;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lokhttp3/internal/connection/RealConnectionPool;->cleanupRunnable:Lokhttp3/internal/connection/RealConnectionPool$cleanupRunnable$1;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 105
    :cond_16
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setCleanupRunning(Z)V
    .registers 2

    .line 60
    iput-boolean p1, p0, Lokhttp3/internal/connection/RealConnectionPool;->cleanupRunning:Z

    return-void
.end method

.method public final transmitterAcquirePooledConnection(Lokhttp3/Address;Lokhttp3/internal/connection/Transmitter;Ljava/util/List;Z)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Address;",
            "Lokhttp3/internal/connection/Transmitter;",
            "Ljava/util/List<",
            "Lokhttp3/Route;",
            ">;Z)Z"
        }
    .end annotation

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transmitter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    .line 90
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/internal/connection/RealConnection;

    if-eqz p4, :cond_28

    .line 91
    invoke-virtual {v1}, Lokhttp3/internal/connection/RealConnection;->isMultiplexed()Z

    move-result v2

    if-nez v2, :cond_28

    goto :goto_13

    .line 92
    :cond_28
    invoke-virtual {v1, p1, p3}, Lokhttp3/internal/connection/RealConnection;->isEligible$okhttp(Lokhttp3/Address;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_2f

    goto :goto_13

    :cond_2f
    const-string p1, "connection"

    .line 93
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lokhttp3/internal/connection/Transmitter;->acquireConnectionNoEvents(Lokhttp3/internal/connection/RealConnection;)V

    const/4 p1, 0x1

    return p1

    :cond_39
    const/4 p1, 0x0

    return p1
.end method
