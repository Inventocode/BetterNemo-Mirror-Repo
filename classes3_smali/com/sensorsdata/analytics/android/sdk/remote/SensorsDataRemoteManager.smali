.class public Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;
.super Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;
.source "SensorsDataRemoteManager.java"


# static fields
.field private static final SHARED_PREF_REQUEST_TIME:Ljava/lang/String; = "sensorsdata.request.time"

.field private static final SHARED_PREF_REQUEST_TIME_RANDOM:Ljava/lang/String; = "sensorsdata.request.time.random"

.field private static final TAG:Ljava/lang/String; = "SA.SensorsDataRemoteManager"


# instance fields
.field private volatile mIsInit:Z

.field private volatile mPullSDKConfigCountDownTimer:Landroid/os/CountDownTimer;

.field private final mStorageManager:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;


# direct methods
.method public constructor <init>(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;)V
    .registers 3

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;-><init>(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;)V

    const/4 p1, 0x1

    .line 54
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->mIsInit:Z

    .line 58
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->mStorageManager:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    const-string p1, "SA.SensorsDataRemoteManager"

    const-string p2, "Construct a SensorsDataRemoteManager"

    .line 59
    invoke-static {p1, p2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;Z)V
    .registers 2

    .line 46
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->pullSDKConfigCount(Z)V

    return-void
.end method

.method private cleanRemoteRequestRandomTime()V
    .registers 3

    .line 108
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->mStorageManager:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    const-string v1, "sensorsdata.request.time"

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->remove(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->mStorageManager:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    const-string v1, "sensorsdata.request.time.random"

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->remove(Ljava/lang/String;)V

    return-void
.end method

.method private isRequestValid()Z
    .registers 9

    const/4 v0, 0x1

    .line 70
    :try_start_1
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->mStorageManager:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    const-string v2, "sensorsdata.request.time"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 71
    iget-object v5, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->mStorageManager:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    const-string v6, "sensorsdata.request.time.random"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->getInteger(Ljava/lang/String;I)I

    move-result v5

    cmp-long v6, v1, v3

    if-eqz v6, :cond_39

    if-eqz v5, :cond_39

    .line 73
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_22} :catch_35

    sub-long/2addr v3, v1

    long-to-float v1, v3

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_39

    const/high16 v2, 0x447a0000  # 1000.0f

    div-float/2addr v1, v2

    mul-int/lit16 v5, v5, 0xe10

    int-to-float v2, v5

    cmpg-float v1, v1, v2

    if-gez v1, :cond_39

    const/4 v0, 0x0

    goto :goto_39

    :catch_35
    move-exception v1

    .line 80
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_39
    :goto_39
    return v0
.end method

