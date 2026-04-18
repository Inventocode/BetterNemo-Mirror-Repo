.class public abstract Lcom/readboy/personalsettingauth/BaseAuthActivity;
.super Landroid/app/Activity;
.source "BaseAuthActivity.java"

# interfaces
.implements Lcom/readboy/personalsettingauth/AuthListener;


# instance fields
.field private fragmentManager:Landroid/app/FragmentManager;

.field private isFirstResumed:Z

.field private isNeedMobile:Z

.field private isOldVersionType:Z

.field private mCloseBtn:Landroid/widget/Button;

.field private mLoginSuccessedReceiver:Landroid/content/BroadcastReceiver;

.field private mMainRoot:Landroid/view/View;

.field private mUserDbSearch:Lcom/readboy/provider/UserDbSearch;

.field protected rbStandardAuthFragment:Lcom/readboy/personalsettingauth/BaseAuthFragment;

.field protected rbStandardLoginFragment:Lcom/readboy/personalsettingauth/BaseLoginFragment;

.field protected showLoginFragment:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/readboy/personalsettingauth/BaseAuthActivity;->isFirstResumed:Z

    .line 50
    iput-boolean v0, p0, Lcom/readboy/personalsettingauth/BaseAuthActivity;->isNeedMobile:Z

    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;)V
    .registers 1

    .line 32
    invoke-static {p0}, Lcom/readboy/personalsettingauth/BaseAuthActivity;->hideSoftKeyboard(Landroid/app/Activity;)V

    return-void
.end method

