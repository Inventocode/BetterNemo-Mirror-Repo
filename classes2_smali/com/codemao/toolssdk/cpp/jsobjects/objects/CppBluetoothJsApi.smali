.class public final Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;
.super Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBaseJsApi;
.source "CppBluetoothJsApi.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCppBluetoothJsApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CppBluetoothJsApi.kt\ncom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,518:1\n1#2:519\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$Companion;

.field private static DISCONNECT:Ljava/lang/String;

.field private static NOTIFICATION:Ljava/lang/String;

.field private static PERIPHERAL:Ljava/lang/String;

.field private static PERMISSION_STATE:Ljava/lang/String;

.field private static namespace:Ljava/lang/String;


# instance fields
.field private final bluetoothJsListener:Lcom/codemao/toolssdk/jsapi/BluetoothJsListener;

.field private final gson:Lcom/google/gson/Gson;

.field private lastConnectData:Lcom/codemao/toolssdk/model/dsbridge/ConnectData;

.field private permissionBuilder:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

.field private final rxBlueClientUtils:Lcom/codemao/toolssdk/utils/RxBlueClientUtils;

.field private final toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;


# direct methods
.method public static synthetic $r8$lambda$dgaf2zLwNwczYXQ0X2cU2pSSfH0(Lcom/codemao/toolssdk/model/dsbridge/SettingPathType;Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;Landroid/app/Activity;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->gotoSystemSettings$lambda$2$lambda$1(Lcom/codemao/toolssdk/model/dsbridge/SettingPathType;Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;Landroid/app/Activity;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->Companion:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$Companion;

    const-string v0, "bluetooth"

    .line 52
    sput-object v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->namespace:Ljava/lang/String;

    const-string v0, "peripheral"

    .line 57
    sput-object v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->PERIPHERAL:Ljava/lang/String;

    const-string v0, "notification"

    .line 58
    sput-object v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->NOTIFICATION:Ljava/lang/String;

    const-string v0, "disconnect"

    .line 59
    sput-object v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->DISCONNECT:Ljava/lang/String;

    const-string v0, "permissionState"

    .line 60
    sput-object v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->PERMISSION_STATE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;)V
    .registers 3

    .line 49
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBaseJsApi;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    .line 63
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->gson:Lcom/google/gson/Gson;

    if-eqz p1, :cond_1a

    .line 64
    invoke-interface {p1}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getViewContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1a

    new-instance v0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;

    invoke-direct {v0, p1}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;-><init>(Landroid/content/Context;)V

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    iput-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->rxBlueClientUtils:Lcom/codemao/toolssdk/utils/RxBlueClientUtils;

    .line 237
    new-instance p1, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$bluetoothJsListener$1;

    invoke-direct {p1, p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$bluetoothJsListener$1;-><init>(Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;)V

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->bluetoothJsListener:Lcom/codemao/toolssdk/jsapi/BluetoothJsListener;

    return-void
.end method

.method public static final synthetic access$changeBluetoothPermissionState(Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;Lcom/codemao/toolssdk/model/dsbridge/StateReturnData;Lkotlin/jvm/functions/Function1;)V
    .registers 3

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->changeBluetoothPermissionState(Lcom/codemao/toolssdk/model/dsbridge/StateReturnData;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic access$checkBluetoothPermission(Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;)Z
    .registers 1

    .line 49
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->checkBluetoothPermission()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$disconnect(Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;Lcom/codemao/toolssdk/model/dsbridge/ConnectData;)V
    .registers 2

    .line 49
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->disconnect(Lcom/codemao/toolssdk/model/dsbridge/ConnectData;)V

    return-void
.end method

.method public static final synthetic access$getBluetoothJsListener$p(Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;)Lcom/codemao/toolssdk/jsapi/BluetoothJsListener;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->bluetoothJsListener:Lcom/codemao/toolssdk/jsapi/BluetoothJsListener;

    return-object p0
.end method

.method public static final synthetic access$getLastConnectData$p(Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;)Lcom/codemao/toolssdk/model/dsbridge/ConnectData;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->lastConnectData:Lcom/codemao/toolssdk/model/dsbridge/ConnectData;

    return-object p0
.end method

.method public static final synthetic access$getNamespace$cp()Ljava/lang/String;
    .registers 1

    .line 49
    sget-object v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$notification(Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;Lcom/codemao/toolssdk/model/dsbridge/NotificationReturnData;)V
    .registers 2

    .line 49
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->notification(Lcom/codemao/toolssdk/model/dsbridge/NotificationReturnData;)V

    return-void
.end method

.method public static final synthetic access$notifyBluetoothDisconnect(Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;Lcom/codemao/toolssdk/model/dsbridge/ConnectData;)V
    .registers 2

    .line 49
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->notifyBluetoothDisconnect(Lcom/codemao/toolssdk/model/dsbridge/ConnectData;)V

    return-void
.end method

.method public static final synthetic access$peripheral(Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;)V
    .registers 2

    .line 49
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->peripheral(Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;)V

    return-void
.end method

.method public static final synthetic access$permissionState(Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;Lcom/codemao/toolssdk/model/dsbridge/StateReturnData;)V
    .registers 2

    .line 49
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->permissionState(Lcom/codemao/toolssdk/model/dsbridge/StateReturnData;)V

    return-void
.end method

.method public static final synthetic access$setLastConnectData$p(Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;Lcom/codemao/toolssdk/model/dsbridge/ConnectData;)V
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->lastConnectData:Lcom/codemao/toolssdk/model/dsbridge/ConnectData;

    return-void
.end method

.method public static final synthetic access$setPermissionBuilder$p(Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;)V
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->permissionBuilder:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    return-void
.end method

.method private final changeBluetoothPermissionState(Lcom/codemao/toolssdk/model/dsbridge/StateReturnData;Lkotlin/jvm/functions/Function1;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/model/dsbridge/StateReturnData;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 440
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/StateReturnData;->getState()I

    move-result v0

    const/16 v1, 0x6a

    if-ne v0, v1, :cond_27

    .line 442
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->rxBlueClientUtils:Lcom/codemao/toolssdk/utils/RxBlueClientUtils;

    if-eqz p1, :cond_14

    new-instance v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$changeBluetoothPermissionState$1;

    invoke-direct {v0, p0, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$changeBluetoothPermissionState$1;-><init>(Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->observeStateChange(Lkotlin/jvm/functions/Function1;)V

    .line 463
    :cond_14
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->rxBlueClientUtils:Lcom/codemao/toolssdk/utils/RxBlueClientUtils;

    if-eqz p1, :cond_35

    const/4 v0, 0x0

    new-instance v1, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$changeBluetoothPermissionState$2;

    invoke-direct {v1, p0, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$changeBluetoothPermissionState$2;-><init>(Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$changeBluetoothPermissionState$3;

    invoke-direct {v2, p0, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$changeBluetoothPermissionState$3;-><init>(Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->scanBleDevices([Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    goto :goto_35

    .line 498
    :cond_27
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/StateReturnData;->getState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->permissionState(Lcom/codemao/toolssdk/model/dsbridge/StateReturnData;)V

    :cond_35
    :goto_35
    return-void
.end method

.method private final checkBluetoothPermission()Z
    .registers 5

    .line 504
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    const/4 v1, 0x1

    if-eqz v0, :cond_1f

    .line 506
    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getViewContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.BLUETOOTH_SCAN"

    .line 505
    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 510
    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getViewContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "android.permission.BLUETOOTH_CONNECT"

    .line 509
    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v2, :cond_1e

    if-nez v0, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :cond_1f
    :goto_1f
    return v1
.end method

.method private final disconnect(Lcom/codemao/toolssdk/model/dsbridge/ConnectData;)V
    .registers 3

    .line 420
    sget-object v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->DISCONNECT:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->postMessage(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 421
    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->lastConnectData:Lcom/codemao/toolssdk/model/dsbridge/ConnectData;

    return-void
.end method

.method private static final gotoSystemSettings$lambda$2$lambda$1(Lcom/codemao/toolssdk/model/dsbridge/SettingPathType;Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;Landroid/app/Activity;)V
    .registers 7

    const-string v0, "$settingPathType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Lcom/codemao/toolssdk/model/dsbridge/SettingPathType;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 214
    sget-object p2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "web通知原生跳转设置的path："

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/model/dsbridge/SettingPathType;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dBle(Ljava/lang/String;)V

    .line 215
    iget-object p0, p1, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->permissionBuilder:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    if-eqz p0, :cond_6d

    new-instance p2, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$gotoSystemSettings$2$1$1;

    invoke-direct {p2, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$gotoSystemSettings$2$1$1;-><init>(Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;)V

    invoke-virtual {p0, p2}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->forwardToSettings(Lkotlin/jvm/functions/Function0;)V

    goto :goto_6d

    .line 226
    :cond_40
    invoke-virtual {p0}, Lcom/codemao/toolssdk/model/dsbridge/SettingPathType;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v0, "bluetooth"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_55

    .line 227
    sget-object p0, Lcom/codemao/toolssdk/utils/BluetoothUtils;->INSTANCE:Lcom/codemao/toolssdk/utils/BluetoothUtils;

    invoke-virtual {p0, p2}, Lcom/codemao/toolssdk/utils/BluetoothUtils;->skipBleSettingsPage(Landroid/app/Activity;)V

    goto :goto_6d

    .line 228
    :cond_55
    invoke-virtual {p0}, Lcom/codemao/toolssdk/model/dsbridge/SettingPathType;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string p1, "location"

    invoke-static {p0, p1, v1, v2, v3}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6d

    .line 229
    new-instance p0, Landroid/content/Intent;

    const-string p1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 p1, 0x3ee

    .line 230
    invoke-virtual {p2, p0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_6d
    :goto_6d
    return-void
.end method

.method private final notification(Lcom/codemao/toolssdk/model/dsbridge/NotificationReturnData;)V
    .registers 3

    .line 416
    sget-object v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->NOTIFICATION:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->postMessage(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private final notifyBluetoothDisconnect(Lcom/codemao/toolssdk/model/dsbridge/ConnectData;)V
    .registers 4

    .line 431
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->rxBlueClientUtils:Lcom/codemao/toolssdk/utils/RxBlueClientUtils;

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/ConnectData;->getPeripheralId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->disconnect(Ljava/lang/String;)V

    .line 432
    :cond_b
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->disconnect(Lcom/codemao/toolssdk/model/dsbridge/ConnectData;)V

    return-void
.end method

.method private final peripheral(Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;)V
    .registers 6

    .line 405
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "通知web扫描结果："

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;->getBleDevice()Lcom/polidea/rxandroidble2_codemao/RxBleDevice;

    move-result-object v2

    invoke-interface {v2}, Lcom/polidea/rxandroidble2_codemao/RxBleDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dBle(Ljava/lang/String;)V

    .line 407
    sget-object v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->PERIPHERAL:Ljava/lang/String;

    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/PeripheralReturnData;

    .line 408
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;->getBleDevice()Lcom/polidea/rxandroidble2_codemao/RxBleDevice;

    move-result-object v2

    invoke-interface {v2}, Lcom/polidea/rxandroidble2_codemao/RxBleDevice;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    .line 409
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;->getRssi()I

    move-result v3

    .line 410
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;->getBleDevice()Lcom/polidea/rxandroidble2_codemao/RxBleDevice;

    move-result-object p1

    invoke-interface {p1}, Lcom/polidea/rxandroidble2_codemao/RxBleDevice;->getName()Ljava/lang/String;

    move-result-object p1

    .line 407
    invoke-direct {v1, v2, v3, p1}, Lcom/codemao/toolssdk/model/dsbridge/PeripheralReturnData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 406
    invoke-direct {p0, v0, v1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->postMessage(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private final permissionState(Lcom/codemao/toolssdk/model/dsbridge/StateReturnData;)V
    .registers 4

    .line 426
    sget-object v0, Lcom/codemao/toolssdk/func/logevent/BleLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/BleLogEventUtils;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/StateReturnData;->getState()I

    move-result v1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/func/logevent/BleLogEventUtils;->permission(I)V

    .line 427
    sget-object v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->PERMISSION_STATE:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->postMessage(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private final postMessage(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 392
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    if-nez v0, :cond_5

    return-void

    .line 395
    :cond_5
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/MessageOptions;

    invoke-direct {v0, p1, p2}, Lcom/codemao/toolssdk/model/dsbridge/MessageOptions;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 396
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    .line 397
    sget-object p2, Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb;->Companion:Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion;

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    .line 398
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 397
    sget-object p1, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$postMessage$1;->INSTANCE:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$postMessage$1;

    sget-object v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$postMessage$2;->INSTANCE:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$postMessage$2;

    invoke-virtual {p2, v1, v2, p1, v0}, Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion;->postAsyncEvent(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewCallHandler;Lorg/json/JSONObject;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method


# virtual methods
.method public final connect(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "web通知原生connect"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dBle(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->gson:Lcom/google/gson/Gson;

    .line 101
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/codemao/toolssdk/model/dsbridge/ConnectData;

    .line 100
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "gson.fromJson(\n         …ata::class.java\n        )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/ConnectData;

    .line 104
    new-instance v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$connect$function1$1;

    invoke-direct {v0, p2, p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$connect$function1$1;-><init>(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;)V

    .line 108
    iget-object p2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->bluetoothJsListener:Lcom/codemao/toolssdk/jsapi/BluetoothJsListener;

    invoke-interface {p2, p1, v0}, Lcom/codemao/toolssdk/jsapi/BluetoothJsListener;->connect(Lcom/codemao/toolssdk/model/dsbridge/ConnectData;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final destroy()V
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->rxBlueClientUtils:Lcom/codemao/toolssdk/utils/RxBlueClientUtils;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->onDestroy()V

    :cond_7
    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->permissionBuilder:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    return-void
.end method

.method public final disconnect(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->gson:Lcom/google/gson/Gson;

    .line 114
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/codemao/toolssdk/model/dsbridge/ConnectData;

    .line 113
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "gson.fromJson(\n         …ata::class.java\n        )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/ConnectData;

    .line 117
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->bluetoothJsListener:Lcom/codemao/toolssdk/jsapi/BluetoothJsListener;

    invoke-interface {v0, p1}, Lcom/codemao/toolssdk/jsapi/BluetoothJsListener;->disconnect(Lcom/codemao/toolssdk/model/dsbridge/ConnectData;)V

    .line 118
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->gson:Lcom/google/gson/Gson;

    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v1, 0x7d0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    return-void
.end method

.method public final discover(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "web通知原生discover"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dBle(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->gson:Lcom/google/gson/Gson;

    .line 81
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/codemao/toolssdk/model/dsbridge/DiscoverData;

    .line 80
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "gson.fromJson(\n         …ata::class.java\n        )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/DiscoverData;

    .line 84
    new-instance v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$discover$function1$1;

    invoke-direct {v0, p0, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$discover$function1$1;-><init>(Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    .line 94
    iget-object p2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->bluetoothJsListener:Lcom/codemao/toolssdk/jsapi/BluetoothJsListener;

    invoke-interface {p2, p1, v0}, Lcom/codemao/toolssdk/jsapi/BluetoothJsListener;->discover(Lcom/codemao/toolssdk/model/dsbridge/DiscoverData;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final enableNotifications(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->gson:Lcom/google/gson/Gson;

    .line 148
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;

    .line 147
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "gson.fromJson(\n         …ata::class.java\n        )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;

    .line 151
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->bluetoothJsListener:Lcom/codemao/toolssdk/jsapi/BluetoothJsListener;

    invoke-interface {v0, p1}, Lcom/codemao/toolssdk/jsapi/BluetoothJsListener;->enableNotifications(Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;)V

    .line 152
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->gson:Lcom/google/gson/Gson;

    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v1, 0x7d0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    return-void
.end method

.method public final getGson()Lcom/google/gson/Gson;
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->gson:Lcom/google/gson/Gson;

    return-object v0
.end method

.method public final getPermissionState(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "handler"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v0, "web通知原生获取权限状态"

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dBle(Ljava/lang/String;)V

    .line 174
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->bluetoothJsListener:Lcom/codemao/toolssdk/jsapi/BluetoothJsListener;

    new-instance v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$getPermissionState$1;

    invoke-direct {v0, p2, p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$getPermissionState$1;-><init>(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;)V

    invoke-interface {p1, v0}, Lcom/codemao/toolssdk/jsapi/BluetoothJsListener;->getPermissionState(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final getRxBlueClientUtils()Lcom/codemao/toolssdk/utils/RxBlueClientUtils;
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->rxBlueClientUtils:Lcom/codemao/toolssdk/utils/RxBlueClientUtils;

    return-object v0
.end method

.method public final getToolsWebView()Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    return-object v0
.end method

.method public final gotoSystemSettings(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "web通知原生跳转设置"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dBle(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->gson:Lcom/google/gson/Gson;

    .line 185
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/codemao/toolssdk/model/dsbridge/SettingPathType;

    .line 184
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "gson.fromJson(\n         …ype::class.java\n        )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/SettingPathType;

    .line 188
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getViewContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_2f

    :cond_2e
    move-object v0, v1

    :goto_2f
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_36

    check-cast v0, Landroid/app/Activity;

    goto :goto_37

    :cond_36
    move-object v0, v1

    .line 190
    :goto_37
    iget-object v2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    if-eqz v2, :cond_49

    invoke-interface {v2}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getToolsManager()Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    move-result-object v2

    if-eqz v2, :cond_49

    .line 191
    new-instance v3, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$gotoSystemSettings$1;

    invoke-direct {v3, v0, p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$gotoSystemSettings$1;-><init>(Landroid/app/Activity;Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;)V

    .line 190
    invoke-interface {v2, v3}, Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerFields;->setActivityResultCallback(Lcom/codemao/toolssdk/manager/ActivityResultCallback;)V

    :cond_49
    if-eqz v0, :cond_53

    .line 212
    new-instance v2, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, p0, v0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/model/dsbridge/SettingPathType;Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;Landroid/app/Activity;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 234
    :cond_53
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->gson:Lcom/google/gson/Gson;

    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v2, 0x7d0

    invoke-direct {v0, v2, v1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    return-void
.end method

.method public final read(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/codemao/toolssdk/model/dsbridge/ReadData;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "gson.fromJson(msg.toStri…(), ReadData::class.java)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/ReadData;

    .line 138
    new-instance v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$read$function1$1;

    invoke-direct {v0, p2, p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$read$function1$1;-><init>(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;)V

    .line 142
    iget-object p2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->bluetoothJsListener:Lcom/codemao/toolssdk/jsapi/BluetoothJsListener;

    invoke-interface {p2, p1, v0}, Lcom/codemao/toolssdk/jsapi/BluetoothJsListener;->read(Lcom/codemao/toolssdk/model/dsbridge/ReadData;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final readRssi(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->gson:Lcom/google/gson/Gson;

    .line 158
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/codemao/toolssdk/model/dsbridge/ConnectData;

    .line 157
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "gson.fromJson(\n         …ata::class.java\n        )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/ConnectData;

    .line 161
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->bluetoothJsListener:Lcom/codemao/toolssdk/jsapi/BluetoothJsListener;

    invoke-interface {v0, p1}, Lcom/codemao/toolssdk/jsapi/BluetoothJsListener;->readRssi(Lcom/codemao/toolssdk/model/dsbridge/ConnectData;)I

    move-result p1

    .line 162
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->gson:Lcom/google/gson/Gson;

    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v2, 0x7d0

    invoke-direct {v1, v2, p1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    return-void
.end method

.method public final stopDiscover(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "handler"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->bluetoothJsListener:Lcom/codemao/toolssdk/jsapi/BluetoothJsListener;

    invoke-interface {p1}, Lcom/codemao/toolssdk/jsapi/BluetoothJsListener;->stopDiscover()V

    .line 168
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->gson:Lcom/google/gson/Gson;

    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v1, 0x7d0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    return-void
.end method

.method public final write(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->gson:Lcom/google/gson/Gson;

    .line 124
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/codemao/toolssdk/model/dsbridge/WriteData;

    .line 123
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "gson.fromJson(\n         …ata::class.java\n        )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/WriteData;

    .line 127
    new-instance v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$write$function$1;

    invoke-direct {v0, p2, p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$write$function$1;-><init>(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;)V

    .line 131
    iget-object p2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->bluetoothJsListener:Lcom/codemao/toolssdk/jsapi/BluetoothJsListener;

    invoke-interface {p2, p1, v0}, Lcom/codemao/toolssdk/jsapi/BluetoothJsListener;->write(Lcom/codemao/toolssdk/model/dsbridge/WriteData;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
