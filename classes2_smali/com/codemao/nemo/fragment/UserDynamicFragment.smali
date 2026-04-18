.class public Lcom/codemao/nemo/fragment/UserDynamicFragment;
.super Lcom/giu/xzz/BaseFragment;
.source "UserDynamicFragment.java"


# instance fields
.field adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

.field private datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/UserDynamicInfo;",
            ">;"
        }
    .end annotation
.end field

.field private discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;

.field private hasMore:Z

.field private isLoadMore:Z

.field private isLoading:Z

.field mLoadView:Lcom/codemao/nemo/view/LoadView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/TypeItemData;",
            ">;"
        }
    .end annotation
.end field

.field private offset:I

.field recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private showMoreDialog:Lcom/codemao/nemo/view/SortDialog;

.field private userId:J

.field private userOptionDelegate:Lcom/codemao/nemo/adapter/UserDynamicUserOptionDelegate;

.field private workOptionDelegate:Lcom/codemao/nemo/adapter/UserDynamicWorkOptionDelegate;

.field private workPublishDelegate:Lcom/codemao/nemo/adapter/UserDynamicWorkPublishDelegate;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Lcom/giu/xzz/BaseFragment;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->datas:Ljava/util/List;

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->offset:I

    .line 64
    iput-boolean v0, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->hasMore:Z

    .line 65
    iput-boolean v0, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->isLoadMore:Z

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/fragment/UserDynamicFragment;)Ljava/util/List;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->mores:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/fragment/UserDynamicFragment;)Lcom/codemao/nemo/view/SortDialog;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->showMoreDialog:Lcom/codemao/nemo/view/SortDialog;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/codemao/nemo/fragment/UserDynamicFragment;Z)Z
    .registers 2

    .line 53
    iput-boolean p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->isLoading:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/codemao/nemo/fragment/UserDynamicFragment;)V
    .registers 1

    .line 53
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/UserDynamicFragment;->setViewAfterLoading()V

    return-void
.end method

.method static synthetic access$200(Lcom/codemao/nemo/fragment/UserDynamicFragment;I)V
    .registers 2

    .line 53
    invoke-direct {p0, p1}, Lcom/codemao/nemo/fragment/UserDynamicFragment;->deleteDynamic(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/codemao/nemo/fragment/UserDynamicFragment;)Ljava/util/List;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->datas:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/codemao/nemo/fragment/UserDynamicFragment;)Z
    .registers 1

    .line 53
    iget-boolean p0, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->hasMore:Z

    return p0
.end method

