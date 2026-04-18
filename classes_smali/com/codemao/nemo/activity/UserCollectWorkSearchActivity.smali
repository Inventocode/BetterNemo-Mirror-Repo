.class public Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;
.super Lcom/codemao/nemo/activity/BaseSearchActivity;
.source "UserCollectWorkSearchActivity.java"


# instance fields
.field adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

.field private datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/CollectWorkInfo;",
            ">;"
        }
    .end annotation
.end field

.field discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

.field private hasMore:Z

.field private isLoadMore:Z

.field private isLoading:Z

.field mLoadView:Lcom/codemao/nemo/view/LoadView;
    .annotation runtime Lbutterknife/BindView;
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

.field private removeHolder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

.field private userId:J

.field private workDelegate:Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Lcom/codemao/nemo/activity/BaseSearchActivity;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->datas:Ljava/util/List;

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->offset:I

    .line 60
    iput-boolean v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->hasMore:Z

    .line 61
    iput-boolean v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->isLoadMore:Z

    .line 66
    new-instance v0, Lcom/codemao/nemo/http/DiscoveryNetUtil;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/http/DiscoveryNetUtil;-><init>(Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;)V

    iput-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;)Ljava/util/List;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->datas:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;J)V
    .registers 3

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->cancelCollectWork(J)V

    return-void
.end method

.method static synthetic access$1000(Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;)V
    .registers 1

    .line 47
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->setViewAfterLoading()V

    return-void
.end method

.method static synthetic access$200(Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;)Z
    .registers 1

    .line 47
    iget-boolean p0, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->hasMore:Z

    return p0
.end method

.method static synthetic access$302(Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;Z)Z
    .registers 2

    .line 47
    iput-boolean p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->isLoadMore:Z

    return p1
.end method

.method static synthetic access$400(Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;Z)V
    .registers 2

    .line 47
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->searchWorks(Z)V

    return-void
.end method

.method static synthetic access$502(Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;I)I
    .registers 2

    .line 47
    iput p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->offset:I

    return p1
.end method

.method static synthetic access$600(Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;)J
    .registers 3

    .line 47
    iget-wide v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->userId:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;Lcom/codemao/nemo/bean/UserCollectWorks;)V
    .registers 2

    .line 47
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->setListData(Lcom/codemao/nemo/bean/UserCollectWorks;)V

    return-void
.end method

.method static synthetic access$802(Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;Z)Z
    .registers 2

    .line 47
    iput-boolean p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->isLoading:Z

    return p1
.end method

.method static synthetic access$900(Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;)V
    .registers 1

    .line 47
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->showEmpty()V

    return-void
.end method

