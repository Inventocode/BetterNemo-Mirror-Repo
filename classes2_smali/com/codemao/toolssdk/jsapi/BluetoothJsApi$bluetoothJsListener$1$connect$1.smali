.class final Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1$connect$1;
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
        "[",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $connectData:Lcom/codemao/toolssdk/model/dsbridge/ConnectData;

.field final synthetic $function1:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;Lcom/codemao/toolssdk/model/dsbridge/ConnectData;Lkotlin/jvm/functions/Function1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;",
            "Lcom/codemao/toolssdk/model/dsbridge/ConnectData;",
            "Lkotlin/jvm/functions/Function1<",
            "-[",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1$connect$1;->this$0:Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;

    iput-object p2, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1$connect$1;->$connectData:Lcom/codemao/toolssdk/model/dsbridge/ConnectData;

    iput-object p3, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1$connect$1;->$function1:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 246
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1$connect$1;->invoke([Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke([Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    .line 248
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1$connect$1;->this$0:Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;

    iget-object v1, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1$connect$1;->$connectData:Lcom/codemao/toolssdk/model/dsbridge/ConnectData;

    invoke-static {v0, v1}, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;->access$setLastConnectData$p(Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;Lcom/codemao/toolssdk/model/dsbridge/ConnectData;)V

    .line 249
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1$connect$1;->$function1:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1
.end method
