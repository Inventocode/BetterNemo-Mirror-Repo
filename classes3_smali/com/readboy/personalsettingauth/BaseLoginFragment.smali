.class public abstract Lcom/readboy/personalsettingauth/BaseLoginFragment;
.super Lcom/readboy/personalsettingauth/BasePSFragment;
.source "BaseLoginFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# static fields
.field private static final MSG_LOGIN_TIME_OUT:I = 0x101

.field private static final MSG_PWD_REQUEST_FOCUS:I = 0x100


# instance fields
.field private authListener:Lcom/readboy/personalsettingauth/AuthListener;

.field private lastClickTime:J

.field private loginCall:Lretrofit2/Call;

.field private loginResult:Lcom/readboy/personalsettingauth/LoginResult;

.field private mAccountEditView:Landroid/widget/EditText;

.field protected mActivity:Landroid/app/Activity;

.field protected mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field protected mLoadingGroup:Landroid/view/ViewGroup;

.field private mLoginBtn:Landroid/widget/TextView;

.field private mNetwork:Lcom/readboy/personalsettingauth/UserNetwork;

.field private mPasswordEditView:Landroid/widget/EditText;

.field private mUserDbSearch:Lcom/readboy/provider/UserDbSearch;

.field private textWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Lcom/readboy/personalsettingauth/BasePSFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/readboy/personalsettingauth/BaseLoginFragment;)Landroid/widget/EditText;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment;->mPasswordEditView:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/readboy/personalsettingauth/BaseLoginFragment;)Landroid/widget/EditText;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment;->mAccountEditView:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200(Lcom/readboy/personalsettingauth/BaseLoginFragment;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/readboy/personalsettingauth/BaseLoginFragment;->userLogin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/readboy/personalsettingauth/BaseLoginFragment;)Landroid/widget/TextView;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment;->mLoginBtn:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/readboy/personalsettingauth/BaseLoginFragment;)Lcom/readboy/personalsettingauth/LoginResult;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment;->loginResult:Lcom/readboy/personalsettingauth/LoginResult;

    return-object p0
.end method

.method static synthetic access$402(Lcom/readboy/personalsettingauth/BaseLoginFragment;Lcom/readboy/personalsettingauth/LoginResult;)Lcom/readboy/personalsettingauth/LoginResult;
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment;->loginResult:Lcom/readboy/personalsettingauth/LoginResult;

    return-object p1
.end method

.method private isUserLogin()Z
    .registers 3

    .line 233
    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/readboy/provider/UserDbSearch;->getInstance(Landroid/content/Context;)Lcom/readboy/provider/UserDbSearch;

    move-result-object v0

    iput-object v0, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment;->mUserDbSearch:Lcom/readboy/provider/UserDbSearch;

    if-eqz v0, :cond_f

    .line 236
    invoke-virtual {v0}, Lcom/readboy/provider/UserDbSearch;->getUserInfo()Lcom/readboy/provider/mhc/info/UserBaseInfo;

    move-result-object v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    if-eqz v0, :cond_20

    .line 238
    iget v1, v0, Lcom/readboy/provider/mhc/info/UserBaseInfo;->uid:I

    if-eqz v1, :cond_20

    iget-object v0, v0, Lcom/readboy/provider/mhc/info/UserBaseInfo;->token:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    return v0
.end method

