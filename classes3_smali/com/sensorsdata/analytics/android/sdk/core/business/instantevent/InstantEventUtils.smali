.class public Lcom/sensorsdata/analytics/android/sdk/core/business/instantevent/InstantEventUtils;
.super Ljava/lang/Object;
.source "InstantEventUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static instanceEventType(Ljava/lang/String;)Z
    .registers 3

    .line 84
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 87
    :cond_8
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->TRACK:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->getEventType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->TRACK_SIGNUP:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->getEventType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->TRACK_ID_BIND:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->getEventType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->TRACK_ID_UNBIND:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->getEventType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_39

    goto :goto_3a

    :cond_39
    return v1

    :cond_3a
    :goto_3a
    const/4 p0, 0x1

    return p0
.end method

.method public static isInstantEvent(Lorg/json/JSONObject;)I
    .registers 7

    const-string v0, "is_instant_event"

    const/4 v1, 0x0

    :try_start_3
    const-string v2, "_hybrid_h5"

    .line 55
    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_9} :catch_4c

    const/4 v3, 0x1

    const-string v4, "type"

    const-string v5, ""

    if-eqz v2, :cond_25

    .line 57
    :try_start_10
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 58
    invoke-virtual {p0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 59
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    invoke-static {v4}, Lcom/sensorsdata/analytics/android/sdk/core/business/instantevent/InstantEventUtils;->instanceEventType(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_50

    if-eqz v2, :cond_50

    :goto_23
    const/4 v1, 0x1

    goto :goto_50

    .line 64
    :cond_25
    invoke-virtual {p0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "event"

    .line 65
    invoke-virtual {p0, v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 66
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getConfigOptions()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->getInstantEvents()Ljava/util/List;

    move-result-object v2

    .line 67
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/core/business/instantevent/InstantEventUtils;->instanceEventType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_50

    if-eqz v2, :cond_50

    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_49} :catch_4c

    if-eqz p0, :cond_50

    goto :goto_23

    :catch_4c
    move-exception p0

    .line 72
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_50
    :goto_50
    return v1
.end method

.method public static isInstantEvent(Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 21
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;->getExtras()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3f

    .line 23
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getConfigOptions()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->getInstantEvents()Ljava/util/List;

    move-result-object v1

    .line 25
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;->getEventType()Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    move-result-object v3

    if-nez v3, :cond_1e

    return v0

    .line 28
    :cond_1e
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;->getEventType()Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->isTrack()Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;->getEventName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_63

    if-eqz v1, :cond_63

    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;->getEventName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_63

    return v2

    .line 33
    :cond_3f
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;->getExtras()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "type"

    const-string v3, ""

    .line 34
    invoke-virtual {v1, p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "is_instant_event"

    .line 35
    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 36
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/core/business/instantevent/InstantEventUtils;->instanceEventType(Ljava/lang/String;)Z

    move-result p0
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_5a} :catch_5f

    if-eqz p0, :cond_63

    if-eqz v1, :cond_63

    return v2

    :catch_5f
    move-exception p0

    .line 41
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_63
    return v0
.end method
