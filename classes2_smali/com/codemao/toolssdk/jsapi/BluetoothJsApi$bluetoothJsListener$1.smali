.class public final Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1;
.super Ljava/lang/Object;
.source "BluetoothJsApi.kt"

# interfaces
.implements Lcom/codemao/toolssdk/jsapi/BluetoothJsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;-><init>(Lcom/codemao/toolssdk/view/ToolsWebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1;->this$0:Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final requestBlueToothPermission(Lkotlin/jvm/functions/Function1;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 336
    sget-object v0, Lcom/codemao/toolssdk/manager/PermissionManager;->INSTANCE:Lcom/codemao/toolssdk/manager/PermissionManager;

    .line 337
    iget-object v1, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1;->this$0:Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;->getToolsWebView()Lcom/codemao/toolssdk/view/ToolsWebView;

    move-result-object v1

    .line 338
    iget-object v2, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1;->this$0:Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;

    invoke-virtual {v2}, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;->getRxBlueClientUtils()Lcom/codemao/toolssdk/utils/RxBlueClientUtils;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->getRxBleClient()Lcom/polidea/rxandroidble2_codemao/RxBleClient;

    move-result-object v2

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    .line 336
    :goto_16
    new-instance v3, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1$requestBlueToothPermission$1;

    iget-object v4, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1;->this$0:Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;

    invoke-direct {v3, v4, p1}, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1$requestBlueToothPermission$1;-><init>(Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/codemao/toolssdk/manager/PermissionManager;->requestBluetoothPermission(Lcom/codemao/toolssdk/view/ToolsWebView;Lcom/polidea/rxandroidble2_codemao/RxBleClient;Lkotlin/jvm/functions/Function4;)V

    return-void
.end method


# virtual methods
.method public connect(Lcom/codemao/toolssdk/model/dsbridge/ConnectData;Lkotlin/jvm/functions/Function1;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/model/dsbridge/ConnectData;",
            "Lkotlin/jvm/functions/Function1<",
            "-[",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "connectData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "function1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1;->this$0:Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;->getRxBlueClientUtils()Lcom/codemao/toolssdk/utils/RxBlueClientUtils;

    move-result-object v0

    if-eqz v0, :cond_23

    new-instance v1, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1$connect$1;

    iget-object v2, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1;->this$0:Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;

    invoke-direct {v1, v2, p1, p2}, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1$connect$1;-><init>(Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;Lcom/codemao/toolssdk/model/dsbridge/ConnectData;Lkotlin/jvm/functions/Function1;)V

    new-instance p2, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1$connect$2;

    iget-object v2, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1;->this$0:Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;

    invoke-direct {p2, v2, p1}, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1$connect$2;-><init>(Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;Lcom/codemao/toolssdk/model/dsbridge/ConnectData;)V

    invoke-virtual {v0, p1, v1, p2}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->connect(Lcom/codemao/toolssdk/model/dsbridge/ConnectData;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    :cond_23
    return-void
.end method

.method public disconnect(Lcom/codemao/toolssdk/model/dsbridge/ConnectData;)V
    .registers 3

    const-string v0, "discoverData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/ConnectData;->getPeripheralId()Ljava/lang/String;

    move-result-object p1

    .line 260
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1;->this$0:Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;->getRxBlueClientUtils()Lcom/codemao/toolssdk/utils/RxBlueClientUtils;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->disconnect(Ljava/lang/String;)V

    .line 261
    :cond_14
    iget-object p1, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1;->this$0:Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;->access$setLastConnectData$p(Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;Lcom/codemao/toolssdk/model/dsbridge/ConnectData;)V

    return-void
.end method

.method public discover(Lcom/codemao/toolssdk/model/dsbridge/DiscoverData;Lkotlin/jvm/functions/Function1;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/model/dsbridge/DiscoverData;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    const-string v0, "discoverData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "function1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1;->this$0:Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;->getRxBlueClientUtils()Lcom/codemao/toolssdk/utils/RxBlueClientUtils;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/DiscoverData;->getLocalNames()[Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1$discover$1;

    iget-object v2, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1;->this$0:Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;

    invoke-direct {v1, v2}, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1$discover$1;-><init>(Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;)V

    new-instance v2, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1$discover$2;

    iget-object v3, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1;->this$0:Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;

    invoke-direct {v2, v3, p2}, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1$discover$2;-><init>(Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->scanBleDevices([Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    :cond_27
    const-string p1, ""

    .line 242
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public enableNotifications(Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;)V
    .registers 5

    const-string v0, "notificationsData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1;->this$0:Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;->getRxBlueClientUtils()Lcom/codemao/toolssdk/utils/RxBlueClientUtils;

    move-result-object v0

    if-eqz v0, :cond_19

    new-instance v1, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1$enableNotifications$1;

    iget-object v2, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1;->this$0:Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;

    invoke-direct {v1, v2, p1}, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1$enableNotifications$1;-><init>(Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;)V

    sget-object v2, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1$enableNotifications$2;->INSTANCE:Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1$enableNotifications$2;

    invoke-virtual {v0, p1, v1, v2}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->enableNotifications(Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    :cond_19
    return-void
.end method

.method public getPermissionState(Lkotlin/jvm/functions/Function1;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1;->this$0:Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;->getRxBlueClientUtils()Lcom/codemao/toolssdk/utils/RxBlueClientUtils;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->isScanning()Z

    move-result v0

    if-ne v0, v1, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    const/16 v3, 0x6a

    if-eqz v0, :cond_27

    .line 312
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1;->this$0:Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;

    .line 313
    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/StateReturnData;

    invoke-direct {v1, v3}, Lcom/codemao/toolssdk/model/dsbridge/StateReturnData;-><init>(I)V

    .line 312
    invoke-static {v0, v1, p1}, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;->access$changeBluetoothPermissionState(Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;Lcom/codemao/toolssdk/model/dsbridge/StateReturnData;Lkotlin/jvm/functions/Function1;)V

    goto :goto_6b

    .line 317
    :cond_27
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1;->this$0:Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;->getRxBlueClientUtils()Lcom/codemao/toolssdk/utils/RxBlueClientUtils;

    move-result-object v0

    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->getRxBleClient()Lcom/polidea/rxandroidble2_codemao/RxBleClient;

    move-result-object v0

    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Lcom/polidea/rxandroidble2_codemao/RxBleClient;->isScanRuntimePermissionGranted()Z

    move-result v0

    if-ne v0, v1, :cond_3c

    goto :goto_3d

    :cond_3c
    const/4 v1, 0x0

    :goto_3d
    if-eqz v1, :cond_5a

    .line 318
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1;->this$0:Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;->getRxBlueClientUtils()Lcom/codemao/toolssdk/utils/RxBlueClientUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->getRxBleClient()Lcom/polidea/rxandroidble2_codemao/RxBleClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/polidea/rxandroidble2_codemao/RxBleClient;->isConnectRuntimePermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 320
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1;->this$0:Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;

    .line 321
    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/StateReturnData;

    invoke-direct {v1, v3}, Lcom/codemao/toolssdk/model/dsbridge/StateReturnData;-><init>(I)V

    .line 320
    invoke-static {v0, v1, p1}, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;->access$changeBluetoothPermissionState(Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;Lcom/codemao/toolssdk/model/dsbridge/StateReturnData;Lkotlin/jvm/functions/Function1;)V

    goto :goto_6b

    .line 325
    :cond_5a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_64

    .line 326
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1;->requestBlueToothPermission(Lkotlin/jvm/functions/Function1;)V

    goto :goto_6b

    .line 328
    :cond_64
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6b
    return-void
.end method

.method public read(Lcom/codemao/toolssdk/model/dsbridge/ReadData;Lkotlin/jvm/functions/Function1;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/model/dsbridge/ReadData;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    const-string v0, "readData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "function1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1;->this$0:Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;->getRxBlueClientUtils()Lcom/codemao/toolssdk/utils/RxBlueClientUtils;

    move-result-object v0

    if-eqz v0, :cond_21

    new-instance v1, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1$read$1;

    invoke-direct {v1, p2}, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1$read$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance p2, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1$read$2;

    iget-object v2, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1;->this$0:Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;

    invoke-direct {p2, v2, p1}, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1$read$2;-><init>(Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;Lcom/codemao/toolssdk/model/dsbridge/ReadData;)V

    invoke-virtual {v0, p1, v1, p2}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->read(Lcom/codemao/toolssdk/model/dsbridge/ReadData;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    :cond_21
    return-void
.end method

.method public readRssi(Lcom/codemao/toolssdk/model/dsbridge/ConnectData;)I
    .registers 3

    const-string v0, "connectData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1;->this$0:Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;->getRxBlueClientUtils()Lcom/codemao/toolssdk/utils/RxBlueClientUtils;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->readRssi(Lcom/codemao/toolssdk/model/dsbridge/ConnectData;)I

    move-result p1

    goto :goto_14

    :cond_12
    const/16 p1, -0x3e7

    :goto_14
    return p1
.end method

.method public stopDiscover()V
    .registers 2

    .line 307
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1;->this$0:Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;->getRxBlueClientUtils()Lcom/codemao/toolssdk/utils/RxBlueClientUtils;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->disposeBlueScan()V

    :cond_b
    return-void
.end method

.method public write(Lcom/codemao/toolssdk/model/dsbridge/WriteData;Lkotlin/jvm/functions/Function1;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/model/dsbridge/WriteData;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    const-string v0, "writeData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "function1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1;->this$0:Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;->getRxBlueClientUtils()Lcom/codemao/toolssdk/utils/RxBlueClientUtils;

    move-result-object v0

    if-eqz v0, :cond_21

    new-instance v1, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1$write$1;

    invoke-direct {v1, p2}, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1$write$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance p2, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1$write$2;

    iget-object v2, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1;->this$0:Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;

    invoke-direct {p2, v2, p1}, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$bluetoothJsListener$1$write$2;-><init>(Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;Lcom/codemao/toolssdk/model/dsbridge/WriteData;)V

    invoke-virtual {v0, p1, v1, p2}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->write(Lcom/codemao/toolssdk/model/dsbridge/WriteData;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    :cond_21
    return-void
.end method
