.class public abstract Lcom/codemao/nemo/fragment/BaseDiscoverFragment;
.super Lcom/giu/xzz/LazyLoadFragment;
.source "BaseDiscoverFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/giu/xzz/LazyLoadFragment;"
    }
.end annotation


# instance fields
.field protected adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

.field protected datas:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected discoveryFragmentNetUtil:Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;

.field protected hasMore:Z

.field protected isLoadMore:Z

.field protected isLoading:Z

.field protected loadView:Lcom/codemao/nemo/view/LoadView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field protected offset:I

.field protected recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field protected refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public reportViewIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public scrollEnd:I

.field public scrollStart:I


# direct methods
.method public static synthetic $r8$lambda$rJBXGQlo-W3AdW0SNXapRv5VQ5Q(Lcom/codemao/nemo/fragment/BaseDiscoverFragment;)Lcom/codemao/nemo/view/footer/LoadMoreFooterInterface;
    .registers 1

    invoke-direct {p0}, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->lambda$initFooterView$0()Lcom/codemao/nemo/view/footer/LoadMoreFooterInterface;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Lcom/giu/xzz/LazyLoadFragment;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->offset:I

    .line 53
    iput-boolean v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->hasMore:Z

    .line 54
    iput-boolean v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->isLoadMore:Z

    .line 56
    iput-boolean v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->isLoading:Z

    const/4 v0, -0x1

    .line 58
    iput v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->scrollStart:I

    .line 59
    iput v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->scrollEnd:I

    return-void
.end method

.method private synthetic lambda$initFooterView$0()Lcom/codemao/nemo/view/footer/LoadMoreFooterInterface;
    .registers 4

    .line 80
    new-instance v0, Lcom/codemao/nemo/view/footer/LoadMoreFooter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/codemao/nemo/view/footer/LoadMoreFooter;-><init>(Landroid/content/Context;)V

    .line 81
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result v2

    if-eqz v2, :cond_17

    const v2, 0x7f070244

    goto :goto_1a

    :cond_17
    const v2, 0x7f07025b

    :goto_1a
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 84
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/footer/LoadMoreFooter;->setContentLayoutParams(I)V

    return-object v0
.end method


# virtual methods
.method protected afterLoading()V
    .registers 2

    .line 217
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    if-nez v0, :cond_5

    return-void

    .line 220
    :cond_5
    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->hide()V

    .line 221
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 222
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->loadMoreComplete()V

    return-void
.end method

.method protected abstract getData()V
.end method

.method public abstract getViewName()Ljava/lang/String;
.end method

.method protected initAdapter()V
    .registers 4

    .line 199
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    .line 200
    new-instance v0, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-direct {v0, v1, v2}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    return-void
.end method

.method protected abstract initDelegate()V
.end method

.method protected initFooterView()V
    .registers 3

    .line 79
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    new-instance v1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/BaseDiscoverFragment$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/fragment/BaseDiscoverFragment;)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setFootView(Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$FooterViewBuilder;)V

    return-void
.end method

