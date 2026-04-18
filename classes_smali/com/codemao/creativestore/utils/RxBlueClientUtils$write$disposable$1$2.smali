.class final Lcom/codemao/creativestore/utils/RxBlueClientUtils$write$disposable$1$2;
.super Ljava/lang/Object;
.source "RxBlueClientUtils.kt"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativestore/utils/RxBlueClientUtils$write$disposable$1;->apply(Lcom/polidea/rxandroidble2_codemao/RxBleConnection;)Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "TT;",
        "Lio/reactivex/SingleSource<",
        "+TR;>;>;"
    }
.end annotation


# instance fields
.field final synthetic $rxBleConnection:Lcom/polidea/rxandroidble2_codemao/RxBleConnection;

.field final synthetic this$0:Lcom/codemao/creativestore/utils/RxBlueClientUtils$write$disposable$1;


# direct methods
.method constructor <init>(Lcom/codemao/creativestore/utils/RxBlueClientUtils$write$disposable$1;Lcom/polidea/rxandroidble2_codemao/RxBleConnection;)V
    .registers 3

    iput-object p1, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils$write$disposable$1$2;->this$0:Lcom/codemao/creativestore/utils/RxBlueClientUtils$write$disposable$1;

    iput-object p2, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils$write$disposable$1$2;->$rxBleConnection:Lcom/polidea/rxandroidble2_codemao/RxBleConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Landroid/bluetooth/BluetoothGattCharacteristic;)Lio/reactivex/Single;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ")",
            "Lio/reactivex/Single<",
            "[B>;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils$write$disposable$1$2;->$rxBleConnection:Lcom/polidea/rxandroidble2_codemao/RxBleConnection;

    .line 202
    iget-object v1, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils$write$disposable$1$2;->this$0:Lcom/codemao/creativestore/utils/RxBlueClientUtils$write$disposable$1;

    iget-object v1, v1, Lcom/codemao/creativestore/utils/RxBlueClientUtils$write$disposable$1;->$writeData:Lcom/codemao/creativestore/jsbridge/bean/WriteData;

    invoke-virtual {v1}, Lcom/codemao/creativestore/jsbridge/bean/WriteData;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/codemao/creativestore/utils/HexString;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 200
    invoke-interface {v0, p1, v1}, Lcom/polidea/rxandroidble2_codemao/RxBleConnection;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;[B)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 29
    check-cast p1, Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {p0, p1}, Lcom/codemao/creativestore/utils/RxBlueClientUtils$write$disposable$1$2;->apply(Landroid/bluetooth/BluetoothGattCharacteristic;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method
