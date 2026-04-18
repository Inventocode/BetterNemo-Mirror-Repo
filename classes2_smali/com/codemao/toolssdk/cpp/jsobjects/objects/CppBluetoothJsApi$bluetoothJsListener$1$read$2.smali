.class final Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$bluetoothJsListener$1$read$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CppBluetoothJsApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$bluetoothJsListener$1;->read(Lcom/codemao/toolssdk/model/dsbridge/ReadData;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $readData:Lcom/codemao/toolssdk/model/dsbridge/ReadData;

.field final synthetic this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;Lcom/codemao/toolssdk/model/dsbridge/ReadData;)V
    .registers 3

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$bluetoothJsListener$1$read$2;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;

    iput-object p2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$bluetoothJsListener$1$read$2;->$readData:Lcom/codemao/toolssdk/model/dsbridge/ReadData;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 285
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$bluetoothJsListener$1$read$2;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .registers 4

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    instance-of p1, p1, Lcom/polidea/rxandroidble2_codemao/exceptions/BleDisconnectedException;

    if-eqz p1, :cond_19

    .line 291
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$bluetoothJsListener$1$read$2;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;

    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/ConnectData;

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$bluetoothJsListener$1$read$2;->$readData:Lcom/codemao/toolssdk/model/dsbridge/ReadData;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/model/dsbridge/ReadData;->getPeripheralId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/model/dsbridge/ConnectData;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->access$notifyBluetoothDisconnect(Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;Lcom/codemao/toolssdk/model/dsbridge/ConnectData;)V

    :cond_19
    return-void
.end method
