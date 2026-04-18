.class public Lcom/codemao/nemo/activity/CloudSearchActivity;
.super Lcom/codemao/nemo/activity/BaseSearchActivity;
.source "CloudSearchActivity.java"

# interfaces
.implements Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$LoadingListener;


# instance fields
.field private currentPage:I

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

.field private removeHolder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

.field smartLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field smartRecyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Lcom/codemao/nemo/activity/BaseSearchActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/activity/CloudSearchActivity;)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/codemao/nemo/activity/CloudSearchActivity;->removeHolder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    return-object p0
.end method

.method static synthetic access$002(Lcom/codemao/nemo/activity/CloudSearchActivity;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/codemao/nemo/activity/CloudSearchActivity;->removeHolder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    return-object p1
.end method

.method static synthetic access$100(Lcom/codemao/nemo/activity/CloudSearchActivity;)Lcom/codemao/nemo/delegates/CloudItemDelegate;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/codemao/nemo/activity/CloudSearchActivity;->mDelegate:Lcom/codemao/nemo/delegates/CloudItemDelegate;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/nemo/activity/CloudSearchActivity;)V
    .registers 1

    .line 43
    invoke-direct {p0}, Lcom/codemao/nemo/activity/CloudSearchActivity;->initData()V

    return-void
.end method

.method static synthetic access$300(Lcom/codemao/nemo/activity/CloudSearchActivity;)Ljava/util/List;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/codemao/nemo/activity/CloudSearchActivity;->mDatas:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/codemao/nemo/activity/CloudSearchActivity;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/codemao/nemo/activity/CloudSearchActivity;->mAdapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    return-object p0
.end method

.method static synthetic access$502(Lcom/codemao/nemo/activity/CloudSearchActivity;I)I
    .registers 2

    .line 43
    iput p1, p0, Lcom/codemao/nemo/activity/CloudSearchActivity;->currentPage:I

    return p1
.end method

