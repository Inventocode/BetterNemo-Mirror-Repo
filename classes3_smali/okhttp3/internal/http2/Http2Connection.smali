.class public final Lokhttp3/internal/http2/Http2Connection;
.super Ljava/lang/Object;
.source "Http2Connection.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http2/Http2Connection$Builder;,
        Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;,
        Lokhttp3/internal/http2/Http2Connection$Listener;,
        Lokhttp3/internal/http2/Http2Connection$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttp2Connection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http2Connection.kt\nokhttp3/internal/http2/Http2Connection\n+ 2 Util.kt\nokhttp3/internal/Util\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,933:1\n544#2:934\n527#2:935\n398#2,2:936\n389#2,14:938\n398#2,2:952\n389#2,14:954\n527#2:968\n370#2,5:969\n370#2,5:977\n370#2,5:983\n370#2,5:988\n398#2,2:993\n389#2,14:995\n398#2,2:1009\n389#2,14:1011\n389#2,6:1025\n389#2,6:1031\n37#3,2:974\n10894#4:976\n10895#4:982\n*E\n*S KotlinDebug\n*F\n+ 1 Http2Connection.kt\nokhttp3/internal/http2/Http2Connection\n*L\n171#1:934\n302#1:935\n331#1,2:936\n331#1,14:938\n352#1,2:952\n352#1,14:954\n396#1:968\n441#1,5:969\n453#1,5:977\n460#1,5:983\n465#1,5:988\n816#1,2:993\n816#1,14:995\n836#1,2:1009\n836#1,14:1011\n865#1,6:1025\n881#1,6:1031\n446#1,2:974\n453#1:976\n453#1:982\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lokhttp3/internal/http2/Http2Connection$Companion;

.field public static final OKHTTP_CLIENT_WINDOW_SIZE:I = 0x1000000

.field private static final listenerExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field private awaitingPong:Z

.field private final client:Z

.field private final connectionName:Ljava/lang/String;

.field private final currentPushRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private isShutdown:Z

.field private lastGoodStreamId:I

.field private final listener:Lokhttp3/internal/http2/Http2Connection$Listener;

.field private nextStreamId:I

.field private final okHttpSettings:Lokhttp3/internal/http2/Settings;

.field private final peerSettings:Lokhttp3/internal/http2/Settings;

.field private final pushExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final pushObserver:Lokhttp3/internal/http2/PushObserver;

.field private readBytesAcknowledged:J

.field private readBytesTotal:J

.field private final readerRunnable:Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

.field private final socket:Ljava/net/Socket;

.field private final streams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lokhttp3/internal/http2/Http2Stream;",
            ">;"
        }
    .end annotation
.end field

.field private writeBytesMaximum:J

.field private writeBytesTotal:J

.field private final writer:Lokhttp3/internal/http2/Http2Writer;

