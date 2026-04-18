.class final Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$changeBluetoothPermissionState$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BluetoothJsApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;->changeBluetoothPermissionState(Lcom/codemao/toolssdk/model/dsbridge/StateReturnData;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$changeBluetoothPermissionState$1$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;",
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
.method public static synthetic $r8$lambda$TmY0uTfkKb8Me00DB01hL42gE2Q(Lkotlin/jvm/functions/Function1;ILcom/codemao/toolssdk/jsapi/BluetoothJsApi;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$changeBluetoothPermissionState$1;->invoke$lambda$0(Lkotlin/jvm/functions/Function1;ILcom/codemao/toolssdk/jsapi/BluetoothJsApi;)V

    return-void
.end method

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

    iput-object p1, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$changeBluetoothPermissionState$1;->this$0:Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;

    iput-object p2, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$changeBluetoothPermissionState$1;->$callback:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$0(Lkotlin/jvm/functions/Function1;ILcom/codemao/toolssdk/jsapi/BluetoothJsApi;)V
    .registers 4

    const-string v0, "$callback"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 444
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    new-instance p0, Lcom/codemao/toolssdk/model/dsbridge/StateReturnData;

    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/model/dsbridge/StateReturnData;-><init>(I)V

    invoke-static {p2, p0}, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;->access$permissionState(Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;Lcom/codemao/toolssdk/model/dsbridge/StateReturnData;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 433
    check-cast p1, Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$changeBluetoothPermissionState$1;->invoke(Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;)V
    .registers 9

    if-nez p1, :cond_4

    const/4 v0, -0x1

    goto :goto_c

    .line 434
    :cond_4
    sget-object v0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$changeBluetoothPermissionState$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    :goto_c
    const/16 v1, 0x68

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2c

    const/4 v3, 0x2

    if-eq v0, v3, :cond_29

    const/4 v3, 0x3

    if-eq v0, v3, :cond_26

    const/4 v3, 0x4

    if-eq v0, v3, :cond_23

    const/4 v3, 0x5

    if-eq v0, v3, :cond_20

    const/16 v0, 0x64

    goto :goto_2e

    :cond_20
    const/16 v0, 0x69

    goto :goto_2e

    :cond_23
    const/16 v0, 0x68

    goto :goto_2e

    :cond_26
    const/16 v0, 0x67

    goto :goto_2e

    :cond_29
    const/16 v0, 0x66

    goto :goto_2e

    :cond_2c
    const/16 v0, 0x6a

    .line 443
    :goto_2e
    iget-object v3, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$changeBluetoothPermissionState$1;->this$0:Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;

    invoke-virtual {v3}, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;->getToolsWebView()Lcom/codemao/toolssdk/view/ToolsWebView;

    move-result-object v3

    if-eqz v3, :cond_49

    iget-object v4, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$changeBluetoothPermissionState$1;->$callback:Lkotlin/jvm/functions/Function1;

    iget-object v5, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$changeBluetoothPermissionState$1;->this$0:Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;

    new-instance v6, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$changeBluetoothPermissionState$1$$ExternalSyntheticLambda0;

    invoke-direct {v6, v4, v0, v5}, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$changeBluetoothPermissionState$1$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;ILcom/codemao/toolssdk/jsapi/BluetoothJsApi;)V

    if-ne v0, v1, :cond_44

    const-wide/16 v0, 0x64

    goto :goto_46

    :cond_44
    const-wide/16 v0, 0x0

    :goto_46
    invoke-virtual {v3, v6, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 447
    :cond_49
    sget-object v0, Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;->LOCATION_SERVICES_NOT_ENABLED:Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;

    if-ne p1, v0, :cond_7b

    .line 448
    iget-object p1, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$changeBluetoothPermissionState$1;->this$0:Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;

    invoke-static {p1}, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;->access$getLastConnectData$p(Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;)Lcom/codemao/toolssdk/model/dsbridge/ConnectData;

    move-result-object p1

    if-eqz p1, :cond_63

    iget-object p1, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$changeBluetoothPermissionState$1;->this$0:Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;

    invoke-static {p1}, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;->access$getLastConnectData$p(Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;)Lcom/codemao/toolssdk/model/dsbridge/ConnectData;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/ConnectData;->getPeripheralId()Ljava/lang/String;

    move-result-object p1

    goto :goto_65

    :cond_63
    const-string p1, ""

    :goto_65
    if-eqz p1, :cond_6f

    .line 449
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_6e

    goto :goto_6f

    :cond_6e
    const/4 v2, 0x0

    :cond_6f
    :goto_6f
    if-nez v2, :cond_7b

    .line 450
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$changeBluetoothPermissionState$1;->this$0:Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;

    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/ConnectData;

    invoke-direct {v1, p1}, Lcom/codemao/toolssdk/model/dsbridge/ConnectData;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;->access$notifyBluetoothDisconnect(Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;Lcom/codemao/toolssdk/model/dsbridge/ConnectData;)V

    :cond_7b
    return-void
.end method
