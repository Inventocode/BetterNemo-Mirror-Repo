.class final Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothBursty;
.super Lcom/google/common/util/concurrent/SmoothRateLimiter;
.source "SmoothRateLimiter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/SmoothRateLimiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SmoothBursty"
.end annotation


# instance fields
.field final maxBurstSeconds:D


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;D)V
    .registers 5

    const/4 v0, 0x0

    .line 281
    invoke-direct {p0, p1, v0}, Lcom/google/common/util/concurrent/SmoothRateLimiter;-><init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;Lcom/google/common/util/concurrent/SmoothRateLimiter$1;)V

    .line 282
    iput-wide p2, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothBursty;->maxBurstSeconds:D

    return-void
.end method


# virtual methods
.method coolDownIntervalMicros()D
    .registers 3

    .line 307
    iget-wide v0, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter;->stableIntervalMicros:D

    return-wide v0
.end method

.method doSetRate(DD)V
    .registers 8

    .line 287
    iget-wide p3, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter;->maxPermits:D

    .line 288
    iget-wide v0, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothBursty;->maxBurstSeconds:D

    mul-double v0, v0, p1

    iput-wide v0, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter;->maxPermits:D

    const-wide/high16 p1, 0x7ff0000000000000L  # Double.POSITIVE_INFINITY

    cmpl-double v2, p3, p1

    if-nez v2, :cond_11

    .line 291
    iput-wide v0, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter;->storedPermits:D

    goto :goto_1f

    :cond_11
    const-wide/16 p1, 0x0

    cmpl-double v2, p3, p1

    if-nez v2, :cond_18

    goto :goto_1d

    .line 293
    :cond_18
    iget-wide p1, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter;->storedPermits:D

    mul-double p1, p1, v0

    div-double/2addr p1, p3

    :goto_1d
    iput-wide p1, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter;->storedPermits:D

    :goto_1f
    return-void
.end method

.method storedPermitsToWaitTime(DD)J
    .registers 5

    const-wide/16 p1, 0x0

    return-wide p1
.end method
