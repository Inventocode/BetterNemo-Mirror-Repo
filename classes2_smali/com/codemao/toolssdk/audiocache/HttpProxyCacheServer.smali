.class public Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;
.super Ljava/lang/Object;
.source "HttpProxyCacheServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer$Builder;,
        Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer$SocketProcessorRunnable;,
        Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer$WaitRequestsRunnable;,
        Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer$ErrorListener;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# instance fields
.field private final clientsLock:Ljava/lang/Object;

.field private final clientsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServerClients;",
            ">;"
        }
    .end annotation
.end field

.field private final config:Lcom/codemao/toolssdk/audiocache/Config;

.field private listener:Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer$ErrorListener;

.field private final pinger:Lcom/codemao/toolssdk/audiocache/Pinger;

.field private final port:I

.field private final serverSocket:Ljava/net/ServerSocket;

.field private final socketProcessor:Ljava/util/concurrent/ExecutorService;

.field private final waitConnectionThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "HttpProxyCacheServer"

    .line 56
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method private constructor <init>(Lcom/codemao/toolssdk/audiocache/Config;)V
    .registers 6

    const-string v0, "127.0.0.1"

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;->clientsLock:Ljava/lang/Object;

    const/16 v1, 0x8

    .line 60
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;->socketProcessor:Ljava/util/concurrent/ExecutorService;

    .line 61
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;->clientsMap:Ljava/util/Map;

    .line 75
    invoke-static {p1}, Lcom/codemao/toolssdk/audiocache/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/audiocache/Config;

    iput-object p1, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;->config:Lcom/codemao/toolssdk/audiocache/Config;

    .line 77
    :try_start_23
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    .line 78
    new-instance v2, Ljava/net/ServerSocket;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1, p1}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v2, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;->serverSocket:Ljava/net/ServerSocket;

    .line 79
    invoke-virtual {v2}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result p1

    iput p1, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;->port:I

    .line 80
    invoke-static {v0, p1}, Lcom/codemao/toolssdk/audiocache/IgnoreHostProxySelector;->install(Ljava/lang/String;I)V

    .line 81
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 82
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer$WaitRequestsRunnable;

    invoke-direct {v3, p0, v1}, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer$WaitRequestsRunnable;-><init>(Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;->waitConnectionThread:Ljava/lang/Thread;

    .line 83
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 84
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 85
    new-instance v1, Lcom/codemao/toolssdk/audiocache/Pinger;

    invoke-direct {v1, v0, p1}, Lcom/codemao/toolssdk/audiocache/Pinger;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;->pinger:Lcom/codemao/toolssdk/audiocache/Pinger;

    .line 86
    sget-object p1, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;->LOG:Lorg/slf4j/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Proxy cache server started. Is it alive? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;->isAlive()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_71} :catch_74
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_71} :catch_72

    return-void

    :catch_72
    move-exception p1

    goto :goto_75

    :catch_74
    move-exception p1

    .line 88
    :goto_75
    iget-object v0, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;->socketProcessor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 89
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error starting local proxy server"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method synthetic constructor <init>(Lcom/codemao/toolssdk/audiocache/Config;Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer$1;)V
    .registers 3

    .line 54
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;-><init>(Lcom/codemao/toolssdk/audiocache/Config;)V

    return-void
.end method

.method static synthetic access$100(Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;)V
    .registers 1

    .line 54
    invoke-direct {p0}, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;->waitForRequest()V

    return-void
.end method

.method static synthetic access$200(Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;Ljava/net/Socket;)V
    .registers 2

    .line 54
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;->processSocket(Ljava/net/Socket;)V

    return-void
.end method

.method private closeSocket(Ljava/net/Socket;)V
    .registers 4

    .line 306
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_15

    .line 307
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_15

    :catch_a
    move-exception p1

    .line 310
    new-instance v0, Lcom/codemao/toolssdk/audiocache/ProxyCacheException;

    const-string v1, "Error closing socket"

    invoke-direct {v0, v1, p1}, Lcom/codemao/toolssdk/audiocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;->onError(Ljava/lang/Throwable;)V

    :cond_15
    :goto_15
    return-void
.end method

