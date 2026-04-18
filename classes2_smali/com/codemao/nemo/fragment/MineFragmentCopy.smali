.class public Lcom/codemao/nemo/fragment/MineFragmentCopy;
.super Lcom/giu/xzz/mvp/MvpFragment;
.source "MineFragmentCopy.java"


# instance fields
.field private adapter:Lcom/giu/xzz/adapter/vp/BaseFragmentAdapter;

.field private avatarUrl:Ljava/lang/String;

.field private bindView:Landroid/view/View;

.field private createFragment:Lcom/codemao/nemo/fragment/CreateFragment;

.field private currentIndex:I

.field customTabView:Lcom/codemao/nemo/view/CustomTabView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private fragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private myPublishWorksFragmentV2:Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;

.field root:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tabLayout:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private tabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private titles:[Ljava/lang/String;

.field vpContainer:Lcom/codemao/nemo/view/NoScrollViewPager;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 74
    invoke-direct {p0}, Lcom/giu/xzz/mvp/MvpFragment;-><init>()V

    const/4 v0, 0x0

    .line 87
    iput v0, p0, Lcom/codemao/nemo/fragment/MineFragmentCopy;->currentIndex:I

    const-string v0, "草稿箱(0)"

    const-string v1, "已发布(0)"

    .line 91
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/fragment/MineFragmentCopy;->titles:[Ljava/lang/String;

    .line 303
    new-instance v0, Lcom/codemao/nemo/fragment/MineFragmentCopy$5;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/fragment/MineFragmentCopy$5;-><init>(Lcom/codemao/nemo/fragment/MineFragmentCopy;)V

    iput-object v0, p0, Lcom/codemao/nemo/fragment/MineFragmentCopy;->mPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/fragment/MineFragmentCopy;)Lcom/codemao/nemo/fragment/CreateFragment;
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/codemao/nemo/fragment/MineFragmentCopy;->createFragment:Lcom/codemao/nemo/fragment/CreateFragment;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/fragment/MineFragmentCopy;)Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/codemao/nemo/fragment/MineFragmentCopy;->myPublishWorksFragmentV2:Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;

    return-object p0
.end method

.method static synthetic access$202(Lcom/codemao/nemo/fragment/MineFragmentCopy;I)I
    .registers 2

    .line 74
    iput p1, p0, Lcom/codemao/nemo/fragment/MineFragmentCopy;->currentIndex:I

    return p1
.end method

