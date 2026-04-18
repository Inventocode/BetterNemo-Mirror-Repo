.class public Lcom/polidea/rxandroidble2_codemao/internal/operations/OperationsProviderImpl;
.super Ljava/lang/Object;
.source "OperationsProviderImpl.java"

# interfaces
.implements Lcom/polidea/rxandroidble2_codemao/internal/operations/OperationsProvider;


# instance fields
.field private final bleServicesLogger:Lcom/polidea/rxandroidble2_codemao/internal/logger/LoggerUtilBluetoothServices;

.field private final bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

.field private final rssiReadOperationProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/operations/ReadRssiOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final rxBleGattCallback:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;

.field private final timeoutConfiguration:Lcom/polidea/rxandroidble2_codemao/internal/operations/TimeoutConfiguration;

.field private final timeoutScheduler:Lio/reactivex/Scheduler;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;Landroid/bluetooth/BluetoothGatt;Lcom/polidea/rxandroidble2_codemao/internal/logger/LoggerUtilBluetoothServices;Lcom/polidea/rxandroidble2_codemao/internal/operations/TimeoutConfiguration;Lio/reactivex/Scheduler;Lio/reactivex/Scheduler;Lbleshadow/javax/inject/Provider;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;",
            "Landroid/bluetooth/BluetoothGatt;",
            "Lcom/polidea/rxandroidble2_codemao/internal/logger/LoggerUtilBluetoothServices;",
            "Lcom/polidea/rxandroidble2_codemao/internal/operations/TimeoutConfiguration;",
            "Lio/reactivex/Scheduler;",
            "Lio/reactivex/Scheduler;",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2_codemao/internal/operations/ReadRssiOperation;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/operations/OperationsProviderImpl;->rxBleGattCallback:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;

    .line 43
    iput-object p2, p0, Lcom/polidea/rxandroidble2_codemao/internal/operations/OperationsProviderImpl;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 44
    iput-object p3, p0, Lcom/polidea/rxandroidble2_codemao/internal/operations/OperationsProviderImpl;->bleServicesLogger:Lcom/polidea/rxandroidble2_codemao/internal/logger/LoggerUtilBluetoothServices;

    .line 45
    iput-object p4, p0, Lcom/polidea/rxandroidble2_codemao/internal/operations/OperationsProviderImpl;->timeoutConfiguration:Lcom/polidea/rxandroidble2_codemao/internal/operations/TimeoutConfiguration;

    .line 47
    iput-object p6, p0, Lcom/polidea/rxandroidble2_codemao/internal/operations/OperationsProviderImpl;->timeoutScheduler:Lio/reactivex/Scheduler;

    .line 48
    iput-object p7, p0, Lcom/polidea/rxandroidble2_codemao/internal/operations/OperationsProviderImpl;->rssiReadOperationProvider:Lbleshadow/javax/inject/Provider;

    return-void
.end method


# virtual methods
.method public provideReadCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Lcom/polidea/rxandroidble2_codemao/internal/operations/CharacteristicReadOperation;
    .registers 6

    .line 78
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/internal/operations/CharacteristicReadOperation;

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/internal/operations/OperationsProviderImpl;->rxBleGattCallback:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;

    iget-object v2, p0, Lcom/polidea/rxandroidble2_codemao/internal/operations/OperationsProviderImpl;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v3, p0, Lcom/polidea/rxandroidble2_codemao/internal/operations/OperationsProviderImpl;->timeoutConfiguration:Lcom/polidea/rxandroidble2_codemao/internal/operations/TimeoutConfiguration;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/polidea/rxandroidble2_codemao/internal/operations/CharacteristicReadOperation;-><init>(Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;Landroid/bluetooth/BluetoothGatt;Lcom/polidea/rxandroidble2_codemao/internal/operations/TimeoutConfiguration;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    return-object v0
.end method

.method public provideServiceDiscoveryOperation(JLjava/util/concurrent/TimeUnit;)Lcom/polidea/rxandroidble2_codemao/internal/operations/ServiceDiscoveryOperation;
    .registers 10

    .line 93
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/internal/operations/ServiceDiscoveryOperation;

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/internal/operations/OperationsProviderImpl;->rxBleGattCallback:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;

    iget-object v2, p0, Lcom/polidea/rxandroidble2_codemao/internal/operations/OperationsProviderImpl;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v3, p0, Lcom/polidea/rxandroidble2_codemao/internal/operations/OperationsProviderImpl;->bleServicesLogger:Lcom/polidea/rxandroidble2_codemao/internal/logger/LoggerUtilBluetoothServices;

    new-instance v4, Lcom/polidea/rxandroidble2_codemao/internal/operations/TimeoutConfiguration;

    iget-object v5, p0, Lcom/polidea/rxandroidble2_codemao/internal/operations/OperationsProviderImpl;->timeoutScheduler:Lio/reactivex/Scheduler;

    invoke-direct {v4, p1, p2, p3, v5}, Lcom/polidea/rxandroidble2_codemao/internal/operations/TimeoutConfiguration;-><init>(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/polidea/rxandroidble2_codemao/internal/operations/ServiceDiscoveryOperation;-><init>(Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;Landroid/bluetooth/BluetoothGatt;Lcom/polidea/rxandroidble2_codemao/internal/logger/LoggerUtilBluetoothServices;Lcom/polidea/rxandroidble2_codemao/internal/operations/TimeoutConfiguration;)V

    return-object v0
.end method

.method public provideWriteCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;[B)Lcom/polidea/rxandroidble2_codemao/internal/operations/CharacteristicWriteOperation;
    .registers 10

    .line 99
    new-instance v6, Lcom/polidea/rxandroidble2_codemao/internal/operations/CharacteristicWriteOperation;

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/internal/operations/OperationsProviderImpl;->rxBleGattCallback:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;

    iget-object v2, p0, Lcom/polidea/rxandroidble2_codemao/internal/operations/OperationsProviderImpl;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v3, p0, Lcom/polidea/rxandroidble2_codemao/internal/operations/OperationsProviderImpl;->timeoutConfiguration:Lcom/polidea/rxandroidble2_codemao/internal/operations/TimeoutConfiguration;

    move-object v0, v6

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/polidea/rxandroidble2_codemao/internal/operations/CharacteristicWriteOperation;-><init>(Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;Landroid/bluetooth/BluetoothGatt;Lcom/polidea/rxandroidble2_codemao/internal/operations/TimeoutConfiguration;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    return-object v6
.end method

.method public provideWriteDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;[B)Lcom/polidea/rxandroidble2_codemao/internal/operations/DescriptorWriteOperation;
    .registers 11

    .line 104
    new-instance v7, Lcom/polidea/rxandroidble2_codemao/internal/operations/DescriptorWriteOperation;

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/internal/operations/OperationsProviderImpl;->rxBleGattCallback:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;

    iget-object v2, p0, Lcom/polidea/rxandroidble2_codemao/internal/operations/OperationsProviderImpl;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v3, p0, Lcom/polidea/rxandroidble2_codemao/internal/operations/OperationsProviderImpl;->timeoutConfiguration:Lcom/polidea/rxandroidble2_codemao/internal/operations/TimeoutConfiguration;

    const/4 v4, 0x2

    move-object v0, v7

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/polidea/rxandroidble2_codemao/internal/operations/DescriptorWriteOperation;-><init>(Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;Landroid/bluetooth/BluetoothGatt;Lcom/polidea/rxandroidble2_codemao/internal/operations/TimeoutConfiguration;ILandroid/bluetooth/BluetoothGattDescriptor;[B)V

    return-object v7
.end method
