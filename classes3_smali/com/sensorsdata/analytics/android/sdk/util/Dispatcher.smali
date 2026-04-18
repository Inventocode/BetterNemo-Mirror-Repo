.class public Lcom/sensorsdata/analytics/android/sdk/util/Dispatcher;
.super Ljava/lang/Object;
.source "Dispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/util/Dispatcher$DispatchHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Dispatcher"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mUiThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/util/Dispatcher;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 39
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/util/Dispatcher;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sensorsdata/analytics/android/sdk/util/Dispatcher$1;)V
    .registers 2

    .line 27
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/util/Dispatcher;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sensorsdata/analytics/android/sdk/util/Dispatcher;
    .registers 1

    .line 33
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/Dispatcher$DispatchHolder;->access$000()Lcom/sensorsdata/analytics/android/sdk/util/Dispatcher;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getUiThreadHandler()Landroid/os/Handler;
    .registers 3

    monitor-enter p0

    .line 61
    :try_start_1
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/util/Dispatcher;->mUiThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_10

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/util/Dispatcher;->mUiThreadHandler:Landroid/os/Handler;

    .line 64
    :cond_10
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/util/Dispatcher;->mUiThreadHandler:Landroid/os/Handler;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_16
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    monitor-exit p0

    return-object v0

    :catchall_14
    move-exception v0

    goto :goto_1d

    :catch_16
    move-exception v0

    .line 66
    :try_start_17
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_14

    const/4 v0, 0x0

    .line 68
    monitor-exit p0

    return-object v0

    :goto_1d
    monitor-exit p0

    throw v0
.end method

.method public post(Ljava/lang/Runnable;)V
    .registers 4

    const-wide/16 v0, 0x0

    .line 47
    invoke-virtual {p0, p1, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/util/Dispatcher;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public postDelayed(Ljava/lang/Runnable;J)V
    .registers 5

    .line 51
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/util/Dispatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 52
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/util/Dispatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public removeCallbacksAndMessages()V
    .registers 3

    .line 56
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/util/Dispatcher;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
