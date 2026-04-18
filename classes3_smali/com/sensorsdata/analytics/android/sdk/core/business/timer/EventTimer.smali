.class public Lcom/sensorsdata/analytics/android/sdk/core/business/timer/EventTimer;
.super Ljava/lang/Object;
.source "EventTimer.java"


# instance fields
.field private endTime:J

.field private eventAccumulatedDuration:J

.field private isPaused:Z

.field private startTime:J

.field private final timeUnit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/TimeUnit;J)V
    .registers 5

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/timer/EventTimer;->isPaused:Z

    .line 34
    iput-wide p2, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/timer/EventTimer;->startTime:J

    .line 35
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/timer/EventTimer;->timeUnit:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p1, 0x0

    .line 36
    iput-wide p1, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/timer/EventTimer;->eventAccumulatedDuration:J

    const-wide/16 p1, -0x1

    .line 37
    iput-wide p1, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/timer/EventTimer;->endTime:J

    return-void
.end method


# virtual methods
.method public duration()F
    .registers 8

    .line 41
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/timer/EventTimer;->isPaused:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_b

    .line 42
    iget-wide v3, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/timer/EventTimer;->startTime:J

    iput-wide v3, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/timer/EventTimer;->endTime:J

    goto :goto_17

    .line 44
    :cond_b
    iget-wide v3, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/timer/EventTimer;->endTime:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_15

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    :cond_15
    iput-wide v3, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/timer/EventTimer;->endTime:J

    .line 46
    :goto_17
    iget-wide v3, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/timer/EventTimer;->endTime:J

    iget-wide v5, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/timer/EventTimer;->startTime:J

    sub-long/2addr v3, v5

    iget-wide v5, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/timer/EventTimer;->eventAccumulatedDuration:J

    add-long/2addr v3, v5

    const/4 v0, 0x0

    cmp-long v5, v3, v1

    if-ltz v5, :cond_61

    const-wide/32 v1, 0x5265c00

    cmp-long v5, v3, v1

    if-lez v5, :cond_2c

    goto :goto_61

    .line 52
    :cond_2c
    :try_start_2c
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/timer/EventTimer;->timeUnit:Ljava/util/concurrent/TimeUnit;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/high16 v5, 0x447a0000  # 1000.0f

    if-ne v1, v2, :cond_36

    :cond_34
    long-to-float v1, v3

    goto :goto_4f

    .line 54
    :cond_36
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    if-ne v1, v2, :cond_3d

    long-to-float v1, v3

    div-float/2addr v1, v5

    goto :goto_4f

    .line 56
    :cond_3d
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const/high16 v6, 0x42700000  # 60.0f

    if-ne v1, v2, :cond_47

    long-to-float v1, v3

    div-float/2addr v1, v5

    :goto_45
    div-float/2addr v1, v6

    goto :goto_4f

    .line 58
    :cond_47
    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    if-ne v1, v2, :cond_34

    long-to-float v1, v3

    div-float/2addr v1, v5

    div-float/2addr v1, v6

    goto :goto_45

    :goto_4f
    cmpg-float v2, v1, v0

    if-gez v2, :cond_54

    goto :goto_5c

    :cond_54
    mul-float v1, v1, v5

    .line 63
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_5a} :catch_5d

    int-to-float v0, v0

    div-float/2addr v0, v5

    :goto_5c
    return v0

    :catch_5d
    move-exception v1

    .line 65
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_61
    :goto_61
    return v0
.end method

.method public getEndTime()J
    .registers 3

    .line 83
    iget-wide v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/timer/EventTimer;->endTime:J

    return-wide v0
.end method

.method public getEventAccumulatedDuration()J
    .registers 3

    .line 87
    iget-wide v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/timer/EventTimer;->eventAccumulatedDuration:J

    return-wide v0
.end method

.method public getStartTime()J
    .registers 3

    .line 71
    iget-wide v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/timer/EventTimer;->startTime:J

    return-wide v0
.end method

.method public isPaused()Z
    .registers 2

    .line 103
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/timer/EventTimer;->isPaused:Z

    return v0
.end method

.method public setEndTime(J)V
    .registers 3

    .line 79
    iput-wide p1, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/timer/EventTimer;->endTime:J

    return-void
.end method

.method public setEventAccumulatedDuration(J)V
    .registers 3

    .line 91
    iput-wide p1, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/timer/EventTimer;->eventAccumulatedDuration:J

    return-void
.end method

.method public setStartTime(J)V
    .registers 3

    .line 75
    iput-wide p1, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/timer/EventTimer;->startTime:J

    return-void
.end method

.method public setTimerState(ZJ)V
    .registers 8

    .line 95
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/timer/EventTimer;->isPaused:Z

    if-eqz p1, :cond_c

    .line 97
    iget-wide v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/timer/EventTimer;->eventAccumulatedDuration:J

    add-long/2addr v0, p2

    iget-wide v2, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/timer/EventTimer;->startTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/timer/EventTimer;->eventAccumulatedDuration:J

    .line 99
    :cond_c
    iput-wide p2, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/timer/EventTimer;->startTime:J

    return-void
.end method
