.class public Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;
.super Ljava/lang/Object;
.source "VisualDebugHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper$TrackEventAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.VP.VisualDebugHelper"


# instance fields
.field private mEventListener:Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper$TrackEventAdapter;

.field private mJsonArray:Lorg/json/JSONArray;

.field private final object:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;->mEventListener:Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper$TrackEventAdapter;

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;->object:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$100(Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;Lorg/json/JSONObject;)V
    .registers 2

    .line 37
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;->handlerEvent(Lorg/json/JSONObject;)V

    return-void
.end method

.method private declared-synchronized handlerEvent(Lorg/json/JSONObject;)V
    .registers 12

    monitor-enter p0

    if-nez p1, :cond_5

    .line 79
    monitor-exit p0

    return-void

    .line 82
    :cond_5
    :try_start_5
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->isServiceRunning()Z

    move-result v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_d} :catch_16d
    .catchall {:try_start_5 .. :try_end_d} :catchall_16b

    if-nez v0, :cond_11

    .line 83
    monitor-exit p0

    return-void

    :cond_11
    :try_start_11
    const-string v0, "event"

    .line 86
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "$AppClick"

    .line 87
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_44

    const-string v1, "$WebClick"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_44

    const-string p1, "SA.VP.VisualDebugHelper"

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eventName is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " filter"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_42} :catch_16d
    .catchall {:try_start_11 .. :try_end_42} :catchall_16b

    .line 89
    monitor-exit p0

    return-void

    :cond_44
    :try_start_44
    const-string v1, "properties"

    .line 92
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4a} :catch_16d
    .catchall {:try_start_44 .. :try_end_4a} :catchall_16b

    if-nez v1, :cond_4e

    .line 94
    monitor-exit p0

    return-void

    .line 97
    :cond_4e
    :try_start_4e
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->checkAppIdAndProject()Z

    move-result v2
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_56} :catch_16d
    .catchall {:try_start_4e .. :try_end_56} :catchall_16b

    if-nez v2, :cond_5a

    .line 98
    monitor-exit p0

    return-void

    .line 101
    :cond_5a
    :try_start_5a
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->getVisualConfig()Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig;

    move-result-object v2
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_62} :catch_16d
    .catchall {:try_start_5a .. :try_end_62} :catchall_16b

    if-nez v2, :cond_66

    .line 103
    monitor-exit p0

    return-void

    .line 106
    :cond_66
    :try_start_66
    iget-object v4, v2, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig;->events:Ljava/util/List;

    if-eqz v4, :cond_162

    .line 107
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_72

    goto/16 :goto_162

    :cond_72
    const-string v2, "$AppClick"

    .line 112
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f1

    const-string v2, "$screen_name"

    .line 113
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 114
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8f

    const-string p1, "SA.VP.VisualDebugHelper"

    const-string v0, "screenName is empty "

    .line 115
    invoke-static {p1, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_8d} :catch_16d
    .catchall {:try_start_66 .. :try_end_8d} :catchall_16b

    .line 116
    monitor-exit p0

    return-void

    .line 118
    :cond_8f
    :try_start_8f
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;

    move-result-object v3

    .line 120
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$VisualEventType;->getVisualEventType(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$VisualEventType;

    move-result-object v5

    const-string v0, "$element_path"

    .line 121
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "$element_position"

    .line 122
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "$element_content"

    .line 123
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 118
    invoke-virtual/range {v3 .. v9}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->getMatchEventConfigList(Ljava/util/List;Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager$VisualEventType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 124
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_171

    .line 125
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;->object:Ljava/lang/Object;

    monitor-enter v1
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_b6} :catch_16d
    .catchall {:try_start_8f .. :try_end_b6} :catchall_16b

    .line 126
    :try_start_b6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_ba
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_eb

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;
    :try_end_c6
    .catchall {:try_start_b6 .. :try_end_c6} :catchall_ee

    .line 128
    :try_start_c6
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 129
    invoke-static {p1, v3}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    const-string v4, "event_name"

    .line 130
    iget-object v2, v2, Lcom/sensorsdata/analytics/android/sdk/visual/model/VisualConfig$VisualPropertiesConfig;->eventName:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;->mJsonArray:Lorg/json/JSONArray;

    if-nez v2, :cond_e0

    .line 132
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iput-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;->mJsonArray:Lorg/json/JSONArray;

    .line 134
    :cond_e0
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;->mJsonArray:Lorg/json/JSONArray;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_e5} :catch_e6
    .catchall {:try_start_c6 .. :try_end_e5} :catchall_ee

    goto :goto_ba

    :catch_e6
    move-exception v2

    .line 136
    :try_start_e7
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_ba

    .line 139
    :cond_eb
    monitor-exit v1

    goto/16 :goto_171

    :catchall_ee
    move-exception p1

    monitor-exit v1
    :try_end_f0
    .catchall {:try_start_e7 .. :try_end_f0} :catchall_ee

    :try_start_f0
    throw p1

    :cond_f1
    const-string v2, "$WebClick"

    .line 141
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_f7
    .catch Ljava/lang/Exception; {:try_start_f0 .. :try_end_f7} :catch_16d
    .catchall {:try_start_f0 .. :try_end_f7} :catchall_16b

    if-eqz v0, :cond_171

    :try_start_f9
    const-string v0, "sensorsdata_web_visual_eventName"

    .line 143
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_11d

    .line 145
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 146
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->getVisualPropertiesH5Helper()Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper;->getEventName(I)Lorg/json/JSONArray;

    move-result-object v1

    .line 147
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesManager;->getVisualPropertiesH5Helper()Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sensorsdata/analytics/android/sdk/visual/property/VisualPropertiesH5Helper;->clearCache(I)V

    move-object v0, v1

    :cond_11d
    if-eqz v0, :cond_171

    .line 149
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_171

    .line 150
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;->object:Ljava/lang/Object;

    monitor-enter v1
    :try_end_128
    .catch Ljava/lang/Exception; {:try_start_f9 .. :try_end_128} :catch_15d
    .catchall {:try_start_f9 .. :try_end_128} :catchall_16b

    const/4 v2, 0x0

    .line 151
    :goto_129
    :try_start_129
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3
    :try_end_12d
    .catchall {:try_start_129 .. :try_end_12d} :catchall_15a

    if-ge v2, v3, :cond_158

    .line 153
    :try_start_12f
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 154
    invoke-static {p1, v3}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    const-string v4, "event_name"

    .line 155
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;->mJsonArray:Lorg/json/JSONArray;

    if-nez v4, :cond_14b

    .line 157
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    iput-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;->mJsonArray:Lorg/json/JSONArray;

    .line 159
    :cond_14b
    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;->mJsonArray:Lorg/json/JSONArray;

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_150
    .catch Ljava/lang/Exception; {:try_start_12f .. :try_end_150} :catch_151
    .catchall {:try_start_12f .. :try_end_150} :catchall_15a

    goto :goto_155

    :catch_151
    move-exception v3

    .line 161
    :try_start_152
    invoke-static {v3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_155
    add-int/lit8 v2, v2, 0x1

    goto :goto_129

    .line 164
    :cond_158
    monitor-exit v1

    goto :goto_171

    :catchall_15a
    move-exception p1

    monitor-exit v1
    :try_end_15c
    .catchall {:try_start_152 .. :try_end_15c} :catchall_15a

    :try_start_15c
    throw p1
    :try_end_15d
    .catch Ljava/lang/Exception; {:try_start_15c .. :try_end_15d} :catch_15d
    .catchall {:try_start_15c .. :try_end_15d} :catchall_16b

    :catch_15d
    move-exception p1

    .line 167
    :try_start_15e
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_171

    :cond_162
    :goto_162
    const-string p1, "SA.VP.VisualDebugHelper"

    const-string v0, "propertiesConfigs is empty "

    .line 108
    invoke-static {p1, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_169
    .catch Ljava/lang/Exception; {:try_start_15e .. :try_end_169} :catch_16d
    .catchall {:try_start_15e .. :try_end_169} :catchall_16b

    .line 109
    monitor-exit p0

    return-void

    :catchall_16b
    move-exception p1

    goto :goto_173

    :catch_16d
    move-exception p1

    .line 171
    :try_start_16e
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_171
    .catchall {:try_start_16e .. :try_end_171} :catchall_16b

    .line 173
    :cond_171
    :goto_171
    monitor-exit p0

    return-void

    :goto_173
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method getDebugInfo()Ljava/lang/String;
    .registers 4

    .line 176
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;->object:Ljava/lang/Object;

    monitor-enter v0

    .line 177
    :try_start_3
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;->mJsonArray:Lorg/json/JSONArray;

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    .line 178
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    .line 179
    iput-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;->mJsonArray:Lorg/json/JSONArray;

    .line 180
    monitor-exit v0

    return-object v1

    .line 182
    :cond_10
    monitor-exit v0

    return-object v2

    :catchall_12
    move-exception v1

    .line 183
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method startMonitor()V
    .registers 3

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;->mEventListener:Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper$TrackEventAdapter;

    if-nez v0, :cond_f

    .line 47
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils;->getSinglePool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 48
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper$1;

    invoke-direct {v1, p0, v0}, Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper$1;-><init>(Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;Ljava/util/concurrent/ExecutorService;)V

    iput-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;->mEventListener:Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper$TrackEventAdapter;

    .line 60
    :cond_f
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;->mEventListener:Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper$TrackEventAdapter;

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->addEventListener(Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    goto :goto_1d

    :catch_19
    move-exception v0

    .line 62
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_1d
    return-void
.end method

.method stopMonitor()V
    .registers 3

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;->mEventListener:Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper$TrackEventAdapter;

    if-eqz v0, :cond_12

    .line 69
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper;->mEventListener:Lcom/sensorsdata/analytics/android/sdk/visual/VisualDebugHelper$TrackEventAdapter;

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->removeEventListener(Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_12

    :catch_e
    move-exception v0

    .line 72
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_12
    :goto_12
    return-void
.end method
