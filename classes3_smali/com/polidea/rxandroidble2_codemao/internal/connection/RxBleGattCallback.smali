.class public Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;
.super Ljava/lang/Object;
.source "RxBleGattCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;
    }
.end annotation


# instance fields
.field private final bluetoothGattCallback:Landroid/bluetooth/BluetoothGattCallback;

.field final bluetoothGattProvider:Lcom/polidea/rxandroidble2_codemao/internal/connection/BluetoothGattProvider;

.field private final callbackScheduler:Lio/reactivex/Scheduler;

.field final changedCharacteristicSerializedPublishRelay:Lcom/jakewharton/rxrelay2/Relay;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jakewharton/rxrelay2/Relay<",
            "Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicChangedEvent;",
            ">;"
        }
    .end annotation
.end field

.field final changedMtuOutput:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final connectionStatePublishRelay:Lcom/jakewharton/rxrelay2/PublishRelay;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jakewharton/rxrelay2/PublishRelay<",
            "Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;",
            ">;"
        }
    .end annotation
.end field

.field final disconnectionRouter:Lcom/polidea/rxandroidble2_codemao/internal/connection/DisconnectionRouter;

.field private final errorMapper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattException;",
            "Lio/reactivex/Observable<",
            "*>;>;"
        }
    .end annotation
.end field

.field final nativeCallbackDispatcher:Lcom/polidea/rxandroidble2_codemao/internal/connection/NativeCallbackDispatcher;

.field final readCharacteristicOutput:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output<",
            "Lcom/polidea/rxandroidble2_codemao/internal/util/ByteAssociation<",
            "Ljava/util/UUID;",
            ">;>;"
        }
    .end annotation
.end field

.field final readDescriptorOutput:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output<",
            "Lcom/polidea/rxandroidble2_codemao/internal/util/ByteAssociation<",
            "Landroid/bluetooth/BluetoothGattDescriptor;",
            ">;>;"
        }
    .end annotation
.end field

.field final readRssiOutput:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final servicesDiscoveredOutput:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output<",
            "Lcom/polidea/rxandroidble2_codemao/RxBleDeviceServices;",
            ">;"
        }
    .end annotation
.end field

.field final updatedConnectionOutput:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final writeCharacteristicOutput:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output<",
            "Lcom/polidea/rxandroidble2_codemao/internal/util/ByteAssociation<",
            "Ljava/util/UUID;",
            ">;>;"
        }
    .end annotation
.end field

.field final writeDescriptorOutput:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output<",
            "Lcom/polidea/rxandroidble2_codemao/internal/util/ByteAssociation<",
            "Landroid/bluetooth/BluetoothGattDescriptor;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/Scheduler;Lcom/polidea/rxandroidble2_codemao/internal/connection/BluetoothGattProvider;Lcom/polidea/rxandroidble2_codemao/internal/connection/DisconnectionRouter;Lcom/polidea/rxandroidble2_codemao/internal/connection/NativeCallbackDispatcher;)V
    .registers 6

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {}, Lcom/jakewharton/rxrelay2/PublishRelay;->create()Lcom/jakewharton/rxrelay2/PublishRelay;

    move-result-object v0

    iput-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->connectionStatePublishRelay:Lcom/jakewharton/rxrelay2/PublishRelay;

    .line 43
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;

    invoke-direct {v0}, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;-><init>()V

    iput-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->servicesDiscoveredOutput:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;

    .line 44
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;

    invoke-direct {v0}, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;-><init>()V

    iput-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->readCharacteristicOutput:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;

    .line 45
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;

    invoke-direct {v0}, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;-><init>()V

    iput-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->writeCharacteristicOutput:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;

    .line 47
    invoke-static {}, Lcom/jakewharton/rxrelay2/PublishRelay;->create()Lcom/jakewharton/rxrelay2/PublishRelay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jakewharton/rxrelay2/Relay;->toSerialized()Lcom/jakewharton/rxrelay2/Relay;

    move-result-object v0

    iput-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->changedCharacteristicSerializedPublishRelay:Lcom/jakewharton/rxrelay2/Relay;

    .line 48
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;

    invoke-direct {v0}, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;-><init>()V

    iput-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->readDescriptorOutput:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;

    .line 49
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;

    invoke-direct {v0}, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;-><init>()V

    iput-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->writeDescriptorOutput:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;

    .line 50
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;

    invoke-direct {v0}, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;-><init>()V

    iput-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->readRssiOutput:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;

    .line 51
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;

    invoke-direct {v0}, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;-><init>()V

    iput-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->changedMtuOutput:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;

    .line 52
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;

    invoke-direct {v0}, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;-><init>()V

    iput-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->updatedConnectionOutput:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;

    .line 53
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$1;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$1;-><init>(Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;)V

    iput-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->errorMapper:Lio/reactivex/functions/Function;

    .line 71
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$2;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$2;-><init>(Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;)V

    iput-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->bluetoothGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    .line 65
    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->callbackScheduler:Lio/reactivex/Scheduler;

    .line 66
    iput-object p2, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->bluetoothGattProvider:Lcom/polidea/rxandroidble2_codemao/internal/connection/BluetoothGattProvider;

    .line 67
    iput-object p3, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->disconnectionRouter:Lcom/polidea/rxandroidble2_codemao/internal/connection/DisconnectionRouter;

    .line 68
    iput-object p4, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->nativeCallbackDispatcher:Lcom/polidea/rxandroidble2_codemao/internal/connection/NativeCallbackDispatcher;

    return-void
