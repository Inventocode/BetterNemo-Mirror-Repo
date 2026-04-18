.class public Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;
.super Ljava/lang/Object;
.source "ActivityLifecycleCallbacks.java"

# interfaces
.implements Lcom/sensorsdata/analytics/android/sdk/monitor/SensorsDataActivityLifecycleCallbacks$SAActivityLifecycleCallbacks;
.implements Lcom/sensorsdata/analytics/android/sdk/exceptions/SensorsDataExceptionHandler$SAExceptionListener;


# static fields
.field private static final EVENT_DURATION:Ljava/lang/String; = "event_duration"

.field private static final EVENT_TIME:Ljava/lang/String; = "event_time"

.field private static final TAG:Ljava/lang/String; = "SA.ActivityLifecycleCallbacks"

.field private static final TIME_INTERVAL:I = 0x7d0


# instance fields
.field private final APP_END_DATA:Ljava/lang/String;

.field private final APP_RESET_STATE:Ljava/lang/String;

.field private final APP_START_TIME:Ljava/lang/String;

.field private final ELAPSE_TIME:Ljava/lang/String;

.field private final MESSAGE_CODE_APP_END:I

.field private final MESSAGE_CODE_START:I

.field private final MESSAGE_CODE_START_DELAY:I

.field private final MESSAGE_CODE_STOP:I

.field private final MESSAGE_CODE_TIMER:I

.field private final TIME:Ljava/lang/String;

.field private activityProperty:Lorg/json/JSONObject;

.field private final endDataProperty:Lorg/json/JSONObject;

.field private final hashSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

.field private final mDbAdapter:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

.field private mDeepLinkProperty:Lorg/json/JSONObject;

.field private mHandler:Landroid/os/Handler;

.field private final mSensorsDataInstance:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

.field private mStartActivityCount:I

.field private mStartTime:J

.field private mStartTimerCount:I

.field private messageReceiveTime:J

.field private resumeFromBackground:Z


# direct methods
.method public constructor <init>(Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;)V
    .registers 5

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->resumeFromBackground:Z

    .line 69
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->activityProperty:Lorg/json/JSONObject;

    .line 70
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->endDataProperty:Lorg/json/JSONObject;

    .line 71
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->mDeepLinkProperty:Lorg/json/JSONObject;

    const-string v1, "app_start_time"

    .line 76
    iput-object v1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->APP_START_TIME:Ljava/lang/String;

    const-string v1, "app_end_data"

    .line 78
    iput-object v1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->APP_END_DATA:Ljava/lang/String;

    const-string v1, "app_reset_state"

    .line 80
    iput-object v1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->APP_RESET_STATE:Ljava/lang/String;

    const-string v1, "time"

    .line 81
    iput-object v1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->TIME:Ljava/lang/String;

    const-string v1, "elapse_time"

    .line 82
    iput-object v1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->ELAPSE_TIME:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 85
    iput-wide v1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->messageReceiveTime:J

    .line 86
    iput v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->MESSAGE_CODE_APP_END:I

    const/16 v0, 0x64

    .line 87
    iput v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->MESSAGE_CODE_START:I

    const/16 v0, 0x65

    .line 88
    iput v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->MESSAGE_CODE_START_DELAY:I

    const/16 v0, 0xc8

    .line 89
    iput v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->MESSAGE_CODE_STOP:I

    const/16 v0, 0x12c

    .line 90
    iput v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->MESSAGE_CODE_TIMER:I

    .line 96
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->hashSet:Ljava/util/Set;

    .line 99
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getSensorsDataAPI()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->mSensorsDataInstance:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 100
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->mDbAdapter:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    .line 101
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->mContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    .line 102
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->initHandler()V

    .line 103
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->registerAdvertObserver()V

    return-void
.end method

