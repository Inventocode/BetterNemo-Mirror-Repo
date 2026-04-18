.class public Lcom/codemao/nemo/activity/UserInfoSettingActivity;
.super Lcom/giu/xzz/BaseActivity;
.source "UserInfoSettingActivity.java"

# interfaces
.implements Lcom/codemao/nemo/view/KeyboardHeightObserver;


# instance fields
.field adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

.field private avatarUrlDefault:Ljava/lang/String;

.field private choosePosition:I

.field private datas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;",
            ">;"
        }
    .end annotation
.end field

.field private delegate:Lcom/codemao/nemo/adapter/UserRegistAvatarChooseDelegate;

.field private discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

.field etNickname:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field flRoot:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field hidePopBottom:I

.field private isInit:Z

.field private isKeyboardShow:Z

.field ivAvatar:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivAvatarEdit:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field keyboadHeight:I

.field private keyboardHeightProvider:Lcom/codemao/nemo/view/KeyboardHeightProvider;

.field private loadingDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

.field private nickNameDefault:Ljava/lang/String;

.field rlChoose:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rlInput:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rlTop:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rvAvatarChoose:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private screenHeight:I

.field private screenWitdh:I

.field tvCreate:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvProvision:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvUsedNotice:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 67
    invoke-direct {p0}, Lcom/giu/xzz/BaseActivity;-><init>()V

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->isInit:Z

    const/4 v0, -0x1

    .line 94
    iput v0, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->keyboadHeight:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->hidePopBottom:I

    .line 99
    iput v0, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->choosePosition:I

    .line 104
    iput-boolean v0, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->isKeyboardShow:Z

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/activity/UserInfoSettingActivity;)I
    .registers 1

    .line 67
    iget p0, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->choosePosition:I

    return p0
.end method

.method static synthetic access$002(Lcom/codemao/nemo/activity/UserInfoSettingActivity;I)I
    .registers 2

    .line 67
    iput p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->choosePosition:I

    return p1
.end method

.method static synthetic access$100(Lcom/codemao/nemo/activity/UserInfoSettingActivity;)Lcom/codemao/nemo/adapter/UserRegistAvatarChooseDelegate;
    .registers 1

    .line 67
    iget-object p0, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->delegate:Lcom/codemao/nemo/adapter/UserRegistAvatarChooseDelegate;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/nemo/activity/UserInfoSettingActivity;)Ljava/util/ArrayList;
    .registers 1

    .line 67
    iget-object p0, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->datas:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/codemao/nemo/activity/UserInfoSettingActivity;)Lcom/codemao/nemo/view/KeyboardHeightProvider;
    .registers 1

    .line 67
    iget-object p0, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->keyboardHeightProvider:Lcom/codemao/nemo/view/KeyboardHeightProvider;

    return-object p0
.end method

.method static synthetic access$402(Lcom/codemao/nemo/activity/UserInfoSettingActivity;I)I
    .registers 2

    .line 67
    iput p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->screenWitdh:I

    return p1
.end method

.method static synthetic access$502(Lcom/codemao/nemo/activity/UserInfoSettingActivity;I)I
    .registers 2

    .line 67
    iput p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->screenHeight:I

    return p1
.end method

.method static synthetic access$600(Lcom/codemao/nemo/activity/UserInfoSettingActivity;)V
    .registers 1

    .line 67
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->showChooseAnim()V

    return-void
.end method

.method static synthetic access$700(Lcom/codemao/nemo/activity/UserInfoSettingActivity;)V
    .registers 1

    .line 67
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->hideLoading()V

    return-void
.end method

