.class public Lcn/codemao/android/account/readboy/MyRBStandardAuthActivity;
.super Lcom/readboy/personalsettingauth/RBStandardAuthActivity;
.source "MyRBStandardAuthActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RBStandardAuthActivity"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Lcom/readboy/personalsettingauth/RBStandardAuthActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getCloseBtnResId()I
    .registers 2

    .line 141
    sget v0, Lcn/codemao/android/account/R$id;->landing_close:I

    return v0
.end method

.method protected getContentViewResId()I
    .registers 2

    .line 136
    sget v0, Lcn/codemao/android/account/R$layout;->main_layout:I

    return v0
.end method

.method protected getShowContentResId()I
    .registers 2

    .line 46
    sget v0, Lcn/codemao/android/account/R$id;->auth_main_content_layout:I

    return v0
.end method

.method protected newAuthFragment()Lcom/readboy/personalsettingauth/BaseAuthFragment;
    .registers 2

    .line 146
    new-instance v0, Lcn/codemao/android/account/readboy/expand/MyRBAuthFragment;

    invoke-direct {v0}, Lcn/codemao/android/account/readboy/expand/MyRBAuthFragment;-><init>()V

    .line 147
    invoke-virtual {v0, p0}, Lcom/readboy/personalsettingauth/BaseAuthFragment;->setAuthListener(Lcom/readboy/personalsettingauth/AuthListener;)V

    return-object v0
.end method

.method protected newLoginFragment()Lcom/readboy/personalsettingauth/BaseLoginFragment;
    .registers 2

    .line 153
    new-instance v0, Lcn/codemao/android/account/readboy/expand/MyRBLoginFragment;

    invoke-direct {v0}, Lcn/codemao/android/account/readboy/expand/MyRBLoginFragment;-><init>()V

    .line 154
    invoke-virtual {v0, p0}, Lcom/readboy/personalsettingauth/BaseLoginFragment;->setAuthListener(Lcom/readboy/personalsettingauth/AuthListener;)V

    return-object v0
.end method

