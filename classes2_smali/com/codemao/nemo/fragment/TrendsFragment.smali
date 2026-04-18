.class public Lcom/codemao/nemo/fragment/TrendsFragment;
.super Lcom/codemao/nemo/fragment/BaseDiscoverFragment;
.source "TrendsFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/fragment/BaseDiscoverFragment<",
        "Lcom/codemao/nemo/bean/TrendsInfo;",
        ">;"
    }
.end annotation


# instance fields
.field commonHeader:Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private header:Landroid/view/View;

.field private lastRefreshTime:J

.field llNonet:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private needToScrollToTop:Z

.field private recTopAdapter:Lcom/codemao/nemo/adapter/TrendsRecTopAdapter;

.field private recUserAdapter:Lcom/codemao/nemo/adapter/TrendsRecUserAdapter;

.field private rvRecUser:Landroidx/recyclerview/widget/RecyclerView;

.field private rvTopRec:Landroidx/recyclerview/widget/RecyclerView;

.field private showFind:Z

.field private trendsRecInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/TrendsRecInfo;",
            ">;"
        }
    .end annotation
.end field

.field private viewFind:Landroid/view/View;

.field vsFind:Landroid/view/ViewStub;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 50
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;-><init>()V

    const-wide/16 v0, -0x1

    .line 52
    iput-wide v0, p0, Lcom/codemao/nemo/fragment/TrendsFragment;->lastRefreshTime:J

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/codemao/nemo/fragment/TrendsFragment;->needToScrollToTop:Z

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/codemao/nemo/fragment/TrendsFragment;->showFind:Z

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/fragment/TrendsFragment;->trendsRecInfos:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/fragment/TrendsFragment;)Z
    .registers 1

    .line 50
    iget-boolean p0, p0, Lcom/codemao/nemo/fragment/TrendsFragment;->showFind:Z

    return p0
.end method

.method static synthetic access$002(Lcom/codemao/nemo/fragment/TrendsFragment;Z)Z
    .registers 2

    .line 50
    iput-boolean p1, p0, Lcom/codemao/nemo/fragment/TrendsFragment;->showFind:Z

    return p1
.end method

.method static synthetic access$100(Lcom/codemao/nemo/fragment/TrendsFragment;)Ljava/util/List;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/codemao/nemo/fragment/TrendsFragment;->trendsRecInfos:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/nemo/fragment/TrendsFragment;)V
    .registers 1

    .line 50
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/TrendsFragment;->showFind()V

    return-void
.end method

.method static synthetic access$300(Lcom/codemao/nemo/fragment/TrendsFragment;)V
    .registers 1

    .line 50
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/TrendsFragment;->getTrednsList()V

    return-void
.end method

.method static synthetic access$400(Lcom/codemao/nemo/fragment/TrendsFragment;)Lcom/codemao/nemo/adapter/TrendsRecUserAdapter;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/codemao/nemo/fragment/TrendsFragment;->recUserAdapter:Lcom/codemao/nemo/adapter/TrendsRecUserAdapter;

    return-object p0
.end method

.method static synthetic access$500(Lcom/codemao/nemo/fragment/TrendsFragment;Lcom/codemao/nemo/bean/TrendsListInfo;)V
    .registers 2

    .line 50
    invoke-direct {p0, p1}, Lcom/codemao/nemo/fragment/TrendsFragment;->setListData(Lcom/codemao/nemo/bean/TrendsListInfo;)V

    return-void
.end method

.method static synthetic access$600(Lcom/codemao/nemo/fragment/TrendsFragment;)Landroid/view/View;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/codemao/nemo/fragment/TrendsFragment;->viewFind:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$702(Lcom/codemao/nemo/fragment/TrendsFragment;Z)Z
    .registers 2

    .line 50
    iput-boolean p1, p0, Lcom/codemao/nemo/fragment/TrendsFragment;->needToScrollToTop:Z

    return p1
.end method

