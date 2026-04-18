.class final Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$changeBluetoothPermissionState$3;
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

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/polidea/rxandroidble2_codemao/exceptions/BleScanException;",
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

    iput-object p1, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$changeBluetoothPermissionState$3;->this$0:Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;

    iput-object p2, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$changeBluetoothPermissionState$3;->$callback:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 454
    check-cast p1, Lcom/polidea/rxandroidble2_codemao/exceptions/BleScanException;

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$changeBluetoothPermissionState$3;->invoke(Lcom/polidea/rxandroidble2_codemao/exceptions/BleScanException;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/polidea/rxandroidble2_codemao/exceptions/BleScanException;)V
    .registers 5

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 465
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2_codemao/exceptions/BleScanException;->getReason()I

    move-result v0

    const/16 v1, 0x64

    packed-switch v0, :pswitch_data_4c

    packed-switch v0, :pswitch_data_64

    goto :goto_20

    :pswitch_12  #0x4
    const/16 v1, 0x69

    goto :goto_20

    :pswitch_15  #0x3
    const/16 v1, 0x67

    goto :goto_20

    :pswitch_18  #0x2
    const/16 v1, 0x66

    goto :goto_20

    :pswitch_1b  #0x1
    const/16 v1, 0x68

    goto :goto_20

    :pswitch_1e  #0x0, 0x5, 0x6, 0x7, 0x8, 0x9, 0x7ffffffe
    const/16 v1, 0x65

    .line 480
    :goto_20
    :pswitch_20  #0x7fffffff
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v0, v2, :cond_37

    invoke-virtual {p1}, Lcom/polidea/rxandroidble2_codemao/exceptions/BleScanException;->getReason()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_37

    .line 481
    iget-object p1, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$changeBluetoothPermissionState$3;->this$0:Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;

    invoke-static {p1}, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;->access$checkBluetoothPermission(Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;)Z

    move-result p1

    if-nez p1, :cond_37

    const/16 v1, 0x6b

    .line 484
    :cond_37
    iget-object p1, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$changeBluetoothPermissionState$3;->$callback:Lkotlin/jvm/functions/Function1;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    iget-object p1, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$changeBluetoothPermissionState$3;->this$0:Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;

    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/StateReturnData;

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/model/dsbridge/StateReturnData;-><init>(I)V

    invoke-static {p1, v0}, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;->access$permissionState(Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;Lcom/codemao/toolssdk/model/dsbridge/StateReturnData;)V

    return-void

    nop

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_1e  #00000000
        :pswitch_1b  #00000001
        :pswitch_18  #00000002
        :pswitch_15  #00000003
        :pswitch_12  #00000004
        :pswitch_1e  #00000005
        :pswitch_1e  #00000006
        :pswitch_1e  #00000007
        :pswitch_1e  #00000008
        :pswitch_1e  #00000009
    .end packed-switch

    :pswitch_data_64
    .packed-switch 0x7ffffffe
        :pswitch_1e  #7ffffffe
        :pswitch_20  #7fffffff
    .end packed-switch
.end method
