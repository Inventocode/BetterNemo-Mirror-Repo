.class final Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1$connect$2;
.super Lkotlin/jvm/internal/Lambda;
.source "BluetoothJsApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1;->connect(Lcom/codemao/toolssdk/model/dsbridge/ConnectData;Lkotlin/jvm/functions/Function1;)V
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
.field final synthetic $connectData:Lcom/codemao/toolssdk/model/dsbridge/ConnectData;

.field final synthetic this$0:Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;Lcom/codemao/toolssdk/model/dsbridge/ConnectData;)V
    .registers 3

    iput-object p1, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1$connect$2;->this$0:Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;

    iput-object p2, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1$connect$2;->$connectData:Lcom/codemao/toolssdk/model/dsbridge/ConnectData;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 246
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1$connect$2;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .registers 3

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    iget-object p1, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1$connect$2;->this$0:Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;->getRxBlueClientUtils()Lcom/codemao/toolssdk/utils/RxBlueClientUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1$connect$2;->$connectData:Lcom/codemao/toolssdk/model/dsbridge/ConnectData;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/ConnectData;->getPeripheralId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->disconnect(Ljava/lang/String;)V

    .line 254
    iget-object p1, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1$connect$2;->this$0:Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;

    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1$connect$2;->$connectData:Lcom/codemao/toolssdk/model/dsbridge/ConnectData;

    invoke-static {p1, v0}, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;->access$disconnect(Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;Lcom/codemao/toolssdk/model/dsbridge/ConnectData;)V

    return-void
.end method
