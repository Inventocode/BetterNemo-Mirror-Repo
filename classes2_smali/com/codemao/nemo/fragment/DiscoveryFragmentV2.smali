.class public Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;
.super Lcom/giu/xzz/mvp/MvpFragment;
.source "DiscoveryFragmentV2.java"

# interfaces
.implements Lcom/codemao/nemo/presenter/SearchPresentImpl$AnimView;


# instance fields
.field adapter:Lcom/giu/xzz/adapter/vp/BaseStateFragmentAdapter;

.field private courseFragment:Lcom/codemao/nemo/fragment/CourseFragment;

.field customTabView:Lnet/lucode/hackware/magicindicator/MagicIndicator;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private defaultIndex:I

.field private defaultTabName:Ljava/lang/String;

.field private fragments:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private isInited:Z

.field private isPad:Z

.field private isVisable:Z

.field private latestWorkFragment:Lcom/codemao/nemo/fragment/LatestFragmentV3;

.field private mBeginnerFragment:Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;

.field private messageCount:Lcom/codemao/nemo/bean/MessageCount;

.field messageCountTv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private moreFragment:Lcom/codemao/nemo/fragment/MoreFragment;

.field private pleasanceFragment:Lcom/codemao/nemo/fragment/PleasanceFragment;

.field private presenterImpl:Lcom/codemao/nemo/presenter/SearchPresentImpl;

.field private recommendFragment:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

.field rlTop:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field root:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field scanIv:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field searchIv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private themeFragment:Lcom/codemao/nemo/fragment/ThemeFragment;

.field private titles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private trendsFragment:Lcom/codemao/nemo/fragment/TrendsFragment;

.field viewPager:Landroidx/viewpager/widget/ViewPager;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$OrLEw_HExpTFsN7Jkabnh6weYYI(Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;)V
    .registers 1

    invoke-direct {p0}, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->lambda$initView$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$t3cTxv7Hb1t1ABWkZEkkHO7Bunk(Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/SimplePagerTitleView;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->lambda$showCourseTabIndicatorPop$1(Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/SimplePagerTitleView;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 92
    invoke-direct {p0}, Lcom/giu/xzz/mvp/MvpFragment;-><init>()V

    const/4 v0, 0x0

    .line 117
    iput-boolean v0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->isVisable:Z

    .line 122
    iput-boolean v0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->isInited:Z

    const/4 v0, 0x2

    .line 123
    iput v0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->defaultIndex:I

    const-string v0, "推荐"

    .line 124
    iput-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->defaultTabName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;)Z
    .registers 1

    .line 92
    iget-boolean p0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->isInited:Z

    return p0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;)Ljava/util/LinkedList;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->fragments:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;)Z
    .registers 1

    .line 92
    iget-boolean p0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->isPad:Z

    return p0
.end method

.method static synthetic access$300(Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/SimplePagerTitleView;)V
    .registers 2

    .line 92
    invoke-direct {p0, p1}, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->showCourseTabIndicatorPop(Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/SimplePagerTitleView;)V

    return-void
.end method

.method static synthetic access$400(Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;I)V
    .registers 2

    .line 92
    invoke-direct {p0, p1}, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->choseTab(I)V

    return-void
.end method

.method static synthetic access$502(Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;Lcom/codemao/nemo/bean/MessageCount;)Lcom/codemao/nemo/bean/MessageCount;
    .registers 2

    .line 92
    iput-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->messageCount:Lcom/codemao/nemo/bean/MessageCount;

    return-object p1
.end method

.method static synthetic access$600(Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;)V
    .registers 1

    .line 92
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->calculateCount()V

    return-void
.end method

.method private calculateCount()V
    .registers 3

    .line 394
    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->messageCount:Lcom/codemao/nemo/bean/MessageCount;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/MessageCount;->getLike_collection_count()I

    move-result v0

    iget-object v1, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->messageCount:Lcom/codemao/nemo/bean/MessageCount;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/MessageCount;->getRe_create_count()I

    move-result v1

    add-int/2addr v0, v1

    if-nez v0, :cond_17

    .line 396
    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->messageCountTv:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1d

    .line 398
    :cond_17
    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->messageCountTv:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1d
    return-void
