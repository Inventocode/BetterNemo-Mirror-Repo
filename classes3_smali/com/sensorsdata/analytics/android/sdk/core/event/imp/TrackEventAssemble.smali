.class Lcom/sensorsdata/analytics/android/sdk/core/event/imp/TrackEventAssemble;
.super Lcom/sensorsdata/analytics/android/sdk/core/event/imp/BaseEventAssemble;
.source "TrackEventAssemble.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.TrackEventAssemble"


# instance fields
.field private final mContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;


# direct methods
.method public constructor <init>(Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;)V
    .registers 2

    .line 52
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/core/event/imp/BaseEventAssemble;-><init>(Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;)V

    .line 53
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/core/event/imp/TrackEventAssemble;->mContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    return-void
.end method

.method private appendDefaultProperty(Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;)V
    .registers 5

    .line 106
    :try_start_0
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;->getTime()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/core/event/Event;->setTime(J)V

    .line 107
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;->getEventName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;->setEventName(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;->getEventType()Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->getEventType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/sensorsdata/analytics/android/sdk/core/event/Event;->setType(Ljava/lang/String;)V

    .line 109
    new-instance p1, Ljava/security/SecureRandom;

    invoke-direct {p1}, Ljava/security/SecureRandom;-><init>()V

    .line 110
    invoke-virtual {p1}, Ljava/security/SecureRandom;->nextInt()I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/core/event/Event;->setTrackId(J)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_27

    goto :goto_2b

    :catch_27
    move-exception p1

    .line 112
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_2b
    return-void
.end method

.method private appendEventDuration(Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;)V
    .registers 6

    .line 118
    :try_start_0
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;->getEventName()Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_62

    .line 120
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/core/business/timer/EventTimerManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/core/business/timer/EventTimerManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sensorsdata/analytics/android/sdk/core/business/timer/EventTimerManager;->getEventTimer(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/core/business/timer/EventTimer;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 122
    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/core/business/timer/EventTimer;->duration()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_2a

    .line 124
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/event/Event;->getProperties()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "event_duration"

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2a
    const-string v1, "_SATimer"

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x2d

    if-le v1, v2, :cond_62

    const/4 v1, 0x0

    .line 128
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-virtual {p1, v0}, Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;->setEventName(Ljava/lang/String;)V

    const-string p1, "SA.TrackEventAssemble"

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trigger event name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5d} :catch_5e

    goto :goto_62

    :catch_5e
    move-exception p1

    .line 134
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_62
    :goto_62
    return-void
.end method

.method private appendLibProperty(Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 139
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 140
    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/core/event/Event;->getProperties()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "$lib_detail"

    const-string v3, "code"

    const-string v4, "$lib_method"

    const/4 v5, 0x0

    if-eqz v1, :cond_38

    .line 143
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->isTrack()Z

    move-result p1

    if-eqz p1, :cond_27

    .line 144
    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/core/event/Event;->getProperties()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 145
    invoke-virtual {v0, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    invoke-virtual {v1, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2a

    .line 148
    :cond_27
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    :goto_2a
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_49

    .line 152
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 153
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_49

    .line 156
    :cond_38
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->isTrack()Z

    move-result p1

    if-eqz p1, :cond_49

    .line 158
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 159
    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_49
    :goto_49
    const-string p1, "$lib"

    const-string v3, "Android"

    .line 162
    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/core/event/imp/TrackEventAssemble;->mContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getSensorsDataAPI()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getSDKVersion()Ljava/lang/String;

    move-result-object p1

    const-string v3, "$lib_version"

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 164
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/core/event/imp/TrackEventAssemble;->mContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/AppInfoUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "$app_version"

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->getSuperPropertiesPst()Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentSuperProperties;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    if-eqz p1, :cond_8b

    .line 168
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8b

    .line 169
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    :cond_8b
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/core/event/imp/TrackEventAssemble;->mContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getSensorsDataAPI()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isAutoTrackEnabled()Z

    move-result p1

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v6, 0x4

    const-string v7, "%s##%s##%s##%s"

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz p1, :cond_f1

    if-eqz v1, :cond_f1

    .line 174
    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;->getEventName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/core/event/imp/TrackEventAssemble;->isAutoTrackType(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f1

    .line 175
    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;->getEventName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/core/event/imp/TrackEventAssemble;->autoTrackEventTypeFromEventName(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;

    move-result-object p1

    if-eqz p1, :cond_f1

    .line 176
    iget-object v10, p0, Lcom/sensorsdata/analytics/android/sdk/core/event/imp/TrackEventAssemble;->mContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    invoke-virtual {v10}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getSensorsDataAPI()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v10

    invoke-virtual {v10, p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isAutoTrackEventTypeIgnored(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;)Z

    move-result p1

    if-nez p1, :cond_f1

    .line 177
    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/core/event/Event;->getProperties()Lorg/json/JSONObject;

    move-result-object p1

    const-string v10, "$screen_name"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f1

    .line 178
    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 179
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_f1

    const-string v10, "\\|"

    .line 180
    invoke-virtual {p1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 181
    array-length v10, p1

    if-lez v10, :cond_f1

    new-array v5, v6, [Ljava/lang/Object;

    .line 182
    aget-object p1, p1, v9

    aput-object p1, v5, v9

    const-string p1, ""

    aput-object p1, v5, v8

    aput-object p1, v5, v4

    aput-object p1, v5, v3

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 188
    :cond_f1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_127

    .line 189
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    .line 190
    array-length v10, p1

    if-le v10, v8, :cond_127

    .line 191
    aget-object p1, p1, v9

    new-array v5, v6, [Ljava/lang/Object;

    .line 193
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    .line 194
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v3

    .line 192
    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 198
    :cond_127
    invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    invoke-virtual {p2, v0}, Lcom/sensorsdata/analytics/android/sdk/core/event/Event;->setLib(Lorg/json/JSONObject;)V

    .line 200
    invoke-virtual {p2, v1}, Lcom/sensorsdata/analytics/android/sdk/core/event/Event;->setProperties(Lorg/json/JSONObject;)V

    return-void
.end method

.method private appendPluginProperties(Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;Lorg/json/JSONObject;Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 204
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/plugin/property/beans/SAPropertyFilter;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/beans/SAPropertyFilter;-><init>()V

    .line 205
    invoke-virtual {p3}, Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/beans/SAPropertyFilter;->setEvent(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p3}, Lcom/sensorsdata/analytics/android/sdk/core/event/Event;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/beans/SAPropertyFilter;->setTime(J)V

    .line 207
    invoke-virtual {p3}, Lcom/sensorsdata/analytics/android/sdk/core/event/Event;->getLib()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "lib"

    invoke-virtual {v0, v2, v1}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/beans/SAPropertyFilter;->setEventJson(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 208
    invoke-virtual {p3}, Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;->getIdentities()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_34

    .line 209
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p3}, Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;->getIdentities()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "identities"

    invoke-virtual {v0, v3, v1}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/beans/SAPropertyFilter;->setEventJson(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 211
    :cond_34
    invoke-virtual {p3}, Lcom/sensorsdata/analytics/android/sdk/core/event/Event;->getProperties()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/beans/SAPropertyFilter;->setProperties(Lorg/json/JSONObject;)V

    .line 212
    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/beans/SAPropertyFilter;->setType(Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;)V

    .line 214
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/core/event/imp/TrackEventAssemble;->mContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getPluginManager()Lcom/sensorsdata/analytics/android/sdk/plugin/property/PropertyPluginManager;

    move-result-object p1

    const-class v1, Lcom/sensorsdata/analytics/android/sdk/plugin/property/impl/InternalCustomPropertyPlugin;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/PropertyPluginManager;->getPropertyPlugin(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;

    move-result-object p1

    .line 215
    instance-of v1, p1, Lcom/sensorsdata/analytics/android/sdk/plugin/property/impl/InternalCustomPropertyPlugin;

    if-eqz v1, :cond_57

    .line 216
    check-cast p1, Lcom/sensorsdata/analytics/android/sdk/plugin/property/impl/InternalCustomPropertyPlugin;

    invoke-virtual {p1, p2}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/impl/InternalCustomPropertyPlugin;->saveCustom(Lorg/json/JSONObject;)V

    .line 219
    :cond_57
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/core/event/imp/TrackEventAssemble;->mContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getPluginManager()Lcom/sensorsdata/analytics/android/sdk/plugin/property/PropertyPluginManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/PropertyPluginManager;->propertiesHandler(Lcom/sensorsdata/analytics/android/sdk/plugin/property/beans/SAPropertyFilter;)Lcom/sensorsdata/analytics/android/sdk/plugin/property/beans/SAPropertiesFetcher;

    move-result-object p1

    if-eqz p1, :cond_71

    .line 221
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/beans/SAPropertiesFetcher;->getProperties()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/sensorsdata/analytics/android/sdk/core/event/Event;->setProperties(Lorg/json/JSONObject;)V

    .line 222
    invoke-virtual {p1, v2}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/beans/SAPropertiesFetcher;->getEventJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/sensorsdata/analytics/android/sdk/core/event/Event;->setLib(Lorg/json/JSONObject;)V

    :cond_71
    return-void
.end method

.method private appendUserIDs(Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "$sf_internal_login_id"

    const-string v1, "$sf_internal_anonymous_id"

    .line 227
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/core/event/imp/TrackEventAssemble;->mContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getUserIdentityAPI()Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->getDistinctId()Ljava/lang/String;

    move-result-object v2

    .line 228
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/core/event/imp/TrackEventAssemble;->mContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    invoke-virtual {v3}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getUserIdentityAPI()Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->getLoginId()Ljava/lang/String;

    move-result-object v3

    .line 229
    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/core/event/imp/TrackEventAssemble;->mContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    invoke-virtual {v4}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getUserIdentityAPI()Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->getAnonymousId()Ljava/lang/String;

    move-result-object v4

    :try_start_22
    const-string v5, "$PlanPopupDisplay"

    .line 232
    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;->getEventName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7c

    .line 233
    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/core/event/Event;->getProperties()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 234
    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/core/event/Event;->getProperties()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 235
    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/core/event/Event;->getProperties()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 236
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;->getProperties()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 239
    :cond_4e
    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/core/event/Event;->getProperties()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 240
    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/core/event/Event;->getProperties()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 241
    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/core/event/Event;->getProperties()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 242
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;->getProperties()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 244
    :cond_6e
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_72} :catch_78

    if-nez v0, :cond_76

    move-object v2, v3

    goto :goto_7c

    :cond_76
    move-object v2, v4

    goto :goto_7c

    :catch_78
    move-exception v0

    .line 251
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 254
    :cond_7c
    :goto_7c
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;->getEventType()Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    move-result-object p1

    .line 255
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/event/imp/TrackEventAssemble;->mContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getUserIdentityAPI()Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->getIdentities(Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;)Lorg/json/JSONObject;

    move-result-object v0

    .line 256
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->TRACK_ID_UNBIND:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->getEventType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/core/event/Event;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ea

    if-eqz v0, :cond_de

    .line 258
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "$identity_anonymous_id"

    if-nez v5, :cond_a8

    .line 259
    invoke-virtual {v0, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_ac

    .line 261
    :cond_a8
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 264
    :goto_ac
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_cc

    .line 265
    iget-object v5, p0, Lcom/sensorsdata/analytics/android/sdk/core/event/imp/TrackEventAssemble;->mContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    invoke-virtual {v5}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getUserIdentityAPI()Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->getIdentitiesInstance()Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->getLoginIDKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "$identity_login_id"

    .line 266
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_de

    .line 267
    invoke-virtual {v0, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_de

    .line 270
    :cond_cc
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/core/event/imp/TrackEventAssemble;->mContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    invoke-virtual {v3}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getUserIdentityAPI()Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sensorsdata/analytics/android/sdk/useridentity/UserIdentityAPI;->getIdentitiesInstance()Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sensorsdata/analytics/android/sdk/useridentity/Identities;->getLoginIDKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 274
    :cond_de
    :goto_de
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e7

    .line 275
    invoke-virtual {p2, v3}, Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;->setLoginId(Ljava/lang/String;)V

    .line 277
    :cond_e7
    invoke-virtual {p2, v4}, Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;->setAnonymousId(Ljava/lang/String;)V

    .line 280
    :cond_ea
    invoke-virtual {p2, v2}, Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;->setDistinctId(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p2, v0}, Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;->setIdentities(Lorg/json/JSONObject;)V

    .line 282
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->TRACK:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    if-eq p1, v0, :cond_107

    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->TRACK_ID_BIND:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    if-eq p1, v0, :cond_107

    if-ne p1, v1, :cond_fb

    goto :goto_107

    .line 285
    :cond_fb
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->TRACK_SIGNUP:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    if-ne p1, v0, :cond_11a

    .line 286
    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;->getAnonymousId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;->setOriginalId(Ljava/lang/String;)V

    goto :goto_11a

    .line 284
    :cond_107
    :goto_107
    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/core/event/Event;->getProperties()Lorg/json/JSONObject;

    move-result-object p1

    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/event/imp/TrackEventAssemble;->mContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/core/event/Event;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->isFirstDay(J)Z

    move-result p2

    const-string v0, "$is_first_day"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_11a
    :goto_11a
    return-void
.end method

.method static autoTrackEventTypeFromEventName(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;
    .registers 4

    .line 306
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 310
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_50

    goto :goto_3f

    :sswitch_14
    const-string v2, "$AppStart"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d

    goto :goto_3f

    :cond_1d
    const/4 v0, 0x3

    goto :goto_3f

    :sswitch_1f
    const-string v2, "$AppClick"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_28

    goto :goto_3f

    :cond_28
    const/4 v0, 0x2

    goto :goto_3f

    :sswitch_2a
    const-string v2, "$AppEnd"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_33

    goto :goto_3f

    :cond_33
    const/4 v0, 0x1

    goto :goto_3f

    :sswitch_35
    const-string v2, "$AppViewScreen"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3e

    goto :goto_3f

    :cond_3e
    const/4 v0, 0x0

    :goto_3f
    packed-switch v0, :pswitch_data_62

    return-object v1

    .line 312
    :pswitch_43  #0x3
    sget-object p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;->APP_START:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;

    return-object p0

    .line 316
    :pswitch_46  #0x2
    sget-object p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;->APP_CLICK:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;

    return-object p0

    .line 314
    :pswitch_49  #0x1
    sget-object p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;->APP_END:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;

    return-object p0

    .line 318
    :pswitch_4c  #0x0
    sget-object p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;->APP_VIEW_SCREEN:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$AutoTrackEventType;

    return-object p0

    nop

    :sswitch_data_50
    .sparse-switch
        -0x24dffd52 -> :sswitch_35
        -0x1a5667c2 -> :sswitch_2a
        0x2187882b -> :sswitch_1f
        0x226c8705 -> :sswitch_14
    .end sparse-switch

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_4c  #00000000
        :pswitch_49  #00000001
        :pswitch_46  #00000002
        :pswitch_43  #00000003
    .end packed-switch
.end method

.method static isAutoTrackType(Ljava/lang/String;)Z
    .registers 5

    .line 291
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_44

    .line 292
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_46

    goto :goto_3f

    :sswitch_14
    const-string v2, "$AppStart"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d

    goto :goto_3f

    :cond_1d
    const/4 v0, 0x3

    goto :goto_3f

    :sswitch_1f
    const-string v2, "$AppClick"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_28

    goto :goto_3f

    :cond_28
    const/4 v0, 0x2

    goto :goto_3f

    :sswitch_2a
    const-string v2, "$AppEnd"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_33

    goto :goto_3f

    :cond_33
    const/4 v0, 0x1

    goto :goto_3f

    :sswitch_35
    const-string v2, "$AppViewScreen"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3e

    goto :goto_3f

    :cond_3e
    const/4 v0, 0x0

    :goto_3f
    packed-switch v0, :pswitch_data_58

    goto :goto_44

    :pswitch_43  #0x0, 0x1, 0x2, 0x3
    return v3

    :cond_44
    :goto_44
    return v1

    nop

    :sswitch_data_46
    .sparse-switch
        -0x24dffd52 -> :sswitch_35
        -0x1a5667c2 -> :sswitch_2a
        0x2187882b -> :sswitch_1f
        0x226c8705 -> :sswitch_14
    .end sparse-switch

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_43  #00000000
        :pswitch_43  #00000001
        :pswitch_43  #00000002
        :pswitch_43  #00000003
    .end packed-switch
.end method

.method private isEventIgnore(Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;)Z
    .registers 5

    .line 95
    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->isTrack()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_21

    .line 96
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/SADataHelper;->assertEventName(Ljava/lang/String;)V

    .line 98
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_21

    invoke-virtual {p3}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getRemoteManager()Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;

    move-result-object p2

    if-eqz p2, :cond_21

    .line 99
    invoke-virtual {p3}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getRemoteManager()Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/sensorsdata/analytics/android/sdk/remote/BaseSensorsDataSDKRemoteManager;->ignoreEvent(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_21

    const/4 v0, 0x1

    :cond_21
    return v0
.end method


# virtual methods
.method public assembleData(Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;)Lcom/sensorsdata/analytics/android/sdk/core/event/Event;
    .registers 7

    const/4 v0, 0x0

    .line 59
    :try_start_1
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;->getEventType()Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    move-result-object v1

    .line 60
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;->getProperties()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->cloneJsonObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_14

    .line 62
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 65
    :cond_14
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;->getEventName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/core/event/imp/TrackEventAssemble;->mContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    invoke-direct {p0, v3, v1, v4}, Lcom/sensorsdata/analytics/android/sdk/core/event/imp/TrackEventAssemble;->isEventIgnore(Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;)Z

    move-result v3

    if-eqz v3, :cond_21

    return-object v0

    .line 68
    :cond_21
    new-instance v3, Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;

    invoke-direct {v3}, Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;-><init>()V

    .line 69
    invoke-virtual {v3, v2}, Lcom/sensorsdata/analytics/android/sdk/core/event/Event;->setProperties(Lorg/json/JSONObject;)V

    .line 70
    invoke-direct {p0, p1, v3}, Lcom/sensorsdata/analytics/android/sdk/core/event/imp/TrackEventAssemble;->appendDefaultProperty(Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;)V

    .line 71
    invoke-direct {p0, v3}, Lcom/sensorsdata/analytics/android/sdk/core/event/imp/TrackEventAssemble;->appendEventDuration(Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;)V

    .line 72
    invoke-direct {p0, v1, v3}, Lcom/sensorsdata/analytics/android/sdk/core/event/imp/TrackEventAssemble;->appendLibProperty(Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;)V

    .line 73
    invoke-direct {p0, p1, v3}, Lcom/sensorsdata/analytics/android/sdk/core/event/imp/TrackEventAssemble;->appendUserIDs(Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;)V

    .line 74
    invoke-virtual {p0, v1, v3}, Lcom/sensorsdata/analytics/android/sdk/core/event/imp/BaseEventAssemble;->appendSessionId(Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;)V

    .line 75
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;->getProperties()Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, v1, p1, v3}, Lcom/sensorsdata/analytics/android/sdk/core/event/imp/TrackEventAssemble;->appendPluginProperties(Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;Lorg/json/JSONObject;Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;)V

    .line 76
    invoke-virtual {p0, v3}, Lcom/sensorsdata/analytics/android/sdk/core/event/imp/BaseEventAssemble;->handlePropertyProtocols(Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;)V

    .line 77
    invoke-virtual {p0, v1, v3}, Lcom/sensorsdata/analytics/android/sdk/core/event/imp/BaseEventAssemble;->handleEventCallback(Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;)Z

    move-result p1

    if-nez p1, :cond_49

    return-object v0

    .line 80
    :cond_49
    invoke-virtual {p0, v1, v3}, Lcom/sensorsdata/analytics/android/sdk/core/event/imp/BaseEventAssemble;->appendPluginVersion(Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;)V

    .line 81
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/core/event/imp/TrackEventAssemble;->mContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    invoke-virtual {p0, v1, v3, p1}, Lcom/sensorsdata/analytics/android/sdk/core/event/imp/BaseEventAssemble;->overrideDeviceId(Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;)V

    .line 82
    invoke-virtual {v3}, Lcom/sensorsdata/analytics/android/sdk/core/event/Event;->getProperties()Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/SADataHelper;->assertPropertyTypes(Lorg/json/JSONObject;)V

    .line 83
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/core/event/imp/TrackEventAssemble;->mContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    invoke-virtual {p0, v1, v3, p1}, Lcom/sensorsdata/analytics/android/sdk/core/event/imp/BaseEventAssemble;->handleEventListener(Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;)V

    .line 84
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SALog;->isLogEnabled()Z

    move-result p1

    if-eqz p1, :cond_85

    const-string p1, "SA.TrackEventAssemble"

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "track event:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->formatJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_85} :catch_86

    :cond_85
    return-object v3

    :catch_86
    move-exception p1

    .line 89
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    return-object v0
.end method
