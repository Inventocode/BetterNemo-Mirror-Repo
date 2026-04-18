.class public Lcom/sensorsdata/analytics/android/sdk/core/business/DefaultAppState;
.super Ljava/lang/Object;
.source "DefaultAppState.java"

# interfaces
.implements Lcom/sensorsdata/analytics/android/sdk/util/AppStateTools$AppState;


# instance fields
.field private mIsResumeScreenOrientation:Z

.field private final mSensorsDataInstance:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

.field private resumeFromBackground:Z


# direct methods
.method public constructor <init>(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;)V
    .registers 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/DefaultAppState;->resumeFromBackground:Z

    .line 30
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/DefaultAppState;->mIsResumeScreenOrientation:Z

    .line 33
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/DefaultAppState;->mSensorsDataInstance:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    return-void
.end method


# virtual methods
.method public onBackground()V
    .registers 6

    const-string v0, "sensors_analytics_module_visual"

    .line 65
    :try_start_2
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/DefaultAppState;->mSensorsDataInstance:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getSAContextManager()Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getOrientationDetector()Lcom/sensorsdata/analytics/android/sdk/SensorsDataScreenOrientationDetector;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/DefaultAppState;->mSensorsDataInstance:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 66
    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getSAContextManager()Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getOrientationDetector()Lcom/sensorsdata/analytics/android/sdk/SensorsDataScreenOrientationDetector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataScreenOrientationDetector;->isEnableState()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 67
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/DefaultAppState;->mSensorsDataInstance:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->stopTrackScreenOrientation()V

    const/4 v1, 0x1

    .line 68
    iput-boolean v1, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/DefaultAppState;->mIsResumeScreenOrientation:Z

    goto :goto_2a

    .line 70
    :cond_28
    iput-boolean v2, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/DefaultAppState;->mIsResumeScreenOrientation:Z

    .line 72
    :goto_2a
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/DefaultAppState;->mSensorsDataInstance:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getSAContextManager()Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getRemoteManager()Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;->resetPullSDKConfigTimer()V

    .line 73
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;

    move-result-object v1

    const-string v3, "stopHeatMapService"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v3, v4}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;->invokeModuleFunction(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;

    move-result-object v1

    const-string v3, "stopVisualService"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v3, v2}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;->invokeModuleFunction(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/core/business/timer/EventTimerManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/core/business/timer/EventTimerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/core/business/timer/EventTimerManager;->appEnterBackground()V

    .line 76
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/DefaultAppState;->mSensorsDataInstance:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->clearLastScreenUrl()V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_59} :catch_5a

    goto :goto_5e

    :catch_5a
    move-exception v0

    .line 78
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_5e
    return-void
.end method

.method public onForeground()V
    .registers 6

    const-string v0, "sensors_analytics_module_visual"

    .line 39
    :try_start_2
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/core/business/timer/EventTimerManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/core/business/timer/EventTimerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/core/business/timer/EventTimerManager;->appBecomeActive()V

    .line 41
    iget-boolean v1, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/DefaultAppState;->resumeFromBackground:Z

    if-eqz v1, :cond_3f

    .line 43
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/DefaultAppState;->mSensorsDataInstance:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getSAContextManager()Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getRemoteManager()Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;->applySDKConfigFromCache()V

    .line 44
    iget-boolean v1, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/DefaultAppState;->mIsResumeScreenOrientation:Z

    if-eqz v1, :cond_23

    .line 45
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/DefaultAppState;->mSensorsDataInstance:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->resumeTrackScreenOrientation()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_23} :catch_50

    .line 48
    :cond_23
    :try_start_23
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;

    move-result-object v1

    const-string v2, "resumeHeatMapService"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2, v4}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;->invokeModuleFunction(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;

    move-result-object v1

    const-string v2, "resumeVisualService"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2, v3}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;->invokeModuleFunction(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_3a} :catch_3b

    goto :goto_3f

    :catch_3b
    move-exception v0

    .line 51
    :try_start_3c
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 55
    :cond_3f
    :goto_3f
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/DefaultAppState;->mSensorsDataInstance:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getSAContextManager()Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getRemoteManager()Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;->pullSDKConfigFromServer()V

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/DefaultAppState;->resumeFromBackground:Z
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_4f} :catch_50

    goto :goto_54

    :catch_50
    move-exception v0

    .line 58
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_54
    return-void
.end method
