.class public final Lcom/codemao/toolssdk/permissionx/PermissionMediator;
.super Ljava/lang/Object;
.source "PermissionMediator.kt"


# instance fields
.field private activity:Landroidx/fragment/app/FragmentActivity;

.field private fragment:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .registers 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/codemao/toolssdk/permissionx/PermissionMediator;->activity:Landroidx/fragment/app/FragmentActivity;

    return-void
.end method


# virtual methods
.method public final permissions(Ljava/util/List;)Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;"
        }
    .end annotation

    const-string v0, "permissions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 54
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 55
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 56
    iget-object v3, p0, Lcom/codemao/toolssdk/permissionx/PermissionMediator;->activity:Landroidx/fragment/app/FragmentActivity;

    if-eqz v3, :cond_1f

    .line 57
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    goto :goto_2e

    .line 59
    :cond_1f
    iget-object v3, p0, Lcom/codemao/toolssdk/permissionx/PermissionMediator;->fragment:Landroidx/fragment/app/Fragment;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 61
    :goto_2e
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_32
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_50

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 62
    invoke-static {}, Lcom/codemao/toolssdk/permissionx/dialog/PermissionMapKt;->getAllSpecialPermissions()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 63
    invoke-virtual {v1, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_32

    .line 65
    :cond_4c
    invoke-virtual {v0, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_32

    :cond_50
    const-string p1, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 68
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_68

    const/16 v4, 0x1d

    if-eq v2, v4, :cond_62

    const/16 v4, 0x1e

    if-ne v2, v4, :cond_68

    if-ge v3, v4, :cond_68

    .line 73
    :cond_62
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 74
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_68
    new-instance p1, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    iget-object v2, p0, Lcom/codemao/toolssdk/permissionx/PermissionMediator;->activity:Landroidx/fragment/app/FragmentActivity;

    iget-object v3, p0, Lcom/codemao/toolssdk/permissionx/PermissionMediator;->fragment:Landroidx/fragment/app/Fragment;

    invoke-direct {p1, v2, v3, v0, v1}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;-><init>(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/Fragment;Ljava/util/Set;Ljava/util/Set;)V

    return-object p1
.end method

.method public final varargs permissions([Ljava/lang/String;)Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;
    .registers 3

    const-string v0, "permissions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/permissionx/PermissionMediator;->permissions(Ljava/util/List;)Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    move-result-object p1

    return-object p1
.end method
