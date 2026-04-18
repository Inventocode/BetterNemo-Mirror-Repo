.class public final Lcom/yl/lib/sentry/hook/watcher/DelayTimeWatcher;
.super Ljava/lang/Object;
.source "DelayTimeWatcher.kt"


# instance fields
.field private callBack:Ljava/lang/Runnable;

.field private countDownTimer:Landroid/os/CountDownTimer;

.field private final minDelayTime:J

.field private watchTime:Ljava/lang/Long;


# direct methods
.method public constructor <init>(JLjava/lang/Runnable;)V
    .registers 6

    const-string v0, "callBack"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0xea60

    .line 16
    iput-wide v0, p0, Lcom/yl/lib/sentry/hook/watcher/DelayTimeWatcher;->minDelayTime:J

    add-long/2addr p1, v0

    .line 20
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/yl/lib/sentry/hook/watcher/DelayTimeWatcher;->watchTime:Ljava/lang/Long;

    .line 21
    iput-object p3, p0, Lcom/yl/lib/sentry/hook/watcher/DelayTimeWatcher;->callBack:Ljava/lang/Runnable;

    .line 23
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_38

    .line 25
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/yl/lib/sentry/hook/watcher/DelayTimeWatcher$1;

    invoke-direct {p2, p0}, Lcom/yl/lib/sentry/hook/watcher/DelayTimeWatcher$1;-><init>(Lcom/yl/lib/sentry/hook/watcher/DelayTimeWatcher;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3b

    .line 29
    :cond_38
    invoke-direct {p0}, Lcom/yl/lib/sentry/hook/watcher/DelayTimeWatcher;->initCountDownTimer()V

    :goto_3b
    return-void
.end method

.method public static final synthetic access$getCallBack$p(Lcom/yl/lib/sentry/hook/watcher/DelayTimeWatcher;)Ljava/lang/Runnable;
    .registers 1

    .line 13
    iget-object p0, p0, Lcom/yl/lib/sentry/hook/watcher/DelayTimeWatcher;->callBack:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic access$initCountDownTimer(Lcom/yl/lib/sentry/hook/watcher/DelayTimeWatcher;)V
    .registers 1

    .line 13
    invoke-direct {p0}, Lcom/yl/lib/sentry/hook/watcher/DelayTimeWatcher;->initCountDownTimer()V

    return-void
.end method

.method private final initCountDownTimer()V
    .registers 8

    .line 35
    new-instance v6, Lcom/yl/lib/sentry/hook/watcher/DelayTimeWatcher$initCountDownTimer$1;

    iget-object v0, p0, Lcom/yl/lib/sentry/hook/watcher/DelayTimeWatcher;->watchTime:Ljava/lang/Long;

    if-nez v0, :cond_9

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_9
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/yl/lib/sentry/hook/watcher/DelayTimeWatcher;->minDelayTime:J

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/yl/lib/sentry/hook/watcher/DelayTimeWatcher$initCountDownTimer$1;-><init>(Lcom/yl/lib/sentry/hook/watcher/DelayTimeWatcher;JJ)V

    iput-object v6, p0, Lcom/yl/lib/sentry/hook/watcher/DelayTimeWatcher;->countDownTimer:Landroid/os/CountDownTimer;

    .line 46
    invoke-virtual {p0}, Lcom/yl/lib/sentry/hook/watcher/DelayTimeWatcher;->start()V

    return-void
.end method


# virtual methods
.method public final quit()V
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/yl/lib/sentry/hook/watcher/DelayTimeWatcher;->countDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_7
    return-void
.end method

.method public final start()V
    .registers 2

    .line 50
    invoke-virtual {p0}, Lcom/yl/lib/sentry/hook/watcher/DelayTimeWatcher;->quit()V

    .line 51
    iget-object v0, p0, Lcom/yl/lib/sentry/hook/watcher/DelayTimeWatcher;->countDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_a
    return-void
.end method
