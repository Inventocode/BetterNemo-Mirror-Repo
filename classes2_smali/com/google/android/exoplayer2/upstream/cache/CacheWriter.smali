.class public final Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;
.super Ljava/lang/Object;
.source "CacheWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/cache/CacheWriter$ProgressListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_BUFFER_SIZE_BYTES:I = 0x20000


# instance fields
.field private bytesCached:J

.field private final cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

.field private final cacheKey:Ljava/lang/String;

.field private final dataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

.field private final dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field private endPosition:J

.field private volatile isCanceled:Z

.field private nextPosition:J

.field private final progressListener:Lcom/google/android/exoplayer2/upstream/cache/CacheWriter$ProgressListener;

.field private final temporaryBuffer:[B


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;Lcom/google/android/exoplayer2/upstream/DataSpec;[BLcom/google/android/exoplayer2/upstream/cache/CacheWriter$ProgressListener;)V
    .registers 6

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->dataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    .line 75
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->getCache()Lcom/google/android/exoplayer2/upstream/cache/Cache;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    .line 76
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    if-nez p3, :cond_13

    const/high16 p3, 0x20000

    new-array p3, p3, [B

    .line 78
    :cond_13
    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->temporaryBuffer:[B

    .line 79
    iput-object p4, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->progressListener:Lcom/google/android/exoplayer2/upstream/cache/CacheWriter$ProgressListener;

    .line 80
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->getCacheKeyFactory()Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;->buildCacheKey(Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->cacheKey:Ljava/lang/String;

    .line 81
    iget-wide p1, p2, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->nextPosition:J

    return-void
.end method

.method private getLength()J
    .registers 6

    .line 226
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->endPosition:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_9

    goto :goto_f

    :cond_9
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    sub-long v2, v0, v2

    :goto_f
    return-wide v2
.end method

.method private onNewBytesCached(J)V
    .registers 12

    .line 219
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->bytesCached:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->bytesCached:J

    .line 220
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->progressListener:Lcom/google/android/exoplayer2/upstream/cache/CacheWriter$ProgressListener;

    if-eqz v2, :cond_13

    .line 221
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->getLength()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->bytesCached:J

    move-wide v7, p1

    invoke-interface/range {v2 .. v8}, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter$ProgressListener;->onProgress(JJJ)V

    :cond_13
    return-void
.end method

.method private onRequestEndPosition(J)V
    .registers 13

    .line 209
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->endPosition:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_7

    return-void

    .line 212
    :cond_7
    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->endPosition:J

    .line 213
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->progressListener:Lcom/google/android/exoplayer2/upstream/cache/CacheWriter$ProgressListener;

    if-eqz v3, :cond_18

    .line 214
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->getLength()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->bytesCached:J

    const-wide/16 v8, 0x0

    invoke-interface/range {v3 .. v9}, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter$ProgressListener;->onProgress(JJJ)V

    :cond_18
    return-void
.end method

.method private readBlockToCache(JJ)J
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-long v0, p1, p3

    .line 148
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->endPosition:J

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    cmp-long v8, v0, v2

    if-eqz v8, :cond_13

    cmp-long v0, p3, v6

    if-nez v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    cmp-long v1, p3, v6

    if-eqz v1, :cond_36

    .line 155
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 156
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/DataSpec;->buildUpon()Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setPosition(J)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setLength(J)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->build()Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object p3

    .line 158
    :try_start_2a
    iget-object p4, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->dataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    invoke-virtual {p4, p3}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    move-result-wide p3
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_30} :catch_31

    goto :goto_38

    .line 161
    :catch_31
    iget-object p3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->dataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    invoke-static {p3}, Lcom/google/android/exoplayer2/upstream/DataSourceUtil;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    :cond_36
    move-wide p3, v6

    const/4 v4, 0x0

    :goto_38
    if-nez v4, :cond_5d

    .line 168
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->throwIfCanceled()V

    .line 169
    iget-object p3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 170
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/upstream/DataSpec;->buildUpon()Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setPosition(J)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object p3

    invoke-virtual {p3, v6, v7}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->setLength(J)Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/upstream/DataSpec$Builder;->build()Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object p3

    .line 172
    :try_start_4f
    iget-object p4, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->dataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    invoke-virtual {p4, p3}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    move-result-wide p3
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_55} :catch_56

    goto :goto_5d

    :catch_56
    move-exception p1

    .line 174
    iget-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->dataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    invoke-static {p2}, Lcom/google/android/exoplayer2/upstream/DataSourceUtil;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    .line 175
    throw p1

    :cond_5d
    :goto_5d
    if-eqz v0, :cond_6a

    cmp-long v1, p3, v6

    if-eqz v1, :cond_6a

    add-long/2addr p3, p1

    .line 182
    :try_start_64
    invoke-direct {p0, p3, p4}, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->onRequestEndPosition(J)V

    goto :goto_6a

    :catch_68
    move-exception p1

    goto :goto_8b

    :cond_6a
    :goto_6a
    const/4 p3, 0x0

    const/4 p4, 0x0

    :cond_6c
    :goto_6c
    const/4 v1, -0x1

    if-eq p3, v1, :cond_83

    .line 186
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->throwIfCanceled()V

    .line 187
    iget-object p3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->dataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->temporaryBuffer:[B

    array-length v3, v2

    invoke-virtual {p3, v2, v5, v3}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->read([BII)I

    move-result p3

    if-eq p3, v1, :cond_6c

    int-to-long v1, p3

    .line 189
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->onNewBytesCached(J)V

    add-int/2addr p4, p3

    goto :goto_6c

    :cond_83
    if-eqz v0, :cond_91

    int-to-long v0, p4

    add-long/2addr p1, v0

    .line 194
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->onRequestEndPosition(J)V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_8a} :catch_68

    goto :goto_91

    .line 197
    :goto_8b
    iget-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->dataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    invoke-static {p2}, Lcom/google/android/exoplayer2/upstream/DataSourceUtil;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    .line 198
    throw p1

    .line 204
    :cond_91
    :goto_91
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->dataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->close()V

    int-to-long p1, p4

    return-wide p1
.end method

.method private throwIfCanceled()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 230
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->isCanceled:Z

    if-nez v0, :cond_5

    return-void

    .line 231
    :cond_5
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
.end method


# virtual methods
.method public cache()V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->throwIfCanceled()V

    .line 112
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->cacheKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v3, v2, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    iget-wide v5, v2, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    move-wide v2, v3

    move-wide v4, v5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getCachedBytes(Ljava/lang/String;JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->bytesCached:J

    .line 113
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v1, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_25

    .line 114
    iget-wide v5, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    add-long/2addr v5, v1

    iput-wide v5, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->endPosition:J

    goto :goto_38

    .line 116
    :cond_25
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->cacheKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getContentMetadata(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata$-CC;->getContentLength(Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata;)J

    move-result-wide v0

    cmp-long v2, v0, v3

    if-nez v2, :cond_36

    move-wide v0, v3

    .line 117
    :cond_36
    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->endPosition:J

    .line 119
    :goto_38
    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->progressListener:Lcom/google/android/exoplayer2/upstream/cache/CacheWriter$ProgressListener;

    if-eqz v5, :cond_47

    .line 120
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->getLength()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->bytesCached:J

    const-wide/16 v10, 0x0

    invoke-interface/range {v5 .. v11}, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter$ProgressListener;->onProgress(JJJ)V

    .line 123
    :cond_47
    :goto_47
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->endPosition:J

    cmp-long v2, v0, v3

    if-eqz v2, :cond_55

    iget-wide v5, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->nextPosition:J

    cmp-long v2, v5, v0

    if-gez v2, :cond_54

    goto :goto_55

    :cond_54
    return-void

    .line 124
    :cond_55
    :goto_55
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->throwIfCanceled()V

    .line 126
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->endPosition:J

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v2, v0, v3

    if-nez v2, :cond_65

    move-wide v11, v5

    goto :goto_69

    :cond_65
    iget-wide v7, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->nextPosition:J

    sub-long/2addr v0, v7

    move-wide v11, v0

    .line 127
    :goto_69
    iget-object v7, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v8, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->cacheKey:Ljava/lang/String;

    iget-wide v9, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->nextPosition:J

    invoke-interface/range {v7 .. v12}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getCachedLength(Ljava/lang/String;JJ)J

    move-result-wide v0

    const-wide/16 v7, 0x0

    cmp-long v2, v0, v7

    if-lez v2, :cond_7f

    .line 129
    iget-wide v5, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->nextPosition:J

    add-long/2addr v5, v0

    iput-wide v5, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->nextPosition:J

    goto :goto_47

    :cond_7f
    neg-long v0, v0

    cmp-long v2, v0, v5

    if-nez v2, :cond_85

    move-wide v0, v3

    .line 134
    :cond_85
    iget-wide v5, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->nextPosition:J

    invoke-direct {p0, v5, v6, v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->readBlockToCache(JJ)J

    move-result-wide v0

    add-long/2addr v5, v0

    iput-wide v5, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->nextPosition:J

    goto :goto_47
.end method

.method public cancel()V
    .registers 2

    const/4 v0, 0x1

    .line 90
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheWriter;->isCanceled:Z

    return-void
.end method
