.class public final Lcom/google/common/cache/CacheStats;
.super Ljava/lang/Object;
.source "CacheStats.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# instance fields
.field private final evictionCount:J

.field private final hitCount:J

.field private final loadExceptionCount:J

.field private final loadSuccessCount:J

.field private final missCount:J

.field private final totalLoadTime:J


# direct methods
.method public constructor <init>(JJJJJJ)V
    .registers 31

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    .line 82
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v13, 0x1

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    cmp-long v17, v1, v15

    if-ltz v17, :cond_1c

    const/16 v17, 0x1

    goto :goto_1e

    :cond_1c
    const/16 v17, 0x0

    .line 83
    :goto_1e
    invoke-static/range {v17 .. v17}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    cmp-long v17, v3, v15

    if-ltz v17, :cond_28

    const/16 v17, 0x1

    goto :goto_2a

    :cond_28
    const/16 v17, 0x0

    .line 84
    :goto_2a
    invoke-static/range {v17 .. v17}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    cmp-long v17, v5, v15

    if-ltz v17, :cond_34

    const/16 v17, 0x1

    goto :goto_36

    :cond_34
    const/16 v17, 0x0

    .line 85
    :goto_36
    invoke-static/range {v17 .. v17}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    cmp-long v17, v7, v15

    if-ltz v17, :cond_40

    const/16 v17, 0x1

    goto :goto_42

    :cond_40
    const/16 v17, 0x0

    .line 86
    :goto_42
    invoke-static/range {v17 .. v17}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    cmp-long v17, v9, v15

    if-ltz v17, :cond_4c

    const/16 v17, 0x1

    goto :goto_4e

    :cond_4c
    const/16 v17, 0x0

    .line 87
    :goto_4e
    invoke-static/range {v17 .. v17}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    cmp-long v17, v11, v15

    if-ltz v17, :cond_56

    goto :goto_57

    :cond_56
    const/4 v13, 0x0

    .line 88
    :goto_57
    invoke-static {v13}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 90
    iput-wide v1, v0, Lcom/google/common/cache/CacheStats;->hitCount:J

    .line 91
    iput-wide v3, v0, Lcom/google/common/cache/CacheStats;->missCount:J

    .line 92
    iput-wide v5, v0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    .line 93
    iput-wide v7, v0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    .line 94
    iput-wide v9, v0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    .line 95
    iput-wide v11, v0, Lcom/google/common/cache/CacheStats;->evictionCount:J

    return-void
.end method


# virtual methods
.method public averageLoadPenalty()D
    .registers 6

    .line 207
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_e

    const-wide/16 v0, 0x0

    goto :goto_14

    .line 208
    :cond_e
    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    long-to-double v2, v2

    long-to-double v0, v0

    div-double v0, v2, v0

    :goto_14
    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 258
    instance-of v0, p1, Lcom/google/common/cache/CacheStats;

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    .line 259
    check-cast p1, Lcom/google/common/cache/CacheStats;

    .line 260
    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->hitCount:J

    iget-wide v4, p1, Lcom/google/common/cache/CacheStats;->hitCount:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_38

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->missCount:J

    iget-wide v4, p1, Lcom/google/common/cache/CacheStats;->missCount:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_38

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    iget-wide v4, p1, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_38

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    iget-wide v4, p1, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_38

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    iget-wide v4, p1, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_38

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->evictionCount:J

    iget-wide v4, p1, Lcom/google/common/cache/CacheStats;->evictionCount:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_38

    const/4 v1, 0x1

    :cond_38
    return v1
.end method

.method public evictionCount()J
    .registers 3

    .line 216
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->evictionCount:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 252
    iget-wide v1, p0, Lcom/google/common/cache/CacheStats;->hitCount:J

    .line 253
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/common/cache/CacheStats;->missCount:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/common/cache/CacheStats;->evictionCount:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 252
    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public hitCount()J
    .registers 3

    .line 108
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->hitCount:J

    return-wide v0
.end method

.method public hitRate()D
    .registers 6

    .line 117
    invoke-virtual {p0}, Lcom/google/common/cache/CacheStats;->requestCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_d

    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    goto :goto_13

    .line 118
    :cond_d
    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->hitCount:J

    long-to-double v2, v2

    long-to-double v0, v0

    div-double v0, v2, v0

    :goto_13
    return-wide v0
.end method

.method public loadCount()J
    .registers 5

    .line 151
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public loadExceptionCount()J
    .registers 3

    .line 179
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    return-wide v0
.end method

.method public loadExceptionRate()D
    .registers 8

    .line 188
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    add-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_e

    const-wide/16 v0, 0x0

    goto :goto_12

    :cond_e
    long-to-double v2, v2

    long-to-double v0, v0

    div-double v0, v2, v0

    :goto_12
    return-wide v0