.method private cancelCollectWork(J)V
    .registers 5

    .line 91
    invoke-static {p0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 92
    invoke-static {p0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 95
    :cond_a
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    new-instance v1, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$1;-><init>(Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;J)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/codemao/nemo/http/DiscoveryNetUtil;->cancelCollectWork(JLcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method

.method private init()V
    .registers 6

    .line 115
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableLoadMore(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 116
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableRefresh(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 118
    new-instance v0, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    iget-object v2, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->datas:Ljava/util/List;

    invoke-direct {v0, p0, v2}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 119
    new-instance v0, Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate;

    new-instance v2, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$2;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$2;-><init>(Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;)V

    invoke-direct {v0, p0, v2}, Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate;-><init>(Landroid/content/Context;Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate$UserCollectWorkCallBack;)V

    iput-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->workDelegate:Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate;

    .line 139
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->isOwner()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2d

    .line 140
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->workDelegate:Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate;

    invoke-virtual {v0, v2}, Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate;->setOwner(Z)V

    goto :goto_32

    .line 142
    :cond_2d
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->workDelegate:Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate;->setOwner(Z)V

    .line 144
    :goto_32
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->workDelegate:Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate;

    iget-object v3, p0, Lcom/codemao/nemo/activity/BaseSearchActivity;->keyword:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate;->setKey(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    iget-object v3, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->workDelegate:Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate;

    invoke-virtual {v0, v3}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 146
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    new-instance v3, Lcom/codemao/nemo/view/WrapLinearLayoutmanager;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/view/WrapLinearLayoutmanager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 147
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    iget-object v3, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v0, v3}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 148
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    if-eqz v0, :cond_64

    .line 149
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 151
    :cond_64
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    new-instance v3, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$3;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$3;-><init>(Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;)V

    invoke-virtual {v0, v3}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setLoadingListener(Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$LoadingListener;)V

    .line 170
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    new-instance v3, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$4;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$4;-><init>(Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;)V

    new-array v2, v2, [I

    const v4, 0x7f0a0222

    aput v4, v2, v1

    invoke-virtual {v0, v3, v2}, Lcom/codemao/nemo/view/LoadView;->setOnClickListener(Landroid/view/View$OnClickListener;[I)V

    .line 183
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->hide()V

    return-void
.end method

.method private isOwner()Z
    .registers 6

    .line 187
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-wide v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->userId:J

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

.method private searchWorks(Z)V
    .registers 8

    .line 192
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    iget-object v1, p0, Lcom/codemao/nemo/activity/BaseSearchActivity;->keyword:Ljava/lang/String;

    iget-wide v2, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->userId:J

    iget v4, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->offset:I

    new-instance v5, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$5;

    invoke-direct {v5, p0, p1}, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$5;-><init>(Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;Z)V

    invoke-virtual/range {v0 .. v5}, Lcom/codemao/nemo/http/DiscoveryNetUtil;->searchUserCollectWorks(Ljava/lang/String;JILcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method

.method private setListData(Lcom/codemao/nemo/bean/UserCollectWorks;)V
    .registers 8

    .line 241
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->setViewAfterLoading()V

    .line 242
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v0, 0x1

    if-nez p1, :cond_23

    .line 244
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    .line 245
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->datas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1d

    .line 246
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->showEmpty()V

    goto :goto_22

    .line 248
    :cond_1d
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->hide()V

    :goto_22
    return-void

    .line 253
    :cond_23
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserCollectWorks;->getItems()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_a9

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserCollectWorks;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_35

    goto/16 :goto_a9

    .line 264
    :cond_35
    iget-object v2, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->datas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 265
    iget v3, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->offset:I

    if-nez v3, :cond_45

    .line 267
    iget-object v2, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->datas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v2, 0x0

    .line 269
    :cond_45
    iget-object v3, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v3}, Lcom/codemao/nemo/view/LoadView;->hide()V

    .line 270
    iget-object v3, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->datas:Ljava/util/List;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserCollectWorks;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 271
    iget-object v3, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 272
    iget-boolean v3, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->isLoadMore:Z

    if-eqz v3, :cond_6a

    .line 273
    iget-object v3, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserCollectWorks;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_83

    .line 275
    :cond_6a
    iget-object v2, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->workDelegate:Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate;

    invoke-virtual {v2}, Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate;->getNameWitdh()I

    move-result v2

    if-gtz v2, :cond_7e

    .line 276
    iget-object v2, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    new-instance v3, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$6;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$6;-><init>(Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 287
    :cond_7e
    iget-object v2, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 289
    :goto_83
    iget v2, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->offset:I

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserCollectWorks;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->offset:I

    .line 290
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserCollectWorks;->getTotal()I

    move-result p1

    if-ge v2, p1, :cond_98

    const/4 p1, 0x1

    goto :goto_99

    :cond_98
    const/4 p1, 0x0

    :goto_99
    iput-boolean p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->hasMore:Z

    if-nez p1, :cond_a3

    .line 292
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    goto :goto_a8

    .line 294
    :cond_a3
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1, v1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    :goto_a8
    return-void

    .line 254
    :cond_a9
    :goto_a9
    iput-boolean v1, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->hasMore:Z

    .line 255
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    .line 256
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->datas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_bc

    .line 257
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->showEmpty()V

    goto :goto_c1

    .line 259
    :cond_bc
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->hide()V

    :goto_c1
    return-void
.end method

.method private setViewAfterLoading()V
    .registers 2

    .line 236
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 237
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->loadMoreComplete()V

    return-void
.end method

.method private showEmpty()V
    .registers 3

    .line 299
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->showEmpty()V

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

    .line 398
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/event/AnimEV;

    const-class v2, Lcom/codemao/nemo/activity/UserCollectWorkActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/codemao/nemo/event/AnimEV;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 399
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/BaseSearchActivity;->finish()V

    return-void
.end method

.method protected doSearch(Ljava/lang/String;)V
    .registers 3

    .line 310
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->datas:Ljava/util/List;

    if-eqz v0, :cond_14

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_14

    .line 311
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 312
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 314
    :cond_14
    invoke-static {p0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 315
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showError()V

    goto :goto_31

    .line 317
    :cond_20
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->showLoading()V

    const/4 v0, 0x0

    .line 318
    iput v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->offset:I

    .line 319
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->workDelegate:Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate;->setKey(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 320
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->searchWorks(Z)V

    :goto_31
    return-void
.end method

.method protected getHint()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "搜索收藏的作品"

    return-object v0
.end method

.method public initViewName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "搜索页-我的收藏"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 80
    invoke-super {p0, p1}, Lcom/codemao/nemo/activity/BaseSearchActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "userId"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->userId:J

    .line 82
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->init()V

    return-void
.end method

.method public onUpdateWorkInfoEvent(Lcom/codemao/nemo/event/UpdateWorkInfoEvents;)V
    .registers 10
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 326
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getWorkId()J

    move-result-wide v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 328
    :goto_7
    iget-object v5, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->datas:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_23

    .line 329
    iget-object v5, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->datas:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/codemao/nemo/bean/CollectWorkInfo;

    invoke-virtual {v5}, Lcom/codemao/nemo/bean/CollectWorkInfo;->getId()J

    move-result-wide v5

    cmp-long v7, v5, v0

    if-nez v7, :cond_20

    move v4, v3

    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_23
    if-gez v4, :cond_26

    return-void

    .line 336
    :cond_26
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->datas:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/CollectWorkInfo;

    .line 337
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getType()I

    move-result v1

    if-eqz v1, :cond_cb

    const/4 v3, 0x2

    if-eq v1, v3, :cond_be

    const/4 v3, 0x5

    if-eq v1, v3, :cond_a6

    const/4 v3, 0x6

    if-eq v1, v3, :cond_93

    const/4 v3, 0x7

    if-eq v1, v3, :cond_7e

    const/16 v0, 0x8

    if-eq v1, v0, :cond_46

    goto/16 :goto_d7

    .line 356
    :cond_46
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->isCollect()Z

    move-result p1

    .line 357
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->isOwner()Z

    move-result v0

    if-eqz v0, :cond_d7

    if-nez p1, :cond_d7

    .line 359
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->datas:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 360
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 361
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {p1, v4, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 362
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->datas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_d7

    .line 363
    iget-boolean p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->hasMore:Z

    if-eqz p1, :cond_7a

    .line 364
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->loadMore()V

    goto :goto_d7

    .line 366
    :cond_7a
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->showEmpty()V

    goto :goto_d7

    .line 343
    :cond_7e
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->isPraise()Z

    move-result p1

    .line 344
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/CollectWorkInfo;->getLikes_count()I

    move-result v1

    if-eqz p1, :cond_89

    const/4 v2, 0x1

    :cond_89
    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/CollectWorkInfo;->setLikes_count(I)V

    .line 345
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_d7

    .line 348
    :cond_93
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->datas:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/CollectWorkInfo;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/codemao/nemo/bean/CollectWorkInfo;->setPublish_time(J)V

    .line 349
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_d7

    .line 374
    :cond_a6
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getWorkDetailInfo()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    move-result-object p1

    .line 375
    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getWork_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/CollectWorkInfo;->setName(Ljava/lang/String;)V

    .line 376
    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getPreview()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/bean/CollectWorkInfo;->setPreview(Ljava/lang/String;)V

    .line 377
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_d7

    .line 352
    :cond_be
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getCollecTime()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/bean/CollectWorkInfo;->setCollections_count(I)V

    .line 353
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_d7

    .line 339
    :cond_cb
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getNewWorkName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/bean/CollectWorkInfo;->setName(Ljava/lang/String;)V

    .line 340
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_d7
    :goto_d7
    return-void
.end method

.method public onViewHolderEV(Lcom/codemao/nemo/event/ViewHolderEV;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 384
    iget-object v0, p1, Lcom/codemao/nemo/event/ViewHolderEV;->clsName:Ljava/lang/String;

    const-class v1, Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 385
    iget-object v0, p1, Lcom/codemao/nemo/event/ViewHolderEV;->mHolder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    if-nez v0, :cond_16

    const/4 p1, 0x0

    .line 386
    iput-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->removeHolder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    goto :goto_23

    .line 388
    :cond_16
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->removeHolder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    if-eqz v0, :cond_1f

    .line 389
    iget-object v1, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->workDelegate:Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate;

    invoke-virtual {v1, v0}, Lcom/codemao/nemo/adapter/UserCollectWorkSearchDelegate;->removeCloseAnim(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;)V

    .line 391
    :cond_1f
    iget-object p1, p1, Lcom/codemao/nemo/event/ViewHolderEV;->mHolder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    iput-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->removeHolder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    :cond_23
    :goto_23
    return-void
.end method

.method protected toolBarId()I
    .registers 2

    const v0, 0x7f0a06cb

    return v0
.end method
