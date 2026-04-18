.class public abstract Lcom/sensorsdata/analytics/android/sdk/core/event/EventProcessor;
.super Ljava/lang/Object;
.source "EventProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/core/event/EventProcessor$ISendData;,
        Lcom/sensorsdata/analytics/android/sdk/core/event/EventProcessor$IStoreData;,
        Lcom/sensorsdata/analytics/android/sdk/core/event/EventProcessor$IAssembleData;
    }
.end annotation


# instance fields
.field mAssembleData:Lcom/sensorsdata/analytics/android/sdk/core/event/EventProcessor$IAssembleData;

.field mSendData:Lcom/sensorsdata/analytics/android/sdk/core/event/EventProcessor$ISendData;

.field mStoreData:Lcom/sensorsdata/analytics/android/sdk/core/event/EventProcessor$IStoreData;


# direct methods
.method public constructor <init>(Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;)V
    .registers 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/core/event/imp/AssembleDataImpl;

    invoke-direct {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/core/event/imp/AssembleDataImpl;-><init>(Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;)V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/event/EventProcessor;->mAssembleData:Lcom/sensorsdata/analytics/android/sdk/core/event/EventProcessor$IAssembleData;

    .line 36
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/core/event/imp/SendDataImpl;

    invoke-direct {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/core/event/imp/SendDataImpl;-><init>(Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;)V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/event/EventProcessor;->mSendData:Lcom/sensorsdata/analytics/android/sdk/core/event/EventProcessor$ISendData;

    .line 37
    new-instance p1, Lcom/sensorsdata/analytics/android/sdk/core/event/imp/StoreDataImpl;

    invoke-direct {p1}, Lcom/sensorsdata/analytics/android/sdk/core/event/imp/StoreDataImpl;-><init>()V

    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/core/event/EventProcessor;->mStoreData:Lcom/sensorsdata/analytics/android/sdk/core/event/EventProcessor$IStoreData;

    return-void
.end method


# virtual methods
.method assembleData(Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;)Lcom/sensorsdata/analytics/android/sdk/core/event/Event;
    .registers 3

    .line 66
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/event/EventProcessor;->mAssembleData:Lcom/sensorsdata/analytics/android/sdk/core/event/EventProcessor$IAssembleData;

    invoke-interface {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/core/event/EventProcessor$IAssembleData;->assembleData(Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;)Lcom/sensorsdata/analytics/android/sdk/core/event/Event;

    move-result-object p1

    return-object p1
.end method

.method protected declared-synchronized process(Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;)V
    .registers 3

    monitor-enter p0

    .line 50
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/core/event/EventProcessor;->assembleData(Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;)Lcom/sensorsdata/analytics/android/sdk/core/event/Event;

    move-result-object v0

    .line 52
    invoke-virtual {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/core/event/EventProcessor;->storeData(Lcom/sensorsdata/analytics/android/sdk/core/event/Event;)I

    move-result v0

    .line 54
    invoke-virtual {p0, p1, v0}, Lcom/sensorsdata/analytics/android/sdk/core/event/EventProcessor;->sendData(Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;I)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_f
    .catchall {:try_start_1 .. :try_end_c} :catchall_d

    goto :goto_13

    :catchall_d
    move-exception p1

    goto :goto_15

    :catch_f
    move-exception p1

    .line 56
    :try_start_10
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_d

    .line 58
    :goto_13
    monitor-exit p0

    return-void

    :goto_15
    monitor-exit p0

    throw p1
.end method

.method sendData(Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;I)V
    .registers 4

    .line 83
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/event/EventProcessor;->mSendData:Lcom/sensorsdata/analytics/android/sdk/core/event/EventProcessor$ISendData;

    invoke-interface {v0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/core/event/EventProcessor$ISendData;->sendData(Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;I)V

    return-void
.end method

.method storeData(Lcom/sensorsdata/analytics/android/sdk/core/event/Event;)I
    .registers 3

    .line 76
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/event/EventProcessor;->mStoreData:Lcom/sensorsdata/analytics/android/sdk/core/event/EventProcessor$IStoreData;

    invoke-interface {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/core/event/EventProcessor$IStoreData;->storeData(Lcom/sensorsdata/analytics/android/sdk/core/event/Event;)I

    move-result p1

    return p1
.end method

.method public abstract trackEvent(Lcom/sensorsdata/analytics/android/sdk/core/event/InputData;)V
.end method
