.class Lcom/codemao/toolssdk/audiocache/ProxyCache;
.super Ljava/lang/Object;
.source "ProxyCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/audiocache/ProxyCache$SourceReaderRunnable;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# instance fields
.field private final cache:Lcom/codemao/toolssdk/audiocache/Cache;

.field private volatile percentsAvailable:I

.field private final readSourceErrorsCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final source:Lcom/codemao/toolssdk/audiocache/Source;

.field private volatile sourceReaderThread:Ljava/lang/Thread;

.field private final stopLock:Ljava/lang/Object;

.field private volatile stopped:Z

.field private final wc:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "ProxyCache"

    .line 22
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/codemao/toolssdk/audiocache/ProxyCache;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/codemao/toolssdk/audiocache/Source;Lcom/codemao/toolssdk/audiocache/Cache;)V
    .registers 4

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/codemao/toolssdk/audiocache/ProxyCache;->wc:Ljava/lang/Object;

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/codemao/toolssdk/audiocache/ProxyCache;->stopLock:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 32
    iput v0, p0, Lcom/codemao/toolssdk/audiocache/ProxyCache;->percentsAvailable:I

    .line 35
    invoke-static {p1}, Lcom/codemao/toolssdk/audiocache/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/audiocache/Source;

    iput-object p1, p0, Lcom/codemao/toolssdk/audiocache/ProxyCache;->source:Lcom/codemao/toolssdk/audiocache/Source;

    .line 36
    invoke-static {p2}, Lcom/codemao/toolssdk/audiocache/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/audiocache/Cache;

    iput-object p1, p0, Lcom/codemao/toolssdk/audiocache/ProxyCache;->cache:Lcom/codemao/toolssdk/audiocache/Cache;

    .line 37
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/audiocache/ProxyCache;->readSourceErrorsCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method static synthetic access$100(Lcom/codemao/toolssdk/audiocache/ProxyCache;)V
    .registers 1

    .line 20
    invoke-direct {p0}, Lcom/codemao/toolssdk/audiocache/ProxyCache;->readSource()V

    return-void
.end method

.method private checkReadSourceErrorsCount()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codemao/toolssdk/audiocache/ProxyCacheException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/codemao/toolssdk/audiocache/ProxyCache;->readSourceErrorsCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_a

    return-void

    .line 59
    :cond_a
    iget-object v1, p0, Lcom/codemao/toolssdk/audiocache/ProxyCache;->readSourceErrorsCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 60
    new-instance v1, Lcom/codemao/toolssdk/audiocache/ProxyCacheException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error reading source "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " times"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/codemao/toolssdk/audiocache/ProxyCacheException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private closeSource()V
    .registers 5

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/codemao/toolssdk/audiocache/ProxyCache;->source:Lcom/codemao/toolssdk/audiocache/Source;

    invoke-interface {v0}, Lcom/codemao/toolssdk/audiocache/Source;->close()V
    :try_end_5
    .catch Lcom/codemao/toolssdk/audiocache/ProxyCacheException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_22

    :catch_6
    move-exception v0

    .line 171
    new-instance v1, Lcom/codemao/toolssdk/audiocache/ProxyCacheException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error closing source "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/codemao/toolssdk/audiocache/ProxyCache;->source:Lcom/codemao/toolssdk/audiocache/Source;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/codemao/toolssdk/audiocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lcom/codemao/toolssdk/audiocache/ProxyCache;->onError(Ljava/lang/Throwable;)V

    :goto_22
    return-void
.end method

.method private isStopped()Z
    .registers 2

    .line 164
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/codemao/toolssdk/audiocache/ProxyCache;->stopped:Z

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method private notifyNewCacheDataAvailable(JJ)V
    .registers 5

    .line 98
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/codemao/toolssdk/audiocache/ProxyCache;->onCacheAvailable(JJ)V

    .line 100
    iget-object p1, p0, Lcom/codemao/toolssdk/audiocache/ProxyCache;->wc:Ljava/lang/Object;

    monitor-enter p1

    .line 101
    :try_start_6
    iget-object p2, p0, Lcom/codemao/toolssdk/audiocache/ProxyCache;->wc:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 102
    monitor-exit p1

    return-void

    :catchall_d
    move-exception p2

    monitor-exit p1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw p2
