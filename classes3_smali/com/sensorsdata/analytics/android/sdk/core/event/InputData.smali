.class public Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;
.super Ljava/lang/Object;
.source "InputData.java"


# instance fields
.field protected mEventName:Ljava/lang/String;

.field protected mEventType:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

.field protected mExtras:Ljava/lang/String;

.field private mItemId:Ljava/lang/String;

.field private mItemType:Ljava/lang/String;

.field protected mProperties:Lorg/json/JSONObject;

.field protected mTime:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEventName()Ljava/lang/String;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;->mEventName:Ljava/lang/String;

    return-object v0
.end method

.method public getEventType()Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;->mEventType:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    if-nez v0, :cond_6

    .line 37
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->TRACK:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    :cond_6
    return-object v0
.end method

.method public getExtras()Ljava/lang/String;
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;->mExtras:Ljava/lang/String;

    return-object v0
.end method

.method public getItemId()Ljava/lang/String;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;->mItemId:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()Ljava/lang/String;
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;->mItemType:Ljava/lang/String;

    return-object v0
.end method

.method public getProperties()Lorg/json/JSONObject;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;->mProperties:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getTime()J
    .registers 3

    .line 93
    iget-wide v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;->mTime:J

    return-wide v0
.end method

.method public setEventName(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;
    .registers 2

    .line 52
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;->mEventName:Ljava/lang/String;

    return-object p0
.end method

.method public setEventType(Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;)Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;->mEventType:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    return-object p0
.end method

.method public setExtras(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;
    .registers 2

    .line 70
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;->mExtras:Ljava/lang/String;

    return-object p0
.end method

.method public setItemId(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;
    .registers 2

    .line 88
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;->mItemId:Ljava/lang/String;

    return-object p0
.end method

.method public setItemType(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;
    .registers 2

    .line 79
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;->mItemType:Ljava/lang/String;

    return-object p0
.end method

.method public setProperties(Lorg/json/JSONObject;)Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;
    .registers 2

    .line 61
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;->mProperties:Lorg/json/JSONObject;

    return-object p0
.end method

.method public setTime(J)V
    .registers 3

    .line 97
    iput-wide p1, p0, Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;->mTime:J

    return-void
.end method