.end method

.method private choseTab(I)V
    .registers 4

    .line 353
    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->courseFragment:Lcom/codemao/nemo/fragment/CourseFragment;

    if-eqz v0, :cond_1a

    iget-object v1, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->fragments:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ne p1, v0, :cond_1a

    .line 354
    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-ne p1, v0, :cond_1a

    .line 355
    iget-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->courseFragment:Lcom/codemao/nemo/fragment/CourseFragment;

    invoke-virtual {p1}, Lcom/codemao/nemo/fragment/CourseFragment;->scrollToTop()V

    return-void

    .line 359
    :cond_1a
    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->themeFragment:Lcom/codemao/nemo/fragment/ThemeFragment;

    if-eqz v0, :cond_34

    iget-object v1, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->fragments:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ne p1, v0, :cond_34

    .line 360
    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-ne p1, v0, :cond_34

    .line 361
    iget-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->themeFragment:Lcom/codemao/nemo/fragment/ThemeFragment;

    invoke-virtual {p1}, Lcom/codemao/nemo/fragment/ThemeFragment;->scrollToTop()V

    return-void

    .line 365
    :cond_34
    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->latestWorkFragment:Lcom/codemao/nemo/fragment/LatestFragmentV3;

    if-eqz v0, :cond_4e

    iget-object v1, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->fragments:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ne p1, v0, :cond_4e

    .line 366
    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-ne p1, v0, :cond_4e

    .line 367
    iget-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->latestWorkFragment:Lcom/codemao/nemo/fragment/LatestFragmentV3;

    invoke-virtual {p1}, Lcom/codemao/nemo/fragment/LatestFragmentV3;->scrollToTop()V

    return-void

    .line 371
    :cond_4e
    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->recommendFragment:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    if-eqz v0, :cond_68

    iget-object v1, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->fragments:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ne p1, v0, :cond_68

    .line 372
    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-ne p1, v0, :cond_68

    .line 373
    iget-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->recommendFragment:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    invoke-virtual {p1}, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->scrollToTop()V

    return-void

    .line 377
    :cond_68
    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->trendsFragment:Lcom/codemao/nemo/fragment/TrendsFragment;

    if-eqz v0, :cond_82

    iget-object v1, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->fragments:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ne p1, v0, :cond_82

    .line 378
    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-ne p1, v0, :cond_82

    .line 379
    iget-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->trendsFragment:Lcom/codemao/nemo/fragment/TrendsFragment;

    invoke-virtual {p1}, Lcom/codemao/nemo/fragment/TrendsFragment;->scrollToTop()V

    return-void

    .line 384
    :cond_82
    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public static getInstance()Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;
    .registers 1

    .line 131
    new-instance v0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;

    invoke-direct {v0}, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;-><init>()V

    return-object v0
.end method

