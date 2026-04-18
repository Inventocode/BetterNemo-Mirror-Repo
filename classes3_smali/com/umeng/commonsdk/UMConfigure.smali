.class public Lcom/umeng/commonsdk/UMConfigure;
.super Ljava/lang/Object;
.source "UMConfigure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/UMConfigure$BS_TYPE;
    }
.end annotation


# static fields
.field public static AUTO_ACTIVITY_PAGE_COLLECTION:Lcom/umeng/analytics/MobclickAgent$PageMode; = null

.field private static final BUSINESS_TYPE:[Ljava/lang/String;

.field public static final DEVICE_TYPE_BOX:I = 0x2

.field public static final DEVICE_TYPE_PHONE:I = 0x1

.field private static final KEY_FILE_NAME_APPKEY:Ljava/lang/String; = "APPKEY"

.field private static final KEY_FILE_NAME_LOG:Ljava/lang/String; = "LOG"

.field private static final KEY_METHOD_NAME_PUSH_SETCHANNEL:Ljava/lang/String; = "setMessageChannel"

.field private static final KEY_METHOD_NAME_PUSH_SET_SECRET:Ljava/lang/String; = "setSecret"

.field private static final KEY_METHOD_NAME_SETAPPKEY:Ljava/lang/String; = "setAppkey"

.field private static final KEY_METHOD_NAME_SETCHANNEL:Ljava/lang/String; = "setChannel"

.field private static final KEY_METHOD_NAME_SETDEBUGMODE:Ljava/lang/String; = "setDebugMode"

.field private static PreInitLock:Ljava/lang/Object; = null

.field private static final TAG:Ljava/lang/String; = "UMConfigure"

.field private static final WRAPER_TYPE_COCOS2DX_X:Ljava/lang/String; = "Cocos2d-x"

.field private static final WRAPER_TYPE_COCOS2DX_XLUA:Ljava/lang/String; = "Cocos2d-x_lua"

.field private static final WRAPER_TYPE_FLUTTER:Ljava/lang/String; = "flutter"

.field private static final WRAPER_TYPE_HYBRID:Ljava/lang/String; = "hybrid"

.field private static final WRAPER_TYPE_NATIVE:Ljava/lang/String; = "native"

.field private static final WRAPER_TYPE_PHONEGAP:Ljava/lang/String; = "phonegap"

.field private static final WRAPER_TYPE_REACTNATIVE:Ljava/lang/String; = "react-native"

.field private static final WRAPER_TYPE_UNITY:Ljava/lang/String; = "Unity"

.field private static final WRAPER_TYPE_WEEX:Ljava/lang/String; = "weex"

.field private static debugLog:Z = false

.field private static isFinish:Z

.field public static isInit:Z

.field private static lock:Ljava/lang/Object;

.field private static lockObject:Ljava/lang/Object;

.field private static mOnGetOaidListener:Lcom/umeng/commonsdk/listener/OnGetOaidListener;

.field private static policyGrantInvokedFlag:I

.field private static policyGrantResult:I

.field private static preInitComplete:Z

.field private static preInitInvokedFlag:I

.field public static sAppkey:Ljava/lang/String;

.field public static sChannel:Ljava/lang/String;

.field private static shouldCheckShareSdk:Z

.field public static umDebugLog:Lcom/umeng/commonsdk/debug/UMLog;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 60
    new-instance v0, Lcom/umeng/commonsdk/debug/UMLog;

    invoke-direct {v0}, Lcom/umeng/commonsdk/debug/UMLog;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMLog;

    const/4 v0, 0x0

    .line 62
    sput-boolean v0, Lcom/umeng/commonsdk/UMConfigure;->preInitComplete:Z

    .line 63
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/umeng/commonsdk/UMConfigure;->PreInitLock:Ljava/lang/Object;

    const-string v1, ""

    .line 64
    sput-object v1, Lcom/umeng/commonsdk/UMConfigure;->sAppkey:Ljava/lang/String;

    .line 65
    sput-object v1, Lcom/umeng/commonsdk/UMConfigure;->sChannel:Ljava/lang/String;

    .line 80
    sput-boolean v0, Lcom/umeng/commonsdk/UMConfigure;->isInit:Z

    .line 81
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/umeng/commonsdk/UMConfigure;->lock:Ljava/lang/Object;

    .line 82
    sput v0, Lcom/umeng/commonsdk/UMConfigure;->preInitInvokedFlag:I

    .line 83
    sput v0, Lcom/umeng/commonsdk/UMConfigure;->policyGrantInvokedFlag:I

    .line 84
    sput v0, Lcom/umeng/commonsdk/UMConfigure;->policyGrantResult:I

    const/4 v1, 0x1

    .line 86
    sput-boolean v1, Lcom/umeng/commonsdk/UMConfigure;->shouldCheckShareSdk:Z

    .line 88
    sget-object v1, Lcom/umeng/analytics/MobclickAgent$PageMode;->AUTO:Lcom/umeng/analytics/MobclickAgent$PageMode;

    sput-object v1, Lcom/umeng/commonsdk/UMConfigure;->AUTO_ACTIVITY_PAGE_COLLECTION:Lcom/umeng/analytics/MobclickAgent$PageMode;

    const-string v2, "apm"

    const-string v3, "push"

    const-string v4, "share"

    const-string v5, "ulink"

    const-string v6, "uverify"

    const-string v7, "usms"

    const-string v8, "urec"

    const-string v9, "abtest"

    const-string v10, "game"

    const-string v11, "zid"

    .line 108
    filled-new-array/range {v2 .. v11}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/umeng/commonsdk/UMConfigure;->BUSINESS_TYPE:[Ljava/lang/String;

    .line 299
    sput-boolean v0, Lcom/umeng/commonsdk/UMConfigure;->isFinish:Z

    .line 300
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/UMConfigure;->lockObject:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/umeng/commonsdk/listener/OnGetOaidListener;
    .registers 1

    .line 54
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->mOnGetOaidListener:Lcom/umeng/commonsdk/listener/OnGetOaidListener;

    return-object v0
.end method

.method private static checkShareSdk(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "isZyb"

    .line 318
    invoke-virtual {p0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_b

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    const/4 v0, 0x1

    :catchall_b
    :cond_b
    return v0
.end method

.method private static deleteModuleTag(Lcom/umeng/commonsdk/UMConfigure$BS_TYPE;Ljava/lang/String;)V
    .registers 6

    const-string v0, "UMLog"

    if-nez p0, :cond_a

    const-string p0, "传入业务类型枚举值不能为null，deleteModuleTag调用无效，请检查传入参数。"

    .line 1082
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1086
    :cond_a
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    const-string p0, "传入key为空，deleteModuleTag调用无效，请检查传入参数。"

    .line 1087
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1091
    :cond_16
    :try_start_16
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    const/16 v2, 0x40

    if-le v1, v2, :cond_29

    const-string p0, "传入key长度超限，deleteModuleTag调用无效，请检查传入参数。"

    .line 1093
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1097
    :cond_29
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const-string v1, ""

    .line 1099
    sget-object v2, Lcom/umeng/commonsdk/UMConfigure;->BUSINESS_TYPE:[Ljava/lang/String;

    array-length v3, v2

    if-ge p0, v3, :cond_36

    .line 1100
    aget-object v1, v2, p0

    .line 1102
    :cond_36
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_42

    const-string p0, "传入业务类型参数错误，deleteModuleTag调用无效。"

    .line 1103
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1106
    :cond_42
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1107
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/TagHelper;->deleteModuleTag(Ljava/lang/String;)V
    :try_end_59
    .catchall {:try_start_16 .. :try_end_59} :catchall_59

    :catchall_59
    return-void
.end method

.method private static enterRTDModeIfNeeded(Landroid/content/Context;)V
    .registers 12

    if-nez p0, :cond_3

    return-void

    :cond_3
    const-string v0, "um_rtd_conf"

    const-string v1, "debugkey"

    .line 418
    invoke-static {p0, v0, v1}, Lcom/umeng/common/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 419
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8c

    const-string v3, "startTime"

    .line 420
    invoke-static {p0, v0, v3}, Lcom/umeng/common/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "period"

    .line 421
    invoke-static {p0, v0, v4}, Lcom/umeng/common/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 424
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-wide/16 v6, 0x0

    if-nez v5, :cond_2e

    .line 426
    :try_start_25
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2e

    goto :goto_2f

    :catchall_2e
    :cond_2e
    move-wide v8, v6

    .line 431
    :goto_2f
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3e

    .line 433
    :try_start_35
    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3
    :try_end_3d
    .catchall {:try_start_35 .. :try_end_3d} :catchall_3e

    goto :goto_3f

    :catchall_3e
    :cond_3e
    move-wide v3, v6

    :goto_3f
    const-string v5, "MobclickRT"

    cmp-long v10, v8, v6

    if-eqz v10, :cond_84

    cmp-long v10, v3, v6

    if-nez v10, :cond_4a

    goto :goto_84

    .line 447
    :cond_4a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3c

    mul-long v3, v3, v8

    const-wide/16 v8, 0x3e8

    mul-long v3, v3, v8

    cmp-long v8, v6, v3

    if-lez v8, :cond_6d

    const-string v1, "--->>> [RTD]本地缓存dk值已经超时，清除缓存数据。"

    .line 450
    invoke-static {v5, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    invoke-static {p0, v0}, Lcom/umeng/common/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 452
    invoke-static {}, Lcom/umeng/analytics/AnalyticsConfig;->isRealTimeDebugMode()Z

    move-result p0

    if-eqz p0, :cond_8c

    .line 453
    invoke-static {}, Lcom/umeng/analytics/AnalyticsConfig;->turnOffRealTimeDebug()V

    goto :goto_8c

    .line 457
    :cond_6d
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 458
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    invoke-static {}, Lcom/umeng/analytics/AnalyticsConfig;->isRealTimeDebugMode()Z

    move-result v0

    if-nez v0, :cond_8c

    const-string v0, "--->>> [RTD]本地缓存dk值在有效期内，切换到埋点验证模式。"

    .line 460
    invoke-static {v5, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    invoke-static {p0}, Lcom/umeng/analytics/AnalyticsConfig;->turnOnRealTimeDebug(Ljava/util/Map;)V

    goto :goto_8c

    :cond_84
    :goto_84
    const-string v1, "--->>> [RTD]本地缓存startTime或者duration值无效，清除缓存数据"

    .line 440
    invoke-static {v5, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    invoke-static {p0, v0}, Lcom/umeng/common/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_8c
    :goto_8c
    return-void
.end method

.method private static getClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 119
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_6

    :catch_5
    const/4 p0, 0x0

    :goto_6
    return-object p0
.end method

.method private static getDecInstanceObject(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_18

    const/4 v1, 0x0

    :try_start_4
    new-array v2, v1, [Ljava/lang/Class;

    .line 139
    invoke-virtual {p0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0
    :try_end_a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_a} :catch_b

    goto :goto_c

    :catch_b
    move-object p0, v0

    :goto_c
    if-eqz p0, :cond_18

    const/4 v2, 0x1

    .line 146
    invoke-virtual {p0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    :try_start_12
    new-array v1, v1, [Ljava/lang/Object;

    .line 148
    invoke-virtual {p0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_18} :catch_18
    .catch Ljava/lang/InstantiationException; {:try_start_12 .. :try_end_18} :catch_18
    .catch Ljava/lang/IllegalAccessException; {:try_start_12 .. :try_end_18} :catch_18
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_12 .. :try_end_18} :catch_18

    :catch_18
    :cond_18
    return-object v0
.end method

.method private static getDecMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_f

    .line 188
    :try_start_3
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_7} :catch_8

    goto :goto_9

    :catch_8
    nop

    :goto_9
    if-eqz v0, :cond_f

    const/4 p0, 0x1

    .line 195
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :cond_f
    return-object v0
.end method

.method public static getInitStatus()Z
    .registers 2

    .line 304
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 305
    :try_start_3
    sget-boolean v1, Lcom/umeng/commonsdk/UMConfigure;->isFinish:Z

    .line 306
    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private static getModuleTags()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1116
    :try_start_0
    invoke-static {}, Lcom/umeng/commonsdk/statistics/TagHelper;->getModuleTags()Ljava/util/Map;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    goto :goto_6

    :catchall_5
    const/4 v0, 0x0

    :goto_6
    return-object v0
.end method

.method public static getOaid(Landroid/content/Context;Lcom/umeng/commonsdk/listener/OnGetOaidListener;)V
    .registers 3

    if-nez p0, :cond_e

    .line 1206
    sget-boolean p0, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz p0, :cond_d

    const-string p0, "UMConfigure"

    const-string p1, "context is null !!!"

    .line 1207
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return-void

    .line 1211
    :cond_e
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 1212
    sput-object p1, Lcom/umeng/commonsdk/UMConfigure;->mOnGetOaidListener:Lcom/umeng/commonsdk/listener/OnGetOaidListener;

    .line 1213
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/umeng/commonsdk/UMConfigure$4;

    invoke-direct {v0, p0}, Lcom/umeng/commonsdk/UMConfigure$4;-><init>(Landroid/content/Context;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1221
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static getTestDeviceInfo(Landroid/content/Context;)[Ljava/lang/String;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    if-eqz p0, :cond_13

    const/4 v1, 0x0

    .line 1190
    :try_start_6
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getDeviceIdForGeneral(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 1191
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_13} :catch_13

    :catch_13
    :cond_13
    return-object v0
.end method

.method public static getUMIDString(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    if-eqz p0, :cond_b

    .line 1013
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 1014
    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->getUMId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getUmengZID(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    if-eqz p0, :cond_b

    .line 1022
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 1023
    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->getZid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method private static ignoreSdkCheck(Landroid/content/Context;)V
    .registers 1

    const/4 p0, 0x0

    .line 113
    sput-boolean p0, Lcom/umeng/commonsdk/UMConfigure;->shouldCheckShareSdk:Z

    return-void
.end method

.method public static init(Landroid/content/Context;ILjava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 334
    invoke-static {p0, v0, v0, p1, p2}, Lcom/umeng/commonsdk/UMConfigure;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 15

    .line 477
    const-class v0, Lcom/umeng/analytics/MobclickAgent;

    const-class v1, Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_6
    sget-boolean v4, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz v4, :cond_29

    const-string v4, "UMConfigure"

    const-string v5, "common version is 9.4.4"

    .line 478
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "UMConfigure"

    .line 479
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "common type is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/umeng/commonsdk/statistics/SdkVersion;->SDK_TYPE:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    if-nez p0, :cond_37

    .line 484
    sget-boolean p1, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz p1, :cond_36

    const-string p1, "UMConfigure"

    const-string p2, "context is null !!!"

    .line 485
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    return-void

    .line 489
    :cond_37
    sget-boolean v4, Lcom/umeng/commonsdk/UMConfigure;->isInit:Z

    if-eqz v4, :cond_47

    .line 490
    sget-boolean p1, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz p1, :cond_46

    const-string p1, "UMConfigure"

    const-string p2, "has inited !!!"

    .line 491
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_46
    return-void

    .line 496
    :cond_47
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_4b} :catch_44e
    .catchall {:try_start_6 .. :try_end_4b} :catchall_432

    :try_start_4b
    const-string v5, "com.umeng.umzid.ZIDManager"

    .line 500
    invoke-static {v5}, Lcom/umeng/commonsdk/UMConfigure;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    if-nez v5, :cond_63

    const-string v5, "UMConfigure"

    const-string v6, "--->>> SDK 初始化失败，请检查是否集成umeng-asms-1.2.x.aar库。<<<--- "

    .line 502
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    new-instance v5, Lcom/umeng/commonsdk/UMConfigure$1;

    invoke-direct {v5, v4}, Lcom/umeng/commonsdk/UMConfigure$1;-><init>(Landroid/content/Context;)V

    .line 515
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V
    :try_end_62
    .catchall {:try_start_4b .. :try_end_62} :catchall_63

    return-void

    :catchall_63
    :cond_63
    :try_start_63
    const-string v5, "com.umeng.message.PushAgent"

    .line 525
    invoke-static {v5}, Lcom/umeng/commonsdk/UMConfigure;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    if-eqz v5, :cond_84

    .line 527
    invoke-static {v5}, Lcom/umeng/commonsdk/UMConfigure;->checkShareSdk(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_84

    const-string v5, "UMLog"

    const-string v6, "基础组件库9.3.x版本仅支持6.2.0及更高版本推送SDK、7.1.0及更高版本分享SDK。"

    .line 528
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    sget-boolean v5, Lcom/umeng/commonsdk/UMConfigure;->shouldCheckShareSdk:Z

    if-eqz v5, :cond_84

    .line 530
    new-instance v5, Lcom/umeng/commonsdk/UMConfigure$2;

    invoke-direct {v5, v4}, Lcom/umeng/commonsdk/UMConfigure$2;-><init>(Landroid/content/Context;)V

    .line 542
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V
    :try_end_84
    .catchall {:try_start_63 .. :try_end_84} :catchall_84

    :catchall_84
    :cond_84
    :try_start_84
    const-string v5, "com.umeng.socialize.UMShareAPI"

    .line 550
    invoke-static {v5}, Lcom/umeng/commonsdk/UMConfigure;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    if-eqz v5, :cond_a5

    .line 552
    invoke-static {v5}, Lcom/umeng/commonsdk/UMConfigure;->checkShareSdk(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_a5

    const-string v5, "UMLog"

    const-string v6, "基础组件库9.3.x版本仅支持6.2.0及更高版本推送SDK、7.1.0及更高版本分享SDK。"

    .line 553
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    sget-boolean v5, Lcom/umeng/commonsdk/UMConfigure;->shouldCheckShareSdk:Z

    if-eqz v5, :cond_a5

    .line 555
    new-instance v5, Lcom/umeng/commonsdk/UMConfigure$3;

    invoke-direct {v5, v4}, Lcom/umeng/commonsdk/UMConfigure$3;-><init>(Landroid/content/Context;)V

    .line 567
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V
    :try_end_a5
    .catchall {:try_start_84 .. :try_end_a5} :catchall_a5

    .line 578
    :catchall_a5
    :cond_a5
    :try_start_a5
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isPreInit()Z

    move-result v5

    if-nez v5, :cond_b5

    .line 579
    invoke-static {v4, p1, p2}, Lcom/umeng/commonsdk/UMConfigure;->preInitInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isPreInit()Z

    move-result p1

    if-nez p1, :cond_b5

    return-void

    .line 584
    :cond_b5
    sget-object p1, Lcom/umeng/commonsdk/UMConfigure;->sAppkey:Ljava/lang/String;

    invoke-static {v4, p1}, Lcom/umeng/commonsdk/utils/UMUtils;->setAppkey(Landroid/content/Context;Ljava/lang/String;)V

    .line 585
    invoke-static {v4}, Lcom/umeng/commonsdk/utils/UMUtils;->getLastAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 586
    sget-object p2, Lcom/umeng/commonsdk/UMConfigure;->sAppkey:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v5, 0x2

    if-nez p2, :cond_e5

    sget-object p2, Lcom/umeng/commonsdk/UMConfigure;->sAppkey:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_e5

    .line 587
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_e0

    .line 588
    sget-boolean p2, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz p2, :cond_e0

    const-string p2, "AppKey改变!!!"

    const-string v6, ""

    .line 589
    invoke-static {p2, v5, v6}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(Ljava/lang/String;ILjava/lang/String;)V

    .line 592
    :cond_e0
    sget-object p2, Lcom/umeng/commonsdk/UMConfigure;->sAppkey:Ljava/lang/String;

    invoke-static {v4, p2}, Lcom/umeng/commonsdk/utils/UMUtils;->setLastAppkey(Landroid/content/Context;Ljava/lang/String;)V

    .line 594
    :cond_e5
    sget-boolean p2, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz p2, :cond_109

    const-string p2, "UMConfigure"

    .line 595
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "current appkey is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/umeng/commonsdk/UMConfigure;->sAppkey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", last appkey is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :cond_109
    sget-boolean p1, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    const/4 p2, 0x3

    if-eqz p1, :cond_13f

    .line 598
    invoke-static {v4}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppkeyByXML(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 599
    sget-object v6, Lcom/umeng/commonsdk/UMConfigure;->sAppkey:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_13f

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_13f

    sget-object v6, Lcom/umeng/commonsdk/UMConfigure;->sAppkey:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13f

    const-string v6, "@"

    const-string v7, "#"

    .line 600
    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/String;

    .line 601
    sget-object v8, Lcom/umeng/commonsdk/UMConfigure;->sAppkey:Ljava/lang/String;

    aput-object v8, v7, v2

    aput-object p1, v7, v3

    const-string p1, "请注意：您init接口中设置的AppKey是@，manifest中设置的AppKey是#，init接口设置的AppKey会覆盖manifest中设置的AppKey"

    const-string v8, ""

    .line 602
    invoke-static {p1, p2, v8, v6, v7}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 605
    :cond_13f
    sget-object p1, Lcom/umeng/commonsdk/UMConfigure;->sChannel:Ljava/lang/String;

    invoke-static {v4, p1}, Lcom/umeng/commonsdk/utils/UMUtils;->setChannel(Landroid/content/Context;Ljava/lang/String;)V

    .line 606
    sget-boolean p1, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz p1, :cond_160

    const-string p1, "UMConfigure"

    .line 607
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "channel is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/umeng/commonsdk/UMConfigure;->sChannel:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_160
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_160} :catch_44e
    .catchall {:try_start_a5 .. :try_end_160} :catchall_432

    :cond_160
    :try_start_160
    const-string p1, "init"

    new-array v6, v3, [Ljava/lang/Class;

    .line 619
    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v2

    invoke-virtual {v0, p1, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_1a1

    .line 621
    invoke-virtual {p1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v4, v6, v2

    .line 622
    invoke-virtual {p1, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "header_first_resume"

    .line 623
    invoke-static {p1}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_18f

    const-string p1, "MobclickRT"

    const-string v6, "--->>> FirstResumeTrigger enabled."

    .line 624
    invoke-static {p1, v6}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    invoke-static {v4}, Lcom/umeng/analytics/pro/l;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/l;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/umeng/analytics/pro/l;->b(Landroid/content/Context;)V

    goto :goto_196

    :cond_18f
    const-string p1, "MobclickRT"

    const-string v6, "--->>> FirstResumeTrigger disabled."

    .line 627
    invoke-static {p1, v6}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    :goto_196
    sget-boolean p1, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz p1, :cond_1a1

    const-string p1, "统计SDK初始化成功"

    const-string v6, ""

    .line 630
    invoke-static {p1, v5, v6}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(Ljava/lang/String;ILjava/lang/String;)V

    :cond_1a1
    const-string p1, "com.umeng.analytics.game.UMGameAgent"

    .line 634
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string p1, "setGameScenarioType"

    new-array v6, v3, [Ljava/lang/Class;

    .line 636
    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v2

    invoke-virtual {v0, p1, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_1be

    .line 638
    invoke-virtual {p1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v4, v6, v2

    .line 639
    invoke-virtual {p1, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    :cond_1be
    sget-object p1, Lcom/umeng/commonsdk/statistics/b;->a:Ljava/lang/String;

    const-string v6, "e"

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_1da

    const-string p1, "disableExceptionCatch"

    new-array v6, v2, [Ljava/lang/Class;

    .line 648
    invoke-virtual {v0, p1, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_1da

    .line 650
    invoke-virtual {p1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v6, v2, [Ljava/lang/Object;

    .line 651
    invoke-virtual {p1, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1da
    .catchall {:try_start_160 .. :try_end_1da} :catchall_1da

    :catchall_1da
    :cond_1da
    :try_start_1da
    const-string p1, "com.umeng.message.MessageSharedPrefs"

    .line 661
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v0, "getInstance"

    new-array v6, v3, [Ljava/lang/Class;

    .line 663
    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v2

    invoke-virtual {p1, v0, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_280

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v4, v6, v2

    .line 665
    invoke-virtual {v0, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_280

    const-string v6, "setMessageAppKey"

    new-array v7, v3, [Ljava/lang/Class;

    aput-object v1, v7, v2

    .line 667
    invoke-virtual {p1, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    if-eqz v6, :cond_21b

    .line 669
    invoke-virtual {v6, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v7, v3, [Ljava/lang/Object;

    .line 670
    sget-object v8, Lcom/umeng/commonsdk/UMConfigure;->sAppkey:Ljava/lang/String;

    aput-object v8, v7, v2

    invoke-virtual {v6, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    sget-boolean v6, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz v6, :cond_21b

    const-string v6, "PUSH AppKey设置成功"

    const-string v7, ""

    .line 672
    invoke-static {v6, v5, v7}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(Ljava/lang/String;ILjava/lang/String;)V

    :cond_21b
    const-string v6, "setMessageChannel"

    new-array v7, v3, [Ljava/lang/Class;

    aput-object v1, v7, v2

    .line 676
    invoke-virtual {p1, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    if-eqz v6, :cond_23e

    .line 678
    invoke-virtual {v6, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v7, v3, [Ljava/lang/Object;

    .line 679
    sget-object v8, Lcom/umeng/commonsdk/UMConfigure;->sChannel:Ljava/lang/String;

    aput-object v8, v7, v2

    invoke-virtual {v6, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    sget-boolean v6, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz v6, :cond_23e

    const-string v6, "PUSH Channel设置成功"

    const-string v7, ""

    .line 681
    invoke-static {v6, v5, v7}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(Ljava/lang/String;ILjava/lang/String;)V

    .line 685
    :cond_23e
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_245

    goto :goto_280

    .line 690
    :cond_245
    sget-boolean v6, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz v6, :cond_25f

    const-string v6, "UMConfigure"

    .line 691
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "push secret is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25f
    const-string v6, "setMessageAppSecret"

    new-array v7, v3, [Ljava/lang/Class;

    aput-object v1, v7, v2

    .line 693
    invoke-virtual {p1, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_280

    .line 695
    invoke-virtual {p1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v6, v3, [Ljava/lang/Object;

    aput-object p4, v6, v2

    .line 696
    invoke-virtual {p1, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    sget-boolean p1, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz p1, :cond_280

    const-string p1, "PUSH Secret设置成功"

    const-string v0, ""

    .line 698
    invoke-static {p1, v5, v0}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_280
    .catch Ljava/lang/Exception; {:try_start_1da .. :try_end_280} :catch_280
    .catchall {:try_start_1da .. :try_end_280} :catchall_432

    :catch_280
    :cond_280
    :goto_280
    :try_start_280
    const-string p1, "com.umeng.socialize.UMShareAPI"

    .line 712
    invoke-static {p1}, Lcom/umeng/commonsdk/UMConfigure;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v0, "APPKEY"

    .line 713
    sget-object v6, Lcom/umeng/commonsdk/UMConfigure;->sAppkey:Ljava/lang/String;

    invoke-static {p1, v0, v6}, Lcom/umeng/commonsdk/UMConfigure;->setFile(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2b8

    const-string v0, "init"

    new-array v6, v5, [Ljava/lang/Class;

    .line 715
    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v2

    aput-object v1, v6, v3

    invoke-virtual {p1, v0, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_2b8

    .line 717
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v4, v6, v2

    .line 718
    sget-object v7, Lcom/umeng/commonsdk/UMConfigure;->sAppkey:Ljava/lang/String;

    aput-object v7, v6, v3

    invoke-virtual {v0, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    sget-boolean p1, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz p1, :cond_2b8

    const-string p1, "Share AppKey设置成功"

    const-string v0, ""

    .line 721
    invoke-static {p1, v5, v0}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_2b8
    .catchall {:try_start_280 .. :try_end_2b8} :catchall_2b8

    .line 731
    :catchall_2b8
    :cond_2b8
    :try_start_2b8
    invoke-static {p3}, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->setDeviceType(I)V
    :try_end_2bb
    .catch Ljava/lang/Exception; {:try_start_2b8 .. :try_end_2bb} :catch_44e
    .catchall {:try_start_2b8 .. :try_end_2bb} :catchall_432

    :try_start_2bb
    const-string p1, "com.umeng.error.UMError"

    .line 735
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v0, "init"

    new-array v6, v3, [Ljava/lang/Class;

    .line 738
    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v2

    invoke-virtual {p1, v0, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_2e4

    .line 740
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v4, v6, v2

    .line 741
    invoke-virtual {v0, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    sget-boolean p1, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz p1, :cond_2e4

    const-string p1, "错误分析SDK初始化成功"

    const-string v0, ""

    .line 743
    invoke-static {p1, v5, v0}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_2e4
    .catchall {:try_start_2bb .. :try_end_2e4} :catchall_2e4

    .line 752
    :catchall_2e4
    :cond_2e4
    :try_start_2e4
    const-class p1, Lcom/umeng/umcrash/UMCrash;

    sget-object v0, Lcom/umeng/umcrash/UMCrash;->KEY_CALLBACK_PAGE_ACTION:Ljava/lang/String;

    .line 754
    sget v0, Lcom/umeng/commonsdk/statistics/SdkVersion;->SDK_TYPE:I

    if-ne v0, v3, :cond_306

    const-string v0, "useIntlServices"

    new-array v6, v3, [Ljava/lang/Class;

    .line 756
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    invoke-virtual {p1, v0, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_306

    .line 758
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v6, v3, [Ljava/lang/Object;

    .line 759
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v7, v6, v2

    invoke-virtual {v0, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_306
    const-string v0, "init"

    new-array v6, p2, [Ljava/lang/Class;

    .line 762
    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v2

    aput-object v1, v6, v3

    aput-object v1, v6, v5

    invoke-virtual {p1, v0, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_335

    .line 764
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v6, p2, [Ljava/lang/Object;

    aput-object v4, v6, v2

    .line 765
    sget-object v7, Lcom/umeng/commonsdk/UMConfigure;->sAppkey:Ljava/lang/String;

    aput-object v7, v6, v3

    sget-object v7, Lcom/umeng/commonsdk/UMConfigure;->sChannel:Ljava/lang/String;

    aput-object v7, v6, v5

    invoke-virtual {v0, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    sget-boolean p1, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz p1, :cond_335

    const-string p1, "APM SDK初始化成功"

    const-string v0, ""

    .line 767
    invoke-static {p1, v5, v0}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_335
    .catchall {:try_start_2e4 .. :try_end_335} :catchall_335

    :catchall_335
    :cond_335
    const/4 p1, 0x0

    :try_start_336
    const-string v0, "com.umeng.vt.facade.EventFacade"

    .line 775
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v6, "init"

    const/4 v7, 0x5

    new-array v8, v7, [Ljava/lang/Class;

    .line 776
    const-class v9, Landroid/app/Application;

    aput-object v9, v8, v2

    aput-object v1, v8, v3

    aput-object v1, v8, v5

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, p2

    const/4 v9, 0x4

    aput-object v1, v8, v9

    invoke-virtual {v0, v6, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_374

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v4, v6, v2

    .line 778
    sget-object v7, Lcom/umeng/commonsdk/UMConfigure;->sAppkey:Ljava/lang/String;

    aput-object v7, v6, v3

    sget-object v7, Lcom/umeng/commonsdk/UMConfigure;->sChannel:Ljava/lang/String;

    aput-object v7, v6, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v6, p2

    aput-object p4, v6, v9

    invoke-virtual {v0, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "MobclickRT"

    const-string p3, "--->>>初始化 EventFacade 成功."

    .line 779
    invoke-static {p2, p3}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_374
    .catch Ljava/lang/ClassNotFoundException; {:try_start_336 .. :try_end_374} :catch_374
    .catchall {:try_start_336 .. :try_end_374} :catchall_374

    :catch_374
    :catchall_374
    :cond_374
    :try_start_374
    const-string p2, "com.umeng.vt.common.VTTracker"

    .line 787
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    const-string p3, "init"

    new-array p4, v5, [Ljava/lang/Class;

    .line 788
    const-class v0, Landroid/app/Application;

    aput-object v0, p4, v2

    aput-object v1, p4, v3

    invoke-virtual {p2, p3, p4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    if-eqz p2, :cond_39c

    new-array p3, v5, [Ljava/lang/Object;

    aput-object v4, p3, v2

    .line 790
    sget-object p4, Lcom/umeng/commonsdk/UMConfigure;->sAppkey:Ljava/lang/String;

    aput-object p4, p3, v3

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "MobclickRT"

    const-string p3, "--->>>初始化 VTTracker 成功."

    .line 791
    invoke-static {p2, p3}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_39c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_374 .. :try_end_39c} :catch_39c
    .catchall {:try_start_374 .. :try_end_39c} :catchall_39c

    .line 798
    :catch_39c
    :catchall_39c
    :cond_39c
    :try_start_39c
    sget-object p2, Lcom/umeng/commonsdk/UMConfigure;->lockObject:Ljava/lang/Object;

    monitor-enter p2
    :try_end_39f
    .catch Ljava/lang/Exception; {:try_start_39c .. :try_end_39f} :catch_44e
    .catchall {:try_start_39c .. :try_end_39f} :catchall_432

    .line 799
    :try_start_39f
    sput-boolean v3, Lcom/umeng/commonsdk/UMConfigure;->isFinish:Z

    .line 800
    monitor-exit p2
    :try_end_3a2
    .catchall {:try_start_39f .. :try_end_3a2} :catchall_42f

    .line 803
    :try_start_3a2
    invoke-static {v4}, Lcom/umeng/commonsdk/UMConfigure;->needCheckPolicyResult(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_3ee

    .line 807
    sget-object p2, Lcom/umeng/commonsdk/UMConfigure;->lock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_3ab
    .catch Ljava/lang/Exception; {:try_start_3a2 .. :try_end_3ab} :catch_44e
    .catchall {:try_start_3a2 .. :try_end_3ab} :catchall_432

    .line 808
    :try_start_3ab
    sget p3, Lcom/umeng/commonsdk/UMConfigure;->preInitInvokedFlag:I

    if-nez p3, :cond_3b6

    const-string p3, "UMConfigure"

    const-string p4, "检测到SDK初始化过程遗漏UMConfigure.preInit函数，请参考【友盟+】合规指南: https://developer.umeng.com/docs/119267/detail/182050"

    .line 810
    invoke-static {p3, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    :cond_3b6
    sget p3, Lcom/umeng/commonsdk/UMConfigure;->policyGrantResult:I

    if-nez p3, :cond_3c1

    const-string p3, "UMConfigure"

    const-string p4, "检测到未调用隐私授权API，详情见：https://developer.umeng.com/docs/119267/detail/182050"

    .line 814
    invoke-static {p3, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c1
    .catchall {:try_start_3ab .. :try_end_3c1} :catchall_3eb

    .line 818
    :cond_3c1
    :try_start_3c1
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    const-string p4, "preInitInvoked"

    .line 819
    sget v0, Lcom/umeng/commonsdk/UMConfigure;->preInitInvokedFlag:I

    invoke-virtual {p3, p4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p4, "policyGrantInvoked"

    .line 820
    sget v0, Lcom/umeng/commonsdk/UMConfigure;->policyGrantInvokedFlag:I

    invoke-virtual {p3, p4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p4, "policyGrantResult"

    .line 821
    sget v0, Lcom/umeng/commonsdk/UMConfigure;->policyGrantResult:I

    invoke-virtual {p3, p4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const p4, 0x8019

    .line 823
    invoke-static {v4}, Lcom/umeng/commonsdk/internal/b;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/internal/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/commonsdk/internal/b;->a()Lcom/umeng/commonsdk/internal/c;

    move-result-object v0

    .line 822
    invoke-static {v4, p4, v0, p3}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    :try_end_3e9
    .catchall {:try_start_3c1 .. :try_end_3e9} :catchall_3e9

    .line 827
    :catchall_3e9
    :try_start_3e9
    monitor-exit p2

    goto :goto_3ee

    :catchall_3eb
    move-exception p1

    monitor-exit p2
    :try_end_3ed
    .catchall {:try_start_3e9 .. :try_end_3ed} :catchall_3eb

    :try_start_3ed
    throw p1

    .line 834
    :cond_3ee
    :goto_3ee
    invoke-static {v4}, Lcom/umeng/commonsdk/UMConfigure;->needSendZcfgEnv(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_40a

    const-string p2, "MobclickRT"

    const-string p3, "--->>> 走零号报文发送逻辑"

    .line 836
    invoke-static {p2, p3}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p2, 0x800d

    .line 839
    invoke-static {v4}, Lcom/umeng/commonsdk/internal/b;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/internal/b;

    move-result-object p3

    invoke-virtual {p3}, Lcom/umeng/commonsdk/internal/b;->a()Lcom/umeng/commonsdk/internal/c;

    move-result-object p3

    .line 838
    invoke-static {v4, p2, p3, p1}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    goto :goto_425

    :cond_40a
    const-string p2, "MobclickRT"

    const-string p3, "--->>> 走正常逻辑."

    .line 842
    invoke-static {p2, p3}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    invoke-static {}, Lcom/umeng/commonsdk/config/FieldManager;->b()Z

    move-result p2

    if-eqz p2, :cond_425

    const p2, 0x8017

    .line 846
    invoke-static {v4}, Lcom/umeng/commonsdk/internal/b;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/internal/b;

    move-result-object p3

    invoke-virtual {p3}, Lcom/umeng/commonsdk/internal/b;->a()Lcom/umeng/commonsdk/internal/c;

    move-result-object p3

    .line 845
    invoke-static {v4, p2, p3, p1}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    .line 851
    :cond_425
    :goto_425
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result p1

    if-eqz p1, :cond_469

    .line 853
    invoke-static {v4}, Lcom/umeng/commonsdk/UMConfigureInternation;->doSelfCheck(Landroid/content/Context;)V
    :try_end_42e
    .catch Ljava/lang/Exception; {:try_start_3ed .. :try_end_42e} :catch_44e
    .catchall {:try_start_3ed .. :try_end_42e} :catchall_432

    goto :goto_469

    :catchall_42f
    move-exception p1

    .line 800
    :try_start_430
    monitor-exit p2
    :try_end_431
    .catchall {:try_start_430 .. :try_end_431} :catchall_42f

    :try_start_431
    throw p1
    :try_end_432
    .catch Ljava/lang/Exception; {:try_start_431 .. :try_end_432} :catch_44e
    .catchall {:try_start_431 .. :try_end_432} :catchall_432

    :catchall_432
    move-exception p1

    .line 861
    sget-boolean p2, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz p2, :cond_469

    const-string p2, "UMConfigure"

    .line 862
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "init e is "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_469

    :catch_44e
    move-exception p1

    .line 857
    sget-boolean p2, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz p2, :cond_469

    const-string p2, "UMConfigure"

    .line 858
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "init e is "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    :cond_469
    :goto_469
    :try_start_469
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "com.umeng.cconfig.UMRemoteConfig"

    .line 875
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    const-string p3, "getInstance"

    new-array p4, v2, [Ljava/lang/Class;

    .line 877
    invoke-virtual {p2, p3, p4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    if-eqz p3, :cond_49f

    new-array p4, v2, [Ljava/lang/Object;

    .line 879
    invoke-virtual {p3, p2, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_49f

    const-string p4, "init"

    new-array v0, v3, [Ljava/lang/Class;

    .line 881
    const-class v1, Landroid/content/Context;

    aput-object v1, v0, v2

    invoke-virtual {p2, p4, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    if-eqz p2, :cond_49f

    .line 883
    invoke-virtual {p2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array p4, v3, [Ljava/lang/Object;

    aput-object p1, p4, v2

    .line 884
    invoke-virtual {p2, p3, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_49d
    .catch Ljava/lang/Exception; {:try_start_469 .. :try_end_49d} :catch_49e

    goto :goto_49f

    :catch_49e
    nop

    .line 893
    :cond_49f
    :goto_49f
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/umeng/commonsdk/UMConfigure;->enterRTDModeIfNeeded(Landroid/content/Context;)V

    .line 895
    sget-boolean p0, Lcom/umeng/commonsdk/UMConfigure;->isInit:Z

    if-nez p0, :cond_4ac

    .line 896
    sput-boolean v3, Lcom/umeng/commonsdk/UMConfigure;->isInit:Z

    :cond_4ac
    return-void
.end method

.method private static invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 3

    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    .line 220
    :try_start_4
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_7} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_7} :catch_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_7} :catch_7

    :catch_7
    :cond_7
    return-void
.end method

.method private static invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .registers 3

    if-eqz p0, :cond_6

    const/4 v0, 0x0

    .line 246
    :try_start_3
    invoke-virtual {p0, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_6} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_6} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_6} :catch_6

    :catch_6
    :cond_6
    return-void
.end method

.method public static isDebugLog()Z
    .registers 1

    .line 941
    sget-boolean v0, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    return v0
.end method

.method private static isPreInit()Z
    .registers 2

    .line 338
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->PreInitLock:Ljava/lang/Object;

    monitor-enter v0

    .line 339
    :try_start_3
    sget-boolean v1, Lcom/umeng/commonsdk/UMConfigure;->preInitComplete:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    .line 340
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private static needCheckPolicyResult(Landroid/content/Context;)Z
    .registers 3

    .line 930
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    .line 931
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "umeng_policy_result_flag"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 933
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2b

    const/4 p0, 0x0

    return p0

    :cond_2b
    const/4 p0, 0x1

    return p0
.end method

.method public static needSendZcfgEnv(Landroid/content/Context;)Z
    .registers 3

    .line 910
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    .line 911
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "umeng_zcfg_flag"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 913
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2b

    const/4 p0, 0x0

    return p0

    :cond_2b
    const/4 p0, 0x1

    return p0
.end method

.method public static preInit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 344
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 345
    :try_start_4
    sput v1, Lcom/umeng/commonsdk/UMConfigure;->preInitInvokedFlag:I

    .line 346
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_b

    .line 347
    invoke-static {p0, p1, p2}, Lcom/umeng/commonsdk/UMConfigure;->preInitInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_b
    move-exception p0

    .line 346
    :try_start_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p0
.end method

.method private static preInitInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    if-nez p0, :cond_e

    .line 374
    sget-boolean p0, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz p0, :cond_d

    const-string p0, "UMConfigure"

    const-string p1, "preInit: context is null, pls check!"

    .line 375
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return-void

    .line 379
    :cond_e
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 381
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 382
    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppkeyByXML(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 386
    :cond_1c
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 387
    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->getChannelByXML(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 389
    :cond_26
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string p2, "Unknown"

    .line 393
    :cond_2e
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_35

    return-void

    .line 396
    :cond_35
    sput-object p1, Lcom/umeng/commonsdk/UMConfigure;->sAppkey:Ljava/lang/String;

    .line 397
    sput-object p2, Lcom/umeng/commonsdk/UMConfigure;->sChannel:Ljava/lang/String;

    .line 399
    invoke-static {p0}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/service/UMGlobalContext;

    .line 401
    invoke-static {p0}, Lcom/umeng/analytics/pro/l;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/l;

    .line 404
    invoke-static {p0}, Lcom/umeng/commonsdk/UMConfigure;->needSendZcfgEnv(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_4c

    .line 405
    invoke-static {}, Lcom/umeng/commonsdk/config/FieldManager;->a()Lcom/umeng/commonsdk/config/FieldManager;

    move-result-object p1

    .line 406
    invoke-virtual {p1, p0}, Lcom/umeng/commonsdk/config/FieldManager;->a(Landroid/content/Context;)V

    .line 409
    :cond_4c
    sget-object p0, Lcom/umeng/commonsdk/UMConfigure;->PreInitLock:Ljava/lang/Object;

    monitor-enter p0

    const/4 p1, 0x1

    .line 410
    :try_start_50
    sput-boolean p1, Lcom/umeng/commonsdk/UMConfigure;->preInitComplete:Z

    .line 411
    monitor-exit p0

    return-void

    :catchall_54
    move-exception p1

    monitor-exit p0
    :try_end_56
    .catchall {:try_start_50 .. :try_end_56} :catchall_54

    throw p1
.end method

.method private static setCheckDevice(Z)V
    .registers 1

    .line 1129
    sput-boolean p0, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->CHECK_DEVICE:Z

    return-void
.end method

.method public static setEncryptEnabled(Z)V
    .registers 1

    .line 1002
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/b;->a(Z)V

    return-void
.end method

.method private static setFile(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_9

    .line 266
    :try_start_2
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 267
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_9

    :catch_9
    :cond_9
    return-void
.end method

.method private static setFile(Ljava/lang/Class;Ljava/lang/String;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    if-eqz p0, :cond_d

    .line 284
    :try_start_2
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 285
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d} :catch_d

    :catch_d
    :cond_d
    return-void
.end method

.method private static setLatencyWindow(J)V
    .registers 2

    long-to-int p1, p0

    mul-int/lit16 p1, p1, 0x3e8

    .line 1039
    sput p1, Lcom/umeng/commonsdk/statistics/a;->c:I

    return-void
.end method

.method public static setLogEnabled(Z)V
    .registers 10

    const-string v0, "set log enabled e is "

    const-string v1, "UMConfigure"

    .line 951
    :try_start_4
    sput-boolean p0, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    .line 965
    sput-boolean p0, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    const-string v2, "com.umeng.message.PushAgent"

    .line 968
    invoke-static {v2}, Lcom/umeng/commonsdk/UMConfigure;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 969
    invoke-static {v2}, Lcom/umeng/commonsdk/UMConfigure;->getDecInstanceObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "setDebugMode"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    .line 970
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v2, v4, v6}, Lcom/umeng/commonsdk/UMConfigure;->getDecMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v4, v5, [Ljava/lang/Object;

    .line 972
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v8

    invoke-static {v2, v3, v4}, Lcom/umeng/commonsdk/UMConfigure;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V

    const-string v2, "com.umeng.socialize.Config"

    .line 978
    invoke-static {v2}, Lcom/umeng/commonsdk/UMConfigure;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "DEBUG"

    .line 979
    invoke-static {v2, v3, p0}, Lcom/umeng/commonsdk/UMConfigure;->setFile(Ljava/lang/Class;Ljava/lang/String;Z)V

    const-string v2, "com.umeng.umcrash.UMCrash"

    .line 981
    invoke-static {v2}, Lcom/umeng/commonsdk/UMConfigure;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setDebug"

    new-array v4, v5, [Ljava/lang/Class;

    aput-object v7, v4, v8

    .line 982
    invoke-static {v2, v3, v4}, Lcom/umeng/commonsdk/UMConfigure;->getDecMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    .line 983
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v3, v8

    invoke-static {v2, v3}, Lcom/umeng/commonsdk/UMConfigure;->invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_51} :catch_6a
    .catchall {:try_start_4 .. :try_end_51} :catchall_52

    goto :goto_81

    :catchall_52
    move-exception p0

    .line 990
    sget-boolean v2, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz v2, :cond_81

    .line 991
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_81

    :catch_6a
    move-exception p0

    .line 986
    sget-boolean v2, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz v2, :cond_81

    .line 987
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_81
    :goto_81
    return-void
.end method

.method private static setModuleTag(Lcom/umeng/commonsdk/UMConfigure$BS_TYPE;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const-string v0, "UMLog"

    if-nez p0, :cond_a

    :try_start_4
    const-string p0, "传入业务类型枚举值不能为null，setModuleTag调用无效，请检查传入参数。"

    .line 1045
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1048
    :cond_a
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6e

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_6e

    .line 1052
    :cond_17
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    const/16 v2, 0x40

    if-le v1, v2, :cond_2a

    const-string p0, "传入key长度超限，setModuleTag调用无效，请检查传入参数。"

    .line 1054
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1057
    :cond_2a
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    const/16 v2, 0x80

    if-le v1, v2, :cond_3d

    const-string p0, "传入value长度超限，setModuleTag调用无效，请检查传入参数。"

    .line 1059
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1063
    :cond_3d
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const-string v1, ""

    .line 1065
    sget-object v2, Lcom/umeng/commonsdk/UMConfigure;->BUSINESS_TYPE:[Ljava/lang/String;

    array-length v3, v2

    if-ge p0, v3, :cond_4a

    .line 1066
    aget-object v1, v2, p0

    .line 1068
    :cond_4a
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_56

    const-string p0, "传入业务类型参数错误，setModuleTag调用无效。"

    .line 1069
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1072
    :cond_56
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1074
    invoke-static {p0, p2}, Lcom/umeng/commonsdk/statistics/TagHelper;->setModuleTag(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_73

    :cond_6e
    :goto_6e
    const-string p0, "传入key或value为空，setModuleTag调用无效，请检查传入参数。"

    .line 1049
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catchall {:try_start_4 .. :try_end_73} :catchall_73

    :catchall_73
    :goto_73
    return-void
.end method

.method public static setProcessEvent(Z)V
    .registers 1

    .line 1035
    sput-boolean p0, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->SUB_PROCESS_EVENT:Z

    return-void
.end method

.method private static setWraperType(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1143
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_7d

    :cond_8
    const-string v0, "native"

    .line 1147
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1148
    sput-object v0, Lcom/umeng/commonsdk/stateless/a;->a:Ljava/lang/String;

    .line 1149
    sput-object v0, Lcom/umeng/commonsdk/statistics/a;->a:Ljava/lang/String;

    goto/16 :goto_7d

    :cond_16
    const-string v0, "Cocos2d-x"

    .line 1150
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1151
    sput-object v0, Lcom/umeng/commonsdk/stateless/a;->a:Ljava/lang/String;

    .line 1152
    sput-object v0, Lcom/umeng/commonsdk/statistics/a;->a:Ljava/lang/String;

    goto :goto_7d

    :cond_23
    const-string v0, "Cocos2d-x_lua"

    .line 1153
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 1154
    sput-object v0, Lcom/umeng/commonsdk/stateless/a;->a:Ljava/lang/String;

    .line 1155
    sput-object v0, Lcom/umeng/commonsdk/statistics/a;->a:Ljava/lang/String;

    goto :goto_7d

    :cond_30
    const-string v0, "Unity"

    .line 1156
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 1157
    sput-object v0, Lcom/umeng/commonsdk/stateless/a;->a:Ljava/lang/String;

    .line 1158
    sput-object v0, Lcom/umeng/commonsdk/statistics/a;->a:Ljava/lang/String;

    goto :goto_7d

    :cond_3d
    const-string v0, "react-native"

    .line 1159
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 1160
    sput-object v0, Lcom/umeng/commonsdk/stateless/a;->a:Ljava/lang/String;

    .line 1161
    sput-object v0, Lcom/umeng/commonsdk/statistics/a;->a:Ljava/lang/String;

    goto :goto_7d

    :cond_4a
    const-string v0, "phonegap"

    .line 1162
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 1163
    sput-object v0, Lcom/umeng/commonsdk/stateless/a;->a:Ljava/lang/String;

    .line 1164
    sput-object v0, Lcom/umeng/commonsdk/statistics/a;->a:Ljava/lang/String;

    goto :goto_7d

    :cond_57
    const-string v0, "weex"

    .line 1165
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 1166
    sput-object v0, Lcom/umeng/commonsdk/stateless/a;->a:Ljava/lang/String;

    .line 1167
    sput-object v0, Lcom/umeng/commonsdk/statistics/a;->a:Ljava/lang/String;

    goto :goto_7d

    :cond_64
    const-string v0, "hybrid"

    .line 1168
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 1169
    sput-object v0, Lcom/umeng/commonsdk/stateless/a;->a:Ljava/lang/String;

    .line 1170
    sput-object v0, Lcom/umeng/commonsdk/statistics/a;->a:Ljava/lang/String;

    goto :goto_7d

    :cond_71
    const-string v0, "flutter"

    .line 1171
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7d

    .line 1172
    sput-object v0, Lcom/umeng/commonsdk/stateless/a;->a:Ljava/lang/String;

    .line 1173
    sput-object v0, Lcom/umeng/commonsdk/statistics/a;->a:Ljava/lang/String;

    .line 1177
    :cond_7d
    :goto_7d
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_84

    goto :goto_88

    .line 1180
    :cond_84
    sput-object p1, Lcom/umeng/commonsdk/stateless/a;->b:Ljava/lang/String;

    .line 1181
    sput-object p1, Lcom/umeng/commonsdk/statistics/a;->b:Ljava/lang/String;

    :goto_88
    return-void
.end method

.method public static submitPolicyGrantResult(Landroid/content/Context;Z)V
    .registers 5

    .line 357
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/b;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/internal/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/commonsdk/internal/b;->a()Lcom/umeng/commonsdk/internal/c;

    move-result-object v0

    const v1, 0x8020

    const/4 v2, 0x0

    .line 356
    invoke-static {p0, v1, v0, v2}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    .line 359
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 360
    :try_start_13
    sput v1, Lcom/umeng/commonsdk/UMConfigure;->policyGrantInvokedFlag:I

    if-eqz p1, :cond_1a

    .line 362
    sput v1, Lcom/umeng/commonsdk/UMConfigure;->policyGrantResult:I

    goto :goto_1d

    :cond_1a
    const/4 p1, 0x2

    .line 364
    sput p1, Lcom/umeng/commonsdk/UMConfigure;->policyGrantResult:I

    .line 366
    :goto_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_33

    const p1, 0x8018

    .line 368
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/b;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/internal/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/commonsdk/internal/b;->a()Lcom/umeng/commonsdk/internal/c;

    move-result-object v0

    sget v1, Lcom/umeng/commonsdk/UMConfigure;->policyGrantResult:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 367
    invoke-static {p0, p1, v0, v1}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    return-void

    :catchall_33
    move-exception p0

    .line 366
    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw p0
.end method
