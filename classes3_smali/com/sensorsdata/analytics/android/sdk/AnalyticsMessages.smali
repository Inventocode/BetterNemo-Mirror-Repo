.class public Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;
.super Ljava/lang/Object;
.source "AnalyticsMessages.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker;
    }
.end annotation


# static fields
.field private static final DELETE_ALL:I = 0x4

.field private static final FLUSH_INSTANT_EVENT:I = 0x7

.field private static final FLUSH_QUEUE:I = 0x3

.field private static final FLUSH_SCHEDULE:I = 0x5

.field private static final S_INSTANCES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/Context;",
            "Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SA.AnalyticsMessages"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDbAdapter:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

.field private final mInternalConfigs:Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

.field private final mSensorsDataAPI:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

.field private final mWorker:Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->S_INSTANCES:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;)V
    .registers 4

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mContext:Landroid/content/Context;

    .line 81
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mDbAdapter:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    .line 82
    new-instance p1, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker;

    invoke-direct {p1, p0}, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker;-><init>(Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;)V

    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mWorker:Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker;

    .line 83
    iput-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mSensorsDataAPI:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 84
    iput-object p3, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mInternalConfigs:Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    return-void
.end method

.method static synthetic access$000(Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;Z)V
    .registers 2

    .line 63
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->sendData(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;)Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mDbAdapter:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;
    .registers 2

    .line 107
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->S_INSTANCES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;)Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;
    .registers 5

    .line 93
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->S_INSTANCES:Ljava/util/Map;

    monitor-enter v0

    .line 94
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 96
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 97
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;

    invoke-direct {v1, p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;-><init>(Landroid/content/Context;Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;)V

    .line 98
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    .line 100
    :cond_16
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;

    .line 102
    :goto_1d
    monitor-exit v0

    return-object v1

    :catchall_1f
    move-exception p0

    .line 103
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method private isDeleteEventsByCode(I)Z
    .registers 3

    const/16 v0, 0x194

    if-eq p1, v0, :cond_12

    const/16 v0, 0x193

    if-eq p1, v0, :cond_12

    const/16 v0, 0x1f4

    if-lt p1, v0, :cond_10

    const/16 v0, 0x258

    if-lt p1, v0, :cond_12

    :cond_10
    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method private sendCheck()Z
    .registers 6

    const/4 v0, 0x0

    .line 172
    :try_start_1
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mSensorsDataAPI:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isNetworkRequestEnable()Z

    move-result v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_7a

    const-string v2, "SA.AnalyticsMessages"

    if-nez v1, :cond_11

    :try_start_b
    const-string v1, "NetworkRequest is disabled"

    .line 173
    invoke-static {v2, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 177
    :cond_11
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mSensorsDataAPI:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getServerUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_23

    const-string v1, "Server url is null or empty."

    .line 178
    invoke-static {v2, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 183
    :cond_23
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2c

    return v0

    .line 188
    :cond_2c
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->networkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 189
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mSensorsDataAPI:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-virtual {v3}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getSAContextManager()Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getInternalConfigs()Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    move-result-object v3

    iget-object v3, v3, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;->saConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget v3, v3, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mNetworkTypePolicy:I

    invoke-static {v1, v3}, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->isShouldFlush(Ljava/lang/String;I)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_55

    const-string v3, "Invalid NetworkType = %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v0

    .line 190
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 195
    :cond_55
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mInternalConfigs:Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    iget-object v1, v1, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;->saConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isMultiProcessFlush()Z

    move-result v1

    if-eqz v1, :cond_72

    .line 197
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->isSubProcessFlushing()Z

    move-result v1

    if-eqz v1, :cond_6a

    return v0

    .line 200
    :cond_6a
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->commitSubProcessFlushState(Z)V

    goto :goto_79

    .line 201
    :cond_72
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mInternalConfigs:Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    iget-boolean v1, v1, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;->isMainProcess:Z
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_76} :catch_7a

    if-nez v1, :cond_79

    return v0

    :cond_79
    :goto_79
    return v4

    :catch_7a
    move-exception v1

    .line 205
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    return v0
.end method

.method private sendData(Z)V
    .registers 14

    .line 212
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->sendCheck()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/16 v0, 0x64

    :goto_9
    const/4 v1, 0x0

    if-lez v0, :cond_2c1

    .line 219
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mDbAdapter:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    monitor-enter v2

    .line 220
    :try_start_f
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mSensorsDataAPI:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-virtual {v3}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isDebugMode()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_21

    .line 222
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mDbAdapter:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    const-string v5, "events"

    invoke-virtual {v3, v5, v4, p1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->generateDataString(Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v3

    goto :goto_2b

    .line 224
    :cond_21
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mDbAdapter:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    const-string v5, "events"

    const/16 v6, 0x32

    invoke-virtual {v3, v5, v6, p1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->generateDataString(Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v3

    .line 226
    :goto_2b
    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_2be

    if-nez v3, :cond_36

    .line 229
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->commitSubProcessFlushState(Z)V

    return-void

    .line 233
    :cond_36
    aget-object v2, v3, v1

    .line 234
    aget-object v9, v3, v4

    const/4 v5, 0x2

    .line 235
    aget-object v8, v3, v5

    const/4 v3, 0x0

    :try_start_3e
    const-string v5, "1"

    .line 240
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 241
    invoke-static {v9}, Lcom/sensorsdata/analytics/android/sdk/util/SADataHelper;->gzipData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v7, v5

    goto :goto_4d

    :cond_4c
    move-object v7, v9

    .line 244
    :goto_4d
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5f

    .line 245
    iget-object v5, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mSensorsDataAPI:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-virtual {v5}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getServerUrl()Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x0

    move-object v5, p0

    move v11, p1

    invoke-direct/range {v5 .. v11}, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->sendHttpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_5f
    .catch Lcom/sensorsdata/analytics/android/sdk/exceptions/ConnectErrorException; {:try_start_3e .. :try_end_5f} :catch_1f9
    .catch Lcom/sensorsdata/analytics/android/sdk/exceptions/InvalidDataException; {:try_start_3e .. :try_end_5f} :catch_193
    .catch Lcom/sensorsdata/analytics/android/sdk/exceptions/ResponseErrorException; {:try_start_3e .. :try_end_5f} :catch_11e
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_5f} :catch_b6
    .catchall {:try_start_3e .. :try_end_5f} :catchall_b2

    .line 259
    :cond_5f
    iget-object v5, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mSensorsDataAPI:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-virtual {v5}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isDebugMode()Z

    move-result v5

    .line 260
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8b

    if-nez v5, :cond_73

    .line 261
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SALog;->isLogEnabled()Z

    move-result v6

    if-eqz v6, :cond_8b

    :cond_73
    const-string v6, "SA.AnalyticsMessages"

    .line 262
    invoke-static {v6, v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_8b

    .line 263
    iget-object v5, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mInternalConfigs:Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    iget-boolean v5, v5, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;->isShowDebugView:Z

    if-eqz v5, :cond_8b

    .line 264
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/AppStateTools;->getInstance()Lcom/sensorsdata/analytics/android/sdk/util/AppStateTools;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sensorsdata/analytics/android/sdk/util/AppStateTools;->getForegroundActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->showHttpErrorDialog(Landroid/app/Activity;Ljava/lang/String;)V

    .line 270
    :cond_8b
    :try_start_8b
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mDbAdapter:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5, p1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->cleanupEvents(Lorg/json/JSONArray;Z)I

    move-result v0
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_96} :catch_97

    goto :goto_9b

    :catch_97
    move-exception v2

    .line 272
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_9b
    const-string v2, "SA.AnalyticsMessages"

    .line 274
    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/util/TimeUtils;->SDK_LOCALE:Ljava/util/Locale;

    const-string v5, "Events flushed. [left = %d]"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v1

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_ad
    invoke-static {v2, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :catchall_b2
    move-exception v5

    const/4 v6, 0x1

    goto/16 :goto_268

    :catch_b6
    move-exception v5

    .line 257
    :try_start_b7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_cc
    .catchall {:try_start_b7 .. :try_end_cc} :catchall_266

    .line 259
    iget-object v5, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mSensorsDataAPI:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-virtual {v5}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isDebugMode()Z

    move-result v5

    .line 260
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_f8

    if-nez v5, :cond_e0

    .line 261
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SALog;->isLogEnabled()Z

    move-result v6

    if-eqz v6, :cond_f8

    :cond_e0
    const-string v6, "SA.AnalyticsMessages"

    .line 262
    invoke-static {v6, v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_f8

    .line 263
    iget-object v6, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mInternalConfigs:Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    iget-boolean v6, v6, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;->isShowDebugView:Z

    if-eqz v6, :cond_f8

    .line 264
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/AppStateTools;->getInstance()Lcom/sensorsdata/analytics/android/sdk/util/AppStateTools;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sensorsdata/analytics/android/sdk/util/AppStateTools;->getForegroundActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->showHttpErrorDialog(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_f8
    if-eqz v5, :cond_263

    .line 270
    :try_start_fa
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mDbAdapter:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5, p1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->cleanupEvents(Lorg/json/JSONArray;Z)I

    move-result v0
    :try_end_105
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_105} :catch_106

    goto :goto_10a

    :catch_106
    move-exception v2

    .line 272
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_10a
    const-string v2, "SA.AnalyticsMessages"

    .line 274
    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/util/TimeUtils;->SDK_LOCALE:Ljava/util/Locale;

    const-string v5, "Events flushed. [left = %d]"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v1

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_25f

    :catch_11e
    move-exception v5

    .line 253
    :try_start_11f
    invoke-virtual {v5}, Lcom/sensorsdata/analytics/android/sdk/exceptions/ResponseErrorException;->getHttpCode()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->isDeleteEventsByCode(I)Z

    move-result v6
    :try_end_127
    .catchall {:try_start_11f .. :try_end_127} :catchall_b2

    .line 254
    :try_start_127
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ResponseErrorException: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_13c
    .catchall {:try_start_127 .. :try_end_13c} :catchall_190

    .line 259
    iget-object v5, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mSensorsDataAPI:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-virtual {v5}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isDebugMode()Z

    move-result v5

    .line 260
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_168

    if-nez v5, :cond_150

    .line 261
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SALog;->isLogEnabled()Z

    move-result v7

    if-eqz v7, :cond_168

    :cond_150
    const-string v7, "SA.AnalyticsMessages"

    .line 262
    invoke-static {v7, v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_168

    .line 263
    iget-object v7, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mInternalConfigs:Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    iget-boolean v7, v7, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;->isShowDebugView:Z

    if-eqz v7, :cond_168

    .line 264
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/AppStateTools;->getInstance()Lcom/sensorsdata/analytics/android/sdk/util/AppStateTools;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sensorsdata/analytics/android/sdk/util/AppStateTools;->getForegroundActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7, v3}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->showHttpErrorDialog(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_168
    if-nez v6, :cond_16c

    if-eqz v5, :cond_263

    .line 270
    :cond_16c
    :try_start_16c
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mDbAdapter:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5, p1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->cleanupEvents(Lorg/json/JSONArray;Z)I

    move-result v0
    :try_end_177
    .catch Ljava/lang/Exception; {:try_start_16c .. :try_end_177} :catch_178

    goto :goto_17c

    :catch_178
    move-exception v2

    .line 272
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_17c
    const-string v2, "SA.AnalyticsMessages"

    .line 274
    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/util/TimeUtils;->SDK_LOCALE:Ljava/util/Locale;

    const-string v5, "Events flushed. [left = %d]"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v1

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_25f

    :catchall_190
    move-exception v5

    goto/16 :goto_268

    :catch_193
    move-exception v5

    .line 251
    :try_start_194
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid data: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_1a9
    .catchall {:try_start_194 .. :try_end_1a9} :catchall_b2

    .line 259
    iget-object v5, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mSensorsDataAPI:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-virtual {v5}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isDebugMode()Z

    move-result v5

    .line 260
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1d5

    if-nez v5, :cond_1bd

    .line 261
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SALog;->isLogEnabled()Z

    move-result v6

    if-eqz v6, :cond_1d5

    :cond_1bd
    const-string v6, "SA.AnalyticsMessages"

    .line 262
    invoke-static {v6, v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_1d5

    .line 263
    iget-object v5, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mInternalConfigs:Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    iget-boolean v5, v5, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;->isShowDebugView:Z

    if-eqz v5, :cond_1d5

    .line 264
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/AppStateTools;->getInstance()Lcom/sensorsdata/analytics/android/sdk/util/AppStateTools;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sensorsdata/analytics/android/sdk/util/AppStateTools;->getForegroundActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->showHttpErrorDialog(Landroid/app/Activity;Ljava/lang/String;)V

    .line 270
    :cond_1d5
    :try_start_1d5
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mDbAdapter:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5, p1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->cleanupEvents(Lorg/json/JSONArray;Z)I

    move-result v0
    :try_end_1e0
    .catch Ljava/lang/Exception; {:try_start_1d5 .. :try_end_1e0} :catch_1e1

    goto :goto_1e5

    :catch_1e1
    move-exception v2

    .line 272
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_1e5
    const-string v2, "SA.AnalyticsMessages"

    .line 274
    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/util/TimeUtils;->SDK_LOCALE:Ljava/util/Locale;

    const-string v5, "Events flushed. [left = %d]"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v1

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_ad

    :catch_1f9
    move-exception v5

    .line 249
    :try_start_1fa
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Connection error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_20f
    .catchall {:try_start_1fa .. :try_end_20f} :catchall_266

    .line 259
    iget-object v5, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mSensorsDataAPI:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-virtual {v5}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isDebugMode()Z

    move-result v5

    .line 260
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_23b

    if-nez v5, :cond_223

    .line 261
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SALog;->isLogEnabled()Z

    move-result v6

    if-eqz v6, :cond_23b

    :cond_223
    const-string v6, "SA.AnalyticsMessages"

    .line 262
    invoke-static {v6, v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_23b

    .line 263
    iget-object v6, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mInternalConfigs:Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    iget-boolean v6, v6, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;->isShowDebugView:Z

    if-eqz v6, :cond_23b

    .line 264
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/AppStateTools;->getInstance()Lcom/sensorsdata/analytics/android/sdk/util/AppStateTools;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sensorsdata/analytics/android/sdk/util/AppStateTools;->getForegroundActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->showHttpErrorDialog(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_23b
    if-eqz v5, :cond_263

    .line 270
    :try_start_23d
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mDbAdapter:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5, p1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->cleanupEvents(Lorg/json/JSONArray;Z)I

    move-result v0
    :try_end_248
    .catch Ljava/lang/Exception; {:try_start_23d .. :try_end_248} :catch_249

    goto :goto_24d

    :catch_249
    move-exception v2

    .line 272
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_24d
    const-string v2, "SA.AnalyticsMessages"

    .line 274
    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/util/TimeUtils;->SDK_LOCALE:Ljava/util/Locale;

    const-string v5, "Events flushed. [left = %d]"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v1

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_25f
    invoke-static {v2, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    :cond_263
    move v0, v1

    goto/16 :goto_9

    :catchall_266
    move-exception v5

    const/4 v6, 0x0

    .line 259
    :goto_268
    iget-object v7, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mSensorsDataAPI:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-virtual {v7}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isDebugMode()Z

    move-result v7

    .line 260
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_294

    if-nez v7, :cond_27c

    .line 261
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SALog;->isLogEnabled()Z

    move-result v8

    if-eqz v8, :cond_294

    :cond_27c
    const-string v8, "SA.AnalyticsMessages"

    .line 262
    invoke-static {v8, v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v7, :cond_294

    .line 263
    iget-object v8, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mInternalConfigs:Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    iget-boolean v8, v8, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;->isShowDebugView:Z

    if-eqz v8, :cond_294

    .line 264
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/AppStateTools;->getInstance()Lcom/sensorsdata/analytics/android/sdk/util/AppStateTools;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sensorsdata/analytics/android/sdk/util/AppStateTools;->getForegroundActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8, v3}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->showHttpErrorDialog(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_294
    if-nez v6, :cond_298

    if-eqz v7, :cond_2bd

    .line 270
    :cond_298
    :try_start_298
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mDbAdapter:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6, p1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->cleanupEvents(Lorg/json/JSONArray;Z)I

    move-result v0
    :try_end_2a3
    .catch Ljava/lang/Exception; {:try_start_298 .. :try_end_2a3} :catch_2a4

    goto :goto_2a8

    :catch_2a4
    move-exception p1

    .line 272
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_2a8
    const-string p1, "SA.AnalyticsMessages"

    .line 274
    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/util/TimeUtils;->SDK_LOCALE:Ljava/util/Locale;

    const-string v3, "Events flushed. [left = %d]"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    :cond_2bd
    throw v5

    :catchall_2be
    move-exception p1

    .line 226
    :try_start_2bf
    monitor-exit v2
    :try_end_2c0
    .catchall {:try_start_2bf .. :try_end_2c0} :catchall_2be

    throw p1

    .line 280
    :cond_2c1
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mInternalConfigs:Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    iget-object p1, p1, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;->saConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isMultiProcessFlush()Z

    move-result p1

    if-eqz p1, :cond_2d2

    .line 281
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->commitSubProcessFlushState(Z)V

    :cond_2d2
    return-void
.end method

.method private sendHttpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sensorsdata/analytics/android/sdk/exceptions/ConnectErrorException;,
            Lcom/sensorsdata/analytics/android/sdk/exceptions/ResponseErrorException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    const-string v1, "UTF-8"

    const/4 v9, 0x0

    .line 291
    :try_start_7
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Ljava/net/HttpURLConnection;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_13} :catch_1c0
    .catchall {:try_start_7 .. :try_end_13} :catchall_1bb

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "SA.AnalyticsMessages"

    if-nez v10, :cond_2a

    :try_start_19
    const-string v0, "can not connect %s, it shouldn\'t happen"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v2, v1, v4

    .line 294
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_26} :catch_1b5
    .catchall {:try_start_19 .. :try_end_26} :catchall_1b1

    .line 382
    invoke-static {v9, v9, v9, v10}, Lcom/sensorsdata/analytics/android/sdk/util/SADataHelper;->closeStream(Ljava/io/BufferedOutputStream;Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    return-void

    .line 297
    :cond_2a
    :try_start_2a
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getConfigOptions()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    move-result-object v2

    if-eqz v2, :cond_3e

    .line 298
    iget-object v2, v2, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v2, :cond_3e

    instance-of v6, v10, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v6, :cond_3e

    .line 300
    move-object v6, v10

    check-cast v6, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v6, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 303
    :cond_3e
    invoke-virtual {v10, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 304
    iget-object v2, v8, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mSensorsDataAPI:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getDebugMode()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;

    move-result-object v2

    sget-object v6, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;->DEBUG_ONLY:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_49} :catch_1b5
    .catchall {:try_start_2a .. :try_end_49} :catchall_1b1

    const-string v7, "true"

    if-ne v2, v6, :cond_52

    :try_start_4d
    const-string v2, "Dry-Run"

    .line 305
    invoke-virtual {v10, v2, v7}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :cond_52
    iget-object v2, v8, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mSensorsDataAPI:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-virtual {v2, v4}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getCookie(Z)Ljava/lang/String;

    move-result-object v2

    .line 309
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_63

    const-string v6, "Cookie"

    .line 310
    invoke-virtual {v10, v6, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    :cond_63
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    .line 315
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7b

    const-string v6, "crc"

    .line 316
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v6, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_7b
    const-string v6, "gzip"

    move-object/from16 v11, p3

    .line 319
    invoke-virtual {v2, v6, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v6, "data_list"

    move-object/from16 v12, p2

    .line 320
    invoke-virtual {v2, v6, v12}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    if-eqz p6, :cond_90

    const-string v6, "instant_event"

    .line 322
    invoke-virtual {v2, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 325
    :cond_90
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v2

    .line 326
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_9c} :catch_1b5
    .catchall {:try_start_4d .. :try_end_9c} :catchall_1b1

    if-eqz v6, :cond_a2

    .line 382
    invoke-static {v9, v9, v9, v10}, Lcom/sensorsdata/analytics/android/sdk/util/SADataHelper;->closeStream(Ljava/io/BufferedOutputStream;Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    return-void

    .line 330
    :cond_a2
    :try_start_a2
    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v10, v6}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 331
    invoke-virtual {v10, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v6, "POST"

    .line 332
    invoke-virtual {v10, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v6, 0x7530

    .line 334
    invoke-virtual {v10, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 336
    invoke-virtual {v10, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 337
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13
    :try_end_be
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_be} :catch_1b5
    .catchall {:try_start_a2 .. :try_end_be} :catchall_1b1

    .line 338
    :try_start_be
    new-instance v14, Ljava/io/BufferedOutputStream;

    invoke-direct {v14, v13}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_c3} :catch_1ad
    .catchall {:try_start_be .. :try_end_c3} :catchall_1aa

    .line 339
    :try_start_c3
    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 340
    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->flush()V

    .line 342
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 343
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "responseCode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p5, :cond_10d

    .line 344
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->needRedirects(I)Z

    move-result v6

    if-eqz v6, :cond_10d

    .line 345
    invoke-static {v10, v0}, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->getLocation(Ljava/net/HttpURLConnection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 346
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_10d

    .line 347
    invoke-static {v14, v13, v9, v10}, Lcom/sensorsdata/analytics/android/sdk/util/SADataHelper;->closeStream(Ljava/io/BufferedOutputStream;Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object v2, v0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v7, p6

    .line 348
    invoke-direct/range {v1 .. v7}, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->sendHttpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_109
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_109} :catch_1a7
    .catchall {:try_start_c3 .. :try_end_109} :catchall_1a4

    .line 382
    invoke-static {v14, v13, v9, v10}, Lcom/sensorsdata/analytics/android/sdk/util/SADataHelper;->closeStream(Ljava/io/BufferedOutputStream;Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    return-void

    .line 353
    :cond_10d
    :try_start_10d
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_111
    .catch Ljava/io/FileNotFoundException; {:try_start_10d .. :try_end_111} :catch_113
    .catch Ljava/io/IOException; {:try_start_10d .. :try_end_111} :catch_1a7
    .catchall {:try_start_10d .. :try_end_111} :catchall_1a4

    :goto_111
    move-object v6, v0

    goto :goto_118

    .line 355
    :catch_113
    :try_start_113
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_117
    .catch Ljava/io/IOException; {:try_start_113 .. :try_end_117} :catch_1a7
    .catchall {:try_start_113 .. :try_end_117} :catchall_1a4

    goto :goto_111

    .line 357
    :goto_118
    :try_start_118
    invoke-static {v6}, Lcom/sensorsdata/analytics/android/sdk/util/SADataHelper;->slurp(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 358
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_11f
    .catch Ljava/io/IOException; {:try_start_118 .. :try_end_11f} :catch_1a2
    .catchall {:try_start_118 .. :try_end_11f} :catchall_1a0

    .line 361
    :try_start_11f
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 362
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SALog;->isLogEnabled()Z

    move-result v0

    const/16 v1, 0x12c

    const/16 v7, 0xc8

    if-eqz v0, :cond_181

    .line 363
    invoke-static/range {p4 .. p4}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->formatJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-lt v2, v7, :cond_14b

    if-ge v2, v1, :cond_14b

    .line 367
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "valid message: \n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_181

    .line 369
    :cond_14b
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "invalid message: \n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/util/TimeUtils;->SDK_LOCALE:Ljava/util/Locale;

    const-string v11, "ret_code: %d"

    new-array v12, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v12, v4

    invoke-static {v0, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/util/TimeUtils;->SDK_LOCALE:Ljava/util/Locale;

    const-string v11, "ret_content: %s"

    new-array v12, v3, [Ljava/lang/Object;

    aput-object v6, v12, v4

    invoke-static {v0, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_181
    .catch Ljava/io/IOException; {:try_start_11f .. :try_end_181} :catch_1a7
    .catchall {:try_start_11f .. :try_end_181} :catchall_1a4

    :cond_181
    :goto_181
    if-lt v2, v7, :cond_189

    if-ge v2, v1, :cond_189

    .line 382
    invoke-static {v14, v13, v9, v10}, Lcom/sensorsdata/analytics/android/sdk/util/SADataHelper;->closeStream(Ljava/io/BufferedOutputStream;Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    return-void

    .line 376
    :cond_189
    :try_start_189
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/exceptions/ResponseErrorException;

    const-string v1, "flush failure with response \'%s\', the response code is \'%d\'"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v6, v5, v4

    .line 377
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v3

    .line 376
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/exceptions/ResponseErrorException;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_1a0
    .catch Ljava/io/IOException; {:try_start_189 .. :try_end_1a0} :catch_1a7
    .catchall {:try_start_189 .. :try_end_1a0} :catchall_1a4

    :catchall_1a0
    move-exception v0

    goto :goto_1cc

    :catch_1a2
    move-exception v0

    goto :goto_1b9

    :catchall_1a4
    move-exception v0

    move-object v6, v9

    goto :goto_1cc

    :catch_1a7
    move-exception v0

    move-object v6, v9

    goto :goto_1b9

    :catchall_1aa
    move-exception v0

    move-object v6, v9

    goto :goto_1cd

    :catch_1ad
    move-exception v0

    move-object v6, v9

    move-object v14, v6

    goto :goto_1b9

    :catchall_1b1
    move-exception v0

    move-object v6, v9

    move-object v13, v6

    goto :goto_1cd

    :catch_1b5
    move-exception v0

    move-object v6, v9

    move-object v13, v6

    move-object v14, v13

    :goto_1b9
    move-object v9, v10

    goto :goto_1c4

    :catchall_1bb
    move-exception v0

    move-object v6, v9

    move-object v10, v6

    move-object v13, v10

    goto :goto_1cd

    :catch_1c0
    move-exception v0

    move-object v6, v9

    move-object v13, v6

    move-object v14, v13

    .line 380
    :goto_1c4
    :try_start_1c4
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/exceptions/ConnectErrorException;

    invoke-direct {v1, v0}, Lcom/sensorsdata/analytics/android/sdk/exceptions/ConnectErrorException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1ca
    .catchall {:try_start_1c4 .. :try_end_1ca} :catchall_1ca

    :catchall_1ca
    move-exception v0

    move-object v10, v9

    :goto_1cc
    move-object v9, v14

    .line 382
    :goto_1cd
    invoke-static {v9, v13, v6, v10}, Lcom/sensorsdata/analytics/android/sdk/util/SADataHelper;->closeStream(Ljava/io/BufferedOutputStream;Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    .line 383
    throw v0
.end method


# virtual methods
.method deleteAll()V
    .registers 3

    .line 161
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x4

    .line 162
    iput v1, v0, Landroid/os/Message;->what:I

    .line 164
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mWorker:Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker;

    invoke-virtual {v1, v0}, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker;->runMessage(Landroid/os/Message;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_11

    :catch_d
    move-exception v0

    .line 166
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_11
    return-void
.end method

.method public flush()V
    .registers 3

    .line 139
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    .line 140
    iput v1, v0, Landroid/os/Message;->what:I

    .line 142
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mWorker:Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker;

    invoke-virtual {v1, v0}, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker;->runMessage(Landroid/os/Message;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_11

    :catch_d
    move-exception v0

    .line 144
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_11
    return-void
.end method

.method public flushEventMessage(Z)V
    .registers 6

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mDbAdapter:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_23

    .line 113
    :try_start_3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x3

    .line 114
    iput v2, v1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_12

    .line 116
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mWorker:Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker;

    invoke-virtual {p1, v1}, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker;->runMessage(Landroid/os/Message;)V

    goto :goto_1e

    .line 118
    :cond_12
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mWorker:Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker;

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mSensorsDataAPI:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getFlushInterval()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker;->runMessageOnce(Landroid/os/Message;J)V

    .line 120
    :goto_1e
    monitor-exit v0

    goto :goto_3a

    :catchall_20
    move-exception p1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    :try_start_22
    throw p1
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_23} :catch_23

    :catch_23
    move-exception p1

    const-string v0, "SA.AnalyticsMessages"

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enqueueEventMessage error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3a
    return-void
.end method

.method public flushInstanceEvent()V
    .registers 3

    .line 128
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x7

    .line 129
    iput v1, v0, Landroid/os/Message;->what:I

    .line 131
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mWorker:Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker;

    invoke-virtual {v1, v0}, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker;->runMessage(Landroid/os/Message;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_11

    :catch_d
    move-exception v0

    .line 133
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_11
    return-void
.end method

.method flushScheduled()V
    .registers 5

    .line 150
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x5

    .line 151
    iput v1, v0, Landroid/os/Message;->what:I

    .line 153
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mWorker:Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker;

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->mSensorsDataAPI:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getFlushInterval()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker;->runMessageOnce(Landroid/os/Message;J)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_18

    :catch_14
    move-exception v0

    .line 155
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_18
    return-void
.end method
