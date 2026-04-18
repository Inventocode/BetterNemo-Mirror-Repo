.class public final Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;
.super Ljava/lang/Object;
.source "CachedRegionTracker.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;
    }
.end annotation


# static fields
.field public static final CACHED_TO_END:I = -0x2

.field public static final NOT_CACHED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "CachedRegionTracker"


# instance fields
.field private final cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

.field private final cacheKey:Ljava/lang/String;

.field private final chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

.field private final lookupRegion:Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;

.field private final regions:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;Lcom/google/android/exoplayer2/extractor/ChunkIndex;)V
    .registers 6

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    .line 49
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->cacheKey:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    .line 51
    new-instance p3, Ljava/util/TreeSet;

    invoke-direct {p3}, Ljava/util/TreeSet;-><init>()V

    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    .line 52
    new-instance p3, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;

    const-wide/16 v0, 0x0

    invoke-direct {p3, v0, v1, v0, v1}, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;-><init>(JJ)V

    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->lookupRegion:Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;

    .line 54
    monitor-enter p0

    .line 55
    :try_start_1a
    invoke-interface {p1, p2, p0}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->addListener(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;)Ljava/util/NavigableSet;

    move-result-object p1

    .line 58
    invoke-interface {p1}, Ljava/util/NavigableSet;->descendingIterator()Ljava/util/Iterator;

    move-result-object p1

    .line 59
    :goto_22
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_32

    .line 60
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .line 61
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->mergeSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    goto :goto_22

    .line 63
    :cond_32
    monitor-exit p0

    return-void

    :catchall_34
    move-exception p1

    monitor-exit p0
    :try_end_36
    .catchall {:try_start_1a .. :try_end_36} :catchall_34

    throw p1
.end method

