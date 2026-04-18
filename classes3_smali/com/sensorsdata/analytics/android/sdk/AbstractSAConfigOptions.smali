.class abstract Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;
.super Ljava/lang/Object;
.source "AbstractSAConfigOptions.java"


# instance fields
.field public channelSourceKeys:[Ljava/lang/String;

.field isAutoAddChannelCallbackEvent:Z

.field isAutoTrackWebView:Z

.field isDisableSDK:Z

.field isSubProcessFlushData:Z

.field isWebViewSupportJellyBean:Z

.field mAnonymousId:Ljava/lang/String;

.field mAutoTrackEventType:I

.field mCustomADChannelUrl:Ljava/lang/String;

.field mDeeplinkCallback:Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeferredDeepLinkCallback;

.field mDisableAppEndTimer:Z

.field mDisableDebugAssistant:Z

.field mDisableDeviceId:Z

.field mDisableRandomTimeRequestRemoteConfig:Z

.field mEnableEncrypt:Z

.field mEnableSaveDeepLinkInfo:Z

.field mEnableSession:Z

.field mEnableTrackAppCrash:Z

.field mEnableTrackPush:Z

.field mEncryptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;",
            ">;"
        }
    .end annotation
.end field

.field mEventSessionTimeout:I

.field public mExposureConfig:Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;

.field mFlushBulkSize:I

.field mFlushInterval:I

.field mHeatMapEnabled:Z

.field mIgnorePageLeave:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field protected mIsTrackFragmentPageLeave:Z

.field protected mIsTrackPageLeave:Z

.field mLimitKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mListInstantEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mLogEnabled:Z

.field mMaxCacheSize:J

.field mMaxRequestInterval:I

.field mMinRequestInterval:I

.field mNetworkTypePolicy:I

.field mPersistentSecretKey:Lcom/sensorsdata/analytics/android/sdk/encrypt/IPersistentSecretKey;

.field mPropertyPlugins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;",
            ">;"
        }
    .end annotation
.end field

.field mRemoteConfigUrl:Ljava/lang/String;

.field mSATConfig:Lcom/sensorsdata/analytics/android/sdk/SAAdvertisingConfig;

.field mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field mServerUrl:Ljava/lang/String;

.field mStorePlugins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;",
            ">;"
        }
    .end annotation
.end field

.field mTrackScreenOrientationEnabled:Z

.field mTransportEncrypt:Z

.field mVisualizedEnabled:Z

.field mVisualizedPropertiesEnabled:Z


# direct methods
.method constructor <init>()V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x18

    .line 45
    iput v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mMinRequestInterval:I

    const/16 v0, 0x30

    .line 50
    iput v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mMaxRequestInterval:I

    const-wide/32 v0, 0x2000000

    .line 100
    iput-wide v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mMaxCacheSize:J

    const/16 v0, 0x1f

    .line 130
    iput v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mNetworkTypePolicy:I

    const/4 v0, 0x0

    .line 135
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mEnableSaveDeepLinkInfo:Z

    .line 155
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->isSubProcessFlushData:Z

    .line 160
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mEnableEncrypt:Z

    .line 165
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mTransportEncrypt:Z

    .line 175
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->isDisableSDK:Z

    .line 180
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mEnableSession:Z

    .line 190
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mEncryptors:Ljava/util/List;

    .line 200
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mIsTrackPageLeave:Z

    .line 205
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mIsTrackFragmentPageLeave:Z

    .line 215
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mDisableDeviceId:Z

    .line 255
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mDisableAppEndTimer:Z

    return-void
.end method


# virtual methods
.method public getAdvertConfig()Lcom/sensorsdata/analytics/android/sdk/SAAdvertisingConfig;
    .registers 2

    .line 475
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mSATConfig:Lcom/sensorsdata/analytics/android/sdk/SAAdvertisingConfig;

    return-object v0
.end method

.method public getAnonymousId()Ljava/lang/String;
    .registers 2

    .line 471
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mAnonymousId:Ljava/lang/String;

    return-object v0
.end method

.method public getAutoTrackEventType()I
    .registers 2

    .line 389
    iget v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mAutoTrackEventType:I

    return v0
.end method

.method public getCustomADChannelUrl()Ljava/lang/String;
    .registers 2

    .line 381
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mCustomADChannelUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDeeplinkCallback()Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeferredDeepLinkCallback;
    .registers 2

    .line 459
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mDeeplinkCallback:Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeferredDeepLinkCallback;

    return-object v0
.end method

