.class public final Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;
.super Ljava/lang/Object;
.source "CacheDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$CacheIgnoredReason;,
        Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Flags;,
        Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;,
        Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;
    }
.end annotation


# static fields
.field public static final CACHE_IGNORED_REASON_ERROR:I = 0x0

.field public static final CACHE_IGNORED_REASON_UNSET_LENGTH:I = 0x1

.field private static final CACHE_NOT_IGNORED:I = -0x1

.field public static final FLAG_BLOCK_ON_CACHE:I = 0x1

.field public static final FLAG_IGNORE_CACHE_FOR_UNSET_LENGTH_REQUESTS:I = 0x4

.field public static final FLAG_IGNORE_CACHE_ON_ERROR:I = 0x2

.field private static final MIN_READ_BEFORE_CHECKING_CACHE:J = 0x19000L


# instance fields
.field private actualUri:Landroid/net/Uri;

.field private final blockOnCache:Z

.field private bytesRemaining:J

.field private final cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

.field private final cacheKeyFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;

.field private final cacheReadDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private final cacheWriteDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private checkCachePosition:J

.field private currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private currentDataSourceBytesRead:J

.field private currentDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field private currentHoleSpan:Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

.field private currentRequestIgnoresCache:Z

.field private final eventListener:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;

.field private final ignoreCacheForUnsetLengthRequests:Z

.field private final ignoreCacheOnError:Z

.field private readPosition:J

.field private requestDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field private seenCacheError:Z

.field private totalCachedBytesRead:J

.field private final upstreamDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;)V
    .registers 4

    const/4 v0, 0x0

    .line 412
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;I)V
    .registers 11

    .line 426
    new-instance v3, Lcom/google/android/exoplayer2/upstream/FileDataSource;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/upstream/FileDataSource;-><init>()V

    new-instance v4, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;

    const-wide/32 v0, 0x500000

    invoke-direct {v4, p1, v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;J)V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSink;ILcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSink;ILcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;)V
    .registers 15

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    .line 457
    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSink;ILcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSink;ILcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;)V
    .registers 18

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p7

    move v6, p5

    move-object/from16 v9, p6

    .line 491
    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSink;Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;ILcom/google/android/exoplayer2/util/PriorityTaskManager;ILcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSink;Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;ILcom/google/android/exoplayer2/util/PriorityTaskManager;ILcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;)V
    .registers 10

    .line 512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 513
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    .line 514
    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cacheReadDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-eqz p5, :cond_a

    goto :goto_c

    .line 515
    :cond_a
    sget-object p5, Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;->DEFAULT:Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;

    :goto_c
    iput-object p5, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cacheKeyFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;

    and-int/lit8 p1, p6, 0x1

    const/4 p3, 0x0

    const/4 p5, 0x1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    .line 516
    :goto_17
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->blockOnCache:Z

    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1f

    const/4 p1, 0x1

    goto :goto_20

    :cond_1f
    const/4 p1, 0x0

    .line 517
    :goto_20
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->ignoreCacheOnError:Z

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_27

    const/4 p3, 0x1

    .line 518
    :cond_27
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->ignoreCacheForUnsetLengthRequests:Z

    const/4 p1, 0x0

    if-eqz p2, :cond_40

    if-eqz p7, :cond_34

    .line 522
    new-instance p3, Lcom/google/android/exoplayer2/upstream/PriorityDataSource;

    invoke-direct {p3, p2, p7, p8}, Lcom/google/android/exoplayer2/upstream/PriorityDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/util/PriorityTaskManager;I)V

    move-object p2, p3

    .line 526
    :cond_34
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->upstreamDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-eqz p4, :cond_3d

    .line 529
    new-instance p1, Lcom/google/android/exoplayer2/upstream/TeeDataSource;

    invoke-direct {p1, p2, p4}, Lcom/google/android/exoplayer2/upstream/TeeDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSink;)V

    .line 530
    :cond_3d
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cacheWriteDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    goto :goto_46

    .line 532
    :cond_40
    sget-object p2, Lcom/google/android/exoplayer2/upstream/DummyDataSource;->INSTANCE:Lcom/google/android/exoplayer2/upstream/DummyDataSource;

    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->upstreamDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 533
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cacheWriteDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 535
    :goto_46
    iput-object p9, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->eventListener:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSink;Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;ILcom/google/android/exoplayer2/util/PriorityTaskManager;ILcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$1;)V
    .registers 11

    .line 54
    invoke-direct/range {p0 .. p9}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSink;Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;ILcom/google/android/exoplayer2/util/PriorityTaskManager;ILcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;)V

    return-void
