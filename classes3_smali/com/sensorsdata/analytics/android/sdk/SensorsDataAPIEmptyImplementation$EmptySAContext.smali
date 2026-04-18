.class Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPIEmptyImplementation$EmptySAContext;
.super Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;
.source "SensorsDataAPIEmptyImplementation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPIEmptyImplementation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EmptySAContext"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 833
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;-><init>()V

    return-void
.end method


# virtual methods
.method public addEventListener(Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;)V
    .registers 2

    return-void
.end method

.method public getAnalyticsMessages()Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getEventListenerList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;",
            ">;"
        }
    .end annotation

    .line 843
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getInternalConfigs()Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;
    .registers 2

    .line 892
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;-><init>()V

    return-object v0
.end method

.method public getOrientationDetector()Lcom/sensorsdata/analytics/android/sdk/SensorsDataScreenOrientationDetector;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPluginManager()Lcom/sensorsdata/analytics/android/sdk/plugin/property/PropertyPluginManager;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRemoteManager()Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSensorsDataAPI()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;
    .registers 2

    .line 872
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPIEmptyImplementation;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPIEmptyImplementation;-><init>()V

    return-object v0
.end method

.method public declared-synchronized getUserIdentityAPI()Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;
    .registers 2

    monitor-enter p0

    .line 867
    :try_start_1
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;

    invoke-direct {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;-><init>(Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isFirstDay(J)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public removeEventListener(Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;)V
    .registers 2

    return-void
.end method

.method public setOrientationDetector(Lcom/sensorsdata/analytics/android/sdk/SensorsDataScreenOrientationDetector;)V
    .registers 2

    return-void
.end method

.method public setRemoteManager(Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;)V
    .registers 2

    return-void
.end method

.method public trackEvent(Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;)V
    .registers 2

    return-void
.end method
