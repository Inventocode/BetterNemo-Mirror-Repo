.class public abstract Lcom/google/android/exoplayer2/BasePlayer;
.super Ljava/lang/Object;
.source "BasePlayer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Player;


# instance fields
.field protected final window:Lcom/google/android/exoplayer2/Timeline$Window;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    return-void
.end method

.method private getRepeatModeForNavigation()I
    .registers 3

    .line 418
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getRepeatMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x0

    :cond_8
    return v0
.end method

.method private seekToOffset(J)V
    .registers 8

    .line 423
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v0

    add-long/2addr v0, p1

    .line 424
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getDuration()J

    move-result-wide p1

    const-wide v2, -0x7fffffffffffffffL  # -4.9E-324

    cmp-long v4, p1, v2

    if-eqz v4, :cond_16

    .line 426
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_16
    const-wide/16 p1, 0x0

    .line 428
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 429
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/BasePlayer;->seekTo(J)V

    return-void
.end method


# virtual methods
.method public final addMediaItem(ILcom/google/android/exoplayer2/MediaItem;)V
    .registers 3

    .line 57
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/google/android/exoplayer2/Player;->addMediaItems(ILjava/util/List;)V

    return-void
.end method

.method public final addMediaItem(Lcom/google/android/exoplayer2/MediaItem;)V
    .registers 2

    .line 62
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/BasePlayer;->addMediaItems(Ljava/util/List;)V

    return-void
.end method

