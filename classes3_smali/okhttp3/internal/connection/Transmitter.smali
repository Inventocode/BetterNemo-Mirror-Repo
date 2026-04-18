.class public final Lokhttp3/internal/connection/Transmitter;
.super Ljava/lang/Object;
.source "Transmitter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/connection/Transmitter$TransmitterReference;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransmitter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Transmitter.kt\nokhttp3/internal/connection/Transmitter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,342:1\n300#2,7:343\n*E\n*S KotlinDebug\n*F\n+ 1 Transmitter.kt\nokhttp3/internal/connection/Transmitter\n*L\n188#1,7:343\n*E\n"
.end annotation


# instance fields
.field private final call:Lokhttp3/Call;

.field private callStackTrace:Ljava/lang/Object;

.field private canceled:Z

.field private final client:Lokhttp3/OkHttpClient;

.field private connection:Lokhttp3/internal/connection/RealConnection;

.field private final connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

.field private final eventListener:Lokhttp3/EventListener;

.field private exchange:Lokhttp3/internal/connection/Exchange;

.field private exchangeFinder:Lokhttp3/internal/connection/ExchangeFinder;

.field private exchangeRequestDone:Z

.field private exchangeResponseDone:Z

.field private noMoreExchanges:Z

.field private request:Lokhttp3/Request;

.field private final timeout:Lokhttp3/internal/connection/Transmitter$timeout$1;

.field private timeoutEarlyExit:Z


# direct methods
.method public constructor <init>(Lokhttp3/OkHttpClient;Lokhttp3/Call;)V
    .registers 5

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "call"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/connection/Transmitter;->client:Lokhttp3/OkHttpClient;

    iput-object p2, p0, Lokhttp3/internal/connection/Transmitter;->call:Lokhttp3/Call;

    .line 53
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->connectionPool()Lokhttp3/ConnectionPool;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ConnectionPool;->getDelegate$okhttp()Lokhttp3/internal/connection/RealConnectionPool;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/connection/Transmitter;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    .line 54
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->eventListenerFactory()Lokhttp3/EventListener$Factory;

    move-result-object v0

    invoke-interface {v0, p2}, Lokhttp3/EventListener$Factory;->create(Lokhttp3/Call;)Lokhttp3/EventListener;

    move-result-object p2

    iput-object p2, p0, Lokhttp3/internal/connection/Transmitter;->eventListener:Lokhttp3/EventListener;

    .line 55
    new-instance p2, Lokhttp3/internal/connection/Transmitter$timeout$1;

    invoke-direct {p2, p0}, Lokhttp3/internal/connection/Transmitter$timeout$1;-><init>(Lokhttp3/internal/connection/Transmitter;)V

    .line 60
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->callTimeoutMillis()I

    move-result p1

    int-to-long v0, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v0, v1, p1}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 59
    iput-object p2, p0, Lokhttp3/internal/connection/Transmitter;->timeout:Lokhttp3/internal/connection/Transmitter$timeout$1;

    return-void
.end method

