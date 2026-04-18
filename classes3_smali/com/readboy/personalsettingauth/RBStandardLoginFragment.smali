.class public Lcom/readboy/personalsettingauth/RBStandardLoginFragment;
.super Lcom/readboy/personalsettingauth/BaseLoginFragment;
.source "RBStandardLoginFragment.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Lcom/readboy/personalsettingauth/BaseLoginFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthListener()Lcom/readboy/personalsettingauth/AuthListener;
    .registers 2

    .line 80
    invoke-super {p0}, Lcom/readboy/personalsettingauth/BaseLoginFragment;->getAuthListener()Lcom/readboy/personalsettingauth/AuthListener;

    move-result-object v0

    return-object v0
.end method

.method protected getFrameLayoutContentViewResId()I
    .registers 1

    const p0, 0x0

    throw p0
.end method

.method protected getLoadingViewGroup()Landroid/view/ViewGroup;
    .registers 1

    const p0, 0x0

    throw p0
.end method

.method protected getLoginAccountEditResId()I
    .registers 1

    const p0, 0x0

    throw p0
.end method

.method protected getLoginLoginBtnResId()I
    .registers 1

    const p0, 0x0

    throw p0
.end method

.method protected getLoginPasswordEditResId()I
    .registers 1

    const p0, 0x0

    throw p0
.end method

.method protected onAppAuthInfoEmpty()V
    .registers 2

    .line 72
    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/RBStandardLoginFragment;->getAuthListener()Lcom/readboy/personalsettingauth/AuthListener;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 74
    invoke-interface {v0}, Lcom/readboy/personalsettingauth/AuthListener;->onAppAuthInfoEmpty()V

    .line 76
    :cond_9
    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/BaseLoginFragment;->hideLoading()V

    return-void
.end method

.method protected onUserLoginDataError(ILjava/lang/String;)V
    .registers 4

    .line 63
    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/RBStandardLoginFragment;->getAuthListener()Lcom/readboy/personalsettingauth/AuthListener;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 65
    invoke-interface {v0, p1, p2}, Lcom/readboy/personalsettingauth/AuthListener;->onUserLoginDataError(ILjava/lang/String;)V

    .line 67
    :cond_9
    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/BaseLoginFragment;->hideLoading()V

    return-void
.end method

.method protected onUserLoginInfoEmpty()V
    .registers 2

    .line 44
    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/RBStandardLoginFragment;->getAuthListener()Lcom/readboy/personalsettingauth/AuthListener;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 46
    invoke-interface {v0}, Lcom/readboy/personalsettingauth/AuthListener;->onBeforeErrorCallback()V

    .line 47
    invoke-interface {v0}, Lcom/readboy/personalsettingauth/AuthListener;->onUserLoginInfoEmpty()V

    .line 49
    :cond_c
    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/BaseLoginFragment;->hideLoading()V

    return-void
.end method

.method protected onUserLoginNetFailed(ILjava/lang/String;)V
    .registers 4

    .line 54
    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/RBStandardLoginFragment;->getAuthListener()Lcom/readboy/personalsettingauth/AuthListener;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 56
    invoke-interface {v0, p1, p2}, Lcom/readboy/personalsettingauth/AuthListener;->onUserLoginNetFailed(ILjava/lang/String;)V

    .line 58
    :cond_9
    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/BaseLoginFragment;->hideLoading()V

    return-void
.end method

.method protected onUserLoginSuccessed()V
    .registers 2

    .line 36
    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/RBStandardLoginFragment;->getAuthListener()Lcom/readboy/personalsettingauth/AuthListener;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 38
    invoke-interface {v0}, Lcom/readboy/personalsettingauth/AuthListener;->onUserLoginSuccessed()V

    :cond_9
    return-void
.end method