.method protected initLayoutManager()V
    .registers 4

    .line 194
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    new-instance v1, Lcom/codemao/nemo/view/WrapLinearLayoutmanager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/codemao/nemo/view/WrapLinearLayoutmanager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method protected initRecyclerView()V
    .registers 6

    .line 101
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    iget-object v1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 102
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    new-instance v1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/BaseDiscoverFragment$1;-><init>(Lcom/codemao/nemo/fragment/BaseDiscoverFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 120
    invoke-virtual {p0}, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->initLayoutManager()V

    .line 121
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4e

    .line 122
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    .line 123
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    .line 124
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveDuration(J)V

    .line 125
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setRemoveDuration(J)V

    .line 126
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 128
    :cond_4e
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    new-instance v2, Lcom/codemao/nemo/fragment/BaseDiscoverFragment$2;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/fragment/BaseDiscoverFragment$2;-><init>(Lcom/codemao/nemo/fragment/BaseDiscoverFragment;)V

    invoke-virtual {v0, v2}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setLoadingListener(Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$LoadingListener;)V

    .line 140
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    new-instance v2, Lcom/codemao/nemo/fragment/BaseDiscoverFragment$3;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/fragment/BaseDiscoverFragment$3;-><init>(Lcom/codemao/nemo/fragment/BaseDiscoverFragment;)V

    invoke-virtual {v0, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setOnRefreshListener(Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 161
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableLoadMore(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 162
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setReboundDuration(I)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 163
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    new-instance v2, Lcom/codemao/nemo/fragment/BaseDiscoverFragment$4;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/fragment/BaseDiscoverFragment$4;-><init>(Lcom/codemao/nemo/fragment/BaseDiscoverFragment;)V

    const/4 v3, 0x1

    new-array v3, v3, [I

    const v4, 0x7f0a08bd

    aput v4, v3, v1

    invoke-virtual {v0, v2, v3}, Lcom/codemao/nemo/view/LoadView;->setOnClickListener(Landroid/view/View$OnClickListener;[I)V

    return-void
.end method

.method protected initView(Landroid/view/View;)V
    .registers 2

    .line 74
    invoke-virtual {p0}, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->initRecyclerView()V

    .line 75
    invoke-virtual {p0}, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->initFooterView()V

    return-void
.end method

.method protected isNeedLoading()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected loadMore()V
    .registers 2

    .line 179
    iget-boolean v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->isLoading:Z

    if-eqz v0, :cond_a

    .line 180
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->loadMoreComplete()V

    return-void

    .line 183
    :cond_a
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 184
    invoke-virtual {p0}, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->showError()V

    return-void

    .line 187
    :cond_18
    iget-boolean v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->hasMore:Z

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    .line 188
    iput-boolean v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->isLoadMore:Z

    .line 189
    invoke-virtual {p0}, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->getData()V

    :cond_22
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 64
    invoke-super {p0, p1}, Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->reportViewIds:Ljava/util/Set;

    .line 66
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 67
    new-instance p1, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;

    invoke-direct {p1, p0}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;-><init>(Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;)V

    iput-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->discoveryFragmentNetUtil:Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;

    .line 68
    invoke-virtual {p0}, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->initAdapter()V

    .line 69
    invoke-virtual {p0}, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->initDelegate()V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 96
    invoke-super {p0}, Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;->onDestroy()V

    .line 97
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public abstract onFragmentVisible()V
.end method

.method public onResume()V
    .registers 2

    .line 228
    invoke-super {p0}, Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;->onResume()V

    .line 229
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 230
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;

    invoke-virtual {v0}, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->isFront()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 231
    invoke-virtual {p0}, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->onFragmentVisible()V

    :cond_26
    return-void
.end method

.method public reportWorkIds(Lcom/codemao/nemo/event/ReportWorkExposureEvent;)V
    .registers 6
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 258
    invoke-virtual {p1}, Lcom/codemao/nemo/event/ReportWorkExposureEvent;->getPageName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    .line 260
    :try_start_5
    invoke-virtual {p0}, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->getViewName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 261
    iget-object v1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    .line 262
    move-object v2, v1

    check-cast v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    .line 263
    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    .line 264
    iget v3, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->scrollStart:I

    if-ltz v3, :cond_28

    if-le v3, v2, :cond_2a

    .line 265
    :cond_28
    iput v2, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->scrollStart:I

    .line 267
    :cond_2a
    iget v2, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->scrollEnd:I

    if-ge v2, v1, :cond_30

    .line 268
    iput v1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->scrollEnd:I

    .line 270
    :cond_30
    iget v1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->scrollStart:I

    iget v2, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->scrollEnd:I

    invoke-virtual {p0, v1, v2}, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->setViewWorkIds(II)Ljava/lang/String;

    move-result-object v1

    .line 271
    iput v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->scrollEnd:I

    .line 272
    iput v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->scrollStart:I

    .line 273
    invoke-static {p1, v1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendWorkExposure(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->reportViewIds:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_44} :catch_45

    goto :goto_4e

    .line 277
    :catch_45
    iput v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->scrollEnd:I

    .line 278
    iput v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->scrollStart:I

    .line 279
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->reportViewIds:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    :cond_4e
    :goto_4e
    return-void
.end method

.method public scroll(II)V
    .registers 3

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .registers 2

    .line 242
    invoke-super {p0, p1}, Lcom/giu/xzz/LazyLoadFragment;->setUserVisibleHint(Z)V

    if-eqz p1, :cond_28

    .line 243
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result p1

    if-eqz p1, :cond_28

    .line 244
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_28

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;

    if-eqz p1, :cond_28

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;

    invoke-virtual {p1}, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->isFront()Z

    move-result p1

    if-eqz p1, :cond_28

    .line 245
    invoke-virtual {p0}, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->onFragmentVisible()V

    :cond_28
    return-void
.end method

.method public setViewWorkIds(II)Ljava/lang/String;
    .registers 3

    const-string p1, ""

    return-object p1
.end method

.method protected showError()V
    .registers 2

    .line 205
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    if-nez v0, :cond_5

    return-void

    .line 208
    :cond_5
    invoke-virtual {p0}, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->afterLoading()V

    .line 209
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->showError()V

    return-void
.end method
