.class public final Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;
.super Lcom/google/android/exoplayer2/source/BaseMediaSource;
.source "HlsMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PrimaryPlaylistListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;,
        Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$MetadataType;
    }
.end annotation


# static fields
.field public static final METADATA_TYPE_EMSG:I = 0x3

.field public static final METADATA_TYPE_ID3:I = 0x1


# instance fields
.field private final allowChunklessPreparation:Z

.field private final compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

.field private final dataSourceFactory:Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;

.field private final drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

.field private final elapsedRealTimeOffsetMs:J

.field private final extractorFactory:Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;

.field private liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

.field private final loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

.field private final localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

.field private final mediaItem:Lcom/google/android/exoplayer2/MediaItem;

.field private mediaTransferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

.field private final metadataType:I

.field private final playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

.field private final useSessionKeys:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "goog.exo.hls"

    .line 71
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;->registerModule(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;JZIZ)V
    .registers 14

    .line 441
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/BaseMediaSource;-><init>()V

    .line 442
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    .line 443
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    .line 444
    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaItem;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    .line 445
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->dataSourceFactory:Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;

    .line 446
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->extractorFactory:Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;

    .line 447
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    .line 448
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    .line 449
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 450
    iput-object p7, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 451
    iput-wide p8, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->elapsedRealTimeOffsetMs:J

    .line 452
    iput-boolean p10, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->allowChunklessPreparation:Z

    .line 453
    iput p11, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->metadataType:I

    .line 454
    iput-boolean p12, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->useSessionKeys:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;JZIZLcom/google/android/exoplayer2/source/hls/HlsMediaSource$1;)V
    .registers 14

    .line 67
    invoke-direct/range {p0 .. p12}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;-><init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;JZIZ)V

    return-void
.end method

.method private createTimelineForLive(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;JJLcom/google/android/exoplayer2/source/hls/HlsManifest;)Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;
    .registers 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 536
    iget-wide v2, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 537
    invoke-interface {v4}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->getInitialStartTimeUs()J

    move-result-wide v4

    sub-long v17, v2, v4

    .line 539
    iget-boolean v2, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    const-wide v3, -0x7fffffffffffffffL  # -4.9E-324

    if-eqz v2, :cond_1d

    iget-wide v5, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    add-long v5, v17, v5

    move-wide v13, v5

    goto :goto_1e

    :cond_1d
    move-wide v13, v3

    .line 540
    :goto_1e
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->getLiveEdgeOffsetUs(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)J

    move-result-wide v11

    .line 542
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget-wide v5, v2, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->targetOffsetMs:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_2f

    .line 544
    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v2

    goto :goto_33

    .line 547
    :cond_2f
    invoke-static {v1, v11, v12}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->getTargetLiveOffsetUs(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;J)J

    move-result-wide v2

    :goto_33
    move-wide v5, v2

    .line 550
    iget-wide v2, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    add-long v9, v2, v11

    move-wide v7, v11

    .line 551
    invoke-static/range {v5 .. v10}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(JJJ)J

    move-result-wide v2

    .line 553
    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->maybeUpdateLiveConfiguration(J)V

    .line 555
    invoke-direct {v0, v1, v11, v12}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->getLiveWindowDefaultStartPositionUs(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;J)J

    move-result-wide v19

    .line 556
    iget v2, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->playlistType:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v3, :cond_51

    iget-boolean v2, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasPositiveStartOffset:Z

    if-eqz v2, :cond_51

    const/16 v23, 0x1

    goto :goto_54

    :cond_51
    const/4 v2, 0x0

    const/16 v23, 0x0

    .line 559
    :goto_54
    new-instance v2, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;

    const-wide v11, -0x7fffffffffffffffL  # -4.9E-324

    iget-wide v9, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    const/16 v21, 0x1

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    xor-int/lit8 v22, v1, 0x1

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    move-object/from16 v26, v1

    move-object v6, v2

    move-wide/from16 v7, p2

    move-wide v3, v9

    move-wide/from16 v9, p4

    move-wide v15, v3

    move-object/from16 v24, p6

    invoke-direct/range {v6 .. v26}, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;-><init>(JJJJJJJZZZLjava/lang/Object;Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;)V

    return-object v2
.end method

