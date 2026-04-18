.class public Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;
.super Ljava/lang/Object;
.source "SACoreHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.EventManager"

.field private static volatile mSingleton:Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;
    .registers 2

    .line 33
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;->mSingleton:Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;

    if-nez v0, :cond_17

    .line 34
    const-class v0, Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;

    monitor-enter v0

    .line 35
    :try_start_7
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;->mSingleton:Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;

    if-nez v1, :cond_12

    .line 36
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;

    invoke-direct {v1}, Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;-><init>()V

    sput-object v1, Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;->mSingleton:Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;

    .line 38
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 40
    :cond_17
    :goto_17
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;->mSingleton:Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;

    return-object v0
.end method


# virtual methods
.method public trackEvent(Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;)V
    .registers 3

    .line 45
    :try_start_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getSAContextManager()Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->trackEvent(Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_10

    :catch_c
    move-exception p1

    .line 47
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_10
    return-void
.end method

.method public trackQueueEvent(Ljava/lang/Runnable;)V
    .registers 3

    .line 53
    :try_start_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->addTrackEventTask(Ljava/lang/Runnable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception p1

    .line 55
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_c
    return-void
.end method