.end method

.method private closeCurrentSource()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 825
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    .line 829
    :try_start_6
    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/DataSource;->close()V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_19

    .line 831
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 832
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 833
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentHoleSpan:Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    if-eqz v0, :cond_18

    .line 834
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->releaseHoleSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    .line 835
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentHoleSpan:Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    :cond_18
    return-void

    :catchall_19
    move-exception v0

    .line 831
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 832
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 833
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentHoleSpan:Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    if-eqz v2, :cond_29

    .line 834
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v3, v2}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->releaseHoleSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    .line 835
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentHoleSpan:Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .line 837
    :cond_29
    throw v0
.end method

.method private static getRedirectedUriOrDefault(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 3

    .line 804
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getContentMetadata(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata$-CC;->getRedirectedUri(Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_b

    move-object p2, p0

    :cond_b
    return-object p2
.end method

.method private handleBeforeThrow(Ljava/lang/Throwable;)V
    .registers 3

    .line 841
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->isReadingFromCache()Z

    move-result v0

    if-nez v0, :cond_a

    instance-of p1, p1, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;

    if-eqz p1, :cond_d

    :cond_a
    const/4 p1, 0x1

    .line 842
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->seenCacheError:Z

    :cond_d
    return-void
.end method

.method private isBypassingCache()Z
    .registers 3

    .line 813
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->upstreamDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private isReadingFromCache()Z
    .registers 3

    .line 817
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cacheReadDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private isReadingFromUpstream()Z
    .registers 2

    .line 809
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->isReadingFromCache()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isWritingToCache()Z
    .registers 3

    .line 821
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cacheWriteDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private notifyBytesRead()V
    .registers 8

    .line 863
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->eventListener:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;

    if-eqz v0, :cond_19

    iget-wide v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->totalCachedBytesRead:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_19

    .line 864
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getCacheSpace()J

    move-result-wide v1

    iget-wide v5, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->totalCachedBytesRead:J

    invoke-interface {v0, v1, v2, v5, v6}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;->onCachedBytesRead(JJ)V

    .line 865
    iput-wide v3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->totalCachedBytesRead:J

    :cond_19
    return-void
.end method

.method private notifyCacheIgnored(I)V
    .registers 3

    .line 857
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->eventListener:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;

    if-eqz v0, :cond_7

    .line 858
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;->onCacheIgnored(I)V

    :cond_7
    return-void
.end method

.method private openNextSource(Lcom/google/android/exoplayer2/upstream/DataSpec;Z)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 686
    iget-object v2, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 687
    iget-boolean v3, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentRequestIgnoresCache:Z

    const/4 v9, 0x0

    if-eqz v3, :cond_13

    move-object v3, v9

    goto :goto_3b

    .line 689
    :cond_13
    iget-boolean v3, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->blockOnCache:Z

    if-eqz v3, :cond_30

    .line 691
    :try_start_17
    iget-object v3, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-wide v5, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    iget-wide v7, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    move-object v4, v2

    invoke-interface/range {v3 .. v8}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->startReadWrite(Ljava/lang/String;JJ)Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    move-result-object v3
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_22} :catch_23

    goto :goto_3b

    .line 693
    :catch_23
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 694
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    .line 697
    :cond_30
    iget-object v3, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-wide v5, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    iget-wide v7, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    move-object v4, v2

    invoke-interface/range {v3 .. v8}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->startReadWriteNonBlocking(Ljava/lang/String;JJ)Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    move-result-object v3

    :goto_3b
    const-wide/16 v4, -0x1

    if-nez v3, :cond_57

    .line 705
    iget-object v6, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->upstreamDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 707
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/DataSpec;->buildUpon()Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v7

    iget-wide v10, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    invoke-virtual {v7, v10, v11}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setPosition(J)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v7

    iget-wide v10, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    invoke-virtual {v7, v10, v11}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setLength(J)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->build()Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v7

    goto/16 :goto_c8

    .line 708
    :cond_57
    iget-boolean v6, v3, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->isCached:Z

    if-eqz v6, :cond_94

    .line 710
    iget-object v6, v3, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->file:Ljava/io/File;

    invoke-static {v6}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    .line 711
    iget-wide v7, v3, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->position:J

    .line 712
    iget-wide v10, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    sub-long/2addr v10, v7

    .line 713
    iget-wide v12, v3, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->length:J

    sub-long/2addr v12, v10

    .line 714
    iget-wide v14, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    cmp-long v16, v14, v4

    if-eqz v16, :cond_79

    .line 715
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    .line 719
    :cond_79
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/DataSpec;->buildUpon()Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v14

    .line 720
    invoke-virtual {v14, v6}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v6

    .line 721
    invoke-virtual {v6, v7, v8}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setUriPositionOffset(J)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v6

    .line 722
    invoke-virtual {v6, v10, v11}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setPosition(J)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v6

    .line 723
    invoke-virtual {v6, v12, v13}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setLength(J)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v6

    .line 724
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->build()Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v7

    .line 725
    iget-object v6, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cacheReadDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    goto :goto_c8

    .line 729
    :cond_94
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->isOpenEnded()Z

    move-result v6

    if-eqz v6, :cond_9d

    .line 730
    iget-wide v6, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    goto :goto_a9

    .line 732
    :cond_9d
    iget-wide v6, v3, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->length:J

    .line 733
    iget-wide v10, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    cmp-long v8, v10, v4

    if-eqz v8, :cond_a9

    .line 734
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 738
    :cond_a9
    :goto_a9
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/upstream/DataSpec;->buildUpon()Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v8

    iget-wide v10, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    invoke-virtual {v8, v10, v11}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setPosition(J)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setLength(J)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->build()Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v7

    .line 739
    iget-object v6, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cacheWriteDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-eqz v6, :cond_c0

    goto :goto_c8

    .line 742
    :cond_c0
    iget-object v6, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->upstreamDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 743
    iget-object v8, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v8, v3}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->releaseHoleSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    move-object v3, v9

    .line 749
    :goto_c8
    iget-boolean v8, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentRequestIgnoresCache:Z

    if-nez v8, :cond_d7

    iget-object v8, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->upstreamDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-ne v6, v8, :cond_d7

    .line 750
    iget-wide v10, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    const-wide/32 v12, 0x19000

    add-long/2addr v10, v12

    goto :goto_dc

    :cond_d7
    const-wide v10, 0x7fffffffffffffffL

    .line 751
    :goto_dc
    iput-wide v10, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->checkCachePosition:J

    if-eqz p2, :cond_104

    .line 753
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->isBypassingCache()Z

    move-result v8

    invoke-static {v8}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 754
    iget-object v8, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->upstreamDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-ne v6, v8, :cond_ec

    return-void

    .line 760
    :cond_ec
    :try_start_ec
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->closeCurrentSource()V
    :try_end_ef
    .catchall {:try_start_ec .. :try_end_ef} :catchall_f0

    goto :goto_104

    :catchall_f0
    move-exception v0

    move-object v2, v0

    .line 762
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->isHoleSpan()Z

    move-result v0

    if-eqz v0, :cond_103

    .line 764
    iget-object v0, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->releaseHoleSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    .line 766
    :cond_103
    throw v2

    :cond_104
    :goto_104
    if-eqz v3, :cond_10e

    .line 770
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->isHoleSpan()Z

    move-result v8

    if-eqz v8, :cond_10e

    .line 771
    iput-object v3, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentHoleSpan:Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .line 773
    :cond_10e
    iput-object v6, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 774
    iput-object v7, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    const-wide/16 v10, 0x0

    .line 775
    iput-wide v10, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSourceBytesRead:J

    .line 776
    invoke-interface {v6, v7}, Lcom/google/android/exoplayer2/upstream/DataSource;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    move-result-wide v10

    .line 779
    new-instance v3, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;-><init>()V

    .line 780
    iget-wide v7, v7, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    cmp-long v12, v7, v4

    if-nez v12, :cond_131

    cmp-long v7, v10, v4

    if-eqz v7, :cond_131

    .line 781
    iput-wide v10, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    .line 782
    iget-wide v4, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    add-long/2addr v4, v10

    invoke-static {v3, v4, v5}, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;->setContentLength(Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;J)Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;

    .line 784
    :cond_131
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->isReadingFromUpstream()Z

    move-result v4

    if-eqz v4, :cond_14c

    .line 785
    invoke-interface {v6}, Lcom/google/android/exoplayer2/upstream/DataSource;->getUri()Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->actualUri:Landroid/net/Uri;

    .line 786
    iget-object v0, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_149

    .line 787
    iget-object v9, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->actualUri:Landroid/net/Uri;

    :cond_149
    invoke-static {v3, v9}, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;->setRedirectedUri(Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;Landroid/net/Uri;)Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;

    .line 789
    :cond_14c
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->isWritingToCache()Z

    move-result v0

    if-eqz v0, :cond_157

    .line 790
    iget-object v0, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v0, v2, v3}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->applyContentMetadataMutations(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;)V

    :cond_157
    return-void
