.class public Lcom/sensorsdata/analytics/android/sdk/core/event/imp/SendDataImpl;
.super Ljava/lang/Object;
.source "SendDataImpl.java"

# interfaces
.implements Lcom/sensorsdata/analytics/android/sdk/core/event/EventProcessor$ISendData;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInternalConfigs:Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;


# direct methods
.method public constructor <init>(Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;)V
    .registers 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getInternalConfigs()Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/event/imp/SendDataImpl;->mInternalConfigs:Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    .line 37
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/core/event/imp/SendDataImpl;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public sendData(Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;I)V
    .registers 5

    .line 43
    :try_start_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/core/business/instantevent/InstantEventUtils;->isInstantEvent(Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 45
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/core/event/imp/SendDataImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->getInstance(Landroid/content/Context;)Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->flushInstanceEvent()V

    goto :goto_48

    .line 47
    :cond_14
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/event/imp/SendDataImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->getInstance(Landroid/content/Context;)Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;

    move-result-object v0

    if-ltz p2, :cond_3f

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/core/event/imp/SendDataImpl;->mInternalConfigs:Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    iget-object v1, v1, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;->saConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    .line 48
    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->getFlushBulkSize()I

    move-result v1

    if-gt p2, v1, :cond_3f

    iget-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/core/event/imp/SendDataImpl;->mInternalConfigs:Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    iget-object p2, p2, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;->debugMode:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;

    .line 49
    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;->isDebugMode()Z

    move-result p2

    if-nez p2, :cond_3f

    .line 50
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;->getEventType()Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    move-result-object p1

    sget-object p2, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->TRACK_SIGNUP:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    if-ne p1, p2, :cond_3d

    goto :goto_3f

    :cond_3d
    const/4 p1, 0x0

    goto :goto_40

    :cond_3f
    :goto_3f
    const/4 p1, 0x1

    .line 47
    :goto_40
    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->flushEventMessage(Z)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_43} :catch_44

    goto :goto_48

    :catch_44
    move-exception p1

    .line 53
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_48
    return-void
.end method
