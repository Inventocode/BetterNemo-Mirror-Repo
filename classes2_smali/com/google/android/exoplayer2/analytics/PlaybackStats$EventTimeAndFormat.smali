.class public final Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndFormat;
.super Ljava/lang/Object;
.source "PlaybackStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/analytics/PlaybackStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventTimeAndFormat"
.end annotation


# instance fields
.field public final eventTime:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

.field public final format:Lcom/google/android/exoplayer2/Format;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;)V
    .registers 3

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndFormat;->eventTime:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    .line 97
    iput-object p2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndFormat;->format:Lcom/google/android/exoplayer2/Format;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2d

    .line 105
    const-class v2, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndFormat;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_2d

    .line 108
    :cond_10
    check-cast p1, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndFormat;

    .line 109
    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndFormat;->eventTime:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iget-object v3, p1, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndFormat;->eventTime:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    return v1

    .line 112
    :cond_1d
    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndFormat;->format:Lcom/google/android/exoplayer2/Format;

    iget-object p1, p1, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndFormat;->format:Lcom/google/android/exoplayer2/Format;

    if-eqz v2, :cond_28

    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer2/Format;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2c

    :cond_28
    if-nez p1, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    :goto_2c
    return v0

    :cond_2d
    :goto_2d
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 117
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndFormat;->eventTime:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 118
    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/PlaybackStats$EventTimeAndFormat;->format:Lcom/google/android/exoplayer2/Format;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Format;->hashCode()I

    move-result v1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    add-int/2addr v0, v1

    return v0
.end method
