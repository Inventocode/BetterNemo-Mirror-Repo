.class public Lcn/codemao/android/sketch/activity/BaseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BaseActivity.java"


# instance fields
.field private mPermissionListener:Lcn/codemao/android/sketch/listener/PermissionListener;

.field protected mRequestCode:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private updateResources(Landroid/content/Context;)Landroid/content/Context;
    .registers 4

    .line 47
    invoke-static {}, Lcn/codemao/android/sketch/config/SketchConfigManager;->getInstance()Lcn/codemao/android/sketch/config/SketchConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/sketch/config/SketchConfigManager;->getLocale()Ljava/util/Locale;

    move-result-object v0

    .line 48
    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 50
    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 51
    invoke-virtual {p1, v1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    return-object p1
.end method

.method private verifyPermissions([I)Z
    .registers 7

    .line 93
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_6

    return v1

    .line 96
    :cond_6
    array-length v0, p1

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v0, :cond_12

    aget v4, p1, v3

    if-eqz v4, :cond_f

    return v1

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_12
    return v2
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .registers 2

    .line 31
    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/activity/BaseActivity;->updateResources(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public getDeniedPermissions([Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    array-length v1, p1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_18

    aget-object v3, p1, v2

    .line 72
    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_15

    .line 73
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_18
    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .line 106
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 42
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 43
    invoke-direct {p0, p0}, Lcn/codemao/android/sketch/activity/BaseActivity;->updateResources(Landroid/content/Context;)Landroid/content/Context;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 36
    invoke-direct {p0, p0}, Lcn/codemao/android/sketch/activity/BaseActivity;->updateResources(Landroid/content/Context;)Landroid/content/Context;

    .line 37
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 5

    .line 81
    iget v0, p0, Lcn/codemao/android/sketch/activity/BaseActivity;->mRequestCode:I

    if-ne v0, p1, :cond_16

    .line 82
    invoke-direct {p0, p3}, Lcn/codemao/android/sketch/activity/BaseActivity;->verifyPermissions([I)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 83
    iget-object p1, p0, Lcn/codemao/android/sketch/activity/BaseActivity;->mPermissionListener:Lcn/codemao/android/sketch/listener/PermissionListener;

    invoke-interface {p1}, Lcn/codemao/android/sketch/listener/PermissionListener;->permissionSuccess()V

    goto :goto_19

    .line 85
    :cond_10
    iget-object p1, p0, Lcn/codemao/android/sketch/activity/BaseActivity;->mPermissionListener:Lcn/codemao/android/sketch/listener/PermissionListener;

    invoke-interface {p1}, Lcn/codemao/android/sketch/listener/PermissionListener;->permissionFail()V

    goto :goto_19

    .line 88
    :cond_16
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :goto_19
    return-void
.end method

.method public varargs requestPermission(ILcn/codemao/android/sketch/listener/PermissionListener;[Ljava/lang/String;)V
    .registers 6

    .line 55
    iput p1, p0, Lcn/codemao/android/sketch/activity/BaseActivity;->mRequestCode:I

    .line 56
    iput-object p2, p0, Lcn/codemao/android/sketch/activity/BaseActivity;->mPermissionListener:Lcn/codemao/android/sketch/listener/PermissionListener;

    .line 57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_e

    .line 58
    invoke-interface {p2}, Lcn/codemao/android/sketch/listener/PermissionListener;->permissionSuccess()V

    return-void

    .line 61
    :cond_e
    invoke-virtual {p0, p3}, Lcn/codemao/android/sketch/activity/BaseActivity;->getDeniedPermissions([Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 62
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_28

    .line 63
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    new-array p3, p3, [Ljava/lang/String;

    invoke-interface {p2, p3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-static {p0, p2, p1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_2d

    .line 65
    :cond_28
    iget-object p1, p0, Lcn/codemao/android/sketch/activity/BaseActivity;->mPermissionListener:Lcn/codemao/android/sketch/listener/PermissionListener;

    invoke-interface {p1}, Lcn/codemao/android/sketch/listener/PermissionListener;->permissionSuccess()V

    :goto_2d
    return-void
.end method