.method private getHeadCount()I
    .registers 3

    .line 305
    iget-object v0, p0, Lcom/codemao/nemo/fragment/TrendsFragment;->header:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 307
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    return v1
.end method

.method public static getInstance()Lcom/codemao/nemo/fragment/TrendsFragment;
    .registers 1

    .line 71
    new-instance v0, Lcom/codemao/nemo/fragment/TrendsFragment;

    invoke-direct {v0}, Lcom/codemao/nemo/fragment/TrendsFragment;-><init>()V

    return-object v0
.end method

.method private getRecInfo()V
    .registers 3

    .line 101
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->discoveryFragmentNetUtil:Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;

    new-instance v1, Lcom/codemao/nemo/fragment/TrendsFragment$2;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/TrendsFragment$2;-><init>(Lcom/codemao/nemo/fragment/TrendsFragment;)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->getTrendsRecList(Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method

.method private getTrednsList()V
    .registers 5

    const/4 v0, 0x1

    .line 326
    iput-boolean v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->isLoading:Z

    .line 327
    iget v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->offset:I

    if-nez v0, :cond_a

    .line 328
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/TrendsFragment;->setHeader()V

    .line 330
    :cond_a
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->discoveryFragmentNetUtil:Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;

    iget v1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->offset:I

    const/16 v2, 0xf

    new-instance v3, Lcom/codemao/nemo/fragment/TrendsFragment$7;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/fragment/TrendsFragment$7;-><init>(Lcom/codemao/nemo/fragment/TrendsFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->getTrendsListInfo(IILcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method

.method private hideErrorToast()V
    .registers 3

    .line 510
    iget-object v0, p0, Lcom/codemao/nemo/fragment/TrendsFragment;->llNonet:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_9

    const/16 v1, 0x8

    .line 511
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_9
    return-void
.end method

.method private setHeader()V
    .registers 6

    .line 149
    iget-boolean v0, p0, Lcom/codemao/nemo/fragment/TrendsFragment;->showFind:Z

    const/4 v1, 0x0

    if-nez v0, :cond_99

    iget-object v0, p0, Lcom/codemao/nemo/fragment/TrendsFragment;->trendsRecInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x4

    if-lt v0, v2, :cond_99

    .line 150
    iget-object v0, p0, Lcom/codemao/nemo/fragment/TrendsFragment;->header:Landroid/view/View;

    const/4 v2, 0x0

    if-nez v0, :cond_48

    .line 151
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f0d0348

    invoke-static {v0, v3, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/fragment/TrendsFragment;->header:Landroid/view/View;

    .line 152
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    iget-object v0, p0, Lcom/codemao/nemo/fragment/TrendsFragment;->header:Landroid/view/View;

    const v1, 0x7f0a0681

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/codemao/nemo/fragment/TrendsFragment;->rvTopRec:Landroidx/recyclerview/widget/RecyclerView;

    .line 154
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 155
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 156
    iget-object v1, p0, Lcom/codemao/nemo/fragment/TrendsFragment;->rvTopRec:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    :cond_48
    const/high16 v0, 0x41d80000  # 27.0f

    .line 158
    invoke-static {v0}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v0

    const/high16 v1, 0x41200000  # 10.0f

    .line 159
    invoke-static {v1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v1

    .line 160
    iget-object v3, p0, Lcom/codemao/nemo/fragment/TrendsFragment;->rvTopRec:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v3

    if-lez v3, :cond_61

    .line 161
    iget-object v3, p0, Lcom/codemao/nemo/fragment/TrendsFragment;->rvTopRec:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecorationAt(I)V

    .line 164
    :cond_61
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result v2

    .line 165
    iget-object v3, p0, Lcom/codemao/nemo/fragment/TrendsFragment;->rvTopRec:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Lcom/codemao/nemo/fragment/TrendsFragment$3;

    invoke-direct {v4, p0, v2, v0, v1}, Lcom/codemao/nemo/fragment/TrendsFragment$3;-><init>(Lcom/codemao/nemo/fragment/TrendsFragment;ZII)V

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 200
    iget-object v0, p0, Lcom/codemao/nemo/fragment/TrendsFragment;->recTopAdapter:Lcom/codemao/nemo/adapter/TrendsRecTopAdapter;

    if-nez v0, :cond_80

    .line 201
    new-instance v0, Lcom/codemao/nemo/adapter/TrendsRecTopAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/nemo/fragment/TrendsFragment;->trendsRecInfos:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/codemao/nemo/adapter/TrendsRecTopAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/codemao/nemo/fragment/TrendsFragment;->recTopAdapter:Lcom/codemao/nemo/adapter/TrendsRecTopAdapter;

    .line 203
    :cond_80
    iget-object v0, p0, Lcom/codemao/nemo/fragment/TrendsFragment;->rvTopRec:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/codemao/nemo/fragment/TrendsFragment;->recTopAdapter:Lcom/codemao/nemo/adapter/TrendsRecTopAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 204
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->cleanHeadView()V

    .line 205
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    iget-object v1, p0, Lcom/codemao/nemo/fragment/TrendsFragment;->header:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->addHeadView(Landroid/view/View;)V

    .line 206
    iget-object v0, p0, Lcom/codemao/nemo/fragment/TrendsFragment;->recTopAdapter:Lcom/codemao/nemo/adapter/TrendsRecTopAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_a0

    .line 208
    :cond_99
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->cleanHeadView()V

    .line 209
    iput-object v1, p0, Lcom/codemao/nemo/fragment/TrendsFragment;->header:Landroid/view/View;

    :goto_a0
    return-void
.end method

.method private setListData(Lcom/codemao/nemo/bean/TrendsListInfo;)V
    .registers 7

    const/4 v0, 0x1

    if-nez p1, :cond_20

    .line 378
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    .line 379
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    if-nez p1, :cond_1a

    .line 380
    iget-object p1, p0, Lcom/codemao/nemo/fragment/TrendsFragment;->header:Landroid/view/View;

    if-nez p1, :cond_1f

    .line 381
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showEmpty()V

    goto :goto_1f

    .line 384
    :cond_1a
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->hide()V

    :cond_1f
    :goto_1f
    return-void

    .line 388
    :cond_20
    iget-object v1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    .line 389
    iget v2, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->offset:I

    const/4 v3, 0x0

    if-nez v2, :cond_37

    .line 391
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/codemao/nemo/fragment/TrendsFragment;->lastRefreshTime:J

    .line 392
    iget-object v1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    const/4 v1, 0x0

    .line 394
    :cond_37
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/TrendsListInfo;->getItems()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_a3

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/TrendsListInfo;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_48

    goto :goto_a3

    .line 408
    :cond_48
    iget-object v2, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/TrendsListInfo;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 409
    iget-object v2, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 410
    iget-boolean v2, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->isLoadMore:Z

    if-eqz v2, :cond_68

    .line 411
    iget-object v2, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/TrendsListInfo;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v1, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_6d

    .line 413
    :cond_68
    iget-object v1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 415
    :goto_6d
    iget v1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->offset:I

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/TrendsListInfo;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->offset:I

    .line 416
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/TrendsListInfo;->getTotal()I

    move-result p1

    if-ge v1, p1, :cond_82

    const/4 p1, 0x1

    goto :goto_83

    :cond_82
    const/4 p1, 0x0

    :goto_83
    iput-boolean p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->hasMore:Z

    if-nez p1, :cond_8d

    .line 418
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    goto :goto_92

    .line 420
    :cond_8d
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1, v3}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    .line 422
    :goto_92
    iget-boolean p1, p0, Lcom/codemao/nemo/fragment/TrendsFragment;->needToScrollToTop:Z

    if-eqz p1, :cond_a2

    .line 423
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    new-instance v0, Lcom/codemao/nemo/fragment/TrendsFragment$8;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/fragment/TrendsFragment$8;-><init>(Lcom/codemao/nemo/fragment/TrendsFragment;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_a2
    return-void

    .line 395
    :cond_a3
    :goto_a3
    iput-boolean v3, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->hasMore:Z

    .line 396
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    .line 397
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    if-nez p1, :cond_bc

    .line 398
    iget-object p1, p0, Lcom/codemao/nemo/fragment/TrendsFragment;->header:Landroid/view/View;

    if-nez p1, :cond_c1

    .line 399
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showEmpty()V

    goto :goto_c1

    .line 402
    :cond_bc
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->hide()V

    .line 404
    :cond_c1
    :goto_c1
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private showErrorToast()V
    .registers 3

    .line 504
    iget-object v0, p0, Lcom/codemao/nemo/fragment/TrendsFragment;->llNonet:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 505
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_8
    return-void
.end method

.method private showFind()V
    .registers 5

    .line 214
    iget-object v0, p0, Lcom/codemao/nemo/fragment/TrendsFragment;->trendsRecInfos:Ljava/util/List;

    if-eqz v0, :cond_76

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_b

    goto :goto_76

    .line 218
    :cond_b
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    if-eqz v0, :cond_14

    const/16 v1, 0x8

    .line 219
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 221
    :cond_14
    iget-object v0, p0, Lcom/codemao/nemo/fragment/TrendsFragment;->viewFind:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 222
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 224
    :cond_1c
    iget-object v0, p0, Lcom/codemao/nemo/fragment/TrendsFragment;->viewFind:Landroid/view/View;

    if-nez v0, :cond_67

    .line 225
    iget-object v0, p0, Lcom/codemao/nemo/fragment/TrendsFragment;->vsFind:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/fragment/TrendsFragment;->viewFind:Landroid/view/View;

    const v2, 0x7f0a06a5

    .line 226
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/codemao/nemo/fragment/TrendsFragment;->rvRecUser:Landroidx/recyclerview/widget/RecyclerView;

    .line 227
    iget-object v0, p0, Lcom/codemao/nemo/fragment/TrendsFragment;->viewFind:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 228
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 229
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 230
    iget-object v2, p0, Lcom/codemao/nemo/fragment/TrendsFragment;->rvRecUser:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 231
    iget-object v0, p0, Lcom/codemao/nemo/fragment/TrendsFragment;->rvRecUser:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 232
    new-instance v0, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/nemo/fragment/TrendsFragment;->trendsRecInfos:Ljava/util/List;

    new-instance v3, Lcom/codemao/nemo/fragment/TrendsFragment$4;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/fragment/TrendsFragment$4;-><init>(Lcom/codemao/nemo/fragment/TrendsFragment;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/codemao/nemo/adapter/TrendsRecUserAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/codemao/nemo/adapter/TrendsRecUserAdapter$FollowCallBack;)V

    iput-object v0, p0, Lcom/codemao/nemo/fragment/TrendsFragment;->recUserAdapter:Lcom/codemao/nemo/adapter/TrendsRecUserAdapter;

    .line 248
    :cond_67
    iget-object v0, p0, Lcom/codemao/nemo/fragment/TrendsFragment;->recUserAdapter:Lcom/codemao/nemo/adapter/TrendsRecUserAdapter;

    if-eqz v0, :cond_75

    .line 249
    iget-object v1, p0, Lcom/codemao/nemo/fragment/TrendsFragment;->rvRecUser:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 250
    iget-object v0, p0, Lcom/codemao/nemo/fragment/TrendsFragment;->recUserAdapter:Lcom/codemao/nemo/adapter/TrendsRecUserAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_75
    return-void

    .line 215
    :cond_76
    :goto_76
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->showExtra()V

    return-void
.end method


# virtual methods
.method protected contentViewId()I
    .registers 2

    const v0, 0x7f0d016d

    return v0
.end method

.method followUser(JI)V
    .registers 6

    .line 257
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 258
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 261
    :cond_12
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->discoveryFragmentNetUtil:Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;

    new-instance v1, Lcom/codemao/nemo/fragment/TrendsFragment$5;

    invoke-direct {v1, p0, p3}, Lcom/codemao/nemo/fragment/TrendsFragment$5;-><init>(Lcom/codemao/nemo/fragment/TrendsFragment;I)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->followUser(JLcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method

.method protected getData()V
    .registers 2

    const/4 v0, 0x1

    .line 316
    iput-boolean v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->isLoading:Z

    .line 317
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/TrendsFragment;->hideErrorToast()V

    .line 318
    iget v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->offset:I

    if-nez v0, :cond_e

    .line 319
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/TrendsFragment;->getRecInfo()V

    goto :goto_11

    .line 321
    :cond_e
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/TrendsFragment;->getTrednsList()V

    :goto_11
    return-void
.end method

.method public getViewName()Ljava/lang/String;
    .registers 2

    const-string v0, "动态页"

    return-object v0
.end method

.method protected initDelegate()V
    .registers 4

    .line 95
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    new-instance v1, Lcom/codemao/nemo/adapter/TrendsPublishDelegate;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/codemao/nemo/adapter/TrendsPublishDelegate;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 96
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    new-instance v1, Lcom/codemao/nemo/adapter/TrendsUnableDelegate;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/codemao/nemo/adapter/TrendsUnableDelegate;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 97
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    new-instance v1, Lcom/codemao/nemo/adapter/TrendsUpdateDelegate;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/codemao/nemo/adapter/TrendsUpdateDelegate;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    return-void
.end method

.method public onFragmentVisible()V
    .registers 1

    .line 516
    invoke-virtual {p0}, Lcom/codemao/nemo/fragment/TrendsFragment;->timingRefresh()V

    return-void
.end method

.method public onUpdateWorkInfoEvent(Lcom/codemao/nemo/event/UpdateWorkInfoEvents;)V
    .registers 9
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 435
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getWorkId()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 437
    :goto_5
    iget-object v3, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    const/4 v4, -0x1

    if-ge v2, v3, :cond_26

    .line 438
    iget-object v3, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/nemo/bean/TrendsInfo;

    .line 439
    invoke-virtual {v3}, Lcom/codemao/nemo/bean/TrendsInfo;->getDynamic_info()Lcom/codemao/nemo/bean/TrendsDetailInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/TrendsDetailInfo;->getWork_id()J

    move-result-wide v5

    cmp-long v3, v5, v0

    if-nez v3, :cond_23

    goto :goto_27

    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_26
    const/4 v2, -0x1

    :goto_27
    if-gez v2, :cond_2a

    return-void

    .line 448
    :cond_2a
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/TrendsInfo;

    if-nez v0, :cond_35

    return-void

    .line 452
    :cond_35
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getType()I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_76

    const/4 v3, 0x5

    if-eq v1, v3, :cond_5b

    const/4 v3, 0x7

    if-eq v1, v3, :cond_43

    goto :goto_81

    .line 462
    :cond_43
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->isPraise()Z

    move-result p1

    .line 463
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/TrendsInfo;->getDynamic_info()Lcom/codemao/nemo/bean/TrendsDetailInfo;

    move-result-object v1

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/TrendsInfo;->getDynamic_info()Lcom/codemao/nemo/bean/TrendsDetailInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/TrendsDetailInfo;->getLike_times()I

    move-result v0

    if-eqz p1, :cond_56

    const/4 v4, 0x1

    :cond_56
    add-int/2addr v0, v4

    invoke-virtual {v1, v0}, Lcom/codemao/nemo/bean/TrendsDetailInfo;->setLike_times(I)V

    goto :goto_81

    .line 457
    :cond_5b
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getWorkDetailInfo()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    move-result-object p1

    .line 458
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/TrendsInfo;->getDynamic_info()Lcom/codemao/nemo/bean/TrendsDetailInfo;

    move-result-object v1

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getWork_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/codemao/nemo/bean/TrendsDetailInfo;->setWork_name(Ljava/lang/String;)V

    .line 459
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/TrendsInfo;->getDynamic_info()Lcom/codemao/nemo/bean/TrendsDetailInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getPreview()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/bean/TrendsDetailInfo;->setPreview(Ljava/lang/String;)V

    goto :goto_81

    .line 454
    :cond_76
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/TrendsInfo;->getDynamic_info()Lcom/codemao/nemo/bean/TrendsDetailInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getViewTime()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/bean/TrendsDetailInfo;->setView_times(I)V

    .line 466
    :goto_81
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-direct {p0}, Lcom/codemao/nemo/fragment/TrendsFragment;->getHeadCount()I

    move-result v0

    add-int/2addr v2, v0

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 6

    .line 77
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 78
    iget-object p1, p0, Lcom/codemao/nemo/fragment/TrendsFragment;->commonHeader:Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0600b8

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;->setLineViewBgColor(I)V

    .line 79
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    new-instance p2, Lcom/codemao/nemo/fragment/TrendsFragment$1;

    invoke-direct {p2, p0}, Lcom/codemao/nemo/fragment/TrendsFragment$1;-><init>(Lcom/codemao/nemo/fragment/TrendsFragment;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f0a085c

    aput v2, v0, v1

    invoke-virtual {p1, p2, v0}, Lcom/codemao/nemo/view/LoadView;->setOnClickListener(Landroid/view/View$OnClickListener;[I)V

    return-void
.end method

.method public scrollToTop()V
    .registers 3

    .line 485
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 486
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_8
    return-void
.end method

.method public setViewWorkIds(II)Ljava/lang/String;
    .registers 7

    .line 538
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/TrendsFragment;->getHeadCount()I

    move-result v0

    sub-int/2addr p1, v0

    :goto_5
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/TrendsFragment;->getHeadCount()I

    move-result v0

    sub-int v0, p2, v0

    if-gt p1, v0, :cond_43

    if-ltz p1, :cond_40

    .line 539
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1a

    goto :goto_40

    .line 542
    :cond_1a
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->reportViewIds:Ljava/util/Set;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/nemo/bean/TrendsInfo;

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/TrendsInfo;->getDynamic_info()Lcom/codemao/nemo/bean/TrendsDetailInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/TrendsDetailInfo;->getWork_id()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_40
    :goto_40
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    .line 544
    :cond_43
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->reportViewIds:Ljava/util/Set;

    invoke-static {p1}, Lcom/codemao/nemo/util/StringUtil;->getReportStr(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected showError()V
    .registers 2

    .line 492
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    if-nez v0, :cond_5

    return-void

    .line 495
    :cond_5
    invoke-virtual {p0}, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->afterLoading()V

    .line 496
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_15

    .line 497
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->showError()V

    .line 499
    :cond_15
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/TrendsFragment;->showErrorToast()V

    return-void
.end method

.method public timingRefresh()V
    .registers 6

    .line 525
    iget-wide v0, p0, Lcom/codemao/nemo/fragment/TrendsFragment;->lastRefreshTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/codemao/nemo/fragment/TrendsFragment;->lastRefreshTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1b7740

    cmp-long v4, v0, v2

    if-lez v4, :cond_2f

    .line 526
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 527
    invoke-virtual {p0}, Lcom/codemao/nemo/fragment/TrendsFragment;->showError()V

    return-void

    :cond_24
    const/4 v0, 0x0

    .line 530
    iput v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->offset:I

    .line 531
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->showLoading()V

    .line 532
    invoke-virtual {p0}, Lcom/codemao/nemo/fragment/TrendsFragment;->getData()V

    :cond_2f
    return-void
.end method

.method unFollow(JI)V
    .registers 6

    .line 281
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 282
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 285
    :cond_12
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->discoveryFragmentNetUtil:Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;

    new-instance v1, Lcom/codemao/nemo/fragment/TrendsFragment$6;

    invoke-direct {v1, p0, p3}, Lcom/codemao/nemo/fragment/TrendsFragment$6;-><init>(Lcom/codemao/nemo/fragment/TrendsFragment;I)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->cancelFollowUser(JLcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method
