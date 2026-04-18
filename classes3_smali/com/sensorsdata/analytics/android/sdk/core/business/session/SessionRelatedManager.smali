.class public Lcom/sensorsdata/analytics/android/sdk/core/business/session/SessionRelatedManager;
.super Ljava/lang/Object;
.source "SessionRelatedManager.java"


# static fields
.field private static volatile mSessionRelatedManager:Lcom/sensorsdata/analytics/android/sdk/core/business/session/SessionRelatedManager;


# instance fields
.field public final EVENT_SESSION_ID:Ljava/lang/String;

.field private final KEY_LAST_EVENT_TIME:Ljava/lang/String;

.field private final KEY_SESSION_ID:Ljava/lang/String;

.field private final KEY_START_TIME:Ljava/lang/String;

.field private SESSION_LAST_INTERVAL_TIME:J

.field private final SESSION_START_INTERVAL_TIME:J

.field private final SHARED_PREF_SESSION_CUTDATA:Ljava/lang/String;

.field private mLastEventTime:J

.field private mSessionID:Ljava/lang/String;

.field private mStartTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "sensorsdata.session.cutdata"

    .line 42
    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/session/SessionRelatedManager;->SHARED_PREF_SESSION_CUTDATA:Ljava/lang/String;

    const-string v0, "$event_session_id"

    .line 43
    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/session/SessionRelatedManager;->EVENT_SESSION_ID:Ljava/lang/String;

    const-string v0, "sessionID"

    .line 44
    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/session/SessionRelatedManager;->KEY_SESSION_ID:Ljava/lang/String;

    const-string v0, "startTime"

    .line 45
    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/session/SessionRelatedManager;->KEY_START_TIME:Ljava/lang/String;

    const-string v0, "lastEventTime"

    .line 46
    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/session/SessionRelatedManager;->KEY_LAST_EVENT_TIME:Ljava/lang/String;

    const-wide/32 v0, 0x493e0

    .line 47
    iput-wide v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/session/SessionRelatedManager;->SESSION_LAST_INTERVAL_TIME:J

    const-wide/32 v0, 0x2932e00

    .line 48
    iput-wide v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/session/SessionRelatedManager;->SESSION_START_INTERVAL_TIME:J

    .line 76
    :try_start_21
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getConfigOptions()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->getEventSessionTimeout()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/core/business/session/SessionRelatedManager;->setSessionLastIntervalTime(I)V

    .line 77
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getConfigOptions()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isEnableSession()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 78
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/core/business/session/SessionRelatedManager;->deleteSessionData()V

    goto :goto_42

    .line 80
    :cond_3a
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/core/business/session/SessionRelatedManager;->readSessionData()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_3d} :catch_3e

    goto :goto_42

    :catch_3e
    move-exception v0

    .line 83
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_42
    return-void
.end method

.method private declared-synchronized createSessionData(JZ)V
    .registers 6

    monitor-enter p0

    .line 136
    :try_start_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/session/SessionRelatedManager;->mSessionID:Ljava/lang/String;

    if-eqz p3, :cond_f

    .line 138
    iput-wide p1, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/session/SessionRelatedManager;->mStartTime:J

    .line 140
    :cond_f
    iget-wide v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/session/SessionRelatedManager;->mLastEventTime:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/session/SessionRelatedManager;->mLastEventTime:J

    .line 141
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    move-result-object p1

    const-string p2, "sensorsdata.session.cutdata"

    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/core/business/session/SessionRelatedManager;->getSessionDataPack()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->setString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_26

    .line 142
    monitor-exit p0

    return-void

    :catchall_26
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private deleteSessionData()V
    .registers 3

    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/session/SessionRelatedManager;->mSessionID:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 127
    iput-wide v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/session/SessionRelatedManager;->mStartTime:J

    .line 128
    iput-wide v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/session/SessionRelatedManager;->mLastEventTime:J

    .line 129
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    move-result-object v0

    const-string v1, "sensorsdata.session.cutdata"

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/sensorsdata/analytics/android/sdk/core/business/session/SessionRelatedManager;
    .registers 2

    .line 64
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/core/business/session/SessionRelatedManager;->mSessionRelatedManager:Lcom/sensorsdata/analytics/android/sdk/core/business/session/SessionRelatedManager;

    if-nez v0, :cond_17

    .line 65
    const-class v0, Lcom/sensorsdata/analytics/android/sdk/core/business/session/SessionRelatedManager;

    monitor-enter v0

    .line 66
    :try_start_7
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/core/business/session/SessionRelatedManager;->mSessionRelatedManager:Lcom/sensorsdata/analytics/android/sdk/core/business/session/SessionRelatedManager;

    if-nez v1, :cond_12

    .line 67
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/core/business/session/SessionRelatedManager;

    invoke-direct {v1}, Lcom/sensorsdata/analytics/android/sdk/core/business/session/SessionRelatedManager;-><init>()V

    sput-object v1, Lcom/sensorsdata/analytics/android/sdk/core/business/session/SessionRelatedManager;->mSessionRelatedManager:Lcom/sensorsdata/analytics/android/sdk/core/business/session/SessionRelatedManager;

    .line 69
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 71
    :cond_17
    :goto_17
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/core/business/session/SessionRelatedManager;->mSessionRelatedManager:Lcom/sensorsdata/analytics/android/sdk/core/business/session/SessionRelatedManager;

    return-object v0
