.class public Lcom/polidea/rxandroidble2_codemao/internal/operations/DisconnectOperation;
.super Lcom/polidea/rxandroidble2_codemao/internal/QueueOperation;
.source "DisconnectOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/polidea/rxandroidble2_codemao/internal/operations/DisconnectOperation$DisconnectGattObservable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/polidea/rxandroidble2_codemao/internal/QueueOperation<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final bluetoothGattProvider:Lcom/polidea/rxandroidble2_codemao/internal/connection/BluetoothGattProvider;

.field private final bluetoothInteractionScheduler:Lio/reactivex/Scheduler;

.field private final bluetoothManager:Landroid/bluetooth/BluetoothManager;

.field private final connectionStateChangeListener:Lcom/polidea/rxandroidble2_codemao/internal/connection/ConnectionStateChangeListener;

.field private final macAddress:Ljava/lang/String;

.field private final rxBleGattCallback:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;

.field private final timeoutConfiguration:Lcom/polidea/rxandroidble2_codemao/internal/operations/TimeoutConfiguration;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;Lcom/polidea/rxandroidble2_codemao/internal/connection/BluetoothGattProvider;Ljava/lang/String;Landroid/bluetooth/BluetoothManager;Lio/reactivex/Scheduler;Lcom/polidea/rxandroidble2_codemao/internal/operations/TimeoutConfiguration;Lcom/polidea/rxandroidble2_codemao/internal/connection/ConnectionStateChangeListener;)V
    .registers 8

    .line 54
    invoke-direct {p0}, Lcom/polidea/rxandroidble2_codemao/internal/QueueOperation;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/operations/DisconnectOperation;->rxBleGattCallback:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;

    .line 56
    iput-object p2, p0, Lcom/polidea/rxandroidble2_codemao/internal/operations/DisconnectOperation;->bluetoothGattProvider:Lcom/polidea/rxandroidble2_codemao/internal/connection/BluetoothGattProvider;

    .line 57
    iput-object p3, p0, Lcom/polidea/rxandroidble2_codemao/internal/operations/DisconnectOperation;->macAddress:Ljava/lang/String;

    .line 58
    iput-object p4, p0, Lcom/polidea/rxandroidble2_codemao/internal/operations/DisconnectOperation;->bluetoothManager:Landroid/bluetooth/BluetoothManager;

    .line 59
    iput-object p5, p0, Lcom/polidea/rxandroidble2_codemao/internal/operations/DisconnectOperation;->bluetoothInteractionScheduler:Lio/reactivex/Scheduler;

    .line 60
    iput-object p6, p0, Lcom/polidea/rxandroidble2_codemao/internal/operations/DisconnectOperation;->timeoutConfiguration:Lcom/polidea/rxandroidble2_codemao/internal/operations/TimeoutConfiguration;

    .line 61
    iput-object p7, p0, Lcom/polidea/rxandroidble2_codemao/internal/operations/DisconnectOperation;->connectionStateChangeListener:Lcom/polidea/rxandroidble2_codemao/internal/connection/ConnectionStateChangeListener;

    return-void
.end method

