.class public abstract Lcom/readboy/personalsettingauth/BaseAuthFragment;
.super Lcom/readboy/personalsettingauth/BasePSFragment;
.source "BaseAuthFragment.java"


# static fields
.field private static final MSG_REQUEST_INFO_TIME_OUT:I = 0x100


# instance fields
.field private authListener:Lcom/readboy/personalsettingauth/AuthListener;

.field private getInfoCall:Lretrofit2/Call;

.field private isNeedMobile:Z

.field private lastClickTime:J

.field protected mActivity:Landroid/app/Activity;

.field protected mAgreeBtn:Landroid/widget/TextView;

.field protected mAppIconImageView:Landroid/widget/ImageView;

.field protected mAppNameTextView:Landroid/widget/TextView;

.field protected mCheckBaseInfo:Landroid/view/View;

.field protected mCheckMobileInfo:Landroid/view/View;

.field protected mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLastUserInfo:Lcom/readboy/personalsettingauth/data/UserInfoResult;

.field private mLastUserMobile:Ljava/lang/String;

.field protected mLoadingGroup:Landroid/view/ViewGroup;

.field protected mLoadingReloadBtn:Landroid/view/View;

.field protected mLoadingReloadRoot:Landroid/view/View;

.field protected mLoadingRoot:Landroid/view/View;

.field private mNetwork:Lcom/readboy/personalsettingauth/UserNetwork;

.field protected mRoot:Landroid/view/View;

.field private mUserDbSearch:Lcom/readboy/provider/UserDbSearch;

.field private mUserInfoResult:Lcom/readboy/personalsettingauth/data/UserInfoResult;

.field private sharedPreferences:Landroid/content/SharedPreferences;

.field private userId:I

.field private userToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Lcom/readboy/personalsettingauth/BasePSFragment;-><init>()V

    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->isNeedMobile:Z

    return-void
.end method

.method static synthetic access$000(Lcom/readboy/personalsettingauth/BaseAuthFragment;)Lretrofit2/Call;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->getInfoCall:Lretrofit2/Call;

    return-object p0
.end method

.method static synthetic access$002(Lcom/readboy/personalsettingauth/BaseAuthFragment;Lretrofit2/Call;)Lretrofit2/Call;
    .registers 2

    .line 45
    iput-object p1, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->getInfoCall:Lretrofit2/Call;

    return-object p1
.end method

.method static synthetic access$100(Lcom/readboy/personalsettingauth/BaseAuthFragment;)V
    .registers 1

    .line 45
    invoke-direct {p0}, Lcom/readboy/personalsettingauth/BaseAuthFragment;->agree()V

    return-void
.end method

.method static synthetic access$200(Lcom/readboy/personalsettingauth/BaseAuthFragment;Z)Z
    .registers 2

    .line 45
    invoke-direct {p0, p1}, Lcom/readboy/personalsettingauth/BaseAuthFragment;->getUserInfoFromNetwork(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/readboy/personalsettingauth/BaseAuthFragment;)Landroid/os/Handler;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/readboy/personalsettingauth/BaseAuthFragment;)I
    .registers 1

    .line 45
    iget p0, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->userId:I

    return p0
.end method

.method static synthetic access$500(Lcom/readboy/personalsettingauth/BaseAuthFragment;)Ljava/lang/String;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->userToken:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/readboy/personalsettingauth/BaseAuthFragment;)Lcom/readboy/personalsettingauth/UserNetwork;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mNetwork:Lcom/readboy/personalsettingauth/UserNetwork;

    return-object p0
.end method

.method private agree()V
    .registers 3

    .line 207
    sget-object v0, Lcom/readboy/personalsettingauth/RBConfigureUtil;->_appid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3a

    sget-object v0, Lcom/readboy/personalsettingauth/RBConfigureUtil;->_appsec:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_3a

    .line 212
    :cond_11
    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/BaseAuthFragment;->isMobileChecked()Z

    .line 213
    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mLastUserInfo:Lcom/readboy/personalsettingauth/data/UserInfoResult;

    if-eqz v0, :cond_30

    .line 221
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_23

    .line 222
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_27

    .line 224
    :cond_23
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 226
    :goto_27
    iget-object v1, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mLastUserInfo:Lcom/readboy/personalsettingauth/data/UserInfoResult;

    invoke-static {v0}, Lcom/readboy/personalsettingauth/RBConfigureUtil;->getNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/readboy/personalsettingauth/data/UserInfoResult;->setSerial(Ljava/lang/String;)V

    .line 229
    :cond_30
    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mLastUserInfo:Lcom/readboy/personalsettingauth/data/UserInfoResult;

    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/BaseAuthFragment;->isMobileChecked()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/readboy/personalsettingauth/BaseAuthFragment;->onGetUserInfoSuccessed(Lcom/readboy/personalsettingauth/data/UserInfoResult;Z)V

    return-void

    .line 208
    :cond_3a
    :goto_3a
    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/BaseAuthFragment;->onAppAuthInfoEmpty()V

    return-void