.end method

.method private getSessionDataPack()Ljava/lang/String;
    .registers 5

    .line 194
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "sessionID"

    .line 196
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/session/SessionRelatedManager;->mSessionID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "startTime"

    .line 197
    iget-wide v2, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/session/SessionRelatedManager;->mStartTime:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "lastEventTime"

    .line 198
    iget-wide v2, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/session/SessionRelatedManager;->mLastEventTime:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 199
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_1e} :catch_1f

    return-object v0

    :catch_1f
    move-exception v0

    .line 201
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    const-string v0, ""

    return-object v0
.end method

.method private declared-synchronized handleSessionState(J)V
    .registers 8

    monitor-enter p0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_9

    .line 172
    monitor-exit p0

    return-void

    .line 173
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/session/SessionRelatedManager;->mSessionID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2b

    iget-wide v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/session/SessionRelatedManager;->mLastEventTime:J

    sub-long v0, p1, v0

    iget-wide v2, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/session/SessionRelatedManager;->SESSION_LAST_INTERVAL_TIME:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2b

    iget-wide v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/session/SessionRelatedManager;->mStartTime:J

    sub-long v0, p1, v0

    const-wide/32 v2, 0x2932e00

    cmp-long v4, v0, v2

    if-lez v4, :cond_27

    goto :goto_2b

    .line 178
    :cond_27
    invoke-direct {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/core/business/session/SessionRelatedManager;->updateSessionLastTime(J)V

    goto :goto_2f

    :cond_2b
    :goto_2b
    const/4 v0, 0x1

    .line 175
    invoke-direct {p0, p1, p2, v0}, Lcom/sensorsdata/analytics/android/sdk/core/business/session/SessionRelatedManager;->createSessionData(JZ)V
    :try_end_2f
    .catchall {:try_start_9 .. :try_end_2f} :catchall_31

    .line 180
    :goto_2f
    monitor-exit p0

    return-void

    :catchall_31
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private readSessionData()V
    .registers 7

    const-string v0, "lastEventTime"

    const-string v1, "startTime"

    const-string v2, "sessionID"

    .line 148
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    move-result-object v3

    const-string v4, "sensorsdata.session.cutdata"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 149
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_19

    return-void

    .line 151
    :cond_19
    :try_start_19
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 153
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/session/SessionRelatedManager;->mSessionID:Ljava/lang/String;

    .line 155
    :cond_2a
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 156
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/session/SessionRelatedManager;->mStartTime:J

    .line 158
    :cond_36
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 159
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/session/SessionRelatedManager;->mLastEventTime:J
    :try_end_42
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_42} :catch_43

    goto :goto_47

    :catch_43
    move-exception v0

    .line 162
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_47
    :goto_47
    return-void
.end method

.method private setSessionLastIntervalTime(I)V
    .registers 6

    if-lez p1, :cond_9

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    .line 212
    iput-wide v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/session/SessionRelatedManager;->SESSION_LAST_INTERVAL_TIME:J

    :cond_9
    return-void
.end method

.method private updateSessionLastTime(J)V
    .registers 4

    .line 118
    iput-wide p1, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/session/SessionRelatedManager;->mLastEventTime:J

    .line 119
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    move-result-object p1

    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/core/business/session/SessionRelatedManager;->getSessionDataPack()Ljava/lang/String;

    move-result-object p2

    const-string v0, "sensorsdata.session.cutdata"

    invoke-virtual {p1, v0, p2}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getSessionID()Ljava/lang/String;
    .registers 2

    .line 207
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/session/SessionRelatedManager;->mSessionID:Ljava/lang/String;

    return-object v0
.end method

.method public handleEventOfSession(Ljava/lang/String;Lorg/json/JSONObject;J)V
    .registers 6

    .line 99
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getConfigOptions()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isEnableSession()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    :try_start_b
    const-string v0, "$AppEnd"

    .line 101
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 102
    iget-wide p1, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/session/SessionRelatedManager;->mLastEventTime:J

    cmp-long v0, p3, p1

    if-lez v0, :cond_1b

    .line 103
    iput-wide p3, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/session/SessionRelatedManager;->mLastEventTime:J

    :cond_1b
    return-void

    .line 107
    :cond_1c
    invoke-direct {p0, p3, p4}, Lcom/sensorsdata/analytics/android/sdk/core/business/session/SessionRelatedManager;->handleSessionState(J)V

    const-string p1, "$event_session_id"

    .line 108
    iget-object p3, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/session/SessionRelatedManager;->mSessionID:Ljava/lang/String;

    invoke-virtual {p2, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_26
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_26} :catch_27

    goto :goto_2b

    :catch_27
    move-exception p1

    .line 110
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_2b
    return-void
.end method

.method public refreshSessionByTimer(J)V
    .registers 8

    .line 188
    iget-wide v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/session/SessionRelatedManager;->mLastEventTime:J

    sub-long v0, p1, v0

    iget-wide v2, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/session/SessionRelatedManager;->SESSION_LAST_INTERVAL_TIME:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_13

    .line 189
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/session/SessionRelatedManager;->mSessionID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/sensorsdata/analytics/android/sdk/core/business/session/SessionRelatedManager;->createSessionData(JZ)V

    :cond_13
    return-void
.end method
