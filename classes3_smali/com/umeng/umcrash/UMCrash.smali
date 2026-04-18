.class public Lcom/umeng/umcrash/UMCrash;
.super Ljava/lang/Object;
.source "UMCrash.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/umcrash/UMCrash$CrashClientImpl;
    }
.end annotation


# static fields
.field public static final KEY_APM_DEFAULT_SECRET:Ljava/lang/String; = "NEej8y@anWa*8hep"

.field public static final KEY_APM_ROOT_NAME:Ljava/lang/String; = "UApm"

.field public static final KEY_CALLBACK_PAGE_ACTION:Ljava/lang/String; = "um_action_log"

.field public static final KEY_CALLBACK_UMID:Ljava/lang/String; = "um_umid"

.field private static final KEY_CALLBACK_USER_STRING:Ljava/lang/String; = "um_user_string"

.field public static final KEY_HEADER_APPKEY:Ljava/lang/String; = "um_app_key"

.field public static final KEY_HEADER_CARRIER:Ljava/lang/String; = "um_app_carrier"

.field public static final KEY_HEADER_CHANNEL:Ljava/lang/String; = "um_app_channel"

.field public static final KEY_HEADER_CRASH_VERSION:Ljava/lang/String; = "um_crash_sdk_version"

.field public static final KEY_HEADER_OS:Ljava/lang/String; = "um_os"

.field public static final KEY_HEADER_PROVIDER:Ljava/lang/String; = "um_app_provider"

.field public static final KEY_HEADER_PUID:Ljava/lang/String; = "um_app_puid"

.field public static final KEY_HEADER_START_TIME:Ljava/lang/String; = "um_app_start_time"

.field public static final KEY_HEADER_UMID:Ljava/lang/String; = "um_umid_header"

.field private static final KEY_MAX_LENGTH:I = 0x100

.field private static final TAG:Ljava/lang/String; = "UMCrash"

.field private static crashSdkVersion:Ljava/lang/String; = "1.2.0"

.field private static enableANRLog:Z = true

.field private static enableNativeLog:Z = true

.field private static enableUnexpLog:Z = false

.field private static isDebug:Z = true

.field private static isEncrypt:Z = false

.field private static isIntl:Z = false

.field private static isPA:Z = false

.field private static isZip:Z = true

.field private static mArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mContext:Landroid/content/Context;

.field private static mUMCrashCallback:Lcom/umeng/umcrash/UMCrashCallback;

.field private static pageArrayLock:Ljava/lang/Object;

.field public static sReporter:Lcom/efs/sdk/base/EfsReporter;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/umcrash/UMCrash;->pageArrayLock:Ljava/lang/Object;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/umeng/umcrash/UMCrash;->mArrayList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 184
    sput-boolean v0, Lcom/umeng/umcrash/UMCrash;->isPA:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .registers 1

    .line 31
    sget-object v0, Lcom/umeng/umcrash/UMCrash;->pageArrayLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .registers 1

    .line 31
    sget-object v0, Lcom/umeng/umcrash/UMCrash;->mArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200()Z
    .registers 1

    .line 31
    sget-boolean v0, Lcom/umeng/umcrash/UMCrash;->isDebug:Z

    return v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .line 31
    sget-object v0, Lcom/umeng/umcrash/UMCrash;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Landroid/content/Context;
    .registers 1

    .line 31
    sget-object v0, Lcom/umeng/umcrash/UMCrash;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    .line 31
    invoke-static {p0}, Lcom/umeng/umcrash/UMCrash;->getUMID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600()Lcom/umeng/umcrash/UMCrashCallback;
    .registers 1

    .line 31
    sget-object v0, Lcom/umeng/umcrash/UMCrash;->mUMCrashCallback:Lcom/umeng/umcrash/UMCrashCallback;

    return-object v0
.end method

.method public static enableANRLog(Z)V
    .registers 1

    .line 224
    sput-boolean p0, Lcom/umeng/umcrash/UMCrash;->enableANRLog:Z

    return-void
.end method

.method public static enableNativeLog(Z)V
    .registers 1

    .line 220
    sput-boolean p0, Lcom/umeng/umcrash/UMCrash;->enableNativeLog:Z

    return-void
.end method

.method public static enableUnexpLog(Z)V
    .registers 1

    .line 228
    sput-boolean p0, Lcom/umeng/umcrash/UMCrash;->enableUnexpLog:Z

    return-void
.end method

