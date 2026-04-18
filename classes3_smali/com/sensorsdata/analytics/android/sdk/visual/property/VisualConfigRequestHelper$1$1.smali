.class Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1$1;
.super Landroid/os/CountDownTimer;
.source "VisualConfigRequestHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1;


# direct methods
.method constructor <init>(Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1;JJ)V
    .registers 6

    .line 56
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1$1;->this$1:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 1

    return-void
.end method

.method public onTick(J)V
    .registers 5

    .line 60
    :try_start_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getServerUrl()Ljava/lang/String;

    move-result-object p1

    .line 61
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_42

    const-string p2, "SA.VP.VisualConfigRequestHelper"

    if-eqz p1, :cond_16

    :try_start_10
    const-string p1, "visualConfigRequest server url is null and return"

    .line 62
    invoke-static {p2, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 65
    :cond_16
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1$1;->this$1:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1;

    iget-object v0, p1, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper;

    iget-object v1, p1, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1;->val$context:Landroid/content/Context;

    iget-object p1, p1, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1;->val$version:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper;->access$100(Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 66
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string p1, "visualConfigRequest request url is null and return"

    .line 67
    invoke-static {p2, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 70
    :cond_2e
    new-instance p2, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;

    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/network/HttpMethod;->GET:Lcom/sensorsdata/analytics/android/sdk/network/HttpMethod;

    invoke-direct {p2, v0, p1}, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;-><init>(Lcom/sensorsdata/analytics/android/sdk/network/HttpMethod;Ljava/lang/String;)V

    new-instance p1, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1$1$1;

    invoke-direct {p1, p0}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1$1$1;-><init>(Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualConfigRequestHelper$1$1;)V

    .line 71
    invoke-virtual {p2, p1}, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;->callback(Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback;)Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;

    move-result-object p1

    .line 96
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;->execute()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_41} :catch_42

    goto :goto_46

    :catch_42
    move-exception p1

    .line 98
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_46
    return-void
.end method
