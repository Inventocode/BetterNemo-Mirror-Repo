.class public Lcom/polidea/rxandroidble2_codemao/RxBleDeviceServices;
.super Ljava/lang/Object;
.source "RxBleDeviceServices.java"


# instance fields
.field final bluetoothGattServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/RxBleDeviceServices;->bluetoothGattServices:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getBluetoothGattServices()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/RxBleDeviceServices;->bluetoothGattServices:Ljava/util/List;

    return-object v0
.end method

.method public getCharacteristic(Ljava/util/UUID;)Lio/reactivex/Single;
    .registers 3
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

    .line 72
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/RxBleDeviceServices$2;

    invoke-direct {v0, p0, p1}, Lcom/polidea/rxandroidble2_codemao/RxBleDeviceServices$2;-><init>(Lcom/polidea/rxandroidble2_codemao/RxBleDeviceServices;Ljava/util/UUID;)V

    invoke-static {v0}, Lio/reactivex/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method
