.class public Lcom/sensorsdata/analytics/android/sdk/core/business/SAPluginVersion;
.super Ljava/lang/Object;
.source "SAPluginVersion.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.SAPluginVersion"

.field private static isTrackEventWithPluginVersion:Z = false


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendPluginVersion(Lorg/json/JSONObject;)V
    .registers 4

    .line 34
    sget-boolean v0, Lcom/sensorsdata/analytics/android/sdk/core/business/SAPluginVersion;->isTrackEventWithPluginVersion:Z

    if-nez v0, :cond_20

    const-string v0, "$lib_plugin_version"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 35
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/core/business/SAPluginVersion;->getPluginVersion()Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_16

    .line 37
    sput-boolean v2, Lcom/sensorsdata/analytics/android/sdk/core/business/SAPluginVersion;->isTrackEventWithPluginVersion:Z

    goto :goto_20

    .line 40
    :cond_16
    :try_start_16
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    sput-boolean v2, Lcom/sensorsdata/analytics/android/sdk/core/business/SAPluginVersion;->isTrackEventWithPluginVersion:Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1b} :catch_1c

    goto :goto_20

    :catch_1c
    move-exception p0

    .line 43
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_20
    :goto_20
    return-void
.end method

.method public static getPluginVersion()Lorg/json/JSONArray;
    .registers 3

    .line 51
    :try_start_0
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->ANDROID_PLUGIN_VERSION:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_40

    const-string v0, "SA.SAPluginVersion"

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android plugin version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->ANDROID_PLUGIN_VERSION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->ANDROID_PLUGIN_VERSION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3b} :catch_3c

    return-object v0

    :catch_3c
    move-exception v0

    .line 58
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_40
    const/4 v0, 0x0

    return-object v0
.end method
