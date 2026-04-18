.class public interface abstract Lcom/polidea/rxandroidble2_codemao/internal/operations/OperationsProvider;
.super Ljava/lang/Object;
.source "OperationsProvider.java"


# virtual methods
.method public abstract provideReadCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Lcom/polidea/rxandroidble2_codemao/internal/operations/CharacteristicReadOperation;
.end method

.method public abstract provideServiceDiscoveryOperation(JLjava/util/concurrent/TimeUnit;)Lcom/polidea/rxandroidble2_codemao/internal/operations/ServiceDiscoveryOperation;
.end method

.method public abstract provideWriteCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;[B)Lcom/polidea/rxandroidble2_codemao/internal/operations/CharacteristicWriteOperation;
.end method

.method public abstract provideWriteDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;[B)Lcom/polidea/rxandroidble2_codemao/internal/operations/DescriptorWriteOperation;
.end method