.method public getEncryptors()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;",
            ">;"
        }
    .end annotation

    .line 299
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mEncryptors:Ljava/util/List;

    return-object v0
.end method

.method public getEventSessionTimeout()I
    .registers 2

    .line 385
    iget v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mEventSessionTimeout:I

    return v0
.end method

.method public getFlushBulkSize()I
    .registers 2

    .line 415
    iget v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mFlushBulkSize:I

    return v0
.end method

.method public getIgnorePageLeave()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 431
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mIgnorePageLeave:Ljava/util/List;

    return-object v0
.end method

.method public getInstantEvents()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 467
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mListInstantEvents:Ljava/util/List;

    return-object v0
.end method

.method public getLimitKeys()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 463
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mLimitKeys:Ljava/util/Map;

    return-object v0
.end method

.method public getMaxRequestInterval()I
    .registers 2

    .line 443
    iget v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mMaxRequestInterval:I

    return v0
.end method

.method public getMinRequestInterval()I
    .registers 2

    .line 439
    iget v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mMinRequestInterval:I

    return v0
.end method

.method public getPersistentSecretKey()Lcom/sensorsdata/analytics/android/sdk/encrypt/IPersistentSecretKey;
    .registers 2

    .line 303
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mPersistentSecretKey:Lcom/sensorsdata/analytics/android/sdk/encrypt/IPersistentSecretKey;

    return-object v0
.end method

.method public getPropertyPlugins()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;",
            ">;"
        }
    .end annotation

    .line 411
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mPropertyPlugins:Ljava/util/List;

    return-object v0
.end method

.method public getRemoteConfigUrl()Ljava/lang/String;
    .registers 2

    .line 435
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mRemoteConfigUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .registers 2

    .line 451
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public getServerUrl()Ljava/lang/String;
    .registers 2

    .line 427
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mServerUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getStorePlugins()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/StorePlugin;",
            ">;"
        }
    .end annotation

    .line 348
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mStorePlugins:Ljava/util/List;

    return-object v0
.end method

.method public isAutoAddChannelCallbackEvent()Z
    .registers 2

    .line 366
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->isAutoAddChannelCallbackEvent:Z

    return v0
.end method

.method public isAutoTrackWebView()Z
    .registers 2

    .line 423
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->isAutoTrackWebView:Z

    return v0
.end method

.method public isDataCollectEnable()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public isDisableAppEndTimer()Z
    .registers 2

    .line 484
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mDisableAppEndTimer:Z

    return v0
.end method

.method public isDisableDebugAssistant()Z
    .registers 2

    .line 455
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mDisableDebugAssistant:Z

    return v0
.end method

.method public isDisableDeviceId()Z
    .registers 2

    .line 357
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mDisableDeviceId:Z

    return v0
.end method

.method public isDisableRandomTimeRequestRemoteConfig()Z
    .registers 2

    .line 447
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mDisableRandomTimeRequestRemoteConfig:Z

    return v0
.end method

.method public isDisableSDK()Z
    .registers 2

    .line 312
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->isDisableSDK:Z

    return v0
.end method

.method public isEnableEncrypt()Z
    .registers 2

    .line 393
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mEnableEncrypt:Z

    return v0
.end method

.method public isEnableSession()Z
    .registers 2

    .line 321
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mEnableSession:Z

    return v0
.end method

.method public isEnableTrackPush()Z
    .registers 2

    .line 330
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mEnableTrackPush:Z

    return v0
.end method

.method public isMultiProcessFlush()Z
    .registers 2

    .line 272
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->isSubProcessFlushData:Z

    return v0
.end method

.method public isSaveDeepLinkInfo()Z
    .registers 2

    .line 263
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mEnableSaveDeepLinkInfo:Z

    return v0
.end method

.method public isTrackFragmentPageLeave()Z
    .registers 2

    .line 290
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mIsTrackPageLeave:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mIsTrackFragmentPageLeave:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isTrackPageLeave()Z
    .registers 2

    .line 281
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mIsTrackPageLeave:Z

    return v0
.end method

.method public isTransportEncrypt()Z
    .registers 2

    .line 397
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mTransportEncrypt:Z

    return v0
.end method

.method public isVisualizedPropertiesEnabled()Z
    .registers 2

    .line 339
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mVisualizedPropertiesEnabled:Z

    return v0
.end method

.method public isWebViewSupportJellyBean()Z
    .registers 2

    .line 419
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->isWebViewSupportJellyBean:Z

    return v0
.end method
