.class public Lcom/readboy/personalsettingauth/BasePSFragment;
.super Landroid/app/Fragment;
.source "BasePSFragment.java"


# static fields
.field public static isSkipWhenFragmentDetach:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getRes()Landroid/content/res/Resources;
    .registers 2

    .line 19
    sget-object v0, Lcom/readboy/personalsettingauth/RBPersonalSettingAuthSDK;->sAppContext:Landroid/content/Context;

    if-eqz v0, :cond_9

    .line 20
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    .line 22
    :cond_9
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected getResString(I)Ljava/lang/String;
    .registers 3

    .line 11
    sget-object v0, Lcom/readboy/personalsettingauth/RBPersonalSettingAuthSDK;->sAppContext:Landroid/content/Context;

    if-eqz v0, :cond_9

    .line 12
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 14
    :cond_9
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected isFragmentDetach()Z
    .registers 3

    .line 27
    sget-boolean v0, Lcom/readboy/personalsettingauth/BasePSFragment;->isSkipWhenFragmentDetach:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    .line 28
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Landroid/app/Fragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :cond_13
    :goto_13
    return v1

    .line 32
    :cond_14
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method
