.class public Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattCharacteristicException;
.super Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattException;
.source "BleGattCharacteristicException.java"


# instance fields
.field public final characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;ILcom/polidea/rxandroidble2_codemao/exceptions/BleGattOperationType;)V
    .registers 5

    .line 22
    invoke-direct {p0, p1, p3, p4}, Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattException;-><init>(Landroid/bluetooth/BluetoothGatt;ILcom/polidea/rxandroidble2_codemao/exceptions/BleGattOperationType;)V

    .line 23
    iput-object p2, p0, Lcom/polidea/rxandroidble2_codemao/exceptions/BleGattCharacteristicException;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-void
.end method
