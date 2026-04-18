.class public final Lcom/sensorsdata/analytics/android/sdk/plugin/property/impl/SAPresetPropertyPlugin;
.super Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;
.source "SAPresetPropertyPlugin.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDisableAndroidId:Z

.field private final mDisableTrackDeviceId:Z

.field private presetProperty:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;)V
    .registers 3

    .line 50
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/SAPropertyPlugin;-><init>()V

    .line 51
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/property/impl/SAPresetPropertyPlugin;->mContext:Landroid/content/Context;

    .line 52
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getInternalConfigs()Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;->isTrackDeviceId:Z

    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/property/impl/SAPresetPropertyPlugin;->mDisableTrackDeviceId:Z

    .line 53
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getInternalConfigs()Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    move-result-object p1

    iget-object p1, p1, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;->saConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isDisableDeviceId()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/property/impl/SAPresetPropertyPlugin;->mDisableAndroidId:Z

    return-void
.end method

.method private getPreset()Lorg/json/JSONObject;
    .registers 7

    .line 83
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 85
    :try_start_5
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/DeviceUtils;->getHarmonyOSVersion()Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_d} :catch_bb

    const-string v3, "$os_version"

    const-string v4, "Android"

    const-string v5, "$os"

    if-nez v2, :cond_1e

    :try_start_15
    const-string v2, "HarmonyOS"

    .line 87
    invoke-virtual {v0, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_28

    .line 90
    :cond_1e
    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/DeviceUtils;->getOS()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_28
    const-string v1, "$lib"

    .line 94
    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "$lib_version"

    .line 95
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->getSDKVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "$manufacturer"

    .line 96
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/DeviceUtils;->getManufacturer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "$model"

    .line 97
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/DeviceUtils;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "$brand"

    .line 98
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/DeviceUtils;->getBrand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "$app_version"

    .line 99
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/property/impl/SAPresetPropertyPlugin;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/util/AppInfoUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/property/impl/SAPresetPropertyPlugin;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/DeviceUtils;->getDeviceSize(Landroid/content/Context;)[I

    move-result-object v1

    const-string v2, "$screen_width"

    const/4 v3, 0x0

    .line 101
    aget v3, v1, v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "$screen_height"

    const/4 v3, 0x1

    .line 102
    aget v1, v1, v3

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 104
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/TimeUtils;->getZoneOffset()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_81

    const-string v2, "$timezone_offset"

    .line 106
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_81
    const-string v1, "$app_id"

    .line 109
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/property/impl/SAPresetPropertyPlugin;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/util/AppInfoUtils;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "$app_name"

    .line 110
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/property/impl/SAPresetPropertyPlugin;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/util/AppInfoUtils;->getAppName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/property/impl/SAPresetPropertyPlugin;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->getIdentifier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 112
    iget-boolean v2, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/property/impl/SAPresetPropertyPlugin;->mDisableTrackDeviceId:Z

    if-nez v2, :cond_bf

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_bf

    .line 113
    iget-boolean v2, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/property/impl/SAPresetPropertyPlugin;->mDisableAndroidId:Z

    if-eqz v2, :cond_b5

    const-string v2, "$anonymization_id"

    .line 114
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/Base64Coder;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_bf

    :cond_b5
    const-string v2, "$device_id"

    .line 116
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_ba
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_ba} :catch_bb

    goto :goto_bf

    :catch_bb
    move-exception v1

    .line 120
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_bf
    :goto_bf
    return-object v0
.end method


# virtual methods
.method public getPresetProperties()Lorg/json/JSONObject;
    .registers 5

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/property/impl/SAPresetPropertyPlugin;->presetProperty:Lorg/json/JSONObject;

    if-nez v0, :cond_13

    .line 133
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/impl/SAPresetPropertyPlugin;->getPreset()Lorg/json/JSONObject;

    move-result-object v0

    .line 134
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/property/impl/SAPresetPropertyPlugin;->presetProperty:Lorg/json/JSONObject;

    .line 136
    :cond_13
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/property/impl/SAPresetPropertyPlugin;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->networkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/property/impl/SAPresetPropertyPlugin;->presetProperty:Lorg/json/JSONObject;

    const-string v2, "$wifi"

    const-string v3, "WIFI"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 138
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/property/impl/SAPresetPropertyPlugin;->presetProperty:Lorg/json/JSONObject;

    const-string v2, "$network_type"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/plugin/property/impl/SAPresetPropertyPlugin;->presetProperty:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_38
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_38} :catch_39

    return-object v0

    :catch_39
    move-exception v0

    .line 141
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 143
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

.method public isMatchedWithFilter(Lcom/sensorsdata/analytics/android/sdk/plugin/property/beans/SAPropertyFilter;)Z
    .registers 2

    .line 58
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/beans/SAPropertyFilter;->getType()Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    move-result-object p1

    .line 59
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->isTrack()Z

    move-result p1

    return p1
.end method

.method public properties(Lcom/sensorsdata/analytics/android/sdk/plugin/property/beans/SAPropertiesFetcher;)V
    .registers 7

    const-string v0, "$app_version"

    const-string v1, "$lib"

    const-string v2, "$lib_version"

    .line 65
    :try_start_6
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/impl/SAPresetPropertyPlugin;->getPresetProperties()Lorg/json/JSONObject;

    move-result-object v3

    .line 67
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/beans/SAPropertiesFetcher;->getProperties()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 68
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    :cond_17
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/beans/SAPropertiesFetcher;->getProperties()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 71
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 73
    :cond_24
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/beans/SAPropertiesFetcher;->getProperties()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 74
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    :cond_31
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/plugin/property/beans/SAPropertiesFetcher;->getProperties()Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_38} :catch_39

    goto :goto_3d

    :catch_39
    move-exception p1

    .line 78
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_3d
    return-void
.end method
