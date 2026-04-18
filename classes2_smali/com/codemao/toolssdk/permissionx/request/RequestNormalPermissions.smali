.class public final Lcom/codemao/toolssdk/permissionx/request/RequestNormalPermissions;
.super Lcom/codemao/toolssdk/permissionx/request/BaseTask;
.source "RequestNormalPermissions.kt"


# direct methods
.method public constructor <init>(Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;)V
    .registers 3

    const-string v0, "permissionBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/permissionx/request/BaseTask;-><init>(Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;)V

    return-void
.end method


# virtual methods
.method public request()V
    .registers 5

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    iget-object v1, p0, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    iget-object v1, v1, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->normalPermissions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 32
    iget-object v3, p0, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    invoke-virtual {v3}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/codemao/toolssdk/permissionx/PermissionX;->isGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 33
    iget-object v3, p0, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    iget-object v3, v3, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->grantedPermissions:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 35
    :cond_2d
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 38
    :cond_31
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 39
    invoke-virtual {p0}, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->finish()V

    return-void

    .line 42
    :cond_3b
    iget-object v1, p0, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    iget-boolean v2, v1, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->explainReasonBeforeRequest:Z

    if-eqz v2, :cond_70

    iget-object v2, v1, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->explainReasonCallback:Lcom/codemao/toolssdk/permissionx/callback/ExplainReasonCallback;

    if-nez v2, :cond_49

    iget-object v2, v1, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->explainReasonCallbackWithBeforeParam:Lcom/codemao/toolssdk/permissionx/callback/ExplainReasonCallbackWithBeforeParam;

    if-eqz v2, :cond_70

    :cond_49
    const/4 v2, 0x0

    .line 43
    iput-boolean v2, v1, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->explainReasonBeforeRequest:Z

    .line 44
    iget-object v1, v1, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->deniedPermissions:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 45
    iget-object v1, p0, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    iget-object v2, v1, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->explainReasonCallbackWithBeforeParam:Lcom/codemao/toolssdk/permissionx/callback/ExplainReasonCallbackWithBeforeParam;

    if-eqz v2, :cond_63

    .line 47
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->getExplainScope()Lcom/codemao/toolssdk/permissionx/request/ExplainScope;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v2, v1, v0, v3}, Lcom/codemao/toolssdk/permissionx/callback/ExplainReasonCallbackWithBeforeParam;->onExplainReason(Lcom/codemao/toolssdk/permissionx/request/ExplainScope;Ljava/util/List;Z)V

    goto :goto_75

    .line 49
    :cond_63
    iget-object v1, v1, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->explainReasonCallback:Lcom/codemao/toolssdk/permissionx/callback/ExplainReasonCallback;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->getExplainScope()Lcom/codemao/toolssdk/permissionx/request/ExplainScope;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/codemao/toolssdk/permissionx/callback/ExplainReasonCallback;->onExplainReason(Lcom/codemao/toolssdk/permissionx/request/ExplainScope;Ljava/util/List;)V

    goto :goto_75

    .line 53
    :cond_70
    iget-object v0, v1, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->normalPermissions:Ljava/util/Set;

    invoke-virtual {v1, v0, p0}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->requestNow(Ljava/util/Set;Lcom/codemao/toolssdk/permissionx/request/ChainTask;)V

    :goto_75
    return-void
.end method

.method public requestAgain(Ljava/util/List;)V
    .registers 4
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

    .line 63
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    iget-object v1, v1, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->grantedPermissions:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 64
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 65
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_1f

    .line 66
    iget-object p1, p0, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    invoke-virtual {p1, v0, p0}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->requestNow(Ljava/util/Set;Lcom/codemao/toolssdk/permissionx/request/ChainTask;)V

    goto :goto_22

    .line 68
    :cond_1f
    invoke-virtual {p0}, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->finish()V

    :goto_22
    return-void
.end method