.end method

.method public loadSuccessCount()J
    .registers 3

    .line 165
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    return-wide v0
.end method

.method public minus(Lcom/google/common/cache/CacheStats;)Lcom/google/common/cache/CacheStats;
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 225
    new-instance v14, Lcom/google/common/cache/CacheStats;

    iget-wide v2, v0, Lcom/google/common/cache/CacheStats;->hitCount:J

    iget-wide v4, v1, Lcom/google/common/cache/CacheStats;->hitCount:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    .line 226
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iget-wide v6, v0, Lcom/google/common/cache/CacheStats;->missCount:J

    iget-wide v8, v1, Lcom/google/common/cache/CacheStats;->missCount:J

    sub-long/2addr v6, v8

    .line 227
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iget-wide v8, v0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    iget-wide v10, v1, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    sub-long/2addr v8, v10

    .line 228
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iget-wide v10, v0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    iget-wide v12, v1, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    sub-long/2addr v10, v12

    .line 229
    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    iget-wide v12, v0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    move-wide v15, v10

    iget-wide v10, v1, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    sub-long/2addr v12, v10

    .line 230
    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    iget-wide v12, v0, Lcom/google/common/cache/CacheStats;->evictionCount:J

    iget-wide v0, v1, Lcom/google/common/cache/CacheStats;->evictionCount:J

    sub-long/2addr v12, v0

    .line 231
    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    move-object v1, v14

    move-wide v4, v6

    move-wide v6, v8

    move-wide v8, v15

    invoke-direct/range {v1 .. v13}, Lcom/google/common/cache/CacheStats;-><init>(JJJJJJ)V

    return-object v14
.end method

.method public missCount()J
    .registers 3

    .line 128
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->missCount:J

    return-wide v0
.end method

.method public missRate()D
    .registers 6

    .line 141
    invoke-virtual {p0}, Lcom/google/common/cache/CacheStats;->requestCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_d

    const-wide/16 v0, 0x0

    goto :goto_13

    .line 142
    :cond_d
    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->missCount:J

    long-to-double v2, v2

    long-to-double v0, v0

    div-double v0, v2, v0

    :goto_13
    return-wide v0
.end method

.method public plus(Lcom/google/common/cache/CacheStats;)Lcom/google/common/cache/CacheStats;
    .registers 17

    move-object v0, p0

    move-object/from16 v1, p1

    .line 241
    new-instance v14, Lcom/google/common/cache/CacheStats;

    iget-wide v2, v0, Lcom/google/common/cache/CacheStats;->hitCount:J

    iget-wide v4, v1, Lcom/google/common/cache/CacheStats;->hitCount:J

    add-long/2addr v2, v4

    iget-wide v4, v0, Lcom/google/common/cache/CacheStats;->missCount:J

    iget-wide v6, v1, Lcom/google/common/cache/CacheStats;->missCount:J

    add-long/2addr v4, v6

    iget-wide v6, v0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    iget-wide v8, v1, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    add-long/2addr v6, v8

    iget-wide v8, v0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    iget-wide v10, v1, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    add-long/2addr v8, v10

    iget-wide v10, v0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    iget-wide v12, v1, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    add-long/2addr v10, v12

    iget-wide v12, v0, Lcom/google/common/cache/CacheStats;->evictionCount:J

    iget-wide v0, v1, Lcom/google/common/cache/CacheStats;->evictionCount:J

    add-long/2addr v12, v0

    move-object v1, v14

    invoke-direct/range {v1 .. v13}, Lcom/google/common/cache/CacheStats;-><init>(JJJJJJ)V

    return-object v14
.end method

.method public requestCount()J
    .registers 5

    .line 103
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->hitCount:J

    iget-wide v2, p0, Lcom/google/common/cache/CacheStats;->missCount:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 272
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/common/cache/CacheStats;->hitCount:J

    const-string v3, "hitCount"

    .line 273
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/common/cache/CacheStats;->missCount:J

    const-string v3, "missCount"

    .line 274
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/common/cache/CacheStats;->loadSuccessCount:J

    const-string v3, "loadSuccessCount"

    .line 275
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/common/cache/CacheStats;->loadExceptionCount:J

    const-string v3, "loadExceptionCount"

    .line 276
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    const-string v3, "totalLoadTime"

    .line 277
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/common/cache/CacheStats;->evictionCount:J

    const-string v3, "evictionCount"

    .line 278
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 279
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public totalLoadTime()J
    .registers 3

    .line 199
    iget-wide v0, p0, Lcom/google/common/cache/CacheStats;->totalLoadTime:J

    return-wide v0
.end method
