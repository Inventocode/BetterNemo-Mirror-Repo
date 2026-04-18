.class public Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;
.super Ljava/lang/Object;
.source "PersistentLoader.java"


# static fields
.field private static volatile INSTANCE:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;


# instance fields
.field private final mAnonymousIdPst:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDistinctId;

.field private final mAppEndDataPst:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentAppEndData;

.field private final mAppExitDataPst:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentAppExitData;

.field private final mContext:Landroid/content/Context;

.field private final mDayDatePst:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDailyDate;

.field private final mFirstDayPst:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstDay;

.field private final mFirstInstallationPst:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstTrackInstallation;

.field private final mFirstInstallationWithCallbackPst:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstTrackInstallationWithCallback;

.field private final mFirstStartPst:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstStart;

.field private final mLoginIdKeyPst:Lcom/sensorsdata/analytics/android/sdk/data/persistent/LoginIdKeyPersistent;

.field private final mLoginIdPst:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoginId;

.field private final mRemoteSDKConfig:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentRemoteSDKConfig;

.field private final mSuperPropertiesPst:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentSuperProperties;

.field private final mUserIdsPst:Lcom/sensorsdata/analytics/android/sdk/data/persistent/UserIdentityPersistent;

.field private final mVisualConfigPst:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentVisualConfig;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->mContext:Landroid/content/Context;

    const-string p1, "app_end_data"

    .line 45
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->loadPersistent(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;

    move-result-object p1

    check-cast p1, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentAppEndData;

    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->mAppEndDataPst:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentAppEndData;

    const-string p1, "app_exit_data"

    .line 46
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->loadPersistent(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;

    move-result-object p1

    check-cast p1, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentAppExitData;

    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->mAppExitDataPst:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentAppExitData;

    const-string p1, "events_login_id"

    .line 47
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->loadPersistent(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;

    move-result-object p1

    check-cast p1, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoginId;

    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->mLoginIdPst:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoginId;

    const-string p1, "sensorsdata_sdk_configuration"

    .line 48
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->loadPersistent(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;

    move-result-object p1

    check-cast p1, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentRemoteSDKConfig;

    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->mRemoteSDKConfig:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentRemoteSDKConfig;

    const-string p1, "user_ids"

    .line 49
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->loadPersistent(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;

    move-result-object p1

    check-cast p1, Lcom/sensorsdata/analytics/android/sdk/data/persistent/UserIdentityPersistent;

    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->mUserIdsPst:Lcom/sensorsdata/analytics/android/sdk/data/persistent/UserIdentityPersistent;

    const-string p1, "login_id_key"

    .line 50
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->loadPersistent(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;

    move-result-object p1

    check-cast p1, Lcom/sensorsdata/analytics/android/sdk/data/persistent/LoginIdKeyPersistent;

    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->mLoginIdKeyPst:Lcom/sensorsdata/analytics/android/sdk/data/persistent/LoginIdKeyPersistent;

    const-string p1, "events_distinct_id"

    .line 51
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->loadPersistent(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;

    move-result-object p1

    check-cast p1, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDistinctId;

    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->mAnonymousIdPst:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDistinctId;

    const-string p1, "first_start"

    .line 52
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->loadPersistent(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;

    move-result-object p1

    check-cast p1, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstStart;

    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->mFirstStartPst:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstStart;

    const-string p1, "first_day"

    .line 53
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->loadPersistent(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;

    move-result-object p1

    check-cast p1, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstDay;

    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->mFirstDayPst:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstDay;

    const-string p1, "super_properties"

    .line 54
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->loadPersistent(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;

    move-result-object p1

    check-cast p1, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentSuperProperties;

    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->mSuperPropertiesPst:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentSuperProperties;

    const-string p1, "visual_properties"

    .line 55
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->loadPersistent(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;

    move-result-object p1

    check-cast p1, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentVisualConfig;

    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->mVisualConfigPst:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentVisualConfig;

    const-string p1, "first_track_installation"

    .line 56
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->loadPersistent(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;

    move-result-object p1

    check-cast p1, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstTrackInstallation;

    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->mFirstInstallationPst:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstTrackInstallation;

    const-string p1, "first_track_installation_with_callback"

    .line 57
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->loadPersistent(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;

    move-result-object p1

    check-cast p1, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstTrackInstallationWithCallback;

    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->mFirstInstallationWithCallbackPst:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstTrackInstallationWithCallback;

    const-string p1, "daily_date"

    .line 58
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->loadPersistent(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;

    move-result-object p1

    check-cast p1, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDailyDate;

    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->mDayDatePst:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDailyDate;

    return-void
.end method

.method public static getInstance()Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;
    .registers 1

    .line 72
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->INSTANCE:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;

    return-object v0
.end method

.method private loadPersistent(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity<",
            "*>;"
        }
    .end annotation

    .line 76
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 79
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_11a

    goto/16 :goto_c0

    :sswitch_15
    const-string v2, "daily_date"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1f

    goto/16 :goto_c0

    :cond_1f
    const/16 v0, 0xd

    goto/16 :goto_c0

    :sswitch_23
    const-string v2, "app_end_data"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2d

    goto/16 :goto_c0

    :cond_2d
    const/16 v0, 0xc

    goto/16 :goto_c0

    :sswitch_31
    const-string v2, "first_track_installation"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3b

    goto/16 :goto_c0

    :cond_3b
    const/16 v0, 0xb

    goto/16 :goto_c0

    :sswitch_3f
    const-string v2, "sensorsdata_sdk_configuration"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_49

    goto/16 :goto_c0

    :cond_49
    const/16 v0, 0xa

    goto/16 :goto_c0

    :sswitch_4d
    const-string v2, "app_exit_data"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_57

    goto/16 :goto_c0

    :cond_57
    const/16 v0, 0x9

    goto/16 :goto_c0

    :sswitch_5b
    const-string v2, "events_distinct_id"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_65

    goto/16 :goto_c0

    :cond_65
    const/16 v0, 0x8

    goto/16 :goto_c0

    :sswitch_69
    const-string v2, "first_day"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_72

    goto :goto_c0

    :cond_72
    const/4 v0, 0x7

    goto :goto_c0

    :sswitch_74
    const-string v2, "visual_properties"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7d

    goto :goto_c0

    :cond_7d
    const/4 v0, 0x6

    goto :goto_c0

    :sswitch_7f
    const-string v2, "user_ids"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_88

    goto :goto_c0

    :cond_88
    const/4 v0, 0x5

    goto :goto_c0

    :sswitch_8a
    const-string v2, "login_id_key"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_93

    goto :goto_c0

    :cond_93
    const/4 v0, 0x4

    goto :goto_c0

    :sswitch_95
    const-string v2, "first_start"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9e

    goto :goto_c0

    :cond_9e
    const/4 v0, 0x3

    goto :goto_c0

    :sswitch_a0
    const-string v2, "first_track_installation_with_callback"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a9

    goto :goto_c0

    :cond_a9
    const/4 v0, 0x2

    goto :goto_c0

    :sswitch_ab
    const-string v2, "super_properties"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b4

    goto :goto_c0

    :cond_b4
    const/4 v0, 0x1

    goto :goto_c0

    :sswitch_b6
    const-string v2, "events_login_id"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_bf

    goto :goto_c0

    :cond_bf
    const/4 v0, 0x0

    :goto_c0
    packed-switch v0, :pswitch_data_154

    return-object v1

    .line 107
    :pswitch_c4  #0xd
    new-instance p1, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDailyDate;

    invoke-direct {p1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDailyDate;-><init>()V

    return-object p1

    .line 81
    :pswitch_ca  #0xc
    new-instance p1, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentAppEndData;

    invoke-direct {p1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentAppEndData;-><init>()V

    return-object p1

    .line 87
    :pswitch_d0  #0xb
    new-instance p1, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstTrackInstallation;

    invoke-direct {p1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstTrackInstallation;-><init>()V

    return-object p1

    .line 95
    :pswitch_d6  #0xa
    new-instance p1, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentRemoteSDKConfig;

    invoke-direct {p1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentRemoteSDKConfig;-><init>()V

    return-object p1

    .line 105
    :pswitch_dc  #0x9
    new-instance p1, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentAppExitData;

    invoke-direct {p1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentAppExitData;-><init>()V

    return-object p1

    .line 83
    :pswitch_e2  #0x8
    new-instance p1, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDistinctId;

    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDistinctId;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 85
    :pswitch_ea  #0x7
    new-instance p1, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstDay;

    invoke-direct {p1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstDay;-><init>()V

    return-object p1

    .line 99
    :pswitch_f0  #0x6
    new-instance p1, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentVisualConfig;

    invoke-direct {p1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentVisualConfig;-><init>()V

    return-object p1

    .line 101
    :pswitch_f6  #0x5
    new-instance p1, Lcom/sensorsdata/analytics/android/sdk/data/persistent/UserIdentityPersistent;

    invoke-direct {p1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/UserIdentityPersistent;-><init>()V

    return-object p1

    .line 103
    :pswitch_fc  #0x4
    new-instance p1, Lcom/sensorsdata/analytics/android/sdk/data/persistent/LoginIdKeyPersistent;

    invoke-direct {p1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/LoginIdKeyPersistent;-><init>()V

    return-object p1

    .line 91
    :pswitch_102  #0x3
    new-instance p1, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstStart;

    invoke-direct {p1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstStart;-><init>()V

    return-object p1

    .line 89
    :pswitch_108  #0x2
    new-instance p1, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstTrackInstallationWithCallback;

    invoke-direct {p1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstTrackInstallationWithCallback;-><init>()V

    return-object p1

    .line 97
    :pswitch_10e  #0x1
    new-instance p1, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentSuperProperties;

    invoke-direct {p1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentSuperProperties;-><init>()V

    return-object p1

    .line 93
    :pswitch_114  #0x0
    new-instance p1, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoginId;

    invoke-direct {p1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoginId;-><init>()V

    return-object p1

    :sswitch_data_11a
    .sparse-switch
        -0x5598a5e9 -> :sswitch_b6
        -0x38b07789 -> :sswitch_ab
        -0x32e94684 -> :sswitch_a0
        -0x2926c9ed -> :sswitch_95
        -0x1b3a952f -> :sswitch_8a
        -0xfdd2bbc -> :sswitch_7f
        -0xcaeac6e -> :sswitch_74
        0x7f2ad8d -> :sswitch_69
        0x2afe7318 -> :sswitch_5b
        0x3703f18d -> :sswitch_4d
        0x38750b95 -> :sswitch_3f
        0x48681e9d -> :sswitch_31
        0x5ab6fcec -> :sswitch_23
        0x5afeb214 -> :sswitch_15
    .end sparse-switch

    :pswitch_data_154
    .packed-switch 0x0
        :pswitch_114  #00000000
        :pswitch_10e  #00000001
        :pswitch_108  #00000002
        :pswitch_102  #00000003
        :pswitch_fc  #00000004
        :pswitch_f6  #00000005
        :pswitch_f0  #00000006
        :pswitch_ea  #00000007
        :pswitch_e2  #00000008
        :pswitch_dc  #00000009
        :pswitch_d6  #0000000a
        :pswitch_d0  #0000000b
        :pswitch_ca  #0000000c
        :pswitch_c4  #0000000d
    .end packed-switch
.end method

.method public static preInit(Landroid/content/Context;)V
    .registers 3

    .line 62
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->INSTANCE:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;

    if-nez v0, :cond_17

    .line 63
    const-class v0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;

    monitor-enter v0

    .line 64
    :try_start_7
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->INSTANCE:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;

    if-nez v1, :cond_12

    .line 65
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;

    invoke-direct {v1, p0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->INSTANCE:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;

    .line 67
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    :goto_17
    return-void
.end method


# virtual methods
.method public getAnonymousIdPst()Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDistinctId;
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->mAnonymousIdPst:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDistinctId;

    return-object v0
.end method

.method public getAppEndDataPst()Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentAppEndData;
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->mAppEndDataPst:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentAppEndData;

    return-object v0
.end method

.method public getAppExitDataPst()Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentAppExitData;
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->mAppExitDataPst:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentAppExitData;

    return-object v0
.end method

.method public getDayDatePst()Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDailyDate;
    .registers 2

    .line 166
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->mDayDatePst:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentDailyDate;

    return-object v0
.end method

.method public getFirstDayPst()Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstDay;
    .registers 2

    .line 146
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->mFirstDayPst:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstDay;

    return-object v0
.end method

.method public getFirstInstallationPst()Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstTrackInstallation;
    .registers 2

    .line 158
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->mFirstInstallationPst:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstTrackInstallation;

    return-object v0
.end method

.method public getFirstInstallationWithCallbackPst()Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstTrackInstallationWithCallback;
    .registers 2

    .line 162
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->mFirstInstallationWithCallbackPst:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstTrackInstallationWithCallback;

    return-object v0
.end method

.method public getFirstStartPst()Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstStart;
    .registers 2

    .line 142
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->mFirstStartPst:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstStart;

    return-object v0
.end method

.method public getLoginIdKeyPst()Lcom/sensorsdata/analytics/android/sdk/data/persistent/LoginIdKeyPersistent;
    .registers 2

    .line 134
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->mLoginIdKeyPst:Lcom/sensorsdata/analytics/android/sdk/data/persistent/LoginIdKeyPersistent;

    return-object v0
.end method

.method public getLoginIdPst()Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoginId;
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->mLoginIdPst:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoginId;

    return-object v0
.end method

.method public getRemoteSDKConfig()Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentRemoteSDKConfig;
    .registers 2

    .line 130
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->mRemoteSDKConfig:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentRemoteSDKConfig;

    return-object v0
.end method

.method public getSuperPropertiesPst()Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentSuperProperties;
    .registers 2

    .line 150
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->mSuperPropertiesPst:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentSuperProperties;

    return-object v0
.end method

.method public getUserIdsPst()Lcom/sensorsdata/analytics/android/sdk/data/persistent/UserIdentityPersistent;
    .registers 2

    .line 138
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->mUserIdsPst:Lcom/sensorsdata/analytics/android/sdk/data/persistent/UserIdentityPersistent;

    return-object v0
.end method

.method public getVisualConfigPst()Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentVisualConfig;
    .registers 2

    .line 154
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->mVisualConfigPst:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentVisualConfig;

    return-object v0
.end method