.method public final addMediaItems(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaItem;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7fffffff

    .line 67
    invoke-interface {p0, v0, p1}, Lcom/google/android/exoplayer2/Player;->addMediaItems(ILjava/util/List;)V

    return-void
.end method

.method public final canAdvertiseSession()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final clearMediaItems()V
    .registers 3

    const/4 v0, 0x0

    const v1, 0x7fffffff

    .line 84
    invoke-interface {p0, v0, v1}, Lcom/google/android/exoplayer2/Player;->removeMediaItems(II)V

    return-void
.end method

.method protected getAvailableCommands(Lcom/google/android/exoplayer2/Player$Commands;)Lcom/google/android/exoplayer2/Player$Commands;
    .registers 6

    .line 392
    new-instance v0, Lcom/google/android/exoplayer2/Player$Commands$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Player$Commands$Builder;-><init>()V

    .line 393
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->addAll(Lcom/google/android/exoplayer2/Player$Commands;)Lcom/google/android/exoplayer2/Player$Commands$Builder;

    move-result-object p1

    .line 394
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->isPlayingAd()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->addIf(IZ)Lcom/google/android/exoplayer2/Player$Commands$Builder;

    move-result-object p1

    const/4 v0, 0x5

    .line 395
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->isCurrentMediaItemSeekable()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_24

    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->isPlayingAd()Z

    move-result v2

    if-nez v2, :cond_24

    const/4 v2, 0x1

    goto :goto_25

    :cond_24
    const/4 v2, 0x0

    :goto_25
    invoke-virtual {p1, v0, v2}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->addIf(IZ)Lcom/google/android/exoplayer2/Player$Commands$Builder;

    move-result-object p1

    const/4 v0, 0x6

    .line 396
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->hasPreviousMediaItem()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->isPlayingAd()Z

    move-result v2

    if-nez v2, :cond_38

    const/4 v2, 0x1

    goto :goto_39

    :cond_38
    const/4 v2, 0x0

    :goto_39
    invoke-virtual {p1, v0, v2}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->addIf(IZ)Lcom/google/android/exoplayer2/Player$Commands$Builder;

    move-result-object p1

    const/4 v0, 0x7

    .line 399
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_62

    .line 400
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->hasPreviousMediaItem()Z

    move-result v2

    if-nez v2, :cond_5a

    .line 401
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->isCurrentMediaItemLive()Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 402
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->isCurrentMediaItemSeekable()Z

    move-result v2

    if-eqz v2, :cond_62

    .line 403
    :cond_5a
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->isPlayingAd()Z

    move-result v2

    if-nez v2, :cond_62

    const/4 v2, 0x1

    goto :goto_63

    :cond_62
    const/4 v2, 0x0

    .line 397
    :goto_63
    invoke-virtual {p1, v0, v2}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->addIf(IZ)Lcom/google/android/exoplayer2/Player$Commands$Builder;

    move-result-object p1

    const/16 v0, 0x8

    .line 404
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->hasNextMediaItem()Z

    move-result v2

    if-eqz v2, :cond_77

    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->isPlayingAd()Z

    move-result v2

    if-nez v2, :cond_77

    const/4 v2, 0x1

    goto :goto_78

    :cond_77
    const/4 v2, 0x0

    :goto_78
    invoke-virtual {p1, v0, v2}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->addIf(IZ)Lcom/google/android/exoplayer2/Player$Commands$Builder;

    move-result-object p1

    const/16 v0, 0x9

    .line 407
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a2

    .line 408
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->hasNextMediaItem()Z

    move-result v2

    if-nez v2, :cond_9a

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->isCurrentMediaItemLive()Z

    move-result v2

    if-eqz v2, :cond_a2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->isCurrentMediaItemDynamic()Z

    move-result v2

    if-eqz v2, :cond_a2

    .line 409
    :cond_9a
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->isPlayingAd()Z

    move-result v2

    if-nez v2, :cond_a2

    const/4 v2, 0x1

    goto :goto_a3

    :cond_a2
    const/4 v2, 0x0

    .line 405
    :goto_a3
    invoke-virtual {p1, v0, v2}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->addIf(IZ)Lcom/google/android/exoplayer2/Player$Commands$Builder;

    move-result-object p1

    const/16 v0, 0xa

    .line 410
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->isPlayingAd()Z

    move-result v2

    xor-int/2addr v2, v1

    invoke-virtual {p1, v0, v2}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->addIf(IZ)Lcom/google/android/exoplayer2/Player$Commands$Builder;

    move-result-object p1

    const/16 v0, 0xb

    .line 411
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->isCurrentMediaItemSeekable()Z

    move-result v2

    if-eqz v2, :cond_c2

    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->isPlayingAd()Z

    move-result v2

    if-nez v2, :cond_c2

    const/4 v2, 0x1

    goto :goto_c3

    :cond_c2
    const/4 v2, 0x0

    :goto_c3
    invoke-virtual {p1, v0, v2}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->addIf(IZ)Lcom/google/android/exoplayer2/Player$Commands$Builder;

    move-result-object p1

    const/16 v0, 0xc

    .line 412
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->isCurrentMediaItemSeekable()Z

    move-result v2

    if-eqz v2, :cond_d6

    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->isPlayingAd()Z

    move-result v2

    if-nez v2, :cond_d6

    goto :goto_d7

    :cond_d6
    const/4 v1, 0x0

    :goto_d7
    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->addIf(IZ)Lcom/google/android/exoplayer2/Player$Commands$Builder;

    move-result-object p1

    .line 413
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->build()Lcom/google/android/exoplayer2/Player$Commands;

    move-result-object p1

    return-object p1
.end method

.method public final getBufferedPercentage()I
    .registers 10

    .line 320
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getBufferedPosition()J

    move-result-wide v0

    .line 321
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getDuration()J

    move-result-wide v2

    const/16 v4, 0x64

    const/4 v5, 0x0

    const-wide v6, -0x7fffffffffffffffL  # -4.9E-324

    cmp-long v8, v0, v6

    if-eqz v8, :cond_2b

    cmp-long v8, v2, v6

    if-nez v8, :cond_19

    goto :goto_2b

    :cond_19
    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-nez v8, :cond_20

    goto :goto_2c

    :cond_20
    const-wide/16 v6, 0x64

    mul-long v0, v0, v6

    .line 324
    div-long/2addr v0, v2

    long-to-int v1, v0

    invoke-static {v1, v5, v4}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v4

    goto :goto_2c

    :cond_2b
    :goto_2b
    const/4 v4, 0x0

    :goto_2c
    return v4
.end method

.method public final getContentDuration()J
    .registers 4

    .line 379
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 380
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    const-wide v0, -0x7fffffffffffffffL  # -4.9E-324

    goto :goto_1e

    .line 382
    :cond_10
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline$Window;->getDurationMs()J

    move-result-wide v0

    :goto_1e
    return-wide v0
.end method

.method public final getCurrentLiveOffset()J
    .registers 6

    .line 353
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 354
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    const-wide v2, -0x7fffffffffffffffL  # -4.9E-324

    if-eqz v1, :cond_10

    return-wide v2

    .line 358
    :cond_10
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v4, p0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v1, v4}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/Timeline$Window;->windowStartTimeMs:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_21

    return-wide v2

    .line 362
    :cond_21
    iget-object v0, p0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline$Window;->getCurrentUnixTimeMs()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/Timeline$Window;->windowStartTimeMs:J

    sub-long/2addr v0, v2

    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getContentPosition()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final getCurrentManifest()Ljava/lang/Object;
    .registers 4

    .line 312
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 313
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v0, 0x0

    goto :goto_18

    .line 315
    :cond_c
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/Timeline$Window;->manifest:Ljava/lang/Object;

    :goto_18
    return-object v0
