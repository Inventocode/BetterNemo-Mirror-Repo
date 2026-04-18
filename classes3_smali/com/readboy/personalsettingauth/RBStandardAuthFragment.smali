.class public Lcom/readboy/personalsettingauth/RBStandardAuthFragment;
.super Lcom/readboy/personalsettingauth/BaseAuthFragment;
.source "RBStandardAuthFragment.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Lcom/readboy/personalsettingauth/BaseAuthFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAuthAgreeBtnResId()I
    .registers 1

    const p0, 0x0

    throw p0
.end method

.method protected getAuthAppIconImageViewResId()I
    .registers 1

    const p0, 0x0

    throw p0
.end method

.method protected getAuthAppNameTextViewResId()I
    .registers 1

    const p0, 0x0

    throw p0
.end method

.method protected getAuthBaseInfoCheck()I
    .registers 2

    .line 50
    sget v0, Lcom/readboy/personalsettingauth/R$id;->auth_content_tv:I

    return v0
.end method

.method public getAuthListener()Lcom/readboy/personalsettingauth/AuthListener;
    .registers 2

    .line 128
    invoke-super {p0}, Lcom/readboy/personalsettingauth/BaseAuthFragment;->getAuthListener()Lcom/readboy/personalsettingauth/AuthListener;

    move-result-object v0

    return-object v0
.end method

.method protected getAuthMobileInfoCheck()I
    .registers 2

    .line 55
    sget v0, Lcom/readboy/personalsettingauth/R$id;->auth_content_mobile_tv:I

    return v0
.end method

.method protected getFrameLayoutContentViewResId()I
    .registers 1

    const p0, 0x0

    throw p0
.end method

.method protected getLoadingRoot()I
    .registers 2

    .line 75
    sget v0, Lcom/readboy/personalsettingauth/R$id;->auth_load_root:I

    return v0
.end method

.method protected getLoadingViewGroup()Landroid/view/ViewGroup;
    .registers 1

    const p0, 0x0

    throw p0
.end method

.method protected getLoadingViewReloadBtn()I
    .registers 2

    .line 70
    sget v0, Lcom/readboy/personalsettingauth/R$id;->auth_reload_btn:I

    return v0
.end method

.method protected getLoadingViewReloadRoot()I
    .registers 2

    .line 65
    sget v0, Lcom/readboy/personalsettingauth/R$id;->auth_reload_root:I

    return v0
.end method

.method protected getRootResId()I
    .registers 2

    .line 29
    sget v0, Lcom/readboy/personalsettingauth/R$id;->auth_area:I

    return v0
.end method

.method protected onAppAuthInfoEmpty()V
    .registers 2

    .line 121
    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/RBStandardAuthFragment;->getAuthListener()Lcom/readboy/personalsettingauth/AuthListener;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 123
    invoke-interface {v0}, Lcom/readboy/personalsettingauth/AuthListener;->onAppAuthInfoEmpty()V

    :cond_9
    return-void
.end method

.method protected onGetUserInfoDataError(ILjava/lang/String;)V
    .registers 4

    .line 96
    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/RBStandardAuthFragment;->getAuthListener()Lcom/readboy/personalsettingauth/AuthListener;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 98
    invoke-interface {v0}, Lcom/readboy/personalsettingauth/AuthListener;->onBeforeErrorCallback()V

    .line 99
    invoke-interface {v0, p1, p2}, Lcom/readboy/personalsettingauth/AuthListener;->onGetUserInfoDataError(ILjava/lang/String;)V

    :cond_c
    return-void
.end method

.method protected onGetUserInfoNetFailed(ILjava/lang/String;)V
    .registers 4

    .line 88
    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/RBStandardAuthFragment;->getAuthListener()Lcom/readboy/personalsettingauth/AuthListener;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 90
    invoke-interface {v0}, Lcom/readboy/personalsettingauth/AuthListener;->onBeforeErrorCallback()V

    .line 91
    invoke-interface {v0, p1, p2}, Lcom/readboy/personalsettingauth/AuthListener;->onGetUserInfoNetFailed(ILjava/lang/String;)V

    :cond_c
    return-void
.end method

.method protected onGetUserInfoSuccessed(Lcom/readboy/personalsettingauth/data/UserInfoResult;Z)V
    .registers 4

    .line 80
    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/RBStandardAuthFragment;->getAuthListener()Lcom/readboy/personalsettingauth/AuthListener;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 82
    invoke-interface {v0, p1, p2}, Lcom/readboy/personalsettingauth/AuthListener;->onGetUserInfoSuccessed(Lcom/readboy/personalsettingauth/data/UserInfoResult;Z)V

    :cond_9
    return-void
.end method

.method protected onGetUserInfoTokenInvalid()V
    .registers 2

    .line 104
    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/RBStandardAuthFragment;->getAuthListener()Lcom/readboy/personalsettingauth/AuthListener;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 106
    invoke-interface {v0}, Lcom/readboy/personalsettingauth/AuthListener;->onBeforeErrorCallback()V

    .line 107
    invoke-interface {v0}, Lcom/readboy/personalsettingauth/AuthListener;->onGetUserInfoTokenInvalid()V

    :cond_c
    return-void
.end method

.method protected onGetUserInfoUserNull()V
    .registers 2

    .line 112
    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/RBStandardAuthFragment;->getAuthListener()Lcom/readboy/personalsettingauth/AuthListener;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 114
    invoke-interface {v0}, Lcom/readboy/personalsettingauth/AuthListener;->onBeforeErrorCallback()V

    .line 115
    invoke-interface {v0}, Lcom/readboy/personalsettingauth/AuthListener;->onGetUserInfoUserNull()V

    :cond_c
    return-void
.end method
