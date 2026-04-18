.class public Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager;
.super Ljava/lang/Object;
.source "DeepLinkManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager$OnDeepLinkParseFinishCallback;,
        Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager$DeepLinkType;
    }
.end annotation


# static fields
.field public static final IS_ANALYTICS_DEEPLINK:Ljava/lang/String; = "is_analytics_deeplink"

.field private static mCacheProperties:Lorg/json/JSONObject; = null

.field private static mDeepLinkCallback:Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLinkCallback; = null

.field private static mDeepLinkProcessor:Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkProcessor; = null

.field private static mDeferredDeepLinkCallback:Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeferredDeepLinkCallback; = null

.field private static mEnableDeepLinkInstallSource:Z = false

.field private static mIsDeepLink:Z = false


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeferredDeepLinkCallback;
    .registers 1

    .line 54
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager;->mDeferredDeepLinkCallback:Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeferredDeepLinkCallback;

    return-object v0
.end method

.method static synthetic access$100()Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLinkCallback;
    .registers 1

    .line 54
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager;->mDeepLinkCallback:Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLinkCallback;

    return-object v0
.end method

.method private static cacheProperties()V
    .registers 1

    .line 294
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager;->mCacheProperties:Lorg/json/JSONObject;

    if-nez v0, :cond_b

    .line 295
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager;->mCacheProperties:Lorg/json/JSONObject;

    .line 297
    :cond_b
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager;->mCacheProperties:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager;->mergeDeepLinkProperty(Lorg/json/JSONObject;)V

    return-void
.end method