.method private getMessageCount()V
    .registers 3

    .line 403
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 404
    :cond_7
    new-instance v0, Lcom/codemao/nemo/http/DiscoveryNetUtil;

    invoke-direct {v0}, Lcom/codemao/nemo/http/DiscoveryNetUtil;-><init>()V

    new-instance v1, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2$3;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2$3;-><init>(Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/http/DiscoveryNetUtil;->getMessageCount(Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method

.method private initIndicator(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    .line 260
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 261
    :goto_8
    iget-boolean v1, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->isPad:Z

    if-nez v1, :cond_1b

    const/4 v1, 0x5

    if-le v0, v1, :cond_1b

    .line 262
    iget-object v1, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->customTabView:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    const/high16 v2, 0x41200000  # 10.0f

    invoke-static {v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setViewPaddingStart(Landroid/view/View;F)V

    .line 265
    :cond_1b
    new-instance v1, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;-><init>(Landroid/content/Context;)V

    .line 267
    new-instance v2, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2$2;-><init>(Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;ILjava/util/List;)V

    invoke-virtual {v1, v2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->setAdapter(Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;)V

    .line 308
    iget p1, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->defaultIndex:I

    invoke-virtual {v1, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->onPageSelected(I)V

    .line 309
    iget-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->customTabView:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    invoke-virtual {p1, v1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->setNavigator(Lnet/lucode/hackware/magicindicator/abs/IPagerNavigator;)V

    .line 311
    iget-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->customTabView:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-static {p1, v0}, Lnet/lucode/hackware/magicindicator/ViewPagerHelper;->bind(Lnet/lucode/hackware/magicindicator/MagicIndicator;Landroidx/viewpager/widget/ViewPager;)V

    return-void
.end method

.method private initView()V
    .registers 5

    .line 170
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->fragments:Ljava/util/LinkedList;

    .line 171
    invoke-static {}, Lcom/codemao/nemo/fragment/CourseFragment;->getInstance()Lcom/codemao/nemo/fragment/CourseFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->courseFragment:Lcom/codemao/nemo/fragment/CourseFragment;

    .line 172
    sget-object v0, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;->Companion:Lcom/codemao/nemo/beginner/BeginnerRecommendFragment$Companion;

    invoke-virtual {v0}, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment$Companion;->getInstance()Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->mBeginnerFragment:Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;

    .line 173
    invoke-static {}, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->getInstance()Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->recommendFragment:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    .line 174
    invoke-static {}, Lcom/codemao/nemo/fragment/LatestFragmentV3;->getInstance()Lcom/codemao/nemo/fragment/LatestFragmentV3;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->latestWorkFragment:Lcom/codemao/nemo/fragment/LatestFragmentV3;

    .line 175
    invoke-static {}, Lcom/codemao/nemo/fragment/ThemeFragment;->getInstance()Lcom/codemao/nemo/fragment/ThemeFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->themeFragment:Lcom/codemao/nemo/fragment/ThemeFragment;

    .line 176
    invoke-static {}, Lcom/codemao/nemo/fragment/TrendsFragment;->getInstance()Lcom/codemao/nemo/fragment/TrendsFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->trendsFragment:Lcom/codemao/nemo/fragment/TrendsFragment;

    .line 177
    invoke-static {}, Lcom/codemao/nemo/fragment/PleasanceFragment;->getInstance()Lcom/codemao/nemo/fragment/PleasanceFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->pleasanceFragment:Lcom/codemao/nemo/fragment/PleasanceFragment;

    .line 179
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/MainActivityV2;

    .line 180
    invoke-virtual {v0}, Lcom/codemao/nemo/MainActivityV2;->getTabTitles()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->titles:Ljava/util/ArrayList;

    .line 181
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result v1

    .line 182
    sget-object v2, Lcom/codemao/nemo/beginner/BeginnerModeManager;->INSTANCE:Lcom/codemao/nemo/beginner/BeginnerModeManager;

    invoke-virtual {v2}, Lcom/codemao/nemo/beginner/BeginnerModeManager;->needShowBeginner()Z

    move-result v2

    const-string v3, "推荐"

    if-eqz v2, :cond_57

    if-eqz v1, :cond_52

    .line 185
    iput-object v3, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->defaultTabName:Ljava/lang/String;

    goto :goto_59

    :cond_52
    const-string v1, "课程"

    .line 187
    iput-object v1, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->defaultTabName:Ljava/lang/String;

    goto :goto_59

    .line 190
    :cond_57
    iput-object v3, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->defaultTabName:Ljava/lang/String;

    .line 192
    :goto_59
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_66

    .line 193
    iget-object v1, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->fragments:Ljava/util/LinkedList;

    iget-object v3, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->pleasanceFragment:Lcom/codemao/nemo/fragment/PleasanceFragment;

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 196
    :cond_66
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v1

    if-nez v1, :cond_7b

    .line 197
    iget-object v1, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->fragments:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->courseFragment:Lcom/codemao/nemo/fragment/CourseFragment;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 198
    iget-object v1, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->fragments:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->mBeginnerFragment:Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_8b

    :cond_7b
    if-eqz v2, :cond_84

    .line 201
    iget-object v1, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->fragments:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->mBeginnerFragment:Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 203
    :cond_84
    iget-object v1, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->fragments:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->courseFragment:Lcom/codemao/nemo/fragment/CourseFragment;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 205
    :goto_8b
    iget-object v1, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->fragments:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->recommendFragment:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 207
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_ae

    .line 208
    iget-object v1, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->fragments:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->themeFragment:Lcom/codemao/nemo/fragment/ThemeFragment;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object v1, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->fragments:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->trendsFragment:Lcom/codemao/nemo/fragment/TrendsFragment;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 210
    iget-object v1, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->fragments:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->latestWorkFragment:Lcom/codemao/nemo/fragment/LatestFragmentV3;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_ba

    .line 212
    :cond_ae
    new-instance v1, Lcom/codemao/nemo/fragment/MoreFragment;

    invoke-direct {v1}, Lcom/codemao/nemo/fragment/MoreFragment;-><init>()V

    iput-object v1, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->moreFragment:Lcom/codemao/nemo/fragment/MoreFragment;

    .line 213
    iget-object v2, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->fragments:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 215
    :goto_ba
    iget-object v1, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->titles:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->defaultTabName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->defaultIndex:I

    .line 216
    new-instance v1, Lcom/giu/xzz/adapter/vp/BaseStateFragmentAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->fragments:Ljava/util/LinkedList;

    invoke-direct {v1, v2, v3}, Lcom/giu/xzz/adapter/vp/BaseStateFragmentAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    iput-object v1, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->adapter:Lcom/giu/xzz/adapter/vp/BaseStateFragmentAdapter;

    .line 218
    invoke-virtual {v0}, Lcom/codemao/nemo/MainActivityV2;->getDefaultChoseIndex()I

    move-result v0

    iput v0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->defaultIndex:I

    .line 220
    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 221
    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->viewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->adapter:Lcom/giu/xzz/adapter/vp/BaseStateFragmentAdapter;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 222
    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->clearOnPageChangeListeners()V

    .line 223
    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->viewPager:Landroidx/viewpager/widget/ViewPager;

    iget v1, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->defaultIndex:I

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 224
    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->viewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 227
    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->viewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2$1;-><init>(Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 255
    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->titles:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->initIndicator(Ljava/util/List;)V

    .line 256
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->getMessageCount()V

    return-void
.end method

.method private synthetic lambda$initView$0()V
    .registers 2

    const/4 v0, 0x1

    .line 225
    iput-boolean v0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->isInited:Z

    return-void
.end method

.method private synthetic lambda$showCourseTabIndicatorPop$1(Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/SimplePagerTitleView;)V
    .registers 7

    .line 320
    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->titles:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 321
    :goto_b
    iget-boolean v2, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->isPad:Z

    const/4 v3, 0x1

    if-nez v2, :cond_15

    const/4 v4, 0x5

    if-le v0, v4, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    if-eqz v2, :cond_1c

    const v4, 0x3def9db2  # 0.117f

    goto :goto_1f

    :cond_1c
    const v4, 0x3db68eb0

    :goto_1f
    if-eqz v2, :cond_25

    const v2, 0x43998000  # 307.0f

    goto :goto_27

    :cond_25
    const/high16 v2, 0x43740000  # 244.0f

    .line 326
    :goto_27
    invoke-static {v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v4

    float-to-int v2, v2

    .line 328
    iget-object v4, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->customTabView:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v4

    if-eqz v0, :cond_3e

    const/high16 v0, 0x41200000  # 10.0f

    invoke-static {v0}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v0

    goto :goto_3f

    :cond_3e
    const/4 v0, 0x0

    :goto_3f
    add-int/2addr v4, v0

    invoke-virtual {p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/SimplePagerTitleView;->getContentLeft()I

    move-result v0

    invoke-virtual {p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/SimplePagerTitleView;->getContentRight()I

    move-result p1

    add-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v4, v0

    sub-int/2addr v4, v2

    if-gez v4, :cond_50

    goto :goto_51

    :cond_50
    move v1, v4

    .line 334
    :goto_51
    iget-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->customTabView:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    invoke-static {p1}, Lcom/codemao/nemo/util/ScreenUtils;->fetchViewInWindowPosition(Landroid/view/View;)[I

    move-result-object p1

    aget p1, p1, v3

    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->customTabView:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    add-int/2addr p1, v0

    .line 336
    new-instance v0, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->TranslateFromBottom:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    .line 337
    invoke-virtual {v0, v2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    sget-object v2, Lcom/nemo/commonui/xpopup/enums/PopupType;->Position:Lcom/nemo/commonui/xpopup/enums/PopupType;

    .line 338
    invoke-virtual {v0, v2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupType(Lcom/nemo/commonui/xpopup/enums/PopupType;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    .line 341
    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->offsetX(I)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    .line 342
    invoke-virtual {v0, p1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->offsetY(I)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 343
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnTouchOutside(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 344
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    new-instance v0, Lcom/codemao/nemo/dialog/pop/TabIndicatorPop;

    .line 345
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/codemao/nemo/dialog/pop/TabIndicatorPop;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    .line 346
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    .line 347
    invoke-static {v3}, Lcom/codemao/nemo/util/SprefUtil;->putCurUserHasShowTabIndicatorPop(Z)V

    return-void
.end method

.method private showCourseTabIndicatorPop(Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/SimplePagerTitleView;)V
    .registers 5

    if-eqz p1, :cond_11

    .line 316
    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->customTabView:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    if-nez v0, :cond_7

    goto :goto_11

    .line 319
    :cond_7
    new-instance v0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/SimplePagerTitleView;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_11
    :goto_11
    return-void
.end method


# virtual methods
.method protected contentViewId()I
    .registers 2

    .line 150
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->isPad:Z

    if-eqz v0, :cond_c

    const v0, 0x7f0d014d

    goto :goto_f

    :cond_c
    const v0, 0x7f0d014b

    :goto_f
    return v0
.end method

.method protected createPresenter()Lcom/giu/xzz/mvp/BasePresenter;
    .registers 2

    .line 513
    new-instance v0, Lcom/codemao/nemo/presenter/SearchPresentImpl;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/presenter/SearchPresentImpl;-><init>(Lcom/codemao/nemo/presenter/SearchPresentImpl$AnimView;)V

    return-object v0
.end method

.method public get2Activity()Landroid/app/Activity;
    .registers 2

    .line 508
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public get2Intent()Landroid/content/Intent;
    .registers 4

    .line 503
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/codemao/nemo/activity/DiscoverySearchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public getChildView()Landroid/view/View;
    .registers 2

    .line 493
    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->searchIv:Landroid/widget/TextView;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    .line 488
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentViewName()Ljava/lang/String;
    .registers 5

    .line 546
    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const-string v1, "推荐页"

    if-eqz v0, :cond_b8

    iget-object v2, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->fragments:Ljava/util/LinkedList;

    if-eqz v2, :cond_b8

    .line 547
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    iget-object v2, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->fragments:Ljava/util/LinkedList;

    iget-object v3, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->pleasanceFragment:Lcom/codemao/nemo/fragment/PleasanceFragment;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ne v0, v2, :cond_1b

    const-string v0, "游乐园页"

    return-object v0

    .line 550
    :cond_1b
    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    iget-object v2, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->fragments:Ljava/util/LinkedList;

    iget-object v3, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->courseFragment:Lcom/codemao/nemo/fragment/CourseFragment;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ne v0, v2, :cond_2e

    const-string v0, "教程页"

    return-object v0

    .line 553
    :cond_2e
    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    iget-object v2, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->fragments:Ljava/util/LinkedList;

    iget-object v3, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->themeFragment:Lcom/codemao/nemo/fragment/ThemeFragment;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ne v0, v2, :cond_41

    const-string v0, "主题页"

    return-object v0

    .line 556
    :cond_41
    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    iget-object v2, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->fragments:Ljava/util/LinkedList;

    iget-object v3, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->latestWorkFragment:Lcom/codemao/nemo/fragment/LatestFragmentV3;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ne v0, v2, :cond_54

    const-string v0, "最新页"

    return-object v0

    .line 559
    :cond_54
    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    iget-object v2, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->fragments:Ljava/util/LinkedList;

    iget-object v3, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->mBeginnerFragment:Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ne v0, v2, :cond_70

    .line 560
    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->mBeginnerFragment:Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;

    if-eqz v0, :cond_6d

    invoke-virtual {v0}, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;->getViewName()Ljava/lang/String;

    move-result-object v0

    goto :goto_6f

    :cond_6d
    const-string v0, "萌新必看"

    :goto_6f
    return-object v0

    .line 562
    :cond_70
    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    iget-object v2, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->fragments:Ljava/util/LinkedList;

    iget-object v3, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->recommendFragment:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ne v0, v2, :cond_89

    .line 563
    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->recommendFragment:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    if-eqz v0, :cond_88

    invoke-virtual {v0}, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->getViewName()Ljava/lang/String;

    move-result-object v1

    :cond_88
    return-object v1

    .line 565
    :cond_89
    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    iget-object v2, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->fragments:Ljava/util/LinkedList;

    iget-object v3, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->trendsFragment:Lcom/codemao/nemo/fragment/TrendsFragment;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ne v0, v2, :cond_9c

    const-string v0, "动态页"

    return-object v0

    .line 568
    :cond_9c
    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    iget-object v2, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->fragments:Ljava/util/LinkedList;

    iget-object v3, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->moreFragment:Lcom/codemao/nemo/fragment/MoreFragment;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ne v0, v2, :cond_af

    const-string v0, "更多页"

    return-object v0

    .line 571
    :cond_af
    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->recommendFragment:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    if-eqz v0, :cond_b7

    invoke-virtual {v0}, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->getViewName()Ljava/lang/String;

    move-result-object v1

    :cond_b7
    return-object v1

    .line 573
    :cond_b8
    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->recommendFragment:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    if-eqz v0, :cond_c0

    invoke-virtual {v0}, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->getViewName()Ljava/lang/String;

    move-result-object v1

    :cond_c0
    return-object v1
.end method

.method public getRecommendFragment()Lcom/codemao/nemo/fragment/RecommendFragmentV2;
    .registers 2

    .line 624
    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->recommendFragment:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .registers 2

    .line 498
    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->root:Landroid/view/View;

    return-object v0
.end method

.method goMessage(Landroid/view/View;)V
    .registers 4
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    const-string v0, "主页面-点击消息按钮"

    .line 426
    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 427
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/codemao/nemo/activity/MessageActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 428
    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->messageCount:Lcom/codemao/nemo/bean/MessageCount;

    const-string v1, "messageCount"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 429
    invoke-virtual {p0, p1}, Lcom/giu/xzz/BaseFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method goSearch(Landroid/view/View;)V
    .registers 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    const-string v0, "主页面-点击搜索框"

    .line 435
    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 436
    iget-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->presenterImpl:Lcom/codemao/nemo/presenter/SearchPresentImpl;

    invoke-virtual {p1}, Lcom/codemao/nemo/presenter/SearchPresentImpl;->exitAnim()V

    return-void
.end method

.method public isFront()Z
    .registers 2

    .line 578
    iget-boolean v0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->isVisable:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 137
    invoke-super {p0, p1}, Lcom/giu/xzz/mvp/MvpFragment;->onCreate(Landroid/os/Bundle;)V

    .line 138
    iget-object p1, p0, Lcom/giu/xzz/mvp/MvpFragment;->presenter:Lcom/giu/xzz/mvp/BasePresenter;

    check-cast p1, Lcom/codemao/nemo/presenter/SearchPresentImpl;

    iput-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->presenterImpl:Lcom/codemao/nemo/presenter/SearchPresentImpl;

    .line 139
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 144
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 145
    invoke-super {p0}, Lcom/giu/xzz/BaseFragment;->onDestroy()V

    return-void
.end method

.method public onEvent(Lcom/codemao/nemo/event/LoginEvent;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 483
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->initView()V

    return-void
.end method

.method public onGetMessageCountEvent(Lcom/codemao/nemo/event/GetMessageCountEvent;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 442
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->getMessageCount()V

    return-void
.end method

.method public onMessageReadEvent(Lcom/codemao/nemo/event/MessageReadEvent;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 448
    invoke-virtual {p1}, Lcom/codemao/nemo/event/MessageReadEvent;->getIndex()I

    move-result v0

    if-nez v0, :cond_10

    .line 449
    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->messageCount:Lcom/codemao/nemo/bean/MessageCount;

    invoke-virtual {p1}, Lcom/codemao/nemo/event/MessageReadEvent;->getCount()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/bean/MessageCount;->setLike_collection_count(I)V

    goto :goto_20

    .line 450
    :cond_10
    invoke-virtual {p1}, Lcom/codemao/nemo/event/MessageReadEvent;->getIndex()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    .line 451
    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->messageCount:Lcom/codemao/nemo/bean/MessageCount;

    invoke-virtual {p1}, Lcom/codemao/nemo/event/MessageReadEvent;->getCount()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/bean/MessageCount;->setRe_create_count(I)V

    .line 453
    :cond_20
    :goto_20
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->calculateCount()V

    return-void
.end method

.method public onResume()V
    .registers 2

    .line 540
    invoke-super {p0}, Lcom/giu/xzz/BaseFragment;->onResume()V

    .line 541
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->isVisable:Z

    return-void
.end method

.method public onTabChangeEvent(Lcom/codemao/nemo/event/MainActivityTabChangeEvent;)V
    .registers 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 458
    invoke-virtual {p1}, Lcom/codemao/nemo/event/MainActivityTabChangeEvent;->getFirstTab()I

    move-result v0

    if-nez v0, :cond_17

    .line 460
    :try_start_6
    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->titles:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/codemao/nemo/event/MainActivityTabChangeEvent;->getSecondeTabName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 461
    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_17

    .line 462
    invoke-direct {p0, p1}, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->choseTab(I)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_17} :catch_17

    :catch_17
    :cond_17
    return-void
.end method

.method public onTabDataChangeEvent(Lcom/codemao/nemo/fragment/event/TabDataChangeEvent;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 p1, 0x0

    .line 472
    throw p1
.end method

.method public onUserInfoChanged()V
    .registers 1

    .line 165
    invoke-super {p0}, Lcom/giu/xzz/BaseFragment;->onUserInfoChanged()V

    .line 166
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->initView()V

    return-void
.end method

.method public onViewClicked()V
    .registers 5
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 587
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "主页面-点击扫码按钮"

    .line 590
    invoke-static {v1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 591
    sget-object v0, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;->INSTANCE:Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "android.permission.CAMERA"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "TYPE_OPEN_CAMERA"

    invoke-virtual {v0, v1, v3, v2}, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;->checkPermissionWithRxpermission(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;[Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 592
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2$4;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2$4;-><init>(Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;)V

    .line 593
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    .line 156
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 158
    iget-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->rlTop:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 159
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getStatusHeight()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 160
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->initView()V

    return-void
.end method

.method public setCurrentItem(I)V
    .registers 3

    .line 388
    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-nez v0, :cond_5

    return-void

    .line 389
    :cond_5
    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .registers 5

    .line 519
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_34

    .line 521
    iget-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz p1, :cond_23

    iget-object v1, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->fragments:Ljava/util/LinkedList;

    if-eqz v1, :cond_23

    .line 522
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    iget-object v1, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->fragments:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->trendsFragment:Lcom/codemao/nemo/fragment/TrendsFragment;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ne p1, v1, :cond_23

    .line 523
    iget-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->trendsFragment:Lcom/codemao/nemo/fragment/TrendsFragment;

    if-eqz p1, :cond_23

    .line 524
    invoke-virtual {p1}, Lcom/codemao/nemo/fragment/TrendsFragment;->timingRefresh()V

    .line 528
    :cond_23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/giu/xzz/utils/StatusBarUtil;->setStatusBarDark(Landroid/app/Activity;ZI)V

    .line 529
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result p1

    if-eqz p1, :cond_36

    .line 530
    iput-boolean v1, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->isVisable:Z

    goto :goto_36

    .line 533
    :cond_34
    iput-boolean v0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->isVisable:Z

    :cond_36
    :goto_36
    return-void
.end method
