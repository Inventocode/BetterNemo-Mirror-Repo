.class Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks$2;
.super Landroid/os/Handler;
.source "ActivityLifecycleCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;


# direct methods
.method constructor <init>(Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;Landroid/os/Looper;)V
    .registers 3

    .line 206
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks$2;->this$0:Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    .line 209
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_6b

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_65

    const/16 v1, 0x12c

    if-eq v0, v1, :cond_1d

    const/16 v1, 0x64

    if-eq v0, v1, :cond_16

    const/16 v1, 0x65

    if-eq v0, v1, :cond_16

    goto/16 :goto_e1

    .line 213
    :cond_16
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks$2;->this$0:Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;

    invoke-static {v0, p1}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->access$100(Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;Landroid/os/Message;)V

    goto/16 :goto_e1

    .line 219
    :cond_1d
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks$2;->this$0:Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->access$300(Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;)Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isAutoTrackEnabled()Z

    move-result p1

    if-eqz p1, :cond_3e

    iget-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks$2;->this$0:Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->access$400(Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;)Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 220
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks$2;->this$0:Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->access$500(Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;JJ)V

    .line 223
    :cond_3e
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks$2;->this$0:Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->access$600(Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;)I

    move-result p1

    if-lez p1, :cond_e1

    iget-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks$2;->this$0:Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->access$700(Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;)Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getInternalConfigs()Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    move-result-object p1

    iget-object p1, p1, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;->saConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isDisableAppEndTimer()Z

    move-result p1

    if-nez p1, :cond_e1

    .line 224
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks$2;->this$0:Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->access$800(Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v2, 0x7d0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_e1

    .line 216
    :cond_65
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks$2;->this$0:Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;

    invoke-static {v0, p1}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->access$200(Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;Landroid/os/Message;)V

    goto :goto_e1

    .line 228
    :cond_6b
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks$2;->this$0:Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->access$900(Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_99

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks$2;->this$0:Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;

    invoke-static {v2}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->access$900(Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks$2;->this$0:Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;

    invoke-static {v2}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->access$300(Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;)Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getSessionIntervalTime()I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_99

    const-string p1, "SA.ActivityLifecycleCallbacks"

    const-string v0, "$AppEnd in time"

    .line 229
    invoke-static {p1, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 232
    :cond_99
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks$2;->this$0:Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->access$902(Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;J)J

    .line 233
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "app_end_data"

    .line 234
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_reset_state"

    .line 235
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 237
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks$2;->this$0:Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->access$1002(Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;Z)Z

    if-eqz p1, :cond_dc

    .line 239
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v1, v2

    const-string v2, "sensors_analytics_module_advertisement"

    const-string v3, "commitRequestDeferredDeeplink"

    invoke-virtual {p1, v2, v3, v1}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;->invokeModuleFunction(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getActivityCount()I

    move-result p1

    if-gtz p1, :cond_e1

    .line 242
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks$2;->this$0:Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;

    invoke-static {p1, v0}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->access$1100(Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;Ljava/lang/String;)V

    goto :goto_e1

    .line 245
    :cond_dc
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks$2;->this$0:Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;

    invoke-static {p1, v0}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->access$1100(Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;Ljava/lang/String;)V

    :cond_e1
    :goto_e1
    return-void
.end method
