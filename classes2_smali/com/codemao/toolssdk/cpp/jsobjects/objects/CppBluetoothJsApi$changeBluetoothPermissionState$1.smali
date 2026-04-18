.class final Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$changeBluetoothPermissionState$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CppBluetoothJsApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->changeBluetoothPermissionState(Lcom/codemao/toolssdk/model/dsbridge/StateReturnData;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$changeBluetoothPermissionState$1$WhenMappings;
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

.field final synthetic this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;


# direct methods
.method public static synthetic $r8$lambda$NT46LLy7QBcnZzNglr9PEuRKyIw(Lkotlin/jvm/functions/Function1;ILcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$changeBluetoothPermissionState$1;->invoke$lambda$0(Lkotlin/jvm/functions/Function1;ILcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;)V

    return-void
.end method

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

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$changeBluetoothPermissionState$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;

    iput-object p2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$changeBluetoothPermissionState$1;->$callback:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$0(Lkotlin/jvm/functions/Function1;ILcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;)V
    .registers 4

    const-string v0, "$callback"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 453
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    new-instance p0, Lcom/codemao/toolssdk/model/dsbridge/StateReturnData;

    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/model/dsbridge/StateReturnData;-><init>(I)V

    invoke-static {p2, p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->access$permissionState(Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;Lcom/codemao/toolssdk/model/dsbridge/StateReturnData;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 442
    check-cast p1, Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$changeBluetoothPermissionState$1;->invoke(Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;)V
    .registers 9

    if-nez p1, :cond_4

    const/4 v0, -0x1

    goto :goto_c

    .line 443
    :cond_4
    sget-object v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$changeBluetoothPermissionState$1$WhenMappings;->$EnumSwitchMapping$0:[I

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

    .line 452
    :goto_2e
    iget-object v3, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$changeBluetoothPermissionState$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;

    invoke-virtual {v3}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->getToolsWebView()Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    move-result-object v3

    if-eqz v3, :cond_4f

    invoke-interface {v3}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getCurrentView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_4f

    iget-object v4, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$changeBluetoothPermissionState$1;->$callback:Lkotlin/jvm/functions/Function1;

    iget-object v5, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$changeBluetoothPermissionState$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;

    new-instance v6, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$changeBluetoothPermissionState$1$$ExternalSyntheticLambda0;

    invoke-direct {v6, v4, v0, v5}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$changeBluetoothPermissionState$1$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;ILcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;)V

    if-ne v0, v1, :cond_4a

    const-wide/16 v0, 0x64

    goto :goto_4c

    :cond_4a
    const-wide/16 v0, 0x0

    :goto_4c
    invoke-virtual {v3, v6, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 456
    :cond_4f
    sget-object v0, Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;->LOCATION_SERVICES_NOT_ENABLED:Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;

    if-ne p1, v0, :cond_81

    .line 457
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$changeBluetoothPermissionState$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;

    invoke-static {p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->access$getLastConnectData$p(Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;)Lcom/codemao/toolssdk/model/dsbridge/ConnectData;

    move-result-object p1

    if-eqz p1, :cond_69

    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$changeBluetoothPermissionState$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;

    invoke-static {p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->access$getLastConnectData$p(Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;)Lcom/codemao/toolssdk/model/dsbridge/ConnectData;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/ConnectData;->getPeripheralId()Ljava/lang/String;

    move-result-object p1

    goto :goto_6b

    :cond_69
    const-string p1, ""

    :goto_6b
    if-eqz p1, :cond_75

    .line 458
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_74

    goto :goto_75

    :cond_74
    const/4 v2, 0x0

    :cond_75
    :goto_75
    if-nez v2, :cond_81

    .line 459
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$changeBluetoothPermissionState$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;

    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/ConnectData;

    invoke-direct {v1, p1}, Lcom/codemao/toolssdk/model/dsbridge/ConnectData;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->access$notifyBluetoothDisconnect(Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;Lcom/codemao/toolssdk/model/dsbridge/ConnectData;)V

    :cond_81
    return-void
.end method