.end method

.method private setNoBytesRemainingAndMaybeStoreLength(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 795
    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    .line 796
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->isWritingToCache()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 797
    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;-><init>()V

    .line 798
    iget-wide v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;->setContentLength(Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;J)Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;

    .line 799
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v1, p1, v0}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->applyContentMetadataMutations(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;)V

    :cond_19
    return-void
.end method

.method private shouldIgnoreCacheForRequest(Lcom/google/android/exoplayer2/upstream/DataSpec;)I
    .registers 6

    .line 847
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->ignoreCacheOnError:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->seenCacheError:Z

    if-eqz v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 849
    :cond_a
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->ignoreCacheForUnsetLengthRequests:Z

    if-eqz v0, :cond_18

    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_18

    const/4 p1, 0x1

    return p1

    :cond_18
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public addTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .registers 3

    .line 550
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cacheReadDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/upstream/DataSource;->addTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    .line 552
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->upstreamDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/upstream/DataSource;->addTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    return-void
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 657
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->requestDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 658
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->actualUri:Landroid/net/Uri;

    const-wide/16 v0, 0x0

    .line 659
    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    .line 660
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->notifyBytesRead()V

    .line 662
    :try_start_c
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->closeCurrentSource()V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v0

    .line 664
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->handleBeforeThrow(Ljava/lang/Throwable;)V

    .line 665
    throw v0
