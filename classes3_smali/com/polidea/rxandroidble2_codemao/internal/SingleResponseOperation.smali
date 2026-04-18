.class public abstract Lcom/polidea/rxandroidble2_codemao/internal/SingleResponseOperation;
.super Lcom/polidea/rxandroidble2_codemao/internal/QueueOperation;
.source "SingleResponseOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/polidea/rxandroidble2_codemao/internal/QueueOperation<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

.field private final operationType:Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattOperationType;

.field private final rxBleGattCallback:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;

.field private final timeoutConfiguration:Lcom/polidea/rxandroidble2_codemao/internal/operations/TimeoutConfiguration;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothGatt;Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattOperationType;Lcom/polidea/rxandroidble2_codemao/internal/operations/TimeoutConfiguration;)V
    .registers 5

    .line 39
    invoke-direct {p0}, Lcom/polidea/rxandroidble2_codemao/internal/QueueOperation;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/SingleResponseOperation;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 41
    iput-object p2, p0, Lcom/polidea/rxandroidble2_codemao/internal/SingleResponseOperation;->rxBleGattCallback:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;

    .line 42
    iput-object p3, p0, Lcom/polidea/rxandroidble2_codemao/internal/SingleResponseOperation;->operationType:Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattOperationType;

    .line 43
    iput-object p4, p0, Lcom/polidea/rxandroidble2_codemao/internal/SingleResponseOperation;->timeoutConfiguration:Lcom/polidea/rxandroidble2_codemao/internal/operations/TimeoutConfiguration;

    return-void
.end method


# virtual methods
.method protected abstract getCallback(Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;)Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;",
            ")",
            "Lio/reactivex/Single<",
            "TT;>;"
        }
    .end annotation
.end method

.method protected final protectedRun(Lio/reactivex/ObservableEmitter;Lcom/polidea/rxandroidble2_codemao/internal/serialization/QueueReleaseInterface;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "TT;>;",
            "Lcom/polidea/rxandroidble2_codemao/internal/serialization/QueueReleaseInterface;",
            ")V"
        }
    .end annotation

    .line 48
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/internal/util/QueueReleasingEmitterWrapper;

    invoke-direct {v0, p1, p2}, Lcom/polidea/rxandroidble2_codemao/internal/util/QueueReleasingEmitterWrapper;-><init>(Lio/reactivex/ObservableEmitter;Lcom/polidea/rxandroidble2_codemao/internal/serialization/QueueReleaseInterface;)V

    .line 49
    iget-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/SingleResponseOperation;->rxBleGattCallback:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;

    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2_codemao/internal/SingleResponseOperation;->getCallback(Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;)Lio/reactivex/Single;

    move-result-object v1

    iget-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/SingleResponseOperation;->timeoutConfiguration:Lcom/polidea/rxandroidble2_codemao/internal/operations/TimeoutConfiguration;

    iget-wide v2, p1, Lcom/polidea/rxandroidble2_codemao/internal/operations/TimeoutConfiguration;->timeout:J

    iget-object v4, p1, Lcom/polidea/rxandroidble2_codemao/internal/operations/TimeoutConfiguration;->timeoutTimeUnit:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p1, Lcom/polidea/rxandroidble2_codemao/internal/operations/TimeoutConfiguration;->timeoutScheduler:Lio/reactivex/Scheduler;

    iget-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/SingleResponseOperation;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object p2, p0, Lcom/polidea/rxandroidble2_codemao/internal/SingleResponseOperation;->rxBleGattCallback:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;

    .line 54
    invoke-virtual {p0, p1, p2, v5}, Lcom/polidea/rxandroidble2_codemao/internal/SingleResponseOperation;->timeoutFallbackProcedure(Landroid/bluetooth/BluetoothGatt;Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v6

    .line 50
    invoke-virtual/range {v1 .. v6}, Lio/reactivex/Single;->timeout(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;Lio/reactivex/SingleSource;)Lio/reactivex/Single;

    move-result-object p1

    .line 56
    invoke-virtual {p1}, Lio/reactivex/Single;->toObservable()Lio/reactivex/Observable;

    move-result-object p1

    .line 57
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    .line 59
    iget-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/SingleResponseOperation;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2_codemao/internal/SingleResponseOperation;->startOperation(Landroid/bluetooth/BluetoothGatt;)Z

    move-result p1

    if-nez p1, :cond_3d

    .line 60
    invoke-virtual {v0}, Lcom/polidea/rxandroidble2_codemao/internal/util/QueueReleasingEmitterWrapper;->cancel()V

    .line 61
    new-instance p1, Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattCannotStartException;

    iget-object p2, p0, Lcom/polidea/rxandroidble2_codemao/internal/SingleResponseOperation;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/internal/SingleResponseOperation;->operationType:Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattOperationType;

    invoke-direct {p1, p2, v1}, Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattCannotStartException;-><init>(Landroid/bluetooth/BluetoothGatt;Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattOperationType;)V

    invoke-virtual {v0, p1}, Lcom/polidea/rxandroidble2_codemao/internal/util/QueueReleasingEmitterWrapper;->onError(Ljava/lang/Throwable;)V

    :cond_3d
    return-void
.end method

.method protected provideException(Landroid/os/DeadObjectException;)Lcom/polidea/rxandroidble2_codemao/exceptions/BleException;
    .registers 5

    .line 97
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/exceptions/BleDisconnectedException;

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/internal/SingleResponseOperation;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-direct {v0, p1, v1, v2}, Lcom/polidea/rxandroidble2_codemao/exceptions/BleDisconnectedException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;I)V

    return-object v0
.end method

.method protected abstract startOperation(Landroid/bluetooth/BluetoothGatt;)Z
.end method

.method protected timeoutFallbackProcedure(Landroid/bluetooth/BluetoothGatt;Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;Lio/reactivex/Scheduler;)Lio/reactivex/Single;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothGatt;",
            "Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;",
            "Lio/reactivex/Scheduler;",
            ")",
            "Lio/reactivex/Single<",
            "TT;>;"
        }
    .end annotation

    .line 92
    new-instance p1, Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattCallbackTimeoutException;

    iget-object p2, p0, Lcom/polidea/rxandroidble2_codemao/internal/SingleResponseOperation;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object p3, p0, Lcom/polidea/rxandroidble2_codemao/internal/SingleResponseOperation;->operationType:Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattOperationType;

    invoke-direct {p1, p2, p3}, Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattCallbackTimeoutException;-><init>(Landroid/bluetooth/BluetoothGatt;Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattOperationType;)V

    invoke-static {p1}, Lio/reactivex/Single;->error(Ljava/lang/Throwable;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/SingleResponseOperation;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Lcom/polidea/rxandroidble2_codemao/internal/logger/LoggerUtil;->commonMacMessage(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
