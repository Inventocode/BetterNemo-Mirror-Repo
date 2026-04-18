.class final Lcom/codemao/toolssdk/manager/PermissionManager$requestExternalStoragePermission$4;
.super Lkotlin/jvm/internal/Lambda;
.source "PermissionManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/manager/PermissionManager;->requestExternalStoragePermission(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
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
.field final synthetic $array:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/manager/PermissionManager$requestExternalStoragePermission$4;->$callback:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/codemao/toolssdk/manager/PermissionManager$requestExternalStoragePermission$4;->$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/codemao/toolssdk/manager/PermissionManager$requestExternalStoragePermission$4;->$array:Ljava/util/List;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 230
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/manager/PermissionManager$requestExternalStoragePermission$4;->invoke(Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Z)V
    .registers 4

    if-eqz p1, :cond_c

    .line 232
    iget-object p1, p0, Lcom/codemao/toolssdk/manager/PermissionManager$requestExternalStoragePermission$4;->$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/codemao/toolssdk/manager/PermissionManager$requestExternalStoragePermission$4;->$array:Ljava/util/List;

    iget-object v1, p0, Lcom/codemao/toolssdk/manager/PermissionManager$requestExternalStoragePermission$4;->$callback:Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v0, v1}, Lcom/codemao/toolssdk/manager/PermissionManager;->access$requestExternalStoragePermission$execute$7(Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    goto :goto_13

    .line 234
    :cond_c
    iget-object p1, p0, Lcom/codemao/toolssdk/manager/PermissionManager$requestExternalStoragePermission$4;->$callback:Lkotlin/jvm/functions/Function1;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_13
    return-void
.end method
