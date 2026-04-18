.class Lcom/codemao/toolssdk/audiocache/Pinger;
.super Ljava/lang/Object;
.source "Pinger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/audiocache/Pinger$PingCallable;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# instance fields
.field private final host:Ljava/lang/String;

.field private final pingExecutor:Ljava/util/concurrent/ExecutorService;

.field private final port:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "Pinger"

    .line 35
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/codemao/toolssdk/audiocache/Pinger;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/toolssdk/audiocache/Pinger;->pingExecutor:Ljava/util/concurrent/ExecutorService;

    .line 44
    invoke-static {p1}, Lcom/codemao/toolssdk/audiocache/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/codemao/toolssdk/audiocache/Pinger;->host:Ljava/lang/String;

    .line 45
    iput p2, p0, Lcom/codemao/toolssdk/audiocache/Pinger;->port:I

    return-void
.end method

.method static synthetic access$100(Lcom/codemao/toolssdk/audiocache/Pinger;)Z
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codemao/toolssdk/audiocache/ProxyCacheException;
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Lcom/codemao/toolssdk/audiocache/Pinger;->pingServer()Z

    move-result p0

    return p0
.end method

.method private getDefaultProxies()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation

    .line 79
    :try_start_0
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    .line 80
    new-instance v1, Ljava/net/URI;

    invoke-direct {p0}, Lcom/codemao/toolssdk/audiocache/Pinger;->getPingUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v0
    :try_end_11
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_11} :catch_12

    return-object v0

    :catch_12
    move-exception v0

    .line 82
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getPingUrl()Ljava/lang/String;
    .registers 5

    .line 116
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/codemao/toolssdk/audiocache/Pinger;->host:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/codemao/toolssdk/audiocache/Pinger;->port:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v3, "ping"

    aput-object v3, v1, v2

    const-string v2, "http://%s:%d/%s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private pingServer()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codemao/toolssdk/audiocache/ProxyCacheException;
        }
    .end annotation

    .line 97
    invoke-direct {p0}, Lcom/codemao/toolssdk/audiocache/Pinger;->getPingUrl()Ljava/lang/String;

    move-result-object v0

    .line 98
    new-instance v1, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;

    invoke-direct {v1, v0}, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;-><init>(Ljava/lang/String;)V

    :try_start_9
    const-string v0, "ping ok"

    .line 100
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-wide/16 v2, 0x0

    .line 101
    invoke-virtual {v1, v2, v3}, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;->open(J)V

    .line 102
    array-length v2, v0

    new-array v2, v2, [B

    .line 103
    invoke-virtual {v1, v2}, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;->read([B)I

    .line 104
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    .line 105
    sget-object v3, Lcom/codemao/toolssdk/audiocache/Pinger;->LOG:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ping response: `"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "`, pinged? "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V
    :try_end_41
    .catch Lcom/codemao/toolssdk/audiocache/ProxyCacheException; {:try_start_9 .. :try_end_41} :catch_47
    .catchall {:try_start_9 .. :try_end_41} :catchall_45

    .line 111
    invoke-virtual {v1}, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;->close()V

    return v0

    :catchall_45
    move-exception v0

    goto :goto_54

    :catch_47
    move-exception v0

    .line 108
    :try_start_48
    sget-object v2, Lcom/codemao/toolssdk/audiocache/Pinger;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Error reading ping response"

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4f
    .catchall {:try_start_48 .. :try_end_4f} :catchall_45

    const/4 v0, 0x0

    .line 111
    invoke-virtual {v1}, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;->close()V

    return v0

    :goto_54
    invoke-virtual {v1}, Lcom/codemao/toolssdk/audiocache/HttpUrlSource;->close()V

    .line 112
    throw v0
.end method


# virtual methods
.method isPingRequest(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "ping"

    .line 87
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method ping(II)Z
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p1, v1, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    .line 49
    :goto_7
    invoke-static {v2}, Lcom/codemao/toolssdk/audiocache/Preconditions;->checkArgument(Z)V

    if-lez p2, :cond_e

    const/4 v2, 0x1

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    .line 50
    :goto_f
    invoke-static {v2}, Lcom/codemao/toolssdk/audiocache/Preconditions;->checkArgument(Z)V

    const/4 v2, 0x0

    :goto_13
    if-ge v2, p1, :cond_64

    .line 56
    :try_start_15
    iget-object v3, p0, Lcom/codemao/toolssdk/audiocache/Pinger;->pingExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/codemao/toolssdk/audiocache/Pinger$PingCallable;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/codemao/toolssdk/audiocache/Pinger$PingCallable;-><init>(Lcom/codemao/toolssdk/audiocache/Pinger;Lcom/codemao/toolssdk/audiocache/Pinger$1;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v3

    int-to-long v4, p2

    .line 57
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v5, v6}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_2e
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_15 .. :try_end_2e} :catch_3c
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_2e} :catch_33
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_15 .. :try_end_2e} :catch_31

    if-eqz v3, :cond_5f

    return v1

    :catch_31
    move-exception v3

    goto :goto_34

    :catch_33
    move-exception v3

    .line 64
    :goto_34
    sget-object v4, Lcom/codemao/toolssdk/audiocache/Pinger;->LOG:Lorg/slf4j/Logger;

    const-string v5, "Error pinging server due to unexpected error"

    invoke-interface {v4, v5, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5f

    .line 62
    :catch_3c
    sget-object v3, Lcom/codemao/toolssdk/audiocache/Pinger;->LOG:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error pinging server (attempt: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", timeout: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "). "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :cond_5f
    :goto_5f
    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 p2, p2, 0x2

    goto :goto_13

    .line 69
    :cond_64
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 72
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v0

    const/4 v2, 0x2

    div-int/2addr p2, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v1

    invoke-direct {p0}, Lcom/codemao/toolssdk/audiocache/Pinger;->getDefaultProxies()Ljava/util/List;

    move-result-object p2

    aput-object p2, v3, v2

    const-string p2, "Error pinging server (attempts: %d, max timeout: %d). If you see this message, please, report at https://github.com/danikula/AndroidVideoCache/issues/134. Default proxies are: %s"

    .line 69
    invoke-static {p1, p2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 73
    sget-object p2, Lcom/codemao/toolssdk/audiocache/Pinger;->LOG:Lorg/slf4j/Logger;

    new-instance v1, Lcom/codemao/toolssdk/audiocache/ProxyCacheException;

    invoke-direct {v1, p1}, Lcom/codemao/toolssdk/audiocache/ProxyCacheException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method responseToPing(Ljava/net/Socket;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    const-string v0, "HTTP/1.1 200 OK\n\n"

    .line 92
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    const-string v0, "ping ok"

    .line 93
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
