.class abstract Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;
.super Ljava/lang/Object;
.source "AbstractSensorsDataAPI.java"

# interfaces
.implements Lcom/sensorsdata/analytics/android/sdk/ISensorsDataAPI;


# static fields
.field protected static final TAG:Ljava/lang/String; = "SA.SensorsDataAPI"

.field static final VERSION:Ljava/lang/String; = "6.8.2"

.field protected static mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

.field protected static final sInstanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/Context;",
            "Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mDynamicSuperPropertiesCallBack:Lcom/sensorsdata/analytics/android/sdk/SensorsDataDynamicSuperProperties;

.field protected mHeatMapActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mInternalConfigs:Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

.field protected final mLoginIdLock:Ljava/lang/Object;

.field protected mOriginServerUrl:Ljava/lang/String;

.field protected mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

.field protected mSDKConfigInit:Z

.field protected mServerUrl:Ljava/lang/String;

.field protected mTrackTaskManager:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;

.field protected mTrackTaskManagerThread:Lcom/sensorsdata/analytics/android/sdk/core/tasks/TrackTaskManagerThread;

.field protected mVisualizedAutoTrackActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 66
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->sInstanceMap:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mLoginIdLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;)V
    .registers 8

    const-string v0, "SA.SensorsDataAPI"

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mLoginIdLock:Ljava/lang/Object;

    .line 84
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    invoke-direct {v1}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;-><init>()V

    iput-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mInternalConfigs:Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    .line 85
    iput-object p1, v1, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;->context:Landroid/content/Context;

    .line 86
    invoke-virtual {p0, p3}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->setDebugMode(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;)V

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mHeatMapActivities:Ljava/util/List;

    .line 88
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mVisualizedAutoTrackActivities:Ljava/util/List;

    .line 90
    :try_start_26
    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->clone()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    move-result-object p2

    sput-object p2, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    .line 91
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->preInit(Landroid/content/Context;)V

    .line 92
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;

    move-result-object p2

    iput-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mTrackTaskManager:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;

    .line 93
    new-instance p2, Lcom/sensorsdata/analytics/android/sdk/core/tasks/TrackTaskManagerThread;

    invoke-direct {p2}, Lcom/sensorsdata/analytics/android/sdk/core/tasks/TrackTaskManagerThread;-><init>()V

    iput-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mTrackTaskManagerThread:Lcom/sensorsdata/analytics/android/sdk/core/tasks/TrackTaskManagerThread;

    .line 94
    new-instance p2, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mTrackTaskManagerThread:Lcom/sensorsdata/analytics/android/sdk/core/tasks/TrackTaskManagerThread;

    const-string v2, "SA.TaskQueueThread"

    invoke-direct {p2, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 95
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/exceptions/SensorsDataExceptionHandler;->init()V

    .line 97
    sget-object p2, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget-object p2, p2, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mServerUrl:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->initSAConfig(Ljava/lang/String;)V

    .line 99
    new-instance p2, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    move-object v1, p0

    check-cast v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mInternalConfigs:Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    invoke-direct {p2, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;-><init>(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;)V

    iput-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    .line 100
    move-object p2, p0

    check-cast p2, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-direct {p0, p2, p1}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->registerLifecycleCallbacks(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Landroid/content/Context;)V

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->delayInitTask(Landroid/content/Context;)V

    .line 103
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->getInstance(Landroid/content/Context;)Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/sensorsdata/analytics/android/sdk/data/SAProviderHelper;->migratingDB(Landroid/content/Context;)V

    .line 104
    sget-object p1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget-boolean p1, p1, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mTrackScreenOrientationEnabled:Z

    invoke-interface {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/ISensorsDataAPI;->enableTrackScreenOrientation(Z)V

    .line 105
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SALog;->isLogEnabled()Z

    move-result p1

    if-eqz p1, :cond_a4

    .line 106
    sget-object p1, Lcom/sensorsdata/analytics/android/sdk/util/TimeUtils;->SDK_LOCALE:Ljava/util/Locale;

    const-string p2, "Initialized the instance of Sensors Analytics SDK with server url \'%s\', flush interval %d ms, debugMode: %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mServerUrl:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget v3, v3, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mFlushInterval:I

    .line 107
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    .line 106
    invoke-static {p1, p2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_a4
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->initUniAppStatus()V
    :try_end_a7
    .catchall {:try_start_26 .. :try_end_a7} :catchall_a8

    goto :goto_b0

    :catchall_a8
    move-exception p1

    .line 111
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b0
    return-void
.end method

.method static synthetic access$000(Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;Landroid/content/Context;)V
    .registers 2

    .line 61
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->registerObserver(Landroid/content/Context;)V

    return-void
.end method

.method public static getConfigOptions()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .registers 1

    .line 224
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    return-object v0
.end method

.method private static isSDKDisableByLocal()Z
    .registers 2

    .line 138
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    if-nez v0, :cond_d

    const-string v0, "SA.SensorsDataAPI"

    const-string v1, "SAConfigOptions is null"

    .line 139
    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    .line 142
    :cond_d
    iget-boolean v0, v0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->isDisableSDK:Z

    return v0
.end method

.method public static isSDKDisabled()Z
    .registers 1

    .line 151
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->isSDKDisableByLocal()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->isSDKDisabledByRemote()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method private static isSDKDisabledByRemote()Z
    .registers 3

    .line 125
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;->isSDKDisabledByRemote()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v1, "SA.SensorsDataAPI"

    const-string v2, "remote config: SDK is disabled"

    .line 127
    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    return v0
.end method

.method private registerLifecycleCallbacks(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Landroid/content/Context;)V
    .registers 6

    .line 371
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_3a

    .line 372
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 373
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/monitor/SensorsDataLifecycleMonitorManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/monitor/SensorsDataLifecycleMonitorManager;

    move-result-object v1

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/AppStateTools;->getInstance()Lcom/sensorsdata/analytics/android/sdk/util/AppStateTools;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/monitor/SensorsDataLifecycleMonitorManager;->addActivityLifeCallback(Lcom/sensorsdata/analytics/android/sdk/monitor/SensorsDataActivityLifecycleCallbacks$SAActivityLifecycleCallbacks;)V

    .line 374
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/AppStateTools;->getInstance()Lcom/sensorsdata/analytics/android/sdk/util/AppStateTools;

    move-result-object v1

    new-instance v2, Lcom/sensorsdata/analytics/android/sdk/core/business/DefaultAppState;

    invoke-direct {v2, p1}, Lcom/sensorsdata/analytics/android/sdk/core/business/DefaultAppState;-><init>(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;)V

    invoke-virtual {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/util/AppStateTools;->addAppStateListener(Lcom/sensorsdata/analytics/android/sdk/util/AppStateTools$AppState;)V

    .line 375
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/AppStateTools;->getInstance()Lcom/sensorsdata/analytics/android/sdk/util/AppStateTools;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sensorsdata/analytics/android/sdk/util/AppStateTools;->delayInit(Landroid/content/Context;)V

    .line 377
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/monitor/SensorsDataLifecycleMonitorManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/monitor/SensorsDataLifecycleMonitorManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/monitor/SensorsDataLifecycleMonitorManager;->getCallback()Lcom/sensorsdata/analytics/android/sdk/monitor/SensorsDataActivityLifecycleCallbacks;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_35} :catch_36

    goto :goto_3a

    :catch_36
    move-exception p1

    .line 380
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_3a
    :goto_3a
    return-void
.end method

.method private registerObserver(Landroid/content/Context;)V
    .registers 5

    .line 389
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/core/rpc/SensorsDataContentObserver;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/core/rpc/SensorsDataContentObserver;-><init>()V

    .line 390
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 391
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getSessionTimeUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 392
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getLoginIdUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 393
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getDisableSDKUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 394
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getEnableSDKUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 395
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbParams;->getUserIdentities()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public addEventListener(Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;)V
    .registers 3

    .line 160
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->addEventListener(Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;)V

    return-void
.end method

.method public addFunctionListener(Lcom/sensorsdata/analytics/android/sdk/listener/SAFunctionListener;)V
    .registers 4

    .line 197
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mTrackTaskManager:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;

    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$1;

    invoke-direct {v1, p0, p1}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$1;-><init>(Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;Lcom/sensorsdata/analytics/android/sdk/listener/SAFunctionListener;)V

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->addTrackEventTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public addSAJSListener(Lcom/sensorsdata/analytics/android/sdk/listener/SAJSListener;)V
    .registers 2

    .line 178
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/jsbridge/H5Helper;->addSAJSListener(Lcom/sensorsdata/analytics/android/sdk/listener/SAJSListener;)V

    return-void
.end method

.method protected applySAConfigOptions()V
    .registers 3

    .line 331
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget-boolean v0, v0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mEnableTrackAppCrash:Z

    if-eqz v0, :cond_9

    .line 332
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/exceptions/SensorsDataExceptionHandler;->enableAppCrash()V

    .line 335
    :cond_9
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget-boolean v1, v0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mInvokeLog:Z

    if-eqz v1, :cond_14

    .line 336
    iget-boolean v0, v0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mLogEnabled:Z

    invoke-interface {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/ISensorsDataAPI;->enableLog(Z)V

    .line 339
    :cond_14
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget-boolean v0, v0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mTrackScreenOrientationEnabled:Z

    invoke-interface {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/ISensorsDataAPI;->enableTrackScreenOrientation(Z)V

    .line 342
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget-boolean v1, v0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mVisualizedEnabled:Z

    if-nez v1, :cond_32

    iget-boolean v0, v0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mVisualizedPropertiesEnabled:Z

    if-eqz v0, :cond_32

    const-string v0, "SA.SensorsDataAPI"

    const-string v1, "The VisualizedProperties is enabled, and visualizedEnable is false"

    .line 343
    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->enableVisualizedAutoTrack(Z)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    :cond_32
    return-void
.end method

.method protected delayInitTask(Landroid/content/Context;)V
    .registers 4

    .line 402
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mTrackTaskManager:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;

    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$5;

    invoke-direct {v1, p0, p1}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$5;-><init>(Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->addTrackEventTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getDebugMode()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;
    .registers 2

    .line 228
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mInternalConfigs:Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    iget-object v0, v0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;->debugMode:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;

    return-object v0
.end method

.method public getDynamicProperty()Lorg/json/JSONObject;
    .registers 3

    const/4 v0, 0x0

    .line 356
    :try_start_1
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mDynamicSuperPropertiesCallBack:Lcom/sensorsdata/analytics/android/sdk/SensorsDataDynamicSuperProperties;

    if-eqz v1, :cond_11

    .line 357
    invoke-interface {v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataDynamicSuperProperties;->getDynamicSuperProperties()Lorg/json/JSONObject;

    move-result-object v0

    .line 358
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/SADataHelper;->assertPropertyTypes(Lorg/json/JSONObject;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_d

    goto :goto_11

    :catch_d
    move-exception v1

    .line 361
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_11
    :goto_11
    return-object v0
.end method

.method public getSAContextManager()Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;
    .registers 2

    .line 249
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    return-object v0
.end method

.method protected initSAConfig(Ljava/lang/String;)V
    .registers 10

    .line 271
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mInternalConfigs:Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    iget-object v0, v0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/AppInfoUtils;->getAppInfoBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    .line 272
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_18

    .line 273
    iput-boolean v3, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSDKConfigInit:Z

    .line 274
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-direct {v1, p1}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    goto :goto_1a

    .line 276
    :cond_18
    iput-boolean v2, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSDKConfigInit:Z

    .line 279
    :goto_1a
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget-boolean v4, v1, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mInvokeLog:Z

    if-eqz v4, :cond_26

    .line 280
    iget-boolean v1, v1, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mLogEnabled:Z

    invoke-interface {p0, v1}, Lcom/sensorsdata/analytics/android/sdk/ISensorsDataAPI;->enableLog(Z)V

    goto :goto_3a

    .line 282
    :cond_26
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mInternalConfigs:Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    iget-object v1, v1, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;->debugMode:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;

    sget-object v4, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;->DEBUG_OFF:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;

    if-eq v1, v4, :cond_30

    const/4 v1, 0x1

    goto :goto_31

    :cond_30
    const/4 v1, 0x0

    :goto_31
    const-string v4, "com.sensorsdata.analytics.android.EnableLogging"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-interface {p0, v1}, Lcom/sensorsdata/analytics/android/sdk/ISensorsDataAPI;->enableLog(Z)V

    .line 285
    :goto_3a
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget-boolean v1, v1, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->isDisableSDK:Z

    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->setDisableSDK(Z)V

    .line 287
    invoke-interface {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/ISensorsDataAPI;->setServerUrl(Ljava/lang/String;)V

    .line 288
    sget-object p1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget-boolean p1, p1, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mEnableTrackAppCrash:Z

    if-eqz p1, :cond_4d

    .line 289
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/exceptions/SensorsDataExceptionHandler;->enableAppCrash()V

    .line 292
    :cond_4d
    sget-object p1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget v1, p1, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mFlushInterval:I

    if-nez v1, :cond_5e

    const/16 v1, 0x3a98

    const-string v4, "com.sensorsdata.analytics.android.FlushInterval"

    .line 293
    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->setFlushInterval(I)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    .line 297
    :cond_5e
    sget-object p1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget v1, p1, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mFlushBulkSize:I

    if-nez v1, :cond_6f

    const/16 v1, 0x64

    const-string v4, "com.sensorsdata.analytics.android.FlushBulkSize"

    .line 298
    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->setFlushBulkSize(I)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    .line 302
    :cond_6f
    sget-object p1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget-wide v4, p1, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mMaxCacheSize:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_7f

    const-wide/32 v4, 0x2000000

    .line 303
    invoke-virtual {p1, v4, v5}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->setMaxCacheSize(J)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    .line 306
    :cond_7f
    sget-object p1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget-boolean v1, p1, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mInvokeHeatMapEnabled:Z

    if-nez v1, :cond_8d

    const-string v1, "com.sensorsdata.analytics.android.HeatMap"

    .line 307
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p1, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mHeatMapEnabled:Z

    .line 311
    :cond_8d
    sget-object p1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iget-boolean v1, p1, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mInvokeVisualizedEnabled:Z

    if-nez v1, :cond_9b

    const-string v1, "com.sensorsdata.analytics.android.VisualizedAutoTrack"

    .line 312
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p1, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mVisualizedEnabled:Z

    .line 315
    :cond_9b
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mInternalConfigs:Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iput-object v1, p1, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;->saConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    const-string v1, "com.sensorsdata.analytics.android.ShowDebugInfoView"

    .line 316
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p1, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;->isShowDebugView:Z

    .line 319
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mInternalConfigs:Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    const-string v1, "com.sensorsdata.analytics.android.DisableDefaultRemoteConfig"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p1, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;->isDefaultRemoteConfigEnable:Z

    .line 322
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mInternalConfigs:Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    iget-object v1, p1, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sensorsdata/analytics/android/sdk/util/AppInfoUtils;->isMainProcess(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v1

    iput-boolean v1, p1, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;->isMainProcess:Z

    .line 323
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mInternalConfigs:Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    const-string v1, "com.sensorsdata.analytics.android.DisableTrackDeviceId"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;->isTrackDeviceId:Z

    .line 325
    sget-object p1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->getLimitKeys()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_dc

    .line 326
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/core/business/SAPropertyManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/core/business/SAPropertyManager;

    move-result-object p1

    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->getLimitKeys()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sensorsdata/analytics/android/sdk/core/business/SAPropertyManager;->registerLimitKeys(Ljava/util/Map;)V

    :cond_dc
    return-void
.end method

.method public isDisableDefaultRemoteConfig()Z
    .registers 2

    .line 245
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mInternalConfigs:Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    iget-boolean v0, v0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;->isDefaultRemoteConfigEnable:Z

    return v0
.end method

.method registerNetworkListener(Landroid/content/Context;)V
    .registers 4

    .line 253
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mTrackTaskManager:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;

    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$3;

    invoke-direct {v1, p0, p1}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$3;-><init>(Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->addTrackEventTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeEventListener(Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;)V
    .registers 3

    .line 169
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->removeEventListener(Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;)V

    return-void
.end method

.method public removeFunctionListener(Lcom/sensorsdata/analytics/android/sdk/listener/SAFunctionListener;)V
    .registers 4

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mTrackTaskManager:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;

    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$2;

    invoke-direct {v1, p0, p1}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$2;-><init>(Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;Lcom/sensorsdata/analytics/android/sdk/listener/SAFunctionListener;)V

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->addTrackEventTask(Ljava/lang/Runnable;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_f

    :catch_b
    move-exception p1

    .line 219
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_f
    return-void
.end method

.method public removeSAJSListener(Lcom/sensorsdata/analytics/android/sdk/listener/SAJSListener;)V
    .registers 2

    .line 187
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/jsbridge/H5Helper;->removeSAJSListener(Lcom/sensorsdata/analytics/android/sdk/listener/SAJSListener;)V

    return-void
.end method

.method public setDebugMode(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;)V
    .registers 3

    .line 232
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mInternalConfigs:Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    iput-object p1, v0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;->debugMode:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;

    .line 233
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;->DEBUG_OFF:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$DebugMode;

    if-ne p1, v0, :cond_14

    const/4 p1, 0x0

    .line 234
    invoke-interface {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/ISensorsDataAPI;->enableLog(Z)V

    .line 235
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->setDebug(Z)V

    .line 236
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mOriginServerUrl:Ljava/lang/String;

    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mServerUrl:Ljava/lang/String;

    goto :goto_20

    :cond_14
    const/4 p1, 0x1

    .line 238
    invoke-interface {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/ISensorsDataAPI;->enableLog(Z)V

    .line 239
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->setDebug(Z)V

    .line 240
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mOriginServerUrl:Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/ISensorsDataAPI;->setServerUrl(Ljava/lang/String;)V

    :goto_20
    return-void
.end method

.method unregisterNetworkListener(Landroid/content/Context;)V
    .registers 4

    .line 262
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;->mTrackTaskManager:Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;

    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$4;

    invoke-direct {v1, p0, p1}, Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI$4;-><init>(Lcom/sensorsdata/analytics/android/sdk/AbstractSensorsDataAPI;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/TrackTaskManager;->addTrackEventTask(Ljava/lang/Runnable;)V

    return-void
.end method