.field private final writerExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    new-instance v0, Lokhttp3/internal/http2/Http2Connection$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/internal/http2/Http2Connection$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokhttp3/internal/http2/Http2Connection;->Companion:Lokhttp3/internal/http2/Http2Connection$Companion;

    .line 928
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 929
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v8}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v1, "OkHttp Http2Connection"

    const/4 v2, 0x1

    .line 930
    invoke-static {v1, v2}, Lokhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v9

    const/4 v3, 0x0

    const v4, 0x7fffffff

    const-wide/16 v5, 0x3c

    move-object v2, v0

    .line 928
    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lokhttp3/internal/http2/Http2Connection;->listenerExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>(Lokhttp3/internal/http2/Http2Connection$Builder;)V
    .registers 16

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-virtual {p1}, Lokhttp3/internal/http2/Http2Connection$Builder;->getClient$okhttp()Z

    move-result v0

    iput-boolean v0, p0, Lokhttp3/internal/http2/Http2Connection;->client:Z

    .line 82
    invoke-virtual {p1}, Lokhttp3/internal/http2/Http2Connection$Builder;->getListener$okhttp()Lokhttp3/internal/http2/Http2Connection$Listener;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/internal/http2/Http2Connection;->listener:Lokhttp3/internal/http2/Http2Connection$Listener;

    .line 83
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    .line 84
    invoke-virtual {p1}, Lokhttp3/internal/http2/Http2Connection$Builder;->getConnectionName$okhttp()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Lokhttp3/internal/http2/Http2Connection$Builder;->getClient$okhttp()Z

    move-result v2

    if-eqz v2, :cond_29

    const/4 v2, 0x3

    goto :goto_2a

    :cond_29
    const/4 v2, 0x2

    :goto_2a
    iput v2, p0, Lokhttp3/internal/http2/Http2Connection;->nextStreamId:I

    .line 94
    new-instance v3, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const-string v6, "OkHttp %s Writer"

    .line 95
    invoke-static {v6, v4}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lokhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v4

    .line 94
    invoke-direct {v3, v2, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v3, p0, Lokhttp3/internal/http2/Http2Connection;->writerExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 99
    new-instance v4, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-wide/16 v9, 0x3c

    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v12, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v12}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v1, v6, v5

    const-string v1, "OkHttp %s Push Observer"

    .line 100
    invoke-static {v1, v6}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lokhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v13

    move-object v6, v4

    .line 99
    invoke-direct/range {v6 .. v13}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v4, p0, Lokhttp3/internal/http2/Http2Connection;->pushExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 103
    invoke-virtual {p1}, Lokhttp3/internal/http2/Http2Connection$Builder;->getPushObserver$okhttp()Lokhttp3/internal/http2/PushObserver;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/internal/http2/Http2Connection;->pushObserver:Lokhttp3/internal/http2/PushObserver;

    .line 109
    new-instance v1, Lokhttp3/internal/http2/Settings;

    invoke-direct {v1}, Lokhttp3/internal/http2/Settings;-><init>()V

    .line 113
    invoke-virtual {p1}, Lokhttp3/internal/http2/Http2Connection$Builder;->getClient$okhttp()Z

    move-result v2

    const/4 v4, 0x7

    if-eqz v2, :cond_7b

    const/high16 v2, 0x1000000

    .line 114
    invoke-virtual {v1, v4, v2}, Lokhttp3/internal/http2/Settings;->set(II)Lokhttp3/internal/http2/Settings;

    .line 109
    :cond_7b
    iput-object v1, p0, Lokhttp3/internal/http2/Http2Connection;->okHttpSettings:Lokhttp3/internal/http2/Settings;

    .line 120
    new-instance v1, Lokhttp3/internal/http2/Settings;

    invoke-direct {v1}, Lokhttp3/internal/http2/Settings;-><init>()V

    const v2, 0xffff

    .line 121
    invoke-virtual {v1, v4, v2}, Lokhttp3/internal/http2/Settings;->set(II)Lokhttp3/internal/http2/Settings;

    const/4 v2, 0x5

    const/16 v4, 0x4000

    .line 122
    invoke-virtual {v1, v2, v4}, Lokhttp3/internal/http2/Settings;->set(II)Lokhttp3/internal/http2/Settings;

    .line 120
    iput-object v1, p0, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;

    .line 138
    invoke-virtual {v1}, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lokhttp3/internal/http2/Http2Connection;->writeBytesMaximum:J

    .line 141
    invoke-virtual {p1}, Lokhttp3/internal/http2/Http2Connection$Builder;->getSocket$okhttp()Ljava/net/Socket;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/internal/http2/Http2Connection;->socket:Ljava/net/Socket;

    .line 142
    new-instance v1, Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {p1}, Lokhttp3/internal/http2/Http2Connection$Builder;->getSink$okhttp()Lokio/BufferedSink;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lokhttp3/internal/http2/Http2Writer;-><init>(Lokio/BufferedSink;Z)V

    iput-object v1, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    .line 145
    new-instance v1, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    new-instance v2, Lokhttp3/internal/http2/Http2Reader;

    invoke-virtual {p1}, Lokhttp3/internal/http2/Http2Connection$Builder;->getSource$okhttp()Lokio/BufferedSource;

    move-result-object v4

    invoke-direct {v2, v4, v0}, Lokhttp3/internal/http2/Http2Reader;-><init>(Lokio/BufferedSource;Z)V

    invoke-direct {v1, p0, v2}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;-><init>(Lokhttp3/internal/http2/Http2Connection;Lokhttp3/internal/http2/Http2Reader;)V

    iput-object v1, p0, Lokhttp3/internal/http2/Http2Connection;->readerRunnable:Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    .line 148
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;

    .line 151
    invoke-virtual {p1}, Lokhttp3/internal/http2/Http2Connection$Builder;->getPingIntervalMillis$okhttp()I

    move-result v0

    if-eqz v0, :cond_d9

    .line 152
    new-instance v4, Lokhttp3/internal/http2/Http2Connection$1;

    invoke-direct {v4, p0}, Lokhttp3/internal/http2/Http2Connection$1;-><init>(Lokhttp3/internal/http2/Http2Connection;)V

    .line 156
    invoke-virtual {p1}, Lokhttp3/internal/http2/Http2Connection$Builder;->getPingIntervalMillis$okhttp()I

    move-result v0

    int-to-long v5, v0

    invoke-virtual {p1}, Lokhttp3/internal/http2/Http2Connection$Builder;->getPingIntervalMillis$okhttp()I

    move-result p1

    int-to-long v7, p1

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 152
    invoke-virtual/range {v3 .. v9}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_d9
    return-void
.end method

.method public static final synthetic access$failConnection(Lokhttp3/internal/http2/Http2Connection;Ljava/io/IOException;)V
    .registers 2

    .line 62
    invoke-direct {p0, p1}, Lokhttp3/internal/http2/Http2Connection;->failConnection(Ljava/io/IOException;)V

    return-void
.end method

.method public static final synthetic access$getAwaitingPong$p(Lokhttp3/internal/http2/Http2Connection;)Z
    .registers 1

    .line 62
    iget-boolean p0, p0, Lokhttp3/internal/http2/Http2Connection;->awaitingPong:Z

    return p0
