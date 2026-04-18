.class final Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1$requestBlueToothPermission$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BluetoothJsApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1;->requestBlueToothPermission(Lkotlin/jvm/functions/Function1;)V
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

.field final synthetic this$0:Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;Lkotlin/jvm/functions/Function1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1$requestBlueToothPermission$1;->this$0:Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;

    iput-object p2, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1$requestBlueToothPermission$1;->$callback:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 336
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Ljava/util/List;

    check-cast p3, Ljava/util/List;

    check-cast p4, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1$requestBlueToothPermission$1;->invoke(ZLjava/util/List;Ljava/util/List;Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;)V

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

    .line 341
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "请求权限的结果，permissionBuilder:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dBle(Ljava/lang/String;)V

    .line 342
    iget-object p1, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1$requestBlueToothPermission$1;->this$0:Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;

    invoke-static {p1, p4}, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;->access$setPermissionBuilder$p(Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;)V

    .line 343
    sget-object p1, Lcom/codemao/toolssdk/utils/BluetoothPermissionRequest;->INSTANCE:Lcom/codemao/toolssdk/utils/BluetoothPermissionRequest;

    .line 345
    iget-object p3, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1$requestBlueToothPermission$1;->this$0:Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;

    invoke-virtual {p3}, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;->getRxBlueClientUtils()Lcom/codemao/toolssdk/utils/RxBlueClientUtils;

    move-result-object p3

    const/4 p4, 0x0

    if-eqz p3, :cond_35

    invoke-virtual {p3}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->getRxBleClient()Lcom/polidea/rxandroidble2_codemao/RxBleClient;

    move-result-object p3

    goto :goto_36

    :cond_35
    move-object p3, p4

    .line 343
    :goto_36
    invoke-virtual {p1, p2, p3}, Lcom/codemao/toolssdk/utils/BluetoothPermissionRequest;->isRequestLocationPermissionGranted(Ljava/util/List;Lcom/polidea/rxandroidble2_codemao/RxBleClient;)Z

    move-result p3

    if-eqz p3, :cond_78

    .line 348
    iget-object p3, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1$requestBlueToothPermission$1;->this$0:Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;

    .line 349
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/StateReturnData;

    const/16 v1, 0x6a

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/model/dsbridge/StateReturnData;-><init>(I)V

    .line 350
    iget-object v2, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1$requestBlueToothPermission$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 348
    invoke-static {p3, v0, v2}, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;->access$changeBluetoothPermissionState(Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;Lcom/codemao/toolssdk/model/dsbridge/StateReturnData;Lkotlin/jvm/functions/Function1;)V

    .line 362
    iget-object p3, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1$requestBlueToothPermission$1;->this$0:Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;

    invoke-virtual {p3}, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;->getRxBlueClientUtils()Lcom/codemao/toolssdk/utils/RxBlueClientUtils;

    move-result-object p3

    if-eqz p3, :cond_56

    invoke-virtual {p3}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->getRxBleClient()Lcom/polidea/rxandroidble2_codemao/RxBleClient;

    move-result-object p4

    .line 360
    :cond_56
    invoke-virtual {p1, p2, p4}, Lcom/codemao/toolssdk/utils/BluetoothPermissionRequest;->isRequestAndroidSBlueEnablePermissionGranted(Ljava/util/List;Lcom/polidea/rxandroidble2_codemao/RxBleClient;)Z

    move-result p1

    if-eqz p1, :cond_69

    .line 365
    iget-object p1, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1$requestBlueToothPermission$1;->this$0:Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;

    .line 366
    new-instance p2, Lcom/codemao/toolssdk/model/dsbridge/StateReturnData;

    invoke-direct {p2, v1}, Lcom/codemao/toolssdk/model/dsbridge/StateReturnData;-><init>(I)V

    .line 367
    iget-object p3, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1$requestBlueToothPermission$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 365
    invoke-static {p1, p2, p3}, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;->access$changeBluetoothPermissionState(Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;Lcom/codemao/toolssdk/model/dsbridge/StateReturnData;Lkotlin/jvm/functions/Function1;)V

    return-void

    .line 370
    :cond_69
    iget-object p1, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1$requestBlueToothPermission$1;->this$0:Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;

    .line 371
    new-instance p2, Lcom/codemao/toolssdk/model/dsbridge/StateReturnData;

    const/16 p3, 0x68

    invoke-direct {p2, p3}, Lcom/codemao/toolssdk/model/dsbridge/StateReturnData;-><init>(I)V

    .line 372
    iget-object p3, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1$requestBlueToothPermission$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 370
    invoke-static {p1, p2, p3}, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;->access$changeBluetoothPermissionState(Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;Lcom/codemao/toolssdk/model/dsbridge/StateReturnData;Lkotlin/jvm/functions/Function1;)V

    return-void

    .line 353
    :cond_78
    iget-object p1, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1$requestBlueToothPermission$1;->this$0:Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;

    .line 354
    new-instance p2, Lcom/codemao/toolssdk/model/dsbridge/StateReturnData;

    const/16 p3, 0x67

    invoke-direct {p2, p3}, Lcom/codemao/toolssdk/model/dsbridge/StateReturnData;-><init>(I)V

    .line 355
    iget-object p3, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1$requestBlueToothPermission$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 353
    invoke-static {p1, p2, p3}, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;->access$changeBluetoothPermissionState(Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;Lcom/codemao/toolssdk/model/dsbridge/StateReturnData;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