.method private static hideSoftKeyboard(Landroid/app/Activity;)V
    .registers 3

    if-eqz p0, :cond_f

    const-string v0, "input_method"

    .line 160
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 161
    invoke-virtual {p0, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    :cond_f
    return-void
.end method


# virtual methods
.method protected abstract getCloseBtnResId()I
.end method

.method protected abstract getContentViewResId()I
.end method

.method protected abstract getMainRootResId()I
.end method

.method protected abstract getShowContentResId()I
.end method

.method protected isUserLogin()Z
    .registers 3

    .line 207
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/readboy/provider/UserDbSearch;->getInstance(Landroid/content/Context;)Lcom/readboy/provider/UserDbSearch;

    move-result-object v0

    iput-object v0, p0, Lcom/readboy/personalsettingauth/BaseAuthActivity;->mUserDbSearch:Lcom/readboy/provider/UserDbSearch;

    if-eqz v0, :cond_11

    .line 210
    invoke-virtual {v0}, Lcom/readboy/provider/UserDbSearch;->getUserInfo()Lcom/readboy/provider/mhc/info/UserBaseInfo;

    move-result-object v0

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    if-eqz v0, :cond_22

    .line 212
    iget v1, v0, Lcom/readboy/provider/mhc/info/UserBaseInfo;->uid:I

    if-eqz v1, :cond_22

    iget-object v0, v0, Lcom/readboy/provider/mhc/info/UserBaseInfo;->token:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    return v0
.end method

.method protected abstract newAuthFragment()Lcom/readboy/personalsettingauth/BaseAuthFragment;
.end method

.method protected abstract newLoginFragment()Lcom/readboy/personalsettingauth/BaseLoginFragment;
.end method

.method public onBeforeErrorCallback()V
    .registers 3

    .line 233
    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseAuthActivity;->mMainRoot:Landroid/view/View;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 72
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/BaseAuthActivity;->getContentViewResId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 81
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 83
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/readboy/provider/UserDbSearch;->getInstance(Landroid/content/Context;)Lcom/readboy/provider/UserDbSearch;

    move-result-object p1

    iput-object p1, p0, Lcom/readboy/personalsettingauth/BaseAuthActivity;->mUserDbSearch:Lcom/readboy/provider/UserDbSearch;

    .line 85
    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/BaseAuthActivity;->getMainRootResId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/readboy/personalsettingauth/BaseAuthActivity;->mMainRoot:Landroid/view/View;

    .line 86
    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/BaseAuthActivity;->getCloseBtnResId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/readboy/personalsettingauth/BaseAuthActivity;->mCloseBtn:Landroid/widget/Button;

    .line 88
    iget-object p1, p0, Lcom/readboy/personalsettingauth/BaseAuthActivity;->mMainRoot:Landroid/view/View;

    if-eqz p1, :cond_3b

    const/4 v0, 0x4

    .line 89
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 92
    :cond_3b
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    iput-object p1, p0, Lcom/readboy/personalsettingauth/BaseAuthActivity;->fragmentManager:Landroid/app/FragmentManager;

    .line 94
    iget-object p1, p0, Lcom/readboy/personalsettingauth/BaseAuthActivity;->mCloseBtn:Landroid/widget/Button;

    new-instance v0, Lcom/readboy/personalsettingauth/BaseAuthActivity$1;

    invoke-direct {v0, p0}, Lcom/readboy/personalsettingauth/BaseAuthActivity$1;-><init>(Lcom/readboy/personalsettingauth/BaseAuthActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object p1, p0, Lcom/readboy/personalsettingauth/BaseAuthActivity;->mCloseBtn:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_6d

    iget-object p1, p0, Lcom/readboy/personalsettingauth/BaseAuthActivity;->mCloseBtn:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_6d

    .line 104
    iget-object p1, p0, Lcom/readboy/personalsettingauth/BaseAuthActivity;->mCloseBtn:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    new-instance v0, Lcom/readboy/personalsettingauth/BaseAuthActivity$2;

    invoke-direct {v0, p0}, Lcom/readboy/personalsettingauth/BaseAuthActivity$2;-><init>(Lcom/readboy/personalsettingauth/BaseAuthActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    :cond_6d
    new-instance p1, Lcom/readboy/personalsettingauth/BaseAuthActivity$3;

    invoke-direct {p1, p0}, Lcom/readboy/personalsettingauth/BaseAuthActivity$3;-><init>(Lcom/readboy/personalsettingauth/BaseAuthActivity;)V

    iput-object p1, p0, Lcom/readboy/personalsettingauth/BaseAuthActivity;->mLoginSuccessedReceiver:Landroid/content/BroadcastReceiver;

    .line 138
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 139
    sget-object v0, Lcom/readboy/personalsettingauth/RBConfigureUtil;->RECEIVER_LOGIN_SUCCESSED:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    sget-object v0, Lcom/readboy/personalsettingauth/RBConfigureUtil;->RECEIVER_LOGIN_FAILED:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseAuthActivity;->mLoginSuccessedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 143
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_9b

    .line 144
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "isNeedMobile"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/readboy/personalsettingauth/BaseAuthActivity;->isNeedMobile:Z

    .line 147
    :cond_9b
    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/BaseAuthActivity;->showContentLayout()V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 152
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 153
    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseAuthActivity;->mLoginSuccessedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_a

    .line 154
    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_a
    return-void
.end method

.method protected abstract onPersonalSettingNotAuthVersionCallBack()V
.end method

.method protected abstract onPersonalSettingNotLoginCallBack()V
.end method

.method protected onResume()V
    .registers 2

    .line 56
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 57
    iget-boolean v0, p0, Lcom/readboy/personalsettingauth/BaseAuthActivity;->isFirstResumed:Z

    if-nez v0, :cond_22

    .line 58
    iget-boolean v0, p0, Lcom/readboy/personalsettingauth/BaseAuthActivity;->isOldVersionType:Z

    if-eqz v0, :cond_f

    .line 59
    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/BaseAuthActivity;->showContentLayout()V

    goto :goto_22

    .line 61
    :cond_f
    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/BaseAuthActivity;->isUserLogin()Z

    move-result v0

    if-nez v0, :cond_22

    iget-boolean v0, p0, Lcom/readboy/personalsettingauth/BaseAuthActivity;->showLoginFragment:Z

    if-nez v0, :cond_22

    .line 62
    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/BaseAuthActivity;->onBeforeErrorCallback()V

    .line 63
    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/BaseAuthActivity;->showLoginContent()V

    .line 64
    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/BaseAuthActivity;->onPersonalSettingNotLoginCallBack()V

    :cond_22
    :goto_22
    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/readboy/personalsettingauth/BaseAuthActivity;->isFirstResumed:Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .registers 3

    return-void
.end method

.method protected abstract showAuthContent()V
.end method

.method protected showContentLayout()V
    .registers 3

    .line 166
    invoke-static {p0}, Lcom/readboy/personalsettingauth/util/RBCommonUtil;->isPersonalSettingAuthVersion(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    .line 167
    iput-boolean v0, p0, Lcom/readboy/personalsettingauth/BaseAuthActivity;->isOldVersionType:Z

    .line 168
    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/BaseAuthActivity;->onBeforeErrorCallback()V

    .line 169
    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/BaseAuthActivity;->onPersonalSettingNotAuthVersionCallBack()V

    goto :goto_31

    .line 170
    :cond_10
    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/BaseAuthActivity;->isUserLogin()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_23

    .line 171
    iput-boolean v1, p0, Lcom/readboy/personalsettingauth/BaseAuthActivity;->isOldVersionType:Z

    .line 172
    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/BaseAuthActivity;->onBeforeErrorCallback()V

    .line 173
    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/BaseAuthActivity;->showLoginContent()V

    .line 174
    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/BaseAuthActivity;->onPersonalSettingNotLoginCallBack()V

    goto :goto_31

    .line 176
    :cond_23
    iput-boolean v1, p0, Lcom/readboy/personalsettingauth/BaseAuthActivity;->isOldVersionType:Z

    .line 177
    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/BaseAuthActivity;->showAuthContent()V

    .line 178
    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseAuthActivity;->rbStandardAuthFragment:Lcom/readboy/personalsettingauth/BaseAuthFragment;

    if-eqz v0, :cond_31

    iget-boolean v1, p0, Lcom/readboy/personalsettingauth/BaseAuthActivity;->isNeedMobile:Z

    invoke-virtual {v0, v1}, Lcom/readboy/personalsettingauth/BaseAuthFragment;->setNeedMobile(Z)V

    :cond_31
    :goto_31
    return-void
.end method

.method protected abstract showLoginContent()V
.end method