.method private getAuthInformation()V
    .registers 3

    .line 167
    new-instance v0, Lcom/codemao/nemo/fragment/MineFragmentCopy$1;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/fragment/MineFragmentCopy$1;-><init>(Lcom/codemao/nemo/fragment/MineFragmentCopy;)V

    new-instance v1, Lcom/codemao/nemo/fragment/MineFragmentCopy$2;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/MineFragmentCopy$2;-><init>(Lcom/codemao/nemo/fragment/MineFragmentCopy;)V

    invoke-static {v0, v1}, Lcn/codemao/android/account/CodeMaoAccount;->getPrivacyInfo(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    return-void
.end method

.method private init()V
    .registers 5

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/fragment/MineFragmentCopy;->fragments:Ljava/util/List;

    const/4 v0, 0x0

    .line 189
    invoke-static {v0}, Lcom/codemao/nemo/fragment/CreateFragment;->newInstance(Z)Lcom/codemao/nemo/fragment/CreateFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/fragment/MineFragmentCopy;->createFragment:Lcom/codemao/nemo/fragment/CreateFragment;

    .line 190
    iget-object v1, p0, Lcom/codemao/nemo/fragment/MineFragmentCopy;->fragments:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    invoke-static {}, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;->getInstance()Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/fragment/MineFragmentCopy;->myPublishWorksFragmentV2:Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;

    .line 192
    iget-object v1, p0, Lcom/codemao/nemo/fragment/MineFragmentCopy;->fragments:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragmentCopy;->titles:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/fragment/MineFragmentCopy;->tabs:Ljava/util/List;

    .line 194
    new-instance v0, Lcom/giu/xzz/adapter/vp/BaseFragmentAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/nemo/fragment/MineFragmentCopy;->fragments:Ljava/util/List;

    iget-object v3, p0, Lcom/codemao/nemo/fragment/MineFragmentCopy;->tabs:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lcom/giu/xzz/adapter/vp/BaseFragmentAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/codemao/nemo/fragment/MineFragmentCopy;->adapter:Lcom/giu/xzz/adapter/vp/BaseFragmentAdapter;

    .line 195
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragmentCopy;->vpContainer:Lcom/codemao/nemo/view/NoScrollViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->clearOnPageChangeListeners()V

    .line 196
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragmentCopy;->vpContainer:Lcom/codemao/nemo/view/NoScrollViewPager;

    iget-object v1, p0, Lcom/codemao/nemo/fragment/MineFragmentCopy;->mPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 197
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragmentCopy;->vpContainer:Lcom/codemao/nemo/view/NoScrollViewPager;

    iget-object v1, p0, Lcom/codemao/nemo/fragment/MineFragmentCopy;->adapter:Lcom/giu/xzz/adapter/vp/BaseFragmentAdapter;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 199
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragmentCopy;->vpContainer:Lcom/codemao/nemo/view/NoScrollViewPager;

    iget v1, p0, Lcom/codemao/nemo/fragment/MineFragmentCopy;->currentIndex:I

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 200
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragmentCopy;->customTabView:Lcom/codemao/nemo/view/CustomTabView;

    iget-object v1, p0, Lcom/codemao/nemo/fragment/MineFragmentCopy;->vpContainer:Lcom/codemao/nemo/view/NoScrollViewPager;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/CustomTabView;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 201
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragmentCopy;->customTabView:Lcom/codemao/nemo/view/CustomTabView;

    new-instance v1, Lcom/codemao/nemo/fragment/MineFragmentCopy$3;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/MineFragmentCopy$3;-><init>(Lcom/codemao/nemo/fragment/MineFragmentCopy;)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/CustomTabView;->setOnTabClickListener(Lcom/codemao/nemo/view/CustomTabView$OnTabClickListener;)V

    .line 220
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragmentCopy;->vpContainer:Lcom/codemao/nemo/view/NoScrollViewPager;

    new-instance v1, Lcom/codemao/nemo/fragment/MineFragmentCopy$4;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/MineFragmentCopy$4;-><init>(Lcom/codemao/nemo/fragment/MineFragmentCopy;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 248
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragmentCopy;->customTabView:Lcom/codemao/nemo/view/CustomTabView;

    iget-object v1, p0, Lcom/codemao/nemo/fragment/MineFragmentCopy;->tabs:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/CustomTabView;->setTabs(Ljava/util/List;)V

    return-void
.end method

.method private initData()V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 254
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 255
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragmentCopy;->tabLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragmentCopy;->vpContainer:Lcom/codemao/nemo/view/NoScrollViewPager;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/NoScrollViewPager;->setNoScroll(Z)V

    goto :goto_24

    .line 258
    :cond_12
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragmentCopy;->tabLayout:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragmentCopy;->vpContainer:Lcom/codemao/nemo/view/NoScrollViewPager;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 260
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragmentCopy;->vpContainer:Lcom/codemao/nemo/view/NoScrollViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/NoScrollViewPager;->setNoScroll(Z)V

    :goto_24
    return-void
.end method


# virtual methods
.method protected contentViewId()I
    .registers 2

    .line 106
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f0d0159

    return v0

    :cond_a
    const v0, 0x7f0d0151

    return v0
.end method

.method protected createPresenter()Lcom/giu/xzz/mvp/BasePresenter;
    .registers 3

    .line 360
    new-instance v0, Lcom/codemao/nemo/presenter/SearchPresentImpl;

    new-instance v1, Lcom/codemao/nemo/fragment/MineFragmentCopy$6;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/MineFragmentCopy$6;-><init>(Lcom/codemao/nemo/fragment/MineFragmentCopy;)V

    invoke-direct {v0, v1}, Lcom/codemao/nemo/presenter/SearchPresentImpl;-><init>(Lcom/codemao/nemo/presenter/SearchPresentImpl$AnimView;)V

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    .line 129
    invoke-super {p0, p1}, Lcom/giu/xzz/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 130
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/MineFragmentCopy;->init()V

    return-void
.end method

.method onClick(Landroid/view/View;)V
    .registers 10
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 267
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_a2

    goto/16 :goto_a0

    :sswitch_a
    new-array p1, v0, [Ljava/lang/String;

    const-string v0, "我的-点击搜索"

    .line 276
    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_a0

    .line 281
    :sswitch_13
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/codemao/nemo/event/BackHeaderEV;

    iget-object v1, p0, Lcom/codemao/nemo/fragment/MineFragmentCopy;->vpContainer:Lcom/codemao/nemo/view/NoScrollViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    if-nez v1, :cond_24

    const-class v1, Lcom/codemao/nemo/fragment/CreateFragment;

    goto :goto_26

    :cond_24
    const-class v1, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;

    :goto_26
    invoke-direct {v0, v1}, Lcom/codemao/nemo/event/BackHeaderEV;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_a0

    :sswitch_2e
    new-array p1, v0, [Ljava/lang/String;

    const-string v0, "我的-点击设置"

    .line 270
    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 271
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/codemao/nemo/activity/SettingActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 272
    invoke-virtual {p0, p1}, Lcom/giu/xzz/BaseFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_a0

    :sswitch_44
    new-array p1, v0, [Ljava/lang/String;

    const-string v0, "我的-点击云端下载按钮"

    .line 285
    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 286
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/codemao/nemo/activity/CloudActivityV2;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 287
    invoke-virtual {p0, p1}, Lcom/giu/xzz/BaseFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_a0

    :sswitch_5a
    new-array p1, v0, [Ljava/lang/String;

    const-string v0, "我的-点击立刻登录"

    .line 296
    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 297
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/codemao/nemo/activity/LoginActivity;->startActivity(Landroid/content/Context;I)V

    goto :goto_a0

    :sswitch_6a
    new-array p1, v0, [Ljava/lang/String;

    const-string v0, "我的-点击个人主页入口"

    .line 291
    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 292
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p1, p0, Lcom/codemao/nemo/fragment/MineFragmentCopy;->avatarUrl:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8c

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object p1

    if-eqz p1, :cond_8c

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LocalUserInfo;->getAvatar_url()Ljava/lang/String;

    move-result-object p1

    goto :goto_8e

    :cond_8c
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MineFragmentCopy;->avatarUrl:Ljava/lang/String;

    :goto_8e
    move-object v2, p1

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LocalUserInfo;->getId()J

    move-result-wide v3

    const-string v5, "我的"

    const-string v6, ""

    const-string v7, ""

    invoke-static/range {v1 .. v7}, Lcom/codemao/nemo/activity/UserDetailActivity;->goDetail(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_a0
    return-void

    nop

    :sswitch_data_a2
    .sparse-switch
        0x7f0a007e -> :sswitch_6a
        0x7f0a0165 -> :sswitch_5a
        0x7f0a0173 -> :sswitch_44
        0x7f0a048c -> :sswitch_2e
        0x7f0a0531 -> :sswitch_13
        0x7f0a0620 -> :sswitch_a
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 114
    invoke-super {p0, p1}, Lcom/giu/xzz/mvp/MvpFragment;->onCreate(Landroid/os/Bundle;)V

    .line 115
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    const/high16 p1, 0x424c0000  # 51.0f

    .line 117
    invoke-static {p1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4

    .line 123
    invoke-super {p0, p1, p2, p3}, Lcom/giu/xzz/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/fragment/MineFragmentCopy;->bindView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .registers 2

    .line 135
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 136
    invoke-super {p0}, Lcom/giu/xzz/BaseFragment;->onDestroy()V

    return-void
.end method

.method public onMineTabEvent(Lcom/codemao/nemo/event/MineTabEvent;)V
    .registers 6
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 323
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragmentCopy;->tabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p1, Lcom/codemao/nemo/event/MineTabEvent;->tabIndex:I

    if-le v0, v1, :cond_58

    const-string v0, ")"

    if-nez v1, :cond_2d

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "草稿箱("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/codemao/nemo/event/MineTabEvent;->bcmSum:I

    add-int/lit8 v3, v2, -0x3

    if-gez v3, :cond_20

    const/4 v2, 0x0

    goto :goto_22

    :cond_20
    add-int/lit8 v2, v2, -0x3

    :goto_22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_43

    .line 328
    :cond_2d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "已发布("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/codemao/nemo/event/MineTabEvent;->bcmSum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 330
    :goto_43
    iget-object v1, p0, Lcom/codemao/nemo/fragment/MineFragmentCopy;->tabs:Ljava/util/List;

    iget p1, p1, Lcom/codemao/nemo/event/MineTabEvent;->tabIndex:I

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 331
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MineFragmentCopy;->adapter:Lcom/giu/xzz/adapter/vp/BaseFragmentAdapter;

    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragmentCopy;->tabs:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/vp/BaseFragmentAdapter;->setTab(Ljava/util/List;)V

    .line 333
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MineFragmentCopy;->customTabView:Lcom/codemao/nemo/view/CustomTabView;

    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragmentCopy;->tabs:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/CustomTabView;->setTabs(Ljava/util/List;)V

    :cond_58
    return-void
.end method

.method public onResume()V
    .registers 3

    .line 156
    invoke-super {p0}, Lcom/giu/xzz/BaseFragment;->onResume()V

    .line 157
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/MineFragmentCopy;->initData()V

    .line 158
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isBBKLogin()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 159
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/MineFragmentCopy;->getAuthInformation()V

    .line 161
    :cond_f
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragmentCopy;->tabs:Ljava/util/List;

    if-eqz v0, :cond_18

    .line 162
    iget-object v1, p0, Lcom/codemao/nemo/fragment/MineFragmentCopy;->customTabView:Lcom/codemao/nemo/view/CustomTabView;

    invoke-virtual {v1, v0}, Lcom/codemao/nemo/view/CustomTabView;->setTabs(Ljava/util/List;)V

    :cond_18
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 391
    invoke-super {p0}, Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;->onStart()V

    .line 392
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragmentCopy;->vpContainer:Lcom/codemao/nemo/view/NoScrollViewPager;

    if-eqz v0, :cond_c

    .line 393
    iget v1, p0, Lcom/codemao/nemo/fragment/MineFragmentCopy;->currentIndex:I

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_c
    return-void
.end method

.method public onTabChangeEvent(Lcom/codemao/nemo/event/MainActivityTabChangeEvent;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 348
    invoke-virtual {p1}, Lcom/codemao/nemo/event/MainActivityTabChangeEvent;->getFirstTab()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragmentCopy;->vpContainer:Lcom/codemao/nemo/view/NoScrollViewPager;

    if-eqz v0, :cond_1a

    .line 350
    invoke-virtual {p1}, Lcom/codemao/nemo/event/MainActivityTabChangeEvent;->getSecondeTabName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "已发布(0)"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 353
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragmentCopy;->vpContainer:Lcom/codemao/nemo/view/NoScrollViewPager;

    invoke-virtual {v0, p1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_1a
    return-void
.end method

.method public onUpdateWorkInfoEvent(Lcom/codemao/nemo/event/UpdateWorkInfoEvents;)V
    .registers 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 399
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getType()I

    move-result p1

    const/16 v0, 0x9

    if-ne p1, v0, :cond_19

    .line 400
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MineFragmentCopy;->vpContainer:Lcom/codemao/nemo/view/NoScrollViewPager;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_11

    .line 401
    invoke-virtual {p1, v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 402
    :cond_11
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MineFragmentCopy;->customTabView:Lcom/codemao/nemo/view/CustomTabView;

    if-eqz p1, :cond_19

    const/4 v2, 0x0

    .line 403
    invoke-virtual {p1, v1, v2, v0}, Lcom/codemao/nemo/view/CustomTabView;->onScroll(IFI)V

    :cond_19
    return-void
.end method

.method public onUserInfoChanged()V
    .registers 1

    .line 150
    invoke-super {p0}, Lcom/giu/xzz/BaseFragment;->onUserInfoChanged()V

    return-void
.end method