.method private pullSDKConfigCount(Z)V
    .registers 10

    .line 173
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->mPullSDKConfigCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_c

    .line 174
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->mPullSDKConfigCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    .line 175
    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->mPullSDKConfigCountDownTimer:Landroid/os/CountDownTimer;

    .line 178
    :cond_c
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager$2;

    const-wide/32 v3, 0x15f90

    const-wide/16 v5, 0x7530

    move-object v1, v0

    move-object v2, p0

    move v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager$2;-><init>(Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;JJZ)V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->mPullSDKConfigCountDownTimer:Landroid/os/CountDownTimer;

    .line 224
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->mPullSDKConfigCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method private writeRemoteRequestRandomTime()V
    .registers 7

    .line 89
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;->mContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getInternalConfigs()Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    move-result-object v0

    iget-object v0, v0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;->saConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    if-eqz v0, :cond_4a

    .line 90
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;->mContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getInternalConfigs()Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    move-result-object v1

    iget-boolean v1, v1, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;->isRemoteConfigEnabled:Z

    if-nez v1, :cond_15

    goto :goto_4a

    .line 94
    :cond_15
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->getMinRequestInterval()I

    move-result v1

    .line 95
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 97
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->getMaxRequestInterval()I

    move-result v4

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->getMinRequestInterval()I

    move-result v5

    if-le v4, v5, :cond_3c

    .line 98
    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->getMaxRequestInterval()I

    move-result v5

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->getMinRequestInterval()I

    move-result v0

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v0

    add-int/2addr v1, v0

    .line 100
    :cond_3c
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->mStorageManager:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    const-string v4, "sensorsdata.request.time"

    invoke-virtual {v0, v4, v2, v3}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->setLong(Ljava/lang/String;J)V

    .line 101
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->mStorageManager:Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    const-string v2, "sensorsdata.request.time.random"

    invoke-virtual {v0, v2, v1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->setInteger(Ljava/lang/String;I)V

    :cond_4a
    :goto_4a
    return-void
.end method


# virtual methods
.method public applySDKConfigFromCache()V
    .registers 5

    .line 278
    :try_start_0
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->mIsInit:Z

    if-eqz v0, :cond_10

    .line 279
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getRemoteConfigFromLocal()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 280
    iput-boolean v1, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->mIsInit:Z

    goto :goto_18

    .line 282
    :cond_10
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getRemoteConfig()Ljava/lang/String;

    move-result-object v0

    .line 284
    :goto_18
    invoke-virtual {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;->toSDKRemoteConfig(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;

    move-result-object v0

    .line 285
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SALog;->isLogEnabled()Z

    move-result v1
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_6e

    const-string v2, "SA.SensorsDataRemoteManager"

    if-eqz v1, :cond_3c

    .line 286
    :try_start_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cache remote config is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :cond_3c
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;->mSensorsDataAPI:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    if-eqz v1, :cond_6b

    .line 290
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;->isDisableDebugMode()Z

    move-result v1

    if-eqz v1, :cond_52

    .line 291
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;->mSensorsDataAPI:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;->DEBUG_OFF:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;

    invoke-virtual {v1, v3}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->setDebugMode(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;)V

    const-string v1, "Set DebugOff Mode"

    .line 292
    invoke-static {v2, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    :cond_52
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;->isDisableSDK()Z

    move-result v1
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_56} :catch_6e

    if-eqz v1, :cond_6b

    .line 298
    :try_start_58
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;->mContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getAnalyticsMessages()Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->flush()V

    const-string v1, "DisableSDK is true"

    .line 299
    invoke-static {v2, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_66} :catch_67

    goto :goto_6b

    :catch_67
    move-exception v1

    .line 301
    :try_start_68
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 305
    :cond_6b
    :goto_6b
    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;->mSDKRemoteConfig:Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6d} :catch_6e

    goto :goto_72

    :catch_6e
    move-exception v0

    .line 307
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_72
    return-void
.end method

.method public pullSDKConfigFromServer()V
    .registers 5

    .line 114
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;->mContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getInternalConfigs()Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    move-result-object v0

    iget-object v0, v0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;->saConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    if-eqz v0, :cond_6a

    .line 115
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isDisableSDK()Z

    move-result v1

    if-nez v1, :cond_6a

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;->mContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    .line 116
    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getInternalConfigs()Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    move-result-object v1

    iget-boolean v1, v1, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;->isRemoteConfigEnabled:Z

    if-nez v1, :cond_29

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;->mContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getInternalConfigs()Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    move-result-object v1

    iget-object v1, v1, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;->saConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isEnableEncrypt()Z

    move-result v1

    if-nez v1, :cond_29

    goto :goto_6a

    .line 121
    :cond_29
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isDisableRandomTimeRequestRemoteConfig()Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "SA.SensorsDataRemoteManager"

    if-nez v1, :cond_60

    .line 122
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->getMinRequestInterval()I

    move-result v1

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->getMaxRequestInterval()I

    move-result v0

    if-le v1, v0, :cond_3d

    goto :goto_60

    .line 129
    :cond_3d
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;->isSecretKeyValid()Z

    move-result v0

    if-nez v0, :cond_4f

    .line 130
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager$RandomTimeType;->RandomTimeTypeWrite:Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager$RandomTimeType;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->requestRemoteConfig(Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager$RandomTimeType;Z)V

    const-string v0, "remote config: Request remote config because encrypt key is null"

    .line 131
    invoke-static {v3, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 136
    :cond_4f
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->isRequestValid()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 137
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager$RandomTimeType;->RandomTimeTypeWrite:Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager$RandomTimeType;

    invoke-virtual {p0, v0, v2}, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->requestRemoteConfig(Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager$RandomTimeType;Z)V

    const-string v0, "remote config: Request remote config because satisfy the random request condition"

    .line 138
    invoke-static {v3, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5f
    return-void

    .line 123
    :cond_60
    :goto_60
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager$RandomTimeType;->RandomTimeTypeClean:Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager$RandomTimeType;

    invoke-virtual {p0, v0, v2}, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->requestRemoteConfig(Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager$RandomTimeType;Z)V

    const-string v0, "remote config: Request remote config because disableRandomTimeRequestRemoteConfig or minHourInterval greater than maxHourInterval"

    .line 124
    invoke-static {v3, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6a
    :goto_6a
    return-void
.end method

.method public requestRemoteConfig(Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager$RandomTimeType;Z)V
    .registers 4

    .line 144
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;->mDisableDefaultRemoteConfig:Z

    if-eqz v0, :cond_c

    const-string p1, "SA.SensorsDataRemoteManager"

    const-string p2, "disableDefaultRemoteConfig is true"

    .line 145
    invoke-static {p1, p2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 149
    :cond_c
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager$4;->$SwitchMap$com$sensorsdata$analytics$android$sdk$remote$BaseSensorsDataSDKRemoteManager$RandomTimeType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1f

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1b

    goto :goto_22

    .line 154
    :cond_1b
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->cleanRemoteRequestRandomTime()V

    goto :goto_22

    .line 151
    :cond_1f
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->writeRemoteRequestRandomTime()V

    .line 160
    :goto_22
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/Dispatcher;->getInstance()Lcom/sensorsdata/analytics/android/sdk/util/Dispatcher;

    move-result-object p1

    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager$1;

    invoke-direct {v0, p0, p2}, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager$1;-><init>(Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;Z)V

    invoke-virtual {p1, v0}, Lcom/sensorsdata/analytics/android/sdk/util/Dispatcher;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resetPullSDKConfigTimer()V
    .registers 3

    const/4 v0, 0x0

    .line 230
    :try_start_1
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->mPullSDKConfigCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v1, :cond_a

    .line 231
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->mPullSDKConfigCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_f
    .catchall {:try_start_1 .. :try_end_a} :catchall_d

    .line 236
    :cond_a
    :goto_a
    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->mPullSDKConfigCountDownTimer:Landroid/os/CountDownTimer;

    goto :goto_14

    :catchall_d
    move-exception v1

    goto :goto_15

    :catch_f
    move-exception v1

    .line 234
    :try_start_10
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_d

    goto :goto_a

    :goto_14
    return-void

    .line 236
    :goto_15
    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;->mPullSDKConfigCountDownTimer:Landroid/os/CountDownTimer;

    .line 237
    throw v1
.end method

.method protected setSDKRemoteConfig(Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;)V
    .registers 7

    const-string v0, "SA.SensorsDataRemoteManager"

    .line 249
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 250
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "$app_remote_config"

    .line 251
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 252
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;->getInstance()Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;

    move-result-object v3

    new-instance v4, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager$3;

    invoke-direct {v4, p0, v1}, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager$3;-><init>(Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;Lorg/json/JSONObject;)V

    invoke-virtual {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;->trackQueueEvent(Ljava/lang/Runnable;)V

    .line 258
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;->mContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getAnalyticsMessages()Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->flush()V

    .line 259
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->commitRemoteConfig(Ljava/lang/String;)V

    const-string v1, "Save remote data"

    .line 260
    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 262
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;->getEffectMode()I

    move-result v2

    if-ne v1, v2, :cond_48

    .line 263
    sput-object p1, Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;->mSDKRemoteConfig:Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataSDKRemoteConfig;

    const-string p1, "The remote configuration takes effect immediately"

    .line 264
    invoke-static {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_43} :catch_44

    goto :goto_48

    :catch_44
    move-exception p1

    .line 267
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_48
    :goto_48
    return-void
.end method
