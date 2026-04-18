.class Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$2;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "RxBleGattCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;)V
    .registers 2

    .line 71
    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method

.method private isDisconnectedOrDisconnecting(I)Z
    .registers 3

    if-eqz p1, :cond_8

    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    goto :goto_8

    :cond_6
    const/4 p1, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 p1, 0x1

    :goto_9
    return p1
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 6

    const-string v0, "onCharacteristicChanged"

    const/4 v1, 0x1

    .line 135
    invoke-static {v0, p1, p2, v1}, Lcom/polidea/rxandroidble2_codemao/internal/logger/LoggerUtil;->logCallback(Ljava/lang/String;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Z)V

    .line 136
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;

    iget-object v0, v0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->nativeCallbackDispatcher:Lcom/polidea/rxandroidble2_codemao/internal/connection/NativeCallbackDispatcher;

    invoke-virtual {v0, p1, p2}, Lcom/polidea/rxandroidble2_codemao/internal/connection/NativeCallbackDispatcher;->notifyNativeChangedCallback(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 137
    invoke-super {p0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 144
    iget-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;

    iget-object p1, p1, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->changedCharacteristicSerializedPublishRelay:Lcom/jakewharton/rxrelay2/Relay;

    invoke-virtual {p1}, Lcom/jakewharton/rxrelay2/Relay;->hasObservers()Z

    move-result p1

    if-eqz p1, :cond_36

    .line 145
    iget-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;

    iget-object p1, p1, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->changedCharacteristicSerializedPublishRelay:Lcom/jakewharton/rxrelay2/Relay;

    new-instance v0, Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicChangedEvent;

    .line 147
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    .line 148
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getInstanceId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 149
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p2

    invoke-direct {v0, v1, v2, p2}, Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicChangedEvent;-><init>(Ljava/util/UUID;Ljava/lang/Integer;[B)V

    .line 145
    invoke-virtual {p1, v0}, Lcom/jakewharton/rxrelay2/Relay;->accept(Ljava/lang/Object;)V

    :cond_36
    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .registers 6

    const-string v0, "onCharacteristicRead"

    const/4 v1, 0x1

    .line 109
    invoke-static {v0, p1, p3, p2, v1}, Lcom/polidea/rxandroidble2_codemao/internal/logger/LoggerUtil;->logCallback(Ljava/lang/String;Landroid/bluetooth/BluetoothGatt;ILandroid/bluetooth/BluetoothGattCharacteristic;Z)V

    .line 110
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;

    iget-object v0, v0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->nativeCallbackDispatcher:Lcom/polidea/rxandroidble2_codemao/internal/connection/NativeCallbackDispatcher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/polidea/rxandroidble2_codemao/internal/connection/NativeCallbackDispatcher;->notifyNativeReadCallback(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 111
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 113
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;

    iget-object v0, v0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->readCharacteristicOutput:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;

    invoke-virtual {v0}, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;->hasObservers()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;

    iget-object v0, v0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->readCharacteristicOutput:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;

    sget-object v1, Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattOperationType;->CHARACTERISTIC_READ:Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattOperationType;

    invoke-static {v0, p1, p2, p3, v1}, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->propagateErrorIfOccurred(Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;ILcom/polidea/rxandroidble2_codemao/exceptions/BleGattOperationType;)Z

    move-result p1

    if-nez p1, :cond_3c

    .line 116
    iget-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;

    iget-object p1, p1, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->readCharacteristicOutput:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;

    iget-object p1, p1, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;->valueRelay:Lcom/jakewharton/rxrelay2/PublishRelay;

    new-instance p3, Lcom/polidea/rxandroidble2_codemao/internal/util/ByteAssociation;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p2

    invoke-direct {p3, v0, p2}, Lcom/polidea/rxandroidble2_codemao/internal/util/ByteAssociation;-><init>(Ljava/lang/Object;[B)V

    invoke-virtual {p1, p3}, Lcom/jakewharton/rxrelay2/PublishRelay;->accept(Ljava/lang/Object;)V

    :cond_3c
    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .registers 6

    const-string v0, "onCharacteristicWrite"

    const/4 v1, 0x0

    .line 122
    invoke-static {v0, p1, p3, p2, v1}, Lcom/polidea/rxandroidble2_codemao/internal/logger/LoggerUtil;->logCallback(Ljava/lang/String;Landroid/bluetooth/BluetoothGatt;ILandroid/bluetooth/BluetoothGattCharacteristic;Z)V

    .line 123
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;

    iget-object v0, v0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->nativeCallbackDispatcher:Lcom/polidea/rxandroidble2_codemao/internal/connection/NativeCallbackDispatcher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/polidea/rxandroidble2_codemao/internal/connection/NativeCallbackDispatcher;->notifyNativeWriteCallback(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 124
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 126
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;

    iget-object v0, v0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->writeCharacteristicOutput:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;

    invoke-virtual {v0}, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;->hasObservers()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;

    iget-object v0, v0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->writeCharacteristicOutput:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;

    sget-object v1, Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattOperationType;->CHARACTERISTIC_WRITE:Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattOperationType;

    invoke-static {v0, p1, p2, p3, v1}, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->propagateErrorIfOccurred(Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;ILcom/polidea/rxandroidble2_codemao/exceptions/BleGattOperationType;)Z

    move-result p1

    if-nez p1, :cond_3c

    .line 129
    iget-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;

    iget-object p1, p1, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->writeCharacteristicOutput:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;

    iget-object p1, p1, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;->valueRelay:Lcom/jakewharton/rxrelay2/PublishRelay;

    new-instance p3, Lcom/polidea/rxandroidble2_codemao/internal/util/ByteAssociation;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p2

    invoke-direct {p3, v0, p2}, Lcom/polidea/rxandroidble2_codemao/internal/util/ByteAssociation;-><init>(Ljava/lang/Object;[B)V

    invoke-virtual {p1, p3}, Lcom/jakewharton/rxrelay2/PublishRelay;->accept(Ljava/lang/Object;)V

    :cond_3c
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .registers 7

    const-string v0, "onConnectionStateChange"

    .line 75
    invoke-static {v0, p1, p2, p3}, Lcom/polidea/rxandroidble2_codemao/internal/logger/LoggerUtil;->logCallback(Ljava/lang/String;Landroid/bluetooth/BluetoothGatt;II)V

    .line 76
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;

    iget-object v0, v0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->nativeCallbackDispatcher:Lcom/polidea/rxandroidble2_codemao/internal/connection/NativeCallbackDispatcher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/polidea/rxandroidble2_codemao/internal/connection/NativeCallbackDispatcher;->notifyNativeConnectionStateCallback(Landroid/bluetooth/BluetoothGatt;II)V

    .line 77
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V

    .line 78
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;

    iget-object v0, v0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->bluetoothGattProvider:Lcom/polidea/rxandroidble2_codemao/internal/connection/BluetoothGattProvider;

    invoke-virtual {v0, p1}, Lcom/polidea/rxandroidble2_codemao/internal/connection/BluetoothGattProvider;->updateBluetoothGatt(Landroid/bluetooth/BluetoothGatt;)V

    .line 80
    invoke-direct {p0, p3}, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$2;->isDisconnectedOrDisconnecting(I)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 81
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;

    iget-object v0, v0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->disconnectionRouter:Lcom/polidea/rxandroidble2_codemao/internal/connection/DisconnectionRouter;

    new-instance v1, Lcom/polidea/rxandroidble2_codemao/exceptions/BleDisconnectedException;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Lcom/polidea/rxandroidble2_codemao/exceptions/BleDisconnectedException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/polidea/rxandroidble2_codemao/internal/connection/DisconnectionRouter;->onDisconnectedException(Lcom/polidea/rxandroidble2_codemao/exceptions/BleDisconnectedException;)V

    goto :goto_41

    :cond_31
    if-eqz p2, :cond_41

    .line 83
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;

    iget-object v0, v0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->disconnectionRouter:Lcom/polidea/rxandroidble2_codemao/internal/connection/DisconnectionRouter;

    new-instance v1, Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattException;

    sget-object v2, Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattOperationType;->CONNECTION_STATE:Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattOperationType;

    invoke-direct {v1, p1, p2, v2}, Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattException;-><init>(Landroid/bluetooth/BluetoothGatt;ILcom/polidea/rxandroidble2_codemao/exceptions/BleGattOperationType;)V

    invoke-virtual {v0, v1}, Lcom/polidea/rxandroidble2_codemao/internal/connection/DisconnectionRouter;->onGattConnectionStateException(Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattException;)V

    .line 88
    :cond_41
    :goto_41
    iget-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;

    iget-object p1, p1, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->connectionStatePublishRelay:Lcom/jakewharton/rxrelay2/PublishRelay;

    invoke-static {p3}, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->mapConnectionStateToRxBleConnectionStatus(I)Lcom/polidea/rxandroidble2_codemao/RxBleConnection$RxBleConnectionState;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jakewharton/rxrelay2/PublishRelay;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public onConnectionUpdated(Landroid/bluetooth/BluetoothGatt;IIII)V
    .registers 13

    const-string v0, "onConnectionUpdated"

    move-object v1, p1

    move v2, p5

    move v3, p2

    move v4, p3

    move v5, p4

    .line 214
    invoke-static/range {v0 .. v5}, Lcom/polidea/rxandroidble2_codemao/internal/logger/LoggerUtil;->logConnectionUpdateCallback(Ljava/lang/String;Landroid/bluetooth/BluetoothGatt;IIII)V

    .line 215
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;

    iget-object v1, v0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->nativeCallbackDispatcher:Lcom/polidea/rxandroidble2_codemao/internal/connection/NativeCallbackDispatcher;

    move-object v2, p1

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/polidea/rxandroidble2_codemao/internal/connection/NativeCallbackDispatcher;->notifyNativeParamsUpdateCallback(Landroid/bluetooth/BluetoothGatt;IIII)V

    .line 216
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;

    iget-object v0, v0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->updatedConnectionOutput:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;

    invoke-virtual {v0}, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;->hasObservers()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;

    iget-object v0, v0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->updatedConnectionOutput:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;

    sget-object v1, Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattOperationType;->CONNECTION_PRIORITY_CHANGE:Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattOperationType;

    .line 217
    invoke-static {v0, p1, p5, v1}, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->propagateErrorIfOccurred(Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;Landroid/bluetooth/BluetoothGatt;ILcom/polidea/rxandroidble2_codemao/exceptions/BleGattOperationType;)Z

    move-result p1

    if-nez p1, :cond_37

    .line 218
    iget-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;

    iget-object p1, p1, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->updatedConnectionOutput:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;

    iget-object p1, p1, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;->valueRelay:Lcom/jakewharton/rxrelay2/PublishRelay;

    new-instance p5, Lcom/polidea/rxandroidble2_codemao/internal/connection/ConnectionParametersImpl;

    invoke-direct {p5, p2, p3, p4}, Lcom/polidea/rxandroidble2_codemao/internal/connection/ConnectionParametersImpl;-><init>(III)V

    invoke-virtual {p1, p5}, Lcom/jakewharton/rxrelay2/PublishRelay;->accept(Ljava/lang/Object;)V

    :cond_37
    return-void
.end method

.method public onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .registers 6

    const-string v0, "onDescriptorRead"

    const/4 v1, 0x1

    .line 157
    invoke-static {v0, p1, p3, p2, v1}, Lcom/polidea/rxandroidble2_codemao/internal/logger/LoggerUtil;->logCallback(Ljava/lang/String;Landroid/bluetooth/BluetoothGatt;ILandroid/bluetooth/BluetoothGattDescriptor;Z)V

    .line 158
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;

    iget-object v0, v0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->nativeCallbackDispatcher:Lcom/polidea/rxandroidble2_codemao/internal/connection/NativeCallbackDispatcher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/polidea/rxandroidble2_codemao/internal/connection/NativeCallbackDispatcher;->notifyNativeDescriptorReadCallback(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 159
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 161
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;

    iget-object v0, v0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->readDescriptorOutput:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;

    invoke-virtual {v0}, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;->hasObservers()Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;

    iget-object v0, v0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->readDescriptorOutput:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;

    sget-object v1, Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattOperationType;->DESCRIPTOR_READ:Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattOperationType;

    .line 162
    invoke-static {v0, p1, p2, p3, v1}, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->propagateErrorIfOccurred(Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;ILcom/polidea/rxandroidble2_codemao/exceptions/BleGattOperationType;)Z

    move-result p1

    if-nez p1, :cond_38

    .line 163
    iget-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;

    iget-object p1, p1, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->readDescriptorOutput:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;

    iget-object p1, p1, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;->valueRelay:Lcom/jakewharton/rxrelay2/PublishRelay;

    new-instance p3, Lcom/polidea/rxandroidble2_codemao/internal/util/ByteAssociation;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object v0

    invoke-direct {p3, p2, v0}, Lcom/polidea/rxandroidble2_codemao/internal/util/ByteAssociation;-><init>(Ljava/lang/Object;[B)V

    invoke-virtual {p1, p3}, Lcom/jakewharton/rxrelay2/PublishRelay;->accept(Ljava/lang/Object;)V

    :cond_38
    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .registers 6

    const-string v0, "onDescriptorWrite"

    const/4 v1, 0x0

    .line 169
    invoke-static {v0, p1, p3, p2, v1}, Lcom/polidea/rxandroidble2_codemao/internal/logger/LoggerUtil;->logCallback(Ljava/lang/String;Landroid/bluetooth/BluetoothGatt;ILandroid/bluetooth/BluetoothGattDescriptor;Z)V

    .line 170
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;

    iget-object v0, v0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->nativeCallbackDispatcher:Lcom/polidea/rxandroidble2_codemao/internal/connection/NativeCallbackDispatcher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/polidea/rxandroidble2_codemao/internal/connection/NativeCallbackDispatcher;->notifyNativeDescriptorWriteCallback(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 171
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 173
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;

    iget-object v0, v0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->writeDescriptorOutput:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;

    invoke-virtual {v0}, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;->hasObservers()Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;

    iget-object v0, v0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->writeDescriptorOutput:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;

    sget-object v1, Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattOperationType;->DESCRIPTOR_WRITE:Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattOperationType;

    .line 174
    invoke-static {v0, p1, p2, p3, v1}, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->propagateErrorIfOccurred(Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;ILcom/polidea/rxandroidble2_codemao/exceptions/BleGattOperationType;)Z

    move-result p1

    if-nez p1, :cond_38

    .line 175
    iget-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;

    iget-object p1, p1, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->writeDescriptorOutput:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;

    iget-object p1, p1, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;->valueRelay:Lcom/jakewharton/rxrelay2/PublishRelay;

    new-instance p3, Lcom/polidea/rxandroidble2_codemao/internal/util/ByteAssociation;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object v0

    invoke-direct {p3, p2, v0}, Lcom/polidea/rxandroidble2_codemao/internal/util/ByteAssociation;-><init>(Ljava/lang/Object;[B)V

    invoke-virtual {p1, p3}, Lcom/jakewharton/rxrelay2/PublishRelay;->accept(Ljava/lang/Object;)V

    :cond_38
    return-void
.end method

.method public onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V
    .registers 6

    const-string v0, "onMtuChanged"

    .line 200
    invoke-static {v0, p1, p3, p2}, Lcom/polidea/rxandroidble2_codemao/internal/logger/LoggerUtil;->logCallback(Ljava/lang/String;Landroid/bluetooth/BluetoothGatt;II)V

    .line 201
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;

    iget-object v0, v0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->nativeCallbackDispatcher:Lcom/polidea/rxandroidble2_codemao/internal/connection/NativeCallbackDispatcher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/polidea/rxandroidble2_codemao/internal/connection/NativeCallbackDispatcher;->notifyNativeMtuChangedCallback(Landroid/bluetooth/BluetoothGatt;II)V

    .line 202
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V

    .line 204
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;

    iget-object v0, v0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->changedMtuOutput:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;

    invoke-virtual {v0}, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;->hasObservers()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;

    iget-object v0, v0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->changedMtuOutput:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;

    sget-object v1, Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattOperationType;->ON_MTU_CHANGED:Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattOperationType;

    .line 205
    invoke-static {v0, p1, p3, v1}, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->propagateErrorIfOccurred(Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;Landroid/bluetooth/BluetoothGatt;ILcom/polidea/rxandroidble2_codemao/exceptions/BleGattOperationType;)Z

    move-result p1

    if-nez p1, :cond_32

    .line 206
    iget-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;

    iget-object p1, p1, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->changedMtuOutput:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;

    iget-object p1, p1, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;->valueRelay:Lcom/jakewharton/rxrelay2/PublishRelay;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jakewharton/rxrelay2/PublishRelay;->accept(Ljava/lang/Object;)V

    :cond_32
    return-void
.end method

.method public onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V
    .registers 6

    const-string v0, "onReadRemoteRssi"

    .line 188
    invoke-static {v0, p1, p3, p2}, Lcom/polidea/rxandroidble2_codemao/internal/logger/LoggerUtil;->logCallback(Ljava/lang/String;Landroid/bluetooth/BluetoothGatt;II)V

    .line 189
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;

    iget-object v0, v0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->nativeCallbackDispatcher:Lcom/polidea/rxandroidble2_codemao/internal/connection/NativeCallbackDispatcher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/polidea/rxandroidble2_codemao/internal/connection/NativeCallbackDispatcher;->notifyNativeReadRssiCallback(Landroid/bluetooth/BluetoothGatt;II)V

    .line 190
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V

    .line 192
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;

    iget-object v0, v0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->readRssiOutput:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;

    invoke-virtual {v0}, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;->hasObservers()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;

    iget-object v0, v0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->readRssiOutput:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;

    sget-object v1, Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattOperationType;->READ_RSSI:Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattOperationType;

    .line 193
    invoke-static {v0, p1, p3, v1}, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->propagateErrorIfOccurred(Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;Landroid/bluetooth/BluetoothGatt;ILcom/polidea/rxandroidble2_codemao/exceptions/BleGattOperationType;)Z

    move-result p1

    if-nez p1, :cond_32

    .line 194
    iget-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;

    iget-object p1, p1, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->readRssiOutput:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;

    iget-object p1, p1, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;->valueRelay:Lcom/jakewharton/rxrelay2/PublishRelay;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jakewharton/rxrelay2/PublishRelay;->accept(Ljava/lang/Object;)V

    :cond_32
    return-void
.end method

.method public onReliableWriteCompleted(Landroid/bluetooth/BluetoothGatt;I)V
    .registers 4

    const-string v0, "onReliableWriteCompleted"

    .line 181
    invoke-static {v0, p1, p2}, Lcom/polidea/rxandroidble2_codemao/internal/logger/LoggerUtil;->logCallback(Ljava/lang/String;Landroid/bluetooth/BluetoothGatt;I)V

    .line 182
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;

    iget-object v0, v0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->nativeCallbackDispatcher:Lcom/polidea/rxandroidble2_codemao/internal/connection/NativeCallbackDispatcher;

    invoke-virtual {v0, p1, p2}, Lcom/polidea/rxandroidble2_codemao/internal/connection/NativeCallbackDispatcher;->notifyNativeReliableWriteCallback(Landroid/bluetooth/BluetoothGatt;I)V

    .line 183
    invoke-super {p0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onReliableWriteCompleted(Landroid/bluetooth/BluetoothGatt;I)V

    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .registers 5

    const-string v0, "onServicesDiscovered"

    .line 97
    invoke-static {v0, p1, p2}, Lcom/polidea/rxandroidble2_codemao/internal/logger/LoggerUtil;->logCallback(Ljava/lang/String;Landroid/bluetooth/BluetoothGatt;I)V

    .line 98
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;

    iget-object v0, v0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->nativeCallbackDispatcher:Lcom/polidea/rxandroidble2_codemao/internal/connection/NativeCallbackDispatcher;

    invoke-virtual {v0, p1, p2}, Lcom/polidea/rxandroidble2_codemao/internal/connection/NativeCallbackDispatcher;->notifyNativeServicesDiscoveredCallback(Landroid/bluetooth/BluetoothGatt;I)V

    .line 99
    invoke-super {p0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V

    .line 101
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;

    iget-object v0, v0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->servicesDiscoveredOutput:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;

    invoke-virtual {v0}, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;->hasObservers()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;

    iget-object v0, v0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->servicesDiscoveredOutput:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;

    sget-object v1, Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattOperationType;->SERVICE_DISCOVERY:Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattOperationType;

    .line 102
    invoke-static {v0, p1, p2, v1}, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->propagateErrorIfOccurred(Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;Landroid/bluetooth/BluetoothGatt;ILcom/polidea/rxandroidble2_codemao/exceptions/BleGattOperationType;)Z

    move-result p2

    if-nez p2, :cond_37

    .line 103
    iget-object p2, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$2;->this$0:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;

    iget-object p2, p2, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback;->servicesDiscoveredOutput:Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;

    iget-object p2, p2, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleGattCallback$Output;->valueRelay:Lcom/jakewharton/rxrelay2/PublishRelay;

    new-instance v0, Lcom/polidea/rxandroidble2_codemao/RxBleDeviceServices;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/polidea/rxandroidble2_codemao/RxBleDeviceServices;-><init>(Ljava/util/List;)V

    invoke-virtual {p2, v0}, Lcom/jakewharton/rxrelay2/PublishRelay;->accept(Ljava/lang/Object;)V

    :cond_37
    return-void
.end method
