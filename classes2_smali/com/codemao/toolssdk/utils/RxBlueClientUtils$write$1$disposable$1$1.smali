.class final Lcom/codemao/toolssdk/utils/RxBlueClientUtils$write$1$disposable$1$1;
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
        "Landroid/bluetooth/BluetoothGattCharacteristic;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $writeData:Lcom/codemao/toolssdk/model/dsbridge/WriteData;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/model/dsbridge/WriteData;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$write$1$disposable$1$1;->$writeData:Lcom/codemao/toolssdk/model/dsbridge/WriteData;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroid/bluetooth/BluetoothGattCharacteristic;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$write$1$disposable$1$1;->$writeData:Lcom/codemao/toolssdk/model/dsbridge/WriteData;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/WriteData;->getWithResponse()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x2

    goto :goto_10

    :cond_f
    const/4 v0, 0x1

    .line 308
    :goto_10
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 314
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$write$1$disposable$1$1;->$writeData:Lcom/codemao/toolssdk/model/dsbridge/WriteData;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/WriteData;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/toolssdk/utils/HexString;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 307
    check-cast p1, Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$write$1$disposable$1$1;->invoke(Landroid/bluetooth/BluetoothGattCharacteristic;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    return-object p1
.end method
