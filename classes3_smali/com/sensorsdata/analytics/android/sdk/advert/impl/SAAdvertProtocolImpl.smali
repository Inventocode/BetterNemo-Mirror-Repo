.class public Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;
.super Ljava/lang/Object;
.source "SAAdvertProtocolImpl.java"


# instance fields
.field private mAdEventId:Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;

.field private final mAdvertOptions:Lcom/sensorsdata/analytics/android/sdk/SAAdvertisingConfig;

.field private final mContext:Landroid/content/Context;

.field private mEnableDeepLinkInstallSource:Z

.field private mLatestUtmPlugin:Lcom/sensorsdata/analytics/android/sdk/advert/plugin/LatestUtmPlugin;

.field private mLifecycleCallback:Lcom/sensorsdata/analytics/android/sdk/advert/monitor/SensorsDataAdvertActivityLifeCallback;

.field private final mOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

.field private final mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

.field private mStartPlugin:Lcom/sensorsdata/analytics/android/sdk/advert/plugin/SAAdvertAppStartPlugin;

.field private mViewScreenPlugin:Lcom/sensorsdata/analytics/android/sdk/advert/plugin/SAAdvertAppViewScreenPlugin;


# direct methods
.method public constructor <init>(Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;)V
    .registers 3

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    .line 79
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;->mContext:Landroid/content/Context;

    .line 80
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getInternalConfigs()Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    move-result-object p1

    iget-object p1, p1, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;->saConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;->mOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    .line 81
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->getAdvertConfig()Lcom/sensorsdata/analytics/android/sdk/SAAdvertisingConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;->mAdvertOptions:Lcom/sensorsdata/analytics/android/sdk/SAAdvertisingConfig;

    .line 82
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;)Lcom/sensorsdata/analytics/android/sdk/SAAdvertisingConfig;
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;->mAdvertOptions:Lcom/sensorsdata/analytics/android/sdk/SAAdvertisingConfig;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;->mOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;)Z
    .registers 1

    .line 64
    iget-boolean p0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;->mEnableDeepLinkInstallSource:Z

    return p0
.end method

.method static synthetic access$300(Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;)Landroid/content/Context;
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private enableDeepLinkInstallSource(Z)V
    .registers 2

    .line 401
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;->mEnableDeepLinkInstallSource:Z

    .line 402
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager;->enableDeepLinkInstallSource(Z)V

    return-void
.end method

