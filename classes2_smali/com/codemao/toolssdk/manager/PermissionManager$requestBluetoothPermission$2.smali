.class final Lcom/codemao/toolssdk/manager/PermissionManager$requestBluetoothPermission$2;
.super Lkotlin/jvm/internal/Lambda;
.source "PermissionManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/manager/PermissionManager;->requestBluetoothPermission(Lcom/codemao/toolssdk/view/ToolsWebView;Lcom/polidea/rxandroidble2_codemao/RxBleClient;Lkotlin/jvm/functions/Function4;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $bluetoothPermission:[Ljava/lang/String;

.field final synthetic $callback:Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function4<",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;[Ljava/lang/String;Lkotlin/jvm/functions/Function4;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;-",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;-",
            "Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/manager/PermissionManager$requestBluetoothPermission$2;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/codemao/toolssdk/manager/PermissionManager$requestBluetoothPermission$2;->$bluetoothPermission:[Ljava/lang/String;

    iput-object p3, p0, Lcom/codemao/toolssdk/manager/PermissionManager$requestBluetoothPermission$2;->$callback:Lkotlin/jvm/functions/Function4;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 730
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/manager/PermissionManager$requestBluetoothPermission$2;->invoke(Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Z)V
    .registers 6

    if-eqz p1, :cond_c

    .line 732
    iget-object p1, p0, Lcom/codemao/toolssdk/manager/PermissionManager$requestBluetoothPermission$2;->$bluetoothPermission:[Ljava/lang/String;

    iget-object v0, p0, Lcom/codemao/toolssdk/manager/PermissionManager$requestBluetoothPermission$2;->$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/codemao/toolssdk/manager/PermissionManager$requestBluetoothPermission$2;->$callback:Lkotlin/jvm/functions/Function4;

    invoke-static {p1, v0, v1}, Lcom/codemao/toolssdk/manager/PermissionManager;->access$requestBluetoothPermission$execute$20([Ljava/lang/String;Landroid/content/Context;Lkotlin/jvm/functions/Function4;)V

    goto :goto_2f

    .line 735
    :cond_c
    iget-object p1, p0, Lcom/codemao/toolssdk/manager/PermissionManager$requestBluetoothPermission$2;->$context:Landroid/content/Context;

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Lcom/codemao/toolssdk/permissionx/PermissionX;->init(Landroidx/fragment/app/FragmentActivity;)Lcom/codemao/toolssdk/permissionx/PermissionMediator;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/toolssdk/manager/PermissionManager$requestBluetoothPermission$2;->$bluetoothPermission:[Ljava/lang/String;

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/permissionx/PermissionMediator;->permissions(Ljava/util/List;)Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    move-result-object p1

    .line 736
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/PermissionManager$requestBluetoothPermission$2;->$callback:Lkotlin/jvm/functions/Function4;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/codemao/toolssdk/manager/PermissionManager$requestBluetoothPermission$2;->$bluetoothPermission:[Ljava/lang/String;

    invoke-static {v3}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3, p1}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2f
    return-void
.end method