.end method

.method private getUserInfoFromLocalDB()Lcom/readboy/provider/mhc/info/UserBaseInfo;
    .registers 2

    .line 320
    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mUserDbSearch:Lcom/readboy/provider/UserDbSearch;

    invoke-virtual {v0}, Lcom/readboy/provider/UserDbSearch;->getUserInfo()Lcom/readboy/provider/mhc/info/UserBaseInfo;

    move-result-object v0

    return-object v0
.end method

.method private getUserInfoFromNetwork(Z)Z
    .registers 12

    .line 328
    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/readboy/provider/UserDbSearch;->getInstance(Landroid/content/Context;)Lcom/readboy/provider/UserDbSearch;

    move-result-object v0

    iput-object v0, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mUserDbSearch:Lcom/readboy/provider/UserDbSearch;

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_26

    .line 332
    invoke-virtual {v0}, Lcom/readboy/provider/UserDbSearch;->getUserInfo()Lcom/readboy/provider/mhc/info/UserBaseInfo;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 334
    iget v1, v0, Lcom/readboy/provider/mhc/info/UserBaseInfo;->uid:I

    iput v1, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->userId:I

    .line 335
    iget-object v1, v0, Lcom/readboy/provider/mhc/info/UserBaseInfo;->token:Ljava/lang/String;

    iput-object v1, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->userToken:Ljava/lang/String;

    .line 336
    invoke-virtual {v0}, Lcom/readboy/provider/mhc/info/UserBaseInfo;->getUidParent()Ljava/lang/String;

    move-result-object v3

    goto :goto_2a

    .line 338
    :cond_21
    iput v2, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->userId:I

    .line 339
    iput-object v1, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->userToken:Ljava/lang/String;

    goto :goto_2a

    .line 342
    :cond_26
    iput v2, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->userId:I

    .line 343
    iput-object v1, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->userToken:Ljava/lang/String;

    :goto_2a
    move-object v6, v3

    .line 346
    iget v0, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->userId:I

    if-eqz v0, :cond_80

    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->userToken:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_38

    goto :goto_80

    .line 353
    :cond_38
    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/readboy/personalsettingauth/RBConfigureUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_58

    const/16 p1, 0x194

    .line 354
    sget v0, Lcom/readboy/personalsettingauth/R$string;->msg_auth_net_service_no_net:I

    invoke-virtual {p0, v0}, Lcom/readboy/personalsettingauth/BasePSFragment;->getResString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/readboy/personalsettingauth/BaseAuthFragment;->onGetUserInfoNetFailed(ILjava/lang/String;)V

    .line 356
    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/BaseAuthFragment;->showFail()V

    .line 357
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "请求失败，确保网络流畅后重试"

    invoke-static {p1, v0, v2}, Lcom/readboy/personalsettingauth/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return v2

    .line 361
    :cond_58
    sget-object v7, Lcom/readboy/personalsettingauth/RBConfigureUtil;->_appid:Ljava/lang/String;

    .line 362
    sget-object v8, Lcom/readboy/personalsettingauth/RBConfigureUtil;->_appsec:Ljava/lang/String;

    .line 364
    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 365
    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 367
    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mNetwork:Lcom/readboy/personalsettingauth/UserNetwork;

    iget v1, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->userId:I

    iget-object v2, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->userToken:Ljava/lang/String;

    new-instance v3, Lcom/readboy/personalsettingauth/BaseAuthFragment$5;

    move-object v4, v3

    move-object v5, p0

    move v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/readboy/personalsettingauth/BaseAuthFragment$5;-><init>(Lcom/readboy/personalsettingauth/BaseAuthFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/readboy/personalsettingauth/UserNetwork;->getUserInfo(ILjava/lang/String;Lretrofit2/Callback;)Lretrofit2/Call;

    move-result-object p1

    iput-object p1, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->getInfoCall:Lretrofit2/Call;

    const/4 p1, 0x1

    return p1

    .line 347
    :cond_80
    :goto_80
    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/BaseAuthFragment;->hideStatus()V

    .line 348
    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/BaseAuthFragment;->onGetUserInfoUserNull()V

    return v2
.end method

.method private getUserInfoResultFromUserInfo(Lcom/readboy/personalsettingauth/UserInfo;Z)Lcom/readboy/personalsettingauth/data/UserInfoResult;
    .registers 7

    const-string p2, "-"

    .line 589
    new-instance v0, Lcom/readboy/personalsettingauth/data/UserInfoResult;

    invoke-direct {v0}, Lcom/readboy/personalsettingauth/data/UserInfoResult;-><init>()V

    if-eqz p1, :cond_6b

    .line 592
    :try_start_9
    invoke-virtual {p1}, Lcom/readboy/personalsettingauth/UserInfo;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/readboy/personalsettingauth/data/UserInfoResult;->setUid(Ljava/lang/String;)V

    .line 593
    invoke-virtual {p1}, Lcom/readboy/personalsettingauth/UserInfo;->getRealname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/readboy/personalsettingauth/data/UserInfoResult;->setRealname(Ljava/lang/String;)V

    .line 594
    invoke-virtual {p1}, Lcom/readboy/personalsettingauth/UserInfo;->getGender()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/readboy/personalsettingauth/data/UserInfoResult;->setGender(Ljava/lang/String;)V

    .line 595
    invoke-virtual {p1}, Lcom/readboy/personalsettingauth/UserInfo;->getAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/readboy/personalsettingauth/data/UserInfoResult;->setAvatar(Ljava/lang/String;)V

    .line 599
    invoke-virtual {p1}, Lcom/readboy/personalsettingauth/UserInfo;->getBirth_y()Ljava/lang/String;

    move-result-object v1

    .line 600
    invoke-virtual {p1}, Lcom/readboy/personalsettingauth/UserInfo;->getBirth_m()Ljava/lang/String;

    move-result-object v2

    .line 601
    invoke-virtual {p1}, Lcom/readboy/personalsettingauth/UserInfo;->getBirth_d()Ljava/lang/String;

    move-result-object p1

    .line 602
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6b

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6b

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6b

    .line 603
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/readboy/personalsettingauth/util/RBCommonUtil;->getAge(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/readboy/personalsettingauth/data/UserInfoResult;->setAge(I)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_66} :catch_67

    goto :goto_6b

    :catch_67
    move-exception p1

    .line 606
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6b
    :goto_6b
    return-object v0
.end method

.method private isTokenInvalid(Lorg/json/JSONObject;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_17

    const-string v1, "errno"

    .line 517
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    const/16 v1, 0x1b61

    if-eq p1, v1, :cond_15

    const/16 v1, 0x1b64

    if-eq p1, v1, :cond_15

    const/16 v1, 0x1c20

    if-ne p1, v1, :cond_17

    :cond_15
    const/4 p1, 0x1

    return p1

    :cond_17
    return v0
.end method

.method private isUserLogin()Z
    .registers 3

    .line 306
    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/readboy/provider/UserDbSearch;->getInstance(Landroid/content/Context;)Lcom/readboy/provider/UserDbSearch;

    move-result-object v0

    iput-object v0, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mUserDbSearch:Lcom/readboy/provider/UserDbSearch;

    if-eqz v0, :cond_f

    .line 309
    invoke-virtual {v0}, Lcom/readboy/provider/UserDbSearch;->getUserInfo()Lcom/readboy/provider/mhc/info/UserBaseInfo;

    move-result-object v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    if-eqz v0, :cond_20

    .line 311
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

.method private onMobileFunctionStatusChanged()V
    .registers 3

    .line 233
    iget-boolean v0, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->isNeedMobile:Z

    if-nez v0, :cond_19

    .line 234
    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mCheckMobileInfo:Landroid/view/View;

    if-eqz v0, :cond_19

    const/16 v1, 0x8

    .line 235
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mCheckMobileInfo:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/CheckBox;

    if-eqz v1, :cond_19

    .line 237
    check-cast v0, Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_19
    return-void
.end method


# virtual methods
.method public disableMobileCheck()V
    .registers 3

    .line 155
    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mCheckMobileInfo:Landroid/view/View;

    if-eqz v0, :cond_25

    instance-of v1, v0, Landroid/widget/CheckBox;

    if-eqz v1, :cond_25

    .line 156
    check-cast v0, Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 157
    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mCheckMobileInfo:Landroid/view/View;

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 158
    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mCheckMobileInfo:Landroid/view/View;

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 159
    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mCheckMobileInfo:Landroid/view/View;

    check-cast v0, Landroid/widget/CheckBox;

    const-string v1, "获取你的手机号码：（个人中心未绑定手机）"

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    :cond_25
    return-void
.end method

.method protected abstract getAuthAgreeBtnResId()I
.end method

.method protected abstract getAuthAppIconImageViewResId()I
.end method

.method protected abstract getAuthAppNameTextViewResId()I
.end method

.method protected abstract getAuthBaseInfoCheck()I
.end method

.method public getAuthListener()Lcom/readboy/personalsettingauth/AuthListener;
    .registers 2

    .line 576
    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->authListener:Lcom/readboy/personalsettingauth/AuthListener;

    return-object v0
.end method

.method protected abstract getAuthMobileInfoCheck()I
.end method

.method protected abstract getFrameLayoutContentViewResId()I
.end method

.method protected abstract getLoadingRoot()I
.end method

.method protected abstract getLoadingViewGroup()Landroid/view/ViewGroup;
.end method

.method protected abstract getLoadingViewReloadBtn()I
.end method

.method protected abstract getLoadingViewReloadRoot()I
.end method

.method protected abstract getRootResId()I
.end method

.method public hideStatus()V
    .registers 3

    .line 505
    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mLoadingGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_9

    const/16 v1, 0x8

    .line 506
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_9
    return-void
.end method

.method public isFastDoubleClick()Z
    .registers 8

    .line 534
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 535
    iget-wide v2, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->lastClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v4, v2

    if-gtz v6, :cond_16

    const-wide/16 v4, 0x1f4

    cmp-long v6, v2, v4

    if-gtz v6, :cond_16

    const/4 v0, 0x1

    return v0

    .line 540
    :cond_16
    iput-wide v0, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->lastClickTime:J

    const/4 v0, 0x0

    return v0
.end method

.method public isMobileChecked()Z
    .registers 3

    .line 144
    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mCheckMobileInfo:Landroid/view/View;

    if-eqz v0, :cond_12

    instance-of v1, v0, Landroid/widget/CheckBox;

    if-eqz v1, :cond_12

    check-cast v0, Landroid/widget/CheckBox;

    .line 145
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public mobileEncry(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_a

    const-string v0, "(\\d{3})\\d{4}(\\d{4})"

    const-string v1, "$1****$2"

    .line 475
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_a
    return-object p1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 5

    .line 245
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 246
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_82

    .line 248
    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/BaseAuthFragment;->getLoadingViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mLoadingGroup:Landroid/view/ViewGroup;

    .line 249
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 251
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

    .line 252
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 253
    iget-object v1, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mLoadingGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mLoadingGroup:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 255
    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mLoadingGroup:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mLoadingGroup:Landroid/view/ViewGroup;

    new-instance v2, Lcom/readboy/personalsettingauth/BaseAuthFragment$3;

    invoke-direct {v2, p0}, Lcom/readboy/personalsettingauth/BaseAuthFragment$3;-><init>(Lcom/readboy/personalsettingauth/BaseAuthFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mLoadingGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/BaseAuthFragment;->getLoadingRoot()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mLoadingRoot:Landroid/view/View;

    .line 262
    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mLoadingGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/BaseAuthFragment;->getLoadingViewReloadBtn()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mLoadingReloadBtn:Landroid/view/View;

    .line 263
    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mLoadingGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/BaseAuthFragment;->getLoadingViewReloadRoot()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mLoadingReloadRoot:Landroid/view/View;

    .line 264
    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mLoadingReloadBtn:Landroid/view/View;

    if-eqz v0, :cond_75

    .line 265
    new-instance v2, Lcom/readboy/personalsettingauth/BaseAuthFragment$4;

    invoke-direct {v2, p0}, Lcom/readboy/personalsettingauth/BaseAuthFragment$4;-><init>(Lcom/readboy/personalsettingauth/BaseAuthFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    :cond_75
    check-cast p1, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mLoadingGroup:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 279
    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/BaseAuthFragment;->showLoad()V

    .line 280
    invoke-direct {p0, v1}, Lcom/readboy/personalsettingauth/BaseAuthFragment;->getUserInfoFromNetwork(Z)Z

    :cond_82
    return-void
.end method

.method protected abstract onAppAuthInfoEmpty()V
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 2

    .line 89
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 90
    iput-object p1, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_9

    .line 92
    iput-object p1, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mActivity:Landroid/app/Activity;

    :cond_9
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 3

    .line 98
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 99
    iput-object p1, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_f

    .line 100
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_f

    .line 101
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mActivity:Landroid/app/Activity;

    :cond_f
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 112
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 113
    iget-object p1, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/readboy/provider/UserDbSearch;->getInstance(Landroid/content/Context;)Lcom/readboy/provider/UserDbSearch;

    move-result-object p1

    iput-object p1, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mUserDbSearch:Lcom/readboy/provider/UserDbSearch;

    .line 114
    new-instance p1, Lcom/readboy/personalsettingauth/UserNetwork;

    invoke-direct {p1}, Lcom/readboy/personalsettingauth/UserNetwork;-><init>()V

    iput-object p1, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mNetwork:Lcom/readboy/personalsettingauth/UserNetwork;

    .line 115
    iget-object p1, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mContext:Landroid/content/Context;

    const-string v0, "RBAuth"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 116
    new-instance p1, Lcom/readboy/personalsettingauth/BaseAuthFragment$1;

    invoke-direct {p1, p0}, Lcom/readboy/personalsettingauth/BaseAuthFragment$1;-><init>(Lcom/readboy/personalsettingauth/BaseAuthFragment;)V

    iput-object p1, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mHandler:Landroid/os/Handler;

    .line 137
    invoke-direct {p0}, Lcom/readboy/personalsettingauth/BaseAuthFragment;->isUserLogin()Z

    move-result p1

    if-nez p1, :cond_2d

    .line 138
    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/BaseAuthFragment;->onGetUserInfoUserNull()V

    :cond_2d
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    .line 166
    iget-object p1, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/BaseAuthFragment;->getFrameLayoutContentViewResId()I

    move-result p2

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 168
    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/BaseAuthFragment;->getRootResId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mRoot:Landroid/view/View;

    .line 169
    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/BaseAuthFragment;->getAuthAgreeBtnResId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mAgreeBtn:Landroid/widget/TextView;

    .line 170
    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/BaseAuthFragment;->getAuthAppIconImageViewResId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mAppIconImageView:Landroid/widget/ImageView;

    .line 171
    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/BaseAuthFragment;->getAuthAppNameTextViewResId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mAppNameTextView:Landroid/widget/TextView;

    .line 173
    iget-object p2, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mAppIconImageView:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/readboy/personalsettingauth/util/RBCommonUtil;->getAppIconDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 181
    iget-object p2, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mAppNameTextView:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/readboy/personalsettingauth/util/RBCommonUtil;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " 申请获得"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/BaseAuthFragment;->getAuthBaseInfoCheck()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mCheckBaseInfo:Landroid/view/View;

    .line 183
    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/BaseAuthFragment;->getAuthMobileInfoCheck()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mCheckMobileInfo:Landroid/view/View;

    .line 184
    invoke-direct {p0}, Lcom/readboy/personalsettingauth/BaseAuthFragment;->onMobileFunctionStatusChanged()V

    .line 186
    iget-object p2, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mAgreeBtn:Landroid/widget/TextView;

    new-instance p3, Lcom/readboy/personalsettingauth/BaseAuthFragment$2;

    invoke-direct {p3, p0}, Lcom/readboy/personalsettingauth/BaseAuthFragment$2;-><init>(Lcom/readboy/personalsettingauth/BaseAuthFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object p2, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mRoot:Landroid/view/View;

    if-eqz p2, :cond_96

    const/4 p3, 0x4

    .line 200
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    :cond_96
    return-object p1
.end method

.method public onDestroy()V
    .registers 1

    .line 286
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 287
    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/BaseAuthFragment;->releaseResource()V

    return-void
.end method

.method protected abstract onGetUserInfoDataError(ILjava/lang/String;)V
.end method

.method protected abstract onGetUserInfoNetFailed(ILjava/lang/String;)V
.end method

.method protected onGetUserInfoResponse(Lretrofit2/Response;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "Lorg/json/JSONObject;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 436
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 437
    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "rbAuthId"

    const-string v2, ""

    .line 438
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "rbAuthSec"

    .line 439
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 440
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 441
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7b

    .line 443
    :try_start_25
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 444
    invoke-direct {p0, v2}, Lcom/readboy/personalsettingauth/BaseAuthFragment;->isTokenInvalid(Lorg/json/JSONObject;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 445
    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/BaseAuthFragment;->onGetUserInfoTokenInvalid()V

    goto :goto_7b

    .line 447
    :cond_34
    invoke-static {p2}, Lcom/readboy/personalsettingauth/RBConfigureUtil;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 448
    invoke-static {p3}, Lcom/readboy/personalsettingauth/RBConfigureUtil;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 449
    invoke-static {p1}, Lcom/readboy/personalsettingauth/UserInfo;->getUserInfoFromJsonStr(Ljava/lang/String;)Lcom/readboy/personalsettingauth/UserInfo;

    move-result-object p1

    .line 450
    invoke-direct {p0, p1, p5}, Lcom/readboy/personalsettingauth/BaseAuthFragment;->getUserInfoResultFromUserInfo(Lcom/readboy/personalsettingauth/UserInfo;Z)Lcom/readboy/personalsettingauth/data/UserInfoResult;

    move-result-object p1

    .line 451
    iput-object p1, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mLastUserInfo:Lcom/readboy/personalsettingauth/data/UserInfoResult;

    .line 453
    iput-object p4, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mLastUserMobile:Ljava/lang/String;

    .line 454
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_58

    .line 455
    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/BaseAuthFragment;->disableMobileCheck()V

    goto :goto_70

    .line 457
    :cond_58
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "获取你的手机号码："

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mobileEncry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/readboy/personalsettingauth/BaseAuthFragment;->setMobileCheckText(Ljava/lang/String;)V

    .line 459
    :goto_70
    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/BaseAuthFragment;->hideStatus()V

    .line 461
    invoke-direct {p0}, Lcom/readboy/personalsettingauth/BaseAuthFragment;->agree()V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_76} :catch_77

    return-void

    :catch_77
    move-exception p1

    .line 466
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 469
    :cond_7b
    :goto_7b
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const/4 p2, 0x0

    const-string p3, "请求失败，请稍后重试"

    invoke-static {p1, p3, p2}, Lcom/readboy/personalsettingauth/util/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 470
    invoke-virtual {p0}, Lcom/readboy/personalsettingauth/BaseAuthFragment;->showFail()V

    return-void
.end method

.method protected abstract onGetUserInfoSuccessed(Lcom/readboy/personalsettingauth/data/UserInfoResult;Z)V
.end method

.method protected abstract onGetUserInfoTokenInvalid()V
.end method

.method protected abstract onGetUserInfoUserNull()V
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method protected releaseResource()V
    .registers 3

    .line 291
    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->getInfoCall:Lretrofit2/Call;

    if-eqz v0, :cond_7

    .line 292
    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    .line 294
    :cond_7
    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_f

    const/4 v1, 0x0

    .line 295
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_f
    return-void
.end method

.method public setAuthListener(Lcom/readboy/personalsettingauth/AuthListener;)V
    .registers 2

    .line 580
    iput-object p1, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->authListener:Lcom/readboy/personalsettingauth/AuthListener;

    return-void
.end method

.method public setMobileCheckText(Ljava/lang/String;)V
    .registers 4

    .line 149
    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mCheckMobileInfo:Landroid/view/View;

    if-eqz v0, :cond_d

    instance-of v1, v0, Landroid/widget/CheckBox;

    if-eqz v1, :cond_d

    .line 150
    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    :cond_d
    return-void
.end method

.method public setNeedMobile(Z)V
    .registers 2

    .line 613
    iput-boolean p1, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->isNeedMobile:Z

    return-void
.end method

.method public showFail()V
    .registers 4

    .line 493
    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mLoadingGroup:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 494
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 496
    :cond_8
    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mLoadingRoot:Landroid/view/View;

    if-eqz v0, :cond_11

    const/16 v2, 0x8

    .line 497
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 499
    :cond_11
    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mLoadingReloadRoot:Landroid/view/View;

    if-eqz v0, :cond_18

    .line 500
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_18
    return-void
.end method

.method public showLoad()V
    .registers 3

    .line 481
    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mLoadingGroup:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 482
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 484
    :cond_8
    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mLoadingRoot:Landroid/view/View;

    if-eqz v0, :cond_f

    .line 485
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 487
    :cond_f
    iget-object v0, p0, Lcom/readboy/personalsettingauth/BaseAuthFragment;->mLoadingReloadRoot:Landroid/view/View;

    if-eqz v0, :cond_18

    const/16 v1, 0x8

    .line 488
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_18
    return-void
.end method