.method private final createAddress(Lokhttp3/HttpUrl;)Lokhttp3/Address;
    .registers 19

    move-object/from16 v0, p0

    .line 141
    invoke-virtual/range {p1 .. p1}, Lokhttp3/HttpUrl;->isHttps()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    .line 142
    iget-object v1, v0, Lokhttp3/internal/connection/Transmitter;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    .line 143
    iget-object v1, v0, Lokhttp3/internal/connection/Transmitter;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    .line 144
    iget-object v3, v0, Lokhttp3/internal/connection/Transmitter;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v3}, Lokhttp3/OkHttpClient;->certificatePinner()Lokhttp3/CertificatePinner;

    move-result-object v3

    move-object v10, v1

    move-object v9, v2

    move-object v11, v3

    goto :goto_22

    :cond_1f
    move-object v9, v2

    move-object v10, v9

    move-object v11, v10

    .line 147
    :goto_22
    new-instance v1, Lokhttp3/Address;

    invoke-virtual/range {p1 .. p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lokhttp3/HttpUrl;->port()I

    move-result v6

    iget-object v2, v0, Lokhttp3/internal/connection/Transmitter;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->dns()Lokhttp3/Dns;

    move-result-object v7

    iget-object v2, v0, Lokhttp3/internal/connection/Transmitter;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->socketFactory()Ljavax/net/SocketFactory;

    move-result-object v8

    .line 148
    iget-object v2, v0, Lokhttp3/internal/connection/Transmitter;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->proxyAuthenticator()Lokhttp3/Authenticator;

    move-result-object v12

    .line 149
    iget-object v2, v0, Lokhttp3/internal/connection/Transmitter;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->proxy()Ljava/net/Proxy;

    move-result-object v13

    iget-object v2, v0, Lokhttp3/internal/connection/Transmitter;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->protocols()Ljava/util/List;

    move-result-object v14

    iget-object v2, v0, Lokhttp3/internal/connection/Transmitter;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->connectionSpecs()Ljava/util/List;

    move-result-object v15

    iget-object v2, v0, Lokhttp3/internal/connection/Transmitter;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->proxySelector()Ljava/net/ProxySelector;

    move-result-object v16

    move-object v4, v1

    .line 147
    invoke-direct/range {v4 .. v16}, Lokhttp3/Address;-><init>(Ljava/lang/String;ILokhttp3/Dns;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lokhttp3/CertificatePinner;Lokhttp3/Authenticator;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    return-object v1
.end method

.method private final maybeReleaseConnection(Ljava/io/IOException;Z)Ljava/io/IOException;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/io/IOException;",
            ">(TE;Z)TE;"
        }
    .end annotation

    .line 272
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 274
    iget-object v1, p0, Lokhttp3/internal/connection/Transmitter;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_16

    .line 275
    :try_start_c
    iget-object v4, p0, Lokhttp3/internal/connection/Transmitter;->exchange:Lokhttp3/internal/connection/Exchange;

    if-nez v4, :cond_11

    goto :goto_16

    :cond_11
    const/4 v4, 0x0

    goto :goto_17

    :catchall_13
    move-exception p1

    goto/16 :goto_8a

    :cond_16
    :goto_16
    const/4 v4, 0x1

    :goto_17
    if-eqz v4, :cond_7e

    .line 276
    iget-object v4, p0, Lokhttp3/internal/connection/Transmitter;->connection:Lokhttp3/internal/connection/RealConnection;

    iput-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const/4 v5, 0x0

    if-eqz v4, :cond_2f

    .line 277
    iget-object v4, p0, Lokhttp3/internal/connection/Transmitter;->exchange:Lokhttp3/internal/connection/Exchange;

    if-nez v4, :cond_2f

    if-nez p2, :cond_2a

    iget-boolean p2, p0, Lokhttp3/internal/connection/Transmitter;->noMoreExchanges:Z

    if-eqz p2, :cond_2f

    .line 278
    :cond_2a
    invoke-virtual {p0}, Lokhttp3/internal/connection/Transmitter;->releaseConnectionNoEvents()Ljava/net/Socket;

    move-result-object p2

    goto :goto_30

    :cond_2f
    move-object p2, v5

    .line 282
    :goto_30
    iget-object v4, p0, Lokhttp3/internal/connection/Transmitter;->connection:Lokhttp3/internal/connection/RealConnection;

    if-eqz v4, :cond_36

    iput-object v5, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 283
    :cond_36
    iget-boolean v4, p0, Lokhttp3/internal/connection/Transmitter;->noMoreExchanges:Z

    if-eqz v4, :cond_40

    iget-object v4, p0, Lokhttp3/internal/connection/Transmitter;->exchange:Lokhttp3/internal/connection/Exchange;

    if-nez v4, :cond_40

    const/4 v4, 0x1

    goto :goto_41

    :cond_40
    const/4 v4, 0x0

    .line 284
    :goto_41
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_43
    .catchall {:try_start_c .. :try_end_43} :catchall_13

    .line 274
    monitor-exit v1

    if-eqz p2, :cond_49

    .line 285
    invoke-static {p2}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 287
    :cond_49
    iget-object p2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Lokhttp3/Connection;

    if-eqz v0, :cond_5e

    .line 288
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->eventListener:Lokhttp3/EventListener;

    iget-object v1, p0, Lokhttp3/internal/connection/Transmitter;->call:Lokhttp3/Call;

    check-cast p2, Lokhttp3/Connection;

    if-nez p2, :cond_5b

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5b
    invoke-virtual {v0, v1, p2}, Lokhttp3/EventListener;->connectionReleased(Lokhttp3/Call;Lokhttp3/Connection;)V

    :cond_5e
    if-eqz v4, :cond_7d

    if-eqz p1, :cond_63

    const/4 v2, 0x1

    .line 293
    :cond_63
    invoke-direct {p0, p1}, Lokhttp3/internal/connection/Transmitter;->timeoutExit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    if-eqz v2, :cond_76

    .line 295
    iget-object p2, p0, Lokhttp3/internal/connection/Transmitter;->eventListener:Lokhttp3/EventListener;

    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->call:Lokhttp3/Call;

    if-nez p1, :cond_72

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_72
    invoke-virtual {p2, v0, p1}, Lokhttp3/EventListener;->callFailed(Lokhttp3/Call;Ljava/io/IOException;)V

    goto :goto_7d

    .line 297
    :cond_76
    iget-object p2, p0, Lokhttp3/internal/connection/Transmitter;->eventListener:Lokhttp3/EventListener;

    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->call:Lokhttp3/Call;

    invoke-virtual {p2, v0}, Lokhttp3/EventListener;->callEnd(Lokhttp3/Call;)V

    :cond_7d
    :goto_7d
    return-object p1

    :cond_7e
    :try_start_7e
    const-string p1, "cannot release connection while it is in use"

    .line 275
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_8a
    .catchall {:try_start_7e .. :try_end_8a} :catchall_13

    .line 274
    :goto_8a
    monitor-exit v1

    throw p1
.end method

.method private final timeoutExit(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/io/IOException;",
            ">(TE;)TE;"
        }
    .end annotation

    .line 101
    iget-boolean v0, p0, Lokhttp3/internal/connection/Transmitter;->timeoutEarlyExit:Z

    if-eqz v0, :cond_5

    return-object p1

    .line 102
    :cond_5
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->timeout:Lokhttp3/internal/connection/Transmitter$timeout$1;

    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    move-result v0

    if-nez v0, :cond_e

    return-object p1

    .line 104
    :cond_e
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1a

    .line 105
    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_1a
    return-object v0
.end method


# virtual methods
.method public final acquireConnectionNoEvents(Lokhttp3/internal/connection/RealConnection;)V
    .registers 4

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    .line 176
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->connection:Lokhttp3/internal/connection/RealConnection;

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-eqz v0, :cond_24

    .line 177
    iput-object p1, p0, Lokhttp3/internal/connection/Transmitter;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 178
    invoke-virtual {p1}, Lokhttp3/internal/connection/RealConnection;->getTransmitters()Ljava/util/List;

    move-result-object p1

    new-instance v0, Lokhttp3/internal/connection/Transmitter$TransmitterReference;

    iget-object v1, p0, Lokhttp3/internal/connection/Transmitter;->callStackTrace:Ljava/lang/Object;

    invoke-direct {v0, p0, v1}, Lokhttp3/internal/connection/Transmitter$TransmitterReference;-><init>(Lokhttp3/internal/connection/Transmitter;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 176
    :cond_24
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final callStart()V
    .registers 3

    .line 111
    sget-object v0, Lokhttp3/internal/platform/Platform;->Companion:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {v0}, Lokhttp3/internal/platform/Platform$Companion;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v0

    const-string v1, "response.body().close()"

    invoke-virtual {v0, v1}, Lokhttp3/internal/platform/Platform;->getStackTraceForCloseable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/connection/Transmitter;->callStackTrace:Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->eventListener:Lokhttp3/EventListener;

    iget-object v1, p0, Lokhttp3/internal/connection/Transmitter;->call:Lokhttp3/Call;

    invoke-virtual {v0, v1}, Lokhttp3/EventListener;->callStart(Lokhttp3/Call;)V

    return-void
.end method

.method public final canRetry()Z
    .registers 2

    .line 304
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->exchangeFinder:Lokhttp3/internal/connection/ExchangeFinder;

    if-nez v0, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    invoke-virtual {v0}, Lokhttp3/internal/connection/ExchangeFinder;->hasStreamFailure()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->exchangeFinder:Lokhttp3/internal/connection/ExchangeFinder;

    if-nez v0, :cond_14

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_14
    invoke-virtual {v0}, Lokhttp3/internal/connection/ExchangeFinder;->hasRouteToTry()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return v0
.end method

.method public final cancel()V
    .registers 5

    .line 325
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter v0

    const/4 v1, 0x1

    .line 326
    :try_start_4
    iput-boolean v1, p0, Lokhttp3/internal/connection/Transmitter;->canceled:Z

    .line 327
    iget-object v1, p0, Lokhttp3/internal/connection/Transmitter;->exchange:Lokhttp3/internal/connection/Exchange;

    .line 328
    iget-object v2, p0, Lokhttp3/internal/connection/Transmitter;->exchangeFinder:Lokhttp3/internal/connection/ExchangeFinder;

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Lokhttp3/internal/connection/ExchangeFinder;->connectingConnection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v2

    if-eqz v2, :cond_13

    goto :goto_15

    :cond_13
    iget-object v2, p0, Lokhttp3/internal/connection/Transmitter;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 329
    :goto_15
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_24

    .line 325
    monitor-exit v0

    if-eqz v1, :cond_1e

    .line 330
    invoke-virtual {v1}, Lokhttp3/internal/connection/Exchange;->cancel()V

    goto :goto_23

    :cond_1e
    if-eqz v2, :cond_23

    invoke-virtual {v2}, Lokhttp3/internal/connection/RealConnection;->cancel()V

    :cond_23
    :goto_23
    return-void

    :catchall_24
    move-exception v1

    .line 325
    monitor-exit v0

    throw v1
.end method

.method public final exchangeDoneDueToException()V
    .registers 4

    .line 206
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter v0

    .line 207
    :try_start_3
    iget-boolean v1, p0, Lokhttp3/internal/connection/Transmitter;->noMoreExchanges:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_10

    const/4 v1, 0x0

    .line 208
    iput-object v1, p0, Lokhttp3/internal/connection/Transmitter;->exchange:Lokhttp3/internal/connection/Exchange;

    .line 209
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_1c

    .line 206
    monitor-exit v0

    return-void

    :cond_10
    :try_start_10
    const-string v1, "Check failed."

    .line 207
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_1c

    :catchall_1c
    move-exception v1

    .line 206
    monitor-exit v0

    throw v1
.end method

.method public final exchangeMessageDone$okhttp(Lokhttp3/internal/connection/Exchange;ZZLjava/io/IOException;)Ljava/io/IOException;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/io/IOException;",
            ">(",
            "Lokhttp3/internal/connection/Exchange;",
            "ZZTE;)TE;"
        }
    .end annotation

    const-string v0, "exchange"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter v0

    .line 229
    :try_start_8
    iget-object v1, p0, Lokhttp3/internal/connection/Transmitter;->exchange:Lokhttp3/internal/connection/Exchange;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_58

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    if-eqz p1, :cond_14

    .line 230
    monitor-exit v0

    return-object p4

    :cond_14
    const/4 p1, 0x0

    if-eqz p2, :cond_1d

    .line 234
    :try_start_17
    iget-boolean p2, p0, Lokhttp3/internal/connection/Transmitter;->exchangeRequestDone:Z

    xor-int/2addr p2, v1

    .line 235
    iput-boolean v1, p0, Lokhttp3/internal/connection/Transmitter;->exchangeRequestDone:Z

    goto :goto_1e

    :cond_1d
    const/4 p2, 0x0

    :goto_1e
    if-eqz p3, :cond_27

    .line 238
    iget-boolean p3, p0, Lokhttp3/internal/connection/Transmitter;->exchangeResponseDone:Z

    if-nez p3, :cond_25

    const/4 p2, 0x1

    .line 239
    :cond_25
    iput-boolean v1, p0, Lokhttp3/internal/connection/Transmitter;->exchangeResponseDone:Z

    .line 241
    :cond_27
    iget-boolean p3, p0, Lokhttp3/internal/connection/Transmitter;->exchangeRequestDone:Z

    if-eqz p3, :cond_4d

    iget-boolean p3, p0, Lokhttp3/internal/connection/Transmitter;->exchangeResponseDone:Z

    if-eqz p3, :cond_4d

    if-eqz p2, :cond_4d

    .line 243
    iget-object p2, p0, Lokhttp3/internal/connection/Transmitter;->exchange:Lokhttp3/internal/connection/Exchange;

    if-nez p2, :cond_38

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_38
    invoke-virtual {p2}, Lokhttp3/internal/connection/Exchange;->connection()Lokhttp3/internal/connection/RealConnection;

    move-result-object p2

    if-nez p2, :cond_41

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_41
    invoke-virtual {p2}, Lokhttp3/internal/connection/RealConnection;->getSuccessCount$okhttp()I

    move-result p3

    add-int/2addr p3, v1

    invoke-virtual {p2, p3}, Lokhttp3/internal/connection/RealConnection;->setSuccessCount$okhttp(I)V

    const/4 p2, 0x0

    .line 244
    iput-object p2, p0, Lokhttp3/internal/connection/Transmitter;->exchange:Lokhttp3/internal/connection/Exchange;

    goto :goto_4e

    :cond_4d
    const/4 v1, 0x0

    .line 246
    :goto_4e
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_50
    .catchall {:try_start_17 .. :try_end_50} :catchall_58

    .line 228
    monitor-exit v0

    if-eqz v1, :cond_57

    .line 248
    invoke-direct {p0, p4, p1}, Lokhttp3/internal/connection/Transmitter;->maybeReleaseConnection(Ljava/io/IOException;Z)Ljava/io/IOException;

    move-result-object p4

    :cond_57
    return-object p4

    :catchall_58
    move-exception p1

    .line 228
    monitor-exit v0

    throw p1
.end method

.method public final getConnection()Lokhttp3/internal/connection/RealConnection;
    .registers 2

    .line 69
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->connection:Lokhttp3/internal/connection/RealConnection;

    return-object v0
.end method

.method public final hasExchange()Z
    .registers 3

    .line 308
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter v0

    .line 309
    :try_start_3
    iget-object v1, p0, Lokhttp3/internal/connection/Transmitter;->exchange:Lokhttp3/internal/connection/Exchange;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_c

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    monitor-exit v0

    return v1

    :catchall_c
    move-exception v1

    .line 308
    monitor-exit v0

    throw v1
.end method

.method public final isCanceled()Z
    .registers 3

    .line 79
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter v0

    .line 80
    :try_start_3
    iget-boolean v1, p0, Lokhttp3/internal/connection/Transmitter;->canceled:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    .line 79
    monitor-exit v0

    throw v1
.end method

.method public final newExchange$okhttp(Lokhttp3/Interceptor$Chain;Z)Lokhttp3/internal/connection/Exchange;
    .registers 13

    const-string v0, "chain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter v0

    .line 155
    :try_start_8
    iget-boolean v1, p0, Lokhttp3/internal/connection/Transmitter;->noMoreExchanges:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_53

    .line 156
    iget-object v1, p0, Lokhttp3/internal/connection/Transmitter;->exchange:Lokhttp3/internal/connection/Exchange;

    const/4 v3, 0x0

    if-nez v1, :cond_14

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    if-eqz v2, :cond_47

    .line 160
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_5f

    .line 154
    monitor-exit v0

    .line 162
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->exchangeFinder:Lokhttp3/internal/connection/ExchangeFinder;

    if-nez v0, :cond_21

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_21
    iget-object v1, p0, Lokhttp3/internal/connection/Transmitter;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, v1, p1, p2}, Lokhttp3/internal/connection/ExchangeFinder;->find(Lokhttp3/OkHttpClient;Lokhttp3/Interceptor$Chain;Z)Lokhttp3/internal/http/ExchangeCodec;

    move-result-object v9

    .line 163
    new-instance p1, Lokhttp3/internal/connection/Exchange;

    iget-object v6, p0, Lokhttp3/internal/connection/Transmitter;->call:Lokhttp3/Call;

    iget-object v7, p0, Lokhttp3/internal/connection/Transmitter;->eventListener:Lokhttp3/EventListener;

    iget-object v8, p0, Lokhttp3/internal/connection/Transmitter;->exchangeFinder:Lokhttp3/internal/connection/ExchangeFinder;

    if-nez v8, :cond_34

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_34
    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lokhttp3/internal/connection/Exchange;-><init>(Lokhttp3/internal/connection/Transmitter;Lokhttp3/Call;Lokhttp3/EventListener;Lokhttp3/internal/connection/ExchangeFinder;Lokhttp3/internal/http/ExchangeCodec;)V

    .line 165
    iget-object p2, p0, Lokhttp3/internal/connection/Transmitter;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter p2

    .line 166
    :try_start_3c
    iput-object p1, p0, Lokhttp3/internal/connection/Transmitter;->exchange:Lokhttp3/internal/connection/Exchange;

    .line 167
    iput-boolean v3, p0, Lokhttp3/internal/connection/Transmitter;->exchangeRequestDone:Z

    .line 168
    iput-boolean v3, p0, Lokhttp3/internal/connection/Transmitter;->exchangeResponseDone:Z
    :try_end_42
    .catchall {:try_start_3c .. :try_end_42} :catchall_44

    .line 169
    monitor-exit p2

    return-object p1

    :catchall_44
    move-exception p1

    .line 165
    monitor-exit p2

    throw p1

    :cond_47
    :try_start_47
    const-string p1, "cannot make a new request because the previous response is still open: please call response.close()"

    .line 156
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_53
    const-string p1, "released"

    .line 155
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_5f
    .catchall {:try_start_47 .. :try_end_5f} :catchall_5f

    :catchall_5f
    move-exception p1

    .line 154
    monitor-exit v0

    throw p1