.method private getRandomName()V
    .registers 3

    .line 332
    invoke-static {p0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 333
    invoke-static {p0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 336
    :cond_a
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->showRandomLoading()V

    .line 337
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    new-instance v1, Lcom/codemao/nemo/activity/UserInfoSettingActivity$9;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/UserInfoSettingActivity$9;-><init>(Lcom/codemao/nemo/activity/UserInfoSettingActivity;)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/http/DiscoveryNetUtil;->getRandomNickname(Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method

.method private hideLoading()V
    .registers 2

    .line 521
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->loadingDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    if-eqz v0, :cond_7

    .line 522
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_7
    return-void
.end method

.method private setUserInfo()V
    .registers 6

    .line 408
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->etNickname:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 410
    iget-object v1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->nickNameDefault:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "avatar_url"

    if-eqz v1, :cond_43

    .line 411
    iget-object v1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->datas:Ljava/util/ArrayList;

    iget v3, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->choosePosition:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;->getHttpUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->avatarUrlDefault:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 412
    iget-object v1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->datas:Ljava/util/ArrayList;

    iget v3, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->choosePosition:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;->getHttpUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/codemao/nemo/bean/ChainParam;->create(Ljava/lang/String;Ljava/lang/Object;)Lcom/codemao/nemo/bean/ChainParam;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/ChainParam;->map()Ljava/util/Map;

    move-result-object v1

    goto :goto_5f

    :cond_41
    const/4 v1, 0x0

    goto :goto_5f

    :cond_43
    const-string v1, "nickname"

    .line 415
    invoke-static {v1, v0}, Lcom/codemao/nemo/bean/ChainParam;->create(Ljava/lang/String;Ljava/lang/Object;)Lcom/codemao/nemo/bean/ChainParam;

    move-result-object v1

    iget-object v3, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->datas:Ljava/util/ArrayList;

    iget v4, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->choosePosition:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;->getHttpUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/codemao/nemo/bean/ChainParam;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/codemao/nemo/bean/ChainParam;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/ChainParam;->map()Ljava/util/Map;

    move-result-object v1

    :goto_5f
    if-eqz v1, :cond_79

    .line 418
    invoke-static {p0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_6b

    .line 419
    invoke-static {p0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 422
    :cond_6b
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->showLoading()V

    .line 423
    iget-object v2, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    new-instance v3, Lcom/codemao/nemo/activity/UserInfoSettingActivity$10;

    invoke-direct {v3, p0, v0}, Lcom/codemao/nemo/activity/UserInfoSettingActivity$10;-><init>(Lcom/codemao/nemo/activity/UserInfoSettingActivity;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Lcom/codemao/nemo/http/DiscoveryNetUtil;->setUserInfo(Ljava/util/Map;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    goto :goto_7c

    .line 459
    :cond_79
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->setUserInfoDonw()V

    :goto_7c
    return-void
.end method

.method private setViewListener()V
    .registers 5

    .line 170
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->etNickname:Landroid/widget/EditText;

    new-instance v1, Lcom/codemao/nemo/activity/UserInfoSettingActivity$3;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/UserInfoSettingActivity$3;-><init>(Lcom/codemao/nemo/activity/UserInfoSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 190
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->etNickname:Landroid/widget/EditText;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Lcom/codemao/nemo/activity/UserInfoSettingActivity$4;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/activity/UserInfoSettingActivity$4;-><init>(Lcom/codemao/nemo/activity/UserInfoSettingActivity;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 201
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->etNickname:Landroid/widget/EditText;

    new-instance v1, Lcom/codemao/nemo/activity/UserInfoSettingActivity$5;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/UserInfoSettingActivity$5;-><init>(Lcom/codemao/nemo/activity/UserInfoSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method private showChooseAnim()V
    .registers 4

    .line 322
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->rlChoose:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 323
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->rvAvatarChoose:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    const v0, 0x7f01001a

    .line 324
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AnimationSet;

    const-wide/16 v1, 0x190

    .line 325
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    const/4 v1, 0x1

    .line 326
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 327
    iget-object v1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->rlChoose:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private showLoading()V
    .registers 3

    .line 505
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->loadingDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    const-string/jumbo v1, "信息上传中..."

    if-nez v0, :cond_e

    .line 506
    new-instance v0, Lcom/codemao/nemo/dialog/LoadingDialog;

    invoke-direct {v0, p0, v1}, Lcom/codemao/nemo/dialog/LoadingDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->loadingDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    .line 508
    :cond_e
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->loadingDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/LoadingDialog;->setCotent(Ljava/lang/String;)Lcom/codemao/nemo/dialog/LoadingDialog;

    .line 509
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->loadingDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    invoke-virtual {v0}, Lcom/codemao/nemo/dialog/LoadingDialog;->show()V

    return-void
.end method

.method private showRandomLoading()V
    .registers 3

    .line 513
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->loadingDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    const-string/jumbo v1, "昵称生成中..."

    if-nez v0, :cond_e

    .line 514
    new-instance v0, Lcom/codemao/nemo/dialog/LoadingDialog;

    invoke-direct {v0, p0, v1}, Lcom/codemao/nemo/dialog/LoadingDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->loadingDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    .line 516
    :cond_e
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->loadingDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/LoadingDialog;->setCotent(Ljava/lang/String;)Lcom/codemao/nemo/dialog/LoadingDialog;

    .line 517
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->loadingDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    invoke-virtual {v0}, Lcom/codemao/nemo/dialog/LoadingDialog;->show()V

    return-void
.end method


# virtual methods
.method protected contentViewId()I
    .registers 2

    const v0, 0x7f0d0349

    return v0
.end method

.method public initViewName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "用户信息设定页"

    return-object v0
.end method

.method public onBackPressed()V
    .registers 1

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 114
    invoke-super {p0, p1}, Lcom/giu/xzz/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 115
    new-instance p1, Lcom/codemao/nemo/http/DiscoveryNetUtil;

    invoke-direct {p1, p0}, Lcom/codemao/nemo/http/DiscoveryNetUtil;-><init>(Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;)V

    iput-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    .line 116
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 117
    new-instance p1, Lcom/codemao/nemo/view/KeyboardHeightProvider;

    invoke-direct {p1, p0}, Lcom/codemao/nemo/view/KeyboardHeightProvider;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->keyboardHeightProvider:Lcom/codemao/nemo/view/KeyboardHeightProvider;

    .line 118
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->datas:Ljava/util/ArrayList;

    .line 119
    new-instance v0, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;

    const v1, 0x7f0e0003

    const-string v2, "https://static.codemao.cn/nemo/avatar/avator_1.png"

    invoke-direct {v0, v1, v2}, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->datas:Ljava/util/ArrayList;

    new-instance v0, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;

    const v1, 0x7f0e0004

    const-string v2, "https://static.codemao.cn/nemo/avatar/avator_2.png"

    invoke-direct {v0, v1, v2}, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->datas:Ljava/util/ArrayList;

    new-instance v0, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;

    const v1, 0x7f0e0005

    const-string v2, "https://static.codemao.cn/nemo/avatar/avator_3.png"

    invoke-direct {v0, v1, v2}, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->datas:Ljava/util/ArrayList;

    new-instance v0, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;

    const v1, 0x7f0e0006

    const-string v2, "https://static.codemao.cn/nemo/avatar/avator_4.png"

    invoke-direct {v0, v1, v2}, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->datas:Ljava/util/ArrayList;

    new-instance v0, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;

    const v1, 0x7f0e0007

    const-string v2, "https://static.codemao.cn/nemo/avatar/avator_5.png"

    invoke-direct {v0, v1, v2}, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->datas:Ljava/util/ArrayList;

    new-instance v0, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;

    const v1, 0x7f0e0008

    const-string v2, "https://static.codemao.cn/nemo/avatar/avator_6.png"

    invoke-direct {v0, v1, v2}, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->datas:Ljava/util/ArrayList;

    new-instance v0, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;

    const v1, 0x7f0e0009

    const-string v2, "https://static.codemao.cn/nemo/avatar/avator_7.png"

    invoke-direct {v0, v1, v2}, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->datas:Ljava/util/ArrayList;

    new-instance v0, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;

    const v1, 0x7f0e000a

    const-string v2, "https://static.codemao.cn/nemo/avatar/avator_8.png"

    invoke-direct {v0, v1, v2}, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    new-instance p1, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    iget-object v0, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->datas:Ljava/util/ArrayList;

    invoke-direct {p1, p0, v0}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 128
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object p1

    if-eqz p1, :cond_c5

    .line 129
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object p1

    invoke-virtual {p1}, Lcn/codemao/android/account/bean/UserInfoVO;->getNickname()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->nickNameDefault:Ljava/lang/String;

    .line 130
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->etNickname:Landroid/widget/EditText;

    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/bean/UserInfoVO;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 131
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object p1

    invoke-virtual {p1}, Lcn/codemao/android/account/bean/UserInfoVO;->getAvatar_url()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->avatarUrlDefault:Ljava/lang/String;

    .line 133
    :cond_c5
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->etNickname:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 134
    new-instance p1, Lcom/codemao/nemo/adapter/UserRegistAvatarChooseDelegate;

    new-instance v0, Lcom/codemao/nemo/activity/UserInfoSettingActivity$1;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/UserInfoSettingActivity$1;-><init>(Lcom/codemao/nemo/activity/UserInfoSettingActivity;)V

    invoke-direct {p1, p0, v0}, Lcom/codemao/nemo/adapter/UserRegistAvatarChooseDelegate;-><init>(Landroid/content/Context;Lcom/codemao/nemo/adapter/UserRegistAvatarChooseDelegate$ChooseCallback;)V

    iput-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->delegate:Lcom/codemao/nemo/adapter/UserRegistAvatarChooseDelegate;

    const/4 p1, 0x0

    .line 143
    :goto_df
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->datas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_101

    .line 144
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->avatarUrlDefault:Ljava/lang/String;

    iget-object v1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->datas:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;->getHttpUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fe

    .line 145
    iput p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->choosePosition:I

    goto :goto_101

    :cond_fe
    add-int/lit8 p1, p1, 0x1

    goto :goto_df

    .line 149
    :cond_101
    :goto_101
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->delegate:Lcom/codemao/nemo/adapter/UserRegistAvatarChooseDelegate;

    iget v0, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->choosePosition:I

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/adapter/UserRegistAvatarChooseDelegate;->setChoosePositon(I)V

    .line 150
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->ivAvatar:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->datas:Ljava/util/ArrayList;

    iget v1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->choosePosition:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;->getLocalResId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 151
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    iget-object v0, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->delegate:Lcom/codemao/nemo/adapter/UserRegistAvatarChooseDelegate;

    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 152
    new-instance p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;-><init>(II)V

    .line 153
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->rvAvatarChoose:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 154
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->rvAvatarChoose:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 156
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->tvProvision:Landroid/widget/TextView;

    const-string/jumbo v0, "注册即代表阅读并同意编程猫<font color=\"#ffffff\">服务条款</font>"

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->tvCreate:Landroid/widget/TextView;

    new-instance v0, Lcom/codemao/nemo/activity/UserInfoSettingActivity$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/UserInfoSettingActivity$2;-><init>(Lcom/codemao/nemo/activity/UserInfoSettingActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 165
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->setViewListener()V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 493
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->onDestroy()V

    .line 494
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 495
    invoke-super {p0}, Lcom/giu/xzz/BaseActivity;->onDestroy()V

    .line 496
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->keyboardHeightProvider:Lcom/codemao/nemo/view/KeyboardHeightProvider;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/KeyboardHeightProvider;->close()V

    return-void
.end method

.method public onKeyboardHeightChanged(II)V
    .registers 6

    .line 363
    iget-boolean p2, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->isInit:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_17

    .line 364
    iget p2, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->screenHeight:I

    div-int/lit8 p2, p2, 0x5

    if-ge p1, p2, :cond_10

    .line 365
    iput-boolean v0, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->isInit:Z

    .line 366
    iput p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->hidePopBottom:I

    goto :goto_2d

    .line 368
    :cond_10
    iput-boolean v0, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->isInit:Z

    .line 369
    iput v0, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->hidePopBottom:I

    .line 370
    iput p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->keyboadHeight:I

    goto :goto_2d

    .line 373
    :cond_17
    iget p2, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->screenHeight:I

    div-int/lit8 v1, p2, 0x5

    if-ge p1, v1, :cond_1f

    .line 374
    iput p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->hidePopBottom:I

    .line 376
    :cond_1f
    iget v1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->hidePopBottom:I

    if-le p1, v1, :cond_2d

    sub-int v2, p1, v1

    div-int/lit8 p2, p2, 0x4

    if-le v2, p2, :cond_2d

    sub-int p2, p1, v1

    .line 377
    iput p2, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->keyboadHeight:I

    .line 380
    :cond_2d
    :goto_2d
    iget p2, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->hidePopBottom:I

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->screenHeight:I

    div-int/lit8 p2, p2, 0x4

    if-le p1, p2, :cond_9b

    const/4 p1, 0x1

    .line 381
    iput-boolean p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->isKeyboardShow:Z

    .line 382
    iget-object p2, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->etNickname:Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 383
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->etNickname:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/widget/EditText;->setSelection(II)V

    .line 384
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->tvCreate:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 385
    iget p2, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->keyboadHeight:I

    add-int/lit8 p2, p2, 0x32

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 386
    iget-object p2, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->tvCreate:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 387
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->rlTop:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result p1

    .line 388
    iget p2, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->screenHeight:I

    iget v0, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->keyboadHeight:I

    add-int/lit8 v0, v0, 0x32

    iget-object v1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->tvCreate:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p2, v0

    if-le p1, p2, :cond_ca

    .line 389
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->rlTop:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 390
    iget p2, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->screenHeight:I

    iget-object v0, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->rlTop:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    sub-int/2addr p2, v0

    add-int/lit8 p2, p2, -0x32

    add-int/lit8 p2, p2, -0x14

    iget v0, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->keyboadHeight:I

    sub-int/2addr p2, v0

    iget-object v0, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->tvCreate:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    sub-int/2addr p2, v0

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 391
    iget-object p2, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->rlTop:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_ca

    .line 394
    :cond_9b
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->etNickname:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 395
    iput-boolean v0, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->isKeyboardShow:Z

    .line 396
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->tvCreate:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 p2, 0x428c0000  # 70.0f

    .line 397
    invoke-static {p2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 398
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->tvCreate:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 399
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->rlTop:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 400
    invoke-static {p2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 401
    iget-object p2, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->rlTop:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_ca
    :goto_ca
    return-void
.end method

.method public onMainStart(Lcom/codemao/nemo/event/MainStartEvent;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 528
    invoke-super {p0}, Lcom/giu/xzz/BaseActivity;->finish()V

    return-void
.end method

.method protected onPause()V
    .registers 3

    .line 475
    invoke-super {p0}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->onPause()V

    .line 476
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->keyboardHeightProvider:Lcom/codemao/nemo/view/KeyboardHeightProvider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/KeyboardHeightProvider;->setKeyboardHeightObserver(Lcom/codemao/nemo/view/KeyboardHeightObserver;)V

    return-void
.end method

.method protected onResume()V
    .registers 2

    .line 481
    invoke-super {p0}, Lcom/giu/xzz/BaseActivity;->onResume()V

    .line 482
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->keyboardHeightProvider:Lcom/codemao/nemo/view/KeyboardHeightProvider;

    invoke-virtual {v0, p0}, Lcom/codemao/nemo/view/KeyboardHeightProvider;->setKeyboardHeightObserver(Lcom/codemao/nemo/view/KeyboardHeightObserver;)V

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .registers 8
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 218
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    const-wide/16 v1, 0x190

    const v3, 0x7f01001b

    const/4 v4, 0x0

    sparse-switch p1, :sswitch_data_102

    goto/16 :goto_100

    .line 314
    :sswitch_10
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "https://static-platform.codemao.cn/agreements/user_agreement.html"

    .line 315
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 316
    invoke-virtual {p0, p1}, Lcom/giu/xzz/BaseActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_100

    .line 251
    :sswitch_25
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->rlChoose:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_100

    .line 252
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->rlInput:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 253
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->tvCreate:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 254
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->ivAvatarEdit:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 255
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->tvProvision:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 256
    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    check-cast p1, Landroid/view/animation/AnimationSet;

    .line 257
    invoke-virtual {p1, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 258
    invoke-virtual {p1, v0}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 259
    new-instance v0, Lcom/codemao/nemo/activity/UserInfoSettingActivity$7;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/UserInfoSettingActivity$7;-><init>(Lcom/codemao/nemo/activity/UserInfoSettingActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 276
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->rlChoose:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 277
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->delegate:Lcom/codemao/nemo/adapter/UserRegistAvatarChooseDelegate;

    invoke-virtual {p1}, Lcom/codemao/nemo/adapter/UserRegistAvatarChooseDelegate;->getChoosePositon()I

    move-result p1

    iput p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->choosePosition:I

    goto/16 :goto_100

    .line 221
    :sswitch_64
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->rlChoose:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_100

    .line 222
    iget-boolean p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->isKeyboardShow:Z

    const/16 v0, 0x8

    if-eqz p1, :cond_98

    .line 223
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->etNickname:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/codemao/nemo/util/SoftInputUtils;->hideSoftInput(Landroid/view/View;)V

    .line 224
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->rlInput:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 225
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->ivAvatarEdit:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 226
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->tvCreate:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 227
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->tvProvision:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 228
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->rlChoose:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/codemao/nemo/activity/UserInfoSettingActivity$6;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/UserInfoSettingActivity$6;-><init>(Lcom/codemao/nemo/activity/UserInfoSettingActivity;)V

    const-wide/16 v1, 0xfa

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_100

    .line 235
    :cond_98
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->rlInput:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 236
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->ivAvatarEdit:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 237
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->tvCreate:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 238
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->tvProvision:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 239
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->showChooseAnim()V

    goto :goto_100

    .line 248
    :sswitch_b0
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->getRandomName()V

    goto :goto_100

    .line 281
    :sswitch_b4
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->rlChoose:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_100

    .line 282
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->rlInput:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 283
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->tvCreate:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 284
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->ivAvatarEdit:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 285
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->tvProvision:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 286
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->ivAvatar:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->datas:Ljava/util/ArrayList;

    iget v5, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->choosePosition:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;

    invoke-virtual {v4}, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;->getLocalResId()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 287
    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    check-cast p1, Landroid/view/animation/AnimationSet;

    .line 288
    invoke-virtual {p1, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 289
    invoke-virtual {p1, v0}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 290
    new-instance v0, Lcom/codemao/nemo/activity/UserInfoSettingActivity$8;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/UserInfoSettingActivity$8;-><init>(Lcom/codemao/nemo/activity/UserInfoSettingActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 309
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->rlChoose:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_100

    .line 244
    :sswitch_fd
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserInfoSettingActivity;->setUserInfo()V

    :cond_100
    :goto_100
    return-void

    nop

    :sswitch_data_102
    .sparse-switch
        0x7f0a00e0 -> :sswitch_fd
        0x7f0a037c -> :sswitch_b4
        0x7f0a03b0 -> :sswitch_b0
        0x7f0a043c -> :sswitch_64
        0x7f0a043e -> :sswitch_64
        0x7f0a0810 -> :sswitch_25
        0x7f0a08af -> :sswitch_10
    .end sparse-switch
.end method

.method public setUserInfoDonw()V
    .registers 3

    .line 464
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/event/LoginEvent;

    invoke-direct {v1}, Lcom/codemao/nemo/event/LoginEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 465
    sget v0, Lcom/codemao/nemo/event/LoginEvent;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_15

    .line 466
    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->finish()V

    goto :goto_24

    .line 468
    :cond_15
    invoke-static {}, Lcom/codemao/nemo/util/ActivityUtils;->get()Lcom/codemao/nemo/util/ActivityUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/util/ActivityUtils;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/codemao/nemo/MainActivityV2;->startMainActivityV2(Landroid/content/Context;Z)V

    .line 469
    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->finish()V

    :goto_24
    return-void
.end method
