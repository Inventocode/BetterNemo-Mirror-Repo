.class final Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$gotoSystemSettings$2$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CppBluetoothJsApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->gotoSystemSettings(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$gotoSystemSettings$2$1$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 215
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$gotoSystemSettings$2$1$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .registers 4

    .line 216
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$gotoSystemSettings$2$1$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->getRxBlueClientUtils()Lcom/codemao/toolssdk/utils/RxBlueClientUtils;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->getRxBleClient()Lcom/polidea/rxandroidble2_codemao/RxBleClient;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/polidea/rxandroidble2_codemao/RxBleClient;->isScanRuntimePermissionGranted()Z

    move-result v0

    if-ne v0, v1, :cond_17

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    if-eqz v1, :cond_39

    .line 217
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$gotoSystemSettings$2$1$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->getRxBlueClientUtils()Lcom/codemao/toolssdk/utils/RxBlueClientUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->getRxBleClient()Lcom/polidea/rxandroidble2_codemao/RxBleClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/polidea/rxandroidble2_codemao/RxBleClient;->isConnectRuntimePermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 219
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$gotoSystemSettings$2$1$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;

    .line 220
    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/StateReturnData;

    const/16 v2, 0x6a

    invoke-direct {v1, v2}, Lcom/codemao/toolssdk/model/dsbridge/StateReturnData;-><init>(I)V

    .line 219
    sget-object v2, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$gotoSystemSettings$2$1$1$1;->INSTANCE:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$gotoSystemSettings$2$1$1$1;

    invoke-static {v0, v1, v2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->access$changeBluetoothPermissionState(Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;Lcom/codemao/toolssdk/model/dsbridge/StateReturnData;Lkotlin/jvm/functions/Function1;)V

    goto :goto_44

    .line 223
    :cond_39
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$gotoSystemSettings$2$1$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;

    invoke-static {v0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->access$getBluetoothJsListener$p(Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;)Lcom/codemao/toolssdk/jsapi/BluetoothJsListener;

    move-result-object v0

    sget-object v1, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$gotoSystemSettings$2$1$1$2;->INSTANCE:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$gotoSystemSettings$2$1$1$2;

    invoke-interface {v0, v1}, Lcom/codemao/toolssdk/jsapi/BluetoothJsListener;->getPermissionState(Lkotlin/jvm/functions/Function1;)V

    :goto_44
    return-void
.end method
