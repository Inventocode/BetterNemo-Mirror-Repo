.class public Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;
.super Ljava/lang/Object;
.source "TrackTaskManager.java"


# static fields
.field private static trackTaskManager:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;


# instance fields
.field private final mTrackEventTasks:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->mTrackEventTasks:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;
    .registers 2

    const-class v0, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;

    monitor-enter v0

    .line 35
    :try_start_3
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->trackTaskManager:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;

    if-nez v1, :cond_15

    .line 36
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;

    invoke-direct {v1}, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;-><init>()V

    sput-object v1, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->trackTaskManager:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_11
    .catchall {:try_start_3 .. :try_end_e} :catchall_f

    goto :goto_15

    :catchall_f
    move-exception v1

    goto :goto_19

    :catch_11
    move-exception v1

    .line 39
    :try_start_12
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 41
    :cond_15
    :goto_15
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->trackTaskManager:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_f

    monitor-exit v0

    return-object v1

    :goto_19
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public addTrackEventTask(Ljava/lang/Runnable;)V
    .registers 3

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->mTrackEventTasks:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception p1

    .line 48
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_a
    return-void
.end method

.method public isEmpty()Z
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->mTrackEventTasks:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public pollTrackEventTask()Ljava/lang/Runnable;
    .registers 2

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->mTrackEventTasks:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    .line 65
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public takeTrackEventTask()Ljava/lang/Runnable;
    .registers 2

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->mTrackEventTasks:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    .line 56
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return-object v0
.end method
