.class final Lcom/google/android/exoplayer2/source/MergingMediaSource$ClippedTimeline;
.super Lcom/google/android/exoplayer2/source/ForwardingTimeline;
.source "MergingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/MergingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ClippedTimeline"
.end annotation


# instance fields
.field private final periodDurationsUs:[J

.field private final windowDurationsUs:[J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/Timeline;Ljava/util/Map;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/Timeline;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 311
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/ForwardingTimeline;-><init>(Lcom/google/android/exoplayer2/Timeline;)V

    .line 312
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v0

    .line 313
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v1

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource$ClippedTimeline;->windowDurationsUs:[J

    .line 314
    new-instance v1, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v0, :cond_25

    .line 316
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource$ClippedTimeline;->windowDurationsUs:[J

    invoke-virtual {p1, v3, v1}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v5

    iget-wide v5, v5, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 318
    :cond_25
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v0

    .line 319
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource$ClippedTimeline;->periodDurationsUs:[J

    .line 320
    new-instance v1, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    :goto_32
    if-ge v2, v0, :cond_71

    const/4 v3, 0x1

    .line 322
    invoke-virtual {p1, v2, v1, v3}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 323
    iget-object v3, v1, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 324
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource$ClippedTimeline;->periodDurationsUs:[J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v3, v6

    if-eqz v8, :cond_53

    goto :goto_55

    .line 325
    :cond_53
    iget-wide v3, v1, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    :goto_55
    aput-wide v3, v5, v2

    .line 326
    iget-wide v3, v1, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    const-wide v6, -0x7fffffffffffffffL  # -4.9E-324

    cmp-long v8, v3, v6

    if-eqz v8, :cond_6e

    .line 327
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource$ClippedTimeline;->windowDurationsUs:[J

    iget v7, v1, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    aget-wide v8, v6, v7

    aget-wide v10, v5, v2

    sub-long/2addr v3, v10

    sub-long/2addr v8, v3

    aput-wide v8, v6, v7

    :cond_6e
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    :cond_71
    return-void
.end method


# virtual methods
.method public getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;
    .registers 6

    .line 345
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/ForwardingTimeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 346
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource$ClippedTimeline;->periodDurationsUs:[J

    aget-wide v0, p3, p1

    iput-wide v0, p2, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    return-object p2
.end method

.method public getWindow(ILcom/google/android/exoplayer2/Timeline$Window;J)Lcom/google/android/exoplayer2/Timeline$Window;
    .registers 9

    .line 334
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/ForwardingTimeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;J)Lcom/google/android/exoplayer2/Timeline$Window;

    .line 335
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource$ClippedTimeline;->windowDurationsUs:[J

    aget-wide v0, p3, p1

    iput-wide v0, p2, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    const-wide p3, -0x7fffffffffffffffL  # -4.9E-324

    cmp-long p1, v0, p3

    if-eqz p1, :cond_1e

    .line 337
    iget-wide v2, p2, Lcom/google/android/exoplayer2/Timeline$Window;->defaultPositionUs:J

    cmp-long p1, v2, p3

    if-nez p1, :cond_19

    goto :goto_1e

    .line 339
    :cond_19
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    goto :goto_20

    .line 338
    :cond_1e
    :goto_1e
    iget-wide p3, p2, Lcom/google/android/exoplayer2/Timeline$Window;->defaultPositionUs:J

    .line 339
    :goto_20
    iput-wide p3, p2, Lcom/google/android/exoplayer2/Timeline$Window;->defaultPositionUs:J

    return-object p2
.end method