.method private createTimelineForOnDemand(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;JJLcom/google/android/exoplayer2/source/hls/HlsManifest;)Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;
    .registers 31

    move-object/from16 v0, p1

    .line 581
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startOffsetUs:J

    const-wide v3, -0x7fffffffffffffffL  # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2f

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_2f

    .line 584
    :cond_16
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->preciseStart:Z

    if-nez v1, :cond_2c

    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startOffsetUs:J

    iget-wide v3, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_23

    goto :goto_2c

    .line 587
    :cond_23
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 588
    invoke-static {v3, v1, v2}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->findClosestPrecedingSegment(Ljava/util/List;J)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    move-result-object v1

    iget-wide v1, v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;->relativeStartTimeUs:J

    goto :goto_31

    .line 585
    :cond_2c
    :goto_2c
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startOffsetUs:J

    goto :goto_31

    :cond_2f
    :goto_2f
    const-wide/16 v1, 0x0

    :goto_31
    move-wide/from16 v16, v1

    .line 592
    new-instance v1, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;

    move-object v3, v1

    const-wide v8, -0x7fffffffffffffffL  # -4.9E-324

    iget-wide v10, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    move-wide v12, v10

    const-wide/16 v14, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    move-object/from16 v22, v2

    const/16 v23, 0x0

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-object/from16 v21, p6

    invoke-direct/range {v3 .. v23}, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;-><init>(JJJJJJJZZZLjava/lang/Object;Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;)V

    return-object v1
.end method

.method private static findClosestPrecedingIndependentPart(Ljava/util/List;J)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;",
            ">;J)",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 689
    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 690
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;

    .line 691
    iget-wide v3, v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;->relativeStartTimeUs:J

    cmp-long v5, v3, p1

    if-gtz v5, :cond_1a

    iget-boolean v5, v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;->isIndependent:Z

    if-eqz v5, :cond_1a

    move-object v0, v2

    goto :goto_1f

    :cond_1a
    cmp-long v2, v3, p1

    if-lez v2, :cond_1f

    goto :goto_22

    :cond_1f
    :goto_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_22
    :goto_22
    return-object v0
.end method

.method private static findClosestPrecedingSegment(Ljava/util/List;J)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;",
            ">;J)",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;"
        }
    .end annotation

    .line 708
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    .line 707
    invoke-static {p0, p1, p2, p2}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor(Ljava/util/List;Ljava/lang/Comparable;ZZ)I

    move-result p1

    .line 709
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    return-object p0
.end method

