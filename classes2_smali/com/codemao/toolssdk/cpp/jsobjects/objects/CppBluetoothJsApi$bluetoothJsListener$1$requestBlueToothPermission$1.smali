.class final Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$bluetoothJsListener$1$requestBlueToothPermission$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CppBluetoothJsApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$bluetoothJsListener$1;->requestBlueToothPermission(Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function4<",
        "Ljava/lang/Boolean;",
        "Ljava/util/List<",
        "+",
        "Ljava/lang/String;",
        ">;",
        "Ljava/util/List<",
        "+",
        "Ljava/lang/String;",
        ">;",
        "Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;Lkotlin/jvm/functions/Function1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$bluetoothJsListener$1$requestBlueToothPermission$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;

    iput-object p2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$bluetoothJsListener$1$requestBlueToothPermission$1;->$callback:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 345
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Ljava/util/List;

    check-cast p3, Ljava/util/List;

    check-cast p4, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$bluetoothJsListener$1$requestBlueToothPermission$1;->invoke(ZLjava/util/List;Ljava/util/List;Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(ZLjava/util/List;Ljava/util/List;Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;",
            ")V"
        }
    .end annotation

    const-string p1, "grantedList"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 2>"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$bluetoothJsListener$1$requestBlueToothPermission$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;

    invoke-static {p1, p4}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->access$setPermissionBuilder$p(Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;)V

    .line 351
    sget-object p1, Lcom/codemao/toolssdk/utils/BluetoothPermissionRequest;->INSTANCE:Lcom/codemao/toolssdk/utils/BluetoothPermissionRequest;

    .line 353
    iget-object p3, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$bluetoothJsListener$1$requestBlueToothPermission$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;

    invoke-virtual {p3}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->getRxBlueClientUtils()Lcom/codemao/toolssdk/utils/RxBlueClientUtils;

    move-result-object p3

    const/4 p4, 0x0

    if-eqz p3, :cond_1f

    invoke-virtual {p3}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->getRxBleClient()Lcom/polidea/rxandroidble2_codemao/RxBleClient;

    move-result-object p3

    goto :goto_20

    :cond_1f
    move-object p3, p4

    .line 351
    :goto_20
    invoke-virtual {p1, p2, p3}, Lcom/codemao/toolssdk/utils/BluetoothPermissionRequest;->isRequestLocationPermissionGranted(Ljava/util/List;Lcom/polidea/rxandroidble2_codemao/RxBleClient;)Z

    move-result p3

    if-eqz p3, :cond_62

    .line 356
    iget-object p3, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$bluetoothJsListener$1$requestBlueToothPermission$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;

    .line 357
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/StateReturnData;

    const/16 v1, 0x6a

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/model/dsbridge/StateReturnData;-><init>(I)V

    .line 358
    iget-object v2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$bluetoothJsListener$1$requestBlueToothPermission$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 356
    invoke-static {p3, v0, v2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->access$changeBluetoothPermissionState(Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;Lcom/codemao/toolssdk/model/dsbridge/StateReturnData;Lkotlin/jvm/functions/Function1;)V

    .line 370
    iget-object p3, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$bluetoothJsListener$1$requestBlueToothPermission$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;

    invoke-virtual {p3}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->getRxBlueClientUtils()Lcom/codemao/toolssdk/utils/RxBlueClientUtils;

    move-result-object p3

    if-eqz p3, :cond_40

    invoke-virtual {p3}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->getRxBleClient()Lcom/polidea/rxandroidble2_codemao/RxBleClient;

    move-result-object p4

    .line 368
    :cond_40
    invoke-virtual {p1, p2, p4}, Lcom/codemao/toolssdk/utils/BluetoothPermissionRequest;->isRequestAndroidSBlueEnablePermissionGranted(Ljava/util/List;Lcom/polidea/rxandroidble2_codemao/RxBleClient;)Z

    move-result p1

    if-eqz p1, :cond_53

    .line 373
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$bluetoothJsListener$1$requestBlueToothPermission$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;

    .line 374
    new-instance p2, Lcom/codemao/toolssdk/model/dsbridge/StateReturnData;

    invoke-direct {p2, v1}, Lcom/codemao/toolssdk/model/dsbridge/StateReturnData;-><init>(I)V

    .line 375
    iget-object p3, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$bluetoothJsListener$1$requestBlueToothPermission$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 373
    invoke-static {p1, p2, p3}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->access$changeBluetoothPermissionState(Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;Lcom/codemao/toolssdk/model/dsbridge/StateReturnData;Lkotlin/jvm/functions/Function1;)V

    return-void

    .line 378
    :cond_53
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$bluetoothJsListener$1$requestBlueToothPermission$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;

    .line 379
    new-instance p2, Lcom/codemao/toolssdk/model/dsbridge/StateReturnData;

    const/16 p3, 0x68

    invoke-direct {p2, p3}, Lcom/codemao/toolssdk/model/dsbridge/StateReturnData;-><init>(I)V

    .line 380
    iget-object p3, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$bluetoothJsListener$1$requestBlueToothPermission$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 378
    invoke-static {p1, p2, p3}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->access$changeBluetoothPermissionState(Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;Lcom/codemao/toolssdk/model/dsbridge/StateReturnData;Lkotlin/jvm/functions/Function1;)V

    return-void

    .line 361
    :cond_62
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$bluetoothJsListener$1$requestBlueToothPermission$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;

    .line 362
    new-instance p2, Lcom/codemao/toolssdk/model/dsbridge/StateReturnData;

    const/16 p3, 0x67

    invoke-direct {p2, p3}, Lcom/codemao/toolssdk/model/dsbridge/StateReturnData;-><init>(I)V

    .line 363
    iget-object p3, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$bluetoothJsListener$1$requestBlueToothPermission$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 361
    invoke-static {p1, p2, p3}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->access$changeBluetoothPermissionState(Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;Lcom/codemao/toolssdk/model/dsbridge/StateReturnData;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
