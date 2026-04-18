.class final Lcom/codemao/toolssdk/manager/PermissionManager$requestCameraPermission$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PermissionManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/manager/PermissionManager;->requestCameraPermission(Lcom/codemao/toolssdk/view/ToolsWebView;ZLkotlin/jvm/functions/Function1;)V
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
.field final synthetic $callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $currentPermission:Ljava/lang/String;

.field final synthetic $withoutSettingDialog:Z


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Landroid/content/Context;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Z)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/manager/PermissionManager$requestCameraPermission$1;->$callback:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/codemao/toolssdk/manager/PermissionManager$requestCameraPermission$1;->$currentPermission:Ljava/lang/String;

    iput-object p3, p0, Lcom/codemao/toolssdk/manager/PermissionManager$requestCameraPermission$1;->$context:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/codemao/toolssdk/manager/PermissionManager$requestCameraPermission$1;->$withoutSettingDialog:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 468
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/manager/PermissionManager$requestCameraPermission$1;->invoke(Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Z)V
    .registers 5

    if-eqz p1, :cond_e

    .line 470
    iget-object p1, p0, Lcom/codemao/toolssdk/manager/PermissionManager$requestCameraPermission$1;->$currentPermission:Ljava/lang/String;

    iget-object v0, p0, Lcom/codemao/toolssdk/manager/PermissionManager$requestCameraPermission$1;->$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/codemao/toolssdk/manager/PermissionManager$requestCameraPermission$1;->$callback:Lkotlin/jvm/functions/Function1;

    iget-boolean v2, p0, Lcom/codemao/toolssdk/manager/PermissionManager$requestCameraPermission$1;->$withoutSettingDialog:Z

    invoke-static {p1, v0, v1, v2}, Lcom/codemao/toolssdk/manager/PermissionManager;->access$requestCameraPermission$execute$11(Ljava/lang/String;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Z)V

    goto :goto_15

    .line 472
    :cond_e
    iget-object p1, p0, Lcom/codemao/toolssdk/manager/PermissionManager$requestCameraPermission$1;->$callback:Lkotlin/jvm/functions/Function1;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_15
    return-void
.end method
