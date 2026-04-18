.class public Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleConnectionImpl;
.super Ljava/lang/Object;
.source "RxBleConnectionImpl.java"

# interfaces
.implements Lcom/polidea/rxandroidble2_codemao/RxBleConnection;


# instance fields
.field private final illegalOperationChecker:Lcom/polidea/rxandroidble2_codemao/internal/connection/IllegalOperationChecker;

.field private final longWriteOperationBuilderProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mtuProvider:Lcom/polidea/rxandroidble2_codemao/internal/connection/MtuProvider;

.field private final notificationIndicationManager:Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager;

.field private final operationQueue:Lcom/polidea/rxandroidble2_codemao/internal/serialization/ConnectionOperationQueue;

.field private final operationsProvider:Lcom/polidea/rxandroidble2_codemao/internal/operations/OperationsProvider;

.field private final serviceDiscoveryManager:Lcom/polidea/rxandroidble2_codemao/internal/connection/ServiceDiscoveryManager;


# direct methods
.method public constructor <init>(Lcom/polidea/rxandroidble2_codemao/internal/serialization/ConnectionOperationQueue;Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;Landroid/bluetooth/BluetoothGatt;Lcom/polidea/rxandroidble2_codemao/internal/connection/ServiceDiscoveryManager;Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager;Lcom/polidea/rxandroidble2_codemao/internal/connection/MtuProvider;Lcom/polidea/rxandroidble2_codemao/internal/connection/DescriptorWriter;Lcom/polidea/rxandroidble2_codemao/internal/operations/OperationsProvider;Lbleshadow/javax/inject/Provider;Lio/reactivex/Scheduler;Lcom/polidea/rxandroidble2_codemao/internal/connection/IllegalOperationChecker;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2_codemao/internal/serialization/ConnectionOperationQueue;",
            "Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;",
            "Landroid/bluetooth/BluetoothGatt;",
            "Lcom/polidea/rxandroidble2_codemao/internal/connection/ServiceDiscoveryManager;",
            "Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager;",
            "Lcom/polidea/rxandroidble2_codemao/internal/connection/MtuProvider;",
            "Lcom/polidea/rxandroidble2_codemao/internal/connection/DescriptorWriter;",
            "Lcom/polidea/rxandroidble2_codemao/internal/operations/OperationsProvider;",
            "Lbleshadow/javax/inject/Provider<",
            "Ljava/lang/Object;",
            ">;",
            "Lio/reactivex/Scheduler;",
            "Lcom/polidea/rxandroidble2_codemao/internal/connection/IllegalOperationChecker;",
            ")V"
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleConnectionImpl;->operationQueue:Lcom/polidea/rxandroidble2_codemao/internal/serialization/ConnectionOperationQueue;

    .line 82
    iput-object p4, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleConnectionImpl;->serviceDiscoveryManager:Lcom/polidea/rxandroidble2_codemao/internal/connection/ServiceDiscoveryManager;

    .line 83
    iput-object p5, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleConnectionImpl;->notificationIndicationManager:Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager;

    .line 84
    iput-object p6, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleConnectionImpl;->mtuProvider:Lcom/polidea/rxandroidble2_codemao/internal/connection/MtuProvider;

    .line 86
    iput-object p8, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleConnectionImpl;->operationsProvider:Lcom/polidea/rxandroidble2_codemao/internal/operations/OperationsProvider;

    .line 87
    iput-object p9, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleConnectionImpl;->longWriteOperationBuilderProvider:Lbleshadow/javax/inject/Provider;

    .line 89
    iput-object p11, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleConnectionImpl;->illegalOperationChecker:Lcom/polidea/rxandroidble2_codemao/internal/connection/IllegalOperationChecker;

    return-void
.end method


# virtual methods
.method public discoverServices()Lio/reactivex/Single;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lcom/polidea/rxandroidble2_codemao/RxBleDeviceServices;",
            ">;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleConnectionImpl;->serviceDiscoveryManager:Lcom/polidea/rxandroidble2_codemao/internal/connection/ServiceDiscoveryManager;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v2, v3, v1}, Lcom/polidea/rxandroidble2_codemao/internal/connection/ServiceDiscoveryManager;->getDiscoverServicesSingle(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method public getCharacteristic(Ljava/util/UUID;)Lio/reactivex/Single;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            ")",
            "Lio/reactivex/Single<",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 144
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleConnectionImpl;->discoverServices()Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleConnectionImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleConnectionImpl$1;-><init>(Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleConnectionImpl;Ljava/util/UUID;)V

    .line 145
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Lio/reactivex/Single;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ")",
            "Lio/reactivex/Single<",
            "[B>;"
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleConnectionImpl;->illegalOperationChecker:Lcom/polidea/rxandroidble2_codemao/internal/connection/IllegalOperationChecker;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/polidea/rxandroidble2_codemao/internal/connection/IllegalOperationChecker;->checkAnyPropertyMatches(Landroid/bluetooth/BluetoothGattCharacteristic;I)Lio/reactivex/Completable;

    move-result-object v0

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleConnectionImpl;->operationQueue:Lcom/polidea/rxandroidble2_codemao/internal/serialization/ConnectionOperationQueue;

    iget-object v2, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleConnectionImpl;->operationsProvider:Lcom/polidea/rxandroidble2_codemao/internal/operations/OperationsProvider;

    .line 225
    invoke-interface {v2, p1}, Lcom/polidea/rxandroidble2_codemao/internal/operations/OperationsProvider;->provideReadCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Lcom/polidea/rxandroidble2_codemao/internal/operations/CharacteristicReadOperation;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/polidea/rxandroidble2_codemao/internal/serialization/ClientOperationQueue;->queue(Lcom/polidea/rxandroidble2_codemao/internal/operations/Operation;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/Completable;->andThen(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    .line 226
    invoke-virtual {p1}, Lio/reactivex/Observable;->firstOrError()Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public readCharacteristic(Ljava/util/UUID;)Lio/reactivex/Single;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            ")",
            "Lio/reactivex/Single<",
            "[B>;"
        }
    .end annotation

    .line 213
    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleConnectionImpl;->getCharacteristic(Ljava/util/UUID;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleConnectionImpl$4;

    invoke-direct {v0, p0}, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleConnectionImpl$4;-><init>(Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleConnectionImpl;)V

    .line 214
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public setupIndication(Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;)Lio/reactivex/Observable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            "Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;",
            ")",
            "Lio/reactivex/Observable<",
            "Lio/reactivex/Observable<",
            "[B>;>;"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleConnectionImpl;->illegalOperationChecker:Lcom/polidea/rxandroidble2_codemao/internal/connection/IllegalOperationChecker;

    const/16 v1, 0x20

    invoke-virtual {v0, p1, v1}, Lcom/polidea/rxandroidble2_codemao/internal/connection/IllegalOperationChecker;->checkAnyPropertyMatches(Landroid/bluetooth/BluetoothGattCharacteristic;I)Lio/reactivex/Completable;

    move-result-object v0

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleConnectionImpl;->notificationIndicationManager:Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager;

    const/4 v2, 0x1

    .line 208
    invoke-virtual {v1, p1, p2, v2}, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager;->setupServerInitiatedCharacteristicRead(Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;Z)Lio/reactivex/Observable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/Completable;->andThen(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public setupIndication(Ljava/util/UUID;)Lio/reactivex/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            ")",
            "Lio/reactivex/Observable<",
            "Lio/reactivex/Observable<",
            "[B>;>;"
        }
    .end annotation

    .line 184
    sget-object v0, Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;->DEFAULT:Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;

    invoke-virtual {p0, p1, v0}, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleConnectionImpl;->setupIndication(Ljava/util/UUID;Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public setupIndication(Ljava/util/UUID;Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;)Lio/reactivex/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;",
            ")",
            "Lio/reactivex/Observable<",
            "Lio/reactivex/Observable<",
            "[B>;>;"
        }
    .end annotation

    .line 195
    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleConnectionImpl;->getCharacteristic(Ljava/util/UUID;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleConnectionImpl$3;

    invoke-direct {v0, p0, p2}, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleConnectionImpl$3;-><init>(Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleConnectionImpl;Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;)V

    .line 196
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->flatMapObservable(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public setupNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;)Lio/reactivex/Observable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            "Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;",
            ")",
            "Lio/reactivex/Observable<",
            "Lio/reactivex/Observable<",
            "[B>;>;"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleConnectionImpl;->illegalOperationChecker:Lcom/polidea/rxandroidble2_codemao/internal/connection/IllegalOperationChecker;

    const/16 v1, 0x10

    invoke-virtual {v0, p1, v1}, Lcom/polidea/rxandroidble2_codemao/internal/connection/IllegalOperationChecker;->checkAnyPropertyMatches(Landroid/bluetooth/BluetoothGattCharacteristic;I)Lio/reactivex/Completable;

    move-result-object v0

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleConnectionImpl;->notificationIndicationManager:Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager;

    const/4 v2, 0x0

    .line 179
    invoke-virtual {v1, p1, p2, v2}, Lcom/polidea/rxandroidble2_codemao/internal/connection/NotificationAndIndicationManager;->setupServerInitiatedCharacteristicRead(Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;Z)Lio/reactivex/Observable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/Completable;->andThen(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public setupNotification(Ljava/util/UUID;)Lio/reactivex/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            ")",
            "Lio/reactivex/Observable<",
            "Lio/reactivex/Observable<",
            "[B>;>;"
        }
    .end annotation

    .line 155
    sget-object v0, Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;->DEFAULT:Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;

    invoke-virtual {p0, p1, v0}, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleConnectionImpl;->setupNotification(Ljava/util/UUID;Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public setupNotification(Ljava/util/UUID;Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;)Lio/reactivex/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;",
            ")",
            "Lio/reactivex/Observable<",
            "Lio/reactivex/Observable<",
            "[B>;>;"
        }
    .end annotation

    .line 166
    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleConnectionImpl;->getCharacteristic(Ljava/util/UUID;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleConnectionImpl$2;

    invoke-direct {v0, p0, p2}, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleConnectionImpl$2;-><init>(Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleConnectionImpl;Lcom/polidea/rxandroidble2_codemao/NotificationSetupMode;)V

    .line 167
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->flatMapObservable(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;[B)Lio/reactivex/Single;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            "[B)",
            "Lio/reactivex/Single<",
            "[B>;"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleConnectionImpl;->illegalOperationChecker:Lcom/polidea/rxandroidble2_codemao/internal/connection/IllegalOperationChecker;

    const/16 v1, 0x4c

    invoke-virtual {v0, p1, v1}, Lcom/polidea/rxandroidble2_codemao/internal/connection/IllegalOperationChecker;->checkAnyPropertyMatches(Landroid/bluetooth/BluetoothGattCharacteristic;I)Lio/reactivex/Completable;

    move-result-object v0

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleConnectionImpl;->operationQueue:Lcom/polidea/rxandroidble2_codemao/internal/serialization/ConnectionOperationQueue;

    iget-object v2, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleConnectionImpl;->operationsProvider:Lcom/polidea/rxandroidble2_codemao/internal/operations/OperationsProvider;

    .line 245
    invoke-interface {v2, p1, p2}, Lcom/polidea/rxandroidble2_codemao/internal/operations/OperationsProvider;->provideWriteCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;[B)Lcom/polidea/rxandroidble2_codemao/internal/operations/CharacteristicWriteOperation;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/polidea/rxandroidble2_codemao/internal/serialization/ClientOperationQueue;->queue(Lcom/polidea/rxandroidble2_codemao/internal/operations/Operation;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/Completable;->andThen(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    .line 246
    invoke-virtual {p1}, Lio/reactivex/Observable;->firstOrError()Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method
