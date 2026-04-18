.class public abstract Lcom/codemao/toolssdk/permissionx/request/BaseTask;
.super Ljava/lang/Object;
.source "BaseTask.kt"

# interfaces
.implements Lcom/codemao/toolssdk/permissionx/request/ChainTask;


# instance fields
.field private explainReasonScope:Lcom/codemao/toolssdk/permissionx/request/ExplainScope;

.field private forwardToSettingsScope:Lcom/codemao/toolssdk/permissionx/request/ForwardScope;

.field public next:Lcom/codemao/toolssdk/permissionx/request/ChainTask;

.field public pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;


# direct methods
.method public constructor <init>(Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;)V
    .registers 3

    const-string v0, "pb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    .line 42
    new-instance v0, Lcom/codemao/toolssdk/permissionx/request/ExplainScope;

    invoke-direct {v0, p1, p0}, Lcom/codemao/toolssdk/permissionx/request/ExplainScope;-><init>(Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;Lcom/codemao/toolssdk/permissionx/request/ChainTask;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->explainReasonScope:Lcom/codemao/toolssdk/permissionx/request/ExplainScope;

    .line 47
    new-instance p1, Lcom/codemao/toolssdk/permissionx/request/ForwardScope;

    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    invoke-direct {p1, v0, p0}, Lcom/codemao/toolssdk/permissionx/request/ForwardScope;-><init>(Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;Lcom/codemao/toolssdk/permissionx/request/ChainTask;)V

    iput-object p1, p0, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->forwardToSettingsScope:Lcom/codemao/toolssdk/permissionx/request/ForwardScope;

    .line 114
    new-instance p1, Lcom/codemao/toolssdk/permissionx/request/ExplainScope;

    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    invoke-direct {p1, v0, p0}, Lcom/codemao/toolssdk/permissionx/request/ExplainScope;-><init>(Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;Lcom/codemao/toolssdk/permissionx/request/ChainTask;)V

    iput-object p1, p0, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->explainReasonScope:Lcom/codemao/toolssdk/permissionx/request/ExplainScope;

    .line 115
    new-instance p1, Lcom/codemao/toolssdk/permissionx/request/ForwardScope;

    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    invoke-direct {p1, v0, p0}, Lcom/codemao/toolssdk/permissionx/request/ForwardScope;-><init>(Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;Lcom/codemao/toolssdk/permissionx/request/ChainTask;)V

    iput-object p1, p0, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->forwardToSettingsScope:Lcom/codemao/toolssdk/permissionx/request/ForwardScope;

    return-void
.end method


# virtual methods
.method public finish()V
    .registers 6

    .line 55
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->next:Lcom/codemao/toolssdk/permissionx/request/ChainTask;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lcom/codemao/toolssdk/permissionx/request/ChainTask;->request()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    if-nez v0, :cond_11f

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    iget-object v1, p0, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    iget-object v1, v1, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->deniedPermissions:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 59
    iget-object v1, p0, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    iget-object v1, v1, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->permanentDeniedPermissions:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 60
    iget-object v1, p0, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    iget-object v1, v1, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->permissionsWontRequest:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 61
    iget-object v1, p0, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->shouldRequestBackgroundLocationPermission()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 62
    iget-object v1, p0, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-static {v1, v2}, Lcom/codemao/toolssdk/permissionx/PermissionX;->isGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 63
    iget-object v1, p0, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    iget-object v1, v1, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->grantedPermissions:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_48

    .line 65
    :cond_45
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_48
    :goto_48
    iget-object v1, p0, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->shouldRequestSystemAlertWindowPermission()Z

    move-result v1

    const/16 v2, 0x17

    if-eqz v1, :cond_77

    .line 69
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_77

    iget-object v1, p0, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->getTargetSdkVersion()I

    move-result v1

    if-lt v1, v2, :cond_77

    .line 70
    iget-object v1, p0, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v1

    const-string v3, "android.permission.SYSTEM_ALERT_WINDOW"

    if-eqz v1, :cond_74

    .line 71
    iget-object v1, p0, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    iget-object v1, v1, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->grantedPermissions:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_77

    .line 73
    :cond_74
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_77
    :goto_77
    iget-object v1, p0, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->shouldRequestWriteSettingsPermission()Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 77
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_a4

    iget-object v1, p0, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->getTargetSdkVersion()I

    move-result v1

    if-lt v1, v2, :cond_a4

    .line 78
    iget-object v1, p0, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "android.permission.WRITE_SETTINGS"

    if-eqz v1, :cond_a1

    .line 79
    iget-object v1, p0, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    iget-object v1, v1, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->grantedPermissions:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_a4

    .line 81
    :cond_a1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_a4
    :goto_a4
    iget-object v1, p0, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->shouldRequestManageExternalStoragePermission()Z

    move-result v1

    if-eqz v1, :cond_c5

    .line 85
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    const-string v3, "android.permission.MANAGE_EXTERNAL_STORAGE"

    if-lt v1, v2, :cond_c2

    .line 86
    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result v1

    if-eqz v1, :cond_c2

    .line 87
    iget-object v1, p0, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    iget-object v1, v1, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->grantedPermissions:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_c5

    .line 89
    :cond_c2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_c5
    :goto_c5
    iget-object v1, p0, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->shouldRequestInstallPackagesPermission()Z

    move-result v1

    if-eqz v1, :cond_fc

    .line 93
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    const-string v3, "android.permission.REQUEST_INSTALL_PACKAGES"

    if-lt v1, v2, :cond_f9

    iget-object v1, p0, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->getTargetSdkVersion()I

    move-result v1

    if-lt v1, v2, :cond_f9

    .line 94
    iget-object v1, p0, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    move-result v1

    if-eqz v1, :cond_f5

    .line 95
    iget-object v1, p0, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    iget-object v1, v1, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->grantedPermissions:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_fc

    .line 97
    :cond_f5
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_fc

    .line 100
    :cond_f9
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_fc
    :goto_fc
    iget-object v1, p0, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    iget-object v1, v1, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->requestCallback:Lcom/codemao/toolssdk/permissionx/callback/RequestCallback;

    if-eqz v1, :cond_115

    .line 104
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    iget-object v4, v4, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->grantedPermissions:Ljava/util/Set;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v2, v3, v0}, Lcom/codemao/toolssdk/permissionx/callback/RequestCallback;->onResult(ZLjava/util/List;Ljava/util/List;)V

    .line 107
    :cond_115
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->removeInvisibleFragment$toolssdk_release()V

    .line 109
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->pb:Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->restoreOrientation$toolssdk_release()V

    :cond_11f
    return-void
.end method

.method public getExplainScope()Lcom/codemao/toolssdk/permissionx/request/ExplainScope;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->explainReasonScope:Lcom/codemao/toolssdk/permissionx/request/ExplainScope;

    return-object v0
.end method

.method public getForwardScope()Lcom/codemao/toolssdk/permissionx/request/ForwardScope;
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->forwardToSettingsScope:Lcom/codemao/toolssdk/permissionx/request/ForwardScope;

    return-object v0
.end method
