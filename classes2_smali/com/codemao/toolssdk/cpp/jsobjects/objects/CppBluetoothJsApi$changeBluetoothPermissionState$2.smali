.class final Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$changeBluetoothPermissionState$2;
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

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;",
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
.method public static synthetic $r8$lambda$kGrQBoumHm5GHCLV01rSglWhwXw(Lkotlin/jvm/functions/Function1;Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$changeBluetoothPermissionState$2;->invoke$lambda$0(Lkotlin/jvm/functions/Function1;Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;)V

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

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$changeBluetoothPermissionState$2;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;

    iput-object p2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$changeBluetoothPermissionState$2;->$callback:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$0(Lkotlin/jvm/functions/Function1;Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;)V
    .registers 4

    const-string v0, "$callback"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x6a

    .line 468
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    new-instance p0, Lcom/codemao/toolssdk/model/dsbridge/StateReturnData;

    invoke-direct {p0, v0}, Lcom/codemao/toolssdk/model/dsbridge/StateReturnData;-><init>(I)V

    invoke-static {p1, p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->access$permissionState(Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;Lcom/codemao/toolssdk/model/dsbridge/StateReturnData;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 463
    check-cast p1, Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$changeBluetoothPermissionState$2;->invoke(Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;)V
    .registers 5

    .line 465
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$changeBluetoothPermissionState$2;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->getRxBlueClientUtils()Lcom/codemao/toolssdk/utils/RxBlueClientUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->disposeBlueScan()V

    .line 466
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$changeBluetoothPermissionState$2;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->getToolsWebView()Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    move-result-object p1

    if-eqz p1, :cond_25

    invoke-interface {p1}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getCurrentView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_25

    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$changeBluetoothPermissionState$2;->$callback:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$changeBluetoothPermissionState$2;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;

    new-instance v2, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$changeBluetoothPermissionState$2$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$changeBluetoothPermissionState$2$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_25
    return-void
.end method
