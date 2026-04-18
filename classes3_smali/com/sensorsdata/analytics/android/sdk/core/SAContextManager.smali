.class public Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;
.super Ljava/lang/Object;
.source "SAContextManager.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEventListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstDay:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstDay;

.field private mInternalConfigs:Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

.field private mMessages:Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;

.field private mOrientationDetector:Lcom/sensorsdata/analytics/android/sdk/SensorsDataScreenOrientationDetector;

.field private mPluginManager:Lcom/sensorsdata/analytics/android/sdk/plugin/property/PropertyPluginManager;

.field mRemoteManager:Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;

.field private mSensorsDataAPI:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

.field private mTrackEventProcessor:Lcom/sensorsdata/analytics/android/sdk/core/event/EventProcessor;

.field mUserIdentityAPI:Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;)V
    .registers 6

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    :try_start_3
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->mSensorsDataAPI:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 71
    iput-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->mInternalConfigs:Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    .line 72
    iget-object v0, p2, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->mContext:Landroid/content/Context;

    .line 73
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getInstance(Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;)Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    .line 74
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->mInternalConfigs:Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    invoke-static {v0, p1, v1}, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->getInstance(Landroid/content/Context;Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;)Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->mMessages:Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;

    .line 75
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEventProcessor;

    invoke-direct {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEventProcessor;-><init>(Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;)V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->mTrackEventProcessor:Lcom/sensorsdata/analytics/android/sdk/core/event/EventProcessor;

    .line 76
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->getFirstDayPst()Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstDay;

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->mFirstDay:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstDay;

    .line 78
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/plugin/property/PropertyPluginManager;

    invoke-direct {v0, p1, p0}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/PropertyPluginManager;-><init>(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;)V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->mPluginManager:Lcom/sensorsdata/analytics/android/sdk/plugin/property/PropertyPluginManager;

    .line 80
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->mInternalConfigs:Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    iget-object v1, v1, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;->saConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->getStorePlugins()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->registerPlugins(Ljava/util/List;Landroid/content/Context;)V

    .line 81
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->upgrade()V

    .line 83
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->executeDelayTask()V

    .line 85
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;->installService(Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;)V

    .line 87
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;

    invoke-direct {v0, p1, p0}, Lcom/sensorsdata/analytics/android/sdk/remote/SensorsDataRemoteManager;-><init>(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;)V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->mRemoteManager:Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;

    .line 88
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;->applySDKConfigFromCache()V

    .line 90
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->mContext:Landroid/content/Context;

    iput-object p1, p2, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;->context:Landroid/content/Context;
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_64} :catch_65

    goto :goto_69

    :catch_65
    move-exception p1

    .line 92
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_69
    return-void
.end method

.method static synthetic access$000(Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;)Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->mInternalConfigs:Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    return-object p0
.end method

.method private checkAppStart()V
    .registers 3

    .line 199
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    move-result-object v0

    const-string v1, "app_start_data"

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->isExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 200
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isAutoTrackEnabled()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v0

    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;->APP_START:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isAutoTrackEventTypeIgnored(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 201
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;->getInstance()Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;

    move-result-object v0

    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager$2;

    invoke-direct {v1, p0}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager$2;-><init>(Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;)V

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;->trackQueueEvent(Ljava/lang/Runnable;)V

    :cond_2e
    return-void
.end method

.method private executeDelayTask()V
    .registers 3

    .line 100
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;->getInstance()Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;

    move-result-object v0

    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager$1;

    invoke-direct {v1, p0}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager$1;-><init>(Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;)V

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;->trackQueueEvent(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public addEventListener(Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;)V
    .registers 3

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->mEventListenerList:Ljava/util/List;

    if-nez v0, :cond_b

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->mEventListenerList:Ljava/util/List;

    .line 130
    :cond_b
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->mEventListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    goto :goto_15

    :catch_11
    move-exception p1

    .line 132
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_15
    return-void
.end method

.method public getAnalyticsMessages()Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;
    .registers 2

    .line 229
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->mMessages:Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 221
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getEventListenerList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;",
            ">;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->mEventListenerList:Ljava/util/List;

    return-object v0
.end method

.method public getInternalConfigs()Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;
    .registers 2

    .line 225
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->mInternalConfigs:Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    return-object v0
.end method

.method public getOrientationDetector()Lcom/sensorsdata/analytics/android/sdk/SensorsDataScreenOrientationDetector;
    .registers 2

    .line 233
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->mOrientationDetector:Lcom/sensorsdata/analytics/android/sdk/SensorsDataScreenOrientationDetector;

    return-object v0
.end method

.method public getPluginManager()Lcom/sensorsdata/analytics/android/sdk/plugin/property/PropertyPluginManager;
    .registers 2

    .line 186
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->mPluginManager:Lcom/sensorsdata/analytics/android/sdk/plugin/property/PropertyPluginManager;

    return-object v0
.end method

.method public getRemoteManager()Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;
    .registers 2

    .line 152
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->mRemoteManager:Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;

    return-object v0
.end method

.method public getSensorsDataAPI()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;
    .registers 2

    .line 167
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->mSensorsDataAPI:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    return-object v0
.end method

.method public declared-synchronized getUserIdentityAPI()Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;
    .registers 2

    monitor-enter p0

    .line 160
    :try_start_1
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->mUserIdentityAPI:Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;

    if-nez v0, :cond_c

    .line 161
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;

    invoke-direct {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;-><init>(Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;)V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->mUserIdentityAPI:Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;

    .line 163
    :cond_c
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->mUserIdentityAPI:Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isFirstDay(J)Z
    .registers 8

    .line 171
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->mFirstDay:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstDay;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "yyyy-MM-dd"

    if-nez v0, :cond_1b

    .line 173
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->mFirstDay:Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstDay;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4, v2}, Lcom/sensorsdata/analytics/android/sdk/util/TimeUtils;->formatTime(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->commit(Ljava/lang/Object;)V

    return v1

    .line 177
    :cond_1b
    :try_start_1b
    invoke-static {p1, p2, v2}, Lcom/sensorsdata/analytics/android/sdk/util/TimeUtils;->formatTime(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 178
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_23} :catch_24

    return p1

    :catch_24
    move-exception p1

    .line 180
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    return v1
.end method

.method public removeEventListener(Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;)V
    .registers 3

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->mEventListenerList:Ljava/util/List;

    if-eqz v0, :cond_14

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 144
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->mEventListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_14

    :catch_10
    move-exception p1

    .line 147
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_14
    :goto_14
    return-void
.end method

.method public setOrientationDetector(Lcom/sensorsdata/analytics/android/sdk/SensorsDataScreenOrientationDetector;)V
    .registers 2

    .line 237
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->mOrientationDetector:Lcom/sensorsdata/analytics/android/sdk/SensorsDataScreenOrientationDetector;

    return-void
.end method

.method public setRemoteManager(Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;)V
    .registers 2

    .line 156
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->mRemoteManager:Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;

    return-void
.end method

.method public trackEvent(Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;)V
    .registers 3

    .line 191
    :try_start_0
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->checkAppStart()V

    .line 192
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->mTrackEventProcessor:Lcom/sensorsdata/analytics/android/sdk/core/event/EventProcessor;

    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/core/event/EventProcessor;->trackEvent(Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_d

    :catch_9
    move-exception p1

    .line 194
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_d
    return-void
.end method
