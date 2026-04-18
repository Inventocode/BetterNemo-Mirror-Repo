.class public final Lcom/codemao/toolssdk/permissionx/request/RequestWriteSettingsPermission;
.super Lcom/codemao/toolssdk/permissionx/request/BaseTask;
.source "RequestWriteSettingsPermission.kt"


# direct methods
.method public constructor <init>(Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;)V
    .registers 3

    const-string v0, "permissionBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/permissionx/request/BaseTask;-><init>(Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;)V

    return-void
.end method


# virtual methods
.method public request()V
    .registers 5

    .line 32
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->shouldRequestWriteSettingsPermission()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 33
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const-string v2, "android.permission.WRITE_SETTINGS"

    if-lt v0, v1, :cond_5e

    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->getTargetSdkVersion()I

    move-result v0

    if-lt v0, v1, :cond_5e

    .line 34
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 36
    invoke-virtual {p0}, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->finish()V

    return-void

    .line 39
    :cond_28
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    iget-object v1, v0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->explainReasonCallback:Lcom/codemao/toolssdk/permissionx/callback/ExplainReasonCallback;

    if-nez v1, :cond_37

    iget-object v0, v0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->explainReasonCallbackWithBeforeParam:Lcom/codemao/toolssdk/permissionx/callback/ExplainReasonCallbackWithBeforeParam;

    if-eqz v0, :cond_33

    goto :goto_37

    .line 50
    :cond_33
    invoke-virtual {p0}, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->finish()V

    goto :goto_73

    .line 40
    :cond_37
    :goto_37
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    iget-object v2, v1, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->explainReasonCallbackWithBeforeParam:Lcom/codemao/toolssdk/permissionx/callback/ExplainReasonCallbackWithBeforeParam;

    if-eqz v2, :cond_51

    .line 43
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->getExplainScope()Lcom/codemao/toolssdk/permissionx/request/ExplainScope;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v2, v1, v0, v3}, Lcom/codemao/toolssdk/permissionx/callback/ExplainReasonCallbackWithBeforeParam;->onExplainReason(Lcom/codemao/toolssdk/permissionx/request/ExplainScope;Ljava/util/List;Z)V

    goto :goto_73

    .line 45
    :cond_51
    iget-object v1, v1, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->explainReasonCallback:Lcom/codemao/toolssdk/permissionx/callback/ExplainReasonCallback;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->getExplainScope()Lcom/codemao/toolssdk/permissionx/request/ExplainScope;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/codemao/toolssdk/permissionx/callback/ExplainReasonCallback;->onExplainReason(Lcom/codemao/toolssdk/permissionx/request/ExplainScope;Ljava/util/List;)V

    goto :goto_73

    .line 54
    :cond_5e
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    iget-object v0, v0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->grantedPermissions:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    iget-object v0, v0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->specialPermissions:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 57
    invoke-virtual {p0}, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->finish()V

    goto :goto_73

    .line 61
    :cond_70
    invoke-virtual {p0}, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->finish()V

    :goto_73
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

    .line 67
    iget-object p1, p0, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    invoke-virtual {p1, p0}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->requestWriteSettingsPermissionNow(Lcom/codemao/toolssdk/permissionx/request/ChainTask;)V

    return-void
.end method
