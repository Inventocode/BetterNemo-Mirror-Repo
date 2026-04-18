.class public abstract Lcom/polidea/rxandroidble2_codemao/internal/connection/ConnectionModule;
.super Ljava/lang/Object;
.source "ConnectionModule.java"


# direct methods
.method static gattWriteMtuOverhead()I
    .registers 1

    const/4 v0, 0x3

    return v0
.end method

.method static minimumMtu()I
    .registers 1

    const/16 v0, 0x17

    return v0
.end method

.method static provideBluetoothGatt(Lcom/polidea/rxandroidble2_codemao/internal/connection/BluetoothGattProvider;)Landroid/bluetooth/BluetoothGatt;
    .registers 1

    .line 80
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2_codemao/internal/connection/BluetoothGattProvider;->getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object p0

    return-object p0
.end method

.method static provideCharacteristicPropertiesParser()Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicPropertiesParser;
    .registers 9

    .line 57
    new-instance v8, Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicPropertiesParser;

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/16 v4, 0x8

    const/16 v5, 0x10

    const/16 v6, 0x20

    const/16 v7, 0x40

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicPropertiesParser;-><init>(IIIIIII)V

    return-object v8
.end method

.method static provideIllegalOperationHandler(ZLbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2_codemao/internal/connection/IllegalOperationHandler;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/connection/LoggingIllegalOperationHandler;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/connection/ThrowingIllegalOperationHandler;",
            ">;)",
            "Lcom/polidea/rxandroidble2_codemao/internal/connection/IllegalOperationHandler;"
        }
    .end annotation

    if-eqz p0, :cond_9

    .line 49
    invoke-interface {p1}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/IllegalOperationHandler;

    return-object p0

    .line 51
    :cond_9
    invoke-interface {p2}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/IllegalOperationHandler;

    return-object p0
.end method

.method static providesOperationTimeoutConf(Lio/reactivex/Scheduler;Lcom/polidea/rxandroidble2_codemao/Timeout;)Lcom/polidea/rxandroidble2_codemao/internal/operations/TimeoutConfiguration;
    .registers 5

    .line 39
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/internal/operations/TimeoutConfiguration;

    iget-wide v1, p1, Lcom/polidea/rxandroidble2_codemao/Timeout;->timeout:J

    iget-object p1, p1, Lcom/polidea/rxandroidble2_codemao/Timeout;->timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, v1, v2, p1, p0}, Lcom/polidea/rxandroidble2_codemao/internal/operations/TimeoutConfiguration;-><init>(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V

    return-object v0
.end method
