.class public final Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
.super Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;
.source "SAConfigOptions.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field mInvokeHeatMapEnabled:Z

.field mInvokeLog:Z

.field mInvokeVisualizedEnabled:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 62
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mServerUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clone()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .registers 2

    .line 472
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_c

    :catch_7
    move-exception v0

    .line 474
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    move-object v0, p0

    :goto_c
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 35
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->clone()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    move-result-object v0

    return-object v0
.end method

.method public disableAppEndTimer()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .registers 2

    const/4 v0, 0x1

    .line 583
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mDisableAppEndTimer:Z

    return-object p0
.end method

.method public disableDebugAssistant()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .registers 2

    const/4 v0, 0x1

    .line 186
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mDisableDebugAssistant:Z

    return-object p0
.end method

.method public disableDeviceId()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .registers 2

    const/4 v0, 0x1

    .line 453
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mDisableDeviceId:Z

    return-object p0
.end method

.method public disableRandomTimeRequestRemoteConfig()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .registers 2

    const/4 v0, 0x1

    .line 176
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mDisableRandomTimeRequestRemoteConfig:Z

    return-object p0
.end method

.method public disableSDK(Z)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .registers 2

    .line 375
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->isDisableSDK:Z

    return-object p0
.end method

.method public enableAutoAddChannelCallbackEvent(Z)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .registers 2

    .line 300
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->isAutoAddChannelCallbackEvent:Z

    return-object p0
.end method

.method public enableEncrypt(Z)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .registers 2

    .line 311
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mEnableEncrypt:Z

    return-object p0
.end method

.method public enableHeatMap(Z)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .registers 2

    .line 197
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mHeatMapEnabled:Z

    const/4 p1, 0x1

    .line 198
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mInvokeHeatMapEnabled:Z

    return-object p0
.end method

.method public enableJavaScriptBridge(Z)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .registers 3

    const/4 v0, 0x1

    .line 288
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->isAutoTrackWebView:Z

    .line 289
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->isWebViewSupportJellyBean:Z

    return-object p0
.end method

.method public enableLog(Z)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .registers 2

    .line 232
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mLogEnabled:Z

    const/4 p1, 0x1

    .line 233
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mInvokeLog:Z

    return-object p0
.end method

.method public enableSaveDeepLinkInfo(Z)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .registers 2

    .line 266
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mEnableSaveDeepLinkInfo:Z

    return-object p0
.end method

.method public enableSession(Z)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .registers 2

    .line 486
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mEnableSession:Z

    return-object p0
.end method

.method public enableSubProcessFlushData()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .registers 2

    const/4 v0, 0x1

    .line 342
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->isSubProcessFlushData:Z

    return-object p0
.end method

.method public enableTrackAppCrash()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .registers 2

    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mEnableTrackAppCrash:Z

    return-object p0
.end method

.method public enableTrackPageLeave(Z)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 387
    invoke-virtual {p0, p1, v0}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->enableTrackPageLeave(ZZ)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    move-result-object p1

    return-object p1
.end method

.method public enableTrackPageLeave(ZZ)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .registers 3

    .line 398
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mIsTrackPageLeave:Z

    .line 399
    iput-boolean p2, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mIsTrackFragmentPageLeave:Z

    return-object p0
.end method

.method public enableTrackPush(Z)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .registers 2

    .line 364
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mEnableTrackPush:Z

    return-object p0
.end method

.method public enableTrackScreenOrientation(Z)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .registers 2

    .line 244
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mTrackScreenOrientationEnabled:Z

    return-object p0
.end method

.method public enableTransportEncrypt()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .registers 2

    const/4 v0, 0x1

    .line 321
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mTransportEncrypt:Z

    return-object p0
.end method

.method public enableVisualizedAutoTrack(Z)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .registers 2

    .line 220
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mVisualizedEnabled:Z

    const/4 p1, 0x1

    .line 221
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mInvokeVisualizedEnabled:Z

    return-object p0
.end method

.method public enableVisualizedProperties(Z)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .registers 2

    .line 209
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mVisualizedPropertiesEnabled:Z

    return-object p0
.end method

