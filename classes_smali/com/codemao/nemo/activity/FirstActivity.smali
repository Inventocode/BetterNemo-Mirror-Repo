.class public Lcom/codemao/nemo/activity/FirstActivity;
.super Lcom/giu/xzz/BaseActivity;
.source "FirstActivity.java"


# instance fields
.field private mDialog:Lcom/codemao/nemo/dialog/ReusableDialog;

.field private mHandler:Lcom/giu/xzz/utils/HandlerUtil;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 42
    invoke-direct {p0}, Lcom/giu/xzz/BaseActivity;-><init>()V

    .line 75
    new-instance v0, Lcom/giu/xzz/utils/HandlerUtil;

    new-instance v1, Lcom/codemao/nemo/activity/FirstActivity$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/FirstActivity$1;-><init>(Lcom/codemao/nemo/activity/FirstActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/giu/xzz/utils/HandlerUtil;-><init>(Ljava/lang/Object;Lcom/giu/xzz/utils/HandlerUtil$HandleBack;)V

    iput-object v0, p0, Lcom/codemao/nemo/activity/FirstActivity;->mHandler:Lcom/giu/xzz/utils/HandlerUtil;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/activity/FirstActivity;)Lcom/codemao/nemo/dialog/ReusableDialog;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/codemao/nemo/activity/FirstActivity;->mDialog:Lcom/codemao/nemo/dialog/ReusableDialog;

    return-object p0
.end method

.method static synthetic access$002(Lcom/codemao/nemo/activity/FirstActivity;Lcom/codemao/nemo/dialog/ReusableDialog;)Lcom/codemao/nemo/dialog/ReusableDialog;
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/codemao/nemo/activity/FirstActivity;->mDialog:Lcom/codemao/nemo/dialog/ReusableDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/codemao/nemo/activity/FirstActivity;)V
    .registers 1

    .line 42
    invoke-direct {p0}, Lcom/codemao/nemo/activity/FirstActivity;->toLogin()V

    return-void
.end method

.method static synthetic access$200(Lcom/codemao/nemo/activity/FirstActivity;Ljava/lang/String;)V
    .registers 2

    .line 42
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/FirstActivity;->setCookie(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/codemao/nemo/activity/FirstActivity;)V
    .registers 1

    .line 42
    invoke-direct {p0}, Lcom/codemao/nemo/activity/FirstActivity;->afterAgreePolicy()V

    return-void
.end method

.method static synthetic access$400(Lcom/codemao/nemo/activity/FirstActivity;)Lcom/giu/xzz/utils/HandlerUtil;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/codemao/nemo/activity/FirstActivity;->mHandler:Lcom/giu/xzz/utils/HandlerUtil;

    return-object p0
.end method

.method private afterAgreePolicy()V
    .registers 3

    .line 175
    sget-object v0, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->INSTANCE:Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;

    invoke-virtual {v0}, Lcom/yl/lib/sentry/hook/PrivacySentry$Privacy;->updatePrivacyShow()V

    .line 176
    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/MainApplication;->initAfterAgreement()V

    .line 178
    invoke-virtual {p0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 179
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object v0

    if-nez v0, :cond_26

    const-string/jumbo v0, "请先完成登录"

    .line 180
    invoke-static {p0, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 181
    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/MainApplication;->setOutJumUri(Landroid/net/Uri;)V

    .line 183
    :cond_26
    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->finish()V

    return-void

    .line 187
    :cond_2a
    new-instance v0, Lcom/codemao/nemo/activity/FirstActivity$4;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/FirstActivity$4;-><init>(Lcom/codemao/nemo/activity/FirstActivity;)V

    invoke-static {v0}, Lcom/giu/xzz/utils/ThreadPoolUtil;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setCookie(Ljava/lang/String;)V
    .registers 6

    .line 130
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 131
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const/4 v1, 0x1

    .line 132
    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 133
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    .line 134
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 135
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "BBL-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 136
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getAccountToken()Ljava/lang/String;

    move-result-object p1

    .line 138
    :cond_23
    sget-object v1, Lcom/codemao/nemo/MainApplication;->configVO:Lcom/codemao/nemo/bean/ConfigVO;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/ConfigVO;->getApi()Lcom/codemao/nemo/bean/ApiVO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/ApiVO;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 139
    sget-boolean v2, Lcom/codemao/nemo/util/AppConstants;->IS_DEBUG:Z

    if-eqz v2, :cond_46

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "test-authorization="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_73

    .line 141
    :cond_46
    sget-boolean v2, Lcom/codemao/nemo/util/AppConstants;->IS_RELEASE:Z

    if-eqz v2, :cond_5f

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "authorization="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_73

    .line 144
    :cond_5f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "staging-authorization="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :goto_73
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/CookieSyncManager;->sync()V

    return-void
.end method

.method private showPolicy()V
    .registers 4

    .line 150
    new-instance v0, Lcom/codemao/nemo/dialog/pop/UserAgreementDialog;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/dialog/pop/UserAgreementDialog;-><init>(Landroid/content/Context;)V

    .line 151
    new-instance v1, Lcom/codemao/nemo/activity/FirstActivity$2;

    invoke-direct {v1, p0, v0}, Lcom/codemao/nemo/activity/FirstActivity$2;-><init>(Lcom/codemao/nemo/activity/FirstActivity;Lcom/codemao/nemo/dialog/pop/UserAgreementDialog;)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/pop/UserAgreementDialog;->setAgreeListener(Landroid/view/View$OnClickListener;)V

    .line 159
    new-instance v1, Lcom/codemao/nemo/activity/FirstActivity$3;

    invoke-direct {v1, p0, v0}, Lcom/codemao/nemo/activity/FirstActivity$3;-><init>(Lcom/codemao/nemo/activity/FirstActivity;Lcom/codemao/nemo/dialog/pop/UserAgreementDialog;)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/pop/UserAgreementDialog;->setDisagreeListener(Landroid/view/View$OnClickListener;)V

    .line 166
    new-instance v1, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-direct {v1, p0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->NoAnimation:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    .line 167
    invoke-virtual {v1, v2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v1

    .line 168
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnTouchOutside(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v1

    .line 169
    invoke-virtual {v1, v2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v1

    .line 170
    invoke-virtual {v1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    return-void
.end method

.method private toLogin()V
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 124
    invoke-static {p0, v0, v1}, Lcom/codemao/nemo/activity/LoginActivity;->startActivity(Landroid/content/Context;ZI)V

    .line 125
    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->finish()V

    const v0, 0x7f01004f

    const v1, 0x7f010050

    .line 126
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method


# virtual methods
.method protected contentViewId()I
    .registers 2

    const v0, 0x7f0d0047

    return v0
.end method

.method public initViewName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "启动页"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 53
    invoke-super {p0, p1}, Lcom/giu/xzz/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->getFirstAgreementStatus()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 55
    invoke-direct {p0}, Lcom/codemao/nemo/activity/FirstActivity;->afterAgreePolicy()V

    goto :goto_10

    .line 57
    :cond_d
    invoke-direct {p0}, Lcom/codemao/nemo/activity/FirstActivity;->showPolicy()V

    :goto_10
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/codemao/nemo/activity/FirstActivity;->mDialog:Lcom/codemao/nemo/dialog/ReusableDialog;

    if-eqz v0, :cond_7

    .line 65
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 67
    :cond_7
    invoke-super {p0}, Lcom/giu/xzz/BaseActivity;->onDestroy()V

    return-void
.end method