.end method

.method public getCache()Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .registers 2

    .line 540
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    return-object v0
.end method

.method public getCacheKeyFactory()Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;
    .registers 2

    .line 545
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cacheKeyFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;

    return-object v0
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 650
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->isReadingFromUpstream()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 651
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->upstreamDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/DataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    goto :goto_11

    .line 652
    :cond_d
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_11
    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .line 644
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->actualUri:Landroid/net/Uri;

    return-object v0
.end method

.method public open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 558
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cacheKeyFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;->buildCacheKey(Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/lang/String;

    move-result-object v0

    .line 559
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/DataSpec;->buildUpon()Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setKey(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->build()Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v1

    .line 560
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->requestDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 561
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v3, v1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-static {v2, v0, v3}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->getRedirectedUriOrDefault(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->actualUri:Landroid/net/Uri;

    .line 562
    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    .line 564
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->shouldIgnoreCacheForRequest(Lcom/google/android/exoplayer2/upstream/DataSpec;)I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_2c

    const/4 v3, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v3, 0x0

    .line 565
    :goto_2d
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentRequestIgnoresCache:Z

    if-eqz v3, :cond_34

    .line 567
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->notifyCacheIgnored(I)V

    .line 570
    :cond_34
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentRequestIgnoresCache:Z

    const-wide/16 v5, 0x0

    const-wide/16 v7, -0x1

    if-eqz v2, :cond_3f

    .line 571
    iput-wide v7, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    goto :goto_61

    .line 573
    :cond_3f
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getContentMetadata(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata$-CC;->getContentLength(Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    cmp-long v0, v2, v7

    if-eqz v0, :cond_61

    .line 575
    iget-wide v9, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    sub-long/2addr v2, v9

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    cmp-long v0, v2, v5

    if-ltz v0, :cond_59

    goto :goto_61

    .line 577
    :cond_59
    new-instance p1, Lcom/google/android/exoplayer2/upstream/DataSourceException;

    const/16 v0, 0x7d8

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/upstream/DataSourceException;-><init>(I)V

    throw p1

    .line 582
    :cond_61
    :goto_61
    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    cmp-long v0, v2, v7

    if-eqz v0, :cond_74

    .line 584
    iget-wide v9, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    cmp-long v0, v9, v7

    if-nez v0, :cond_6e

    goto :goto_72

    .line 586
    :cond_6e
    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    :goto_72
    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    .line 588
    :cond_74
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    cmp-long v0, v2, v5

    if-gtz v0, :cond_7e

    cmp-long v0, v2, v7

    if-nez v0, :cond_81

    .line 589
    :cond_7e
    invoke-direct {p0, v1, v4}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->openNextSource(Lcom/google/android/exoplayer2/upstream/DataSpec;Z)V

    .line 591
    :cond_81
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    cmp-long p1, v0, v7

    if-eqz p1, :cond_88

    goto :goto_8a

    :cond_88
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J
    :try_end_8a
    .catchall {:try_start_0 .. :try_end_8a} :catchall_8b

    :goto_8a
    return-wide v0

    :catchall_8b
    move-exception p1

    .line 593
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->handleBeforeThrow(Ljava/lang/Throwable;)V

    .line 594
    throw p1
.end method

.method public read([BII)I
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_4

    return v0

    .line 603
    :cond_4
    iget-wide v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    const/4 v3, -0x1

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-nez v6, :cond_e

    return v3

    .line 606
    :cond_e
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->requestDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 607
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 609
    :try_start_1e
    iget-wide v6, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    iget-wide v8, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->checkCachePosition:J

    cmp-long v10, v6, v8

    if-ltz v10, :cond_2a

    const/4 v6, 0x1

    .line 610
    invoke-direct {p0, v1, v6}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->openNextSource(Lcom/google/android/exoplayer2/upstream/DataSpec;Z)V

    .line 612
    :cond_2a
    iget-object v6, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-static {v6}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v6, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/DataReader;->read([BII)I

    move-result v6

    const-wide/16 v7, -0x1

    if-eq v6, v3, :cond_5b

    .line 614
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->isReadingFromCache()Z

    move-result p1

    if-eqz p1, :cond_46

    .line 615
    iget-wide p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->totalCachedBytesRead:J

    int-to-long v0, v6

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->totalCachedBytesRead:J

    .line 617
    :cond_46
    iget-wide p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    int-to-long v0, v6

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    .line 618
    iget-wide p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSourceBytesRead:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSourceBytesRead:J

    .line 619
    iget-wide p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    cmp-long p3, p1, v7

    if-eqz p3, :cond_84

    sub-long/2addr p1, v0

    .line 620
    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    goto :goto_84

    .line 622
    :cond_5b
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->isReadingFromUpstream()Z

    move-result v3

    if-eqz v3, :cond_79

    iget-wide v2, v2, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    cmp-long v9, v2, v7

    if-eqz v9, :cond_6d

    iget-wide v9, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSourceBytesRead:J

    cmp-long v11, v9, v2

    if-gez v11, :cond_79

    .line 628
    :cond_6d
    iget-object p1, v1, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->setNoBytesRemainingAndMaybeStoreLength(Ljava/lang/String;)V

    goto :goto_84

    .line 629
    :cond_79
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    cmp-long v9, v2, v4

    if-gtz v9, :cond_85

    cmp-long v4, v2, v7

    if-nez v4, :cond_84

    goto :goto_85

    :cond_84
    :goto_84
    return v6

    .line 630
    :cond_85
    :goto_85
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->closeCurrentSource()V

    .line 631
    invoke-direct {p0, v1, v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->openNextSource(Lcom/google/android/exoplayer2/upstream/DataSpec;Z)V

    .line 632
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->read([BII)I

    move-result p1
    :try_end_8f
    .catchall {:try_start_1e .. :try_end_8f} :catchall_90

    return p1

    :catchall_90
    move-exception p1

    .line 636
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->handleBeforeThrow(Ljava/lang/Throwable;)V

    .line 637
    throw p1
.end method