.method private userLogin(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 247
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_58

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_58

    .line 252
    :cond_d
    sget-object v0, Lcom/readboy/personalsettingauth/RBConfigureUtil;->_appid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_54

    sget-object v0, Lcom/readboy/personalsettingauth/RBConfigureUtil;->_appsec:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_54

    .line 257
    :cond_1e
    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/readboy/personalsettingauth/RBConfigureUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_32

    const/16 p1, 0x194

    .line 258
    sget p2, Lcom/readboy/personalsettingauth/R$string;->msg_login_net_service_no_net:I

    invoke-virtual {p0, p2}, Lcom/readboy/personalsettingauth/BasePSFragment;->getResString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/readboy/personalsettingauth/BaseLoginFragment;->onUserLoginNetFailed(ILjava/lang/String;)V

    return-void

    .line 262
    :cond_32
    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment;->mLoadingGroup:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x101

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 265
    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 267
    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment;->mNetwork:Lcom/readboy/personalsettingauth/UserNetwork;

    new-instance v1, Lcom/readboy/personalsettingauth/BaseLoginFragment$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/readboy/personalsettingauth/BaseLoginFragment$6;-><init>(Lcom/readboy/personalsettingauth/BaseLoginFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/readboy/personalsettingauth/UserNetwork;->userLogin(Ljava/lang/String;Ljava/lang/String;Lretrofit2/Callback;)Lretrofit2/Call;

    move-result-object p1

    iput-object p1, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment;->loginCall:Lretrofit2/Call;

    return-void

    .line 253
    :cond_54
    :goto_54
    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/BaseLoginFragment;->onAppAuthInfoEmpty()V

    return-void

    .line 248
    :cond_58
    :goto_58
    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/BaseLoginFragment;->onUserLoginInfoEmpty()V

    return-void
.end method


# virtual methods
.method public getAuthListener()Lcom/readboy/personalsettingauth/AuthListener;
    .registers 2

    .line 410
    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment;->authListener:Lcom/readboy/personalsettingauth/AuthListener;

    return-object v0
.end method

.method protected abstract getFrameLayoutContentViewResId()I
.end method

.method protected abstract getLoadingViewGroup()Landroid/view/ViewGroup;
.end method

.method protected abstract getLoginAccountEditResId()I
.end method

.method protected abstract getLoginLoginBtnResId()I
.end method

.method protected abstract getLoginPasswordEditResId()I
.end method

.method public hideLoading()V
    .registers 3

    .line 361
    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment;->mLoadingGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_9

    const/16 v1, 0x8

    .line 362
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_9
    return-void
.end method

.method protected hideSoftKeyboard(Landroid/view/View;)V
    .registers 4

    if-eqz p1, :cond_16

    .line 426
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    .line 428
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 429
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_16
    return-void
.end method

.method public isFastDoubleClick()Z
    .registers 8

    .line 328
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 329
    iget-wide v2, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment;->lastClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v4, v2

    if-gtz v6, :cond_16

    const-wide/16 v4, 0x1f4

    cmp-long v6, v2, v4

    if-gtz v6, :cond_16

    const/4 v0, 0x1

    return v0

    .line 334
    :cond_16
    iput-wide v0, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment;->lastClickTime:J

    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 5

    .line 187
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 188
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4c

    .line 190
    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/BaseLoginFragment;->getLoadingViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment;->mLoadingGroup:Landroid/view/ViewGroup;

    .line 191
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 193
    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/BasePSFragment;->getRes()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41f00000  # 30.0f

    mul-float v1, v1, v2

    const/high16 v2, 0x3f000000  # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 194
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 195
    iget-object v1, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment;->mLoadingGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment;->mLoadingGroup:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 197
    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment;->mLoadingGroup:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment;->mLoadingGroup:Landroid/view/ViewGroup;

    new-instance v1, Lcom/readboy/personalsettingauth/BaseLoginFragment$5;

    invoke-direct {v1, p0}, Lcom/readboy/personalsettingauth/BaseLoginFragment$5;-><init>(Lcom/readboy/personalsettingauth/BaseLoginFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    check-cast p1, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment;->mLoadingGroup:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_4c
    return-void
.end method

.method protected abstract onAppAuthInfoEmpty()V
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 2

    .line 70
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 71
    iput-object p1, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_9

    .line 73
    iput-object p1, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment;->mActivity:Landroid/app/Activity;

    :cond_9
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 3

    .line 79
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 80
    iput-object p1, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_f

    .line 81
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_f

    .line 82
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment;->mActivity:Landroid/app/Activity;

    :cond_f
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 93
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 94
    iget-object p1, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/readboy/provider/UserDbSearch;->getInstance(Landroid/content/Context;)Lcom/readboy/provider/UserDbSearch;

    move-result-object p1

    iput-object p1, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment;->mUserDbSearch:Lcom/readboy/provider/UserDbSearch;

    .line 95
    new-instance p1, Lcom/readboy/personalsettingauth/UserNetwork;

    invoke-direct {p1}, Lcom/readboy/personalsettingauth/UserNetwork;-><init>()V

    iput-object p1, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment;->mNetwork:Lcom/readboy/personalsettingauth/UserNetwork;

    .line 96
    new-instance p1, Lcom/readboy/personalsettingauth/BaseLoginFragment$1;

    invoke-direct {p1, p0}, Lcom/readboy/personalsettingauth/BaseLoginFragment$1;-><init>(Lcom/readboy/personalsettingauth/BaseLoginFragment;)V

    iput-object p1, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment;->mHandler:Landroid/os/Handler;

    .line 115
    new-instance p1, Landroid/content/Intent;

    sget-object v0, Lcom/readboy/personalsettingauth/RBConfigureUtil;->ACTION_SERVICE_LOGIN:Ljava/lang/String;

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    new-instance v0, Landroid/content/ComponentName;

    sget-object v1, Lcom/readboy/personalsettingauth/RBConfigureUtil;->SERVICE_LOGIN_PKG:Ljava/lang/String;

    sget-object v2, Lcom/readboy/personalsettingauth/RBConfigureUtil;->SERVICE_LOGIN_CLASS:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 119
    sget-object v0, Lcom/readboy/personalsettingauth/RBConfigureUtil;->INTENT_EXTRA_NO_LOGIN_ZHUHAI_FLAG:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 120
    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    .line 125
    iget-object p1, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/BaseLoginFragment;->getFrameLayoutContentViewResId()I

    move-result p2

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 126
    new-instance p2, Lcom/readboy/personalsettingauth/BaseLoginFragment$2;

    invoke-direct {p2, p0, p1}, Lcom/readboy/personalsettingauth/BaseLoginFragment$2;-><init>(Lcom/readboy/personalsettingauth/BaseLoginFragment;Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/BaseLoginFragment;->getLoginAccountEditResId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment;->mAccountEditView:Landroid/widget/EditText;

    .line 135
    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/BaseLoginFragment;->getLoginPasswordEditResId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment;->mPasswordEditView:Landroid/widget/EditText;

    .line 136
    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/BaseLoginFragment;->getLoginLoginBtnResId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment;->mLoginBtn:Landroid/widget/TextView;

    .line 137
    new-instance p3, Lcom/readboy/personalsettingauth/BaseLoginFragment$3;

    invoke-direct {p3, p0}, Lcom/readboy/personalsettingauth/BaseLoginFragment$3;-><init>(Lcom/readboy/personalsettingauth/BaseLoginFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object p2, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment;->mAccountEditView:Landroid/widget/EditText;

    const/4 p3, 0x5

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 154
    iget-object p2, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment;->mPasswordEditView:Landroid/widget/EditText;

    const/4 p3, 0x6

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 155
    iget-object p2, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment;->mAccountEditView:Landroid/widget/EditText;

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 156
    iget-object p2, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment;->mPasswordEditView:Landroid/widget/EditText;

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 157
    iget-object p2, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment;->mAccountEditView:Landroid/widget/EditText;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 158
    iget-object p2, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment;->mPasswordEditView:Landroid/widget/EditText;

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 160
    new-instance p2, Lcom/readboy/personalsettingauth/BaseLoginFragment$4;

    invoke-direct {p2, p0}, Lcom/readboy/personalsettingauth/BaseLoginFragment$4;-><init>(Lcom/readboy/personalsettingauth/BaseLoginFragment;)V

    iput-object p2, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment;->textWatcher:Landroid/text/TextWatcher;

    .line 179
    iget-object p3, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment;->mAccountEditView:Landroid/widget/EditText;

    invoke-virtual {p3, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 180
    iget-object p2, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment;->mPasswordEditView:Landroid/widget/EditText;

    iget-object p3, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment;->textWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 181
    iget-object p2, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment;->mLoginBtn:Landroid/widget/TextView;

    invoke-virtual {p0, p2, v0}, Lcom/readboy/personalsettingauth/BaseLoginFragment;->setCommonButtonEnable(Landroid/view/View;Z)V

    return-object p1
.end method

.method public onDestroy()V
    .registers 1

    .line 209
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 210
    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/BaseLoginFragment;->releaseResource()V

    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 6

    const/4 p3, 0x5

    if-eq p2, p3, :cond_11

    const/4 p3, 0x6

    if-eq p2, p3, :cond_7

    goto :goto_25

    .line 392
    :cond_7
    iget-object p2, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment;->mPasswordEditView:Landroid/widget/EditText;

    if-ne p1, p2, :cond_25

    .line 393
    iget-object p1, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment;->mLoginBtn:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->performClick()Z

    goto :goto_25

    .line 397
    :cond_11
    iget-object p2, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment;->mAccountEditView:Landroid/widget/EditText;

    if-ne p1, p2, :cond_25

    .line 398
    iget-object p1, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_25

    const/16 p2, 0x100

    .line 399
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 400
    iget-object p1, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_25
    :goto_25
    const/4 p1, 0x0

    return p1
.end method

.method public onLoginSuccessedCallBack()V
    .registers 3

    .line 339
    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/BaseLoginFragment;->removeLoginTimeoutMsg()V

    .line 340
    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/BaseLoginFragment;->onUserLoginSuccessed()V

    .line 341
    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment;->mLoadingGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_f

    const/16 v1, 0x8

    .line 342
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_f
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method protected abstract onUserLoginDataError(ILjava/lang/String;)V
.end method

.method protected abstract onUserLoginInfoEmpty()V
.end method

.method protected abstract onUserLoginNetFailed(ILjava/lang/String;)V
.end method

.method protected abstract onUserLoginSuccessed()V
.end method

.method protected releaseResource()V
    .registers 3

    .line 214
    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment;->loginCall:Lretrofit2/Call;

    if-eqz v0, :cond_7

    .line 215
    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    .line 217
    :cond_7
    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_f

    const/4 v1, 0x0

    .line 218
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 220
    :cond_f
    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment;->textWatcher:Landroid/text/TextWatcher;

    if-eqz v0, :cond_1f

    .line 221
    iget-object v1, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment;->mAccountEditView:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 222
    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment;->mPasswordEditView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment;->textWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1f
    return-void
.end method

.method public removeLoginTimeoutMsg()V
    .registers 2

    const/4 v0, 0x0

    .line 348
    invoke-virtual {p0, v0}, Lcom/readboy/personalsettingauth/BaseLoginFragment;->removeLoginTimeoutMsg(Z)V

    return-void
.end method

.method public removeLoginTimeoutMsg(Z)V
    .registers 4

    .line 352
    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_9

    const/16 v1, 0x101

    .line 353
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_9
    if-eqz p1, :cond_e

    .line 356
    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/BaseLoginFragment;->hideLoading()V

    :cond_e
    return-void
.end method

.method public setAuthListener(Lcom/readboy/personalsettingauth/AuthListener;)V
    .registers 2

    .line 414
    iput-object p1, p0, Lcom/readboy/personalsettingauth/BaseLoginFragment;->authListener:Lcom/readboy/personalsettingauth/AuthListener;

    return-void
.end method

.method protected setCommonButtonEnable(Landroid/view/View;Z)V
    .registers 4

    if-eqz p1, :cond_b

    .line 418
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eq v0, p2, :cond_b

    .line 419
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    :cond_b
    if-eqz p2, :cond_10

    const/high16 p2, 0x3f800000  # 1.0f

    goto :goto_12

    :cond_10
    const/high16 p2, 0x3f000000  # 0.5f

    .line 421
    :goto_12
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
