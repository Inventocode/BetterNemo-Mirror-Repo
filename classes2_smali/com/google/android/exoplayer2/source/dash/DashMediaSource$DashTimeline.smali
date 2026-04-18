.class final Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;
.super Lcom/google/android/exoplayer2/Timeline;
.source "DashMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/DashMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DashTimeline"
.end annotation


# instance fields
.field private final elapsedRealtimeEpochOffsetMs:J

.field private final firstPeriodId:I

.field private final liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

.field private final manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

.field private final mediaItem:Lcom/google/android/exoplayer2/MediaItem;

.field private final offsetInFirstPeriodUs:J

.field private final presentationStartTimeMs:J

.field private final windowDefaultStartPositionUs:J

.field private final windowDurationUs:J

.field private final windowStartTimeMs:J


# direct methods
.method public constructor <init>(JJJIJJJLcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;)V
    .registers 24

    move-object v0, p0

    move-object/from16 v1, p14

    move-object/from16 v2, p16

    .line 1242
    invoke-direct {p0}, Lcom/google/android/exoplayer2/Timeline;-><init>()V

    .line 1243
    iget-boolean v3, v1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_10

    const/4 v6, 0x1

    goto :goto_11

    :cond_10
    const/4 v6, 0x0

    :goto_11
    if-ne v3, v6, :cond_14

    goto :goto_15

    :cond_14
    const/4 v4, 0x0

    :goto_15
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    move-wide v3, p1

    .line 1244
    iput-wide v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->presentationStartTimeMs:J

    move-wide v3, p3

    .line 1245
    iput-wide v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->windowStartTimeMs:J

    move-wide v3, p5

    .line 1246
    iput-wide v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->elapsedRealtimeEpochOffsetMs:J

    move v3, p7

    .line 1247
    iput v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->firstPeriodId:I

    move-wide v3, p8

    .line 1248
    iput-wide v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->offsetInFirstPeriodUs:J

    move-wide/from16 v3, p10

    .line 1249
    iput-wide v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->windowDurationUs:J

    move-wide/from16 v3, p12

    .line 1250
    iput-wide v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->windowDefaultStartPositionUs:J

    .line 1251
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move-object/from16 v1, p15

    .line 1252
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    .line 1253
    iput-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    return-void
.end method

