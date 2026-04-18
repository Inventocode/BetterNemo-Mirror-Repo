.class Lcom/polidea/rxandroidble2_codemao/RxBleDeviceServices$2;
.super Ljava/lang/Object;
.source "RxBleDeviceServices.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2_codemao/RxBleDeviceServices;->getCharacteristic(Ljava/util/UUID;)Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Landroid/bluetooth/BluetoothGattCharacteristic;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/polidea/rxandroidble2_codemao/RxBleDeviceServices;

.field final synthetic val$characteristicUuid:Ljava/util/UUID;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2_codemao/RxBleDeviceServices;Ljava/util/UUID;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/RxBleDeviceServices$2;->this$0:Lcom/polidea/rxandroidble2_codemao/RxBleDeviceServices;

    iput-object p2, p0, Lcom/polidea/rxandroidble2_codemao/RxBleDeviceServices$2;->val$characteristicUuid:Ljava/util/UUID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Landroid/bluetooth/BluetoothGattCharacteristic;
    .registers 4

    .line 75
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/RxBleDeviceServices$2;->this$0:Lcom/polidea/rxandroidble2_codemao/RxBleDeviceServices;

    iget-object v0, v0, Lcom/polidea/rxandroidble2_codemao/RxBleDeviceServices;->bluetoothGattServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    .line 76
    iget-object v2, p0, Lcom/polidea/rxandroidble2_codemao/RxBleDeviceServices$2;->val$characteristicUuid:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    if-eqz v1, :cond_8

    return-object v1

    .line 81
    :cond_1d
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/exceptions/BleCharacteristicNotFoundException;

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/RxBleDeviceServices$2;->val$characteristicUuid:Ljava/util/UUID;

    invoke-direct {v0, v1}, Lcom/polidea/rxandroidble2_codemao/exceptions/BleCharacteristicNotFoundException;-><init>(Ljava/util/UUID;)V

    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 72
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2_codemao/RxBleDeviceServices$2;->call()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    return-object v0
.end method
