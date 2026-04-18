.class public Lcn/codemao/android/sketch/utils/TimerHelper;
.super Ljava/lang/Object;
.source "TimerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/codemao/android/sketch/utils/TimerHelper$TimeProcessor;
    }
.end annotation


# instance fields
.field private mTimeProcessor:Lcn/codemao/android/sketch/utils/TimerHelper$TimeProcessor;

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Ljava/util/TimerTask;

.field private spaceTime:J


# direct methods
.method public constructor <init>(JLcn/codemao/android/sketch/utils/TimerHelper$TimeProcessor;)V
    .registers 4

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-wide p1, p0, Lcn/codemao/android/sketch/utils/TimerHelper;->spaceTime:J

    .line 19
    iput-object p3, p0, Lcn/codemao/android/sketch/utils/TimerHelper;->mTimeProcessor:Lcn/codemao/android/sketch/utils/TimerHelper$TimeProcessor;

    return-void
.end method

.method static synthetic access$000(Lcn/codemao/android/sketch/utils/TimerHelper;)Lcn/codemao/android/sketch/utils/TimerHelper$TimeProcessor;
    .registers 1

    .line 10
    iget-object p0, p0, Lcn/codemao/android/sketch/utils/TimerHelper;->mTimeProcessor:Lcn/codemao/android/sketch/utils/TimerHelper$TimeProcessor;

    return-object p0
.end method


# virtual methods
.method public startDelayTime(J)V
    .registers 5

    .line 24
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/utils/TimerHelper;->mTimer:Ljava/util/Timer;

    .line 25
    new-instance v0, Lcn/codemao/android/sketch/utils/TimerHelper$1;

    invoke-direct {v0, p0}, Lcn/codemao/android/sketch/utils/TimerHelper$1;-><init>(Lcn/codemao/android/sketch/utils/TimerHelper;)V

    iput-object v0, p0, Lcn/codemao/android/sketch/utils/TimerHelper;->mTimerTask:Ljava/util/TimerTask;

    .line 33
    iget-object v1, p0, Lcn/codemao/android/sketch/utils/TimerHelper;->mTimer:Ljava/util/Timer;

    invoke-virtual {v1, v0, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public startTime()V
    .registers 6

    .line 37
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/utils/TimerHelper;->mTimer:Ljava/util/Timer;

    .line 38
    new-instance v0, Lcn/codemao/android/sketch/utils/TimerHelper$2;

    invoke-direct {v0, p0}, Lcn/codemao/android/sketch/utils/TimerHelper$2;-><init>(Lcn/codemao/android/sketch/utils/TimerHelper;)V

    iput-object v0, p0, Lcn/codemao/android/sketch/utils/TimerHelper;->mTimerTask:Ljava/util/TimerTask;

    .line 46
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 47
    iget-object v1, p0, Lcn/codemao/android/sketch/utils/TimerHelper;->mTimer:Ljava/util/Timer;

    iget-object v2, p0, Lcn/codemao/android/sketch/utils/TimerHelper;->mTimerTask:Ljava/util/TimerTask;

    iget-wide v3, p0, Lcn/codemao/android/sketch/utils/TimerHelper;->spaceTime:J

    invoke-virtual {v1, v2, v0, v3, v4}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;Ljava/util/Date;J)V

    return-void
.end method

.method public stopTime()V
    .registers 3

    .line 51
    iget-object v0, p0, Lcn/codemao/android/sketch/utils/TimerHelper;->mTimer:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 52
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 53
    iput-object v1, p0, Lcn/codemao/android/sketch/utils/TimerHelper;->mTimer:Ljava/util/Timer;

    .line 55
    :cond_a
    iget-object v0, p0, Lcn/codemao/android/sketch/utils/TimerHelper;->mTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_13

    .line 56
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 57
    iput-object v1, p0, Lcn/codemao/android/sketch/utils/TimerHelper;->mTimerTask:Ljava/util/TimerTask;

    :cond_13
    return-void
.end method