.end method

.method public static final synthetic access$getCurrentPushRequests$p(Lokhttp3/internal/http2/Http2Connection;)Ljava/util/Set;
    .registers 1

    .line 62
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic access$getListenerExecutor$cp()Ljava/util/concurrent/ThreadPoolExecutor;
    .registers 1

    .line 62
    sget-object v0, Lokhttp3/internal/http2/Http2Connection;->listenerExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public static final synthetic access$getPushObserver$p(Lokhttp3/internal/http2/Http2Connection;)Lokhttp3/internal/http2/PushObserver;
    .registers 1

    .line 62
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Connection;->pushObserver:Lokhttp3/internal/http2/PushObserver;

    return-object p0
.end method

.method public static final synthetic access$getWriteBytesMaximum$p(Lokhttp3/internal/http2/Http2Connection;)J
    .registers 3

    .line 62
    iget-wide v0, p0, Lokhttp3/internal/http2/Http2Connection;->writeBytesMaximum:J

    return-wide v0
.end method

.method public static final synthetic access$getWriterExecutor$p(Lokhttp3/internal/http2/Http2Connection;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .registers 1

    .line 62
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Connection;->writerExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object p0
.end method

.method public static final synthetic access$setAwaitingPong$p(Lokhttp3/internal/http2/Http2Connection;Z)V
    .registers 2

    .line 62
    iput-boolean p1, p0, Lokhttp3/internal/http2/Http2Connection;->awaitingPong:Z

    return-void
.end method

.method public static final synthetic access$setWriteBytesMaximum$p(Lokhttp3/internal/http2/Http2Connection;J)V
    .registers 3

    .line 62
    iput-wide p1, p0, Lokhttp3/internal/http2/Http2Connection;->writeBytesMaximum:J

    return-void
.end method

.method private final failConnection(Ljava/io/IOException;)V
    .registers 3

    .line 475
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p0, v0, v0, p1}, Lokhttp3/internal/http2/Http2Connection;->close$okhttp(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    return-void
.end method

.method private final newStream(ILjava/util/List;Z)Lokhttp3/internal/http2/Http2Stream;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/Header;",
            ">;Z)",
            "Lokhttp3/internal/http2/Http2Stream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    xor-int/lit8 v6, p3, 0x1

    const/4 v4, 0x0

    .line 231
    iget-object v7, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    monitor-enter v7

    .line 232
    :try_start_6
    monitor-enter p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_84

    .line 233
    :try_start_7
    iget v0, p0, Lokhttp3/internal/http2/Http2Connection;->nextStreamId:I

    const v1, 0x3fffffff  # 1.9999999f

    if-le v0, v1, :cond_13

    .line 234
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p0, v0}, Lokhttp3/internal/http2/Http2Connection;->shutdown(Lokhttp3/internal/http2/ErrorCode;)V

    .line 236
    :cond_13
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Connection;->isShutdown:Z

    if-nez v0, :cond_7b

    .line 239
    iget v8, p0, Lokhttp3/internal/http2/Http2Connection;->nextStreamId:I

    add-int/lit8 v0, v8, 0x2

    .line 240
    iput v0, p0, Lokhttp3/internal/http2/Http2Connection;->nextStreamId:I

    .line 241
    new-instance v9, Lokhttp3/internal/http2/Http2Stream;

    const/4 v5, 0x0

    move-object v0, v9

    move v1, v8

    move-object v2, p0

    move v3, v6

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/http2/Http2Stream;-><init>(ILokhttp3/internal/http2/Http2Connection;ZZLokhttp3/Headers;)V

    const/4 v0, 0x1

    if-eqz p3, :cond_41

    .line 244
    iget-wide v1, p0, Lokhttp3/internal/http2/Http2Connection;->writeBytesTotal:J

    iget-wide v3, p0, Lokhttp3/internal/http2/Http2Connection;->writeBytesMaximum:J

    cmp-long p3, v1, v3

    if-gez p3, :cond_41

    invoke-virtual {v9}, Lokhttp3/internal/http2/Http2Stream;->getWriteBytesTotal()J

    move-result-wide v1

    invoke-virtual {v9}, Lokhttp3/internal/http2/Http2Stream;->getWriteBytesMaximum()J

    move-result-wide v3

    cmp-long p3, v1, v3

    if-ltz p3, :cond_3f

    goto :goto_41

    :cond_3f
    const/4 p3, 0x0

    goto :goto_42

    :cond_41
    :goto_41
    const/4 p3, 0x1

    .line 245
    :goto_42
    invoke-virtual {v9}, Lokhttp3/internal/http2/Http2Stream;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 246
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    :cond_51
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_53
    .catchall {:try_start_7 .. :try_end_53} :catchall_81

    .line 232
    :try_start_53
    monitor-exit p0

    if-nez p1, :cond_5c

    .line 250
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {p1, v6, v8, p2}, Lokhttp3/internal/http2/Http2Writer;->headers(ZILjava/util/List;)V

    goto :goto_66

    .line 252
    :cond_5c
    iget-boolean v1, p0, Lokhttp3/internal/http2/Http2Connection;->client:Z

    xor-int/2addr v0, v1

    if-eqz v0, :cond_6f

    .line 254
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {v0, p1, v8, p2}, Lokhttp3/internal/http2/Http2Writer;->pushPromise(IILjava/util/List;)V
    :try_end_66
    .catchall {:try_start_53 .. :try_end_66} :catchall_84

    .line 231
    :goto_66
    monitor-exit v7

    if-eqz p3, :cond_6e

    .line 259
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {p1}, Lokhttp3/internal/http2/Http2Writer;->flush()V

    :cond_6e
    return-object v9

    :cond_6f
    :try_start_6f
    const-string p1, "client streams shouldn\'t have associated stream IDs"

    .line 252
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_7b
    .catchall {:try_start_6f .. :try_end_7b} :catchall_84

    .line 237
    :cond_7b
    :try_start_7b
    new-instance p1, Lokhttp3/internal/http2/ConnectionShutdownException;

    invoke-direct {p1}, Lokhttp3/internal/http2/ConnectionShutdownException;-><init>()V

    throw p1
    :try_end_81
    .catchall {:try_start_7b .. :try_end_81} :catchall_81

    :catchall_81
    move-exception p1

    .line 232
    :try_start_82
    monitor-exit p0

    throw p1
    :try_end_84
    .catchall {:try_start_82 .. :try_end_84} :catchall_84

    :catchall_84
    move-exception p1

    .line 231
    monitor-exit v7

    throw p1
