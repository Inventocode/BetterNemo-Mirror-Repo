.class public abstract Lcom/sensorsdata/analytics/android/sdk/core/event/imp/BaseEventAssemble;
.super Ljava/lang/Object;
.source "BaseEventAssemble.java"

# interfaces
.implements Lcom/sensorsdata/analytics/android/sdk/core/event/EventProcessor$IAssembleData;


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.BaseEventAssemble"


# instance fields
.field protected mInternalConfigs:Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;


# direct methods
.method public constructor <init>(Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;)V
    .registers 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getInternalConfigs()Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    move-result-object p1

    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/core/event/imp/BaseEventAssemble;->mInternalConfigs:Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    return-void
.end method

.method private isEnterDb(Ljava/lang/String;Lorg/json/JSONObject;)Z
    .registers 7

    .line 168
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/event/imp/BaseEventAssemble;->mInternalConfigs:Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    iget-object v0, v0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;->sensorsDataTrackEventCallBack:Lcom/sensorsdata/analytics/android/sdk/SensorsDataTrackEventCallBack;

    const/4 v1, 0x1

    if-eqz v0, :cond_49

    const-string v0, "SA.BaseEventAssemble"

    const-string v2, "SDK have set trackEvent callBack"

    .line 169
    invoke-static {v0, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :try_start_e
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/event/imp/BaseEventAssemble;->mInternalConfigs:Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    iget-object v0, v0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;->sensorsDataTrackEventCallBack:Lcom/sensorsdata/analytics/android/sdk/SensorsDataTrackEventCallBack;

    invoke-interface {v0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataTrackEventCallBack;->onTrackEvent(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v1
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_16} :catch_17

    goto :goto_1b

    :catch_17
    move-exception p1

    .line 173
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_1b
    if-eqz v1, :cond_49

    .line 177
    :try_start_1d
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    .line 178
    :goto_21
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 179
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 180
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 181
    instance-of v3, v2, Ljava/util/Date;

    if-eqz v3, :cond_41

    .line 182
    check-cast v2, Ljava/util/Date;

    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/util/TimeUtils;->SDK_LOCALE:Ljava/util/Locale;

    invoke-static {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/util/TimeUtils;->formatDate(Ljava/util/Date;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_21

    .line 184
    :cond_41
    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_44} :catch_45

    goto :goto_21

    :catch_45
    move-exception p1

    .line 188
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_49
    return v1
.end method


# virtual methods
.method protected appendPluginVersion(Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;)V
    .registers 3

    .line 76
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->isTrack()Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    .line 79
    :cond_7
    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/core/event/Event;->getProperties()Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/core/business/SAPluginVersion;->appendPluginVersion(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected appendSessionId(Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;)V
    .registers 7

    .line 50
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->isTrack()Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 52
    :try_start_6
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/core/business/session/SessionRelatedManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/core/business/session/SessionRelatedManager;

    move-result-object p1

    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;->getEventName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/core/event/Event;->getProperties()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/core/event/Event;->getTime()J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/sensorsdata/analytics/android/sdk/core/business/session/SessionRelatedManager;->handleEventOfSession(Ljava/lang/String;Lorg/json/JSONObject;J)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_19} :catch_1a

    goto :goto_1e

    :catch_1a
    move-exception p1

    .line 54
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_1e
    :goto_1e
    return-void
.end method

.method protected handleEventCallback(Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;)Z
    .registers 5

    .line 65
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->isTrack()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_8

    return v0

    .line 68
    :cond_8
    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;->getEventName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/core/event/Event;->getProperties()Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/sensorsdata/analytics/android/sdk/core/event/imp/BaseEventAssemble;->isEnterDb(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result p1

    if-nez p1, :cond_32

    .line 69
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;->getEventName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " event can not enter database"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SA.BaseEventAssemble"

    invoke-static {p2, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_32
    return v0
.end method

.method protected handleEventListener(Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;)V
    .registers 6

    .line 84
    :try_start_0
    invoke-virtual {p3}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getEventListenerList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->isTrack()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 85
    invoke-virtual {p3}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getEventListenerList()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_14
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;

    .line 86
    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/listener/SAEventListener;->trackEvent(Lorg/json/JSONObject;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_28

    goto :goto_14

    :catch_28
    move-exception p3

    .line 90
    invoke-static {p3}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 94
    :cond_2c
    :try_start_2c
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->isTrack()Z

    move-result p1

    if-eqz p1, :cond_42

    .line 95
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor;->getInstance()Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor;

    move-result-object p1

    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;->toJSONObject()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sensorsdata/analytics/android/sdk/monitor/TrackMonitor;->callTrack(Lorg/json/JSONObject;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_3d} :catch_3e

    goto :goto_42

    :catch_3e
    move-exception p1

    .line 98
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_42
    :goto_42
    return-void
.end method

.method protected handlePropertyProtocols(Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 103
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/event/Event;->getProperties()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "$project"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 104
    instance-of v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/event/imp/H5TrackAssemble;

    if-eqz v0, :cond_22

    .line 105
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/event/Event;->getExtras()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/event/Event;->getProperties()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "project"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2d

    .line 107
    :cond_22
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/event/Event;->getProperties()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sensorsdata/analytics/android/sdk/core/event/Event;->setProject(Ljava/lang/String;)V

    .line 109
    :goto_2d
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/event/Event;->getProperties()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 112
    :cond_34
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/event/Event;->getProperties()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "$token"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 113
    instance-of v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/event/imp/H5TrackAssemble;

    if-eqz v0, :cond_56

    .line 114
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/event/Event;->getExtras()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/event/Event;->getProperties()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "token"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_61

    .line 116
    :cond_56
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/event/Event;->getProperties()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sensorsdata/analytics/android/sdk/core/event/Event;->setToken(Ljava/lang/String;)V

    .line 118
    :goto_61
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/event/Event;->getProperties()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 121
    :cond_68
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/event/Event;->getProperties()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "$time"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 123
    :try_start_74
    instance-of v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/event/imp/H5TrackAssemble;

    if-eqz v0, :cond_90

    .line 124
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/event/Event;->getProperties()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 125
    invoke-static {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/util/TimeUtils;->isDateValid(J)Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 126
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/event/Event;->getExtras()Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "time"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_b3

    .line 129
    :cond_90
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/event/Event;->getProperties()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 130
    instance-of v2, v0, Ljava/util/Date;

    if-eqz v2, :cond_b3

    move-object v2, v0

    check-cast v2, Ljava/util/Date;

    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/util/TimeUtils;->isDateValid(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_b3

    .line 131
    check-cast v0, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/sensorsdata/analytics/android/sdk/core/event/Event;->setTime(J)V
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_ae} :catch_af

    goto :goto_b3

    :catch_af
    move-exception v0

    .line 135
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 137
    :cond_b3
    :goto_b3
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/event/Event;->getProperties()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_ba
    return-void
.end method

.method protected overrideDeviceId(Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;)V
    .registers 6

    const-string v0, "$anonymization_id"

    const-string v1, "$device_id"

    .line 143
    :try_start_4
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->isTrack()Z

    move-result p1

    if-eqz p1, :cond_64

    if-eqz p2, :cond_64

    .line 144
    invoke-virtual {p3}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getPluginManager()Lcom/sensorsdata/analytics/android/sdk/plugin/property/PropertyPluginManager;

    move-result-object p1

    const-class p3, Lcom/sensorsdata/analytics/android/sdk/plugin/property/impl/SAPresetPropertyPlugin;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/PropertyPluginManager;->getPropertyPlugin(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;

    move-result-object p1

    .line 145
    instance-of p3, p1, Lcom/sensorsdata/analytics/android/sdk/plugin/property/impl/SAPresetPropertyPlugin;

    if-eqz p3, :cond_64

    .line 146
    check-cast p1, Lcom/sensorsdata/analytics/android/sdk/plugin/property/impl/SAPresetPropertyPlugin;

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/impl/SAPresetPropertyPlugin;->getPresetProperties()Lorg/json/JSONObject;

    move-result-object p1

    .line 148
    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/core/event/Event;->getProperties()Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 149
    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/core/event/Event;->getProperties()Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 150
    iget-object p3, p0, Lcom/sensorsdata/analytics/android/sdk/core/event/imp/BaseEventAssemble;->mInternalConfigs:Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    iget-object p3, p3, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;->saConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-virtual {p3}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isDisableDeviceId()Z

    move-result p3

    if-eqz p3, :cond_4e

    .line 151
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_64

    .line 152
    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/core/event/Event;->getProperties()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_64

    .line 155
    :cond_4e
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_64

    .line 156
    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/core/event/Event;->getProperties()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_5f} :catch_60

    goto :goto_64

    :catch_60
    move-exception p1

    .line 162
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_64
    :goto_64
    return-void
.end method
