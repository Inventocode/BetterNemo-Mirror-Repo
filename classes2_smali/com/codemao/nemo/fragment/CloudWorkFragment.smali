.class public Lcom/codemao/nemo/fragment/CloudWorkFragment;
.super Lcom/giu/xzz/BaseFragment;
.source "CloudWorkFragment.java"

# interfaces
.implements Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$LoadingListener;
.implements Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;


# instance fields
.field private mAdapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/giu/xzz/adapter/rv/RVBaseAdapter<",
            "Lcom/codemao/nemo/bean/CloudData;",
            ">;"
        }
    .end annotation
.end field

.field private mCloudService:Lcom/codemao/nemo/retrofit/api/CloudService;

.field private mDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/CloudData;",
            ">;"
        }
    .end annotation
.end field

.field private mDelegate:Lcom/codemao/nemo/delegates/CloudItemDelegate;

.field mLoadView:Lcom/codemao/nemo/view/LoadView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private offset:I

.field private removeHolder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

.field smartLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field smartRecyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private type:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Lcom/giu/xzz/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment;->offset:I

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/fragment/CloudWorkFragment;)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment;->removeHolder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    return-object p0
.end method

.method static synthetic access$002(Lcom/codemao/nemo/fragment/CloudWorkFragment;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment;->removeHolder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    return-object p1
.end method

.method static synthetic access$100(Lcom/codemao/nemo/fragment/CloudWorkFragment;)Lcom/codemao/nemo/delegates/CloudItemDelegate;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment;->mDelegate:Lcom/codemao/nemo/delegates/CloudItemDelegate;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/nemo/fragment/CloudWorkFragment;)V
    .registers 1

    .line 44
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/CloudWorkFragment;->initData()V

    return-void
.end method

.method static synthetic access$300(Lcom/codemao/nemo/fragment/CloudWorkFragment;)Ljava/util/List;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment;->mDatas:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/codemao/nemo/fragment/CloudWorkFragment;)I
    .registers 1

    .line 44
    iget p0, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment;->offset:I

    return p0
.end method

.method static synthetic access$412(Lcom/codemao/nemo/fragment/CloudWorkFragment;I)I
    .registers 3

    .line 44
    iget v0, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment;->offset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment;->offset:I

    return v0
.end method

