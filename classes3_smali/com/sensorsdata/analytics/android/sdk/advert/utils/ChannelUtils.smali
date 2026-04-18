.class public Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;
.super Ljava/lang/Object;
.source "ChannelUtils.java"


# static fields
.field private static final LATEST_UTM_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SHARED_PREF_CORRECT_TRACK_INSTALLATION:Ljava/lang/String; = "sensorsdata.correct.track.installation"

.field private static final SHARED_PREF_UTM:Ljava/lang/String; = "sensorsdata.utm"

.field private static final UTM_CAMPAIGN_KEY:Ljava/lang/String; = "SENSORS_ANALYTICS_UTM_CAMPAIGN"

.field private static final UTM_CONTENT_KEY:Ljava/lang/String; = "SENSORS_ANALYTICS_UTM_CONTENT"

.field private static final UTM_LINK_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final UTM_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final UTM_MEDIUM_KEY:Ljava/lang/String; = "SENSORS_ANALYTICS_UTM_MEDIUM"

.field private static final UTM_SOURCE_KEY:Ljava/lang/String; = "SENSORS_ANALYTICS_UTM_SOURCE"

.field private static final UTM_TERM_KEY:Ljava/lang/String; = "SENSORS_ANALYTICS_UTM_TERM"

.field private static final mDeepLinkBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sChannelSourceKeySet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sLatestUtmProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sUtmProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 57
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->sChannelSourceKeySet:Ljava/util/HashSet;

    .line 58
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils$1;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils$1;-><init>()V

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->UTM_MAP:Ljava/util/HashMap;

    .line 66
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils$2;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils$2;-><init>()V

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->mDeepLinkBlackList:Ljava/util/List;

    .line 70
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils$3;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils$3;-><init>()V

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->UTM_LINK_MAP:Ljava/util/HashMap;

    .line 78
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils$4;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils$4;-><init>()V

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->LATEST_UTM_MAP:Ljava/util/Map;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->sUtmProperties:Ljava/util/Map;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->sLatestUtmProperties:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkDeviceInfo(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 10

    const/4 v0, 0x0

    if-eqz p0, :cond_71

    .line 459
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_71

    :cond_a
    const-string v1, "##"

    .line 462
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 463
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 464
    array-length v2, p1

    if-nez v2, :cond_19

    return v0

    .line 467
    :cond_19
    array-length v2, p1

    const/4 v3, 0x0

    :goto_1b
    const/4 v4, 0x1

    if-ge v3, v2, :cond_39

    aget-object v5, p1, v3

    .line 468
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 469
    array-length v6, v5

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2f

    goto :goto_36

    .line 472
    :cond_2f
    aget-object v6, v5, v0

    aget-object v4, v5, v4

    invoke-interface {v1, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 474
    :cond_39
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_40

    return v0

    :cond_40
    const-string p1, "oaid"

    .line 477
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 478
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;->getOpenAdIdentifier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_70

    :cond_58
    const-string p1, "android_id"

    .line 479
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71

    .line 480
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->getIdentifier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_71

    :cond_70
    const/4 v0, 0x1

    :cond_71
    :goto_71
    return v0
.end method

.method public static checkOrSetChannelCallbackEvent(Ljava/lang/String;Lorg/json/JSONObject;Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 4

    if-nez p1, :cond_7

    .line 340
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 343
    :cond_7
    :try_start_7
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->isFirstChannelEvent(Ljava/lang/String;)Z

    move-result p0

    const-string v0, "$is_channel_callback_event"

    .line 344
    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    if-eqz p2, :cond_1b

    .line 345
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->hasUtmProperties(Lorg/json/JSONObject;)Z

    move-result p0

    if-nez p0, :cond_1b

    .line 346
    invoke-static {p2, p1}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->mergeUtmByMetaData(Landroid/content/Context;Lorg/json/JSONObject;)V

    :cond_1b
    const-string p0, "$channel_device_info"

    const-string p2, "1"

    .line 348
    invoke-virtual {p1, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_22} :catch_23

    goto :goto_27

    :catch_23
    move-exception p0

    .line 350
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_27
    return-object p1
.end method

.method public static clearLocalUtm()V
    .registers 3

    .line 251
    :try_start_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    move-result-object v0

    const-string v1, "sensorsdata.utm"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->setString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_10

    :catch_c
    move-exception v0

    .line 253
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_10
    return-void
.end method

.method public static clearMemoryUtm()V
    .registers 1

    .line 261
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->sUtmProperties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 262
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->sLatestUtmProperties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public static clearUtm()V
    .registers 0

    .line 269
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->clearMemoryUtm()V

    .line 270
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->clearLocalUtm()V

    return-void
.end method

.method public static commitRequestDeferredDeeplink(Z)V
    .registers 3

    .line 529
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    move-result-object v0

    const-string v1, "request_deferrer_deeplink"

    invoke-virtual {v0, v1, p0}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->setBool(Ljava/lang/String;Z)V

    return-void
.end method

.method private static getApplicationMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 313
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 314
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 316
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_26

    .line 319
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {p0, p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    goto :goto_27

    :cond_26
    const/4 p0, -0x1

    :goto_27
    if-eq p0, v1, :cond_2d

    .line 322
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_2e

    :cond_2d
    return-object v0

    :catch_2e
    const-string p0, ""

    return-object p0
.end method

.method public static getDeviceInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/16 p0, 0x9

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p0, v0

    const/4 p1, 0x1

    const-string v0, ""

    aput-object v0, p0, p1

    const/4 p1, 0x2

    aput-object v0, p0, p1

    const/4 p1, 0x3

    aput-object v0, p0, p1

    const/4 p1, 0x4

    aput-object v0, p0, p1

    const/4 p1, 0x5

    aput-object v0, p0, p1

    const/4 p1, 0x6

    aput-object v0, p0, p1

    const/4 p1, 0x7

    aput-object p2, p0, p1

    const/16 p1, 0x8

    aput-object p3, p0, p1

    const-string p1, "android_id=%s##imei=%s##imei_old=%s##imei_slot1=%s##imei_slot2=%s##imei_meid=%s##mac=%s##oaid=%s##oaid_reflection=%s"

    .line 161
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLatestUtmProperties()Lorg/json/JSONObject;
    .registers 2

    .line 98
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->sLatestUtmProperties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_10

    .line 99
    new-instance v0, Lorg/json/JSONObject;

    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->sLatestUtmProperties:Ljava/util/Map;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    return-object v0

    .line 101
    :cond_10
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

.method public static getUtmProperties()Lorg/json/JSONObject;
    .registers 2

    .line 91
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->sUtmProperties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_10

    .line 92
    new-instance v0, Lorg/json/JSONObject;

    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->sUtmProperties:Ljava/util/Map;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    return-object v0

    .line 94
    :cond_10
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

.method public static hasLinkUtmProperties(Ljava/util/Set;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_4f

    .line 131
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_4f

    .line 134
    :cond_a
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->UTM_LINK_MAP:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-eqz v2, :cond_14

    .line 136
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    return v3

    .line 141
    :cond_2e
    sget-object p0, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->sChannelSourceKeySet:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_34
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 142
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_34

    .line 143
    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->sChannelSourceKeySet:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    return v3

    :cond_4f
    :goto_4f
    return v0
.end method

.method public static hasUtmByMetaData(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 381
    :cond_4
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->UTM_MAP:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-eqz v2, :cond_e

    .line 383
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->getApplicationMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 384
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_2e
    return v0
.end method

.method public static hasUtmProperties(Lorg/json/JSONObject;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 114
    :cond_4
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->UTM_MAP:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-eqz v2, :cond_e

    .line 116
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_2a
    return v0
.end method

.method public static isCorrectTrackInstallation()Z
    .registers 3

    const/4 v0, 0x0

    .line 431
    :try_start_1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    move-result-object v1

    const-string v2, "sensorsdata.correct.track.installation"

    invoke-virtual {v1, v2, v0}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->getBool(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_c

    return v0

    :catch_c
    move-exception v1

    .line 433
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    return v0
.end method

.method public static isDeepLinkBlackList(Landroid/app/Activity;)Z
    .registers 4

    if-eqz p0, :cond_29

    .line 491
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->mDeepLinkBlackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 493
    :try_start_14
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 494
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_20} :catch_24

    if-eqz v1, :cond_8

    const/4 p0, 0x1

    return p0

    :catch_24
    move-exception v1

    .line 498
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_8

    :cond_29
    const/4 p0, 0x0

    return p0
.end method

.method public static isExistRequestDeferredDeeplink()Z
    .registers 2

    .line 511
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    move-result-object v0

    const-string v1, "request_deferrer_deeplink"

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->isExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFirstChannelEvent(Ljava/lang/String;)Z
    .registers 7

    .line 362
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getConfigOptions()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->getStorePlugins()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1d

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getConfigOptions()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->getStorePlugins()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    :goto_1e
    if-eqz v0, :cond_22

    move-object v0, p0

    goto :goto_34

    .line 363
    :cond_22
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p0, v3, v1

    const-string v4, "sensors_analytics_module_encrypt"

    const-string v5, "encryptAES"

    invoke-virtual {v0, v4, v5, v3}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;->invokeModuleFunction(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 364
    :goto_34
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object v0, v4, v1

    aput-object p0, v4, v2

    invoke-virtual {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->isFirstChannelEvent([Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4c

    .line 366
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->addChannelEvent(Ljava/lang/String;)V

    :cond_4c
    return p0
.end method

.method public static isGetDeviceInfo(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    .line 401
    :try_start_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 402
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_f

    if-nez p0, :cond_e

    :cond_d
    const/4 v0, 0x1

    :cond_e
    return v0

    :catch_f
    move-exception p0

    .line 404
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    return v0
.end method

.method public static isRequestDeferredDeeplink()Z
    .registers 3

    .line 520
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    move-result-object v0

    const-string v1, "request_deferrer_deeplink"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->getBool(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isTrackInstallation()Z
    .registers 2

    .line 417
    :try_start_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    move-result-object v0

    const-string v1, "sensorsdata.correct.track.installation"

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->isExists(Ljava/lang/String;)Z

    move-result v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    :catch_b
    move-exception v0

    .line 419
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return v0
.end method

.method public static loadUtmByLocal()V
    .registers 5

    .line 223
    :try_start_0
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->sLatestUtmProperties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 224
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    move-result-object v0

    const-string v1, "sensorsdata.utm"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 225
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7f

    .line 226
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 227
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->LATEST_UTM_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_26
    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 228
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 229
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 230
    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->sLatestUtmProperties:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_26

    .line 234
    :cond_48
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->sChannelSourceKeySet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4e
    :goto_4e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 235
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_latest_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 236
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 237
    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->sLatestUtmProperties:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7a} :catch_7b

    goto :goto_4e

    :catch_7b
    move-exception v0

    .line 242
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_7f
    return-void
.end method

.method public static mergeUtmByMetaData(Landroid/content/Context;Lorg/json/JSONObject;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 169
    :cond_3
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->UTM_MAP:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_d

    .line 171
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->getApplicationMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 172
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 173
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_d

    :cond_35
    return-void
.end method

.method public static parseParams(Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_95

    .line 191
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_95

    .line 192
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->UTM_LINK_MAP:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 193
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 194
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 195
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 196
    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->sUtmProperties:Ljava/util/Map;

    sget-object v4, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->UTM_MAP:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->sLatestUtmProperties:Ljava/util/Map;

    sget-object v4, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->LATEST_UTM_MAP:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    .line 200
    :cond_4f
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->sChannelSourceKeySet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_55
    :goto_55
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_95

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 203
    :try_start_61
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/SADataHelper;->assertPropertyKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_68

    goto :goto_55

    .line 206
    :cond_68
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 207
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_55

    .line 208
    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->sUtmProperties:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->sLatestUtmProperties:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_latest_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_8f} :catch_90

    goto :goto_55

    :catch_90
    move-exception v1

    .line 212
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_55

    :cond_95
    return-void
.end method

.method public static removeDeepLinkInfo(Lorg/json/JSONObject;)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    .line 284
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p0

    .line 285
    :cond_7
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 286
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "$latest"

    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_23

    const-string v1, "_latest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 288
    :cond_23
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_26} :catch_27

    goto :goto_7

    :catch_27
    move-exception p0

    .line 292
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_2b
    return-void
.end method

.method public static saveCorrectTrackInstallation(Z)V
    .registers 3

    .line 445
    :try_start_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    move-result-object v0

    const-string v1, "sensorsdata.correct.track.installation"

    invoke-virtual {v0, v1, p0}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->setBool(Ljava/lang/String;Z)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_e

    :catch_a
    move-exception p0

    .line 447
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_e
    return-void
.end method

.method public static saveDeepLinkInfo()V
    .registers 3

    .line 301
    :try_start_0
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->sLatestUtmProperties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_18

    .line 302
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    move-result-object v0

    const-string v1, "sensorsdata.utm"

    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->sLatestUtmProperties:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20

    .line 304
    :cond_18
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->clearLocalUtm()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    goto :goto_20

    :catch_1c
    move-exception v0

    .line 307
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_20
    return-void
.end method

.method public static varargs setSourceChannelKeys([Ljava/lang/String;)V
    .registers 5

    .line 180
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->sChannelSourceKeySet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    if-eqz p0, :cond_1e

    .line 181
    array-length v0, p0

    if-lez v0, :cond_1e

    .line 182
    array-length v0, p0

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_1e

    aget-object v2, p0, v1

    .line 183
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 184
    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/advert/utils/ChannelUtils;->sChannelSourceKeySet:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1e
    return-void
.end method