.method public onAppAuthInfoEmpty()V
    .registers 3

    .line 126
    invoke-super {p0}, Lcom/readboy/personalsettingauth/RBStandardAuthActivity;->onAppAuthInfoEmpty()V

    .line 127
    invoke-static {}, Lcn/codemao/android/account/util/ReadboyManager;->get()Lcn/codemao/android/account/util/ReadboyManager;

    move-result-object v0

    const-string/jumbo v1, "当前应用没有初始化appId与appSec"

    invoke-virtual {v0, v1}, Lcn/codemao/android/account/util/ReadboyManager;->onFailed(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 27
    invoke-super {p0, p1}, Lcom/readboy/personalsettingauth/RBStandardAuthActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onGetUserInfoDataError(ILjava/lang/String;)V
    .registers 3

    .line 93
    invoke-super {p0, p1, p2}, Lcom/readboy/personalsettingauth/RBStandardAuthActivity;->onGetUserInfoDataError(ILjava/lang/String;)V

    .line 94
    invoke-static {}, Lcn/codemao/android/account/util/ReadboyManager;->get()Lcn/codemao/android/account/util/ReadboyManager;

    move-result-object p1

    const-string/jumbo p2, "读书郎个人中心授权返回的服务器数据为空"

    invoke-virtual {p1, p2}, Lcn/codemao/android/account/util/ReadboyManager;->onFailed(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onGetUserInfoNetFailed(ILjava/lang/String;)V
    .registers 3

    .line 69
    invoke-super {p0, p1, p2}, Lcom/readboy/personalsettingauth/RBStandardAuthActivity;->onGetUserInfoNetFailed(ILjava/lang/String;)V

    .line 70
    invoke-static {}, Lcn/codemao/android/account/util/ReadboyManager;->get()Lcn/codemao/android/account/util/ReadboyManager;

    move-result-object p1

    const-string/jumbo p2, "读书郎个人中心授权并返回信息的网络通信失败"

    invoke-virtual {p1, p2}, Lcn/codemao/android/account/util/ReadboyManager;->onFailed(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onGetUserInfoSuccessed(Lcom/readboy/personalsettingauth/data/UserInfoResult;Z)V
    .registers 3

    .line 35
    invoke-super {p0, p1, p2}, Lcom/readboy/personalsettingauth/RBStandardAuthActivity;->onGetUserInfoSuccessed(Lcom/readboy/personalsettingauth/data/UserInfoResult;Z)V

    if-eqz p1, :cond_d

    .line 37
    invoke-static {}, Lcn/codemao/android/account/util/ReadboyManager;->get()Lcn/codemao/android/account/util/ReadboyManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/codemao/android/account/util/ReadboyManager;->onResult(Lcom/readboy/personalsettingauth/data/UserInfoResult;)V

    goto :goto_16

    .line 39
    :cond_d
    invoke-static {}, Lcn/codemao/android/account/util/ReadboyManager;->get()Lcn/codemao/android/account/util/ReadboyManager;

    move-result-object p1

    const-string p2, "userInfoResult == null"

    invoke-virtual {p1, p2}, Lcn/codemao/android/account/util/ReadboyManager;->onFailed(Ljava/lang/String;)V

    .line 41
    :goto_16
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onGetUserInfoTokenInvalid()V
    .registers 3

    .line 77
    invoke-super {p0}, Lcom/readboy/personalsettingauth/RBStandardAuthActivity;->onGetUserInfoTokenInvalid()V

    .line 78
    invoke-static {}, Lcn/codemao/android/account/util/ReadboyManager;->get()Lcn/codemao/android/account/util/ReadboyManager;

    move-result-object v0

    const-string/jumbo v1, "读书郎个人中心登录签名过期"

    invoke-virtual {v0, v1}, Lcn/codemao/android/account/util/ReadboyManager;->onFailed(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onGetUserInfoUserNull()V
    .registers 3

    .line 85
    invoke-super {p0}, Lcom/readboy/personalsettingauth/RBStandardAuthActivity;->onGetUserInfoUserNull()V

    .line 86
    invoke-static {}, Lcn/codemao/android/account/util/ReadboyManager;->get()Lcn/codemao/android/account/util/ReadboyManager;

    move-result-object v0

    const-string/jumbo v1, "读书郎个人中心登录签名过期"

    invoke-virtual {v0, v1}, Lcn/codemao/android/account/util/ReadboyManager;->onFailed(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onPersonalSettingNotAuthVersionCallBack()V
    .registers 3

    .line 53
    invoke-super {p0}, Lcom/readboy/personalsettingauth/RBStandardAuthActivity;->onPersonalSettingNotAuthVersionCallBack()V

    .line 54
    invoke-static {}, Lcn/codemao/android/account/util/ReadboyManager;->get()Lcn/codemao/android/account/util/ReadboyManager;

    move-result-object v0

    const-string/jumbo v1, "读书郎个人中心的版本号不支持授权功能"

    invoke-virtual {v0, v1}, Lcn/codemao/android/account/util/ReadboyManager;->onFailed(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onPersonalSettingNotLoginCallBack()V
    .registers 3

    .line 61
    invoke-super {p0}, Lcom/readboy/personalsettingauth/RBStandardAuthActivity;->onPersonalSettingNotLoginCallBack()V

    .line 62
    invoke-static {}, Lcn/codemao/android/account/util/ReadboyManager;->get()Lcn/codemao/android/account/util/ReadboyManager;

    move-result-object v0

    const-string/jumbo v1, "读书郎个人中心还没有登录"

    invoke-virtual {v0, v1}, Lcn/codemao/android/account/util/ReadboyManager;->onFailed(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onUserLoginDataError(ILjava/lang/String;)V
    .registers 3

    .line 117
    invoke-super {p0, p1, p2}, Lcom/readboy/personalsettingauth/RBStandardAuthActivity;->onUserLoginDataError(ILjava/lang/String;)V

    .line 118
    invoke-static {}, Lcn/codemao/android/account/util/ReadboyManager;->get()Lcn/codemao/android/account/util/ReadboyManager;

    move-result-object p1

    const-string/jumbo p2, "读书郎个人中心登录返回的服务器数据为空"

    invoke-virtual {p1, p2}, Lcn/codemao/android/account/util/ReadboyManager;->onFailed(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onUserLoginInfoEmpty()V
    .registers 3

    .line 101
    invoke-super {p0}, Lcom/readboy/personalsettingauth/RBStandardAuthActivity;->onUserLoginInfoEmpty()V

    .line 102
    invoke-static {}, Lcn/codemao/android/account/util/ReadboyManager;->get()Lcn/codemao/android/account/util/ReadboyManager;

    move-result-object v0

    const-string/jumbo v1, "读书郎个人中心登录账号或密码未输入"

    invoke-virtual {v0, v1}, Lcn/codemao/android/account/util/ReadboyManager;->onFailed(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onUserLoginNetFailed(ILjava/lang/String;)V
    .registers 3

    .line 109
    invoke-super {p0, p1, p2}, Lcom/readboy/personalsettingauth/RBStandardAuthActivity;->onUserLoginNetFailed(ILjava/lang/String;)V

    .line 110
    invoke-static {}, Lcn/codemao/android/account/util/ReadboyManager;->get()Lcn/codemao/android/account/util/ReadboyManager;

    move-result-object p1

    const-string/jumbo p2, "读书郎个人中心登录网络通信失败"

    invoke-virtual {p1, p2}, Lcn/codemao/android/account/util/ReadboyManager;->onFailed(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected showAuthContent()V
    .registers 4

    const/4 v0, 0x0

    .line 160
    iput-boolean v0, p0, Lcom/readboy/personalsettingauth/BaseAuthActivity;->showLoginFragment:Z

    .line 161
    invoke-virtual {p0}, Lcn/codemao/android/account/readboy/MyRBStandardAuthActivity;->newAuthFragment()Lcom/readboy/personalsettingauth/BaseAuthFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/readboy/personalsettingauth/BaseAuthActivity;->rbStandardAuthFragment:Lcom/readboy/personalsettingauth/BaseAuthFragment;

    .line 162
    invoke-virtual {v0, p0}, Lcom/readboy/personalsettingauth/BaseAuthFragment;->setAuthListener(Lcom/readboy/personalsettingauth/AuthListener;)V

    .line 163
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {p0}, Lcn/codemao/android/account/readboy/MyRBStandardAuthActivity;->getShowContentResId()I

    move-result v1

    iget-object v2, p0, Lcom/readboy/personalsettingauth/BaseAuthActivity;->rbStandardAuthFragment:Lcom/readboy/personalsettingauth/BaseAuthFragment;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method protected showLoginContent()V
    .registers 4

    const/4 v0, 0x1

    .line 168
    iput-boolean v0, p0, Lcom/readboy/personalsettingauth/BaseAuthActivity;->showLoginFragment:Z

    .line 169
    invoke-virtual {p0}, Lcn/codemao/android/account/readboy/MyRBStandardAuthActivity;->newLoginFragment()Lcom/readboy/personalsettingauth/BaseLoginFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/readboy/personalsettingauth/BaseAuthActivity;->rbStandardLoginFragment:Lcom/readboy/personalsettingauth/BaseLoginFragment;

    .line 170
    invoke-virtual {v0, p0}, Lcom/readboy/personalsettingauth/BaseLoginFragment;->setAuthListener(Lcom/readboy/personalsettingauth/AuthListener;)V

    .line 171
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {p0}, Lcn/codemao/android/account/readboy/MyRBStandardAuthActivity;->getShowContentResId()I

    move-result v1

    iget-object v2, p0, Lcom/readboy/personalsettingauth/BaseAuthActivity;->rbStandardLoginFragment:Lcom/readboy/personalsettingauth/BaseLoginFragment;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method
