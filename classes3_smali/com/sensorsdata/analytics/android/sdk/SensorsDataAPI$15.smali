.class Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$15;
.super Ljava/lang/Object;
.source "SensorsDataAPI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->trackTimerEnd(Ljava/lang/String;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

.field final synthetic val$cloneProperties:Lorg/json/JSONObject;

.field final synthetic val$endTime:J

.field final synthetic val$eventName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Ljava/lang/String;JLorg/json/JSONObject;)V
    .registers 6

    .line 1147
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$15;->this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    iput-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$15;->val$eventName:Ljava/lang/String;

    iput-wide p3, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$15;->val$endTime:J

    iput-object p5, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$15;->val$cloneProperties:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1150
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$15;->val$eventName:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 1151
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/core/business/timer/EventTimerManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/core/business/timer/EventTimerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$15;->val$eventName:Ljava/lang/String;

    iget-wide v2, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$15;->val$endTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/sensorsdata/analytics/android/sdk/core/business/timer/EventTimerManager;->updateEndTime(Ljava/lang/String;J)V

    .line 1154
    :cond_f
    :try_start_f
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;

    move-result-object v0

    const-string v1, "sensors_analytics_module_advertisement"

    const-string v2, "mergeChannelEventProperties"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$15;->val$eventName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$15;->val$cloneProperties:Lorg/json/JSONObject;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;->invokeModuleFunction(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-nez v0, :cond_2e

    .line 1157
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$15;->val$cloneProperties:Lorg/json/JSONObject;

    .line 1159
    :cond_2e
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$15;->this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    iget-object v1, v1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    new-instance v2, Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;

    invoke-direct {v2}, Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;-><init>()V

    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$15;->val$eventName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;->setEventName(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;

    move-result-object v2

    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->TRACK:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    invoke-virtual {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;->setEventType(Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;)Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;->setProperties(Lorg/json/JSONObject;)Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->trackEvent(Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_4a} :catch_4b

    goto :goto_4f

    :catch_4b
    move-exception v0

    .line 1161
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_4f
    return-void
.end method
