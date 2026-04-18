.class public Lcom/codemao/nemo/activity/DiscoverySearchActivity;
.super Lcom/codemao/nemo/activity/BaseSearchActivity;
.source "DiscoverySearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/activity/DiscoverySearchActivity$SearchFragmentCallBack;
    }
.end annotation


# instance fields
.field customTabView:Lcom/codemao/nemo/view/CustomTabView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

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

.field public searchRecommendFragment:Lcom/codemao/nemo/fragment/SearchRecommendFragment;

.field private searchTitle:[Ljava/lang/String;

.field search_vp:Landroidx/viewpager/widget/ViewPager;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private workSearchFragment:Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Lcom/codemao/nemo/activity/BaseSearchActivity;-><init>()V

    const-string/jumbo v0, "作品"

    .line 42
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/activity/DiscoverySearchActivity;->searchTitle:[Ljava/lang/String;

    .line 110
    new-instance v0, Lcom/codemao/nemo/activity/DiscoverySearchActivity$3;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/DiscoverySearchActivity$3;-><init>(Lcom/codemao/nemo/activity/DiscoverySearchActivity;)V

    iput-object v0, p0, Lcom/codemao/nemo/activity/DiscoverySearchActivity;->mPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/activity/DiscoverySearchActivity;)Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/codemao/nemo/activity/DiscoverySearchActivity;->workSearchFragment:Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;

    return-object p0
.end method

.method private initFragment()V
    .registers 5

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/activity/DiscoverySearchActivity;->searchFragments:Ljava/util/List;

    .line 75
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseSearchActivity;->search_edit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/activity/DiscoverySearchActivity$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/DiscoverySearchActivity$1;-><init>(Lcom/codemao/nemo/activity/DiscoverySearchActivity;)V

    invoke-static {v0, v1}, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;->getInstance(Ljava/lang/String;Lcom/codemao/nemo/activity/DiscoverySearchActivity$SearchFragmentCallBack;)Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/activity/DiscoverySearchActivity;->workSearchFragment:Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;

    .line 87
    iget-object v1, p0, Lcom/codemao/nemo/activity/DiscoverySearchActivity;->searchFragments:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance v0, Lcom/giu/xzz/adapter/vp/BaseFragmentAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/nemo/activity/DiscoverySearchActivity;->searchFragments:Ljava/util/List;

    iget-object v3, p0, Lcom/codemao/nemo/activity/DiscoverySearchActivity;->searchTitle:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/giu/xzz/adapter/vp/BaseFragmentAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/codemao/nemo/activity/DiscoverySearchActivity;->searchAdapter:Lcom/giu/xzz/adapter/vp/BaseFragmentAdapter;

    .line 90
    iget-object v0, p0, Lcom/codemao/nemo/activity/DiscoverySearchActivity;->search_vp:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/codemao/nemo/activity/DiscoverySearchActivity;->mPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 91
    iget-object v0, p0, Lcom/codemao/nemo/activity/DiscoverySearchActivity;->search_vp:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/codemao/nemo/activity/DiscoverySearchActivity;->searchAdapter:Lcom/giu/xzz/adapter/vp/BaseFragmentAdapter;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 92
    iget-object v0, p0, Lcom/codemao/nemo/activity/DiscoverySearchActivity;->customTabView:Lcom/codemao/nemo/view/CustomTabView;

    iget-object v1, p0, Lcom/codemao/nemo/activity/DiscoverySearchActivity;->search_vp:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/CustomTabView;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 93
    iget-object v0, p0, Lcom/codemao/nemo/activity/DiscoverySearchActivity;->customTabView:Lcom/codemao/nemo/view/CustomTabView;

    new-instance v1, Lcom/codemao/nemo/activity/DiscoverySearchActivity$2;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/DiscoverySearchActivity$2;-><init>(Lcom/codemao/nemo/activity/DiscoverySearchActivity;)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/CustomTabView;->setOnTabClickListener(Lcom/codemao/nemo/view/CustomTabView$OnTabClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/codemao/nemo/activity/DiscoverySearchActivity;->customTabView:Lcom/codemao/nemo/view/CustomTabView;

    iget-object v1, p0, Lcom/codemao/nemo/activity/DiscoverySearchActivity;->searchTitle:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/CustomTabView;->setTabs(Ljava/util/List;)V

    .line 105
    iget-object v0, p0, Lcom/codemao/nemo/activity/DiscoverySearchActivity;->search_vp:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method


# virtual methods
.method protected contentViewId()I
    .registers 2

    .line 49
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f0d0054

    goto :goto_d

    :cond_a
    const v0, 0x7f0d0053

    :goto_d
    return v0
.end method

.method protected doCancel()V
    .registers 4

    .line 157
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/event/AnimEV;

    const-class v2, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/codemao/nemo/event/AnimEV;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 158
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/BaseSearchActivity;->finish()V

    return-void
.end method

.method protected doSearch(Ljava/lang/String;)V
    .registers 4

    .line 140
    iget-object v0, p0, Lcom/codemao/nemo/activity/DiscoverySearchActivity;->searchFragments:Ljava/util/List;

    if-nez v0, :cond_8

    .line 141
    invoke-direct {p0}, Lcom/codemao/nemo/activity/DiscoverySearchActivity;->initFragment()V

    goto :goto_17

    .line 143
    :cond_8
    iget-object v0, p0, Lcom/codemao/nemo/activity/DiscoverySearchActivity;->workSearchFragment:Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;

    iget-object v1, p0, Lcom/codemao/nemo/activity/BaseSearchActivity;->search_edit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;->setNewContent(Ljava/lang/String;)V

    .line 146
    :goto_17
    iget-object v0, p0, Lcom/codemao/nemo/activity/DiscoverySearchActivity;->searchRecommendFragment:Lcom/codemao/nemo/fragment/SearchRecommendFragment;

    if-eqz v0, :cond_1e

    .line 147
    invoke-virtual {v0, p1}, Lcom/codemao/nemo/fragment/SearchRecommendFragment;->addHistory(Ljava/lang/String;)V

    :cond_1e
    return-void
.end method

.method protected getHint()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "搜索作品"

    return-object v0
.end method

.method public initViewName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "搜索页-主页"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 59
    invoke-super {p0, p1}, Lcom/codemao/nemo/activity/BaseSearchActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    new-instance p1, Lcom/codemao/nemo/fragment/SearchRecommendFragment;

    invoke-direct {p1}, Lcom/codemao/nemo/fragment/SearchRecommendFragment;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/activity/DiscoverySearchActivity;->searchRecommendFragment:Lcom/codemao/nemo/fragment/SearchRecommendFragment;

    .line 62
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 63
    iget-object v0, p0, Lcom/codemao/nemo/activity/DiscoverySearchActivity;->searchRecommendFragment:Lcom/codemao/nemo/fragment/SearchRecommendFragment;

    const v1, 0x7f0a06fb

    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 64
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public searchTag(Ljava/lang/String;)V
    .registers 3

    .line 151
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseSearchActivity;->search_edit:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 152
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/BaseSearchActivity;->doSearch()V

    return-void
.end method

.method protected toolBarId()I
    .registers 2

    const v0, 0x7f0a06cb

    return v0
.end method
