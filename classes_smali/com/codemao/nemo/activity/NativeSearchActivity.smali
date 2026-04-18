.class public Lcom/codemao/nemo/activity/NativeSearchActivity;
.super Lcom/codemao/nemo/activity/BaseSearchActivity;
.source "NativeSearchActivity.java"


# instance fields
.field private createFragment:Lcom/codemao/nemo/fragment/CreateFragment;

.field customTabView:Lcom/codemao/nemo/view/CustomTabView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private publishSearchFragment:Lcom/codemao/nemo/fragment/PublishSearchFragment;

.field private searchAdapter:Lcom/giu/xzz/adapter/vp/BaseFragmentAdapter;

.field private searchFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private searchTitle:[Ljava/lang/String;

.field search_vp:Landroidx/viewpager/widget/ViewPager;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 29
    invoke-direct {p0}, Lcom/codemao/nemo/activity/BaseSearchActivity;-><init>()V

    const-string/jumbo v0, "草稿箱"

    const-string/jumbo v1, "已发布"

    .line 36
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/activity/NativeSearchActivity;->searchTitle:[Ljava/lang/String;

    .line 88
    new-instance v0, Lcom/codemao/nemo/activity/NativeSearchActivity$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/NativeSearchActivity$2;-><init>(Lcom/codemao/nemo/activity/NativeSearchActivity;)V

    iput-object v0, p0, Lcom/codemao/nemo/activity/NativeSearchActivity;->mPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/activity/NativeSearchActivity;)Lcom/codemao/nemo/fragment/CreateFragment;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/codemao/nemo/activity/NativeSearchActivity;->createFragment:Lcom/codemao/nemo/fragment/CreateFragment;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/activity/NativeSearchActivity;)Lcom/codemao/nemo/fragment/PublishSearchFragment;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/codemao/nemo/activity/NativeSearchActivity;->publishSearchFragment:Lcom/codemao/nemo/fragment/PublishSearchFragment;

    return-object p0
.end method

.method private init()V
    .registers 5

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/activity/NativeSearchActivity;->searchFragments:Ljava/util/List;

    const/4 v0, 0x1

    .line 65
    invoke-static {v0}, Lcom/codemao/nemo/fragment/CreateFragment;->newInstance(Z)Lcom/codemao/nemo/fragment/CreateFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/activity/NativeSearchActivity;->createFragment:Lcom/codemao/nemo/fragment/CreateFragment;

    .line 66
    iget-object v1, p0, Lcom/codemao/nemo/activity/NativeSearchActivity;->searchFragments:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-static {}, Lcom/codemao/nemo/fragment/PublishSearchFragment;->newInstance()Lcom/codemao/nemo/fragment/PublishSearchFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/activity/NativeSearchActivity;->publishSearchFragment:Lcom/codemao/nemo/fragment/PublishSearchFragment;

    .line 68
    iget-object v1, p0, Lcom/codemao/nemo/activity/NativeSearchActivity;->searchFragments:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v0, Lcom/giu/xzz/adapter/vp/BaseFragmentAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/nemo/activity/NativeSearchActivity;->searchFragments:Ljava/util/List;

    iget-object v3, p0, Lcom/codemao/nemo/activity/NativeSearchActivity;->searchTitle:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/giu/xzz/adapter/vp/BaseFragmentAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/codemao/nemo/activity/NativeSearchActivity;->searchAdapter:Lcom/giu/xzz/adapter/vp/BaseFragmentAdapter;

    .line 70
    iget-object v0, p0, Lcom/codemao/nemo/activity/NativeSearchActivity;->search_vp:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/codemao/nemo/activity/NativeSearchActivity;->mPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 71
    iget-object v0, p0, Lcom/codemao/nemo/activity/NativeSearchActivity;->search_vp:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/codemao/nemo/activity/NativeSearchActivity;->searchAdapter:Lcom/giu/xzz/adapter/vp/BaseFragmentAdapter;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 72
    iget-object v0, p0, Lcom/codemao/nemo/activity/NativeSearchActivity;->customTabView:Lcom/codemao/nemo/view/CustomTabView;

    iget-object v1, p0, Lcom/codemao/nemo/activity/NativeSearchActivity;->search_vp:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/CustomTabView;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 73
    iget-object v0, p0, Lcom/codemao/nemo/activity/NativeSearchActivity;->customTabView:Lcom/codemao/nemo/view/CustomTabView;

    new-instance v1, Lcom/codemao/nemo/activity/NativeSearchActivity$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/NativeSearchActivity$1;-><init>(Lcom/codemao/nemo/activity/NativeSearchActivity;)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/CustomTabView;->setOnTabClickListener(Lcom/codemao/nemo/view/CustomTabView$OnTabClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/codemao/nemo/activity/NativeSearchActivity;->customTabView:Lcom/codemao/nemo/view/CustomTabView;

    iget-object v1, p0, Lcom/codemao/nemo/activity/NativeSearchActivity;->searchTitle:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/CustomTabView;->setTabs(Ljava/util/List;)V

    .line 85
    iget-object v0, p0, Lcom/codemao/nemo/activity/NativeSearchActivity;->search_vp:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method


# virtual methods
.method protected contentViewId()I
    .registers 2

    const v0, 0x7f0d0053

    return v0
.end method

.method protected doCancel()V
    .registers 4

    .line 118
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/event/AnimEV;

    const-class v2, Lcom/codemao/nemo/fragment/MineFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/codemao/nemo/event/AnimEV;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 119
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/event/RefreshEvent;

    invoke-direct {v1}, Lcom/codemao/nemo/event/RefreshEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 120
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/BaseSearchActivity;->finish()V

    return-void
.end method

.method protected doSearch(Ljava/lang/String;)V
    .registers 4

    .line 113
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/event/SearchEvent;

    invoke-direct {v1, p1}, Lcom/codemao/nemo/event/SearchEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method protected getHint()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "搜索页-我的"

    return-object v0
.end method

.method public initViewName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "搜索页-我的"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 54
    invoke-super {p0, p1}, Lcom/codemao/nemo/activity/BaseSearchActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-direct {p0}, Lcom/codemao/nemo/activity/NativeSearchActivity;->init()V

    return-void
.end method

.method protected toolBarId()I
    .registers 2

    const v0, 0x7f0a06cb

    return v0
.end method
