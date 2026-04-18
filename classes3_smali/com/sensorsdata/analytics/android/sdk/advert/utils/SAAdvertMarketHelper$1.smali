.class final Lcom/sensorsdata/analytics/android/sdk/advert/utils/SAAdvertMarketHelper$1;
.super Ljava/lang/Object;
.source "SAAdvertMarketHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sensorsdata/analytics/android/sdk/advert/utils/SAAdvertMarketHelper;->handleAdMarket(Landroid/app/Activity;Lcom/sensorsdata/analytics/android/sdk/SAAdvertisingConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$saAdvertisingConfig:Lcom/sensorsdata/analytics/android/sdk/SAAdvertisingConfig;


# direct methods
.method constructor <init>(Lcom/sensorsdata/analytics/android/sdk/SAAdvertisingConfig;Landroid/app/Activity;)V
    .registers 3

    .line 51
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/utils/SAAdvertMarketHelper$1;->val$saAdvertisingConfig:Lcom/sensorsdata/analytics/android/sdk/SAAdvertisingConfig;

    iput-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/advert/utils/SAAdvertMarketHelper$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    const/4 v0, 0x0

    .line 56
    :try_start_1
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/utils/SAAdvertMarketHelper$1;->val$saAdvertisingConfig:Lcom/sensorsdata/analytics/android/sdk/SAAdvertisingConfig;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/SAAdvertisingConfig;->getWakeupUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_18

    .line 57
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/utils/SAAdvertMarketHelper$1;->val$saAdvertisingConfig:Lcom/sensorsdata/analytics/android/sdk/SAAdvertisingConfig;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SAAdvertisingConfig;->getWakeupUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 60
    :cond_18
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/utils/SAAdvertMarketHelper$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 61
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "$ios_install_source"

    .line 64
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->getIdentifier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 65
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;->getOpenAdIdentifier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 66
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;->getOpenAdIdentifierByReflection(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 63
    invoke-static {v1, v5, v6, v7}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->getDeviceInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "$sat_awake_from_deeplink"

    .line 67
    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/advert/utils/SAAdvertMarketHelper$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-static {v4}, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager;->isDeepLink(Landroid/content/Intent;)Z

    move-result v4

    if-nez v4, :cond_4e

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager;->isDeepLink(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_4d

    goto :goto_4e

    :cond_4d
    const/4 v2, 0x0

    :cond_4e
    :goto_4e
    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "$sat_has_installed_app"

    .line 68
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/SAAdvertUtils;->isInstallationTracked()Z

    move-result v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 69
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;->getInstance()Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;

    move-result-object v0

    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;

    invoke-direct {v1}, Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;-><init>()V

    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->TRACK:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    invoke-virtual {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;->setEventType(Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;)Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;

    move-result-object v1

    const-string v2, "$AppInteract"

    .line 70
    invoke-virtual {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;->setEventName(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;->setProperties(Lorg/json/JSONObject;)Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;

    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;->trackEvent(Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_76} :catch_77

    goto :goto_7b

    :catch_77
    move-exception v0

    .line 72
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_7b
    return-void
.end method
