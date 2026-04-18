.class public abstract Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;
.super Lcom/giu/xzz/BaseFragment;
.source "BaseRecyclerViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/giu/xzz/BaseFragment;"
    }
.end annotation


# instance fields
.field protected adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

.field protected datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
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
.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Lcom/giu/xzz/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->offset:I

    .line 49
    iput-boolean v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->hasMore:Z

    .line 50
    iput-boolean v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->isLoadMore:Z

    .line 52
    iput-boolean v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->isLoading:Z

    const/4 v0, -0x1

    .line 53
    iput v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->scrollStart:I

    .line 54
    iput v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->scrollEnd:I

    return-void
.end method


# virtual methods
.method protected afterLoading()V
    .registers 2

    .line 193
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    if-nez v0, :cond_5

    return-void

    .line 196
    :cond_5
    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->hide()V

    .line 197
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 198
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->loadMoreComplete()V

    return-void
.end method

.method protected abstract getData()V
.end method

.method public getViewName()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected initAdapter()V
    .registers 4

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    .line 176
    new-instance v0, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    return-void
.end method

.method protected abstract initDelegate()V
.end method

.method protected initRecyclerView()V
    .registers 6

    .line 92
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    iget-object v1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 93
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    new-instance v1, Lcom/codemao/nemo/view/WrapLinearLayoutmanager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/codemao/nemo/view/WrapLinearLayoutmanager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 94
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    .line 95
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 97
    :cond_29
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    new-instance v2, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment$1;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment$1;-><init>(Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 119
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    new-instance v2, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment$2;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment$2;-><init>(Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;)V

    invoke-virtual {v0, v2}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setLoadingListener(Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$LoadingListener;)V

    .line 142
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    new-instance v2, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment$3;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment$3;-><init>(Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;)V

    invoke-virtual {v0, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setOnRefreshListener(Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 157
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableLoadMore(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 158
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setReboundDuration(I)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 159
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    new-instance v2, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment$4;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment$4;-><init>(Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;)V

    const/4 v3, 0x1

    new-array v3, v3, [I

    const v4, 0x7f0a08bd

    aput v4, v3, v1

    invoke-virtual {v0, v2, v3}, Lcom/codemao/nemo/view/LoadView;->setOnClickListener(Landroid/view/View$OnClickListener;[I)V

    return-void
.end method

.method protected isNeedLoading()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 59
    invoke-super {p0, p1}, Lcom/giu/xzz/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->reportViewIds:Ljava/util/Set;

    .line 61
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 62
    new-instance p1, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;

    invoke-direct {p1, p0}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;-><init>(Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;)V

    iput-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->discoveryFragmentNetUtil:Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;

    .line 63
    invoke-virtual {p0}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->initAdapter()V

    .line 64
    invoke-virtual {p0}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->initDelegate()V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 87
    invoke-super {p0}, Lcom/giu/xzz/BaseFragment;->onDestroy()V

    .line 88
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    .line 69
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->initRecyclerView()V

    .line 71
    invoke-virtual {p0}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->isNeedLoading()Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 72
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1a

    .line 73
    invoke-virtual {p0}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->showError()V

    return-void

    .line 76
    :cond_1a
    invoke-virtual {p0}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->getData()V

    :cond_1d
    return-void
.end method

.method public reportWorkIds(Lcom/codemao/nemo/event/ReportWorkExposureEvent;)V
    .registers 6
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 211
    invoke-virtual {p1}, Lcom/codemao/nemo/event/ReportWorkExposureEvent;->getPageName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    .line 213
    :try_start_5
    invoke-virtual {p0}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->getViewName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 214
    iget-object v1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    .line 215
    move-object v2, v1

    check-cast v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    .line 216
    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    .line 217
    iget v3, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->scrollStart:I

    if-ltz v3, :cond_28

    if-le v3, v2, :cond_2a

    .line 218
    :cond_28
    iput v2, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->scrollStart:I

    .line 220
    :cond_2a
    iget v2, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->scrollEnd:I

    if-ge v2, v1, :cond_30

    .line 221
    iput v1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->scrollEnd:I

    .line 223
    :cond_30
    iget v1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->scrollStart:I

    iget v2, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->scrollEnd:I

    invoke-virtual {p0, v1, v2}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->setViewWorkIds(II)Ljava/lang/String;

    move-result-object v1

    .line 224
    iput v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->scrollEnd:I

    .line 225
    iput v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->scrollStart:I

    .line 226
    invoke-static {p1, v1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendWorkExposure(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->reportViewIds:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_44} :catch_45

    goto :goto_4e

    .line 230
    :catch_45
    iput v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->scrollEnd:I

    .line 231
    iput v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->scrollStart:I

    .line 232
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->reportViewIds:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    :cond_4e
    :goto_4e
    return-void
.end method

.method public setViewWorkIds(II)Ljava/lang/String;
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method

.method protected showError()V
    .registers 2

    .line 181
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    if-nez v0, :cond_5

    return-void

    .line 184
    :cond_5
    invoke-virtual {p0}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->afterLoading()V

    .line 185
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->showError()V

    return-void
.end method
