.class public Lcom/sensorsdata/analytics/android/sdk/advert/monitor/SensorsDataAdvertActivityLifeCallback;
.super Ljava/lang/Object;
.source "SensorsDataAdvertActivityLifeCallback.java"

# interfaces
.implements Lcom/sensorsdata/analytics/android/sdk/monitor/SensorsDataActivityLifecycleCallbacks$SAActivityLifecycleCallbacks;


# instance fields
.field private mOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;


# direct methods
.method public constructor <init>(Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;)V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/monitor/SensorsDataAdvertActivityLifeCallback;->mOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 45
    :try_start_0
    iget-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/advert/monitor/SensorsDataAdvertActivityLifeCallback;->mOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->getAdvertConfig()Lcom/sensorsdata/analytics/android/sdk/SAAdvertisingConfig;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/SAAdvertMarketHelper;->handleAdMarket(Landroid/app/Activity;Lcom/sensorsdata/analytics/android/sdk/SAAdvertisingConfig;)V

    .line 46
    iget-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/advert/monitor/SensorsDataAdvertActivityLifeCallback;->mOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isSaveDeepLinkInfo()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager;->parseDeepLink(Landroid/app/Activity;Z)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_17

    :catch_13
    move-exception p1

    .line 48
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_17
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 3

    .line 64
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/monitor/SensorsDataAdvertActivityLifeCallback;->mOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isSaveDeepLinkInfo()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager;->parseDeepLink(Landroid/app/Activity;Z)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 3

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/monitor/SensorsDataAdvertActivityLifeCallback;->mOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->getAdvertConfig()Lcom/sensorsdata/analytics/android/sdk/SAAdvertisingConfig;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/SAAdvertMarketHelper;->handleAdMarket(Landroid/app/Activity;Lcom/sensorsdata/analytics/android/sdk/SAAdvertisingConfig;)V

    .line 56
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/monitor/SensorsDataAdvertActivityLifeCallback;->mOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isSaveDeepLinkInfo()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager;->parseDeepLink(Landroid/app/Activity;Z)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_17

    :catch_13
    move-exception p1

    .line 58
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_17
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 2

    return-void
.end method