.method private disconnect(Landroid/bluetooth/BluetoothGatt;)Lio/reactivex/Single;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothGatt;",
            ")",
            "Lio/reactivex/Single<",
            "Landroid/bluetooth/BluetoothGatt;",
            ">;"
        }
    .end annotation

    .line 126
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/internal/operations/DisconnectOperation$DisconnectGattObservable;

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/internal/operations/DisconnectOperation;->rxBleGattCallback:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;

    iget-object v2, p0, Lcom/polidea/rxandroidble2_codemao/internal/operations/DisconnectOperation;->bluetoothInteractionScheduler:Lio/reactivex/Scheduler;

    invoke-direct {v0, p1, v1, v2}, Lcom/polidea/rxandroidble2_codemao/internal/operations/DisconnectOperation$DisconnectGattObservable;-><init>(Landroid/bluetooth/BluetoothGatt;Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;Lio/reactivex/Scheduler;)V

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/internal/operations/DisconnectOperation;->timeoutConfiguration:Lcom/polidea/rxandroidble2_codemao/internal/operations/TimeoutConfiguration;

    iget-wide v2, v1, Lcom/polidea/rxandroidble2_codemao/internal/operations/TimeoutConfiguration;->timeout:J

    iget-object v4, v1, Lcom/polidea/rxandroidble2_codemao/internal/operations/TimeoutConfiguration;->timeoutTimeUnit:Ljava/util/concurrent/TimeUnit;

    iget-object v5, v1, Lcom/polidea/rxandroidble2_codemao/internal/operations/TimeoutConfiguration;->timeoutScheduler:Lio/reactivex/Scheduler;

    .line 128
    invoke-static {p1}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    move-wide v1, v2

    move-object v3, v4

    move-object v4, v5

    move-object v5, p1

    .line 127
    invoke-virtual/range {v0 .. v5}, Lio/reactivex/Single;->timeout(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;Lio/reactivex/SingleSource;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method private disconnectIfRequired(Landroid/bluetooth/BluetoothGatt;)Lio/reactivex/Single;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothGatt;",
            ")",
            "Lio/reactivex/Single<",
            "Landroid/bluetooth/BluetoothGatt;",
            ">;"
        }
    .end annotation

    .line 99
    invoke-direct {p0, p1}, Lcom/polidea/rxandroidble2_codemao/internal/operations/DisconnectOperation;->isDisconnected(Landroid/bluetooth/BluetoothGatt;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 100
    invoke-static {p1}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    goto :goto_f

    .line 101
    :cond_b
    invoke-direct {p0, p1}, Lcom/polidea/rxandroidble2_codemao/internal/operations/DisconnectOperation;->disconnect(Landroid/bluetooth/BluetoothGatt;)Lio/reactivex/Single;

    move-result-object p1

    :goto_f
    return-object p1
.end method

.method private isDisconnected(Landroid/bluetooth/BluetoothGatt;)Z
    .registers 4

    .line 116
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/operations/DisconnectOperation;->bluetoothManager:Landroid/bluetooth/BluetoothManager;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    const/4 v1, 0x7

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothManager;->getConnectionState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result p1

    if-nez p1, :cond_f

    const/4 p1, 0x1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    return p1
.end method


# virtual methods
.method considerGattDisconnected(Lio/reactivex/Emitter;Lcom/polidea/rxandroidble2_codemao/internal/serialization/QueueReleaseInterface;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Emitter<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/polidea/rxandroidble2_codemao/internal/serialization/QueueReleaseInterface;",
            ")V"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/operations/DisconnectOperation;->connectionStateChangeListener:Lcom/polidea/rxandroidble2_codemao/internal/connection/ConnectionStateChangeListener;

    sget-object v1, Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;->DISCONNECTED:Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;

    invoke-interface {v0, v1}, Lcom/polidea/rxandroidble2_codemao/internal/connection/ConnectionStateChangeListener;->onConnectionStateChange(Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;)V

    .line 111
    invoke-interface {p2}, Lcom/polidea/rxandroidble2_codemao/internal/serialization/QueueReleaseInterface;->release()V

    .line 112
    invoke-interface {p1}, Lio/reactivex/Emitter;->onComplete()V

    return-void
.end method

.method protected protectedRun(Lio/reactivex/ObservableEmitter;Lcom/polidea/rxandroidble2_codemao/internal/serialization/QueueReleaseInterface;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/polidea/rxandroidble2_codemao/internal/serialization/QueueReleaseInterface;",
            ")V"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/operations/DisconnectOperation;->connectionStateChangeListener:Lcom/polidea/rxandroidble2_codemao/internal/connection/ConnectionStateChangeListener;

    sget-object v1, Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;->DISCONNECTING:Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;

    invoke-interface {v0, v1}, Lcom/polidea/rxandroidble2_codemao/internal/connection/ConnectionStateChangeListener;->onConnectionStateChange(Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;)V

    .line 67
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/operations/DisconnectOperation;->bluetoothGattProvider:Lcom/polidea/rxandroidble2_codemao/internal/connection/BluetoothGattProvider;

    invoke-virtual {v0}, Lcom/polidea/rxandroidble2_codemao/internal/connection/BluetoothGattProvider;->getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    if-nez v0, :cond_1b

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Disconnect operation has been executed but GATT instance was null - considering disconnected."

    .line 69
    invoke-static {v1, v0}, Lcom/polidea/rxandroidble2_codemao/internal/RxBleLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    invoke-virtual {p0, p1, p2}, Lcom/polidea/rxandroidble2_codemao/internal/operations/DisconnectOperation;->considerGattDisconnected(Lio/reactivex/Emitter;Lcom/polidea/rxandroidble2_codemao/internal/serialization/QueueReleaseInterface;)V

    goto :goto_2d

    .line 72
    :cond_1b
    invoke-direct {p0, v0}, Lcom/polidea/rxandroidble2_codemao/internal/operations/DisconnectOperation;->disconnectIfRequired(Landroid/bluetooth/BluetoothGatt;)Lio/reactivex/Single;

    move-result-object v0

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/internal/operations/DisconnectOperation;->bluetoothInteractionScheduler:Lio/reactivex/Scheduler;

    .line 73
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/polidea/rxandroidble2_codemao/internal/operations/DisconnectOperation$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/polidea/rxandroidble2_codemao/internal/operations/DisconnectOperation$1;-><init>(Lcom/polidea/rxandroidble2_codemao/internal/operations/DisconnectOperation;Lio/reactivex/ObservableEmitter;Lcom/polidea/rxandroidble2_codemao/internal/serialization/QueueReleaseInterface;)V

    .line 74
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/SingleObserver;)V

    :goto_2d
    return-void
.end method

.method protected provideException(Landroid/os/DeadObjectException;)Lcom/polidea/rxandroidble2_codemao/exceptions/BleException;
    .registers 5

    .line 172
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/exceptions/BleDisconnectedException;

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/internal/operations/DisconnectOperation;->macAddress:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-direct {v0, p1, v1, v2}, Lcom/polidea/rxandroidble2_codemao/exceptions/BleDisconnectedException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;I)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisconnectOperation{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/internal/operations/DisconnectOperation;->macAddress:Ljava/lang/String;

    .line 178
    invoke-static {v1}, Lcom/polidea/rxandroidble2_codemao/internal/logger/LoggerUtil;->commonMacMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
