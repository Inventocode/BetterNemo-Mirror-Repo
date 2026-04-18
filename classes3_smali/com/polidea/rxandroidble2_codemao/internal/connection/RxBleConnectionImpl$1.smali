.class Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleConnectionImpl$1;
.super Ljava/lang/Object;
.source "RxBleConnectionImpl.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleConnectionImpl;->getCharacteristic(Ljava/util/UUID;)Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/polidea/rxandroidble2_codemao/RxBleDeviceServices;",
        "Lio/reactivex/Single<",
        "+",
        "Landroid/bluetooth/BluetoothGattCharacteristic;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$characteristicUuid:Ljava/util/UUID;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleConnectionImpl;Ljava/util/UUID;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 145
    iput-object p2, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleConnectionImpl$1;->val$characteristicUuid:Ljava/util/UUID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/polidea/rxandroidble2_codemao/RxBleDeviceServices;)Lio/reactivex/Single;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2_codemao/RxBleDeviceServices;",
            ")",
            "Lio/reactivex/Single<",
            "+",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ">;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleConnectionImpl$1;->val$characteristicUuid:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Lcom/polidea/rxandroidble2_codemao/RxBleDeviceServices;->getCharacteristic(Ljava/util/UUID;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 145
    check-cast p1, Lcom/polidea/rxandroidble2_codemao/RxBleDeviceServices;

    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2_codemao/internal/connection/RxBleConnectionImpl$1;->apply(Lcom/polidea/rxandroidble2_codemao/RxBleDeviceServices;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method