.end method

.method public final noMoreExchanges(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 4

    .line 254
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter v0

    const/4 v1, 0x1

    .line 255
    :try_start_4
    iput-boolean v1, p0, Lokhttp3/internal/connection/Transmitter;->noMoreExchanges:Z

    .line 256
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_f

    .line 254
    monitor-exit v0

    const/4 v0, 0x0

    .line 257
    invoke-direct {p0, p1, v0}, Lokhttp3/internal/connection/Transmitter;->maybeReleaseConnection(Ljava/io/IOException;Z)Ljava/io/IOException;

    move-result-object p1

    return-object p1

    :catchall_f
    move-exception p1

    .line 254
    monitor-exit v0

    throw p1
.end method

.method public final prepareToConnect(Lokhttp3/Request;)V
    .registers 9

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->request:Lokhttp3/Request;

    if-eqz v0, :cond_4b

    if-nez v0, :cond_e

    .line 121
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_e
    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-static {v0, v1}, Lokhttp3/internal/Util;->canReuseConnectionFor(Lokhttp3/HttpUrl;Lokhttp3/HttpUrl;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->exchangeFinder:Lokhttp3/internal/connection/ExchangeFinder;

    if-nez v0, :cond_23

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_23
    invoke-virtual {v0}, Lokhttp3/internal/connection/ExchangeFinder;->hasRouteToTry()Z

    move-result v0

    if-eqz v0, :cond_2a

    return-void

    .line 124
    :cond_2a
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->exchange:Lokhttp3/internal/connection/Exchange;

    const/4 v1, 0x1

    if-nez v0, :cond_31

    const/4 v0, 0x1

    goto :goto_32

    :cond_31
    const/4 v0, 0x0

    :goto_32
    if-eqz v0, :cond_3f

    .line 126
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->exchangeFinder:Lokhttp3/internal/connection/ExchangeFinder;

    if-eqz v0, :cond_4b

    const/4 v0, 0x0

    .line 127
    invoke-direct {p0, v0, v1}, Lokhttp3/internal/connection/Transmitter;->maybeReleaseConnection(Ljava/io/IOException;Z)Ljava/io/IOException;

    .line 128
    iput-object v0, p0, Lokhttp3/internal/connection/Transmitter;->exchangeFinder:Lokhttp3/internal/connection/ExchangeFinder;

    goto :goto_4b

    .line 124
    :cond_3f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 132
    :cond_4b
    :goto_4b
    iput-object p1, p0, Lokhttp3/internal/connection/Transmitter;->request:Lokhttp3/Request;

    .line 133
    new-instance v0, Lokhttp3/internal/connection/ExchangeFinder;

    .line 134
    iget-object v3, p0, Lokhttp3/internal/connection/Transmitter;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-direct {p0, p1}, Lokhttp3/internal/connection/Transmitter;->createAddress(Lokhttp3/HttpUrl;)Lokhttp3/Address;

    move-result-object v4

    iget-object v5, p0, Lokhttp3/internal/connection/Transmitter;->call:Lokhttp3/Call;

    iget-object v6, p0, Lokhttp3/internal/connection/Transmitter;->eventListener:Lokhttp3/EventListener;

    move-object v1, v0

    move-object v2, p0

    .line 133
    invoke-direct/range {v1 .. v6}, Lokhttp3/internal/connection/ExchangeFinder;-><init>(Lokhttp3/internal/connection/Transmitter;Lokhttp3/internal/connection/RealConnectionPool;Lokhttp3/Address;Lokhttp3/Call;Lokhttp3/EventListener;)V

    iput-object v0, p0, Lokhttp3/internal/connection/Transmitter;->exchangeFinder:Lokhttp3/internal/connection/ExchangeFinder;

    return-void
.end method

.method public final releaseConnectionNoEvents()Ljava/net/Socket;
    .registers 6

    .line 186
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    .line 188
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->connection:Lokhttp3/internal/connection/RealConnection;

    if-nez v0, :cond_c

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_c
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->getTransmitters()Ljava/util/List;

    move-result-object v0

    .line 344
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 345
    check-cast v3, Ljava/lang/ref/Reference;

    .line 188
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokhttp3/internal/connection/Transmitter;

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    goto :goto_34

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_33
    const/4 v2, -0x1

    :goto_34
    if-eq v2, v4, :cond_37

    const/4 v1, 0x1

    :cond_37
    if-eqz v1, :cond_69

    .line 191
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->connection:Lokhttp3/internal/connection/RealConnection;

    if-nez v0, :cond_40

    .line 192
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_40
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->getTransmitters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 193
    iput-object v1, p0, Lokhttp3/internal/connection/Transmitter;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 195
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->getTransmitters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_68

    .line 196
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lokhttp3/internal/connection/RealConnection;->setIdleAtNanos$okhttp(J)V

    .line 197
    iget-object v2, p0, Lokhttp3/internal/connection/Transmitter;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    invoke-virtual {v2, v0}, Lokhttp3/internal/connection/RealConnectionPool;->connectionBecameIdle(Lokhttp3/internal/connection/RealConnection;)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 198
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->socket()Ljava/net/Socket;

    move-result-object v0

    return-object v0

    :cond_68
    return-object v1

    .line 189
    :cond_69
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setConnection(Lokhttp3/internal/connection/RealConnection;)V
    .registers 2

    .line 69
    iput-object p1, p0, Lokhttp3/internal/connection/Transmitter;->connection:Lokhttp3/internal/connection/RealConnection;

    return-void
.end method

.method public final timeout()Lokio/Timeout;
    .registers 2

    .line 84
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->timeout:Lokhttp3/internal/connection/Transmitter$timeout$1;

    return-object v0
.end method

.method public final timeoutEarlyExit()V
    .registers 3

    .line 95
    iget-boolean v0, p0, Lokhttp3/internal/connection/Transmitter;->timeoutEarlyExit:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_e

    .line 96
    iput-boolean v1, p0, Lokhttp3/internal/connection/Transmitter;->timeoutEarlyExit:Z

    .line 97
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->timeout:Lokhttp3/internal/connection/Transmitter$timeout$1;

    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    return-void

    .line 95
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final timeoutEnter()V
    .registers 2

    .line 87
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->timeout:Lokhttp3/internal/connection/Transmitter$timeout$1;

    invoke-virtual {v0}, Lokio/AsyncTimeout;->enter()V

    return-void
.end method