.method private getLiveEdgeOffsetUs(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)J
    .registers 6

    .line 609
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasProgramDateTime:Z

    if-eqz v0, :cond_14

    .line 610
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->elapsedRealTimeOffsetMs:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->getNowUnixTimeMs(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->getEndTimeUs()J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto :goto_16

    :cond_14
    const-wide/16 v0, 0x0

    :goto_16
    return-wide v0
.end method

.method private getLiveWindowDefaultStartPositionUs(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;J)J
    .registers 9

    .line 617
    iget-wide v0, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startOffsetUs:J

    const-wide v2, -0x7fffffffffffffffL  # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    goto :goto_18

    .line 621
    :cond_c
    iget-wide v0, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    add-long/2addr v0, p2

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget-wide p2, p2, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->targetOffsetMs:J

    invoke-static {p2, p3}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide p2

    sub-long/2addr v0, p2

    .line 622
    :goto_18
    iget-boolean p2, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->preciseStart:Z

    if-eqz p2, :cond_1d

    return-wide v0

    .line 626
    :cond_1d
    iget-object p2, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->trailingParts:Ljava/util/List;

    .line 627
    invoke-static {p2, v0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->findClosestPrecedingIndependentPart(Ljava/util/List;J)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;

    move-result-object p2

    if-eqz p2, :cond_28

    .line 629
    iget-wide p1, p2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;->relativeStartTimeUs:J

    return-wide p1

    .line 631
    :cond_28
    iget-object p2, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_33

    const-wide/16 p1, 0x0

    return-wide p1

    .line 634
    :cond_33
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 635
    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->findClosestPrecedingSegment(Ljava/util/List;J)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    move-result-object p1

    .line 636
    iget-object p2, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->parts:Ljava/util/List;

    invoke-static {p2, v0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->findClosestPrecedingIndependentPart(Ljava/util/List;J)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;

    move-result-object p2

    if-eqz p2, :cond_44

    .line 638
    iget-wide p1, p2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;->relativeStartTimeUs:J

    return-wide p1

    .line 640
    :cond_44
    iget-wide p1, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;->relativeStartTimeUs:J

    return-wide p1
.end method

.method private static getTargetLiveOffsetUs(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;J)J
    .registers 11

    .line 668
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->serverControl:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$ServerControl;

    .line 670
    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startOffsetUs:J

    const-wide v3, -0x7fffffffffffffffL  # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_11

    .line 671
    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    sub-long/2addr v3, v1

    goto :goto_2d

    .line 672
    :cond_11
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$ServerControl;->partHoldBackUs:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1f

    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->partTargetDurationUs:J

    cmp-long v7, v5, v3

    if-eqz v7, :cond_1f

    move-wide v3, v1

    goto :goto_2d

    .line 676
    :cond_1f
    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$ServerControl;->holdBackUs:J

    cmp-long v2, v0, v3

    if-eqz v2, :cond_27

    move-wide v3, v0

    goto :goto_2d

    :cond_27
    const-wide/16 v0, 0x3

    .line 680
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->targetDurationUs:J

    mul-long v3, v2, v0

    :goto_2d
    add-long/2addr v3, p1

    return-wide v3
.end method

.method private maybeUpdateLiveConfiguration(J)V
    .registers 7

    .line 644
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide p1

    .line 645
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget-wide v1, v0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->targetOffsetMs:J

    cmp-long v3, p1, v1

    if-eqz v3, :cond_1a

    .line 647
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->buildUpon()Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->setTargetOffsetMs(J)Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->build()Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    :cond_1a
    return-void
.end method


# virtual methods
.method public createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .registers 21

    move-object/from16 v0, p0

    .line 479
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/BaseMediaSource;->createEventDispatcher(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v9

    .line 480
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/BaseMediaSource;->createDrmEventDispatcher(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    move-result-object v7

    .line 481
    new-instance v15, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->extractorFactory:Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->dataSourceFactory:Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->mediaTransferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v8, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iget-object v11, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->compositeSequenceableLoaderFactory:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    iget-boolean v12, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->allowChunklessPreparation:Z

    iget v13, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->metadataType:I

    iget-boolean v14, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->useSessionKeys:Z

    move-object v1, v15

    move-object/from16 v10, p2

    invoke-direct/range {v1 .. v14}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;-><init>(Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;Lcom/google/android/exoplayer2/source/hls/HlsDataSourceFactory;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/upstream/Allocator;Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;ZIZ)V

    return-object v15
.end method

.method public getMediaItem()Lcom/google/android/exoplayer2/MediaItem;
    .registers 2

    .line 459
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    return-object v0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 474
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->maybeThrowPrimaryPlaylistRefreshError()V

    return-void
.end method

.method public onPrimaryPlaylistRefreshed(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V
    .registers 14

    .line 511
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasProgramDateTime:Z

    const-wide v1, -0x7fffffffffffffffL  # -4.9E-324

    if-eqz v0, :cond_11

    iget-wide v3, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v3

    move-wide v9, v3

    goto :goto_12

    :cond_11
    move-wide v9, v1

    .line 516
    :goto_12
    iget v0, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->playlistType:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1d

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1b

    goto :goto_1d

    :cond_1b
    move-wide v7, v1

    goto :goto_1e

    :cond_1d
    :goto_1d
    move-wide v7, v9

    .line 520
    :goto_1e
    new-instance v11, Lcom/google/android/exoplayer2/source/hls/HlsManifest;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 521
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->getMasterPlaylist()Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

    invoke-direct {v11, v0, p1}, Lcom/google/android/exoplayer2/source/hls/HlsManifest;-><init>(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V

    .line 523
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->isLive()Z

    move-result v0

    if-eqz v0, :cond_3e

    move-object v5, p0

    move-object v6, p1

    .line 524
    invoke-direct/range {v5 .. v11}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->createTimelineForLive(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;JJLcom/google/android/exoplayer2/source/hls/HlsManifest;)Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;

    move-result-object p1

    goto :goto_44

    :cond_3e
    move-object v5, p0

    move-object v6, p1

    .line 526
    invoke-direct/range {v5 .. v11}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->createTimelineForOnDemand(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;JJLcom/google/android/exoplayer2/source/hls/HlsManifest;)Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;

    move-result-object p1

    .line 528
    :goto_44
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/BaseMediaSource;->refreshSourceInfo(Lcom/google/android/exoplayer2/Timeline;)V

    return-void
.end method

.method protected prepareSourceInternal(Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .registers 4

    .line 464
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->mediaTransferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    .line 465
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->prepare()V

    const/4 p1, 0x0

    .line 467
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/BaseMediaSource;->createEventDispatcher(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object p1

    .line 468
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    iget-object v1, v1, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    invoke-interface {v0, v1, p1, p0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->start(Landroid/net/Uri;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PrimaryPlaylistListener;)V

    return-void
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .registers 2

    .line 499
    check-cast p1, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaPeriod;->release()V

    return-void
.end method

.method protected releaseSourceInternal()V
    .registers 2

    .line 504
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->playlistTracker:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->stop()V

    .line 505
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->release()V

    return-void
.end method