.method static synthetic access$000(Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;)Lorg/json/JSONObject;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->endDataProperty:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;Landroid/os/Message;)V
    .registers 2

    .line 61
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->handleStartedMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;Z)Z
    .registers 2

    .line 61
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->resumeFromBackground:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;Ljava/lang/String;)V
    .registers 2

    .line 61
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->trackAppEnd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;Landroid/os/Message;)V
    .registers 2

    .line 61
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->handleStoppedMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;)Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->mSensorsDataInstance:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;)Z
    .registers 1

    .line 61
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->isAutoTrackAppEnd()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;JJ)V
    .registers 5

    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->generateAppEndData(JJ)V

    return-void
.end method

.method static synthetic access$600(Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;)I
    .registers 1

    .line 61
    iget p0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->mStartTimerCount:I

    return p0
.end method

.method static synthetic access$700(Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;)Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->mContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    return-object p0
.end method

.method static synthetic access$800(Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;)Landroid/os/Handler;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$900(Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;)J
    .registers 3

    .line 61
    iget-wide v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->messageReceiveTime:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;J)J
    .registers 3

    .line 61
    iput-wide p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->messageReceiveTime:J

    return-wide p1
.end method

.method private buildScreenProperties(Landroid/app/Activity;)V
    .registers 3

    .line 504
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/utils/AopUtil;->buildTitleNoAutoTrackerProperties(Landroid/app/Activity;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->activityProperty:Lorg/json/JSONObject;

    .line 505
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->endDataProperty:Lorg/json/JSONObject;

    invoke-static {p1, v0}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-void
.end method

.method private generateAppEndData(JJ)V
    .registers 11

    const-string v0, "$is_first_day"

    .line 403
    :try_start_2
    iget-wide v1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->mStartTime:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_14

    .line 404
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getAppStartTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->mStartTime:J

    .line 406
    :cond_14
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->endDataProperty:Lorg/json/JSONObject;

    const-string v2, "event_duration"

    iget-wide v3, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->mStartTime:J

    invoke-static {v3, v4, p3, p4}, Lcom/sensorsdata/analytics/android/sdk/util/TimeUtils;->duration(JJ)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 407
    iget-object p3, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->endDataProperty:Lorg/json/JSONObject;

    const-string p4, "app_start_time"

    iget-wide v1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->mStartTime:J

    invoke-virtual {p3, p4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 408
    iget-object p3, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->endDataProperty:Lorg/json/JSONObject;

    const-string p4, "event_time"

    const-wide/16 v1, 0x7d0

    add-long/2addr p1, v1

    invoke-virtual {p3, p4, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 409
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getConfigOptions()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isEnableSession()Z

    move-result p3

    if-eqz p3, :cond_5b

    .line 410
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/core/business/session/SessionRelatedManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/core/business/session/SessionRelatedManager;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/core/business/session/SessionRelatedManager;->refreshSessionByTimer(J)V

    .line 411
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->endDataProperty:Lorg/json/JSONObject;

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/core/business/session/SessionRelatedManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/core/business/session/SessionRelatedManager;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "$event_session_id"

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/core/business/session/SessionRelatedManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/core/business/session/SessionRelatedManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sensorsdata/analytics/android/sdk/core/business/session/SessionRelatedManager;->getSessionID()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 414
    :cond_5b
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->endDataProperty:Lorg/json/JSONObject;

    const-string p2, "$app_version"

    iget-object p3, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->mContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    invoke-virtual {p3}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/sensorsdata/analytics/android/sdk/util/AppInfoUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 415
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->endDataProperty:Lorg/json/JSONObject;

    const-string p2, "$lib_version"

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getSDKVersion()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 416
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->endDataProperty:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_92

    .line 417
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->endDataProperty:Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->mContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->isFirstDay(J)Z

    move-result p2

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 419
    :cond_92
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->mDbAdapter:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    iget-object p2, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->endDataProperty:Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->commitAppExitData(Ljava/lang/String;)V
    :try_end_9d
    .catchall {:try_start_2 .. :try_end_9d} :catchall_9e

    goto :goto_a8

    :catchall_9e
    move-exception p1

    .line 421
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SA.ActivityLifecycleCallbacks"

    invoke-static {p2, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a8
    return-void
.end method

.method private handleStartedMessage(Landroid/os/Message;)V
    .registers 12

    .line 259
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->mDbAdapter:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getActivityCount()I

    move-result v0

    iput v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->mStartActivityCount:I

    .line 260
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->mDbAdapter:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->mStartActivityCount:I

    invoke-virtual {v1, v0}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->commitActivityCount(I)V

    .line 262
    iget v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->mStartActivityCount:I

    if-ne v0, v2, :cond_102

    .line 263
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getConfigOptions()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isSaveDeepLinkInfo()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_35

    .line 264
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;

    move-result-object v0

    const-string v3, "sensors_analytics_module_advertisement"

    const-string v4, "getLatestUtmProperties"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4, v5}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;->invokeModuleFunction(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 265
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->endDataProperty:Lorg/json/JSONObject;

    invoke-static {v0, v3}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 267
    :cond_35
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 268
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->isSessionTimeOut()Z

    move-result v0

    if-eqz v0, :cond_102

    .line 271
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, v1}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->obtainAppEndMessage(Z)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 273
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->getFirstStartPst()Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstStart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 274
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5f} :catch_f7

    .line 276
    :try_start_5f
    iget-object v4, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->mSensorsDataInstance:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-virtual {v4}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isAutoTrackEnabled()Z

    move-result v4

    if-eqz v4, :cond_72

    iget-object v4, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->mSensorsDataInstance:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    sget-object v5, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;->APP_START:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;

    invoke-virtual {v4, v5}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isAutoTrackEventTypeIgnored(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;)Z

    move-result v4

    if-nez v4, :cond_72

    const/4 v1, 0x1

    :cond_72
    const/16 v4, 0x65

    if-nez v1, :cond_7a

    .line 277
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v4, :cond_eb

    :cond_7a
    if-eqz v0, :cond_89

    .line 279
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->getFirstStartPst()Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstStart;

    move-result-object v1

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v5}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->commit(Ljava/lang/Object;)V

    .line 281
    :cond_89
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "$resume_from_background"

    .line 282
    iget-boolean v6, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->resumeFromBackground:Z

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v5, "$is_first_time"

    .line 283
    invoke-virtual {v1, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 284
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->activityProperty:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 286
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->mDeepLinkProperty:Lorg/json/JSONObject;

    if-eqz v0, :cond_a9

    .line 287
    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    const/4 v0, 0x0

    .line 288
    iput-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->mDeepLinkProperty:Lorg/json/JSONObject;

    :cond_a9
    const-string v0, "time"

    .line 291
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    const-string v0, "event_time"

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-lez v9, :cond_b8

    goto :goto_bc

    .line 292
    :cond_b8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    :goto_bc
    invoke-virtual {v1, v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 293
    iget p1, p1, Landroid/os/Message;->what:I

    if-ne p1, v4, :cond_d1

    .line 294
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    move-result-object p1

    const-string v0, "app_start_data"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_eb

    .line 296
    :cond_d1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;->getInstance()Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;

    move-result-object p1

    new-instance v0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks$3;

    invoke-direct {v0, p0, v1}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks$3;-><init>(Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;Lorg/json/JSONObject;)V

    invoke-virtual {p1, v0}, Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;->trackQueueEvent(Ljava/lang/Runnable;)V

    .line 304
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->flush()V
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_e4} :catch_e5

    goto :goto_eb

    :catch_e5
    move-exception p1

    :try_start_e6
    const-string v0, "SA.ActivityLifecycleCallbacks"

    .line 308
    invoke-static {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_eb
    :goto_eb
    const-string p1, "elapse_time"

    .line 311
    invoke-virtual {v3, p1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->updateStartTime(J)V

    .line 313
    iput-boolean v2, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->resumeFromBackground:Z
    :try_end_f6
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_f6} :catch_f7

    goto :goto_102

    :catch_f7
    move-exception p1

    .line 317
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 318
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->updateStartTime(J)V

    .line 322
    :cond_102
    :goto_102
    :try_start_102
    iget p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->mStartTimerCount:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->mStartTimerCount:I

    if-nez p1, :cond_124

    iget-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->mContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getInternalConfigs()Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    move-result-object p1

    iget-object p1, p1, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;->saConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isDisableAppEndTimer()Z

    move-result p1

    if-nez p1, :cond_124

    .line 328
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x12c

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_11f
    .catch Ljava/lang/Exception; {:try_start_102 .. :try_end_11f} :catch_120

    goto :goto_124

    :catch_120
    move-exception p1

    .line 331
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_124
    :goto_124
    return-void
.end method

.method private handleStoppedMessage(Landroid/os/Message;)V
    .registers 8

    .line 338
    :try_start_0
    iget v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->mStartTimerCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->mStartTimerCount:I

    const/4 v2, 0x0

    if-gtz v0, :cond_12

    .line 340
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x12c

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 341
    iput v2, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->mStartTimerCount:I

    .line 344
    :cond_12
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->mDbAdapter:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getActivityCount()I

    move-result v0

    iput v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->mStartActivityCount:I

    if-lez v0, :cond_20

    add-int/lit8 v2, v0, -0x1

    .line 345
    iput v2, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->mStartActivityCount:I

    :cond_20
    iput v2, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->mStartActivityCount:I

    .line 346
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->mDbAdapter:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    invoke-virtual {v0, v2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->commitActivityCount(I)V

    .line 352
    iget v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->mStartActivityCount:I

    if-gtz v0, :cond_58

    .line 354
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->mSensorsDataInstance:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->flush()V

    .line 355
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "time"

    .line 356
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v0, "elapse_time"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->generateAppEndData(JJ)V

    .line 357
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, v1}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->obtainAppEndMessage(Z)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->mSensorsDataInstance:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getSessionIntervalTime()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_53} :catch_54

    goto :goto_58

    :catch_54
    move-exception p1

    .line 360
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_58
    :goto_58
    return-void
.end method

.method private initHandler()V
    .registers 3

    .line 204
    :try_start_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SENSORS_DATA_THREAD"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 206
    new-instance v1, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks$2;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks$2;-><init>(Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->mHandler:Landroid/os/Handler;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_1a

    :catch_16
    move-exception v0

    .line 252
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_1a
    return-void
.end method

.method private isAutoTrackAppEnd()Z
    .registers 3

    .line 500
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->mSensorsDataInstance:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;->APP_END:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isAutoTrackEventTypeIgnored(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isSessionTimeOut()Z
    .registers 11

    .line 431
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide v2, 0xdc69183800L

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    .line 434
    :try_start_f
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getAppExitData()Ljava/lang/String;

    move-result-object v4

    .line 435
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_44

    .line 436
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "event_time"

    .line 437
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_28} :catch_3d

    const-wide/16 v8, 0x7d0

    sub-long/2addr v6, v8

    .line 438
    :try_start_2b
    iget-wide v8, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->mStartTime:J

    cmp-long v4, v8, v2

    if-nez v4, :cond_43

    const-string v2, "app_start_time"

    .line 439
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->updateStartTime(J)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_3a} :catch_3b

    goto :goto_43

    :catch_3b
    move-exception v2

    goto :goto_40

    :catch_3d
    move-exception v4

    move-wide v6, v2

    move-object v2, v4

    .line 443
    :goto_40
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_43
    :goto_43
    move-wide v2, v6

    :cond_44
    sub-long/2addr v0, v2

    .line 445
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->mSensorsDataInstance:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getSessionIntervalTime()I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_56

    const/4 v0, 0x1

    goto :goto_57

    :cond_56
    const/4 v0, 0x0

    :goto_57
    return v0
.end method

.method private obtainAppEndMessage(Z)Landroid/os/Message;
    .registers 6

    .line 490
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    .line 491
    iput v1, v0, Landroid/os/Message;->what:I

    .line 492
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 493
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getAppExitData()Ljava/lang/String;

    move-result-object v2

    const-string v3, "app_end_data"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "app_reset_state"

    .line 494
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 495
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private registerAdvertObserver()V
    .registers 4

    .line 107
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;

    move-result-object v0

    const-string v1, "sensors_analytics_module_advertisement"

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;->hasModuleByName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 108
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/core/eventbus/SAEventBus;->getInstance()Lcom/sensorsdata/analytics/android/sdk/core/eventbus/SAEventBus;

    move-result-object v0

    new-instance v1, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks$1;

    invoke-direct {v1, p0}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks$1;-><init>(Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;)V

    const-string v2, "eventbus_deeplink_launch"

    invoke-virtual {v0, v2, v1}, Lcom/sensorsdata/analytics/android/sdk/core/eventbus/SAEventBus;->register(Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/core/eventbus/Subscription;)V

    :cond_1a
    return-void
.end method

.method private sendActivityHandleMessage(I)V
    .registers 7

    .line 474
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 475
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 476
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "time"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 477
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-string v4, "elapse_time"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 478
    iput p1, v0, Landroid/os/Message;->what:I

    .line 479
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 480
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private trackAppEnd(Ljava/lang/String;)V
    .registers 8

    const-string v0, "track_timer"

    .line 371
    :try_start_2
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->mSensorsDataInstance:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isAutoTrackEnabled()Z

    move-result v1

    if-eqz v1, :cond_6a

    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->isAutoTrackAppEnd()Z

    move-result v1

    if-eqz v1, :cond_6a

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6a

    .line 372
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_35

    const-string p1, "event_time"

    .line 374
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x7d0

    add-long/2addr v2, v4

    invoke-virtual {v1, p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "event_timer"

    .line 375
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 376
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_35
    const-string p1, "app_start_time"

    .line 378
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 380
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getAppStartTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-nez p1, :cond_4d

    const-string p1, "event_duration"

    .line 381
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 383
    :cond_4d
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;->getInstance()Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;

    move-result-object p1

    new-instance v0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks$4;

    invoke-direct {v0, p0, v1}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks$4;-><init>(Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;Lorg/json/JSONObject;)V

    invoke-virtual {p1, v0}, Lcom/sensorsdata/analytics/android/sdk/core/SACoreHelper;->trackQueueEvent(Ljava/lang/Runnable;)V

    .line 390
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->mDbAdapter:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->commitAppExitData(Ljava/lang/String;)V

    .line 391
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->mSensorsDataInstance:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->flush()V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_65} :catch_66

    goto :goto_6a

    :catch_66
    move-exception p1

    .line 394
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_6a
    :goto_6a
    return-void
.end method

.method private updateStartTime(J)V
    .registers 8

    const-wide/16 v0, 0x0

    .line 456
    :try_start_2
    iput-wide p1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->mStartTime:J

    .line 457
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->mDbAdapter:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    cmp-long v3, p1, v0

    if-lez v3, :cond_c

    move-wide v3, p1

    goto :goto_10

    :cond_c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    :goto_10
    invoke-virtual {v2, v3, v4}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->commitAppStartTime(J)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_13} :catch_14

    goto :goto_22

    .line 461
    :catch_14
    :try_start_14
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->mDbAdapter:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    cmp-long v3, p1, v0

    if-lez v3, :cond_1b

    goto :goto_1f

    :cond_1b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    :goto_1f
    invoke-virtual {v2, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->commitAppStartTime(J)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_22} :catch_22

    :catch_22
    :goto_22
    return-void
.end method


# virtual methods
.method addActivity(Landroid/app/Activity;)V
    .registers 3

    if-eqz p1, :cond_f

    .line 529
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->hashSet:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_f
    return-void
.end method

.method hasActivity(Landroid/app/Activity;)Z
    .registers 3

    if-eqz p1, :cond_11

    .line 535
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->hashSet:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_11
    const/4 p1, 0x0

    return p1
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 4

    .line 139
    :try_start_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->isSchemeActivity(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 142
    :cond_7
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->buildScreenProperties(Landroid/app/Activity;)V

    .line 143
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->mSensorsDataInstance:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isAutoTrackEnabled()Z

    move-result v0

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->mSensorsDataInstance:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isActivityAutoTrackAppViewScreenIgnored(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_56

    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->mSensorsDataInstance:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;->APP_VIEW_SCREEN:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;

    .line 144
    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isAutoTrackEventTypeIgnored(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 145
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 146
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->activityProperty:Lorg/json/JSONObject;

    invoke-static {v1, v0}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 147
    instance-of v1, p1, Lcom/sensorsdata/analytics/android/sdk/ScreenAutoTracker;

    if-eqz v1, :cond_42

    .line 148
    move-object v1, p1

    check-cast v1, Lcom/sensorsdata/analytics/android/sdk/ScreenAutoTracker;

    .line 149
    invoke-interface {v1}, Lcom/sensorsdata/analytics/android/sdk/ScreenAutoTracker;->getTrackProperties()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_42

    .line 151
    invoke-static {v1, v0}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 154
    :cond_42
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/SADataHelper;->appendLibMethodAutoTrack(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->mSensorsDataInstance:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/core/business/SAPageTools;->getScreenUrl(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->trackViewScreen(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_4f
    .catchall {:try_start_0 .. :try_end_4f} :catchall_50

    goto :goto_56

    :catchall_50
    move-exception p1

    const-string v0, "SA.ActivityLifecycleCallbacks"

    .line 158
    invoke-static {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_56
    :goto_56
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 3

    .line 126
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->isSchemeActivity(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->hasActivity(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 127
    iget v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->mStartActivityCount:I

    if-nez v0, :cond_13

    .line 129
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->buildScreenProperties(Landroid/app/Activity;)V

    :cond_13
    const/16 v0, 0x64

    .line 131
    invoke-direct {p0, v0}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->sendActivityHandleMessage(I)V

    .line 132
    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->addActivity(Landroid/app/Activity;)V

    :cond_1b
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 3

    .line 174
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->isSchemeActivity(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->hasActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/16 v0, 0xc8

    .line 175
    invoke-direct {p0, v0}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->sendActivityHandleMessage(I)V

    .line 176
    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->removeActivity(Landroid/app/Activity;)V

    :cond_14
    return-void
.end method

.method public onDelayInitStarted(Landroid/app/Activity;)V
    .registers 3

    .line 191
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/dialog/SensorsDataDialogUtils;->isSchemeActivity(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->hasActivity(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 192
    iget v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->mStartActivityCount:I

    if-nez v0, :cond_13

    .line 194
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->buildScreenProperties(Landroid/app/Activity;)V

    :cond_13
    const/16 v0, 0x65

    .line 196
    invoke-direct {p0, v0}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->sendActivityHandleMessage(I)V

    .line 197
    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->addActivity(Landroid/app/Activity;)V

    :cond_1b
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 2

    return-void
.end method

.method removeActivity(Landroid/app/Activity;)V
    .registers 3

    if-eqz p1, :cond_f

    .line 542
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/autotrack/core/autotrack/ActivityLifecycleCallbacks;->hashSet:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_f
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 5

    .line 515
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getAppExitData()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 516
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    move-result-object p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->commitAppStartTime(J)V

    .line 519
    :cond_19
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getConfigOptions()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isMultiProcessFlush()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2b

    .line 520
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->commitSubProcessFlushState(Z)V

    .line 524
    :cond_2b
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->commitActivityCount(I)V

    return-void
.end method
