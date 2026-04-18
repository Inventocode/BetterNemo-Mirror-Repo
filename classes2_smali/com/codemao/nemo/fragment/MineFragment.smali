.class public Lcom/codemao/nemo/fragment/MineFragment;
.super Lcom/giu/xzz/mvp/MvpFragment;
.source "MineFragment.java"

# interfaces
.implements Lcom/codemao/nemo/presenter/SearchPresentImpl$AnimView;
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# instance fields
.field private adapter:Lcom/giu/xzz/adapter/vp/BaseFragmentAdapter;

.field appBarContainer:Lcom/google/android/material/appbar/AppBarLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private avatarUrl:Ljava/lang/String;

.field bgToolBar:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private bindView:Landroid/view/View;

.field private createAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private createFragment:Lcom/codemao/nemo/fragment/CreateFragment;

.field creates_tv:Lcom/codemao/nemo/view/ScrollNumAnimView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

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

.field private isDark:Z

.field private isHeadLoadFinish:Z

.field private isVisilble:Z

.field ivCreate:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivFrame:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivLevelSign:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivLike:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivView:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field leftView:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private likeAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private mPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field midView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private myPublishWorksFragmentV2:Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;

.field name_tv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field photo_iv:Lcom/codemao/nemo/view/RoundStrokeImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field praises_tv:Lcom/codemao/nemo/view/ScrollNumAnimView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private presenterImpl:Lcom/codemao/nemo/presenter/SearchPresentImpl;

.field rightView:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field root:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field split:Landroid/view/View;
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

.field toolBar:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field userInfoLayout:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field userLoginLayout:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private viewAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field views_tv:Lcom/codemao/nemo/view/ScrollNumAnimView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field vpContainer:Lcom/codemao/nemo/view/NoScrollViewPager;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 75
    invoke-direct {p0}, Lcom/giu/xzz/mvp/MvpFragment;-><init>()V

    const/4 v0, 0x0

    .line 126
    iput v0, p0, Lcom/codemao/nemo/fragment/MineFragment;->currentIndex:I

    const-string v1, "草稿箱(0)"

    const-string v2, "已发布(0)"

    .line 130
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/codemao/nemo/fragment/MineFragment;->titles:[Ljava/lang/String;

    .line 134
    iput-boolean v0, p0, Lcom/codemao/nemo/fragment/MineFragment;->isVisilble:Z

    .line 135
    iput-boolean v0, p0, Lcom/codemao/nemo/fragment/MineFragment;->isDark:Z

    .line 141
    iput-boolean v0, p0, Lcom/codemao/nemo/fragment/MineFragment;->isHeadLoadFinish:Z

    .line 520
    new-instance v0, Lcom/codemao/nemo/fragment/MineFragment$13;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/fragment/MineFragment$13;-><init>(Lcom/codemao/nemo/fragment/MineFragment;)V

    iput-object v0, p0, Lcom/codemao/nemo/fragment/MineFragment;->mPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/fragment/MineFragment;)Lcom/codemao/nemo/fragment/CreateFragment;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/codemao/nemo/fragment/MineFragment;->createFragment:Lcom/codemao/nemo/fragment/CreateFragment;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/fragment/MineFragment;)Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/codemao/nemo/fragment/MineFragment;->myPublishWorksFragmentV2:Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/codemao/nemo/fragment/MineFragment;I)I
    .registers 2

    .line 75
    iput p1, p0, Lcom/codemao/nemo/fragment/MineFragment;->currentIndex:I

    return p1
.end method

.method static synthetic access$202(Lcom/codemao/nemo/fragment/MineFragment;Z)Z
    .registers 2

    .line 75
    iput-boolean p1, p0, Lcom/codemao/nemo/fragment/MineFragment;->isHeadLoadFinish:Z

    return p1
.end method

.method static synthetic access$300(Lcom/codemao/nemo/fragment/MineFragment;Z)V
    .registers 2

    .line 75
    invoke-direct {p0, p1}, Lcom/codemao/nemo/fragment/MineFragment;->setDataOffline(Z)V

    return-void
.end method

.method static synthetic access$402(Lcom/codemao/nemo/fragment/MineFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/codemao/nemo/fragment/MineFragment;->avatarUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/codemao/nemo/fragment/MineFragment;ILjava/lang/String;)V
    .registers 3

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/fragment/MineFragment;->setUserLevelInfo(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/codemao/nemo/fragment/MineFragment;)Z
    .registers 1

    .line 75
    iget-boolean p0, p0, Lcom/codemao/nemo/fragment/MineFragment;->isVisilble:Z

    return p0
.end method