.method public static generateCustomLog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const-string v0, "exception"

    .line 425
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto/16 :goto_a7

    .line 431
    :cond_10
    :try_start_10
    new-instance v1, Lcom/uc/crashsdk/export/CustomLogInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/uc/crashsdk/export/CustomLogInfo;-><init>(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 433
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "um_umid"

    .line 434
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "um_action_log"

    .line 435
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    iput-object v2, v1, Lcom/uc/crashsdk/export/CustomLogInfo;->mCallbacks:Ljava/util/ArrayList;

    .line 438
    new-instance v2, Ljava/util/HashMap;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    const-string v3, "k_ct"

    .line 439
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "k_ac"

    .line 440
    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 442
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_45
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_49
    .catchall {:try_start_10 .. :try_end_49} :catchall_a6

    const-string v3, "\n"

    if-eqz v2, :cond_6e

    :try_start_4d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 443
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_45

    .line 445
    :cond_6e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception message:\nBack traces starts.\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "Back traces ends."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 449
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_93

    .line 451
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 453
    :cond_93
    iput-object p1, v1, Lcom/uc/crashsdk/export/CustomLogInfo;->mData:Ljava/lang/StringBuffer;

    .line 456
    invoke-static {}, Lcom/uc/crashsdk/export/CrashApi;->getInstance()Lcom/uc/crashsdk/export/CrashApi;

    move-result-object p0

    if-nez p0, :cond_a3

    .line 458
    sget-object p0, Lcom/umeng/umcrash/UMCrash;->TAG:Ljava/lang/String;

    const-string p1, "CrashApi is null, not init ."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a6

    .line 460
    :cond_a3
    invoke-virtual {p0, v1}, Lcom/uc/crashsdk/export/CrashApi;->generateCustomLog(Lcom/uc/crashsdk/export/CustomLogInfo;)Z
    :try_end_a6
    .catchall {:try_start_4d .. :try_end_a6} :catchall_a6

    :catchall_a6
    :goto_a6
    return-void

    .line 426
    :cond_a7
    :goto_a7
    sget-object p0, Lcom/umeng/umcrash/UMCrash;->TAG:Ljava/lang/String;

    const-string p1, "generate custom log failed ! e is null or type is empty"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static generateCustomLog(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 3

    if-eqz p0, :cond_39

    .line 400
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_39

    .line 406
    :cond_9
    :try_start_9
    new-instance v0, Lcom/umeng/umcrash/UMCustomLogInfoBuilder;

    invoke-direct {v0, p1}, Lcom/umeng/umcrash/UMCustomLogInfoBuilder;-><init>(Ljava/lang/String;)V

    .line 407
    invoke-virtual {v0, p0}, Lcom/umeng/umcrash/UMCustomLogInfoBuilder;->stack(Ljava/lang/Throwable;)Lcom/umeng/umcrash/UMCustomLogInfoBuilder;

    move-result-object p0

    .line 408
    invoke-virtual {p0}, Lcom/umeng/umcrash/UMCustomLogInfoBuilder;->build()Lcom/uc/crashsdk/export/CustomLogInfo;

    move-result-object p0

    .line 409
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "um_umid"

    .line 410
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "um_action_log"

    .line 411
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    iput-object p1, p0, Lcom/uc/crashsdk/export/CustomLogInfo;->mCallbacks:Ljava/util/ArrayList;

    .line 413
    invoke-static {}, Lcom/uc/crashsdk/export/CrashApi;->getInstance()Lcom/uc/crashsdk/export/CrashApi;

    move-result-object p1

    if-nez p1, :cond_35

    .line 415
    sget-object p0, Lcom/umeng/umcrash/UMCrash;->TAG:Ljava/lang/String;

    const-string p1, "CrashApi is null, not init ."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 417
    :cond_35
    invoke-virtual {p1, p0}, Lcom/uc/crashsdk/export/CrashApi;->generateCustomLog(Lcom/uc/crashsdk/export/CustomLogInfo;)Z
    :try_end_38
    .catchall {:try_start_9 .. :try_end_38} :catchall_38

    :catchall_38
    :goto_38
    return-void

    .line 401
    :cond_39
    :goto_39
    sget-object p0, Lcom/umeng/umcrash/UMCrash;->TAG:Ljava/lang/String;

    const-string p1, "generate custom log failed ! e is null or type is empty"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getUMAPMFlag()Ljava/lang/String;
    .registers 5

    .line 187
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "version"

    const/4 v2, 0x0

    .line 189
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "crash"

    const/4 v3, 0x1

    .line 190
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 191
    sget-boolean v1, Lcom/umeng/umcrash/UMCrash;->enableNativeLog:Z
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_38

    const-string v4, "crashNative"

    if-eqz v1, :cond_1b

    .line 192
    :try_start_17
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1e

    .line 194
    :cond_1b
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 196
    :goto_1e
    sget-boolean v1, Lcom/umeng/umcrash/UMCrash;->enableANRLog:Z
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_38

    const-string v4, "anr"

    if-eqz v1, :cond_28

    .line 197
    :try_start_24
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_2b

    .line 199
    :cond_28
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 201
    :goto_2b
    sget-boolean v1, Lcom/umeng/umcrash/UMCrash;->isPA:Z
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_38

    const-string v4, "pa"

    if-eqz v1, :cond_35

    .line 202
    :try_start_31
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_38

    .line 204
    :cond_35
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_38

    .line 208
    :catchall_38
    :goto_38
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized getUMID(Landroid/content/Context;)Ljava/lang/String;
    .registers 9

    const-class v0, Lcom/umeng/umcrash/UMCrash;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p0, :cond_8

    .line 154
    monitor-exit v0

    return-object v1

    .line 161
    :cond_8
    :try_start_8
    const-class v2, Lcom/umeng/commonsdk/UMConfigure;

    sget-object v3, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMLog;
    :try_end_c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_c} :catch_d
    .catchall {:try_start_8 .. :try_end_c} :catchall_1f

    goto :goto_e

    :catch_d
    move-object v2, v1

    :goto_e
    if-eqz v2, :cond_36

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_12
    const-string v5, "getUMIDString"

    new-array v6, v4, [Ljava/lang/Class;

    .line 167
    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v3

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_1e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_12 .. :try_end_1e} :catch_21
    .catchall {:try_start_12 .. :try_end_1e} :catchall_1f

    goto :goto_22

    :catchall_1f
    move-exception p0

    goto :goto_34

    :catch_21
    move-object v2, v1

    :goto_22
    if-eqz v2, :cond_36

    :try_start_24
    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v3

    .line 172
    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_36

    .line 174
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_32
    .catch Ljava/lang/IllegalAccessException; {:try_start_24 .. :try_end_32} :catch_36
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_24 .. :try_end_32} :catch_36
    .catchall {:try_start_24 .. :try_end_32} :catchall_1f

    move-object v1, p0

    goto :goto_36

    :goto_34
    monitor-exit v0

    throw p0

    .line 181
    :catch_36
    :cond_36
    :goto_36
    monitor-exit v0

    return-object v1
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16

    const-string v0, "um_app_provider"

    const-string v1, ""

    const-string v2, "um_app_puid"

    const-string v3, "android"

    const-string v4, "um_os"

    const-string v5, "um_app_carrier"

    const-string v6, "um_app_channel"

    const-string v7, "um_umid_header"

    if-eqz p0, :cond_133

    if-nez p1, :cond_16

    goto/16 :goto_133

    .line 251
    :cond_16
    sput-object p0, Lcom/umeng/umcrash/UMCrash;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    .line 254
    :try_start_19
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const-string v10, "mDebug"

    .line 255
    sget-boolean v11, Lcom/umeng/umcrash/UMCrash;->isDebug:Z

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v10, "mEncryptLog"

    .line 256
    sget-boolean v11, Lcom/umeng/umcrash/UMCrash;->isEncrypt:Z

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v10, "mZipLog"

    .line 257
    sget-boolean v11, Lcom/umeng/umcrash/UMCrash;->isZip:Z

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v10, "enableNativeLog"

    .line 258
    sget-boolean v11, Lcom/umeng/umcrash/UMCrash;->enableNativeLog:Z

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v10, "enableANRLog"

    .line 259
    sget-boolean v11, Lcom/umeng/umcrash/UMCrash;->enableANRLog:Z

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v10, "enableUnexpLog"

    .line 260
    sget-boolean v11, Lcom/umeng/umcrash/UMCrash;->enableUnexpLog:Z

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v10, "mIsInternational"

    .line 261
    sget-boolean v11, Lcom/umeng/umcrash/UMCrash;->isIntl:Z

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 262
    sget-boolean v10, Lcom/umeng/umcrash/UMCrash;->isDebug:Z

    new-instance v11, Lcom/umeng/umcrash/UMCrash$CrashClientImpl;

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Lcom/umeng/umcrash/UMCrash$CrashClientImpl;-><init>(Lcom/umeng/umcrash/UMCrash$1;)V

    invoke-static {p0, p1, v10, v9, v11}, Lcom/uc/crashsdk/export/CrashApi;->createInstanceEx(Landroid/content/Context;Ljava/lang/String;ZLandroid/os/Bundle;Lcom/uc/crashsdk/export/ICrashClient;)Lcom/uc/crashsdk/export/CrashApi;

    move-result-object v9

    if-eqz v9, :cond_be

    const-string v10, "um_app_key"

    .line 264
    invoke-virtual {v9, v10, p1}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-virtual {v9, v6, p2}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-virtual {v9, v4, v3}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "um_crash_sdk_version"

    .line 267
    sget-object v11, Lcom/umeng/umcrash/UMCrash;->crashSdkVersion:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-static {p0}, Lcom/umeng/umcrash/UMCrash;->getUMID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v7, v10}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_76
    .catchall {:try_start_19 .. :try_end_76} :catchall_c5

    .line 270
    :try_start_76
    invoke-static {p0}, Lcom/umeng/umcrash/UMCrashUtils;->getActiveUser(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_92

    .line 271
    array-length v11, v10

    const/4 v12, 0x2

    if-ne v11, v12, :cond_92

    const/4 v11, 0x0

    .line 272
    aget-object v11, v10, v11

    invoke-virtual {v9, v2, v11}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    aget-object v10, v10, v8

    invoke-virtual {v9, v0, v10}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8b
    .catchall {:try_start_76 .. :try_end_8b} :catchall_8c

    goto :goto_92

    .line 276
    :catchall_8c
    :try_start_8c
    invoke-virtual {v9, v2, v1}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-virtual {v9, v0, v1}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :cond_92
    :goto_92
    invoke-static {p0}, Lcom/umeng/umcrash/UMCrashUtils;->getNetworkOperatorName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v5, v0}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    instance-of v0, p0, Landroid/app/Application;

    if-eqz v0, :cond_b6

    .line 283
    move-object v0, p0

    check-cast v0, Landroid/app/Application;

    new-instance v1, Lcom/umeng/umcrash/UMCrash$1;

    invoke-direct {v1}, Lcom/umeng/umcrash/UMCrash$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const v0, 0x100011

    const-string v1, "um_umid"

    .line 321
    invoke-virtual {v9, v1, v0}, Lcom/uc/crashsdk/export/CrashApi;->registerInfoCallback(Ljava/lang/String;I)I

    const-string v1, "um_action_log"

    .line 322
    invoke-virtual {v9, v1, v0}, Lcom/uc/crashsdk/export/CrashApi;->registerInfoCallback(Ljava/lang/String;I)I

    goto :goto_c5

    .line 324
    :cond_b6
    sget-object v0, Lcom/umeng/umcrash/UMCrash;->TAG:Ljava/lang/String;

    const-string v1, "context not instanceof application."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c5

    .line 327
    :cond_be
    sget-object v0, Lcom/umeng/umcrash/UMCrash;->TAG:Ljava/lang/String;

    const-string v1, "create CrashAPI is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c5
    .catchall {:try_start_8c .. :try_end_c5} :catchall_c5

    .line 333
    :catchall_c5
    :goto_c5
    :try_start_c5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v8}, Ljava/util/HashMap;-><init>(I)V

    .line 334
    invoke-static {p0}, Lcom/umeng/umcrash/UMCrash;->getUMID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    invoke-virtual {v0, v6, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    invoke-static {p0}, Lcom/umeng/umcrash/UMCrashUtils;->getNetworkOperatorName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    new-instance p2, Lcom/efs/sdk/base/EfsReporter$Builder;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "NEej8y@anWa*8hep"

    invoke-direct {p2, v1, p1, v2}, Lcom/efs/sdk/base/EfsReporter$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean p1, Lcom/umeng/umcrash/UMCrash;->isDebug:Z

    .line 339
    invoke-virtual {p2, p1}, Lcom/efs/sdk/base/EfsReporter$Builder;->debug(Z)Lcom/efs/sdk/base/EfsReporter$Builder;

    move-result-object p1

    const-string p2, "UApm"

    .line 340
    invoke-virtual {p1, p2}, Lcom/efs/sdk/base/EfsReporter$Builder;->efsDirRootName(Ljava/lang/String;)Lcom/efs/sdk/base/EfsReporter$Builder;

    move-result-object p1

    sget-boolean p2, Lcom/umeng/umcrash/UMCrash;->isDebug:Z

    .line 341
    invoke-virtual {p1, p2}, Lcom/efs/sdk/base/EfsReporter$Builder;->printLogDetail(Z)Lcom/efs/sdk/base/EfsReporter$Builder;

    move-result-object p1

    sget-boolean p2, Lcom/umeng/umcrash/UMCrash;->isIntl:Z

    .line 342
    invoke-virtual {p1, p2}, Lcom/efs/sdk/base/EfsReporter$Builder;->intl(Z)Lcom/efs/sdk/base/EfsReporter$Builder;

    move-result-object p1

    .line 343
    invoke-virtual {p1}, Lcom/efs/sdk/base/EfsReporter$Builder;->build()Lcom/efs/sdk/base/EfsReporter;

    move-result-object p1

    sput-object p1, Lcom/umeng/umcrash/UMCrash;->sReporter:Lcom/efs/sdk/base/EfsReporter;

    .line 344
    invoke-virtual {p1, v0}, Lcom/efs/sdk/base/EfsReporter;->addPublicParams(Ljava/util/Map;)V

    .line 346
    new-instance p1, Lcom/efs/sdk/pa/PAFactory$Builder;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance p2, Lcom/umeng/umcrash/UMCrash$2;

    invoke-direct {p2}, Lcom/umeng/umcrash/UMCrash$2;-><init>()V

    invoke-direct {p1, p0, p2}, Lcom/efs/sdk/pa/PAFactory$Builder;-><init>(Landroid/content/Context;Lcom/efs/sdk/pa/config/IEfsReporter;)V

    .line 361
    sget-object p0, Lcom/efs/sdk/pa/config/PackageLevel;->RELEASE:Lcom/efs/sdk/pa/config/PackageLevel;

    invoke-virtual {p1, p0}, Lcom/efs/sdk/pa/PAFactory$Builder;->packageLevel(Lcom/efs/sdk/pa/config/PackageLevel;)Lcom/efs/sdk/pa/PAFactory$Builder;

    .line 366
    invoke-virtual {p1}, Lcom/efs/sdk/pa/PAFactory$Builder;->build()Lcom/efs/sdk/pa/PAFactory;

    move-result-object p0

    .line 367
    invoke-virtual {p0}, Lcom/efs/sdk/pa/PAFactory;->getPaInstance()Lcom/efs/sdk/pa/PA;

    move-result-object p1

    invoke-interface {p1}, Lcom/efs/sdk/pa/PA;->start()V

    .line 368
    invoke-virtual {p0}, Lcom/efs/sdk/pa/PAFactory;->getConfigManager()Lcom/efs/sdk/pa/config/ConfigManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/efs/sdk/pa/config/ConfigManager;->enableTracer()Z

    move-result p0

    sput-boolean p0, Lcom/umeng/umcrash/UMCrash;->isPA:Z
    :try_end_132
    .catchall {:try_start_c5 .. :try_end_132} :catchall_132

    :catchall_132
    return-void

    .line 247
    :cond_133
    :goto_133
    sget-object p0, Lcom/umeng/umcrash/UMCrash;->TAG:Ljava/lang/String;

    const-string p1, "context is null or appkey is null, init failed."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static registerUMCrashCallback(Lcom/umeng/umcrash/UMCrashCallback;)V
    .registers 3

    if-eqz p0, :cond_1f

    .line 380
    sput-object p0, Lcom/umeng/umcrash/UMCrash;->mUMCrashCallback:Lcom/umeng/umcrash/UMCrashCallback;

    .line 381
    invoke-static {}, Lcom/uc/crashsdk/export/CrashApi;->getInstance()Lcom/uc/crashsdk/export/CrashApi;

    move-result-object p0

    if-eqz p0, :cond_17

    const p0, 0x100011

    .line 383
    invoke-static {}, Lcom/uc/crashsdk/export/CrashApi;->getInstance()Lcom/uc/crashsdk/export/CrashApi;

    move-result-object v0

    const-string v1, "um_user_string"

    invoke-virtual {v0, v1, p0}, Lcom/uc/crashsdk/export/CrashApi;->registerInfoCallback(Ljava/lang/String;I)I

    goto :goto_26

    .line 385
    :cond_17
    sget-object p0, Lcom/umeng/umcrash/UMCrash;->TAG:Ljava/lang/String;

    const-string v0, "callback error, instance is null."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 388
    :cond_1f
    sget-object p0, Lcom/umeng/umcrash/UMCrash;->TAG:Ljava/lang/String;

    const-string v0, "callback error."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_26
    return-void
.end method

.method public static setDebug(Z)V
    .registers 1

    .line 216
    sput-boolean p0, Lcom/umeng/umcrash/UMCrash;->isDebug:Z

    return-void
.end method

.method private static useIntlServices(Z)V
    .registers 3

    .line 232
    sput-boolean p0, Lcom/umeng/umcrash/UMCrash;->isIntl:Z

    .line 233
    sget-boolean p0, Lcom/umeng/umcrash/UMCrash;->isDebug:Z

    if-eqz p0, :cond_1e

    .line 234
    sget-object p0, Lcom/umeng/umcrash/UMCrash;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "useIntlServices is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/umeng/umcrash/UMCrash;->isIntl:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    return-void
.end method
