.class final Lcom/codemao/toolssdk/utils/RxBlueClientUtils$write$1$disposable$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "RxBlueClientUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/utils/RxBlueClientUtils$write$1$disposable$1;->invoke(Lcom/polidea/rxandroidble2_codemao/RxBleConnection;)Lio/reactivex/SingleSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/bluetooth/BluetoothGattCharacteristic;",
        "Lio/reactivex/SingleSource<",
        "+[B>;>;"
    }
.end annotation


# instance fields
.field final synthetic $rxBleConnection:Lcom/polidea/rxandroidble2_codemao/RxBleConnection;

.field final synthetic $writeData:Lcom/codemao/toolssdk/model/dsbridge/WriteData;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2_codemao/RxBleConnection;Lcom/codemao/toolssdk/model/dsbridge/WriteData;)V
    .registers 3

    iput-object p1, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$write$1$disposable$1$2;->$rxBleConnection:Lcom/polidea/rxandroidble2_codemao/RxBleConnection;

    iput-object p2, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$write$1$disposable$1$2;->$writeData:Lcom/codemao/toolssdk/model/dsbridge/WriteData;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroid/bluetooth/BluetoothGattCharacteristic;)Lio/reactivex/SingleSource;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ")",
            "Lio/reactivex/SingleSource<",
            "+[B>;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$write$1$disposable$1$2;->$rxBleConnection:Lcom/polidea/rxandroidble2_codemao/RxBleConnection;

    .line 319
    iget-object v1, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$write$1$disposable$1$2;->$writeData:Lcom/codemao/toolssdk/model/dsbridge/WriteData;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/model/dsbridge/WriteData;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/codemao/toolssdk/utils/HexString;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 317
    invoke-interface {v0, p1, v1}, Lcom/polidea/rxandroidble2_codemao/RxBleConnection;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;[B)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 316
    check-cast p1, Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$write$1$disposable$1$2;->invoke(Landroid/bluetooth/BluetoothGattCharacteristic;)Lio/reactivex/SingleSource;

    move-result-object p1

    return-object p1
.end method