.method public bridge synthetic getAdvertConfig()Lcom/sensorsdata/analytics/android/sdk/SAAdvertisingConfig;
    .registers 2

    .line 35
    invoke-super {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->getAdvertConfig()Lcom/sensorsdata/analytics/android/sdk/SAAdvertisingConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAnonymousId()Ljava/lang/String;
    .registers 2

    .line 35
    invoke-super {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->getAnonymousId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAutoTrackEventType()I
    .registers 2

    .line 35
    invoke-super {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->getAutoTrackEventType()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getCustomADChannelUrl()Ljava/lang/String;
    .registers 2

    .line 35
    invoke-super {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->getCustomADChannelUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDeeplinkCallback()Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeferredDeepLinkCallback;
    .registers 2

    .line 35
    invoke-super {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->getDeeplinkCallback()Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeferredDeepLinkCallback;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getEncryptors()Ljava/util/List;
    .registers 2

    .line 35
    invoke-super {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->getEncryptors()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getEventSessionTimeout()I
    .registers 2

    .line 35
    invoke-super {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->getEventSessionTimeout()I

    move-result v0

    return v0
.end method

.method public getExposureConfig()Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;
    .registers 2

    .line 515
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mExposureConfig:Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;

    return-object v0
.end method

.method public bridge synthetic getFlushBulkSize()I
    .registers 2

    .line 35
    invoke-super {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->getFlushBulkSize()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getIgnorePageLeave()Ljava/util/List;
    .registers 2

    .line 35
    invoke-super {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->getIgnorePageLeave()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getInstantEvents()Ljava/util/List;
    .registers 2

    .line 35
    invoke-super {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->getInstantEvents()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLimitKeys()Ljava/util/Map;
    .registers 2

    .line 35
    invoke-super {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->getLimitKeys()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMaxRequestInterval()I
    .registers 2

    .line 35
    invoke-super {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->getMaxRequestInterval()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMinRequestInterval()I
    .registers 2

    .line 35
    invoke-super {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->getMinRequestInterval()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getPersistentSecretKey()Lcom/sensorsdata/analytics/android/sdk/encrypt/IPersistentSecretKey;
    .registers 2

    .line 35
    invoke-super {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->getPersistentSecretKey()Lcom/sensorsdata/analytics/android/sdk/encrypt/IPersistentSecretKey;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPropertyPlugins()Ljava/util/List;
    .registers 2

    .line 35
    invoke-super {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->getPropertyPlugins()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRemoteConfigUrl()Ljava/lang/String;
    .registers 2

    .line 35
    invoke-super {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->getRemoteConfigUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .registers 2

    .line 35
    invoke-super {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getServerUrl()Ljava/lang/String;
    .registers 2

    .line 35
    invoke-super {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->getServerUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getStorePlugins()Ljava/util/List;
    .registers 2

    .line 35
    invoke-super {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->getStorePlugins()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public ignorePageLeave(Ljava/util/List;)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;"
        }
    .end annotation

    .line 411
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mIgnorePageLeave:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic isAutoAddChannelCallbackEvent()Z
    .registers 2

    .line 35
    invoke-super {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->isAutoAddChannelCallbackEvent()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isAutoTrackWebView()Z
    .registers 2

    .line 35
    invoke-super {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->isAutoTrackWebView()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isDataCollectEnable()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 35
    invoke-super {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->isDataCollectEnable()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isDisableAppEndTimer()Z
    .registers 2

    .line 35
    invoke-super {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->isDisableAppEndTimer()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isDisableDebugAssistant()Z
    .registers 2

    .line 35
    invoke-super {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->isDisableDebugAssistant()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isDisableDeviceId()Z
    .registers 2

    .line 35
    invoke-super {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->isDisableDeviceId()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isDisableRandomTimeRequestRemoteConfig()Z
    .registers 2

    .line 35
    invoke-super {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->isDisableRandomTimeRequestRemoteConfig()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isDisableSDK()Z
    .registers 2

    .line 35
    invoke-super {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->isDisableSDK()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isEnableEncrypt()Z
    .registers 2

    .line 35
    invoke-super {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->isEnableEncrypt()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isEnableSession()Z
    .registers 2

    .line 35
    invoke-super {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->isEnableSession()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isEnableTrackPush()Z
    .registers 2

    .line 35
    invoke-super {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->isEnableTrackPush()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isMultiProcessFlush()Z
    .registers 2

    .line 35
    invoke-super {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->isMultiProcessFlush()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isSaveDeepLinkInfo()Z
    .registers 2

    .line 35
    invoke-super {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->isSaveDeepLinkInfo()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isTrackFragmentPageLeave()Z
    .registers 2

    .line 35
    invoke-super {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->isTrackFragmentPageLeave()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isTrackPageLeave()Z
    .registers 2

    .line 35
    invoke-super {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->isTrackPageLeave()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isTransportEncrypt()Z
    .registers 2

    .line 35
    invoke-super {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->isTransportEncrypt()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isVisualizedPropertiesEnabled()Z
    .registers 2

    .line 35
    invoke-super {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->isVisualizedPropertiesEnabled()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isWebViewSupportJellyBean()Z
    .registers 2

    .line 35
    invoke-super {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->isWebViewSupportJellyBean()Z

    move-result v0

    return v0
.end method

.method public persistentSecretKey(Lcom/sensorsdata/analytics/android/sdk/encrypt/IPersistentSecretKey;)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .registers 2

    .line 332
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mPersistentSecretKey:Lcom/sensorsdata/analytics/android/sdk/encrypt/IPersistentSecretKey;

    return-object p0
.end method

.method public registerEncryptor(Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .registers 4

    if-eqz p1, :cond_25

    .line 423
    invoke-interface {p1}, Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;->asymmetricEncryptType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 424
    invoke-interface {p1}, Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;->symmetricEncryptType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_25

    .line 427
    :cond_17
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mEncryptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 428
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mEncryptors:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_25
    :goto_25
    return-object p0
.end method

.method public registerLimitKeys(Ljava/util/Map;)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;"
        }
    .end annotation

    .line 558
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mLimitKeys:Ljava/util/Map;

    return-object p0
.end method

.method public registerPropertyPlugin(Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .registers 3

    .line 502
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mPropertyPlugins:Ljava/util/List;

    if-nez v0, :cond_b

    .line 503
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mPropertyPlugins:Ljava/util/List;

    .line 505
    :cond_b
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mPropertyPlugins:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public registerStorePlugin(Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .registers 3

    .line 440
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mStorePlugins:Ljava/util/List;

    if-nez v0, :cond_b

    .line 441
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mStorePlugins:Ljava/util/List;

    .line 443
    :cond_b
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mStorePlugins:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setAdvertConfig(Lcom/sensorsdata/analytics/android/sdk/SAAdvertisingConfig;)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .registers 2

    .line 574
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mSATConfig:Lcom/sensorsdata/analytics/android/sdk/SAAdvertisingConfig;

    return-object p0
.end method

.method public setAnonymousId(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .registers 2

    .line 536
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mAnonymousId:Ljava/lang/String;

    return-object p0
.end method

.method public setAutoTrackEventType(I)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .registers 2

    .line 95
    iput p1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mAutoTrackEventType:I

    return-object p0
.end method

.method public setCustomAdChannelUrl(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .registers 2

    .line 464
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mCustomADChannelUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setDeepLinkCompletion(Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeferredDeepLinkCallback;)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .registers 2

    .line 547
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mDeeplinkCallback:Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeferredDeepLinkCallback;

    return-object p0
.end method

.method public setEventSessionTimeout(I)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .registers 2

    .line 497
    iput p1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mEventSessionTimeout:I

    return-object p0
.end method

.method public setExposureConfig(Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .registers 2

    .line 525
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mExposureConfig:Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;

    return-object p0
.end method

.method public setFlushBulkSize(I)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .registers 3

    const/16 v0, 0x32

    .line 127
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mFlushBulkSize:I

    return-object p0
.end method

.method public setFlushInterval(I)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .registers 3

    const/16 v0, 0x1388

    .line 116
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mFlushInterval:I

    return-object p0
.end method

.method public setInstantEvents(Ljava/util/List;)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;"
        }
    .end annotation

    .line 569
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mListInstantEvents:Ljava/util/List;

    return-object p0
.end method

.method public setMaxCacheSize(J)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .registers 5

    const-wide/32 v0, 0x1000000

    .line 138
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mMaxCacheSize:J

    return-object p0
.end method

.method public setMaxRequestInterval(I)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .registers 3

    if-lez p1, :cond_a

    const/16 v0, 0xa8

    .line 165
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mMaxRequestInterval:I

    :cond_a
    return-object p0
.end method

.method public setMinRequestInterval(I)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .registers 3

    if-lez p1, :cond_a

    const/16 v0, 0xa8

    .line 151
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mMinRequestInterval:I

    :cond_a
    return-object p0
.end method

.method public setNetworkTypePolicy(I)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .registers 2

    .line 255
    iput p1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mNetworkTypePolicy:I

    return-object p0
.end method

.method public setRemoteConfigUrl(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .registers 2

    .line 73
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mRemoteConfigUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .registers 2

    .line 353
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object p0
.end method

.method public setServerUrl(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .registers 2

    .line 84
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mServerUrl:Ljava/lang/String;

    return-object p0
.end method

.method public varargs setSourceChannels([Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .registers 2

    .line 277
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->channelSourceKeys:[Ljava/lang/String;

    return-object p0
.end method
