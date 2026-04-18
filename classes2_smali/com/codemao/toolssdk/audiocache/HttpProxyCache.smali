.class Lcom/codemao/toolssdk/audiocache/HttpProxyCache;
.super Lcom/codemao/toolssdk/audiocache/ProxyCache;
.source "HttpProxyCache.java"


# instance fields
.field private final cache:Lcom/codemao/toolssdk/audiocache/file/FileCache;

.field private listener:Lcom/codemao/toolssdk/audiocache/CacheListener;

.field private final source:Lcom/codemao/toolssdk/audiocache/HttpUrlSource;


# direct methods
.method public constructor <init>(Lcom/codemao/toolssdk/audiocache/HttpUrlSource;Lcom/codemao/toolssdk/audiocache/file/FileCache;)V
    .registers 3

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/codemao/toolssdk/audiocache/ProxyCache;-><init>(Lcom/codemao/toolssdk/audiocache/Source;Lcom/codemao/toolssdk/audiocache/Cache;)V

    .line 30
    iput-object p2, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCache;->cache:Lcom/codemao/toolssdk/audiocache/file/FileCache;

    .line 31
    iput-object p1, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCache;->source:Lcom/codemao/toolssdk/audiocache/HttpUrlSource;

    return-void
.end method

.method private varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    .line 103
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private isUseCache(Lcom/codemao/toolssdk/audiocache/GetRequest;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codemao/toolssdk/audiocache/ProxyCacheException;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCache;->source:Lcom/codemao/toolssdk/audiocache/HttpUrlSource;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;->length()J

    move-result-wide v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-lez v6, :cond_10

    const/4 v4, 0x1

    goto :goto_11

    :cond_10
    const/4 v4, 0x0

    .line 54
    :goto_11
    iget-object v5, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCache;->cache:Lcom/codemao/toolssdk/audiocache/file/FileCache;

    invoke-virtual {v5}, Lcom/codemao/toolssdk/audiocache/file/FileCache;->available()J

    move-result-wide v5

    if-eqz v4, :cond_2e

    .line 56
    iget-boolean v4, p1, Lcom/codemao/toolssdk/audiocache/GetRequest;->partial:Z

    if-eqz v4, :cond_2e

    iget-wide v7, p1, Lcom/codemao/toolssdk/audiocache/GetRequest;->rangeOffset:J

    long-to-float p1, v7

    long-to-float v4, v5

    long-to-float v0, v0

    const v1, 0x3e4ccccd  # 0.2f

    mul-float v0, v0, v1

    add-float/2addr v4, v0

    cmpg-float p1, p1, v4

    if-gtz p1, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v2, 0x0

    :cond_2e
    :goto_2e
    return v2
.end method

.method private newResponseHeaders(Lcom/codemao/toolssdk/audiocache/GetRequest;)Ljava/lang/String;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/codemao/toolssdk/audiocache/ProxyCacheException;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCache;->source:Lcom/codemao/toolssdk/audiocache/HttpUrlSource;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;->getMime()Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 62
    iget-object v3, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCache;->cache:Lcom/codemao/toolssdk/audiocache/file/FileCache;

    invoke-virtual {v3}, Lcom/codemao/toolssdk/audiocache/file/FileCache;->isCompleted()Z

    move-result v3

    if-eqz v3, :cond_1b

    iget-object v3, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCache;->cache:Lcom/codemao/toolssdk/audiocache/file/FileCache;

    invoke-virtual {v3}, Lcom/codemao/toolssdk/audiocache/file/FileCache;->available()J

    move-result-wide v3

    goto :goto_21

    :cond_1b
    iget-object v3, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCache;->source:Lcom/codemao/toolssdk/audiocache/HttpUrlSource;

    invoke-virtual {v3}, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;->length()J

    move-result-wide v3

    :goto_21
    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    cmp-long v8, v3, v5

    if-ltz v8, :cond_2a

    const/4 v5, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v5, 0x0

    .line 64
    :goto_2b
    iget-boolean v6, p1, Lcom/codemao/toolssdk/audiocache/GetRequest;->partial:Z

    if-eqz v6, :cond_34

    iget-wide v8, p1, Lcom/codemao/toolssdk/audiocache/GetRequest;->rangeOffset:J

    sub-long v8, v3, v8

    goto :goto_35

    :cond_34
    move-wide v8, v3

    :goto_35
    if-eqz v5, :cond_3b

    if-eqz v6, :cond_3b

    const/4 v6, 0x1

    goto :goto_3c

    :cond_3b
    const/4 v6, 0x0

    .line 66
    :goto_3c
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    iget-boolean v11, p1, Lcom/codemao/toolssdk/audiocache/GetRequest;->partial:Z

    if-eqz v11, :cond_48

    const-string v11, "HTTP/1.1 206 PARTIAL CONTENT\n"

    goto :goto_4a

    :cond_48
    const-string v11, "HTTP/1.1 200 OK\n"

    :goto_4a
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "Accept-Ranges: bytes\n"

    .line 68
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ""

    if-eqz v5, :cond_65

    new-array v5, v2, [Ljava/lang/Object;

    .line 69
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v5, v7

    const-string v8, "Content-Length: %d\n"

    invoke-direct {p0, v8, v5}, Lcom/codemao/toolssdk/audiocache/HttpProxyCache;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_66

    :cond_65
    move-object v5, v11

    :goto_66
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_8e

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 70
    iget-wide v8, p1, Lcom/codemao/toolssdk/audiocache/GetRequest;->rangeOffset:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v5, v7

    const-wide/16 v8, 0x1

    sub-long v8, v3, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v5, v2

    const/4 p1, 0x2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v5, p1

    const-string p1, "Content-Range: bytes %d-%d/%d\n"

    invoke-direct {p0, p1, v5}, Lcom/codemao/toolssdk/audiocache/HttpProxyCache;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_8f

    :cond_8e
    move-object p1, v11

    :goto_8f
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_9e

    new-array p1, v2, [Ljava/lang/Object;

    aput-object v0, p1, v7

    const-string v0, "Content-Type: %s\n"

    .line 71
    invoke-direct {p0, v0, p1}, Lcom/codemao/toolssdk/audiocache/HttpProxyCache;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    :cond_9e
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    .line 72
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private responseWithCache(Ljava/io/OutputStream;J)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codemao/toolssdk/audiocache/ProxyCacheException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2000

    new-array v1, v0, [B

    .line 79
    :goto_4
    invoke-virtual {p0, v1, p2, p3, v0}, Lcom/codemao/toolssdk/audiocache/ProxyCache;->read([BJI)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_12

    const/4 v3, 0x0

    .line 80
    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v2, v2

    add-long/2addr p2, v2

    goto :goto_4

    .line 83
    :cond_12
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method private responseWithoutCache(Ljava/io/OutputStream;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codemao/toolssdk/audiocache/ProxyCacheException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    new-instance v0, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;

    iget-object v1, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCache;->source:Lcom/codemao/toolssdk/audiocache/HttpUrlSource;

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;-><init>(Lcom/codemao/toolssdk/audiocache/HttpUrlSource;)V

    long-to-int p3, p2

    int-to-long p2, p3

    .line 89
    :try_start_9
    invoke-virtual {v0, p2, p3}, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;->open(J)V

    const/16 p2, 0x2000

    new-array p2, p2, [B

    .line 92
    :goto_10
    invoke-virtual {v0, p2}, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;->read([B)I

    move-result p3

    const/4 v1, -0x1

    if-eq p3, v1, :cond_1c

    const/4 v1, 0x0

    .line 93
    invoke-virtual {p1, p2, v1, p3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_10

    .line 96
    :cond_1c
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_23

    .line 98
    invoke-virtual {v0}, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;->close()V

    return-void

    :catchall_23
    move-exception p1

    invoke-virtual {v0}, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;->close()V

    .line 99
    throw p1
.end method


# virtual methods
.method protected onCachePercentsAvailableChanged(I)V
    .registers 5

    .line 108
    iget-object v0, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCache;->listener:Lcom/codemao/toolssdk/audiocache/CacheListener;

    if-eqz v0, :cond_11

    .line 109
    iget-object v1, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCache;->cache:Lcom/codemao/toolssdk/audiocache/file/FileCache;

    iget-object v1, v1, Lcom/codemao/toolssdk/audiocache/file/FileCache;->file:Ljava/io/File;

    iget-object v2, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCache;->source:Lcom/codemao/toolssdk/audiocache/HttpUrlSource;

    invoke-virtual {v2}, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lcom/codemao/toolssdk/audiocache/CacheListener;->onCacheAvailable(Ljava/io/File;Ljava/lang/String;I)V

    :cond_11
    return-void
.end method

.method public processRequest(Lcom/codemao/toolssdk/audiocache/GetRequest;Ljava/net/Socket;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/codemao/toolssdk/audiocache/ProxyCacheException;
        }
    .end annotation

    .line 39
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-virtual {p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 40
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/audiocache/HttpProxyCache;->newResponseHeaders(Lcom/codemao/toolssdk/audiocache/GetRequest;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "UTF-8"

    .line 41
    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 43
    iget-wide v1, p1, Lcom/codemao/toolssdk/audiocache/GetRequest;->rangeOffset:J

    .line 44
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/audiocache/HttpProxyCache;->isUseCache(Lcom/codemao/toolssdk/audiocache/GetRequest;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 45
    invoke-direct {p0, v0, v1, v2}, Lcom/codemao/toolssdk/audiocache/HttpProxyCache;->responseWithCache(Ljava/io/OutputStream;J)V

    goto :goto_25

    .line 47
    :cond_22
    invoke-direct {p0, v0, v1, v2}, Lcom/codemao/toolssdk/audiocache/HttpProxyCache;->responseWithoutCache(Ljava/io/OutputStream;J)V

    :goto_25
    return-void
.end method

.method public registerCacheListener(Lcom/codemao/toolssdk/audiocache/CacheListener;)V
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCache;->listener:Lcom/codemao/toolssdk/audiocache/CacheListener;

    return-void
.end method