.method private closeSocketInput(Ljava/net/Socket;)V
    .registers 4

    .line 282
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 283
    invoke-virtual {p1}, Ljava/net/Socket;->shutdownInput()V
    :try_end_9
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_9} :catch_16
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_1d

    :catch_a
    move-exception p1

    .line 290
    new-instance v0, Lcom/codemao/toolssdk/audiocache/ProxyCacheException;

    const-string v1, "Error closing socket input stream"

    invoke-direct {v0, v1, p1}, Lcom/codemao/toolssdk/audiocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;->onError(Ljava/lang/Throwable;)V

    goto :goto_1d

    .line 288
    :catch_16
    sget-object p1, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;->LOG:Lorg/slf4j/Logger;

    const-string v0, "Releasing input stream… Socket is closed by client."

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method private closeSocketOutput(Ljava/net/Socket;)V
    .registers 4

    .line 296
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_16

    .line 297
    invoke-virtual {p1}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_16

    :catch_a
    move-exception p1

    .line 300
    sget-object v0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;->LOG:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Failed to close socket on proxy side: {}. It seems client have already closed connection."

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_16
    :goto_16
    return-void
.end method

.method private getClients(Ljava/lang/String;)Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServerClients;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codemao/toolssdk/audiocache/ProxyCacheException;
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;->clientsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 255
    :try_start_3
    iget-object v1, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;->clientsMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServerClients;

    if-nez v1, :cond_19

    .line 257
    new-instance v1, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServerClients;

    iget-object v2, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;->config:Lcom/codemao/toolssdk/audiocache/Config;

    invoke-direct {v1, p1, v2}, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServerClients;-><init>(Ljava/lang/String;Lcom/codemao/toolssdk/audiocache/Config;)V

    .line 258
    iget-object v2, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;->clientsMap:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    :cond_19
    monitor-exit v0

    return-object v1

    :catchall_1b
    move-exception p1

    .line 261
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method private getClientsCount()I
    .registers 5

    .line 265
    iget-object v0, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;->clientsLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 267
    :try_start_4
    iget-object v2, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;->clientsMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServerClients;

    .line 268
    invoke-virtual {v3}, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServerClients;->getClientsCount()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_e

    .line 270
    :cond_20
    monitor-exit v0

    return v1

    :catchall_22
    move-exception v1

    .line 271
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_22

    throw v1
.end method

.method private isAlive()Z
    .registers 4

    .line 188
    iget-object v0, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;->pinger:Lcom/codemao/toolssdk/audiocache/Pinger;

    const/4 v1, 0x3

    const/16 v2, 0x46

    invoke-virtual {v0, v1, v2}, Lcom/codemao/toolssdk/audiocache/Pinger;->ping(II)Z

    move-result v0

    return v0
.end method

.method private onError(Ljava/lang/Throwable;)V
    .registers 4

    .line 315
    sget-object v0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;->LOG:Lorg/slf4j/Logger;

    const-string v1, "HttpProxyCacheServer error"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 316
    iget-object v0, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;->listener:Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer$ErrorListener;

    if-eqz v0, :cond_12

    .line 317
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer$ErrorListener;->onError(Ljava/lang/String;)V

    :cond_12
    return-void
.end method

.method private processSocket(Ljava/net/Socket;)V
    .registers 7

    const-string v0, "Opened connections: "

    .line 232
    :try_start_2
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/codemao/toolssdk/audiocache/GetRequest;->read(Ljava/io/InputStream;)Lcom/codemao/toolssdk/audiocache/GetRequest;

    move-result-object v1

    .line 233
    sget-object v2, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;->LOG:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Request to cache proxy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 234
    iget-object v3, v1, Lcom/codemao/toolssdk/audiocache/GetRequest;->uri:Ljava/lang/String;

    invoke-static {v3}, Lcom/codemao/toolssdk/audiocache/ProxyCacheUtils;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 235
    iget-object v4, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;->pinger:Lcom/codemao/toolssdk/audiocache/Pinger;

    invoke-virtual {v4, v3}, Lcom/codemao/toolssdk/audiocache/Pinger;->isPingRequest(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 236
    iget-object v1, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;->pinger:Lcom/codemao/toolssdk/audiocache/Pinger;

    invoke-virtual {v1, p1}, Lcom/codemao/toolssdk/audiocache/Pinger;->responseToPing(Ljava/net/Socket;)V

    goto :goto_3b

    .line 238
    :cond_34
    invoke-direct {p0, v3}, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;->getClients(Ljava/lang/String;)Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServerClients;

    move-result-object v3

    .line 239
    invoke-virtual {v3, v1, p1}, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServerClients;->processRequest(Lcom/codemao/toolssdk/audiocache/GetRequest;Ljava/net/Socket;)V
    :try_end_3b
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_3b} :catch_93
    .catch Lcom/codemao/toolssdk/audiocache/ProxyCacheException; {:try_start_2 .. :try_end_3b} :catch_59
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_3b} :catch_57
    .catchall {:try_start_2 .. :try_end_3b} :catchall_55

    .line 248
    :goto_3b
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;->releaseSocket(Ljava/net/Socket;)V

    .line 249
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;->getClientsCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    goto :goto_b3

    :catchall_55
    move-exception v1

    goto :goto_b4

    :catch_57
    move-exception v1

    goto :goto_5a

    :catch_59
    move-exception v1

    .line 246
    :goto_5a
    :try_start_5a
    new-instance v2, Lcom/codemao/toolssdk/audiocache/ProxyCacheException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error processing request "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/codemao/toolssdk/audiocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v2}, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;->onError(Ljava/lang/Throwable;)V
    :try_end_77
    .catchall {:try_start_5a .. :try_end_77} :catchall_55

    .line 248
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;->releaseSocket(Ljava/net/Socket;)V

    .line 249
    sget-object p1, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;->LOG:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;->getClientsCount()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    goto :goto_b3

    .line 244
    :catch_93
    :try_start_93
    sget-object v1, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Closing socket… Socket is closed by client."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_9a
    .catchall {:try_start_93 .. :try_end_9a} :catchall_55

    .line 248
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;->releaseSocket(Ljava/net/Socket;)V

    .line 249
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;->getClientsCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    :goto_b3
    return-void

    .line 248
    :goto_b4
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;->releaseSocket(Ljava/net/Socket;)V

    .line 249
    sget-object p1, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;->LOG:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;->getClientsCount()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 250
    throw v1