.method static synthetic access$500(Lcom/codemao/nemo/fragment/UserDynamicFragment;Landroid/view/View;I)V
    .registers 3

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/fragment/UserDynamicFragment;->showMoreDialog(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$602(Lcom/codemao/nemo/fragment/UserDynamicFragment;I)I
    .registers 2

    .line 53
    iput p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->offset:I

    return p1
.end method

.method static synthetic access$700(Lcom/codemao/nemo/fragment/UserDynamicFragment;)V
    .registers 1

    .line 53
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/UserDynamicFragment;->getUserDynamic()V

    return-void
.end method

.method static synthetic access$802(Lcom/codemao/nemo/fragment/UserDynamicFragment;Z)Z
    .registers 2

    .line 53
    iput-boolean p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->isLoadMore:Z

    return p1
.end method

.method static synthetic access$900(Lcom/codemao/nemo/fragment/UserDynamicFragment;Lcom/codemao/nemo/bean/UserDynamics;)V
    .registers 2

    .line 53
    invoke-direct {p0, p1}, Lcom/codemao/nemo/fragment/UserDynamicFragment;->setListData(Lcom/codemao/nemo/bean/UserDynamics;)V

    return-void
.end method

.method private deleteDynamic(I)V
    .registers 6

    .line 120
    iget-object v0, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->datas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 123
    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 124
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 127
    :cond_1b
    iget-object v0, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;

    iget-object v1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->datas:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/bean/UserDynamicInfo;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/UserDynamicInfo;->getId()J

    move-result-wide v1

    new-instance v3, Lcom/codemao/nemo/fragment/UserDynamicFragment$2;

    invoke-direct {v3, p0, p1}, Lcom/codemao/nemo/fragment/UserDynamicFragment$2;-><init>(Lcom/codemao/nemo/fragment/UserDynamicFragment;I)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->deleteDynamic(JLcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method

.method private getJsonString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 419
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 420
    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getUserDynamic()V
    .registers 6

    .line 252
    iget-object v0, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;

    iget-wide v1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->userId:J

    new-instance v3, Lcom/codemao/nemo/fragment/UserDynamicFragment$8;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/fragment/UserDynamicFragment$8;-><init>(Lcom/codemao/nemo/fragment/UserDynamicFragment;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->getUserDynamic(JILcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method

.method private getWorkInfo(Ljava/lang/String;)Lcom/codemao/nemo/bean/DynamicWorkInfo;
    .registers 4

    .line 414
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 415
    const-class v1, Lcom/codemao/nemo/bean/DynamicWorkInfo;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/DynamicWorkInfo;

    return-object p1
.end method

.method private setListData(Lcom/codemao/nemo/bean/UserDynamics;)V
    .registers 8

    .line 289
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/UserDynamicFragment;->setViewAfterLoading()V

    const/4 v0, 0x1

    if-nez p1, :cond_1f

    .line 291
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->datas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_14

    .line 292
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showEmpty()V

    goto :goto_19

    .line 294
    :cond_14
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->hide()V

    .line 296
    :goto_19
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    return-void

    .line 301
    :cond_1f
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserDynamics;->getItems()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_98

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserDynamics;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_31

    goto :goto_98

    .line 311
    :cond_31
    iget-object v1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->datas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 312
    iget v3, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->offset:I

    if-nez v3, :cond_41

    .line 314
    iget-object v1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->datas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    .line 316
    :cond_41
    iget-object v3, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->datas:Ljava/util/List;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserDynamics;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 317
    iget-object v3, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 318
    iget-boolean v3, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->isLoadMore:Z

    if-eqz v3, :cond_61

    .line 319
    iget-object v3, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserDynamics;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v1, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_66

    .line 321
    :cond_61
    iget-object v1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 323
    :goto_66
    iget-object v1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    new-instance v3, Lcom/codemao/nemo/fragment/UserDynamicFragment$9;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/fragment/UserDynamicFragment$9;-><init>(Lcom/codemao/nemo/fragment/UserDynamicFragment;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v3, v4, v5}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 332
    iget v1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->offset:I

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserDynamics;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->offset:I

    .line 333
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserDynamics;->getTotal()I

    move-result p1

    if-ge v1, p1, :cond_87

    const/4 p1, 0x1

    goto :goto_88

    :cond_87
    const/4 p1, 0x0

    :goto_88
    iput-boolean p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->hasMore:Z

    if-nez p1, :cond_92

    .line 335
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    goto :goto_97

    .line 337
    :cond_92
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1, v2}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    :goto_97
    return-void

    .line 302
    :cond_98
    :goto_98
    iput-boolean v2, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->hasMore:Z

    .line 303
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->datas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_a8

    .line 304
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showEmpty()V

    goto :goto_ad

    .line 306
    :cond_a8
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->hide()V

    .line 308
    :goto_ad
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    return-void
.end method

.method private setViewAfterLoading()V
    .registers 2

    .line 342
    iget-object v0, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->loadMoreComplete()V

    .line 343
    iget-object v0, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 344
    iget-object v0, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishLoadMore()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    return-void
.end method

.method private showMoreDialog(Landroid/view/View;I)V
    .registers 7

    .line 101
    iget-object v0, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->showMoreDialog:Lcom/codemao/nemo/view/SortDialog;

    if-nez v0, :cond_29

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->mores:Ljava/util/List;

    .line 103
    new-instance v1, Lcom/codemao/nemo/bean/TypeItemData;

    const/4 v2, 0x0

    const-string v3, "删除"

    invoke-direct {v1, v2, v3}, Lcom/codemao/nemo/bean/TypeItemData;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance v0, Lcom/codemao/nemo/view/SortDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->mores:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/codemao/nemo/view/SortDialog;-><init>(Landroid/content/Context;Ljava/util/List;)V

    const/16 v1, 0x35

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/SortDialog;->setGravity(I)Lcom/codemao/nemo/view/SortDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->showMoreDialog:Lcom/codemao/nemo/view/SortDialog;

    .line 106
    :cond_29
    iget-object v0, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->showMoreDialog:Lcom/codemao/nemo/view/SortDialog;

    new-instance v1, Lcom/codemao/nemo/fragment/UserDynamicFragment$1;

    invoke-direct {v1, p0, p2}, Lcom/codemao/nemo/fragment/UserDynamicFragment$1;-><init>(Lcom/codemao/nemo/fragment/UserDynamicFragment;I)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/SortDialog;->setOrderChooseListener(Lcom/codemao/nemo/listener/OnItemClickListener;)Lcom/codemao/nemo/view/SortDialog;

    move-result-object p2

    .line 116
    invoke-virtual {p2, p1}, Lcom/codemao/nemo/view/SortDialog;->showFitPostion(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected contentViewId()I
    .registers 2

    const v0, 0x7f0d016f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 86
    invoke-super {p0, p1}, Lcom/giu/xzz/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 87
    new-instance p1, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;

    invoke-direct {p1, p0}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;-><init>(Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;)V

    iput-object p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;

    .line 88
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 90
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_25

    .line 91
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-wide/16 v0, -0x1

    const-string v2, "userId"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->userId:J

    :cond_25
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 349
    invoke-super {p0}, Lcom/giu/xzz/BaseFragment;->onDestroy()V

    .line 350
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 351
    iget-object v0, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;

    if-eqz v0, :cond_11

    .line 352
    invoke-virtual {v0}, Lcom/codemao/nemo/http/NetUtils;->dispose()V

    :cond_11
    return-void
.end method

.method public onUpdateWorkInfoEvent(Lcom/codemao/nemo/event/UpdateWorkInfoEvents;)V
    .registers 10
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 359
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getWorkId()J

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 362
    :goto_6
    iget-object v4, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->datas:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, -0x1

    if-ge v3, v4, :cond_41

    .line 363
    iget-object v4, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->datas:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/codemao/nemo/bean/UserDynamicInfo;

    invoke-virtual {v4}, Lcom/codemao/nemo/bean/UserDynamicInfo;->getDynamic_type()Ljava/lang/String;

    move-result-object v4

    const-string v6, "ATTENTION_USER"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3e

    .line 364
    iget-object v2, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->datas:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/nemo/bean/UserDynamicInfo;

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/UserDynamicInfo;->getDetails_json()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/codemao/nemo/fragment/UserDynamicFragment;->getWorkInfo(Ljava/lang/String;)Lcom/codemao/nemo/bean/DynamicWorkInfo;

    move-result-object v2

    if-eqz v2, :cond_3e

    .line 365
    invoke-virtual {v2}, Lcom/codemao/nemo/bean/DynamicWorkInfo;->getWork_id()J

    move-result-wide v6

    cmp-long v4, v6, v0

    if-nez v4, :cond_3e

    goto :goto_42

    :cond_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_41
    const/4 v3, -0x1

    :goto_42
    if-gez v3, :cond_45

    return-void

    .line 374
    :cond_45
    iget-object v0, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->datas:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/UserDynamicInfo;

    .line 375
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getType()I

    move-result v1

    if-eqz v1, :cond_d9

    const/4 v4, 0x2

    if-eq v1, v4, :cond_c5

    const/4 v4, 0x3

    if-eq v1, v4, :cond_b1

    const/4 v4, 0x5

    if-eq v1, v4, :cond_92

    const/4 v4, 0x6

    if-eq v1, v4, :cond_80

    const/4 v4, 0x7

    if-eq v1, v4, :cond_64

    goto/16 :goto_ec

    .line 397
    :cond_64
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->isPraise()Z

    move-result p1

    .line 398
    invoke-virtual {v2}, Lcom/codemao/nemo/bean/DynamicWorkInfo;->getLike_times()I

    move-result v1

    if-eqz p1, :cond_6f

    const/4 v5, 0x1

    :cond_6f
    add-int/2addr v1, v5

    invoke-virtual {v2, v1}, Lcom/codemao/nemo/bean/DynamicWorkInfo;->setLike_times(I)V

    .line 399
    invoke-direct {p0, v2}, Lcom/codemao/nemo/fragment/UserDynamicFragment;->getJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/bean/UserDynamicInfo;->setDetails_json(Ljava/lang/String;)V

    .line 400
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_ec

    :cond_80
    const-wide/16 v4, 0x0

    .line 392
    invoke-virtual {v2, v4, v5}, Lcom/codemao/nemo/bean/DynamicWorkInfo;->setPublish_at(J)V

    .line 393
    invoke-direct {p0, v2}, Lcom/codemao/nemo/fragment/UserDynamicFragment;->getJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/bean/UserDynamicInfo;->setDetails_json(Ljava/lang/String;)V

    .line 394
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_ec

    .line 403
    :cond_92
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getWorkDetailInfo()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    move-result-object p1

    .line 404
    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getWork_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/codemao/nemo/bean/DynamicWorkInfo;->setWork_name(Ljava/lang/String;)V

    .line 405
    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getPreview()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/codemao/nemo/bean/DynamicWorkInfo;->setPreview(Ljava/lang/String;)V

    .line 406
    invoke-direct {p0, v2}, Lcom/codemao/nemo/fragment/UserDynamicFragment;->getJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/bean/UserDynamicInfo;->setDetails_json(Ljava/lang/String;)V

    .line 407
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_ec

    .line 387
    :cond_b1
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getViewTime()I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/codemao/nemo/bean/DynamicWorkInfo;->setView_times(I)V

    .line 388
    invoke-direct {p0, v2}, Lcom/codemao/nemo/fragment/UserDynamicFragment;->getJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/bean/UserDynamicInfo;->setDetails_json(Ljava/lang/String;)V

    .line 389
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_ec

    .line 382
    :cond_c5
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getCollecTime()I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/codemao/nemo/bean/DynamicWorkInfo;->setCollect_times(I)V

    .line 383
    invoke-direct {p0, v2}, Lcom/codemao/nemo/fragment/UserDynamicFragment;->getJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/bean/UserDynamicInfo;->setDetails_json(Ljava/lang/String;)V

    .line 384
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_ec

    .line 377
    :cond_d9
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getNewWorkName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/codemao/nemo/bean/DynamicWorkInfo;->setWork_name(Ljava/lang/String;)V

    .line 378
    invoke-direct {p0, v2}, Lcom/codemao/nemo/fragment/UserDynamicFragment;->getJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/bean/UserDynamicInfo;->setDetails_json(Ljava/lang/String;)V

    .line 379
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :goto_ec
    return-void
.end method

.method public onUserInfoUpdate(Lcom/codemao/nemo/event/UpdateUserInfoEvents;)V
    .registers 7
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 425
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object v0

    if-eqz v0, :cond_63

    iget-wide v0, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->userId:J

    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object v2

    invoke-virtual {v2}, Lcn/codemao/android/account/bean/UserInfoVO;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_63

    .line 426
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateUserInfoEvents;->getType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_44

    const/4 v2, 0x3

    if-eq v0, v2, :cond_24

    goto :goto_63

    .line 428
    :cond_24
    :goto_24
    iget-object v0, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3e

    .line 429
    iget-object v0, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->datas:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/UserDynamicInfo;

    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateUserInfoEvents;->getNewAvatarUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/codemao/nemo/bean/UserDynamicInfo;->setAvatar_url(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 431
    :cond_3e
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_63

    .line 434
    :cond_44
    :goto_44
    iget-object v0, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5e

    .line 435
    iget-object v0, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->datas:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/UserDynamicInfo;

    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateUserInfoEvents;->getNewNickName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/codemao/nemo/bean/UserDynamicInfo;->setNickname(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    .line 437
    :cond_5e
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_63
    :goto_63
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 10

    .line 160
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 161
    new-instance p1, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->datas:Ljava/util/List;

    invoke-direct {p1, p2, v0}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 162
    new-instance p1, Lcom/codemao/nemo/adapter/UserDynamicWorkPublishDelegate;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lcom/codemao/nemo/fragment/UserDynamicFragment$3;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/fragment/UserDynamicFragment$3;-><init>(Lcom/codemao/nemo/fragment/UserDynamicFragment;)V

    invoke-direct {p1, p2, v0}, Lcom/codemao/nemo/adapter/UserDynamicWorkPublishDelegate;-><init>(Landroid/content/Context;Lcom/codemao/nemo/adapter/UserDynamicWorkPublishDelegate$UserDynamicCallBack;)V

    iput-object p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->workPublishDelegate:Lcom/codemao/nemo/adapter/UserDynamicWorkPublishDelegate;

    .line 176
    new-instance p1, Lcom/codemao/nemo/adapter/UserDynamicWorkOptionDelegate;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lcom/codemao/nemo/fragment/UserDynamicFragment$4;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/fragment/UserDynamicFragment$4;-><init>(Lcom/codemao/nemo/fragment/UserDynamicFragment;)V

    invoke-direct {p1, p2, v0}, Lcom/codemao/nemo/adapter/UserDynamicWorkOptionDelegate;-><init>(Landroid/content/Context;Lcom/codemao/nemo/adapter/UserDynamicWorkOptionDelegate$UserDynamicCallBack;)V

    iput-object p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->workOptionDelegate:Lcom/codemao/nemo/adapter/UserDynamicWorkOptionDelegate;

    .line 190
    new-instance p1, Lcom/codemao/nemo/adapter/UserDynamicUserOptionDelegate;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lcom/codemao/nemo/fragment/UserDynamicFragment$5;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/fragment/UserDynamicFragment$5;-><init>(Lcom/codemao/nemo/fragment/UserDynamicFragment;)V

    invoke-direct {p1, p2, v0}, Lcom/codemao/nemo/adapter/UserDynamicUserOptionDelegate;-><init>(Landroid/content/Context;Lcom/codemao/nemo/adapter/UserDynamicUserOptionDelegate$UserDynamicCallBack;)V

    iput-object p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->userOptionDelegate:Lcom/codemao/nemo/adapter/UserDynamicUserOptionDelegate;

    .line 207
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_89

    .line 209
    iget-object v0, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->workPublishDelegate:Lcom/codemao/nemo/adapter/UserDynamicWorkPublishDelegate;

    iget-wide v1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->userId:J

    invoke-virtual {p1}, Lcn/codemao/android/account/bean/UserInfoVO;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/4 v5, 0x1

    cmp-long v6, v1, v3

    if-nez v6, :cond_5a

    const/4 v1, 0x1

    goto :goto_5b

    :cond_5a
    const/4 v1, 0x0

    :goto_5b
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/adapter/UserDynamicWorkPublishDelegate;->setOwner(Z)V

    .line 210
    iget-object v0, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->workOptionDelegate:Lcom/codemao/nemo/adapter/UserDynamicWorkOptionDelegate;

    iget-wide v1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->userId:J

    invoke-virtual {p1}, Lcn/codemao/android/account/bean/UserInfoVO;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v6, v1, v3

    if-nez v6, :cond_70

    const/4 v1, 0x1

    goto :goto_71

    :cond_70
    const/4 v1, 0x0

    :goto_71
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/adapter/UserDynamicWorkOptionDelegate;->setOwner(Z)V

    .line 211
    iget-object v0, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->userOptionDelegate:Lcom/codemao/nemo/adapter/UserDynamicUserOptionDelegate;

    iget-wide v1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->userId:J

    invoke-virtual {p1}, Lcn/codemao/android/account/bean/UserInfoVO;->getId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-nez p1, :cond_85

    goto :goto_86

    :cond_85
    const/4 v5, 0x0

    :goto_86
    invoke-virtual {v0, v5}, Lcom/codemao/nemo/adapter/UserDynamicUserOptionDelegate;->setOwner(Z)V

    .line 216
    :cond_89
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    iget-object v0, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->workPublishDelegate:Lcom/codemao/nemo/adapter/UserDynamicWorkPublishDelegate;

    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 217
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    iget-object v0, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->workOptionDelegate:Lcom/codemao/nemo/adapter/UserDynamicWorkOptionDelegate;

    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 218
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    iget-object v0, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->userOptionDelegate:Lcom/codemao/nemo/adapter/UserDynamicUserOptionDelegate;

    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 219
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    new-instance v0, Lcom/codemao/nemo/adapter/UserDynamicOtherDelegate;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/codemao/nemo/adapter/UserDynamicOtherDelegate;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 220
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    new-instance v0, Lcom/codemao/nemo/view/WrapLinearLayoutmanager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/codemao/nemo/view/WrapLinearLayoutmanager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 221
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    iget-object v0, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 222
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    new-instance v0, Lcom/codemao/nemo/fragment/UserDynamicFragment$6;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/fragment/UserDynamicFragment$6;-><init>(Lcom/codemao/nemo/fragment/UserDynamicFragment;)V

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setOnRefreshListener(Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 229
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    new-instance v0, Lcom/codemao/nemo/fragment/UserDynamicFragment$7;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/fragment/UserDynamicFragment$7;-><init>(Lcom/codemao/nemo/fragment/UserDynamicFragment;)V

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setLoadingListener(Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$LoadingListener;)V

    .line 245
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->hide()V

    .line 246
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setReboundDuration(I)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 247
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1, p2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableLoadMore(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 248
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/UserDynamicFragment;->getUserDynamic()V

    return-void
.end method