.end method

.method public final getCurrentMediaItem()Lcom/google/android/exoplayer2/MediaItem;
    .registers 4

    .line 293
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 294
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v0, 0x0

    goto :goto_18

    .line 296
    :cond_c
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/Timeline$Window;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    :goto_18
    return-object v0
.end method

.method public final getCurrentWindowIndex()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 257
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getCurrentMediaItemIndex()I

    move-result v0

    return v0
.end method

.method public final getMediaItemAt(I)Lcom/google/android/exoplayer2/MediaItem;
    .registers 4

    .line 306
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/exoplayer2/Timeline$Window;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    return-object p1
.end method

.method public final getMediaItemCount()I
    .registers 2

    .line 301
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v0

    return v0
.end method

.method public final getNextMediaItemIndex()I
    .registers 5

    .line 268
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 269
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v0, -0x1

    goto :goto_1c

    .line 272
    :cond_c
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getCurrentMediaItemIndex()I

    move-result v1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getRepeatModeForNavigation()I

    move-result v2

    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getShuffleModeEnabled()Z

    move-result v3

    .line 271
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/Timeline;->getNextWindowIndex(IIZ)I

    move-result v0

    :goto_1c
    return v0
.end method

.method public final getNextWindowIndex()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 263
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getNextMediaItemIndex()I

    move-result v0

    return v0
.end method

.method public final getPreviousMediaItemIndex()I
    .registers 5

    .line 283
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 284
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v0, -0x1

    goto :goto_1c

    .line 287
    :cond_c
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getCurrentMediaItemIndex()I

    move-result v1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getRepeatModeForNavigation()I

    move-result v2

    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getShuffleModeEnabled()Z

    move-result v3

    .line 286
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/Timeline;->getPreviousWindowIndex(IIZ)I

    move-result v0

    :goto_1c
    return v0
.end method

.method public final getPreviousWindowIndex()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 278
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getPreviousMediaItemIndex()I

    move-result v0

    return v0
.end method

.method public final hasNext()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 202
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->hasNextMediaItem()Z

    move-result v0

    return v0
.end method

.method public final hasNextMediaItem()Z
    .registers 3

    .line 213
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getNextMediaItemIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public final hasNextWindow()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 208
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->hasNextMediaItem()Z

    move-result v0

    return v0
.end method

.method public final hasPrevious()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 147
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->hasPreviousMediaItem()Z

    move-result v0

    return v0
.end method

.method public final hasPreviousMediaItem()Z
    .registers 3

    .line 158
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getPreviousMediaItemIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public final hasPreviousWindow()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 153
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->hasPreviousMediaItem()Z

    move-result v0

    return v0
.end method

.method public final isCommandAvailable(I)Z
    .registers 3

    .line 89
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getAvailableCommands()Lcom/google/android/exoplayer2/Player$Commands;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/Player$Commands;->contains(I)Z

    move-result p1

    return p1
.end method

.method public final isCurrentMediaItemDynamic()Z
    .registers 4

    .line 335
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 336
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public final isCurrentMediaItemLive()Z
    .registers 4

    .line 347
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 348
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline$Window;->isLive()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return v0
.end method

.method public final isCurrentMediaItemSeekable()Z
    .registers 4

    .line 373
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 374
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/Timeline$Window;->isSeekable:Z

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public final isCurrentWindowDynamic()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 330
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->isCurrentMediaItemDynamic()Z

    move-result v0

    return v0
.end method

.method public final isCurrentWindowLive()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 342
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->isCurrentMediaItemLive()Z

    move-result v0

    return v0
.end method

.method public final isCurrentWindowSeekable()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 368
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->isCurrentMediaItemSeekable()Z

    move-result v0

    return v0
.end method

.method public final isPlaying()Z
    .registers 3

    .line 114
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_15

    .line 115
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 116
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getPlaybackSuppressionReason()I

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0
.end method

