.class public Lcom/readboy/personalsettingauth/RBStandardAuthActivity;
.super Lcom/readboy/personalsettingauth/BaseAuthActivity;
.source "RBStandardAuthActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Lcom/readboy/personalsettingauth/BaseAuthActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getCloseBtnResId()I
    .registers 1

    const p0, 0x0

    throw p0
.end method

.method protected getContentViewResId()I
    .registers 1

    const p0, 0x0

    throw p0
.end method

.method protected getMainRootResId()I
    .registers 2

    .line 24
    sget v0, Lcom/readboy/personalsettingauth/R$id;->auth_main_root:I

    return v0
.end method

.method protected getShowContentResId()I
    .registers 1

    const p0, 0x0

    throw p0
.end method

.method protected newAuthFragment()Lcom/readboy/personalsettingauth/BaseAuthFragment;
    .registers 1

    const p0, 0x0

    throw p0
.end method

.method protected newLoginFragment()Lcom/readboy/personalsettingauth/BaseLoginFragment;
    .registers 1

    const p0, 0x0

    throw p0
.end method

.method public onAppAuthInfoEmpty()V
    .registers 3

    const-string v0, "当前应用的服务器授权信息为空"

    const/4 v1, 0x0

    .line 113
    invoke-static {p0, v0, v1}, Lcom/readboy/personalsettingauth/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 13
    sget v0, Lcom/readboy/personalsettingauth/R$style;->rb_auth_dialog_activity_theme:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    .line 14
    invoke-super {p0, p1}, Lcom/readboy/personalsettingauth/BaseAuthActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onErrorCallback()V
    .registers 1

    return-void
.end method

.method public onGetUserInfoDataError(ILjava/lang/String;)V
    .registers 3

    const/4 p1, 0x0

    .line 76
    invoke-static {p0, p2, p1}, Lcom/readboy/personalsettingauth/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public onGetUserInfoNetFailed(ILjava/lang/String;)V
    .registers 3

    const/4 p1, 0x0

    .line 71
    invoke-static {p0, p2, p1}, Lcom/readboy/personalsettingauth/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public onGetUserInfoSuccessed(Lcom/readboy/personalsettingauth/data/UserInfoResult;Z)V
    .registers 3

    return-void
.end method

.method public onGetUserInfoTokenInvalid()V
    .registers 3

    .line 81
    sget v0, Lcom/readboy/personalsettingauth/R$string;->msg_auth_net_login_token_expire:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/readboy/personalsettingauth/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 82
    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/RBStandardAuthActivity;->showLoginContent()V

    return-void
.end method

.method public onGetUserInfoUserNull()V
    .registers 3

    .line 87
    sget v0, Lcom/readboy/personalsettingauth/R$string;->msg_ps_no_login:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/readboy/personalsettingauth/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 88
    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/RBStandardAuthActivity;->showLoginContent()V

    return-void
.end method

.method protected onPersonalSettingNotAuthVersionCallBack()V
    .registers 3

    .line 53
    sget v0, Lcom/readboy/personalsettingauth/R$string;->msg_ps_no_auth_version:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/readboy/personalsettingauth/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    const-string v0, "com.readboy.personalsetting"

    .line 54
    invoke-static {p0, v0}, Lcom/readboy/personalsettingauth/RBPersonalSettingAuthSDK;->appstore(Landroid/content/Context;Ljava/lang/String;)Z

    .line 55
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onPersonalSettingNotLoginCallBack()V
    .registers 3

    .line 60
    sget v0, Lcom/readboy/personalsettingauth/R$string;->msg_ps_no_login:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/readboy/personalsettingauth/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public onUserLoginDataError(ILjava/lang/String;)V
    .registers 3

    const/4 p1, 0x0

    .line 108
    invoke-static {p0, p2, p1}, Lcom/readboy/personalsettingauth/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public onUserLoginInfoEmpty()V
    .registers 3

    .line 98
    sget v0, Lcom/readboy/personalsettingauth/R$string;->msg_login_net_service_info_empty:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/readboy/personalsettingauth/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public onUserLoginNetFailed(ILjava/lang/String;)V
    .registers 3

    const/4 p1, 0x0

    .line 103
    invoke-static {p0, p2, p1}, Lcom/readboy/personalsettingauth/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public onUserLoginSuccessed()V
    .registers 1

    .line 93
    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/RBStandardAuthActivity;->showAuthContent()V

    return-void
.end method

.method protected showAuthContent()V
    .registers 1

    const p0, 0x0

    throw p0
.end method

.method protected showLoginContent()V
    .registers 1

    const p0, 0x0

    throw p0
.end method
