.class public final Lcom/codemao/toolssdk/permissionx/request/RequestManageExternalStoragePermission;
.super Lcom/codemao/toolssdk/permissionx/request/BaseTask;
.source "RequestManageExternalStoragePermission.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/permissionx/request/RequestManageExternalStoragePermission$Companion;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/permissionx/request/RequestManageExternalStoragePermission$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/permissionx/request/RequestManageExternalStoragePermission$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;)V
    .registers 3

    const-string v0, "permissionBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/permissionx/request/BaseTask;-><init>(Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;)V

    return-void
.end method


# virtual methods
.method public request()V
    .registers 5

    .line 31
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->shouldRequestManageExternalStoragePermission()Z

    move-result v0

    if-eqz v0, :cond_50

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_50

    .line 32
    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 34
    invoke-virtual {p0}, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->finish()V

    return-void

    .line 37
    :cond_18
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    iget-object v1, v0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->explainReasonCallback:Lcom/codemao/toolssdk/permissionx/callback/ExplainReasonCallback;

    if-nez v1, :cond_27

    iget-object v0, v0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->explainReasonCallbackWithBeforeParam:Lcom/codemao/toolssdk/permissionx/callback/ExplainReasonCallbackWithBeforeParam;

    if-eqz v0, :cond_23

    goto :goto_27

    .line 48
    :cond_23
    invoke-virtual {p0}, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->finish()V

    goto :goto_4f

    :cond_27
    :goto_27
    const-string v0, "android.permission.MANAGE_EXTERNAL_STORAGE"

    .line 38
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    iget-object v2, v1, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->explainReasonCallbackWithBeforeParam:Lcom/codemao/toolssdk/permissionx/callback/ExplainReasonCallbackWithBeforeParam;

    if-eqz v2, :cond_43

    .line 41
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->getExplainScope()Lcom/codemao/toolssdk/permissionx/request/ExplainScope;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v2, v1, v0, v3}, Lcom/codemao/toolssdk/permissionx/callback/ExplainReasonCallbackWithBeforeParam;->onExplainReason(Lcom/codemao/toolssdk/permissionx/request/ExplainScope;Ljava/util/List;Z)V

    goto :goto_4f

    .line 43
    :cond_43
    iget-object v1, v1, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->explainReasonCallback:Lcom/codemao/toolssdk/permissionx/callback/ExplainReasonCallback;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->getExplainScope()Lcom/codemao/toolssdk/permissionx/request/ExplainScope;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/codemao/toolssdk/permissionx/callback/ExplainReasonCallback;->onExplainReason(Lcom/codemao/toolssdk/permissionx/request/ExplainScope;Ljava/util/List;)V

    :goto_4f
    return-void

    .line 54
    :cond_50
    invoke-virtual {p0}, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->finish()V

    return-void
.end method

.method public requestAgain(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "permissions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object p1, p0, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    invoke-virtual {p1, p0}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->requestManageExternalStoragePermissionNow(Lcom/codemao/toolssdk/permissionx/request/ChainTask;)V

    return-void
.end method