.method public final moveMediaItem(II)V
    .registers 4

    if-eq p1, p2, :cond_7

    add-int/lit8 v0, p1, 0x1

    .line 73
    invoke-interface {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/Player;->moveMediaItems(III)V

    :cond_7
    return-void
.end method

.method public final next()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 219
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->seekToNextMediaItem()V

    return-void
.end method

.method public final pause()V
    .registers 2

    const/4 v0, 0x0

    .line 109
    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    return-void
.end method

.method public final play()V
    .registers 2

    const/4 v0, 0x1

    .line 104
    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    return-void
.end method

.method public final previous()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 164
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->seekToPreviousMediaItem()V

    return-void
.end method

.method public final removeMediaItem(I)V
    .registers 3

    add-int/lit8 v0, p1, 0x1

    .line 79
    invoke-interface {p0, p1, v0}, Lcom/google/android/exoplayer2/Player;->removeMediaItems(II)V

    return-void
.end method

.method public final seekBack()V
    .registers 3

    .line 136
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getSeekBackIncrement()J

    move-result-wide v0

    neg-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/BasePlayer;->seekToOffset(J)V

    return-void
.end method

.method public final seekForward()V
    .registers 3

    .line 141
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getSeekForwardIncrement()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/BasePlayer;->seekToOffset(J)V

    return-void
.end method

.method public final seekTo(J)V
    .registers 4

    .line 131
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getCurrentMediaItemIndex()I

    move-result v0

    invoke-interface {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/Player;->seekTo(IJ)V

    return-void
.end method

.method public final seekToDefaultPosition()V
    .registers 2

    .line 121
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getCurrentMediaItemIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/BasePlayer;->seekToDefaultPosition(I)V

    return-void
.end method

.method public final seekToDefaultPosition(I)V
    .registers 4

    const-wide v0, -0x7fffffffffffffffL  # -4.9E-324

    .line 126
    invoke-interface {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/Player;->seekTo(IJ)V

    return-void
.end method

.method public final seekToNext()V
    .registers 2

    .line 238
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 239
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_2a

    .line 242
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->hasNextMediaItem()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 243
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->seekToNextMediaItem()V

    goto :goto_2a

    .line 244
    :cond_1b
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->isCurrentMediaItemLive()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->isCurrentMediaItemDynamic()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 245
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->seekToDefaultPosition()V

    :cond_2a
    :goto_2a
    return-void
.end method

.method public final seekToNextMediaItem()V
    .registers 3

    .line 230
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getNextMediaItemIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    .line 232
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/BasePlayer;->seekToDefaultPosition(I)V

    :cond_a
    return-void
.end method

.method public final seekToNextWindow()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 225
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->seekToNextMediaItem()V

    return-void
.end method

.method public final seekToPrevious()V
    .registers 6

    .line 183
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3e

    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_3e

    .line 187
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->hasPreviousMediaItem()Z

    move-result v0

    .line 188
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->isCurrentMediaItemLive()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->isCurrentMediaItemSeekable()Z

    move-result v1

    if-nez v1, :cond_27

    if-eqz v0, :cond_3e

    .line 190
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->seekToPreviousMediaItem()V

    goto :goto_3e

    :cond_27
    if-eqz v0, :cond_39

    .line 192
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getMaxSeekToPreviousPosition()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_39

    .line 193
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->seekToPreviousMediaItem()V

    goto :goto_3e

    :cond_39
    const-wide/16 v0, 0x0

    .line 195
    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/BasePlayer;->seekTo(J)V

    :cond_3e
    :goto_3e
    return-void
.end method

.method public final seekToPreviousMediaItem()V
    .registers 3

    .line 175
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getPreviousMediaItemIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    .line 177
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/BasePlayer;->seekToDefaultPosition(I)V

    :cond_a
    return-void
.end method

.method public final seekToPreviousWindow()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 170
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->seekToPreviousMediaItem()V

    return-void
.end method

.method public final setMediaItem(Lcom/google/android/exoplayer2/MediaItem;)V
    .registers 2

    .line 37
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/BasePlayer;->setMediaItems(Ljava/util/List;)V

    return-void
.end method

.method public final setMediaItem(Lcom/google/android/exoplayer2/MediaItem;J)V
    .registers 5

    .line 42
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0, p2, p3}, Lcom/google/android/exoplayer2/Player;->setMediaItems(Ljava/util/List;IJ)V

    return-void
.end method

.method public final setMediaItem(Lcom/google/android/exoplayer2/MediaItem;Z)V
    .registers 3

    .line 47
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lcom/google/android/exoplayer2/Player;->setMediaItems(Ljava/util/List;Z)V

    return-void
.end method

.method public final setMediaItems(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaItem;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 52
    invoke-interface {p0, p1, v0}, Lcom/google/android/exoplayer2/Player;->setMediaItems(Ljava/util/List;Z)V

    return-void
.end method

.method public final setPlaybackSpeed(F)V
    .registers 3

    .line 251
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/PlaybackParameters;->withSpeed(F)Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/Player;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    return-void
.end method
