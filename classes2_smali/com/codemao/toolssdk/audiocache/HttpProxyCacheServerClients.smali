.class final Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServerClients;
.super Ljava/lang/Object;
.source "HttpProxyCacheServerClients.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServerClients$UiListenerHandler;
    }
.end annotation


# instance fields
.field private final clientsCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final config:Lcom/codemao/toolssdk/audiocache/Config;

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/audiocache/CacheListener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile proxyCache:Lcom/codemao/toolssdk/audiocache/HttpProxyCache;

.field private final uiCacheListener:Lcom/codemao/toolssdk/audiocache/CacheListener;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/codemao/toolssdk/audiocache/Config;)V
    .registers 5

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServerClients;->clientsCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 28
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServerClients;->listeners:Ljava/util/List;

    .line 33
    invoke-static {p1}, Lcom/codemao/toolssdk/audiocache/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServerClients;->url:Ljava/lang/String;

    .line 34
    invoke-static {p2}, Lcom/codemao/toolssdk/audiocache/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/toolssdk/audiocache/Config;

    iput-object p2, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServerClients;->config:Lcom/codemao/toolssdk/audiocache/Config;

    .line 35
    new-instance p2, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServerClients$UiListenerHandler;

    invoke-direct {p2, p1, v0}, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServerClients$UiListenerHandler;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-object p2, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServerClients;->uiCacheListener:Lcom/codemao/toolssdk/audiocache/CacheListener;

    return-void
.end method

.method private declared-synchronized finishProcessRequest()V
    .registers 2

    monitor-enter p0

    .line 53
    :try_start_1
    iget-object v0, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServerClients;->clientsCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-gtz v0, :cond_11

    .line 54
    iget-object v0, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServerClients;->proxyCache:Lcom/codemao/toolssdk/audiocache/HttpProxyCache;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/audiocache/ProxyCache;->shutdown()V

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServerClients;->proxyCache:Lcom/codemao/toolssdk/audiocache/HttpProxyCache;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 57
    :cond_11
    monitor-exit p0

    return-void

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private newHttpProxyCache()Lcom/codemao/toolssdk/audiocache/HttpProxyCache;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codemao/toolssdk/audiocache/ProxyCacheException;
        }
    .end annotation

    .line 82
    new-instance v0, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;

    iget-object v1, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServerClients;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServerClients;->config:Lcom/codemao/toolssdk/audiocache/Config;

    iget-object v3, v2, Lcom/codemao/toolssdk/audiocache/Config;->sourceInfoStorage:Lcom/codemao/toolssdk/audiocache/sourcestorage/SourceInfoStorage;

    iget-object v2, v2, Lcom/codemao/toolssdk/audiocache/Config;->headerInjector:Lcom/codemao/toolssdk/audiocache/headers/HeaderInjector;

    invoke-direct {v0, v1, v3, v2}, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;-><init>(Ljava/lang/String;Lcom/codemao/toolssdk/audiocache/sourcestorage/SourceInfoStorage;Lcom/codemao/toolssdk/audiocache/headers/HeaderInjector;)V

    .line 83
    new-instance v1, Lcom/codemao/toolssdk/audiocache/file/FileCache;

    iget-object v2, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServerClients;->config:Lcom/codemao/toolssdk/audiocache/Config;

    iget-object v3, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServerClients;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/codemao/toolssdk/audiocache/Config;->generateCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServerClients;->config:Lcom/codemao/toolssdk/audiocache/Config;

    iget-object v3, v3, Lcom/codemao/toolssdk/audiocache/Config;->diskUsage:Lcom/codemao/toolssdk/audiocache/file/DiskUsage;

    invoke-direct {v1, v2, v3}, Lcom/codemao/toolssdk/audiocache/file/FileCache;-><init>(Ljava/io/File;Lcom/codemao/toolssdk/audiocache/file/DiskUsage;)V

    .line 84
    new-instance v2, Lcom/codemao/toolssdk/audiocache/HttpProxyCache;

    invoke-direct {v2, v0, v1}, Lcom/codemao/toolssdk/audiocache/HttpProxyCache;-><init>(Lcom/codemao/toolssdk/audiocache/HttpUrlSource;Lcom/codemao/toolssdk/audiocache/file/FileCache;)V

    .line 85
    iget-object v0, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServerClients;->uiCacheListener:Lcom/codemao/toolssdk/audiocache/CacheListener;

    invoke-virtual {v2, v0}, Lcom/codemao/toolssdk/audiocache/HttpProxyCache;->registerCacheListener(Lcom/codemao/toolssdk/audiocache/CacheListener;)V

    return-object v2
.end method

.method private declared-synchronized startProcessRequest()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codemao/toolssdk/audiocache/ProxyCacheException;
        }
    .end annotation

    monitor-enter p0

    .line 49
    :try_start_1
    iget-object v0, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServerClients;->proxyCache:Lcom/codemao/toolssdk/audiocache/HttpProxyCache;

    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServerClients;->newHttpProxyCache()Lcom/codemao/toolssdk/audiocache/HttpProxyCache;

    move-result-object v0

    goto :goto_c

    :cond_a
    iget-object v0, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServerClients;->proxyCache:Lcom/codemao/toolssdk/audiocache/HttpProxyCache;

    :goto_c
    iput-object v0, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServerClients;->proxyCache:Lcom/codemao/toolssdk/audiocache/HttpProxyCache;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 50
    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getClientsCount()I
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServerClients;->clientsCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public processRequest(Lcom/codemao/toolssdk/audiocache/GetRequest;Ljava/net/Socket;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codemao/toolssdk/audiocache/ProxyCacheException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServerClients;->startProcessRequest()V

    .line 41
    :try_start_3
    iget-object v0, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServerClients;->clientsCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 42
    iget-object v0, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServerClients;->proxyCache:Lcom/codemao/toolssdk/audiocache/HttpProxyCache;

    invoke-virtual {v0, p1, p2}, Lcom/codemao/toolssdk/audiocache/HttpProxyCache;->processRequest(Lcom/codemao/toolssdk/audiocache/GetRequest;Ljava/net/Socket;)V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_11

    .line 44
    invoke-direct {p0}, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServerClients;->finishProcessRequest()V

    return-void

    :catchall_11
    move-exception p1

    invoke-direct {p0}, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServerClients;->finishProcessRequest()V

    .line 45
    throw p1
.end method

.method public shutdown()V
    .registers 3

    .line 68
    iget-object v0, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServerClients;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 69
    iget-object v0, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServerClients;->proxyCache:Lcom/codemao/toolssdk/audiocache/HttpProxyCache;

    if-eqz v0, :cond_16

    .line 70
    iget-object v0, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServerClients;->proxyCache:Lcom/codemao/toolssdk/audiocache/HttpProxyCache;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/audiocache/HttpProxyCache;->registerCacheListener(Lcom/codemao/toolssdk/audiocache/CacheListener;)V

    .line 71
    iget-object v0, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServerClients;->proxyCache:Lcom/codemao/toolssdk/audiocache/HttpProxyCache;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/audiocache/ProxyCache;->shutdown()V

    .line 72
    iput-object v1, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServerClients;->proxyCache:Lcom/codemao/toolssdk/audiocache/HttpProxyCache;

    .line 74
    :cond_16
    iget-object v0, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServerClients;->clientsCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method
