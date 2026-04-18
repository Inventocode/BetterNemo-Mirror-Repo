.class public abstract Lcom/polidea/rxandroidble2_codemao/internal/DeviceModule;
.super Ljava/lang/Object;
.source "DeviceModule.java"


# direct methods
.method static provideBluetoothDevice(Ljava/lang/String;Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;)Landroid/bluetooth/BluetoothDevice;
    .registers 2

    .line 39
    invoke-virtual {p1, p0}, Lcom/polidea/rxandroidble2_codemao/internal/util/RxBleAdapterWrapper;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    return-object p0
.end method

.method static provideConnectionStateChangeListener(Lcom/jakewharton/rxrelay2/BehaviorRelay;)Lcom/polidea/rxandroidble2_codemao/internal/connection/ConnectionStateChangeListener;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jakewharton/rxrelay2/BehaviorRelay<",
            "Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;",
            ">;)",
            "Lcom/polidea/rxandroidble2_codemao/internal/connection/ConnectionStateChangeListener;"
        }
    .end annotation

    .line 65
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/internal/DeviceModule$1;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2_codemao/internal/DeviceModule$1;-><init>(Lcom/jakewharton/rxrelay2/BehaviorRelay;)V

    return-object v0
.end method

.method static provideConnectionStateRelay()Lcom/jakewharton/rxrelay2/BehaviorRelay;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/jakewharton/rxrelay2/BehaviorRelay<",
            "Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;",
            ">;"
        }
    .end annotation

    .line 57
    sget-object v0, Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;->DISCONNECTED:Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;

    invoke-static {v0}, Lcom/jakewharton/rxrelay2/BehaviorRelay;->createDefault(Ljava/lang/Object;)Lcom/jakewharton/rxrelay2/BehaviorRelay;

    move-result-object v0

    return-object v0
.end method

.method static providesConnectTimeoutConf(Lio/reactivex/Scheduler;)Lcom/polidea/rxandroidble2_codemao/internal/operations/TimeoutConfiguration;
    .registers 5

    .line 45
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/internal/operations/TimeoutConfiguration;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x23

    invoke-direct {v0, v2, v3, v1, p0}, Lcom/polidea/rxandroidble2_codemao/internal/operations/TimeoutConfiguration;-><init>(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V

    return-object v0
.end method

.method static providesDisconnectTimeoutConf(Lio/reactivex/Scheduler;)Lcom/polidea/rxandroidble2_codemao/internal/operations/TimeoutConfiguration;
    .registers 5

    .line 51
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/internal/operations/TimeoutConfiguration;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-direct {v0, v2, v3, v1, p0}, Lcom/polidea/rxandroidble2_codemao/internal/operations/TimeoutConfiguration;-><init>(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V

    return-object v0
.end method