.method private init()V
    .registers 3

    .line 86
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/advert/plugin/SAAdvertAppStartPlugin;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/advert/plugin/SAAdvertAppStartPlugin;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;->mStartPlugin:Lcom/sensorsdata/analytics/android/sdk/advert/plugin/SAAdvertAppStartPlugin;

    .line 87
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/advert/plugin/SAAdvertAppViewScreenPlugin;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/advert/plugin/SAAdvertAppViewScreenPlugin;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;->mViewScreenPlugin:Lcom/sensorsdata/analytics/android/sdk/advert/plugin/SAAdvertAppViewScreenPlugin;

    .line 88
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/advert/plugin/LatestUtmPlugin;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/advert/plugin/LatestUtmPlugin;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;->mLatestUtmPlugin:Lcom/sensorsdata/analytics/android/sdk/advert/plugin/LatestUtmPlugin;

    .line 89
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl$1;

    invoke-direct {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl$1;-><init>(Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;)V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;->mAdEventId:Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;

    .line 109
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;->mOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget-object v0, v0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->channelSourceKeys:[Ljava/lang/String;

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->setSourceChannelKeys([Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/util/AppInfoUtils;->isMainProcess(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 111
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->isExistRequestDeferredDeeplink()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->commitRequestDeferredDeeplink(Z)V

    :cond_35
    return-void
.end method

.method private mergeChannelEventProperties(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 4

    .line 424
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;->mOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isAutoAddChannelCallbackEvent()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 425
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, v0}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->checkOrSetChannelCallbackEvent(Ljava/lang/String;Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :cond_f
    return-object p2
.end method

.method private requestDeferredDeepLink(Lorg/json/JSONObject;)V
    .registers 4

    .line 406
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;->getInstance()Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;

    move-result-object v0

    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl$6;

    invoke-direct {v1, p0, p1}, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl$6;-><init>(Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;->trackQueueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method private trackChannelEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 5

    .line 355
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;->mOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isAutoAddChannelCallbackEvent()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 356
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->track(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 359
    :cond_10
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 360
    invoke-static {p2, v0}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 361
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/SADataHelper;->addTimeProperty(Lorg/json/JSONObject;)V

    .line 362
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;->getInstance()Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;

    move-result-object p2

    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl$5;

    invoke-direct {v1, p0, v0, p1}, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl$5;-><init>(Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;->trackQueueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method private trackDeepLinkLaunch(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 247
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "$deeplink_url"

    .line 249
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "$time"

    .line 250
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_18} :catch_19

    goto :goto_1d

    :catch_19
    move-exception p1

    .line 252
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 254
    :goto_1d
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;->getInstance()Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;

    move-result-object p1

    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl$3;

    invoke-direct {v1, p0, p2, v0}, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl$3;-><init>(Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {p1, v1}, Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;->trackQueueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method private trackInstallation(Ljava/lang/String;Lorg/json/JSONObject;Z)V
    .registers 6

    .line 278
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/util/AppInfoUtils;->isMainProcess(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 282
    :cond_a
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 283
    invoke-static {p2, v0}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 284
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/SADataHelper;->addTimeProperty(Lorg/json/JSONObject;)V

    .line 285
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;->getInstance()Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;

    move-result-object p2

    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl$4;

    invoke-direct {v1, p0, p3, v0, p1}, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl$4;-><init>(Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;ZLorg/json/JSONObject;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;->trackQueueEvent(Ljava/lang/Runnable;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_22

    goto :goto_26

    :catch_22
    move-exception p1

    .line 350
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_26
    return-void
.end method


# virtual methods
.method protected delayExecution()V
    .registers 3

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;->mOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->getDeeplinkCallback()Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeferredDeepLinkCallback;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 118
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;->mOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->getDeeplinkCallback()Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeferredDeepLinkCallback;

    move-result-object v0

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager;->setDeferredDeepLinkCallback(Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeferredDeepLinkCallback;)V

    .line 119
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getInternalConfigs()Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    move-result-object v0

    iget-object v0, v0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;->context:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2e

    .line 120
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;->mLifecycleCallback:Lcom/sensorsdata/analytics/android/sdk/advert/monitor/SensorsDataAdvertActivityLifeCallback;

    if-eqz v0, :cond_2e

    .line 121
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getInternalConfigs()Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    move-result-object v1

    iget-object v1, v1, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;->context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/advert/monitor/SensorsDataAdvertActivityLifeCallback;->onActivityStarted(Landroid/app/Activity;)V

    .line 126
    :cond_2e
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getInternalConfigs()Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    move-result-object v0

    iget-object v0, v0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;->context:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_52

    .line 127
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getInternalConfigs()Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    move-result-object v0

    iget-object v0, v0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;->mOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->getAdvertConfig()Lcom/sensorsdata/analytics/android/sdk/SAAdvertisingConfig;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/SAAdvertMarketHelper;->handleAdMarket(Landroid/app/Activity;Lcom/sensorsdata/analytics/android/sdk/SAAdvertisingConfig;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4d} :catch_4e

    goto :goto_52

    :catch_4e
    move-exception v0

    .line 130
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_52
    :goto_52
    return-void
.end method

.method public delayInitTask()V
    .registers 3

    .line 203
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;->getInstance()Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;

    move-result-object v0

    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl$2;

    invoke-direct {v1, p0}, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl$2;-><init>(Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;)V

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;->trackQueueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public varargs invokeModuleFunction(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
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

    .line 135
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    sparse-switch v0, :sswitch_data_1c2

    goto/16 :goto_ae

    :sswitch_11
    const-string v0, "enableDeepLinkInstallSource"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b

    goto/16 :goto_ae

    :cond_1b
    const/16 v5, 0xc

    goto/16 :goto_ae

    :sswitch_1f
    const-string v0, "setDeepLinkCompletion"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_29

    goto/16 :goto_ae

    :cond_29
    const/16 v5, 0xb

    goto/16 :goto_ae

    :sswitch_2d
    const-string v0, "handlerScanUri"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_37

    goto/16 :goto_ae

    :cond_37
    const/16 v5, 0xa

    goto/16 :goto_ae

    :sswitch_3b
    const-string v0, "requestDeferredDeepLink"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_45

    goto/16 :goto_ae

    :cond_45
    const/16 v5, 0x9

    goto/16 :goto_ae

    :sswitch_49
    const-string v0, "getLatestUtmProperties"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_53

    goto/16 :goto_ae

    :cond_53
    const/16 v5, 0x8

    goto/16 :goto_ae

    :sswitch_57
    const-string v0, "trackChannelEvent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_60

    goto :goto_ae

    :cond_60
    const/4 v5, 0x7

    goto :goto_ae

    :sswitch_62
    const-string v0, "mergeChannelEventProperties"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6b

    goto :goto_ae

    :cond_6b
    const/4 v5, 0x6

    goto :goto_ae

    :sswitch_6d
    const-string v0, "sendEvent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_76

    goto :goto_ae

    :cond_76
    const/4 v5, 0x5

    goto :goto_ae

    :sswitch_78
    const-string v0, "trackDeepLinkLaunch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_81

    goto :goto_ae

    :cond_81
    const/4 v5, 0x4

    goto :goto_ae

    :sswitch_83
    const-string v0, "removeDeepLinkInfo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8c

    goto :goto_ae

    :cond_8c
    const/4 v5, 0x3

    goto :goto_ae

    :sswitch_8e
    const-string v0, "commitRequestDeferredDeeplink"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_97

    goto :goto_ae

    :cond_97
    const/4 v5, 0x2

    goto :goto_ae

    :sswitch_99
    const-string v0, "trackInstallation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a2

    goto :goto_ae

    :cond_a2
    const/4 v5, 0x1

    goto :goto_ae

    :sswitch_a4
    const-string v0, "setDeepLinkCallback"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_ad

    goto :goto_ae

    :cond_ad
    const/4 v5, 0x0

    :goto_ae
    const/4 p1, 0x0

    packed-switch v5, :pswitch_data_1f8

    goto/16 :goto_1c1

    .line 160
    :pswitch_b4  #0xc
    aget-object p2, p2, v4

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-direct {p0, p2}, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;->enableDeepLinkInstallSource(Z)V

    goto/16 :goto_1c1

    .line 166
    :pswitch_c1  #0xb
    aget-object p2, p2, v4

    check-cast p2, Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeferredDeepLinkCallback;

    invoke-static {p2}, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager;->setDeferredDeepLinkCallback(Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeferredDeepLinkCallback;)V

    goto/16 :goto_1c1

    .line 182
    :pswitch_ca  #0xa
    aget-object v0, p2, v4

    check-cast v0, Landroid/app/Activity;

    aget-object p2, p2, v3

    check-cast p2, Landroid/net/Uri;

    invoke-static {v0, p2}, Lcom/sensorsdata/analytics/android/sdk/advert/scan/SAAdvertScanHelper;->scanHandler(Landroid/app/Activity;Landroid/net/Uri;)Z

    goto/16 :goto_1c1

    .line 169
    :pswitch_d7  #0x9
    aget-object p2, p2, v4

    check-cast p2, Lorg/json/JSONObject;

    invoke-direct {p0, p2}, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;->requestDeferredDeepLink(Lorg/json/JSONObject;)V

    goto/16 :goto_1c1

    .line 174
    :pswitch_e0  #0x8
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->getLatestUtmProperties()Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 153
    :pswitch_e5  #0x7
    array-length v0, p2

    if-ne v0, v2, :cond_f5

    .line 154
    aget-object v0, p2, v4

    check-cast v0, Ljava/lang/String;

    aget-object p2, p2, v3

    check-cast p2, Lorg/json/JSONObject;

    invoke-direct {p0, v0, p2}, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;->trackChannelEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_1c1

    .line 156
    :cond_f5
    aget-object p2, p2, v4

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;->trackChannelEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_1c1

    .line 172
    :pswitch_fe  #0x6
    aget-object p1, p2, v4

    check-cast p1, Ljava/lang/String;

    aget-object p2, p2, v3

    check-cast p2, Lorg/json/JSONObject;

    invoke-direct {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;->mergeChannelEventProperties(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 185
    :pswitch_10b  #0x5
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;->mAdvertOptions:Lcom/sensorsdata/analytics/android/sdk/SAAdvertisingConfig;

    if-eqz v0, :cond_1c1

    iget-object v0, v0, Lcom/sensorsdata/analytics/android/sdk/SAAdvertisingConfig;->serverUrl:Ljava/lang/String;

    .line 186
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c1

    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;->mAdvertOptions:Lcom/sensorsdata/analytics/android/sdk/SAAdvertisingConfig;

    iget-object v0, v0, Lcom/sensorsdata/analytics/android/sdk/SAAdvertisingConfig;->eventNames:Ljava/util/List;

    .line 187
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c1

    .line 188
    aget-object p2, p2, v4

    check-cast p2, Lorg/json/JSONObject;

    const-string v0, "event"

    .line 189
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1c1

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;->mAdvertOptions:Lcom/sensorsdata/analytics/android/sdk/SAAdvertisingConfig;

    iget-object v1, v1, Lcom/sensorsdata/analytics/android/sdk/SAAdvertisingConfig;->eventNames:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c1

    .line 191
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p2, v1, v4

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;->mAdvertOptions:Lcom/sensorsdata/analytics/android/sdk/SAAdvertisingConfig;

    iget-object v2, v2, Lcom/sensorsdata/analytics/android/sdk/SAAdvertisingConfig;->secreteKey:Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;

    aput-object v2, v1, v3

    const-string v2, "sensors_analytics_module_encrypt"

    const-string v3, "encryptEventDataWithKey"

    invoke-virtual {v0, v2, v3, v1}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;->invokeModuleFunction(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 194
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;->mAdvertOptions:Lcom/sensorsdata/analytics/android/sdk/SAAdvertisingConfig;

    iget-object v2, v2, Lcom/sensorsdata/analytics/android/sdk/SAAdvertisingConfig;->serverUrl:Ljava/lang/String;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, v2, v0, p2}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/SAAdvertUtils;->sendData(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_1c1

    .line 146
    :pswitch_161  #0x4
    array-length v0, p2

    if-ne v0, v2, :cond_170

    .line 147
    aget-object v0, p2, v4

    check-cast v0, Ljava/lang/String;

    aget-object p2, p2, v3

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;->trackDeepLinkLaunch(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c1

    .line 149
    :cond_170
    aget-object p2, p2, v4

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;->trackDeepLinkLaunch(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c1

    .line 176
    :pswitch_178  #0x3
    aget-object p2, p2, v4

    check-cast p2, Lorg/json/JSONObject;

    invoke-static {p2}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->removeDeepLinkInfo(Lorg/json/JSONObject;)V

    goto :goto_1c1

    .line 179
    :pswitch_180  #0x2
    aget-object p2, p2, v4

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p2}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->commitRequestDeferredDeeplink(Z)V

    goto :goto_1c1

    .line 137
    :pswitch_18c  #0x1
    array-length v0, p2

    if-ne v0, v1, :cond_1a3

    .line 138
    aget-object v0, p2, v4

    check-cast v0, Ljava/lang/String;

    aget-object v1, p2, v3

    check-cast v1, Lorg/json/JSONObject;

    aget-object p2, p2, v2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-direct {p0, v0, v1, p2}, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;->trackInstallation(Ljava/lang/String;Lorg/json/JSONObject;Z)V

    goto :goto_1c1

    .line 139
    :cond_1a3
    array-length v0, p2

    if-ne v0, v2, :cond_1b2

    .line 140
    aget-object v0, p2, v4

    check-cast v0, Ljava/lang/String;

    aget-object p2, p2, v3

    check-cast p2, Lorg/json/JSONObject;

    invoke-direct {p0, v0, p2, v4}, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;->trackInstallation(Ljava/lang/String;Lorg/json/JSONObject;Z)V

    goto :goto_1c1

    .line 142
    :cond_1b2
    aget-object p2, p2, v4

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2, p1, v4}, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;->trackInstallation(Ljava/lang/String;Lorg/json/JSONObject;Z)V

    goto :goto_1c1

    .line 163
    :pswitch_1ba  #0x0
    aget-object p2, p2, v4

    check-cast p2, Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLinkCallback;

    invoke-static {p2}, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager;->setDeepLinkCallback(Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLinkCallback;)V

    :cond_1c1
    :goto_1c1
    return-object p1

    :sswitch_data_1c2
    .sparse-switch
        -0x69821a13 -> :sswitch_a4
        -0x672df4db -> :sswitch_99
        -0x19a912a3 -> :sswitch_8e
        -0x1981a888 -> :sswitch_83
        -0x980e37c -> :sswitch_78
        0x2a27f2 -> :sswitch_6d
        0x784ee42 -> :sswitch_62
        0x19215c42 -> :sswitch_57
        0x2bec9e04 -> :sswitch_49
        0x2e6320b4 -> :sswitch_3b
        0x3ecaf305 -> :sswitch_2d
        0x5724df84 -> :sswitch_1f
        0x7d6e626d -> :sswitch_11
    .end sparse-switch

    :pswitch_data_1f8
    .packed-switch 0x0
        :pswitch_1ba  #00000000
        :pswitch_18c  #00000001
        :pswitch_180  #00000002
        :pswitch_178  #00000003
        :pswitch_161  #00000004
        :pswitch_10b  #00000005
        :pswitch_fe  #00000006
        :pswitch_e5  #00000007
        :pswitch_e0  #00000008
        :pswitch_d7  #00000009
        :pswitch_ca  #0000000a
        :pswitch_c1  #0000000b
        :pswitch_b4  #0000000c
    .end packed-switch
.end method

.method public registerLifeCallback()V
    .registers 3

    .line 234
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;->mLifecycleCallback:Lcom/sensorsdata/analytics/android/sdk/advert/monitor/SensorsDataAdvertActivityLifeCallback;

    if-nez v0, :cond_d

    .line 235
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/advert/monitor/SensorsDataAdvertActivityLifeCallback;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;->mOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-direct {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/advert/monitor/SensorsDataAdvertActivityLifeCallback;-><init>(Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;)V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;->mLifecycleCallback:Lcom/sensorsdata/analytics/android/sdk/advert/monitor/SensorsDataAdvertActivityLifeCallback;

    .line 237
    :cond_d
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/monitor/SensorsDataLifecycleMonitorManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/monitor/SensorsDataLifecycleMonitorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;->mLifecycleCallback:Lcom/sensorsdata/analytics/android/sdk/advert/monitor/SensorsDataAdvertActivityLifeCallback;

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/monitor/SensorsDataLifecycleMonitorManager;->addActivityLifeCallback(Lcom/sensorsdata/analytics/android/sdk/monitor/SensorsDataActivityLifecycleCallbacks$SAActivityLifecycleCallbacks;)V

    return-void
.end method

.method public registerPropertyPlugin()V
    .registers 3

    .line 220
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getPluginManager()Lcom/sensorsdata/analytics/android/sdk/plugin/property/PropertyPluginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;->mStartPlugin:Lcom/sensorsdata/analytics/android/sdk/advert/plugin/SAAdvertAppStartPlugin;

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/PropertyPluginManager;->registerPropertyPlugin(Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;)V

    .line 221
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getPluginManager()Lcom/sensorsdata/analytics/android/sdk/plugin/property/PropertyPluginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;->mViewScreenPlugin:Lcom/sensorsdata/analytics/android/sdk/advert/plugin/SAAdvertAppViewScreenPlugin;

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/PropertyPluginManager;->registerPropertyPlugin(Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;)V

    .line 222
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getPluginManager()Lcom/sensorsdata/analytics/android/sdk/plugin/property/PropertyPluginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;->mLatestUtmPlugin:Lcom/sensorsdata/analytics/android/sdk/advert/plugin/LatestUtmPlugin;

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/PropertyPluginManager;->registerPropertyPlugin(Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;)V

    .line 223
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getPluginManager()Lcom/sensorsdata/analytics/android/sdk/plugin/property/PropertyPluginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;->mAdEventId:Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/PropertyPluginManager;->registerPropertyPlugin(Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;)V

    return-void
.end method

.method public unregisterLifecycleCallback()V
    .registers 3

    .line 241
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;->mLifecycleCallback:Lcom/sensorsdata/analytics/android/sdk/advert/monitor/SensorsDataAdvertActivityLifeCallback;

    if-eqz v0, :cond_d

    .line 242
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/monitor/SensorsDataLifecycleMonitorManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/monitor/SensorsDataLifecycleMonitorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;->mLifecycleCallback:Lcom/sensorsdata/analytics/android/sdk/advert/monitor/SensorsDataAdvertActivityLifeCallback;

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/monitor/SensorsDataLifecycleMonitorManager;->removeActivityLifeCallback(Lcom/sensorsdata/analytics/android/sdk/monitor/SensorsDataActivityLifecycleCallbacks$SAActivityLifecycleCallbacks;)V

    :cond_d
    return-void
.end method

.method public unregisterPropertyPlugin()V
    .registers 3

    .line 227
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getPluginManager()Lcom/sensorsdata/analytics/android/sdk/plugin/property/PropertyPluginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;->mStartPlugin:Lcom/sensorsdata/analytics/android/sdk/advert/plugin/SAAdvertAppStartPlugin;

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/PropertyPluginManager;->unregisterPropertyPlugin(Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;)V

    .line 228
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getPluginManager()Lcom/sensorsdata/analytics/android/sdk/plugin/property/PropertyPluginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;->mViewScreenPlugin:Lcom/sensorsdata/analytics/android/sdk/advert/plugin/SAAdvertAppViewScreenPlugin;

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/PropertyPluginManager;->unregisterPropertyPlugin(Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;)V

    .line 229
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getPluginManager()Lcom/sensorsdata/analytics/android/sdk/plugin/property/PropertyPluginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;->mLatestUtmPlugin:Lcom/sensorsdata/analytics/android/sdk/advert/plugin/LatestUtmPlugin;

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/PropertyPluginManager;->unregisterPropertyPlugin(Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;)V

    .line 230
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getPluginManager()Lcom/sensorsdata/analytics/android/sdk/plugin/property/PropertyPluginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/impl/SAAdvertProtocolImpl;->mAdEventId:Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/PropertyPluginManager;->unregisterPropertyPlugin(Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;)V

    return-void
.end method