.method static synthetic access$700(Lcom/codemao/nemo/fragment/MineFragment;)Landroid/graphics/drawable/AnimationDrawable;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/codemao/nemo/fragment/MineFragment;->viewAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    return-object p0
.end method

.method static synthetic access$800(Lcom/codemao/nemo/fragment/MineFragment;)Landroid/graphics/drawable/AnimationDrawable;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/codemao/nemo/fragment/MineFragment;->likeAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    return-object p0
.end method

.method static synthetic access$900(Lcom/codemao/nemo/fragment/MineFragment;)Landroid/graphics/drawable/AnimationDrawable;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/codemao/nemo/fragment/MineFragment;->createAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    return-object p0
.end method

.method private getAuthInformation()V
    .registers 3

    .line 209
    new-instance v0, Lcom/codemao/nemo/fragment/MineFragment$1;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/fragment/MineFragment$1;-><init>(Lcom/codemao/nemo/fragment/MineFragment;)V

    new-instance v1, Lcom/codemao/nemo/fragment/MineFragment$2;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/MineFragment$2;-><init>(Lcom/codemao/nemo/fragment/MineFragment;)V

    invoke-static {v0, v1}, Lcn/codemao/android/account/CodeMaoAccount;->getPrivacyInfo(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    return-void
.end method

.method private getToolBarBgAlpha(I)F
    .registers 4

    .line 591
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragment;->appBarContainer:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    add-int/lit8 v0, v0, -0x32

    neg-int v1, v0

    if-le p1, v1, :cond_13

    .line 593
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    goto :goto_15

    :cond_13
    const/high16 p1, 0x3f800000  # 1.0f

    :goto_15
    return p1
.end method

.method private init()V
    .registers 5

    .line 229
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragment;->midView:Landroid/widget/TextView;

    const-string v1, "我的"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragment;->leftView:Landroid/widget/ImageView;

    const v1, 0x7f080596

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 231
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragment;->rightView:Landroid/widget/ImageView;

    const v1, 0x7f080594

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 233
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08005b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/codemao/nemo/fragment/MineFragment;->viewAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v1, 0x1

    .line 234
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 235
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080059

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/codemao/nemo/fragment/MineFragment;->createAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 236
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 237
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f08005a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/codemao/nemo/fragment/MineFragment;->likeAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 238
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/fragment/MineFragment;->fragments:Ljava/util/List;

    const/4 v0, 0x0

    .line 241
    invoke-static {v0}, Lcom/codemao/nemo/fragment/CreateFragment;->newInstance(Z)Lcom/codemao/nemo/fragment/CreateFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/codemao/nemo/fragment/MineFragment;->createFragment:Lcom/codemao/nemo/fragment/CreateFragment;

    .line 242
    iget-object v2, p0, Lcom/codemao/nemo/fragment/MineFragment;->fragments:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    invoke-static {}, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;->getInstance()Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;

    move-result-object v1

    iput-object v1, p0, Lcom/codemao/nemo/fragment/MineFragment;->myPublishWorksFragmentV2:Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;

    .line 244
    iget-object v2, p0, Lcom/codemao/nemo/fragment/MineFragment;->fragments:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    iget-object v1, p0, Lcom/codemao/nemo/fragment/MineFragment;->titles:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/codemao/nemo/fragment/MineFragment;->tabs:Ljava/util/List;

    .line 246
    iget-object v1, p0, Lcom/codemao/nemo/fragment/MineFragment;->toolBar:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 247
    new-instance v0, Lcom/giu/xzz/adapter/vp/BaseFragmentAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/nemo/fragment/MineFragment;->fragments:Ljava/util/List;

    iget-object v3, p0, Lcom/codemao/nemo/fragment/MineFragment;->tabs:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lcom/giu/xzz/adapter/vp/BaseFragmentAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/codemao/nemo/fragment/MineFragment;->adapter:Lcom/giu/xzz/adapter/vp/BaseFragmentAdapter;

    .line 248
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragment;->vpContainer:Lcom/codemao/nemo/view/NoScrollViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->clearOnPageChangeListeners()V

    .line 249
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragment;->vpContainer:Lcom/codemao/nemo/view/NoScrollViewPager;

    iget-object v1, p0, Lcom/codemao/nemo/fragment/MineFragment;->mPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 250
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragment;->vpContainer:Lcom/codemao/nemo/view/NoScrollViewPager;

    iget-object v1, p0, Lcom/codemao/nemo/fragment/MineFragment;->adapter:Lcom/giu/xzz/adapter/vp/BaseFragmentAdapter;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 252
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragment;->vpContainer:Lcom/codemao/nemo/view/NoScrollViewPager;

    iget v1, p0, Lcom/codemao/nemo/fragment/MineFragment;->currentIndex:I

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 253
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragment;->customTabView:Lcom/codemao/nemo/view/CustomTabView;

    iget-object v1, p0, Lcom/codemao/nemo/fragment/MineFragment;->vpContainer:Lcom/codemao/nemo/view/NoScrollViewPager;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/CustomTabView;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 254
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragment;->customTabView:Lcom/codemao/nemo/view/CustomTabView;

    new-instance v1, Lcom/codemao/nemo/fragment/MineFragment$3;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/MineFragment$3;-><init>(Lcom/codemao/nemo/fragment/MineFragment;)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/CustomTabView;->setOnTabClickListener(Lcom/codemao/nemo/view/CustomTabView$OnTabClickListener;)V

    .line 273
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragment;->vpContainer:Lcom/codemao/nemo/view/NoScrollViewPager;

    new-instance v1, Lcom/codemao/nemo/fragment/MineFragment$4;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/MineFragment$4;-><init>(Lcom/codemao/nemo/fragment/MineFragment;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 301
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragment;->customTabView:Lcom/codemao/nemo/view/CustomTabView;

    iget-object v1, p0, Lcom/codemao/nemo/fragment/MineFragment;->tabs:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/CustomTabView;->setTabs(Ljava/util/List;)V

    .line 302
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragment;->appBarContainer:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0, p0}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    .line 303
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/MineFragment;->notifyUserInfo()V

    return-void
.end method

.method private initData()V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 314
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_6a

    .line 315
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragment;->userLoginLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragment;->userInfoLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragment;->tabLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragment;->rightView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragment;->split:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragment;->vpContainer:Lcom/codemao/nemo/view/NoScrollViewPager;

    invoke-virtual {v0, v2}, Lcom/codemao/nemo/view/NoScrollViewPager;->setNoScroll(Z)V

    .line 334
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserId()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-gtz v5, :cond_32

    return-void

    .line 338
    :cond_32
    iput-boolean v2, p0, Lcom/codemao/nemo/fragment/MineFragment;->isHeadLoadFinish:Z

    .line 339
    invoke-static {}, Lcom/giu/xzz/http/RetrofitManager;->get()Lcom/giu/xzz/http/RetrofitManager;

    move-result-object v2

    const-class v3, Lcom/codemao/nemo/retrofit/api/UserService;

    invoke-virtual {v2, v3}, Lcom/giu/xzz/http/RetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/nemo/retrofit/api/UserService;

    invoke-interface {v2, v0, v1}, Lcom/codemao/nemo/retrofit/api/UserService;->getCreateHeadData(J)Lio/reactivex/Observable;

    move-result-object v0

    .line 340
    invoke-static {}, Lcom/giu/xzz/http/transform/ThreadTransformer;->create()Lcom/giu/xzz/http/transform/ThreadTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 341
    invoke-virtual {p0}, Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/fragment/MineFragment$5;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/MineFragment$5;-><init>(Lcom/codemao/nemo/fragment/MineFragment;)V

    .line 342
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    .line 389
    new-instance v0, Lcom/codemao/nemo/fragment/MineFragment$6;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/fragment/MineFragment$6;-><init>(Lcom/codemao/nemo/fragment/MineFragment;)V

    new-instance v1, Lcom/codemao/nemo/fragment/MineFragment$7;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/MineFragment$7;-><init>(Lcom/codemao/nemo/fragment/MineFragment;)V

    invoke-static {v0, v1}, Lcn/codemao/android/account/CodeMaoAccount;->getUserInfoProfile(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    return-void

    .line 324
    :cond_6a
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragment;->userLoginLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 325
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragment;->userInfoLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 326
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragment;->tabLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 328
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragment;->rightView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 329
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragment;->split:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 330
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragment;->vpContainer:Lcom/codemao/nemo/view/NoScrollViewPager;

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 331
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragment;->vpContainer:Lcom/codemao/nemo/view/NoScrollViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/NoScrollViewPager;->setNoScroll(Z)V

    return-void
.end method

.method private notifyUserInfo()V
    .registers 3

    .line 307
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 308
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/LocalUserInfo;->getAvatar_url()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/fragment/MineFragment;->photo_iv:Lcom/codemao/nemo/view/RoundStrokeImageView;

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/GlideUtils;->loadUserAvatar(Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_13
    const/4 v0, 0x0

    .line 309
    invoke-direct {p0, v0}, Lcom/codemao/nemo/fragment/MineFragment;->setDataOffline(Z)V

    return-void
.end method

.method private setDataOffline(Z)V
    .registers 16

    .line 403
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object v0

    if-eqz v0, :cond_181

    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object v0

    if-eqz v0, :cond_181

    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/bean/UserInfoVO;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/LocalUserInfo;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_181

    .line 404
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragment;->name_tv:Landroid/widget/TextView;

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/LocalUserInfo;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/LocalUserInfo;->getAuthorLevel()I

    move-result v0

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/LocalUserInfo;->getHead_frame_url()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/codemao/nemo/fragment/MineFragment;->setUserLevelInfo(ILjava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, ""

    if-eqz p1, :cond_12d

    .line 408
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MineFragment;->views_tv:Lcom/codemao/nemo/view/ScrollNumAnimView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/ScrollNumAnimView;->getFinalNum()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 409
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MineFragment;->praises_tv:Lcom/codemao/nemo/view/ScrollNumAnimView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/ScrollNumAnimView;->getFinalNum()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 410
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MineFragment;->creates_tv:Lcom/codemao/nemo/view/ScrollNumAnimView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/ScrollNumAnimView;->getFinalNum()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 411
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LocalUserInfo;->getN_views()J

    move-result-wide v8

    .line 412
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LocalUserInfo;->getN_likes()J

    move-result-wide v10

    .line 413
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LocalUserInfo;->getN_re_create()J

    move-result-wide v12

    cmp-long p1, v8, v2

    if-lez p1, :cond_b3

    .line 415
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MineFragment;->views_tv:Lcom/codemao/nemo/view/ScrollNumAnimView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Lcom/codemao/nemo/view/ScrollNumAnimView;->setFinalNum(Ljava/lang/String;Z)V

    .line 417
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MineFragment;->views_tv:Lcom/codemao/nemo/view/ScrollNumAnimView;

    new-instance v2, Lcom/codemao/nemo/fragment/MineFragment$8;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/fragment/MineFragment$8;-><init>(Lcom/codemao/nemo/fragment/MineFragment;)V

    const-wide/16 v8, 0x14d

    invoke-virtual {p1, v2, v8, v9}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    const/16 p1, 0xfa

    goto :goto_c8

    .line 427
    :cond_b3
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MineFragment;->views_tv:Lcom/codemao/nemo/view/ScrollNumAnimView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Lcom/codemao/nemo/view/ScrollNumAnimView;->setFinalNum(Ljava/lang/String;Z)V

    const/4 p1, 0x0

    :goto_c8
    cmp-long v2, v10, v4

    if-lez v2, :cond_e7

    .line 430
    iget-object v2, p0, Lcom/codemao/nemo/fragment/MineFragment;->praises_tv:Lcom/codemao/nemo/view/ScrollNumAnimView;

    new-instance v3, Lcom/codemao/nemo/fragment/MineFragment$9;

    invoke-direct {v3, p0, v10, v11}, Lcom/codemao/nemo/fragment/MineFragment$9;-><init>(Lcom/codemao/nemo/fragment/MineFragment;J)V

    int-to-long v4, p1

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 438
    iget-object v2, p0, Lcom/codemao/nemo/fragment/MineFragment;->praises_tv:Lcom/codemao/nemo/view/ScrollNumAnimView;

    new-instance v3, Lcom/codemao/nemo/fragment/MineFragment$10;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/fragment/MineFragment$10;-><init>(Lcom/codemao/nemo/fragment/MineFragment;)V

    add-int/lit16 v4, p1, 0x14d

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    add-int/lit16 p1, p1, 0xfa

    goto :goto_fb

    .line 449
    :cond_e7
    iget-object v2, p0, Lcom/codemao/nemo/fragment/MineFragment;->praises_tv:Lcom/codemao/nemo/view/ScrollNumAnimView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/codemao/nemo/view/ScrollNumAnimView;->setFinalNum(Ljava/lang/String;Z)V

    :goto_fb
    cmp-long v2, v12, v6

    if-lez v2, :cond_118

    .line 452
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragment;->creates_tv:Lcom/codemao/nemo/view/ScrollNumAnimView;

    new-instance v1, Lcom/codemao/nemo/fragment/MineFragment$11;

    invoke-direct {v1, p0, v12, v13}, Lcom/codemao/nemo/fragment/MineFragment$11;-><init>(Lcom/codemao/nemo/fragment/MineFragment;J)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 461
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragment;->creates_tv:Lcom/codemao/nemo/view/ScrollNumAnimView;

    new-instance v1, Lcom/codemao/nemo/fragment/MineFragment$12;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/MineFragment$12;-><init>(Lcom/codemao/nemo/fragment/MineFragment;)V

    add-int/lit16 p1, p1, 0x14d

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_181

    .line 471
    :cond_118
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MineFragment;->creates_tv:Lcom/codemao/nemo/view/ScrollNumAnimView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/codemao/nemo/view/ScrollNumAnimView;->setFinalNum(Ljava/lang/String;Z)V

    goto :goto_181

    .line 474
    :cond_12d
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MineFragment;->views_tv:Lcom/codemao/nemo/view/ScrollNumAnimView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/LocalUserInfo;->getN_views()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Lcom/codemao/nemo/view/ScrollNumAnimView;->setFinalNum(Ljava/lang/String;Z)V

    .line 475
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MineFragment;->praises_tv:Lcom/codemao/nemo/view/ScrollNumAnimView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/LocalUserInfo;->getN_likes()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Lcom/codemao/nemo/view/ScrollNumAnimView;->setFinalNum(Ljava/lang/String;Z)V

    .line 476
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MineFragment;->creates_tv:Lcom/codemao/nemo/view/ScrollNumAnimView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/LocalUserInfo;->getN_re_create()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/codemao/nemo/view/ScrollNumAnimView;->setFinalNum(Ljava/lang/String;Z)V

    :cond_181
    :goto_181
    return-void
.end method

.method private setUserLevelInfo(ILjava/lang/String;)V
    .registers 7

    .line 715
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragment;->ivLevelSign:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x4

    const/16 v2, 0x8

    if-eqz p1, :cond_49

    const/4 v3, 0x1

    if-eq p1, v3, :cond_43

    const/4 v3, 0x2

    if-eq p1, v3, :cond_3a

    const/4 v3, 0x3

    if-eq p1, v3, :cond_31

    if-eq p1, v0, :cond_28

    const/4 v3, 0x5

    if-eq p1, v3, :cond_1f

    .line 736
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MineFragment;->ivLevelSign:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4e

    .line 733
    :cond_1f
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MineFragment;->ivLevelSign:Landroid/widget/ImageView;

    const v2, 0x7f0804dc

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4e

    .line 730
    :cond_28
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MineFragment;->ivLevelSign:Landroid/widget/ImageView;

    const v2, 0x7f0804db

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4e

    .line 727
    :cond_31
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MineFragment;->ivLevelSign:Landroid/widget/ImageView;

    const v2, 0x7f0804da

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4e

    .line 724
    :cond_3a
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MineFragment;->ivLevelSign:Landroid/widget/ImageView;

    const v2, 0x7f0804d9

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4e

    .line 721
    :cond_43
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MineFragment;->ivLevelSign:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4e

    .line 718
    :cond_49
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MineFragment;->ivLevelSign:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 739
    :goto_4e
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_61

    .line 740
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MineFragment;->ivFrame:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 741
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MineFragment;->photo_iv:Lcom/codemao/nemo/view/RoundStrokeImageView;

    const/high16 p2, 0x40000000  # 2.0f

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/view/RoundStrokeImageView;->setmStrokeWitdh(F)V

    goto :goto_71

    .line 743
    :cond_61
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MineFragment;->ivFrame:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 744
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MineFragment;->photo_iv:Lcom/codemao/nemo/view/RoundStrokeImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/RoundStrokeImageView;->setmStrokeWitdh(F)V

    .line 745
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MineFragment;->ivFrame:Landroid/widget/ImageView;

    invoke-static {p2, p1}, Lcom/codemao/nemo/util/GlideUtils;->loadNoPlace(Ljava/lang/String;Landroid/widget/ImageView;)V

    :goto_71
    return-void
.end method


# virtual methods
.method protected contentViewId()I
    .registers 2

    .line 148
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f0d0158

    return v0

    :cond_a
    const v0, 0x7f0d0150

    return v0
.end method

.method protected createPresenter()Lcom/giu/xzz/mvp/BasePresenter;
    .registers 2

    .line 667
    new-instance v0, Lcom/codemao/nemo/presenter/SearchPresentImpl;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/presenter/SearchPresentImpl;-><init>(Lcom/codemao/nemo/presenter/SearchPresentImpl$AnimView;)V

    return-object v0
.end method

.method public get2Activity()Landroid/app/Activity;
    .registers 2

    .line 692
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public get2Intent()Landroid/content/Intent;
    .registers 4

    .line 682
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/codemao/nemo/activity/NativeSearchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public getChildView()Landroid/view/View;
    .registers 2

    .line 672
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragment;->rightView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    .line 687
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .registers 2

    .line 677
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragment;->root:Landroid/view/View;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    .line 171
    invoke-super {p0, p1}, Lcom/giu/xzz/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 172
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/MineFragment;->init()V

    return-void
.end method

.method onClick(Landroid/view/View;)V
    .registers 10
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 484
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_a6

    goto/16 :goto_a5

    :sswitch_a
    new-array p1, v0, [Ljava/lang/String;

    const-string v0, "我的-点击搜索"

    .line 493
    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 494
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MineFragment;->presenterImpl:Lcom/codemao/nemo/presenter/SearchPresentImpl;

    invoke-virtual {p1}, Lcom/codemao/nemo/presenter/SearchPresentImpl;->exitAnim()V

    goto/16 :goto_a5

    .line 498
    :sswitch_18
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/codemao/nemo/event/BackHeaderEV;

    iget-object v1, p0, Lcom/codemao/nemo/fragment/MineFragment;->vpContainer:Lcom/codemao/nemo/view/NoScrollViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    if-nez v1, :cond_29

    const-class v1, Lcom/codemao/nemo/fragment/CreateFragment;

    goto :goto_2b

    :cond_29
    const-class v1, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;

    :goto_2b
    invoke-direct {v0, v1}, Lcom/codemao/nemo/event/BackHeaderEV;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_a5

    :sswitch_33
    new-array p1, v0, [Ljava/lang/String;

    const-string v0, "我的-点击设置"

    .line 487
    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 488
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/codemao/nemo/activity/SettingActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 489
    invoke-virtual {p0, p1}, Lcom/giu/xzz/BaseFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_a5

    :sswitch_49
    new-array p1, v0, [Ljava/lang/String;

    const-string v0, "我的-点击云端下载按钮"

    .line 502
    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 503
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/codemao/nemo/activity/CloudActivityV2;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 504
    invoke-virtual {p0, p1}, Lcom/giu/xzz/BaseFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_a5

    :sswitch_5f
    new-array p1, v0, [Ljava/lang/String;

    const-string v0, "我的-点击立刻登录"

    .line 513
    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 514
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/codemao/nemo/activity/LoginActivity;->startActivity(Landroid/content/Context;I)V

    goto :goto_a5

    :sswitch_6f
    new-array p1, v0, [Ljava/lang/String;

    const-string v0, "我的-点击个人主页入口"

    .line 508
    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 509
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p1, p0, Lcom/codemao/nemo/fragment/MineFragment;->avatarUrl:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_91

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object p1

    if-eqz p1, :cond_91

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LocalUserInfo;->getAvatar_url()Ljava/lang/String;

    move-result-object p1

    goto :goto_93

    :cond_91
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MineFragment;->avatarUrl:Ljava/lang/String;

    :goto_93
    move-object v2, p1

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LocalUserInfo;->getId()J

    move-result-wide v3

    const-string v5, "我的"

    const-string v6, ""

    const-string v7, ""

    invoke-static/range {v1 .. v7}, Lcom/codemao/nemo/activity/UserDetailActivity;->goDetail(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_a5
    return-void

    :sswitch_data_a6
    .sparse-switch
        0x7f0a007e -> :sswitch_6f
        0x7f0a0165 -> :sswitch_5f
        0x7f0a0173 -> :sswitch_49
        0x7f0a048c -> :sswitch_33
        0x7f0a0531 -> :sswitch_18
        0x7f0a0620 -> :sswitch_a
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 156
    invoke-super {p0, p1}, Lcom/giu/xzz/mvp/MvpFragment;->onCreate(Landroid/os/Bundle;)V

    .line 157
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 158
    iget-object p1, p0, Lcom/giu/xzz/mvp/MvpFragment;->presenter:Lcom/giu/xzz/mvp/BasePresenter;

    check-cast p1, Lcom/codemao/nemo/presenter/SearchPresentImpl;

    iput-object p1, p0, Lcom/codemao/nemo/fragment/MineFragment;->presenterImpl:Lcom/codemao/nemo/presenter/SearchPresentImpl;

    const/high16 p1, 0x424c0000  # 51.0f

    .line 159
    invoke-static {p1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4

    .line 165
    invoke-super {p0, p1, p2, p3}, Lcom/giu/xzz/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/fragment/MineFragment;->bindView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .registers 2

    .line 177
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 178
    invoke-super {p0}, Lcom/giu/xzz/BaseFragment;->onDestroy()V

    .line 179
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragment;->viewAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_11

    .line 180
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 182
    :cond_11
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragment;->likeAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_18

    .line 183
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 185
    :cond_18
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragment;->createAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1f

    .line 186
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_1f
    return-void
.end method

.method public onDownloadBcmEvent(Lcom/codemao/nemo/event/DownloadBcmEvent;)V
    .registers 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 625
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MineFragment;->vpContainer:Lcom/codemao/nemo/view/NoScrollViewPager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public onMineTabEvent(Lcom/codemao/nemo/event/MineTabEvent;)V
    .registers 6
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 600
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragment;->tabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p1, Lcom/codemao/nemo/event/MineTabEvent;->tabIndex:I

    if-le v0, v1, :cond_58

    const-string v0, ")"

    if-nez v1, :cond_2d

    .line 603
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

    .line 605
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

    .line 607
    :goto_43
    iget-object v1, p0, Lcom/codemao/nemo/fragment/MineFragment;->tabs:Ljava/util/List;

    iget p1, p1, Lcom/codemao/nemo/event/MineTabEvent;->tabIndex:I

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 608
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MineFragment;->adapter:Lcom/giu/xzz/adapter/vp/BaseFragmentAdapter;

    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragment;->tabs:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/vp/BaseFragmentAdapter;->setTab(Ljava/util/List;)V

    .line 610
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MineFragment;->customTabView:Lcom/codemao/nemo/view/CustomTabView;

    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragment;->tabs:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/CustomTabView;->setTabs(Ljava/util/List;)V

    :cond_58
    return-void
.end method

.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .registers 6

    const/16 p1, 0x8

    const/4 v0, 0x0

    const/16 v1, -0x14

    if-ge p2, v1, :cond_5f

    .line 556
    iget-object v1, p0, Lcom/codemao/nemo/fragment/MineFragment;->bgToolBar:Landroid/view/View;

    const-string v2, "#f8f8f8"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 557
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 558
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MineFragment;->split:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_23

    .line 560
    :cond_1e
    iget-object v1, p0, Lcom/codemao/nemo/fragment/MineFragment;->split:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 562
    :goto_23
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MineFragment;->midView:Landroid/widget/TextView;

    const-string v1, "#333333"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 563
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MineFragment;->leftView:Landroid/widget/ImageView;

    const v1, 0x7f080596

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 564
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MineFragment;->rightView:Landroid/widget/ImageView;

    const v1, 0x7f080594

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 565
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MineFragment;->bgToolBar:Landroid/view/View;

    invoke-direct {p0, p2}, Lcom/codemao/nemo/fragment/MineFragment;->getToolBarBgAlpha(I)F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 566
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MineFragment;->split:Landroid/view/View;

    invoke-direct {p0, p2}, Lcom/codemao/nemo/fragment/MineFragment;->getToolBarBgAlpha(I)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    const/4 p1, 0x1

    .line 567
    iput-boolean p1, p0, Lcom/codemao/nemo/fragment/MineFragment;->isDark:Z

    .line 568
    iget-boolean p2, p0, Lcom/codemao/nemo/fragment/MineFragment;->isVisilble:Z

    if-eqz p2, :cond_a8

    .line 569
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2, p1, v0}, Lcom/giu/xzz/utils/StatusBarUtil;->setStatusBarDark(Landroid/app/Activity;ZI)V

    goto :goto_a8

    .line 573
    :cond_5f
    iget-object p2, p0, Lcom/codemao/nemo/fragment/MineFragment;->bgToolBar:Landroid/view/View;

    const-string v1, "#00000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 574
    iget-object p2, p0, Lcom/codemao/nemo/fragment/MineFragment;->split:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 575
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MineFragment;->midView:Landroid/widget/TextView;

    const-string p2, "#ffffff"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 576
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result p1

    if-eqz p1, :cond_88

    .line 577
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MineFragment;->rightView:Landroid/widget/ImageView;

    const p2, 0x7f080595

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 579
    :cond_88
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MineFragment;->leftView:Landroid/widget/ImageView;

    const p2, 0x7f080597

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 580
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MineFragment;->bgToolBar:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 581
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MineFragment;->split:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 582
    iput-boolean v0, p0, Lcom/codemao/nemo/fragment/MineFragment;->isDark:Z

    .line 583
    iget-boolean p1, p0, Lcom/codemao/nemo/fragment/MineFragment;->isVisilble:Z

    if-eqz p1, :cond_a8

    .line 584
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, v0, v0}, Lcom/giu/xzz/utils/StatusBarUtil;->setStatusBarDark(Landroid/app/Activity;ZI)V

    :cond_a8
    :goto_a8
    return-void
.end method

.method public onResume()V
    .registers 3

    .line 198
    invoke-super {p0}, Lcom/giu/xzz/BaseFragment;->onResume()V

    .line 199
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/MineFragment;->initData()V

    .line 200
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isBBKLogin()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 201
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/MineFragment;->getAuthInformation()V

    .line 203
    :cond_f
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragment;->tabs:Ljava/util/List;

    if-eqz v0, :cond_18

    .line 204
    iget-object v1, p0, Lcom/codemao/nemo/fragment/MineFragment;->customTabView:Lcom/codemao/nemo/view/CustomTabView;

    invoke-virtual {v1, v0}, Lcom/codemao/nemo/view/CustomTabView;->setTabs(Ljava/util/List;)V

    :cond_18
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 698
    invoke-super {p0}, Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;->onStart()V

    .line 699
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragment;->vpContainer:Lcom/codemao/nemo/view/NoScrollViewPager;

    if-eqz v0, :cond_c

    .line 700
    iget v1, p0, Lcom/codemao/nemo/fragment/MineFragment;->currentIndex:I

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_c
    return-void
.end method

.method public onTabChangeEvent(Lcom/codemao/nemo/event/MainActivityTabChangeEvent;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 655
    invoke-virtual {p1}, Lcom/codemao/nemo/event/MainActivityTabChangeEvent;->getFirstTab()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragment;->vpContainer:Lcom/codemao/nemo/view/NoScrollViewPager;

    if-eqz v0, :cond_1a

    .line 657
    invoke-virtual {p1}, Lcom/codemao/nemo/event/MainActivityTabChangeEvent;->getSecondeTabName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "已发布(0)"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 660
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragment;->vpContainer:Lcom/codemao/nemo/view/NoScrollViewPager;

    invoke-virtual {v0, p1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_1a
    return-void
.end method

.method public onUpdateWorkInfoEvent(Lcom/codemao/nemo/event/UpdateWorkInfoEvents;)V
    .registers 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 706
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getType()I

    move-result p1

    const/16 v0, 0x9

    if-ne p1, v0, :cond_19

    .line 707
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MineFragment;->vpContainer:Lcom/codemao/nemo/view/NoScrollViewPager;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_11

    .line 708
    invoke-virtual {p1, v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 709
    :cond_11
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MineFragment;->customTabView:Lcom/codemao/nemo/view/CustomTabView;

    if-eqz p1, :cond_19

    const/4 v2, 0x0

    .line 710
    invoke-virtual {p1, v1, v2, v0}, Lcom/codemao/nemo/view/CustomTabView;->onScroll(IFI)V

    :cond_19
    return-void
.end method

.method public onUserInfoChanged()V
    .registers 1

    .line 192
    invoke-super {p0}, Lcom/giu/xzz/BaseFragment;->onUserInfoChanged()V

    .line 193
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/MineFragment;->notifyUserInfo()V

    return-void
.end method

.method public onUserInfoUpdate(Lcom/codemao/nemo/event/UpdateUserInfoEvents;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 631
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateUserInfoEvents;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_47

    const/4 v1, 0x3

    if-eq v0, v1, :cond_37

    const/4 v1, 0x4

    if-eq v0, v1, :cond_e

    goto :goto_50

    .line 637
    :cond_e
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateUserInfoEvents;->getNewAvatarUrl()Ljava/lang/String;

    move-result-object p1

    .line 638
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 639
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MineFragment;->ivFrame:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 640
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MineFragment;->photo_iv:Lcom/codemao/nemo/view/RoundStrokeImageView;

    const/high16 v0, 0x40000000  # 2.0f

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/RoundStrokeImageView;->setmStrokeWitdh(F)V

    goto :goto_50

    .line 642
    :cond_25
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragment;->ivFrame:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 643
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragment;->photo_iv:Lcom/codemao/nemo/view/RoundStrokeImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/RoundStrokeImageView;->setmStrokeWitdh(F)V

    .line 644
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragment;->ivFrame:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/GlideUtils;->loadNoPlace(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_50

    .line 633
    :cond_37
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateUserInfoEvents;->getNewAvatarUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/fragment/MineFragment;->avatarUrl:Ljava/lang/String;

    .line 634
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateUserInfoEvents;->getNewAvatarUrl()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragment;->photo_iv:Lcom/codemao/nemo/view/RoundStrokeImageView;

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/GlideUtils;->loadUserAvatar(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_50

    .line 648
    :cond_47
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragment;->name_tv:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateUserInfoEvents;->getNewNickName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_50
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .registers 5

    .line 540
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 541
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1e

    const/4 p1, 0x1

    .line 542
    iput-boolean p1, p0, Lcom/codemao/nemo/fragment/MineFragment;->isVisilble:Z

    .line 543
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-boolean v2, p0, Lcom/codemao/nemo/fragment/MineFragment;->isDark:Z

    invoke-static {v1, v2, v0}, Lcom/giu/xzz/utils/StatusBarUtil;->setStatusBarDark(Landroid/app/Activity;ZI)V

    .line 544
    iget-boolean v0, p0, Lcom/codemao/nemo/fragment/MineFragment;->isHeadLoadFinish:Z

    if-eqz v0, :cond_20

    .line 545
    invoke-direct {p0, p1}, Lcom/codemao/nemo/fragment/MineFragment;->setDataOffline(Z)V

    goto :goto_20

    .line 548
    :cond_1e
    iput-boolean v0, p0, Lcom/codemao/nemo/fragment/MineFragment;->isVisilble:Z

    :cond_20
    :goto_20
    return-void
.end method