.method private getAdjustedWindowDefaultStartPositionUs(J)J
    .registers 13

    .line 1313
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->windowDefaultStartPositionUs:J

    .line 1314
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-static {v2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->isMovingLiveWindow(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;)Z

    move-result v2

    if-nez v2, :cond_b

    return-wide v0

    :cond_b
    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_1e

    add-long/2addr v0, p1

    .line 1319
    iget-wide p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->windowDurationUs:J

    cmp-long v4, v0, p1

    if-lez v4, :cond_1e

    const-wide p1, -0x7fffffffffffffffL  # -4.9E-324

    return-wide p1

    .line 1326
    :cond_1e
    iget-wide p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->offsetInFirstPeriodUs:J

    add-long/2addr p1, v0

    .line 1327
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v6

    const/4 v4, 0x0

    .line 1328
    :goto_29
    iget-object v8, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v4, v8, :cond_41

    cmp-long v8, p1, v6

    if-ltz v8, :cond_41

    sub-long/2addr p1, v6

    add-int/lit8 v4, v4, 0x1

    .line 1332
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v6, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v6

    goto :goto_29

    .line 1334
    :cond_41
    iget-object v8, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 1335
    invoke-virtual {v8, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v4

    const/4 v8, 0x2

    .line 1336
    invoke-virtual {v4, v8}, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->getAdaptationSetIndex(I)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_50

    return-wide v0

    .line 1344
    :cond_50
    iget-object v4, v4, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    .line 1345
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget-object v4, v4, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getIndex()Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    move-result-object v4

    if-eqz v4, :cond_79

    .line 1346
    invoke-interface {v4, v6, v7}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getSegmentCount(J)J

    move-result-wide v8

    cmp-long v5, v8, v2

    if-nez v5, :cond_6f

    goto :goto_79

    .line 1350
    :cond_6f
    invoke-interface {v4, p1, p2, v6, v7}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getSegmentNum(JJ)J

    move-result-wide v2

    .line 1352
    invoke-interface {v4, v2, v3}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getTimeUs(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    sub-long/2addr v0, p1

    :cond_79
    :goto_79
    return-wide v0
.end method

.method private static isMovingLiveWindow(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;)Z
    .registers 6

    .line 1363
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    if-eqz v0, :cond_17

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->minUpdatePeriodMs:J

    const-wide v2, -0x7fffffffffffffffL  # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_17

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->durationMs:J

    cmp-long p0, v0, v2

    if-nez p0, :cond_17

    const/4 p0, 0x1

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    return p0
.end method


# virtual methods
.method public getIndexOfPeriod(Ljava/lang/Object;)I
    .registers 4

    .line 1304
    instance-of v0, p1, Ljava/lang/Integer;

    const/4 v1, -0x1

    if-nez v0, :cond_6

    return v1

    .line 1307
    :cond_6
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1308
    iget v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->firstPeriodId:I

    sub-int/2addr p1, v0

    if-ltz p1, :cond_19

    .line 1309
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->getPeriodCount()I

    move-result v0

    if-lt p1, v0, :cond_18

    goto :goto_19

    :cond_18
    move v1, p1

    :cond_19
    :goto_19
    return v1
.end method

.method public getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;
    .registers 15

    .line 1263
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->getPeriodCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkIndex(III)I

    const/4 v0, 0x0

    if-eqz p3, :cond_15

    .line 1264
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->id:Ljava/lang/String;

    move-object v4, v2

    goto :goto_16

    :cond_15
    move-object v4, v0

    :goto_16
    if-eqz p3, :cond_1f

    .line 1265
    iget p3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->firstPeriodId:I

    add-int/2addr p3, p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_1f
    move-object v5, v0

    const/4 v6, 0x0

    .line 1266
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 1270
    invoke-virtual {p3, p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v7

    iget-object p3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 1271
    invoke-virtual {p3, p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object p1

    iget-wide v2, p1, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object p1

    iget-wide v0, p1, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->offsetInFirstPeriodUs:J

    sub-long v9, v0, v2

    move-object v3, p2

    .line 1266
    invoke-virtual/range {v3 .. v10}, Lcom/google/android/exoplayer2/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJ)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object p1

    return-object p1
.end method

.method public getPeriodCount()I
    .registers 2

    .line 1258
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v0

    return v0
.end method

.method public getUidOfPeriod(I)Ljava/lang/Object;
    .registers 4

    .line 1358
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->getPeriodCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkIndex(III)I

    .line 1359
    iget v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->firstPeriodId:I

    add-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getWindow(ILcom/google/android/exoplayer2/Timeline$Window;J)Lcom/google/android/exoplayer2/Timeline$Window;
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    const/4 v11, 0x1

    move/from16 v3, p1

    .line 1282
    invoke-static {v3, v2, v11}, Lcom/google/android/exoplayer2/util/Assertions;->checkIndex(III)I

    move-wide/from16 v2, p3

    .line 1284
    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->getAdjustedWindowDefaultStartPositionUs(J)J

    move-result-wide v14

    .line 1285
    sget-object v2, Lcom/google/android/exoplayer2/Timeline$Window;->SINGLE_WINDOW_UID:Ljava/lang/Object;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    iget-object v12, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move-object v4, v12

    iget-wide v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->presentationStartTimeMs:J

    iget-wide v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->windowStartTimeMs:J

    iget-wide v9, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->elapsedRealtimeEpochOffsetMs:J

    .line 1293
    invoke-static {v12}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->isMovingLiveWindow(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;)Z

    move-result v12

    iget-object v13, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    move/from16 p1, v12

    iget-wide v11, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->windowDurationUs:J

    move-wide/from16 v16, v11

    .line 1298
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->getPeriodCount()I

    move-result v11

    const/4 v12, 0x1

    add-int/lit8 v19, v11, -0x1

    iget-wide v11, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->offsetInFirstPeriodUs:J

    move-wide/from16 v20, v11

    const/4 v11, 0x1

    const/16 v18, 0x0

    move/from16 v12, p1

    .line 1285
    invoke-virtual/range {v1 .. v21}, Lcom/google/android/exoplayer2/Timeline$Window;->set(Ljava/lang/Object;Lcom/google/android/exoplayer2/MediaItem;Ljava/lang/Object;JJJZZLcom/google/android/exoplayer2/MediaItem$LiveConfiguration;JJIIJ)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v1

    return-object v1
.end method

.method public getWindowCount()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