.end method

.method private releaseSocket(Ljava/net/Socket;)V
    .registers 2

    .line 275
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;->closeSocketInput(Ljava/net/Socket;)V

    .line 276
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;->closeSocketOutput(Ljava/net/Socket;)V

    .line 277
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;->closeSocket(Ljava/net/Socket;)V

    return-void
.end method

.method private shutdownClients()V
    .registers 4

    .line 210
    iget-object v0, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;->clientsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 211
    :try_start_3
    iget-object v1, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;->clientsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServerClients;

    .line 212
    invoke-virtual {v2}, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServerClients;->shutdown()V

    goto :goto_d

    .line 214
    :cond_1d
    iget-object v1, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;->clientsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 215
    monitor-exit v0

    return-void

    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method private waitForRequest()V
    .registers 5

    .line 220
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 221
    iget-object v0, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 222
    sget-object v1, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;->LOG:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Accept new socket "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 223
    iget-object v1, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;->socketProcessor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer$SocketProcessorRunnable;

    invoke-direct {v2, p0, v0}, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer$SocketProcessorRunnable;-><init>(Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;Ljava/net/Socket;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_30} :catch_31

    goto :goto_0

    :catch_31
    move-exception v0

    .line 226
    new-instance v1, Lcom/codemao/toolssdk/audiocache/ProxyCacheException;

    const-string v2, "Error during waiting connection"

    invoke-direct {v1, v2, v0}, Lcom/codemao/toolssdk/audiocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;->onError(Ljava/lang/Throwable;)V

    :cond_3c
    return-void
.end method


# virtual methods
.method public setListener(Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer$ErrorListener;)V
    .registers 2

    .line 326
    iput-object p1, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;->listener:Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer$ErrorListener;

    return-void
.end method

.method public shutdown()V
    .registers 4

    .line 170
    sget-object v0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Shutdown proxy server"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 172
    invoke-direct {p0}, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;->shutdownClients()V

    .line 174
    iget-object v0, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;->config:Lcom/codemao/toolssdk/audiocache/Config;

    iget-object v0, v0, Lcom/codemao/toolssdk/audiocache/Config;->sourceInfoStorage:Lcom/codemao/toolssdk/audiocache/sourcestorage/SourceInfoStorage;

    invoke-interface {v0}, Lcom/codemao/toolssdk/audiocache/sourcestorage/SourceInfoStorage;->release()V

    .line 176
    iget-object v0, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;->waitConnectionThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 178
    :try_start_16
    iget-object v0, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 179
    iget-object v0, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_23} :catch_24

    goto :goto_2f

    :catch_24
    move-exception v0

    .line 182
    new-instance v1, Lcom/codemao/toolssdk/audiocache/ProxyCacheException;

    const-string v2, "Error shutting down proxy server"

    invoke-direct {v1, v2, v0}, Lcom/codemao/toolssdk/audiocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;->onError(Ljava/lang/Throwable;)V

    :cond_2f
    :goto_2f
    const/4 v0, 0x0

    .line 184
    iput-object v0, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;->listener:Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer$ErrorListener;

    return-void
.end method
