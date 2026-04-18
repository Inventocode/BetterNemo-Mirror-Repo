.class public Lcom/codemao/toolssdk/permissionx/PermissionX;
.super Ljava/lang/Object;
.source "PermissionX.java"


# direct methods
.method public static init(Landroidx/fragment/app/FragmentActivity;)Lcom/codemao/toolssdk/permissionx/PermissionMediator;
    .registers 2

    .line 51
    new-instance v0, Lcom/codemao/toolssdk/permissionx/PermissionMediator;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/permissionx/PermissionMediator;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    return-object v0
.end method

.method public static isGranted(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 2

    .line 72
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method
