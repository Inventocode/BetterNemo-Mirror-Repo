.class final Lcom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$ServerSideInsertedAdsTimeline;
.super Lcom/google/android/exoplayer2/source/ForwardingTimeline;
.source "ServerSideInsertedAdsMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ServerSideInsertedAdsTimeline"
.end annotation


# instance fields
.field private final adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)V
    .registers 6

    .line 908
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/ForwardingTimeline;-><init>(Lcom/google/android/exoplayer2/Timeline;)V

    .line 909
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 910
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result p1

    if-ne p1, v2, :cond_18

    const/4 v1, 0x1

    :cond_18
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 911
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$ServerSideInsertedAdsTimeline;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    return-void
.end method


# virtual methods
.method public getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;
    .registers 16

    .line 941
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/ForwardingTimeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 942
    iget-wide v0, p2, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    const/4 p1, -0x1

    const-wide v2, -0x7fffffffffffffffL  # -4.9E-324

    cmp-long p3, v0, v2

    if-nez p3, :cond_14

    .line 944
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$ServerSideInsertedAdsTimeline;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-wide v0, p3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->contentDurationUs:J

    goto :goto_1a

    .line 946
    :cond_14
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$ServerSideInsertedAdsTimeline;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 947
    invoke-static {v0, v1, p1, p3}, Lcom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsUtil;->getMediaPeriodPositionUsForContent(JILcom/google/android/exoplayer2/source/ads/AdPlaybackState;)J

    move-result-wide v0

    :goto_1a
    move-wide v6, v0

    .line 952
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v0

    neg-long v0, v0

    iget-object p3, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$ServerSideInsertedAdsTimeline;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 951
    invoke-static {v0, v1, p1, p3}, Lcom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsUtil;->getMediaPeriodPositionUsForContent(JILcom/google/android/exoplayer2/source/ads/AdPlaybackState;)J

    move-result-wide v0

    neg-long v8, v0

    .line 955
    iget-object v3, p2, Lcom/google/android/exoplayer2/Timeline$Period;->id:Ljava/lang/Object;

    iget-object v4, p2, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    iget v5, p2, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    iget-object v10, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$ServerSideInsertedAdsTimeline;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-boolean v11, p2, Lcom/google/android/exoplayer2/Timeline$Period;->isPlaceholder:Z

    move-object v2, p2

    invoke-virtual/range {v2 .. v11}, Lcom/google/android/exoplayer2/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJLcom/google/android/exoplayer2/source/ads/AdPlaybackState;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    return-object p2
.end method

.method public getWindow(ILcom/google/android/exoplayer2/Timeline$Window;J)Lcom/google/android/exoplayer2/Timeline$Window;
    .registers 10

    .line 916
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/ForwardingTimeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;J)Lcom/google/android/exoplayer2/Timeline$Window;

    .line 917
    iget-wide p3, p2, Lcom/google/android/exoplayer2/Timeline$Window;->positionInFirstPeriodUs:J

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$ServerSideInsertedAdsTimeline;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    const/4 v0, -0x1

    .line 918
    invoke-static {p3, p4, v0, p1}, Lcom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsUtil;->getMediaPeriodPositionUsForContent(JILcom/google/android/exoplayer2/source/ads/AdPlaybackState;)J

    move-result-wide p3

    .line 922
    iget-wide v1, p2, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    const-wide v3, -0x7fffffffffffffffL  # -4.9E-324

    cmp-long p1, v1, v3

    if-nez p1, :cond_23

    .line 923
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$ServerSideInsertedAdsTimeline;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-wide v0, p1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->contentDurationUs:J

    cmp-long p1, v0, v3

    if-eqz p1, :cond_2f

    sub-long/2addr v0, p3

    .line 924
    iput-wide v0, p2, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    goto :goto_2f

    .line 927
    :cond_23
    iget-wide v3, p2, Lcom/google/android/exoplayer2/Timeline$Window;->positionInFirstPeriodUs:J

    add-long/2addr v3, v1

    .line 928
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource$ServerSideInsertedAdsTimeline;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 929
    invoke-static {v3, v4, v0, p1}, Lcom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsUtil;->getMediaPeriodPositionUsForContent(JILcom/google/android/exoplayer2/source/ads/AdPlaybackState;)J

    move-result-wide v0

    sub-long/2addr v0, p3

    .line 933
    iput-wide v0, p2, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    .line 935
    :cond_2f
    :goto_2f
    iput-wide p3, p2, Lcom/google/android/exoplayer2/Timeline$Window;->positionInFirstPeriodUs:J

    return-object p2
.end method