.method private init()V
    .registers 6

    .line 83
    invoke-static {}, Lcom/giu/xzz/http/RetrofitManager;->get()Lcom/giu/xzz/http/RetrofitManager;

    move-result-object v0

    const-class v1, Lcom/codemao/nemo/retrofit/api/CloudService;

    invoke-virtual {v0, v1}, Lcom/giu/xzz/http/RetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/retrofit/api/CloudService;

    iput-object v0, p0, Lcom/codemao/nemo/activity/CloudSearchActivity;->mCloudService:Lcom/codemao/nemo/retrofit/api/CloudService;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/activity/CloudSearchActivity;->mDatas:Ljava/util/List;

    .line 86
    new-instance v1, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-direct {v1, p0, v0}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/codemao/nemo/activity/CloudSearchActivity;->mAdapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 87
    new-instance v0, Lcom/codemao/nemo/delegates/CloudItemDelegate;

    invoke-direct {v0, p0, v1}, Lcom/codemao/nemo/delegates/CloudItemDelegate;-><init>(Landroid/content/Context;Lcom/giu/xzz/adapter/rv/RVBaseAdapter;)V

    iput-object v0, p0, Lcom/codemao/nemo/activity/CloudSearchActivity;->mDelegate:Lcom/codemao/nemo/delegates/CloudItemDelegate;

    .line 88
    iget-object v1, p0, Lcom/codemao/nemo/activity/CloudSearchActivity;->mAdapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v1, v0}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 89
    iget-object v0, p0, Lcom/codemao/nemo/activity/CloudSearchActivity;->smartRecyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    new-instance v1, Lcom/codemao/nemo/view/WrapLinearLayoutmanager;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/view/WrapLinearLayoutmanager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 90
    iget-object v0, p0, Lcom/codemao/nemo/activity/CloudSearchActivity;->smartRecyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    iget-object v1, p0, Lcom/codemao/nemo/activity/CloudSearchActivity;->mAdapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 91
    iget-object v0, p0, Lcom/codemao/nemo/activity/CloudSearchActivity;->smartRecyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 92
    iget-object v0, p0, Lcom/codemao/nemo/activity/CloudSearchActivity;->smartRecyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v0, p0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setLoadingListener(Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$LoadingListener;)V

    .line 93
    iget-object v0, p0, Lcom/codemao/nemo/activity/CloudSearchActivity;->smartRecyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    new-instance v1, Lcom/codemao/nemo/activity/CloudSearchActivity$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/CloudSearchActivity$1;-><init>(Lcom/codemao/nemo/activity/CloudSearchActivity;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 104
    iget-object v0, p0, Lcom/codemao/nemo/activity/CloudSearchActivity;->smartLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableLoadMore(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 105
    iget-object v0, p0, Lcom/codemao/nemo/activity/CloudSearchActivity;->smartLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableRefresh(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 107
    iget-object v0, p0, Lcom/codemao/nemo/activity/CloudSearchActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    new-instance v2, Lcom/codemao/nemo/activity/CloudSearchActivity$2;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/activity/CloudSearchActivity$2;-><init>(Lcom/codemao/nemo/activity/CloudSearchActivity;)V

    const/4 v3, 0x1

    new-array v3, v3, [I

    const v4, 0x7f0a0222

    aput v4, v3, v1

    invoke-virtual {v0, v2, v3}, Lcom/codemao/nemo/view/LoadView;->setOnClickListener(Landroid/view/View$OnClickListener;[I)V

    .line 114
    iget-object v0, p0, Lcom/codemao/nemo/activity/CloudSearchActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->hide()V

    return-void
.end method

.method private initData()V
    .registers 3

    .line 118
    iget-object v0, p0, Lcom/codemao/nemo/activity/CloudSearchActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->showLoading()V

    .line 119
    invoke-static {p0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 120
    iget-object v0, p0, Lcom/codemao/nemo/activity/CloudSearchActivity;->mDelegate:Lcom/codemao/nemo/delegates/CloudItemDelegate;

    iget-object v1, p0, Lcom/codemao/nemo/activity/BaseSearchActivity;->keyword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/delegates/CloudItemDelegate;->setKeyword(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 121
    invoke-direct {p0, v0}, Lcom/codemao/nemo/activity/CloudSearchActivity;->search(I)V

    goto :goto_1c

    .line 123
    :cond_17
    iget-object v0, p0, Lcom/codemao/nemo/activity/CloudSearchActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->showError()V

    :goto_1c
    return-void
.end method

.method private search(I)V
    .registers 6

    .line 138
    iget-object v0, p0, Lcom/codemao/nemo/activity/CloudSearchActivity;->mCloudService:Lcom/codemao/nemo/retrofit/api/CloudService;

    iget-object v1, p0, Lcom/codemao/nemo/activity/BaseSearchActivity;->keyword:Ljava/lang/String;

    const-string v2, "name"

    const/16 v3, 0xa

    invoke-interface {v0, v1, v2, p1, v3}, Lcom/codemao/nemo/retrofit/api/CloudService;->searchCloudWorksArray(Ljava/lang/String;Ljava/lang/String;II)Lio/reactivex/Observable;

    move-result-object v0

    .line 139
    invoke-static {}, Lcom/giu/xzz/http/transform/ThreadTransformer;->create()Lcom/giu/xzz/http/transform/ThreadTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 140
    invoke-virtual {p0}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/activity/CloudSearchActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/activity/CloudSearchActivity$3;-><init>(Lcom/codemao/nemo/activity/CloudSearchActivity;I)V

    .line 141
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method


# virtual methods
.method protected contentViewId()I
    .registers 2

    const v0, 0x7f0d0039

    return v0
.end method

.method protected doCancel()V
    .registers 4

    .line 234
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/event/AnimEV;

    const-class v2, Lcom/codemao/nemo/activity/CloudActivityV2;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/codemao/nemo/event/AnimEV;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 235
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/BaseSearchActivity;->finish()V

    return-void
.end method

.method protected doSearch(Ljava/lang/String;)V
    .registers 4

    .line 222
    iget-object v0, p0, Lcom/codemao/nemo/activity/CloudSearchActivity;->mDatas:Ljava/util/List;

    if-eqz v0, :cond_14

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_14

    .line 223
    iget-object v0, p0, Lcom/codemao/nemo/activity/CloudSearchActivity;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 224
    iget-object v0, p0, Lcom/codemao/nemo/activity/CloudSearchActivity;->mAdapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_14
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string/jumbo v1, "搜索页-云端-发起搜索"

    .line 226
    invoke-static {v1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 227
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setSearchName(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 229
    invoke-direct {p0}, Lcom/codemao/nemo/activity/CloudSearchActivity;->initData()V

    return-void
.end method

.method protected getHint()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "搜索页-云端"

    return-object v0
.end method

.method public initViewName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "搜索页-云端"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 73
    invoke-super {p0, p1}, Lcom/codemao/nemo/activity/BaseSearchActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-direct {p0}, Lcom/codemao/nemo/activity/CloudSearchActivity;->init()V

    return-void
.end method

.method public onLoadMore()V
    .registers 2

    .line 129
    iget v0, p0, Lcom/codemao/nemo/activity/CloudSearchActivity;->currentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/codemao/nemo/activity/CloudSearchActivity;->search(I)V

    return-void
.end method

.method public onViewHolderEV(Lcom/codemao/nemo/event/ViewHolderEV;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 203
    iget-object v0, p1, Lcom/codemao/nemo/event/ViewHolderEV;->clsName:Ljava/lang/String;

    const-class v1, Lcom/codemao/nemo/delegates/CloudItemDelegate;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 204
    iget-object v0, p1, Lcom/codemao/nemo/event/ViewHolderEV;->mHolder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    if-nez v0, :cond_16

    const/4 p1, 0x0

    .line 205
    iput-object p1, p0, Lcom/codemao/nemo/activity/CloudSearchActivity;->removeHolder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    goto :goto_23

    .line 207
    :cond_16
    iget-object v0, p0, Lcom/codemao/nemo/activity/CloudSearchActivity;->removeHolder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    if-eqz v0, :cond_1f

    .line 208
    iget-object v1, p0, Lcom/codemao/nemo/activity/CloudSearchActivity;->mDelegate:Lcom/codemao/nemo/delegates/CloudItemDelegate;

    invoke-virtual {v1, v0}, Lcom/codemao/nemo/delegates/CloudItemDelegate;->removeCloseAnim(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;)V

    .line 210
    :cond_1f
    iget-object p1, p1, Lcom/codemao/nemo/event/ViewHolderEV;->mHolder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    iput-object p1, p0, Lcom/codemao/nemo/activity/CloudSearchActivity;->removeHolder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    :cond_23
    :goto_23
    return-void
.end method

.method protected toolBarId()I
    .registers 2

    const v0, 0x7f0a06cb

    return v0
.end method