.end method

.method public static synthetic start$default(Lokhttp3/internal/http2/Http2Connection;ZILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_5

    const/4 p1, 0x1

    .line 486
    :cond_5
    invoke-virtual {p0, p1}, Lokhttp3/internal/http2/Http2Connection;->start(Z)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized awaitPong()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 395
    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Connection;->awaitingPong:Z

    if-eqz v0, :cond_9

    .line 527
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_b

    goto :goto_1

    .line 398
    :cond_9
    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .registers 4

    .line 432
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->NO_ERROR:Lokhttp3/internal/http2/ErrorCode;

    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lokhttp3/internal/http2/Http2Connection;->close$okhttp(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    return-void
.end method

.method public final close$okhttp(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V
    .registers 7

    const-string v0, "connectionCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "streamCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 440
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    .line 442
    :try_start_d
    invoke-virtual {p0, p1}, Lokhttp3/internal/http2/Http2Connection;->shutdown(Lokhttp3/internal/http2/ErrorCode;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_10

    :catch_10
    const/4 p1, 0x0

    .line 446
    monitor-enter p0

    .line 447
    :try_start_12
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_3b

    .line 448
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    new-array v0, v1, [Lokhttp3/internal/http2/Http2Stream;

    .line 38
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_33

    check-cast p1, [Lokhttp3/internal/http2/Http2Stream;

    .line 449
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_3b

    .line 38
    :cond_33
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 451
    :cond_3b
    :goto_3b
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3d
    .catchall {:try_start_12 .. :try_end_3d} :catchall_60

    .line 446
    monitor-exit p0

    if-eqz p1, :cond_4b

    .line 976
    array-length v0, p1

    :goto_41
    if-ge v1, v0, :cond_4b

    aget-object v2, p1, v1

    .line 455
    :try_start_45
    invoke-virtual {v2, p2, p3}, Lokhttp3/internal/http2/Http2Stream;->close(Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_48

    :catch_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    .line 461
    :cond_4b
    :try_start_4b
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {p1}, Lokhttp3/internal/http2/Http2Writer;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_50} :catch_50

    .line 466
    :catch_50
    :try_start_50
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection;->socket:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_55} :catch_55

    .line 470
    :catch_55
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection;->writerExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdown()V

    .line 471
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection;->pushExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    return-void

    :catchall_60
    move-exception p1

    .line 446
    monitor-exit p0

    throw p1
.end method

.method public final flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 402
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Writer;->flush()V

    return-void
.end method

.method public final getClient$okhttp()Z
    .registers 2

    .line 76
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Connection;->client:Z

    return v0
.end method

.method public final getConnectionName$okhttp()Ljava/lang/String;
    .registers 2

    .line 84
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastGoodStreamId$okhttp()I
    .registers 2

    .line 85
    iget v0, p0, Lokhttp3/internal/http2/Http2Connection;->lastGoodStreamId:I

    return v0
.end method

.method public final getListener$okhttp()Lokhttp3/internal/http2/Http2Connection$Listener;
    .registers 2

    .line 82
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->listener:Lokhttp3/internal/http2/Http2Connection$Listener;

    return-object v0
.end method

.method public final getNextStreamId$okhttp()I
    .registers 2

    .line 88
    iget v0, p0, Lokhttp3/internal/http2/Http2Connection;->nextStreamId:I

    return v0
.end method

.method public final getOkHttpSettings()Lokhttp3/internal/http2/Settings;
    .registers 2

    .line 109
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->okHttpSettings:Lokhttp3/internal/http2/Settings;

    return-object v0
.end method

.method public final getPeerSettings()Lokhttp3/internal/http2/Settings;
    .registers 2

    .line 120
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;

    return-object v0
.end method

.method public final getReadBytesAcknowledged()J
    .registers 3

    .line 130
    iget-wide v0, p0, Lokhttp3/internal/http2/Http2Connection;->readBytesAcknowledged:J

    return-wide v0
.end method

.method public final getReadBytesTotal()J
    .registers 3

    .line 126
    iget-wide v0, p0, Lokhttp3/internal/http2/Http2Connection;->readBytesTotal:J

    return-wide v0
.end method

.method public final getReaderRunnable()Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;
    .registers 2

    .line 145
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->readerRunnable:Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    return-object v0
.end method

.method public final getSocket$okhttp()Ljava/net/Socket;
    .registers 2

    .line 141
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method public final declared-synchronized getStream(I)Lokhttp3/internal/http2/Http2Stream;
    .registers 3

    monitor-enter p0

    .line 165
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp3/internal/http2/Http2Stream;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object p1

    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final getStreams$okhttp()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lokhttp3/internal/http2/Http2Stream;",
            ">;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    return-object v0
.end method

.method public final getWriteBytesMaximum()J
    .registers 3

    .line 138
    iget-wide v0, p0, Lokhttp3/internal/http2/Http2Connection;->writeBytesMaximum:J

    return-wide v0
.end method

.method public final getWriteBytesTotal()J
    .registers 3

    .line 134
    iget-wide v0, p0, Lokhttp3/internal/http2/Http2Connection;->writeBytesTotal:J

    return-wide v0
.end method

.method public final getWriter()Lokhttp3/internal/http2/Http2Writer;
    .registers 2

    .line 142
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    return-object v0
.end method

.method public final declared-synchronized isShutdown()Z
    .registers 2

    monitor-enter p0

    .line 90
    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Connection;->isShutdown:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized maxConcurrentStreams()I
    .registers 3

    monitor-enter p0

    .line 177
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lokhttp3/internal/http2/Settings;->getMaxConcurrentStreams(I)I

    move-result v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final newStream(Ljava/util/List;Z)Lokhttp3/internal/http2/Http2Stream;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/Header;",
            ">;Z)",
            "Lokhttp3/internal/http2/Http2Stream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "requestHeaders"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 216
    invoke-direct {p0, v0, p1, p2}, Lokhttp3/internal/http2/Http2Connection;->newStream(ILjava/util/List;Z)Lokhttp3/internal/http2/Http2Stream;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized openStreamCount()I
    .registers 2

    monitor-enter p0

    .line 163
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

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

.method public final pushDataLater$okhttp(ILokio/BufferedSource;IZ)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 861
    new-instance v5, Lokio/Buffer;

    invoke-direct {v5}, Lokio/Buffer;-><init>()V

    int-to-long v0, p3

    .line 862
    invoke-interface {p2, v0, v1}, Lokio/BufferedSource;->require(J)V

    .line 863
    invoke-interface {p2, v5, v0, v1}, Lokio/Source;->read(Lokio/Buffer;J)J

    .line 864
    iget-boolean p2, p0, Lokhttp3/internal/http2/Http2Connection;->isShutdown:Z

    if-nez p2, :cond_44

    .line 865
    iget-object p2, p0, Lokhttp3/internal/http2/Http2Connection;->pushExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OkHttp "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Push Data["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 389
    new-instance v0, Lokhttp3/internal/http2/Http2Connection$pushDataLater$$inlined$execute$1;

    move-object v1, v0

    move-object v3, p0

    move v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lokhttp3/internal/http2/Http2Connection$pushDataLater$$inlined$execute$1;-><init>(Ljava/lang/String;Lokhttp3/internal/http2/Http2Connection;ILokio/Buffer;IZ)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_44
    return-void
.end method

.method public final pushHeadersLater$okhttp(ILjava/util/List;Z)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/Header;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "requestHeaders"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 835
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Connection;->isShutdown:Z

    if-nez v0, :cond_38

    .line 836
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->pushExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OkHttp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Push Headers["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 389
    :try_start_2b
    new-instance v1, Lokhttp3/internal/http2/Http2Connection$pushHeadersLater$$inlined$tryExecute$1;

    move-object v3, v1

    move-object v5, p0

    move v6, p1

    move-object v7, p2

    move v8, p3

    invoke-direct/range {v3 .. v8}, Lokhttp3/internal/http2/Http2Connection$pushHeadersLater$$inlined$tryExecute$1;-><init>(Ljava/lang/String;Lokhttp3/internal/http2/Http2Connection;ILjava/util/List;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_38
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_2b .. :try_end_38} :catch_38

    :catch_38
    :cond_38
    return-void
.end method

.method public final pushRequestLater$okhttp(ILjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    const-string v0, "requestHeaders"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 808
    monitor-enter p0

    .line 809
    :try_start_6
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 810
    sget-object p2, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p0, p1, p2}, Lokhttp3/internal/http2/Http2Connection;->writeSynResetLater$okhttp(ILokhttp3/internal/http2/ErrorCode;)V
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_52

    .line 811
    monitor-exit p0

    return-void

    .line 813
    :cond_19
    :try_start_19
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_52

    .line 808
    monitor-exit p0

    .line 815
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Connection;->isShutdown:Z

    if-nez v0, :cond_51

    .line 816
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->pushExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OkHttp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Push Request["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 389
    :try_start_49
    new-instance v2, Lokhttp3/internal/http2/Http2Connection$pushRequestLater$$inlined$tryExecute$1;

    invoke-direct {v2, v1, p0, p1, p2}, Lokhttp3/internal/http2/Http2Connection$pushRequestLater$$inlined$tryExecute$1;-><init>(Ljava/lang/String;Lokhttp3/internal/http2/Http2Connection;ILjava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_51
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_49 .. :try_end_51} :catch_51

    :catch_51
    :cond_51
    return-void

    :catchall_52
    move-exception p1

    .line 808
    monitor-exit p0

    throw p1
.end method

.method public final pushResetLater$okhttp(ILokhttp3/internal/http2/ErrorCode;)V
    .registers 6

    const-string v0, "errorCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 880
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Connection;->isShutdown:Z

    if-nez v0, :cond_33

    .line 881
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->pushExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OkHttp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Push Reset["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 389
    new-instance v2, Lokhttp3/internal/http2/Http2Connection$pushResetLater$$inlined$execute$1;

    invoke-direct {v2, v1, p0, p1, p2}, Lokhttp3/internal/http2/Http2Connection$pushResetLater$$inlined$execute$1;-><init>(Ljava/lang/String;Lokhttp3/internal/http2/Http2Connection;ILokhttp3/internal/http2/ErrorCode;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_33
    return-void
.end method

.method public final pushStream(ILjava/util/List;Z)Lokhttp3/internal/http2/Http2Stream;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/Header;",
            ">;Z)",
            "Lokhttp3/internal/http2/Http2Stream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "requestHeaders"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Connection;->client:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_10

    .line 202
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/internal/http2/Http2Connection;->newStream(ILjava/util/List;Z)Lokhttp3/internal/http2/Http2Stream;

    move-result-object p1

    return-object p1

    .line 201
    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Client cannot push requests."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final pushedStream$okhttp(I)Z
    .registers 3

    const/4 v0, 0x1

    if-eqz p1, :cond_7

    and-int/2addr p1, v0

    if-nez p1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public final declared-synchronized removeStream$okhttp(I)Lokhttp3/internal/http2/Http2Stream;
    .registers 3

    monitor-enter p0

    .line 168
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp3/internal/http2/Http2Stream;

    .line 544
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 173
    monitor-exit p0

    return-object p1

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setLastGoodStreamId$okhttp(I)V
    .registers 2

    .line 85
    iput p1, p0, Lokhttp3/internal/http2/Http2Connection;->lastGoodStreamId:I

    return-void
.end method

.method public final setNextStreamId$okhttp(I)V
    .registers 2

    .line 88
    iput p1, p0, Lokhttp3/internal/http2/Http2Connection;->nextStreamId:I

    return-void
.end method

.method public final setSettings(Lokhttp3/internal/http2/Settings;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "settings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 501
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    monitor-enter v0

    .line 502
    :try_start_8
    monitor-enter p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_25

    .line 503
    :try_start_9
    iget-boolean v1, p0, Lokhttp3/internal/http2/Http2Connection;->isShutdown:Z

    if-nez v1, :cond_1c

    .line 506
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection;->okHttpSettings:Lokhttp3/internal/http2/Settings;

    invoke-virtual {v1, p1}, Lokhttp3/internal/http2/Settings;->merge(Lokhttp3/internal/http2/Settings;)V

    .line 507
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_22

    .line 502
    :try_start_14
    monitor-exit p0

    .line 508
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {v1, p1}, Lokhttp3/internal/http2/Http2Writer;->settings(Lokhttp3/internal/http2/Settings;)V
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_25

    .line 501
    monitor-exit v0

    return-void

    .line 504
    :cond_1c
    :try_start_1c
    new-instance p1, Lokhttp3/internal/http2/ConnectionShutdownException;

    invoke-direct {p1}, Lokhttp3/internal/http2/ConnectionShutdownException;-><init>()V

    throw p1
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_22

    :catchall_22
    move-exception p1

    .line 502
    :try_start_23
    monitor-exit p0

    throw p1
    :try_end_25
    .catchall {:try_start_23 .. :try_end_25} :catchall_25

    :catchall_25
    move-exception p1

    .line 501
    monitor-exit v0

    throw p1
.end method

.method public final setShutdown$okhttp(Z)V
    .registers 2

    .line 90
    iput-boolean p1, p0, Lokhttp3/internal/http2/Http2Connection;->isShutdown:Z

    return-void
.end method

.method public final shutdown(Lokhttp3/internal/http2/ErrorCode;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "statusCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    monitor-enter v0

    .line 414
    :try_start_8
    monitor-enter p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_24

    .line 415
    :try_start_9
    iget-boolean v1, p0, Lokhttp3/internal/http2/Http2Connection;->isShutdown:Z
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_21

    if-eqz v1, :cond_10

    .line 416
    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_24

    monitor-exit v0

    return-void

    :cond_10
    const/4 v1, 0x1

    .line 418
    :try_start_11
    iput-boolean v1, p0, Lokhttp3/internal/http2/Http2Connection;->isShutdown:Z

    .line 419
    iget v1, p0, Lokhttp3/internal/http2/Http2Connection;->lastGoodStreamId:I

    .line 420
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_21

    .line 414
    :try_start_17
    monitor-exit p0

    .line 423
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    sget-object v3, Lokhttp3/internal/Util;->EMPTY_BYTE_ARRAY:[B

    invoke-virtual {v2, v1, p1, v3}, Lokhttp3/internal/http2/Http2Writer;->goAway(ILokhttp3/internal/http2/ErrorCode;[B)V
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_24

    .line 412
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p1

    .line 414
    :try_start_22
    monitor-exit p0

    throw p1
    :try_end_24
    .catchall {:try_start_22 .. :try_end_24} :catchall_24

    :catchall_24
    move-exception p1

    .line 412
    monitor-exit v0

    throw p1
.end method

.method public final start()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lokhttp3/internal/http2/Http2Connection;->start$default(Lokhttp3/internal/http2/Http2Connection;ZILjava/lang/Object;)V

    return-void
.end method

.method public final start(Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_21

    .line 488
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {p1}, Lokhttp3/internal/http2/Http2Writer;->connectionPreface()V

    .line 489
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->okHttpSettings:Lokhttp3/internal/http2/Settings;

    invoke-virtual {p1, v0}, Lokhttp3/internal/http2/Http2Writer;->settings(Lokhttp3/internal/http2/Settings;)V

    .line 490
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection;->okHttpSettings:Lokhttp3/internal/http2/Settings;

    invoke-virtual {p1}, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result p1

    const v0, 0xffff

    if-eq p1, v0, :cond_21

    .line 492
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    const/4 v2, 0x0

    sub-int/2addr p1, v0

    int-to-long v3, p1

    invoke-virtual {v1, v2, v3, v4}, Lokhttp3/internal/http2/Http2Writer;->windowUpdate(IJ)V

    .line 495
    :cond_21
    new-instance p1, Ljava/lang/Thread;

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->readerRunnable:Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OkHttp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final declared-synchronized updateConnectionFlowControl$okhttp(J)V
    .registers 6

    monitor-enter p0

    .line 180
    :try_start_1
    iget-wide v0, p0, Lokhttp3/internal/http2/Http2Connection;->readBytesTotal:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lokhttp3/internal/http2/Http2Connection;->readBytesTotal:J

    .line 181
    iget-wide p1, p0, Lokhttp3/internal/http2/Http2Connection;->readBytesAcknowledged:J

    sub-long/2addr v0, p1

    .line 182
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection;->okHttpSettings:Lokhttp3/internal/http2/Settings;

    invoke-virtual {p1}, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-long p1, p1

    cmp-long v2, v0, p1

    if-ltz v2, :cond_1f

    const/4 p1, 0x0

    .line 183
    invoke-virtual {p0, p1, v0, v1}, Lokhttp3/internal/http2/Http2Connection;->writeWindowUpdateLater$okhttp(IJ)V

    .line 184
    iget-wide p1, p0, Lokhttp3/internal/http2/Http2Connection;->readBytesAcknowledged:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lokhttp3/internal/http2/Http2Connection;->readBytesAcknowledged:J
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    .line 186
    :cond_1f
    monitor-exit p0

    return-void

    :catchall_21
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final writeData(IZLokio/Buffer;J)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p4, v1

    if-nez v3, :cond_d

    .line 295
    iget-object p4, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {p4, p2, p1, p3, v0}, Lokhttp3/internal/http2/Http2Writer;->data(ZILokio/Buffer;I)V

    return-void

    :cond_d
    :goto_d
    cmp-long v3, p4, v1

    if-lez v3, :cond_76

    .line 301
    new-instance v3, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 302
    monitor-enter p0

    .line 304
    :goto_17
    :try_start_17
    iget-wide v4, p0, Lokhttp3/internal/http2/Http2Connection;->writeBytesTotal:J

    iget-wide v6, p0, Lokhttp3/internal/http2/Http2Connection;->writeBytesMaximum:J

    cmp-long v8, v4, v6

    if-ltz v8, :cond_37

    .line 307
    iget-object v4, p0, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 527
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_17

    .line 308
    :cond_2f
    new-instance p1, Ljava/io/IOException;

    const-string p2, "stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_37
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_37} :catch_67
    .catchall {:try_start_17 .. :try_end_37} :catchall_65

    :cond_37
    sub-long/2addr v6, v4

    .line 317
    :try_start_38
    invoke-static {p4, p5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v5, v4

    iput v5, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 318
    iget-object v4, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {v4}, Lokhttp3/internal/http2/Http2Writer;->maxDataLength()I

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 319
    iget-wide v5, p0, Lokhttp3/internal/http2/Http2Connection;->writeBytesTotal:J

    int-to-long v7, v4

    add-long/2addr v5, v7

    iput-wide v5, p0, Lokhttp3/internal/http2/Http2Connection;->writeBytesTotal:J

    .line 320
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_53
    .catchall {:try_start_38 .. :try_end_53} :catchall_65

    .line 302
    monitor-exit p0

    int-to-long v5, v4

    sub-long/2addr p4, v5

    .line 323
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    if-eqz p2, :cond_60

    cmp-long v5, p4, v1

    if-nez v5, :cond_60

    const/4 v5, 0x1

    goto :goto_61

    :cond_60
    const/4 v5, 0x0

    :goto_61
    invoke-virtual {v3, v5, p1, p3, v4}, Lokhttp3/internal/http2/Http2Writer;->data(ZILokio/Buffer;I)V

    goto :goto_d

    :catchall_65
    move-exception p1

    goto :goto_74

    .line 313
    :catch_67
    :try_start_67
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 314
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1
    :try_end_74
    .catchall {:try_start_67 .. :try_end_74} :catchall_65

    .line 302
    :goto_74
    monitor-exit p0

    throw p1

    :cond_76
    return-void
.end method

.method public final writeHeaders$okhttp(IZLjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "alternating"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {v0, p2, p1, p3}, Lokhttp3/internal/http2/Http2Writer;->headers(ZILjava/util/List;)V

    return-void
.end method

.method public final writePing(ZII)V
    .registers 6

    if-nez p1, :cond_15

    .line 368
    monitor-enter p0

    .line 369
    :try_start_3
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Connection;->awaitingPong:Z

    const/4 v1, 0x1

    .line 370
    iput-boolean v1, p0, Lokhttp3/internal/http2/Http2Connection;->awaitingPong:Z

    .line 371
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_12

    .line 368
    monitor-exit p0

    if-eqz v0, :cond_15

    const/4 p1, 0x0

    .line 373
    invoke-direct {p0, p1}, Lokhttp3/internal/http2/Http2Connection;->failConnection(Ljava/io/IOException;)V

    return-void

    :catchall_12
    move-exception p1

    .line 368
    monitor-exit p0

    throw p1

    .line 379
    :cond_15
    :try_start_15
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {v0, p1, p2, p3}, Lokhttp3/internal/http2/Http2Writer;->ping(ZII)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1a} :catch_1b

    goto :goto_1f

    :catch_1b
    move-exception p1

    .line 381
    invoke-direct {p0, p1}, Lokhttp3/internal/http2/Http2Connection;->failConnection(Ljava/io/IOException;)V

    :goto_1f
    return-void
.end method

.method public final writePingAndAwaitPong()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    const v1, 0x4f4b6f6b

    const v2, -0xf607257

    .line 388
    invoke-virtual {p0, v0, v1, v2}, Lokhttp3/internal/http2/Http2Connection;->writePing(ZII)V

    .line 389
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Connection;->awaitPong()V

    return-void
.end method

.method public final writeSynReset$okhttp(ILokhttp3/internal/http2/ErrorCode;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "statusCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {v0, p1, p2}, Lokhttp3/internal/http2/Http2Writer;->rstStream(ILokhttp3/internal/http2/ErrorCode;)V

    return-void
.end method

.method public final writeSynResetLater$okhttp(ILokhttp3/internal/http2/ErrorCode;)V
    .registers 6

    const-string v0, "errorCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->writerExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OkHttp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " stream "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 389
    :try_start_22
    new-instance v2, Lokhttp3/internal/http2/Http2Connection$writeSynResetLater$$inlined$tryExecute$1;

    invoke-direct {v2, v1, p0, p1, p2}, Lokhttp3/internal/http2/Http2Connection$writeSynResetLater$$inlined$tryExecute$1;-><init>(Ljava/lang/String;Lokhttp3/internal/http2/Http2Connection;ILokhttp3/internal/http2/ErrorCode;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2a
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_22 .. :try_end_2a} :catch_2a

    :catch_2a
    return-void
.end method

.method public final writeWindowUpdateLater$okhttp(IJ)V
    .registers 13

    .line 352
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->writerExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OkHttp Window Update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " stream "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 389
    :try_start_1d
    new-instance v1, Lokhttp3/internal/http2/Http2Connection$writeWindowUpdateLater$$inlined$tryExecute$1;

    move-object v3, v1

    move-object v5, p0

    move v6, p1

    move-wide v7, p2

    invoke-direct/range {v3 .. v8}, Lokhttp3/internal/http2/Http2Connection$writeWindowUpdateLater$$inlined$tryExecute$1;-><init>(Ljava/lang/String;Lokhttp3/internal/http2/Http2Connection;IJ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_29
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1d .. :try_end_29} :catch_29

    :catch_29
    return-void
.end method