.method static synthetic access$500(Lcom/codemao/nemo/fragment/CloudWorkFragment;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment;->mAdapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    return-object p0
.end method

.method public static getInstance(I)Lcom/codemao/nemo/fragment/CloudWorkFragment;
    .registers 4

    .line 69
    new-instance v0, Lcom/codemao/nemo/fragment/CloudWorkFragment;

    invoke-direct {v0}, Lcom/codemao/nemo/fragment/CloudWorkFragment;-><init>()V

    .line 70
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "type"

    .line 71
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 72
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private init()V
    .registers 6

    .line 101
    invoke-static {}, Lcom/giu/xzz/http/RetrofitManager;->get()Lcom/giu/xzz/http/RetrofitManager;

    move-result-object v0

    const-class v1, Lcom/codemao/nemo/retrofit/api/CloudService;

    invoke-virtual {v0, v1}, Lcom/giu/xzz/http/RetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/retrofit/api/CloudService;

    iput-object v0, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment;->mCloudService:Lcom/codemao/nemo/retrofit/api/CloudService;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment;->mDatas:Ljava/util/List;

    .line 104
    new-instance v0, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment;->mDatas:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment;->mAdapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 105
    new-instance v0, Lcom/codemao/nemo/delegates/CloudItemDelegate;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment;->mAdapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-direct {v0, v1, v2}, Lcom/codemao/nemo/delegates/CloudItemDelegate;-><init>(Landroid/content/Context;Lcom/giu/xzz/adapter/rv/RVBaseAdapter;)V

    iput-object v0, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment;->mDelegate:Lcom/codemao/nemo/delegates/CloudItemDelegate;

    .line 106
    iget-object v1, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment;->mAdapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v1, v0}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 107
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment;->smartRecyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    new-instance v1, Lcom/codemao/nemo/view/WrapLinearLayoutmanager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/codemao/nemo/view/WrapLinearLayoutmanager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 108
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment;->smartRecyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    iget-object v1, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment;->mAdapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 109
    new-instance v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    const-wide/16 v1, 0x1f4

    .line 110
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setRemoveDuration(J)V

    .line 111
    iget-object v1, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment;->smartRecyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 112
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment;->smartRecyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v0, p0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setLoadingListener(Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$LoadingListener;)V

    .line 113
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment;->smartRecyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    new-instance v1, Lcom/codemao/nemo/fragment/CloudWorkFragment$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/CloudWorkFragment$1;-><init>(Lcom/codemao/nemo/fragment/CloudWorkFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 124
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment;->smartLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setOnRefreshListener(Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 125
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment;->smartLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableLoadMore(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 126
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment;->smartLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setReboundDuration(I)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 128
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    new-instance v2, Lcom/codemao/nemo/fragment/CloudWorkFragment$2;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/fragment/CloudWorkFragment$2;-><init>(Lcom/codemao/nemo/fragment/CloudWorkFragment;)V

    const/4 v3, 0x1

    new-array v3, v3, [I

    const v4, 0x7f0a0222

    aput v4, v3, v1

    invoke-virtual {v0, v2, v3}, Lcom/codemao/nemo/view/LoadView;->setOnClickListener(Landroid/view/View$OnClickListener;[I)V

    .line 136
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/CloudWorkFragment;->initData()V

    return-void
.end method

.method private initData()V
    .registers 2

    .line 140
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 141
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->showLoading()V

    .line 142
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment;->smartLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/fragment/CloudWorkFragment;->onRefresh(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V

    goto :goto_1a

    .line 144
    :cond_15
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->showError()V

    :goto_1a
    return-void
.end method

.method private onLoadWorksData()V
    .registers 5

    .line 149
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment;->mCloudService:Lcom/codemao/nemo/retrofit/api/CloudService;

    iget v1, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment;->type:I

    iget v2, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment;->offset:I

    const/16 v3, 0xa

    invoke-interface {v0, v1, v2, v3}, Lcom/codemao/nemo/retrofit/api/CloudService;->getCloudWorksArray(III)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/giu/xzz/http/transform/ThreadTransformer;

    invoke-direct {v1}, Lcom/giu/xzz/http/transform/ThreadTransformer;-><init>()V

    .line 150
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 151
    invoke-virtual {p0}, Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/fragment/CloudWorkFragment$3;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/CloudWorkFragment$3;-><init>(Lcom/codemao/nemo/fragment/CloudWorkFragment;)V

    .line 152
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method


# virtual methods
.method protected contentViewId()I
    .registers 2

    const v0, 0x7f0d0146

    return v0
.end method

.method public onCloudDetEV(Lcom/codemao/nemo/event/CloudDetEV;)V
    .registers 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 214
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment;->smartRecyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    new-instance v0, Lcom/codemao/nemo/fragment/CloudWorkFragment$4;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/fragment/CloudWorkFragment$4;-><init>(Lcom/codemao/nemo/fragment/CloudWorkFragment;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 78
    invoke-super {p0, p1}, Lcom/giu/xzz/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 96
    invoke-super {p0}, Lcom/giu/xzz/BaseFragment;->onDestroy()V

    .line 97
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onDownloadBcmResult(Lcom/codemao/creativecenter/utils/bcm/events/DownloadBcmResult;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 237
    iget v0, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment;->type:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "NEMO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget v0, p1, Lcom/codemao/creativecenter/utils/bcm/events/DownloadBcmResult;->status:I

    if-eqz v0, :cond_26

    .line 238
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment;->mDatas:Ljava/util/List;

    iget v1, p1, Lcom/codemao/creativecenter/utils/bcm/events/DownloadBcmResult;->position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/CloudData;

    const/4 v1, 0x2

    iput v1, v0, Lcom/codemao/nemo/bean/CloudData;->downloadStatus:I

    .line 239
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment;->mAdapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    iget p1, p1, Lcom/codemao/creativecenter/utils/bcm/events/DownloadBcmResult;->position:I

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_26
    return-void
.end method

.method public onLoadMore()V
    .registers 2

    .line 203
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment;->smartLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 204
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/CloudWorkFragment;->onLoadWorksData()V

    return-void
.end method

.method public onRefresh(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .registers 2

    .line 230
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment;->smartRecyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->loadMoreComplete()V

    const/4 p1, 0x0

    .line 231
    iput p1, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment;->offset:I

    .line 232
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/CloudWorkFragment;->onLoadWorksData()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    .line 84
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_12

    const-string p2, "type"

    .line 87
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment;->type:I

    goto :goto_16

    :cond_12
    const/16 p1, 0x8

    .line 89
    iput p1, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment;->type:I

    .line 91
    :goto_16
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/CloudWorkFragment;->init()V

    return-void
.end method

.method public onViewHolderEV(Lcom/codemao/nemo/event/ViewHolderEV;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 245
    iget-object v0, p1, Lcom/codemao/nemo/event/ViewHolderEV;->clsName:Ljava/lang/String;

    const-class v1, Lcom/codemao/nemo/delegates/CloudItemDelegate;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 246
    iget-object v0, p1, Lcom/codemao/nemo/event/ViewHolderEV;->mHolder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    if-nez v0, :cond_16

    const/4 p1, 0x0

    .line 247
    iput-object p1, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment;->removeHolder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    goto :goto_23

    .line 249
    :cond_16
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment;->removeHolder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    if-eqz v0, :cond_1f

    .line 250
    iget-object v1, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment;->mDelegate:Lcom/codemao/nemo/delegates/CloudItemDelegate;

    invoke-virtual {v1, v0}, Lcom/codemao/nemo/delegates/CloudItemDelegate;->removeCloseAnim(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;)V

    .line 252
    :cond_1f
    iget-object p1, p1, Lcom/codemao/nemo/event/ViewHolderEV;->mHolder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    iput-object p1, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment;->removeHolder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    :cond_23
    :goto_23
    return-void
.end method
