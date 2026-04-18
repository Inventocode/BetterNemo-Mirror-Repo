.class public Lcom/sensorsdata/analytics/android/sdk/core/event/imp/StoreDataImpl;
.super Ljava/lang/Object;
.source "StoreDataImpl.java"

# interfaces
.implements Lcom/sensorsdata/analytics/android/sdk/core/event/EventProcessor$IStoreData;


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.StoreDataImpl"


# instance fields
.field private final mDbAdapter:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/event/imp/StoreDataImpl;->mDbAdapter:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    return-void
.end method


# virtual methods
.method public storeData(Lcom/sensorsdata/analytics/android/sdk/core/event/Event;)I
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 43
    :cond_4
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/event/Event;->toJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    .line 44
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/core/event/imp/StoreDataImpl;->mDbAdapter:Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    invoke-virtual {v1, p1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->addJSON(Lorg/json/JSONObject;)I

    move-result v1

    .line 46
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    const-string v0, "sensors_analytics_module_advertisement"

    const-string v4, "sendEvent"

    invoke-virtual {v2, v0, v4, v3}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;->invokeModuleFunction(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    if-gez v1, :cond_43

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to enqueue the event: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 49
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SALog;->isDebug()Z

    move-result v0

    if-nez v0, :cond_3d

    const-string v0, "SA.StoreDataImpl"

    .line 52
    invoke-static {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_43

    .line 50
    :cond_3d
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/exceptions/DebugModeException;

    invoke-direct {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/exceptions/DebugModeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_43
    :goto_43
    return v1
.end method
