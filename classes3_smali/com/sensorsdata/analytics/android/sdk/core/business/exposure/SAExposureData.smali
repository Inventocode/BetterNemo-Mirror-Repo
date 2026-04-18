.class public Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;
.super Ljava/lang/Object;
.source "SAExposureData.java"


# instance fields
.field private event:Ljava/lang/String;

.field private exposureConfig:Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;

.field private final exposureIdentifier:Ljava/lang/String;

.field private exposureListener:Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureListener;

.field private properties:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, v0, v0, v0}, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, v0, p2, v0}, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 4

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;)V
    .registers 5

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;)V
    .registers 5

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;->event:Ljava/lang/String;

    .line 38
    :try_start_5
    invoke-static {p2}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->cloneJsonObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;->properties:Lorg/json/JSONObject;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_b} :catch_c

    goto :goto_10

    :catch_c
    move-exception p1

    .line 40
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 42
    :goto_10
    iput-object p3, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;->exposureIdentifier:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;->exposureConfig:Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_47

    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_47

    .line 92
    :cond_12
    check-cast p1, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;

    .line 93
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;->exposureConfig:Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;

    iget-object v3, p1, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;->exposureConfig:Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;

    invoke-virtual {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;->properties:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;->properties:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;->event:Ljava/lang/String;

    iget-object v3, p1, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;->event:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;->exposureIdentifier:Ljava/lang/String;

    iget-object p1, p1, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;->exposureIdentifier:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_45

    goto :goto_46

    :cond_45
    const/4 v0, 0x0

    :goto_46
    return v0

    :cond_47
    :goto_47
    return v1
.end method

.method public getEvent()Ljava/lang/String;
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;->event:Ljava/lang/String;

    return-object v0
.end method

.method public getExposureConfig()Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;->exposureConfig:Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;

    return-object v0
.end method

.method public getExposureListener()Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureListener;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;->exposureListener:Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureListener;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;->exposureIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getProperties()Lorg/json/JSONObject;
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;->properties:Lorg/json/JSONObject;

    return-object v0
.end method

.method public setEvent(Ljava/lang/String;)V
    .registers 2

    .line 71
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;->event:Ljava/lang/String;

    return-void
.end method

.method public setExposureConfig(Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;)V
    .registers 2

    .line 51
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;->exposureConfig:Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;

    return-void
.end method

.method public setExposureListener(Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureListener;)V
    .registers 2

    .line 83
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;->exposureListener:Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureListener;

    return-void
.end method

.method public setProperties(Lorg/json/JSONObject;)V
    .registers 2

    .line 60
    :try_start_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->cloneJsonObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;->properties:Lorg/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_b

    :catch_7
    move-exception p1

    .line 62
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_b
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SAExposureData{exposureConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;->exposureConfig:Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", properties="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;->properties:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", event=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;->event:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", exposureIdentifier=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;->exposureIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
