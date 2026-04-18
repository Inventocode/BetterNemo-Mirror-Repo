.class public Lcom/codemao/nemo/activity/UserCollectWorkActivity;
.super Lcom/giu/xzz/mvp/MvpActivity;
.source "UserCollectWorkActivity.java"

# interfaces
.implements Lcom/codemao/nemo/presenter/SearchPresentImpl$AnimView;


# instance fields
.field adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

.field private collectWorkInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/CollectWorkInfo;",
            ">;"
        }
    .end annotation
.end field

.field private datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/CollectWorkInfo;",
            ">;"
        }
    .end annotation
.end field

.field private discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

.field private hasMore:Z

.field private isLoadMore:Z

.field private isLoading:Z

.field mLoadView:Lcom/codemao/nemo/view/LoadView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field midView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private offset:I

.field private presenterImpl:Lcom/codemao/nemo/presenter/SearchPresentImpl;

.field refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private removeHolder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

.field right_view:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field root:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rvComment:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rvEmpty:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvMayLike:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private userId:J

.field private workDelegate:Lcom/codemao/nemo/adapter/UserCollectWorkDelegate;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 57
    invoke-direct {p0}, Lcom/giu/xzz/mvp/MvpActivity;-><init>()V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->datas:Ljava/util/List;

    .line 79
    new-instance v0, Lcom/codemao/nemo/http/DiscoveryNetUtil;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/http/DiscoveryNetUtil;-><init>(Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;)V

    iput-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    const/4 v0, 0x0

    .line 80
    iput v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->offset:I

    .line 81
    iput-boolean v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->hasMore:Z

    .line 82
    iput-boolean v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->isLoadMore:Z

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/activity/UserCollectWorkActivity;)Ljava/util/List;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->datas:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/activity/UserCollectWorkActivity;J)V
    .registers 3

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->cancelCollectWork(J)V

    return-void
.end method

