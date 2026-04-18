.class public Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeferredDeepLinkHelper;
.super Ljava/lang/Object;
.source "DeferredDeepLinkHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static request(Lorg/json/JSONObject;Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeferredDeepLinkCallback;Ljava/lang/String;Z)V
    .registers 12

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 47
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "http://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "https://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 48
    :goto_1d
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v6

    if-nez v0, :cond_3a

    .line 49
    invoke-virtual {v6}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getServerUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_39

    invoke-virtual {v6}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getServerUrl()Ljava/lang/String;

    move-result-object v1

    const-string v4, "http"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    :cond_39
    return-void

    .line 52
    :cond_3a
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;

    sget-object v4, Lcom/sensorsdata/analytics/android/sdk/network/HttpMethod;->POST:Lcom/sensorsdata/analytics/android/sdk/network/HttpMethod;

    if-eqz v0, :cond_41

    goto :goto_45

    :cond_41
    invoke-virtual {v6}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getServerUrl()Ljava/lang/String;

    move-result-object p2

    :goto_45
    const-string v0, "slink/ddeeplink"

    invoke-static {p2, v0}, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->getRequestUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, v4, p2}, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;-><init>(Lcom/sensorsdata/analytics/android/sdk/network/HttpMethod;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;->jsonData(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;

    move-result-object p2

    new-instance v7, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeferredDeepLinkHelper$1;

    move-object v0, v7

    move v1, p3

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeferredDeepLinkHelper$1;-><init>(ZJLorg/json/JSONObject;Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeferredDeepLinkCallback;Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;)V

    .line 54
    invoke-virtual {p2, v7}, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;->callback(Lcom/sensorsdata/analytics/android/sdk/network/HttpCallback;)Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;

    move-result-object p0

    .line 168
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/network/RequestHelper$Builder;->execute()V

    return-void
.end method