.method private mergeSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    .registers 9

    .line 140
    new-instance v0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;

    iget-wide v1, p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->position:J

    iget-wide v3, p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->length:J

    add-long/2addr v3, v1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;-><init>(JJ)V

    .line 141
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;

    .line 142
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;

    .line 143
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->regionsConnect(Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;)Z

    move-result v2

    .line 144
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->regionsConnect(Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;)Z

    move-result v3

    if-eqz v3, :cond_42

    if-eqz v2, :cond_2f

    .line 149
    iget-wide v2, v1, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffset:J

    iput-wide v2, p1, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffset:J

    .line 150
    iget v0, v1, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffsetIndex:I

    iput v0, p1, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffsetIndex:I

    goto :goto_3c

    .line 153
    :cond_2f
    iget-wide v2, v1, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffset:J

    iput-wide v2, v0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffset:J

    .line 154
    iget p1, v1, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffsetIndex:I

    iput p1, v0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffsetIndex:I

    .line 155
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 157
    :goto_3c
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    invoke-virtual {p1, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    goto :goto_79

    :cond_42
    if-eqz v2, :cond_63

    .line 160
    iget-wide v0, v0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffset:J

    iput-wide v0, p1, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffset:J

    .line 161
    iget v0, p1, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffsetIndex:I

    .line 162
    :goto_4a
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    iget v2, v1, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->length:I

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_60

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->offsets:[J

    add-int/lit8 v2, v0, 0x1

    aget-wide v3, v1, v2

    iget-wide v5, p1, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffset:J

    cmp-long v1, v3, v5

    if-gtz v1, :cond_60

    move v0, v2

    goto :goto_4a

    .line 166
    :cond_60
    iput v0, p1, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffsetIndex:I

    goto :goto_79

    .line 169
    :cond_63
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->offsets:[J

    iget-wide v1, v0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffset:J

    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result p1

    if-gez p1, :cond_72

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x2

    .line 170
    :cond_72
    iput p1, v0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffsetIndex:I

    .line 171
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :goto_79
    return-void
.end method

.method private regionsConnect(Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;)Z
    .registers 6

    if-eqz p1, :cond_e

    if-eqz p2, :cond_e

    .line 176
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffset:J

    iget-wide p1, p2, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->startOffset:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method


# virtual methods
.method public declared-synchronized getRegionEndTimeMs(J)I
    .registers 11

    monitor-enter p0

    .line 81
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->lookupRegion:Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;

    iput-wide p1, v0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->startOffset:J

    .line 82
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;

    const/4 v1, -0x1

    if-eqz v0, :cond_50

    .line 83
    iget-wide v2, v0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffset:J

    cmp-long v4, p1, v2

    if-gtz v4, :cond_50

    iget p1, v0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffsetIndex:I

    if-ne p1, v1, :cond_1b

    goto :goto_50

    .line 89
    :cond_1b
    iget-object p2, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    iget v0, p2, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->length:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_34

    iget-object v0, p2, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->offsets:[J

    aget-wide v4, v0, p1

    iget-object v0, p2, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->sizes:[I

    aget v0, v0, p1
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_52

    int-to-long v0, v0

    add-long/2addr v4, v0

    cmp-long v0, v2, v4

    if-nez v0, :cond_34

    const/4 p1, -0x2

    .line 91
    monitor-exit p0

    return p1

    .line 93
    :cond_34
    :try_start_34
    iget-object v0, p2, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->durationsUs:[J

    aget-wide v4, v0, p1

    iget-object v0, p2, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->offsets:[J

    aget-wide v6, v0, p1

    sub-long/2addr v2, v6

    mul-long v4, v4, v2

    iget-object v0, p2, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->sizes:[I

    aget v0, v0, p1

    int-to-long v0, v0

    div-long/2addr v4, v0

    .line 96
    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->timesUs:[J

    aget-wide p1, p2, p1

    add-long/2addr p1, v4

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0
    :try_end_4d
    .catchall {:try_start_34 .. :try_end_4d} :catchall_52

    long-to-int p2, p1

    monitor-exit p0

    return p2

    .line 86
    :cond_50
    :goto_50
    monitor-exit p0

    return v1

    :catchall_52
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onSpanAdded(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    .registers 3

    monitor-enter p0

    .line 101
    :try_start_1
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->mergeSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 102
    monitor-exit p0

    return-void

    :catchall_6
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onSpanRemoved(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    .registers 9

    monitor-enter p0

    .line 106
    :try_start_1
    new-instance p1, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;

    iget-wide v0, p2, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->position:J

    iget-wide v2, p2, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->length:J

    add-long/2addr v2, v0

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;-><init>(JJ)V

    .line 109
    iget-object p2, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    invoke-virtual {p2, p1}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;

    if-nez p2, :cond_1e

    const-string p1, "CachedRegionTracker"

    const-string p2, "Removed a span we were not aware of"

    .line 111
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_61

    .line 112
    monitor-exit p0

    return-void

    .line 116
    :cond_1e
    :try_start_1e
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    invoke-virtual {v0, p2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 119
    iget-wide v0, p2, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->startOffset:J

    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->startOffset:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_46

    .line 120
    new-instance v4, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;-><init>(JJ)V

    .line 122
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->offsets:[J

    iget-wide v1, v4, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffset:J

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    if-gez v0, :cond_3f

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x2

    .line 123
    :cond_3f
    iput v0, v4, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffsetIndex:I

    .line 124
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    invoke-virtual {v0, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_46
    iget-wide v0, p2, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffset:J

    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffset:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_5f

    .line 128
    new-instance p1, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-direct {p1, v2, v3, v0, v1}, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;-><init>(JJ)V

    .line 129
    iget p2, p2, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffsetIndex:I

    iput p2, p1, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffsetIndex:I

    .line 130
    iget-object p2, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    invoke-virtual {p2, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
    :try_end_5f
    .catchall {:try_start_1e .. :try_end_5f} :catchall_61

    .line 132
    :cond_5f
    monitor-exit p0

    return-void

    :catchall_61
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onSpanTouched(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    .registers 4

    return-void
.end method

.method public release()V
    .registers 3

    .line 67
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->cacheKey:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->removeListener(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;)V

    return-void
.end method