.method static synthetic access$1000(Lcom/codemao/nemo/activity/UserCollectWorkActivity;Ljava/util/List;)V
    .registers 2

    .line 57
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->setEmptyData(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$202(Lcom/codemao/nemo/activity/UserCollectWorkActivity;Z)Z
    .registers 2

    .line 57
    iput-boolean p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->isLoadMore:Z

    return p1
.end method

.method static synthetic access$300(Lcom/codemao/nemo/activity/UserCollectWorkActivity;)V
    .registers 1

    .line 57
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->getCollectWorks()V

    return-void
.end method

.method static synthetic access$402(Lcom/codemao/nemo/activity/UserCollectWorkActivity;I)I
    .registers 2

    .line 57
    iput p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->offset:I

    return p1
.end method

.method static synthetic access$500(Lcom/codemao/nemo/activity/UserCollectWorkActivity;)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->removeHolder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    return-object p0
.end method

.method static synthetic access$502(Lcom/codemao/nemo/activity/UserCollectWorkActivity;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->removeHolder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    return-object p1
.end method

.method static synthetic access$600(Lcom/codemao/nemo/activity/UserCollectWorkActivity;)Lcom/codemao/nemo/adapter/UserCollectWorkDelegate;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->workDelegate:Lcom/codemao/nemo/adapter/UserCollectWorkDelegate;

    return-object p0
.end method

.method static synthetic access$700(Lcom/codemao/nemo/activity/UserCollectWorkActivity;Lcom/codemao/nemo/bean/UserCollectWorks;)V
    .registers 2

    .line 57
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->setListData(Lcom/codemao/nemo/bean/UserCollectWorks;)V

    return-void
.end method

.method static synthetic access$802(Lcom/codemao/nemo/activity/UserCollectWorkActivity;Z)Z
    .registers 2

    .line 57
    iput-boolean p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->isLoading:Z

    return p1
.end method

.method static synthetic access$900(Lcom/codemao/nemo/activity/UserCollectWorkActivity;)V
    .registers 1

    .line 57
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->setViewAfterLoading()V

    return-void
.end method

.method private cancelCollectWork(J)V
    .registers 5

    .line 275
    invoke-static {p0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 276
    invoke-static {p0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 279
    :cond_a
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    new-instance v1, Lcom/codemao/nemo/activity/UserCollectWorkActivity$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/codemao/nemo/activity/UserCollectWorkActivity$7;-><init>(Lcom/codemao/nemo/activity/UserCollectWorkActivity;J)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/codemao/nemo/http/DiscoveryNetUtil;->cancelCollectWork(JLcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method

.method private getCollectWorks()V
    .registers 6

    .line 215
    invoke-static {}, Lcom/giu/xzz/http/RetrofitManager;->get()Lcom/giu/xzz/http/RetrofitManager;

    move-result-object v0

    const-class v1, Lcom/codemao/nemo/retrofit/api/UserService;

    invoke-virtual {v0, v1}, Lcom/giu/xzz/http/RetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/retrofit/api/UserService;

    iget-wide v1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->userId:J

    iget v3, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->offset:I

    const/16 v4, 0xf

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/codemao/nemo/retrofit/api/UserService;->getUserCollectWorks(JII)Lio/reactivex/Observable;

    move-result-object v0

    .line 216
    invoke-static {}, Lcom/giu/xzz/http/transform/ThreadTransformer;->create()Lcom/giu/xzz/http/transform/ThreadTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 217
    invoke-virtual {p0}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/activity/UserCollectWorkActivity$5;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/UserCollectWorkActivity$5;-><init>(Lcom/codemao/nemo/activity/UserCollectWorkActivity;)V

    .line 218
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private getEmptyWorks()V
    .registers 3

    .line 256
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    new-instance v1, Lcom/codemao/nemo/activity/UserCollectWorkActivity$6;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/UserCollectWorkActivity$6;-><init>(Lcom/codemao/nemo/activity/UserCollectWorkActivity;)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/http/DiscoveryNetUtil;->getEmptyWorks(Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method

.method private initData()V
    .registers 3

    .line 123
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->isOwner()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 124
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->midView:Landroid/widget/TextView;

    const-string/jumbo v1, "我的收藏"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_16

    .line 126
    :cond_f
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->midView:Landroid/widget/TextView;

    const-string v1, "Ta的收藏"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_16
    return-void
.end method

.method private initView()V
    .registers 4

    .line 136
    new-instance v0, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    iget-object v1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->datas:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 137
    new-instance v0, Lcom/codemao/nemo/adapter/UserCollectWorkDelegate;

    new-instance v1, Lcom/codemao/nemo/activity/UserCollectWorkActivity$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/UserCollectWorkActivity$1;-><init>(Lcom/codemao/nemo/activity/UserCollectWorkActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/codemao/nemo/adapter/UserCollectWorkDelegate;-><init>(Landroid/content/Context;Lcom/codemao/nemo/adapter/UserCollectWorkDelegate$UserCollectWorkCallBack;)V

    iput-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->workDelegate:Lcom/codemao/nemo/adapter/UserCollectWorkDelegate;

    .line 157
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->isOwner()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 158
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->workDelegate:Lcom/codemao/nemo/adapter/UserCollectWorkDelegate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/adapter/UserCollectWorkDelegate;->setOwner(Z)V

    .line 160
    :cond_21
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->rvComment:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    new-instance v1, Lcom/codemao/nemo/view/WrapLinearLayoutmanager;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/view/WrapLinearLayoutmanager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 161
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->rvComment:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    iget-object v1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 162
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->rvComment:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_46

    .line 163
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->rvComment:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 165
    :cond_46
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->rvComment:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    new-instance v2, Lcom/codemao/nemo/activity/UserCollectWorkActivity$2;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/activity/UserCollectWorkActivity$2;-><init>(Lcom/codemao/nemo/activity/UserCollectWorkActivity;)V

    invoke-virtual {v0, v2}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setLoadingListener(Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$LoadingListener;)V

    .line 182
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    new-instance v2, Lcom/codemao/nemo/activity/UserCollectWorkActivity$3;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/activity/UserCollectWorkActivity$3;-><init>(Lcom/codemao/nemo/activity/UserCollectWorkActivity;)V

    invoke-virtual {v0, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setOnRefreshListener(Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 193
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableLoadMore(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 194
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    iget-object v1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->workDelegate:Lcom/codemao/nemo/adapter/UserCollectWorkDelegate;

    invoke-virtual {v0, v1}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 195
    invoke-static {p0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_72

    .line 196
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->showError()V

    return-void

    .line 199
    :cond_72
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->rvComment:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    new-instance v1, Lcom/codemao/nemo/activity/UserCollectWorkActivity$4;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/UserCollectWorkActivity$4;-><init>(Lcom/codemao/nemo/activity/UserCollectWorkActivity;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 210
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->getCollectWorks()V

    return-void
.end method

.method private isOwner()Z
    .registers 6

    .line 132
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-wide v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->userId:J

    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object v2

    invoke-virtual {v2}, Lcn/codemao/android/account/bean/UserInfoVO;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method private notifyViewName()V
    .registers 2

    .line 112
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->isOwner()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string/jumbo v0, "我的收藏"

    goto :goto_c

    :cond_a
    const-string v0, "ta的收藏"

    :goto_c
    invoke-virtual {p0, v0}, Lcom/giu/xzz/BaseActivity;->setViewName(Ljava/lang/String;)V

    return-void
.end method

.method private setEmptyData(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/CollectWorkInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_41

    .line 353
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_41

    .line 357
    :cond_9
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->rvEmpty:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/codemao/nemo/view/WrapLinearLayoutmanager;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/view/WrapLinearLayoutmanager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 358
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->collectWorkInfos:Ljava/util/List;

    .line 359
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 360
    new-instance p1, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->collectWorkInfos:Ljava/util/List;

    invoke-direct {p1, p0, v0}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 361
    new-instance v0, Lcom/codemao/nemo/adapter/EmptyWorkDelegate;

    new-instance v1, Lcom/codemao/nemo/activity/UserCollectWorkActivity$8;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/UserCollectWorkActivity$8;-><init>(Lcom/codemao/nemo/activity/UserCollectWorkActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/codemao/nemo/adapter/EmptyWorkDelegate;-><init>(Landroid/content/Context;Lcom/codemao/nemo/adapter/EmptyWorkDelegate$EmptyWorkCallBack;)V

    .line 372
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 373
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->rvEmpty:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 374
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->rvEmpty:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 375
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->tvMayLike:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_41
    :goto_41
    return-void
.end method

.method private setListData(Lcom/codemao/nemo/bean/UserCollectWorks;)V
    .registers 7

    .line 299
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->setViewAfterLoading()V

    const/4 v0, 0x1

    if-nez p1, :cond_1d

    .line 301
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->rvComment:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    .line 302
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->datas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_17

    .line 303
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->showEmpty()V

    goto :goto_1c

    .line 305
    :cond_17
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->hide()V

    :goto_1c
    return-void

    .line 309
    :cond_1d
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    iget-wide v2, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->userId:J

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserCollectWorks;->getTotal()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/codemao/nemo/event/UpdateUserFollowFanCollectCountEvents;->creatUpdateCollectCountEvents(JI)Lcom/codemao/nemo/event/UpdateUserFollowFanCollectCountEvents;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 310
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserCollectWorks;->getItems()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a0

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserCollectWorks;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_40

    goto :goto_a0

    .line 320
    :cond_40
    iget-object v1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v1}, Lcom/codemao/nemo/view/LoadView;->hide()V

    .line 321
    iget-object v1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->datas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 322
    iget v3, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->offset:I

    if-nez v3, :cond_55

    .line 324
    iget-object v1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->datas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    .line 326
    :cond_55
    iget-object v3, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->datas:Ljava/util/List;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserCollectWorks;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 327
    iget-object v3, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->rvComment:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 328
    iget-boolean v3, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->isLoadMore:Z

    if-eqz v3, :cond_75

    .line 329
    iget-object v3, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserCollectWorks;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v1, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_7a

    .line 331
    :cond_75
    iget-object v1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 333
    :goto_7a
    iget v1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->offset:I

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserCollectWorks;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->offset:I

    .line 334
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserCollectWorks;->getTotal()I

    move-result p1

    if-ge v1, p1, :cond_8f

    const/4 p1, 0x1

    goto :goto_90

    :cond_8f
    const/4 p1, 0x0

    :goto_90
    iput-boolean p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->hasMore:Z

    if-nez p1, :cond_9a

    .line 336
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->rvComment:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    goto :goto_9f

    .line 338
    :cond_9a
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->rvComment:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1, v2}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    :goto_9f
    return-void

    .line 311
    :cond_a0
    :goto_a0
    iput-boolean v2, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->hasMore:Z

    .line 312
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->datas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_ae

    .line 313
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->showEmpty()V

    goto :goto_b3

    .line 315
    :cond_ae
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->hide()V

    .line 317
    :goto_b3
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->rvComment:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    return-void
.end method

.method private setViewAfterLoading()V
    .registers 2

    .line 343
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 344
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->rvComment:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->loadMoreComplete()V

    return-void
.end method

.method private showEmpty()V
    .registers 2

    .line 348
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->showEmpty()V

    .line 349
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->getEmptyWorks()V

    return-void
.end method


# virtual methods
.method protected contentViewId()I
    .registers 2

    const v0, 0x7f0d0065

    return v0
.end method

.method protected createPresenter()Lcom/giu/xzz/mvp/BasePresenter;
    .registers 2

    .line 529
    new-instance v0, Lcom/codemao/nemo/presenter/SearchPresentImpl;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/presenter/SearchPresentImpl;-><init>(Lcom/codemao/nemo/presenter/SearchPresentImpl$AnimView;)V

    return-object v0
.end method

.method public get2Activity()Landroid/app/Activity;
    .registers 1

    return-object p0
.end method

.method public get2Intent()Landroid/content/Intent;
    .registers 5

    .line 517
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 518
    iget-wide v1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->userId:J

    const-string v3, "userId"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    return-object v0
.end method

.method public getChildView()Landroid/view/View;
    .registers 2

    .line 507
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->right_view:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    .line 502
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .registers 2

    .line 512
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->root:Landroid/view/View;

    return-object v0
.end method

.method public initViewName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "我的收藏"

    return-object v0
.end method

.method onClick(Landroid/view/View;)V
    .registers 4
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 408
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a048c

    const/4 v1, 0x0

    if-eq p1, v0, :cond_30

    const v0, 0x7f0a0620

    if-eq p1, v0, :cond_10

    goto :goto_4d

    .line 414
    :cond_10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->getViewName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-点击搜索"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 415
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->presenterImpl:Lcom/codemao/nemo/presenter/SearchPresentImpl;

    invoke-virtual {p1}, Lcom/codemao/nemo/presenter/SearchPresentImpl;->exitAnim()V

    goto :goto_4d

    .line 410
    :cond_30
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->getViewName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-点击返回"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 411
    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->finish()V

    :goto_4d
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 102
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "userId"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->userId:J

    .line 103
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->notifyViewName()V

    .line 104
    invoke-super {p0, p1}, Lcom/giu/xzz/mvp/MvpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    iget-object p1, p0, Lcom/giu/xzz/mvp/MvpActivity;->presenter:Lcom/giu/xzz/mvp/BasePresenter;

    check-cast p1, Lcom/codemao/nemo/presenter/SearchPresentImpl;

    iput-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->presenterImpl:Lcom/codemao/nemo/presenter/SearchPresentImpl;

    .line 106
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 107
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->initData()V

    .line 108
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->initView()V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 381
    invoke-super {p0}, Lcom/giu/xzz/mvp/MvpActivity;->onDestroy()V

    .line 382
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 383
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    if-eqz v0, :cond_11

    .line 384
    invoke-virtual {v0}, Lcom/codemao/nemo/http/NetUtils;->dispose()V

    :cond_11
    return-void
.end method

.method public onUpdateWorkInfoEvent(Lcom/codemao/nemo/event/UpdateWorkInfoEvents;)V
    .registers 12
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 422
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getWorkId()J

    move-result-wide v0

    .line 424
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getType()I

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1f

    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->isCollect()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->isOwner()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 425
    iput v4, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->offset:I

    .line 426
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->getCollectWorks()V

    return-void

    :cond_1f
    const/4 v2, -0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 429
    :goto_22
    iget-object v7, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->datas:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_3e

    .line 430
    iget-object v7, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->datas:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/codemao/nemo/bean/CollectWorkInfo;

    invoke-virtual {v7}, Lcom/codemao/nemo/bean/CollectWorkInfo;->getId()J

    move-result-wide v7

    cmp-long v9, v7, v0

    if-nez v9, :cond_3b

    move v6, v5

    :cond_3b
    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    :cond_3e
    if-gez v6, :cond_41

    return-void

    .line 437
    :cond_41
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->datas:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/CollectWorkInfo;

    .line 438
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getType()I

    move-result v1

    if-eqz v1, :cond_eb

    const/4 v5, 0x2

    if-eq v1, v5, :cond_de

    const/4 v5, 0x5

    if-eq v1, v5, :cond_c6

    const/4 v5, 0x6

    if-eq v1, v5, :cond_b3

    const/4 v5, 0x7

    if-eq v1, v5, :cond_9e

    if-eq v1, v3, :cond_5f

    goto/16 :goto_f7

    .line 457
    :cond_5f
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->isCollect()Z

    move-result p1

    .line 458
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->isOwner()Z

    move-result v0

    if-eqz v0, :cond_f7

    if-eqz p1, :cond_72

    .line 460
    iput v4, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->offset:I

    .line 461
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->getCollectWorks()V

    goto/16 :goto_f7

    .line 463
    :cond_72
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->datas:Ljava/util/List;

    invoke-interface {p1, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 464
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1, v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 465
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v6

    invoke-virtual {p1, v6, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 466
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->datas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_f7

    .line 467
    iget-boolean p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->hasMore:Z

    if-eqz p1, :cond_9a

    .line 468
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->rvComment:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->loadMore()V

    goto :goto_f7

    .line 470
    :cond_9a
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->showEmpty()V

    goto :goto_f7

    .line 444
    :cond_9e
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->isPraise()Z

    move-result p1

    .line 445
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/CollectWorkInfo;->getLikes_count()I

    move-result v1

    if-eqz p1, :cond_a9

    const/4 v2, 0x1

    :cond_a9
    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/CollectWorkInfo;->setLikes_count(I)V

    .line 446
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1, v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_f7

    .line 449
    :cond_b3
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->datas:Ljava/util/List;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/CollectWorkInfo;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/codemao/nemo/bean/CollectWorkInfo;->setPublish_time(J)V

    .line 450
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1, v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_f7

    .line 478
    :cond_c6
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getWorkDetailInfo()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    move-result-object p1

    .line 479
    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getWork_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/CollectWorkInfo;->setName(Ljava/lang/String;)V

    .line 480
    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getPreview()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/bean/CollectWorkInfo;->setPreview(Ljava/lang/String;)V

    .line 481
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1, v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_f7

    .line 453
    :cond_de
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getCollecTime()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/bean/CollectWorkInfo;->setCollections_count(I)V

    .line 454
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1, v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_f7

    .line 440
    :cond_eb
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getNewWorkName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/bean/CollectWorkInfo;->setName(Ljava/lang/String;)V

    .line 441
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1, v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_f7
    :goto_f7
    return-void
.end method

.method public onUserInfoChanged()V
    .registers 1

    .line 117
    invoke-super {p0}, Lcom/giu/xzz/BaseActivity;->onUserInfoChanged()V

    .line 118
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->notifyViewName()V

    .line 119
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->initData()V

    return-void
.end method

.method public onViewHolderEV(Lcom/codemao/nemo/event/ViewHolderEV;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 488
    iget-object v0, p1, Lcom/codemao/nemo/event/ViewHolderEV;->clsName:Ljava/lang/String;

    const-class v1, Lcom/codemao/nemo/adapter/UserCollectWorkDelegate;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 489
    iget-object v0, p1, Lcom/codemao/nemo/event/ViewHolderEV;->mHolder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    if-nez v0, :cond_16

    const/4 p1, 0x0

    .line 490
    iput-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->removeHolder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    goto :goto_23

    .line 492
    :cond_16
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->removeHolder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    if-eqz v0, :cond_1f

    .line 493
    iget-object v1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->workDelegate:Lcom/codemao/nemo/adapter/UserCollectWorkDelegate;

    invoke-virtual {v1, v0}, Lcom/codemao/nemo/adapter/UserCollectWorkDelegate;->removeCloseAnim(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;)V

    .line 495
    :cond_1f
    iget-object p1, p1, Lcom/codemao/nemo/event/ViewHolderEV;->mHolder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    iput-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->removeHolder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    :cond_23
    :goto_23
    return-void
.end method

.method refresh(Landroid/view/View;)V
    .registers 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 396
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showLoading()V

    .line 397
    invoke-static {p0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_11

    .line 398
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showError()V

    return-void

    :cond_11
    const/4 p1, 0x0

    .line 401
    iput p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->offset:I

    .line 402
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->getCollectWorks()V

    return-void
.end method

.method protected toolBarId()I
    .registers 2

    const v0, 0x7f0a07bf

    return v0
.end method