.end method

.method private static isException(I)Z
    .registers 1

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method

.method static mapConnectionStateToRxBleConnectionStatus(I)Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_12

    const/4 v0, 0x2

    if-eq p0, v0, :cond_f

    const/4 v0, 0x3

    if-eq p0, v0, :cond_c

    .line 233
    sget-object p0, Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;->DISCONNECTED:Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;

    return-object p0

    .line 231
    :cond_c
    sget-object p0, Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;->DISCONNECTING:Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;

    return-object p0

    .line 229
    :cond_f
    sget-object p0, Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;->CONNECTED:Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;

    return-object p0

    .line 227
    :cond_12
    sget-object p0, Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;->CONNECTING:Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;

    return-object p0
.end method

.method static propagateErrorIfOccurred(Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;Landroid/bluetooth/BluetoothGatt;ILcom/polidea/rxandroidble2_codemao/exceptions/BleGattOperationType;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output<",
            "*>;",
            "Landroid/bluetooth/BluetoothGatt;",
            "I",
            "Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattOperationType;",
            ")Z"
        }
    .end annotation

    .line 268
    invoke-static {p2}, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->isException(I)Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v0, Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattException;

    invoke-direct {v0, p1, p2, p3}, Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattException;-><init>(Landroid/bluetooth/BluetoothGatt;ILcom/polidea/rxandroidble2_codemao/exceptions/BleGattOperationType;)V

    invoke-static {p0, v0}, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->propagateStatusError(Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattException;)Z

    move-result p0

    if-eqz p0, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method static propagateErrorIfOccurred(Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;ILcom/polidea/rxandroidble2_codemao/exceptions/BleGattOperationType;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output<",
            "*>;",
            "Landroid/bluetooth/BluetoothGatt;",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            "I",
            "Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattOperationType;",
            ")Z"
        }
    .end annotation

    .line 244
    invoke-static {p3}, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->isException(I)Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v0, Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattCharacteristicException;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattCharacteristicException;-><init>(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;ILcom/polidea/rxandroidble2_codemao/exceptions/BleGattOperationType;)V

    invoke-static {p0, v0}, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->propagateStatusError(Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattException;)Z

    move-result p0

    if-eqz p0, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method static propagateErrorIfOccurred(Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;ILcom/polidea/rxandroidble2_codemao/exceptions/BleGattOperationType;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output<",
            "*>;",
            "Landroid/bluetooth/BluetoothGatt;",
            "Landroid/bluetooth/BluetoothGattDescriptor;",
            "I",
            "Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattOperationType;",
            ")Z"
        }
    .end annotation

    .line 259
    invoke-static {p3}, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->isException(I)Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v0, Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattDescriptorException;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattDescriptorException;-><init>(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;ILcom/polidea/rxandroidble2_codemao/exceptions/BleGattOperationType;)V

    invoke-static {p0, v0}, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->propagateStatusError(Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattException;)Z

    move-result p0

    if-eqz p0, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method private static propagateStatusError(Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattException;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output<",
            "*>;",
            "Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattException;",
            ")Z"
        }
    .end annotation

    .line 276
    iget-object p0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;->errorRelay:Lcom/jakewharton/rxrelay2/PublishRelay;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxrelay2/PublishRelay;->accept(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method private withDisconnectionHandling(Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;)Lio/reactivex/Observable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output<",
            "TT;>;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->disconnectionRouter:Lcom/polidea/rxandroidble2_codemao/internal/connection/DisconnectionRouter;

    .line 283
    invoke-virtual {v0}, Lcom/polidea/rxandroidble2_codemao/internal/connection/DisconnectionRouter;->asErrorOnlyObservable()Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p1, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;->valueRelay:Lcom/jakewharton/rxrelay2/PublishRelay;

    iget-object p1, p1, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;->errorRelay:Lcom/jakewharton/rxrelay2/PublishRelay;

    iget-object v2, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->errorMapper:Lio/reactivex/functions/Function;

    .line 285
    invoke-virtual {p1, v2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 282
    invoke-static {v0, v1, p1}, Lio/reactivex/Observable;->merge(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getBluetoothGattCallback()Landroid/bluetooth/BluetoothGattCallback;
    .registers 2

    .line 290
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->bluetoothGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    return-object v0
.end method

.method public getOnCharacteristicChanged()Lio/reactivex/Observable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicChangedEvent;",
            ">;"
        }
    .end annotation

    .line 327
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->disconnectionRouter:Lcom/polidea/rxandroidble2_codemao/internal/connection/DisconnectionRouter;

    .line 328
    invoke-virtual {v0}, Lcom/polidea/rxandroidble2_codemao/internal/connection/DisconnectionRouter;->asErrorOnlyObservable()Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->changedCharacteristicSerializedPublishRelay:Lcom/jakewharton/rxrelay2/Relay;

    .line 327
    invoke-static {v0, v1}, Lio/reactivex/Observable;->merge(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->callbackScheduler:Lio/reactivex/Scheduler;

    const-wide/16 v3, 0x0

    .line 331
    invoke-virtual {v0, v3, v4, v1, v2}, Lio/reactivex/Observable;->delay(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getOnCharacteristicRead()Lio/reactivex/Observable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2_codemao/internal/util/ByteAssociation<",
            "Ljava/util/UUID;",
            ">;>;"
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->readCharacteristicOutput:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;

    invoke-direct {p0, v0}, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->withDisconnectionHandling(Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->callbackScheduler:Lio/reactivex/Scheduler;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Lio/reactivex/Observable;->delay(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getOnCharacteristicWrite()Lio/reactivex/Observable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2_codemao/internal/util/ByteAssociation<",
            "Ljava/util/UUID;",
            ">;>;"
        }
    .end annotation

    .line 323
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->writeCharacteristicOutput:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;

    invoke-direct {p0, v0}, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->withDisconnectionHandling(Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->callbackScheduler:Lio/reactivex/Scheduler;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Lio/reactivex/Observable;->delay(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getOnConnectionStateChange()Lio/reactivex/Observable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;",
            ">;"
        }
    .end annotation

    .line 307
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->connectionStatePublishRelay:Lcom/jakewharton/rxrelay2/PublishRelay;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->callbackScheduler:Lio/reactivex/Scheduler;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Lio/reactivex/Observable;->delay(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getOnDescriptorWrite()Lio/reactivex/Observable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2_codemao/internal/util/ByteAssociation<",
            "Landroid/bluetooth/BluetoothGattDescriptor;",
            ">;>;"
        }
    .end annotation

    .line 339
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->writeDescriptorOutput:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;

    invoke-direct {p0, v0}, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->withDisconnectionHandling(Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->callbackScheduler:Lio/reactivex/Scheduler;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Lio/reactivex/Observable;->delay(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getOnMtuChanged()Lio/reactivex/Observable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 315
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->changedMtuOutput:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;

    invoke-direct {p0, v0}, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->withDisconnectionHandling(Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->callbackScheduler:Lio/reactivex/Scheduler;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Lio/reactivex/Observable;->delay(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getOnRssiRead()Lio/reactivex/Observable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 343
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->readRssiOutput:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;

    invoke-direct {p0, v0}, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->withDisconnectionHandling(Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->callbackScheduler:Lio/reactivex/Scheduler;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Lio/reactivex/Observable;->delay(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getOnServicesDiscovered()Lio/reactivex/Observable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2_codemao/RxBleDeviceServices;",
            ">;"
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->servicesDiscoveredOutput:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;

    invoke-direct {p0, v0}, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->withDisconnectionHandling(Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->callbackScheduler:Lio/reactivex/Scheduler;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Lio/reactivex/Observable;->delay(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public observeDisconnect()Lio/reactivex/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 299
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->disconnectionRouter:Lcom/polidea/rxandroidble2_codemao/internal/connection/DisconnectionRouter;

    invoke-virtual {v0}, Lcom/polidea/rxandroidble2_codemao/internal/connection/DisconnectionRouter;->asErrorOnlyObservable()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method
