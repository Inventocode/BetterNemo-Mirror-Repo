.class final Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager$1;
.super Ljava/lang/Object;
.source "DeepLinkManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager;->trackDeepLinkLaunchEvent(Landroid/content/Context;Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkProcessor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$isDeepLinkInstallSource:Z

.field final synthetic val$properties:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(ZLorg/json/JSONObject;Landroid/content/Context;)V
    .registers 4

    .line 151
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager$1;->val$isDeepLinkInstallSource:Z

    iput-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager$1;->val$properties:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 154
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager$1;->val$isDeepLinkInstallSource:Z

    if-eqz v0, :cond_26

    .line 156
    :try_start_4
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager$1;->val$properties:Lorg/json/JSONObject;

    const-string v1, "$ios_install_source"

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager$1;->val$context:Landroid/content/Context;

    .line 158
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->getIdentifier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager$1;->val$context:Landroid/content/Context;

    .line 159
    invoke-static {v4}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;->getOpenAdIdentifier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager$1;->val$context:Landroid/content/Context;

    .line 160
    invoke-static {v5}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;->getOpenAdIdentifierByReflection(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 157
    invoke-static {v2, v3, v4, v5}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->getDeviceInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 156
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_21
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_21} :catch_22

    goto :goto_26

    :catch_22
    move-exception v0

    .line 162
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 166
    :cond_26
    :goto_26
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;->getInstance()Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;

    move-result-object v0

    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;

    invoke-direct {v1}, Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;-><init>()V

    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->TRACK:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    invoke-virtual {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;->setEventType(Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;)Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;

    move-result-object v1

    const-string v2, "$AppDeeplinkLaunch"

    .line 167
    invoke-virtual {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;->setEventName(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;

    move-result-object v1

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager$1;->val$properties:Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;->setProperties(Lorg/json/JSONObject;)Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;

    move-result-object v1

    .line 166
    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;->trackEvent(Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;)V

    return-void
.end method