.end method

.method private onSourceRead()V
    .registers 2

    const/16 v0, 0x64

    .line 151
    iput v0, p0, Lcom/codemao/toolssdk/audiocache/ProxyCache;->percentsAvailable:I

    .line 152
    iget v0, p0, Lcom/codemao/toolssdk/audiocache/ProxyCache;->percentsAvailable:I

    invoke-virtual {p0, v0}, Lcom/codemao/toolssdk/audiocache/ProxyCache;->onCachePercentsAvailableChanged(I)V

    return-void
.end method

.method private readSource()V
    .registers 9

    const-wide/16 v0, -0x1

    const-wide/16 v2, 0x0

    .line 123
    :try_start_4
    iget-object v4, p0, Lcom/codemao/toolssdk/audiocache/ProxyCache;->cache:Lcom/codemao/toolssdk/audiocache/Cache;

    invoke-interface {v4}, Lcom/codemao/toolssdk/audiocache/Cache;->available()J

    move-result-wide v2

    .line 124
    iget-object v4, p0, Lcom/codemao/toolssdk/audiocache/ProxyCache;->source:Lcom/codemao/toolssdk/audiocache/Source;

    invoke-interface {v4, v2, v3}, Lcom/codemao/toolssdk/audiocache/Source;->open(J)V

    .line 125
    iget-object v4, p0, Lcom/codemao/toolssdk/audiocache/ProxyCache;->source:Lcom/codemao/toolssdk/audiocache/Source;

    invoke-interface {v4}, Lcom/codemao/toolssdk/audiocache/Source;->length()J

    move-result-wide v0

    const/16 v4, 0x2000

    new-array v4, v4, [B

    .line 128
    :goto_19
    iget-object v5, p0, Lcom/codemao/toolssdk/audiocache/ProxyCache;->source:Lcom/codemao/toolssdk/audiocache/Source;

    invoke-interface {v5, v4}, Lcom/codemao/toolssdk/audiocache/Source;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_42

    .line 129
    iget-object v6, p0, Lcom/codemao/toolssdk/audiocache/ProxyCache;->stopLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_49

    .line 130
    :try_start_25
    invoke-direct {p0}, Lcom/codemao/toolssdk/audiocache/ProxyCache;->isStopped()Z

    move-result v7

    if-eqz v7, :cond_33

    .line 131
    monitor-exit v6
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_3f

    .line 144
    invoke-direct {p0}, Lcom/codemao/toolssdk/audiocache/ProxyCache;->closeSource()V

    .line 145
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/codemao/toolssdk/audiocache/ProxyCache;->notifyNewCacheDataAvailable(JJ)V

    return-void

    .line 133
    :cond_33
    :try_start_33
    iget-object v7, p0, Lcom/codemao/toolssdk/audiocache/ProxyCache;->cache:Lcom/codemao/toolssdk/audiocache/Cache;

    invoke-interface {v7, v4, v5}, Lcom/codemao/toolssdk/audiocache/Cache;->append([BI)V

    .line 134
    monitor-exit v6
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_3f

    int-to-long v5, v5

    add-long/2addr v2, v5

    .line 136
    :try_start_3b
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/codemao/toolssdk/audiocache/ProxyCache;->notifyNewCacheDataAvailable(JJ)V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_49

    goto :goto_19

    :catchall_3f
    move-exception v4

    .line 134
    :try_start_40
    monitor-exit v6
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    :try_start_41
    throw v4

    .line 138
    :cond_42
    invoke-direct {p0}, Lcom/codemao/toolssdk/audiocache/ProxyCache;->tryComplete()V

    .line 139
    invoke-direct {p0}, Lcom/codemao/toolssdk/audiocache/ProxyCache;->onSourceRead()V
    :try_end_48
    .catchall {:try_start_41 .. :try_end_48} :catchall_49

    goto :goto_52

    :catchall_49
    move-exception v4

    .line 141
    :try_start_4a
    iget-object v5, p0, Lcom/codemao/toolssdk/audiocache/ProxyCache;->readSourceErrorsCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 142
    invoke-virtual {p0, v4}, Lcom/codemao/toolssdk/audiocache/ProxyCache;->onError(Ljava/lang/Throwable;)V
    :try_end_52
    .catchall {:try_start_4a .. :try_end_52} :catchall_59

    .line 144
    :goto_52
    invoke-direct {p0}, Lcom/codemao/toolssdk/audiocache/ProxyCache;->closeSource()V

    .line 145
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/codemao/toolssdk/audiocache/ProxyCache;->notifyNewCacheDataAvailable(JJ)V

    return-void

    :catchall_59
    move-exception v4

    .line 144
    invoke-direct {p0}, Lcom/codemao/toolssdk/audiocache/ProxyCache;->closeSource()V

    .line 145
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/codemao/toolssdk/audiocache/ProxyCache;->notifyNewCacheDataAvailable(JJ)V

    .line 146
    throw v4
.end method

.method private declared-synchronized readSourceAsync()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codemao/toolssdk/audiocache/ProxyCacheException;
        }
    .end annotation

    monitor-enter p0

    .line 80
    :try_start_1
    iget-object v0, p0, Lcom/codemao/toolssdk/audiocache/ProxyCache;->sourceReaderThread:Ljava/lang/Thread;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/codemao/toolssdk/audiocache/ProxyCache;->sourceReaderThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-eq v0, v1, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    .line 81
    :goto_12
    iget-boolean v1, p0, Lcom/codemao/toolssdk/audiocache/ProxyCache;->stopped:Z

    if-nez v1, :cond_45

    iget-object v1, p0, Lcom/codemao/toolssdk/audiocache/ProxyCache;->cache:Lcom/codemao/toolssdk/audiocache/Cache;

    invoke-interface {v1}, Lcom/codemao/toolssdk/audiocache/Cache;->isCompleted()Z

    move-result v1

    if-nez v1, :cond_45

    if-nez v0, :cond_45

    .line 82
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/codemao/toolssdk/audiocache/ProxyCache$SourceReaderRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/codemao/toolssdk/audiocache/ProxyCache$SourceReaderRunnable;-><init>(Lcom/codemao/toolssdk/audiocache/ProxyCache;Lcom/codemao/toolssdk/audiocache/ProxyCache$1;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Source reader for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/codemao/toolssdk/audiocache/ProxyCache;->source:Lcom/codemao/toolssdk/audiocache/Source;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/audiocache/ProxyCache;->sourceReaderThread:Ljava/lang/Thread;

    .line 83
    iget-object v0, p0, Lcom/codemao/toolssdk/audiocache/ProxyCache;->sourceReaderThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_47

    .line 85
    :cond_45
    monitor-exit p0

    return-void

    :catchall_47
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private tryComplete()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codemao/toolssdk/audiocache/ProxyCacheException;
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/codemao/toolssdk/audiocache/ProxyCache;->stopLock:Ljava/lang/Object;

    monitor-enter v0

    .line 157
    :try_start_3
    invoke-direct {p0}, Lcom/codemao/toolssdk/audiocache/ProxyCache;->isStopped()Z

    move-result v1

    if-nez v1, :cond_1e

    iget-object v1, p0, Lcom/codemao/toolssdk/audiocache/ProxyCache;->cache:Lcom/codemao/toolssdk/audiocache/Cache;

    invoke-interface {v1}, Lcom/codemao/toolssdk/audiocache/Cache;->available()J

    move-result-wide v1

    iget-object v3, p0, Lcom/codemao/toolssdk/audiocache/ProxyCache;->source:Lcom/codemao/toolssdk/audiocache/Source;

    invoke-interface {v3}, Lcom/codemao/toolssdk/audiocache/Source;->length()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-nez v5, :cond_1e

    .line 158
    iget-object v1, p0, Lcom/codemao/toolssdk/audiocache/ProxyCache;->cache:Lcom/codemao/toolssdk/audiocache/Cache;

    invoke-interface {v1}, Lcom/codemao/toolssdk/audiocache/Cache;->complete()V

    .line 160
    :cond_1e
    monitor-exit v0

    return-void

    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method private waitForSourceData()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codemao/toolssdk/audiocache/ProxyCacheException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/codemao/toolssdk/audiocache/ProxyCache;->wc:Ljava/lang/Object;

    monitor-enter v0

    .line 90
    :try_start_3
    iget-object v1, p0, Lcom/codemao/toolssdk/audiocache/ProxyCache;->wc:Ljava/lang/Object;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_a} :catch_e
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    .line 94
    :try_start_a
    monitor-exit v0

    return-void

    :catchall_c
    move-exception v1

    goto :goto_17

    :catch_e
    move-exception v1

    .line 92
    new-instance v2, Lcom/codemao/toolssdk/audiocache/ProxyCacheException;

    const-string v3, "Waiting source data is interrupted!"

    invoke-direct {v2, v3, v1}, Lcom/codemao/toolssdk/audiocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 94
    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_c

    throw v1
.end method


# virtual methods
.method protected onCacheAvailable(JJ)V
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v4, p3, v2

    if-nez v4, :cond_a

    const/4 v2, 0x1

    goto :goto_b

    :cond_a
    const/4 v2, 0x0

    :goto_b
    if-eqz v2, :cond_10

    const/16 p1, 0x64

    goto :goto_18

    :cond_10
    long-to-float p1, p1

    long-to-float p2, p3

    div-float/2addr p1, p2

    const/high16 p2, 0x42c80000  # 100.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    .line 108
    :goto_18
    iget p2, p0, Lcom/codemao/toolssdk/audiocache/ProxyCache;->percentsAvailable:I

    if-eq p1, p2, :cond_1e

    const/4 p2, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p2, 0x0

    :goto_1f
    if-ltz v4, :cond_22

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    if-eqz v0, :cond_2a

    if-eqz p2, :cond_2a

    .line 111
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/audiocache/ProxyCache;->onCachePercentsAvailableChanged(I)V

    .line 113
    :cond_2a
    iput p1, p0, Lcom/codemao/toolssdk/audiocache/ProxyCache;->percentsAvailable:I

    return-void
.end method

.method protected onCachePercentsAvailableChanged(I)V
    .registers 2

    const p0, 0x0

    throw p0
.end method

.method protected final onError(Ljava/lang/Throwable;)V
    .registers 4

    .line 176
    instance-of v0, p1, Lcom/codemao/toolssdk/audiocache/InterruptedProxyCacheException;

    if-eqz v0, :cond_c

    .line 178
    sget-object p1, Lcom/codemao/toolssdk/audiocache/ProxyCache;->LOG:Lorg/slf4j/Logger;

    const-string v0, "ProxyCache is interrupted"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    goto :goto_13

    .line 180
    :cond_c
    sget-object v0, Lcom/codemao/toolssdk/audiocache/ProxyCache;->LOG:Lorg/slf4j/Logger;

    const-string v1, "ProxyCache error"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_13
    return-void
.end method

.method public read([BJI)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codemao/toolssdk/audiocache/ProxyCacheException;
        }
    .end annotation

    .line 41
    invoke-static {p1, p2, p3, p4}, Lcom/codemao/toolssdk/audiocache/ProxyCacheUtils;->assertBuffer([BJI)V

    .line 43
    :goto_3
    iget-object v0, p0, Lcom/codemao/toolssdk/audiocache/ProxyCache;->cache:Lcom/codemao/toolssdk/audiocache/Cache;

    invoke-interface {v0}, Lcom/codemao/toolssdk/audiocache/Cache;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/codemao/toolssdk/audiocache/ProxyCache;->cache:Lcom/codemao/toolssdk/audiocache/Cache;

    invoke-interface {v0}, Lcom/codemao/toolssdk/audiocache/Cache;->available()J

    move-result-wide v0

    int-to-long v2, p4

    add-long/2addr v2, p2

    cmp-long v4, v0, v2

    if-gez v4, :cond_25

    iget-boolean v0, p0, Lcom/codemao/toolssdk/audiocache/ProxyCache;->stopped:Z

    if-nez v0, :cond_25

    .line 44
    invoke-direct {p0}, Lcom/codemao/toolssdk/audiocache/ProxyCache;->readSourceAsync()V

    .line 45
    invoke-direct {p0}, Lcom/codemao/toolssdk/audiocache/ProxyCache;->waitForSourceData()V

    .line 46
    invoke-direct {p0}, Lcom/codemao/toolssdk/audiocache/ProxyCache;->checkReadSourceErrorsCount()V

    goto :goto_3

    .line 48
    :cond_25
    iget-object v0, p0, Lcom/codemao/toolssdk/audiocache/ProxyCache;->cache:Lcom/codemao/toolssdk/audiocache/Cache;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/codemao/toolssdk/audiocache/Cache;->read([BJI)I

    move-result p1

    .line 49
    iget-object p2, p0, Lcom/codemao/toolssdk/audiocache/ProxyCache;->cache:Lcom/codemao/toolssdk/audiocache/Cache;

    invoke-interface {p2}, Lcom/codemao/toolssdk/audiocache/Cache;->isCompleted()Z

    move-result p2

    if-eqz p2, :cond_3e

    iget p2, p0, Lcom/codemao/toolssdk/audiocache/ProxyCache;->percentsAvailable:I

    const/16 p3, 0x64

    if-eq p2, p3, :cond_3e

    .line 50
    iput p3, p0, Lcom/codemao/toolssdk/audiocache/ProxyCache;->percentsAvailable:I

    .line 51
    invoke-virtual {p0, p3}, Lcom/codemao/toolssdk/audiocache/ProxyCache;->onCachePercentsAvailableChanged(I)V

    :cond_3e
    return p1
.end method

.method public shutdown()V
    .registers 5

    .line 65
    iget-object v0, p0, Lcom/codemao/toolssdk/audiocache/ProxyCache;->stopLock:Ljava/lang/Object;

    monitor-enter v0

    .line 66
    :try_start_3
    sget-object v1, Lcom/codemao/toolssdk/audiocache/ProxyCache;->LOG:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Shutdown proxy for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/codemao/toolssdk/audiocache/ProxyCache;->source:Lcom/codemao/toolssdk/audiocache/Source;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_33

    const/4 v1, 0x1

    .line 68
    :try_start_1c
    iput-boolean v1, p0, Lcom/codemao/toolssdk/audiocache/ProxyCache;->stopped:Z

    .line 69
    iget-object v1, p0, Lcom/codemao/toolssdk/audiocache/ProxyCache;->sourceReaderThread:Ljava/lang/Thread;

    if-eqz v1, :cond_27

    .line 70
    iget-object v1, p0, Lcom/codemao/toolssdk/audiocache/ProxyCache;->sourceReaderThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 72
    :cond_27
    iget-object v1, p0, Lcom/codemao/toolssdk/audiocache/ProxyCache;->cache:Lcom/codemao/toolssdk/audiocache/Cache;

    invoke-interface {v1}, Lcom/codemao/toolssdk/audiocache/Cache;->close()V
    :try_end_2c
    .catch Lcom/codemao/toolssdk/audiocache/ProxyCacheException; {:try_start_1c .. :try_end_2c} :catch_2d
    .catchall {:try_start_1c .. :try_end_2c} :catchall_33

    goto :goto_31

    :catch_2d
    move-exception v1

    .line 74
    :try_start_2e
    invoke-virtual {p0, v1}, Lcom/codemao/toolssdk/audiocache/ProxyCache;->onError(Ljava/lang/Throwable;)V

    .line 76
    :goto_31
    monitor-exit v0

    return-void

    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_2e .. :try_end_35} :catchall_33

    throw v1
.end method
