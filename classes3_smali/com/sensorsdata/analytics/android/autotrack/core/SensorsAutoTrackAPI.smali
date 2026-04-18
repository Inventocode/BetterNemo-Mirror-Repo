.class public Lcom/sensorsdata/analytics/android/autotrack/core/SensorsAutoTrackAPI;
.super Ljava/lang/Object;
.source "SensorsAutoTrackAPI.java"

# interfaces
.implements Lcom/sensorsdata/analytics/android/sdk/core/mediator/protocol/SAModuleProtocol;


# instance fields
.field private mAutoTrackHelper:Lcom/sensorsdata/analytics/android/autotrack/core/AutoTrackContextHelper;

.field private mEnable:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/SensorsAutoTrackAPI;->mEnable:Z

    return-void
.end method


# virtual methods
.method public getModuleName()Ljava/lang/String;
    .registers 2

    const-string v0, "sensors_analytics_module_autotrack"

    return-object v0
.end method

.method public getPriority()I
    .registers 2

    const/4 v0, 0x5

    return v0
.end method

.method public install(Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;)V
    .registers 3

    .line 32
    :try_start_0
    new-instance v0, Lcom/sensorsdata/analytics/android/autotrack/core/AutoTrackContextHelper;

    invoke-direct {v0, p1}, Lcom/sensorsdata/analytics/android/autotrack/core/AutoTrackContextHelper;-><init>(Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;)V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/SensorsAutoTrackAPI;->mAutoTrackHelper:Lcom/sensorsdata/analytics/android/autotrack/core/AutoTrackContextHelper;

    .line 33
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getInternalConfigs()Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    move-result-object p1

    iget-object p1, p1, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;->saConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isDisableSDK()Z

    move-result p1

    if-nez p1, :cond_15

    const/4 p1, 0x1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/core/SensorsAutoTrackAPI;->setModuleState(Z)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    goto :goto_1e

    :catch_1a
    move-exception p1

    .line 35
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_1e
    return-void
.end method

.method public varargs invokeModuleFunction(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/SensorsAutoTrackAPI;->mAutoTrackHelper:Lcom/sensorsdata/analytics/android/autotrack/core/AutoTrackContextHelper;

    invoke-virtual {v0, p1, p2}, Lcom/sensorsdata/analytics/android/autotrack/core/AutoTrackContextHelper;->invokeModuleFunction(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isEnable()Z
    .registers 2

    .line 53
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/SensorsAutoTrackAPI;->mEnable:Z

    return v0
.end method

.method public setModuleState(Z)V
    .registers 3

    .line 41
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/SensorsAutoTrackAPI;->mEnable:Z

    if-eq v0, p1, :cond_6

    .line 42
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/SensorsAutoTrackAPI;->mEnable:Z

    :cond_6
    return-void
.end method
