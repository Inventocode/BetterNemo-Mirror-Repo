.class public final Lcom/codemao/toolssdk/permissionx/request/RequestBackgroundLocationPermission;
.super Lcom/codemao/toolssdk/permissionx/request/BaseTask;
.source "RequestBackgroundLocationPermission.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/permissionx/request/RequestBackgroundLocationPermission$Companion;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/permissionx/request/RequestBackgroundLocationPermission$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/permissionx/request/RequestBackgroundLocationPermission$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-virtual {v0}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->shouldRequestBackgroundLocationPermission()Z

    move-result v0

    if-eqz v0, :cond_84

    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const-string v2, "android.permission.ACCESS_BACKGROUND_LOCATION"

    if-ge v0, v1, :cond_1e

    .line 35
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    iget-object v0, v0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->specialPermissions:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 36
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    iget-object v0, v0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->permissionsWontRequest:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_1e
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/codemao/toolssdk/permissionx/PermissionX;->isGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 40
    invoke-virtual {p0}, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->finish()V

    return-void

    .line 43
    :cond_2e
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Lcom/codemao/toolssdk/permissionx/PermissionX;->isGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 44
    iget-object v1, p0, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v1, v3}, Lcom/codemao/toolssdk/permissionx/PermissionX;->isGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v0, :cond_4a

    if-eqz v1, :cond_84

    .line 46
    :cond_4a
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    iget-object v1, v0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->explainReasonCallback:Lcom/codemao/toolssdk/permissionx/callback/ExplainReasonCallback;

    if-nez v1, :cond_5d

    iget-object v0, v0, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->explainReasonCallbackWithBeforeParam:Lcom/codemao/toolssdk/permissionx/callback/ExplainReasonCallbackWithBeforeParam;

    if-eqz v0, :cond_55

    goto :goto_5d

    .line 56
    :cond_55
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/codemao/toolssdk/permissionx/request/RequestBackgroundLocationPermission;->requestAgain(Ljava/util/List;)V

    goto :goto_83

    .line 47
    :cond_5d
    :goto_5d
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    iget-object v2, v1, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->explainReasonCallbackWithBeforeParam:Lcom/codemao/toolssdk/permissionx/callback/ExplainReasonCallbackWithBeforeParam;

    if-eqz v2, :cond_77

    .line 50
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->getExplainScope()Lcom/codemao/toolssdk/permissionx/request/ExplainScope;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v2, v1, v0, v3}, Lcom/codemao/toolssdk/permissionx/callback/ExplainReasonCallbackWithBeforeParam;->onExplainReason(Lcom/codemao/toolssdk/permissionx/request/ExplainScope;Ljava/util/List;Z)V

    goto :goto_83

    .line 52
    :cond_77
    iget-object v1, v1, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->explainReasonCallback:Lcom/codemao/toolssdk/permissionx/callback/ExplainReasonCallback;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->getExplainScope()Lcom/codemao/toolssdk/permissionx/request/ExplainScope;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/codemao/toolssdk/permissionx/callback/ExplainReasonCallback;->onExplainReason(Lcom/codemao/toolssdk/permissionx/request/ExplainScope;Ljava/util/List;)V

    :goto_83
    return-void

    .line 62
    :cond_84
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

    .line 67
    iget-object p1, p0, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    invoke-virtual {p1, p0}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->requestAccessBackgroundLocationNow(Lcom/codemao/toolssdk/permissionx/request/ChainTask;)V

    return-void
.end method
