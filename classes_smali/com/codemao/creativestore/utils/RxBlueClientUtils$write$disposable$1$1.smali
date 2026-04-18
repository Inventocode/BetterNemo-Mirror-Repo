.class final Lcom/codemao/creativestore/utils/RxBlueClientUtils$write$disposable$1$1;
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
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativestore/utils/RxBlueClientUtils$write$disposable$1;


# direct methods
.method constructor <init>(Lcom/codemao/creativestore/utils/RxBlueClientUtils$write$disposable$1;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils$write$disposable$1$1;->this$0:Lcom/codemao/creativestore/utils/RxBlueClientUtils$write$disposable$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Landroid/bluetooth/BluetoothGattCharacteristic;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils$write$disposable$1$1;->this$0:Lcom/codemao/creativestore/utils/RxBlueClientUtils$write$disposable$1;

    iget-object v0, v0, Lcom/codemao/creativestore/utils/RxBlueClientUtils$write$disposable$1;->$writeData:Lcom/codemao/creativestore/jsbridge/bean/WriteData;

    invoke-virtual {v0}, Lcom/codemao/creativestore/jsbridge/bean/WriteData;->getWithResponse()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x2

    goto :goto_12

    :cond_11
    const/4 v0, 0x1

    :goto_12
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 197
    iget-object v0, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils$write$disposable$1$1;->this$0:Lcom/codemao/creativestore/utils/RxBlueClientUtils$write$disposable$1;

    iget-object v0, v0, Lcom/codemao/creativestore/utils/RxBlueClientUtils$write$disposable$1;->$writeData:Lcom/codemao/creativestore/jsbridge/bean/WriteData;

    invoke-virtual {v0}, Lcom/codemao/creativestore/jsbridge/bean/WriteData;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/creativestore/utils/HexString;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 29
    check-cast p1, Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {p0, p1}, Lcom/codemao/creativestore/utils/RxBlueClientUtils$write$disposable$1$1;->apply(Landroid/bluetooth/BluetoothGattCharacteristic;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    return-object p1
.end method