.method private static createDeepLink(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkProcessor;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 130
    :cond_4
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/internal/beans/ServerUrl;

    invoke-direct {v1, p1}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/ServerUrl;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/ServerUrl;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager;->isSensorsDataDeepLink(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 131
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;

    invoke-direct {v0, p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 133
    :cond_1d
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager;->isUtmDeepLink(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 134
    new-instance p1, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/ChannelDeepLink;

    invoke-direct {p1, p0}, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/ChannelDeepLink;-><init>(Landroid/content/Intent;)V

    return-object p1

    :cond_29
    return-object v0
.end method

.method public static enableDeepLinkInstallSource(Z)V
    .registers 1

    .line 287
    sput-boolean p0, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager;->mEnableDeepLinkInstallSource:Z

    return-void
.end method

.method public static isDeepLink(Landroid/content/Intent;)Z
    .registers 3

    .line 75
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1c

    if-eqz p0, :cond_1c

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return p0
.end method

.method private static isParsedDeepLink(Landroid/app/Activity;)Z
    .registers 3

    const/4 v0, 0x0

    .line 185
    :try_start_1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->isUniApp()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->isDeepLinkBlackList(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 186
    :cond_d
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_2a

    .line 187
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_2a

    const-string v1, "is_analytics_deeplink"

    .line 189
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_20

    return p0

    :catchall_20
    move-exception p0

    .line 193
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SA.Advert"

    invoke-static {v1, p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    return v0
.end method

.method private static isSensorsDataDeepLink(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    .line 109
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager;->isDeepLink(Landroid/content/Intent;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 112
    :cond_8
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    .line 113
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6e

    .line 114
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6e

    .line 115
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    .line 116
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "slink"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "sensorsdata"

    const/4 v4, 0x1

    if-eqz v2, :cond_47

    .line 117
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_46

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_46

    invoke-static {p2, p0}, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->compareMainDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_45

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_46

    :cond_45
    const/4 v1, 0x1

    :cond_46
    return v1

    .line 118
    :cond_47
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v0, "sd"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6e

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6e

    .line 119
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6e

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6d

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6e

    :cond_6d
    const/4 v1, 0x1

    :cond_6e
    return v1
.end method

.method private static isUtmDeepLink(Landroid/content/Intent;)Z
    .registers 3

    .line 85
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager;->isDeepLink(Landroid/content/Intent;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 88
    :cond_8
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    .line 89
    invoke-virtual {p0}, Landroid/net/Uri;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " isOpaque"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ChannelDeepLink"

    invoke-static {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 93
    :cond_29
    invoke-virtual {p0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_3a

    .line 94
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_3a

    .line 95
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->hasLinkUtmProperties(Ljava/util/Set;)Z

    move-result p0

    return p0

    :cond_3a
    return v1
.end method

.method public static mergeCacheProperties(Lorg/json/JSONObject;)V
    .registers 2

    if-eqz p0, :cond_15

    .line 306
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager;->mCacheProperties:Lorg/json/JSONObject;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_15

    .line 309
    :cond_d
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager;->mCacheProperties:Lorg/json/JSONObject;

    invoke-static {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    const/4 p0, 0x0

    .line 310
    sput-object p0, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager;->mCacheProperties:Lorg/json/JSONObject;

    :cond_15
    :goto_15
    return-void
.end method

.method public static mergeDeepLinkProperty(Lorg/json/JSONObject;)V
    .registers 2

    .line 258
    :try_start_0
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager;->mDeepLinkProcessor:Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkProcessor;

    if-eqz v0, :cond_c

    .line 259
    invoke-interface {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkProcessor;->mergeDeepLinkProperty(Lorg/json/JSONObject;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception p0

    .line 262
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_c
    :goto_c
    return-void
.end method

.method public static parseDeepLink(Landroid/app/Activity;Z)V
    .registers 6

    .line 206
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager;->isDeepLink(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager;->isParsedDeepLink(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_59

    .line 209
    :cond_11
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 210
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getServerUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getConfigOptions()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->getCustomADChannelUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager;->createDeepLink(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkProcessor;

    move-result-object v1

    sput-object v1, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager;->mDeepLinkProcessor:Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkProcessor;

    if-nez v1, :cond_2e

    return-void

    .line 215
    :cond_2e
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->clearUtm()V

    const/4 v1, 0x1

    .line 216
    sput-boolean v1, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager;->mIsDeepLink:Z

    .line 219
    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager;->mDeepLinkProcessor:Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkProcessor;

    new-instance v3, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager$2;

    invoke-direct {v3, p1}, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager$2;-><init>(Z)V

    invoke-interface {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkProcessor;->setDeepLinkParseFinishCallback(Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager$OnDeepLinkParseFinishCallback;)V

    .line 240
    sget-object p1, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager;->mDeepLinkProcessor:Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkProcessor;

    invoke-interface {p1, v0}, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkProcessor;->parseDeepLink(Landroid/content/Intent;)V

    .line 242
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager;->cacheProperties()V

    .line 244
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager;->mDeepLinkProcessor:Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkProcessor;

    invoke-static {p1, v0}, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager;->trackDeepLinkLaunchEvent(Landroid/content/Context;Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkProcessor;)V

    .line 245
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string p1, "is_analytics_deeplink"

    invoke-virtual {p0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_58} :catch_5a

    goto :goto_5e

    :cond_59
    :goto_59
    return-void

    :catch_5a
    move-exception p0

    .line 247
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_5e
    return-void
.end method

.method public static requestDeferredDeepLink(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Z)V
    .registers 13

    const-string v0, "$user_agent"

    const-string v1, "$gaid"

    const-string v2, "$oaid"

    .line 314
    sget-boolean v3, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager;->mIsDeepLink:Z

    if-eqz v3, :cond_b

    return-void

    .line 316
    :cond_b
    :try_start_b
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 318
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;->getOpenAdIdentifierByReflection(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    if-eqz p1, :cond_61

    .line 320
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 321
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v4, ""

    .line 323
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 325
    :cond_25
    invoke-static {p0, p2, p3, v4}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->getDeviceInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 326
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_45

    .line 327
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "%s##gaid=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v2, v4

    const/4 p0, 0x1

    aput-object p2, v2, p0

    .line 328
    invoke-static {p3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 329
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 331
    :cond_45
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_57

    const-string p2, "ua"

    .line 332
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 333
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_57
    const-string p2, "app_parameter"

    .line 335
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_65

    .line 337
    :cond_61
    invoke-static {p0, p2, p3, v4}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->getDeviceInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_65
    const-string p1, "ids"

    .line 339
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/Base64Coder;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "model"

    const-string p1, "$model"

    .line 340
    invoke-virtual {p4, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "os"

    const-string p1, "$os"

    .line 341
    invoke-virtual {p4, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "os_version"

    const-string p1, "$os_version"

    .line 342
    invoke-virtual {p4, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "network"

    const-string p1, "$network_type"

    .line 343
    invoke-virtual {p4, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "app_id"

    const-string p1, "$app_id"

    .line 344
    invoke-virtual {p4, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "app_version"

    const-string p1, "$app_version"

    .line 345
    invoke-virtual {p4, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "timestamp"

    .line 346
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "project"

    .line 347
    new-instance p1, Lcom/sensorsdata/analytics/android/sdk/internal/beans/ServerUrl;

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getServerUrl()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/ServerUrl;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/ServerUrl;->getProject()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 348
    sget-object p0, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager;->mDeferredDeepLinkCallback:Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeferredDeepLinkCallback;

    invoke-static {v3, p0, p5, p6}, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeferredDeepLinkHelper;->request(Lorg/json/JSONObject;Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeferredDeepLinkCallback;Ljava/lang/String;Z)V
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_d8} :catch_d9

    goto :goto_dd

    :catch_d9
    move-exception p0

    .line 350
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_dd
    return-void
.end method

.method public static resetDeepLinkProcessor()V
    .registers 1

    const/4 v0, 0x0

    .line 270
    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager;->mDeepLinkProcessor:Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkProcessor;

    return-void
.end method

.method public static setDeepLinkCallback(Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLinkCallback;)V
    .registers 1

    .line 274
    sput-object p0, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager;->mDeepLinkCallback:Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeepLinkCallback;

    return-void
.end method

.method public static setDeferredDeepLinkCallback(Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeferredDeepLinkCallback;)V
    .registers 1

    .line 278
    sput-object p0, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager;->mDeferredDeepLinkCallback:Lcom/sensorsdata/analytics/android/sdk/deeplink/SensorsDataDeferredDeepLinkCallback;

    return-void
.end method

.method private static trackDeepLinkLaunchEvent(Landroid/content/Context;Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkProcessor;)V
    .registers 7

    .line 140
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 141
    instance-of v1, p1, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/SensorsDataDeepLink;

    if-eqz v1, :cond_f

    sget-boolean v1, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager;->mEnableDeepLinkInstallSource:Z

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    :try_start_10
    const-string v2, "$deeplink_url"

    .line 143
    invoke-interface {p1}, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkProcessor;->getDeepLinkUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "$time"

    .line 144
    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "$sat_has_installed_app"

    .line 145
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/SAAdvertUtils;->isInstallationTracked()Z

    move-result v2

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_30
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_30} :catch_31

    goto :goto_35

    :catch_31
    move-exception p1

    .line 147
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 149
    :goto_35
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->getLatestUtmProperties()Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 150
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->getUtmProperties()Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 151
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;->getInstance()Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;

    move-result-object p1

    new-instance v2, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager$1;

    invoke-direct {v2, v1, v0, p0}, Lcom/sensorsdata/analytics/android/sdk/advert/deeplink/DeepLinkManager$1;-><init>(ZLorg/json/JSONObject;Landroid/content/Context;)V

    invoke-virtual {p1, v2}, Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;->trackQueueEvent(Ljava/lang/Runnable;)V

    return-void
.end method
