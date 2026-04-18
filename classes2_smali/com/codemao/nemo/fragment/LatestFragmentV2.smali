.class public Lcom/codemao/nemo/fragment/LatestFragmentV2;
.super Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;
.source "LatestFragmentV2.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment<",
        "Lcom/codemao/nemo/bean/LatestWorkInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private clickTime:J

.field commonHeader:Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private isPad:Z

.field private lastRefreshTime:J

.field llNonet:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mSpanNum:I

.field private needToScrollToTop:Z

.field private type:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 34
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;-><init>()V

    const-wide/16 v0, -0x1

    .line 36
    iput-wide v0, p0, Lcom/codemao/nemo/fragment/LatestFragmentV2;->lastRefreshTime:J

    .line 37
    iput-wide v0, p0, Lcom/codemao/nemo/fragment/LatestFragmentV2;->clickTime:J

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/codemao/nemo/fragment/LatestFragmentV2;->needToScrollToTop:Z

    const/4 v0, 0x1

    .line 51
    iput v0, p0, Lcom/codemao/nemo/fragment/LatestFragmentV2;->mSpanNum:I

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/fragment/LatestFragmentV2;)Z
    .registers 1

    .line 34
    iget-boolean p0, p0, Lcom/codemao/nemo/fragment/LatestFragmentV2;->isPad:Z

    return p0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/fragment/LatestFragmentV2;)I
    .registers 1

    .line 34
    iget p0, p0, Lcom/codemao/nemo/fragment/LatestFragmentV2;->mSpanNum:I

    return p0
.end method

.method static synthetic access$200(Lcom/codemao/nemo/fragment/LatestFragmentV2;)Z
    .registers 1

    .line 34
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/LatestFragmentV2;->isTooShortToClick()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/codemao/nemo/fragment/LatestFragmentV2;)I
    .registers 1

    .line 34
    iget p0, p0, Lcom/codemao/nemo/fragment/LatestFragmentV2;->type:I

    return p0
.end method

.method static synthetic access$400(Lcom/codemao/nemo/fragment/LatestFragmentV2;Lcom/codemao/nemo/bean/LatestWorks;)V
    .registers 2

    .line 34
    invoke-direct {p0, p1}, Lcom/codemao/nemo/fragment/LatestFragmentV2;->setListData(Lcom/codemao/nemo/bean/LatestWorks;)V

    return-void
.end method

.method static synthetic access$502(Lcom/codemao/nemo/fragment/LatestFragmentV2;Z)Z
    .registers 2

    .line 34
    iput-boolean p1, p0, Lcom/codemao/nemo/fragment/LatestFragmentV2;->needToScrollToTop:Z

    return p1
.end method

.method public static getInstance(I)Lcom/codemao/nemo/fragment/LatestFragmentV2;
    .registers 4

    .line 56
    new-instance v0, Lcom/codemao/nemo/fragment/LatestFragmentV2;

    invoke-direct {v0}, Lcom/codemao/nemo/fragment/LatestFragmentV2;-><init>()V

    .line 57
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "type"

    .line 58
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 59
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private hideErrorToast()V
    .registers 3

    .line 354
    iget-object v0, p0, Lcom/codemao/nemo/fragment/LatestFragmentV2;->llNonet:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_9

    const/16 v1, 0x8

    .line 355
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_9
    return-void
.end method

.method private isTooShortToClick()Z
    .registers 7

    .line 314
    iget-wide v0, p0, Lcom/codemao/nemo/fragment/LatestFragmentV2;->clickTime:J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-gez v5, :cond_10

    .line 315
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/codemao/nemo/fragment/LatestFragmentV2;->clickTime:J

    return v2

    .line 318
    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/codemao/nemo/fragment/LatestFragmentV2;->clickTime:J

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x3e8

    cmp-long v5, v0, v3

    if-ltz v5, :cond_24

    .line 320
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/codemao/nemo/fragment/LatestFragmentV2;->clickTime:J

    return v2

    :cond_24
    const/4 v0, 0x1

    return v0
.end method

.method private setListData(Lcom/codemao/nemo/bean/LatestWorks;)V
    .registers 7

    const/4 v0, 0x1

    if-nez p1, :cond_1c

    .line 209
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    .line 210
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_16

    .line 211
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showEmpty()V

    goto :goto_1b

    .line 213
    :cond_16
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->hide()V

    :goto_1b
    return-void

    .line 217
    :cond_1c
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LatestWorks;->getItems()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_9f

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LatestWorks;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_2e

    goto :goto_9f

    .line 227
    :cond_2e
    iget-object v1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 230
    iget v3, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->offset:I

    if-nez v3, :cond_44

    .line 232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/codemao/nemo/fragment/LatestFragmentV2;->lastRefreshTime:J

    .line 233
    iget-object v1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    .line 235
    :cond_44
    iget-object v3, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LatestWorks;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 236
    iget-object v3, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 237
    iget-boolean v3, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->isLoadMore:Z

    if-eqz v3, :cond_64

    .line 238
    iget-object v3, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LatestWorks;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v1, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_69

    .line 240
    :cond_64
    iget-object v1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 242
    :goto_69
    iget v1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->offset:I

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LatestWorks;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->offset:I

    .line 243
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LatestWorks;->getTotal()I

    move-result p1

    if-ge v1, p1, :cond_7e

    const/4 p1, 0x1

    goto :goto_7f

    :cond_7e
    const/4 p1, 0x0

    :goto_7f
    iput-boolean p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->hasMore:Z

    if-nez p1, :cond_89

    .line 245
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    goto :goto_8e

    .line 247
    :cond_89
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1, v2}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    .line 249
    :goto_8e
    iget-boolean p1, p0, Lcom/codemao/nemo/fragment/LatestFragmentV2;->needToScrollToTop:Z

    if-eqz p1, :cond_9e

    .line 250
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    new-instance v0, Lcom/codemao/nemo/fragment/LatestFragmentV2$5;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/fragment/LatestFragmentV2$5;-><init>(Lcom/codemao/nemo/fragment/LatestFragmentV2;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_9e
    return-void

    .line 218
    :cond_9f
    :goto_9f
    iput-boolean v2, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->hasMore:Z

    .line 219
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    .line 220
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_b4

    .line 221
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showEmpty()V

    goto :goto_b9

    .line 223
    :cond_b4
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->hide()V

    :goto_b9
    return-void
.end method

.method private showErrorToast()V
    .registers 3

    .line 348
    iget-object v0, p0, Lcom/codemao/nemo/fragment/LatestFragmentV2;->llNonet:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 349
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_8
    return-void
.end method


# virtual methods
.method protected contentViewId()I
    .registers 2

    .line 77
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/nemo/fragment/LatestFragmentV2;->isPad:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x2

    .line 79
    iput v0, p0, Lcom/codemao/nemo/fragment/LatestFragmentV2;->mSpanNum:I

    :cond_b
    const v0, 0x7f0d014f

    return v0
.end method

.method protected getData()V
    .registers 6

    const/4 v0, 0x1

    .line 166
    iput-boolean v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->isLoading:Z

    .line 167
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/LatestFragmentV2;->hideErrorToast()V

    .line 168
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->discoveryFragmentNetUtil:Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;

    iget v1, p0, Lcom/codemao/nemo/fragment/LatestFragmentV2;->type:I

    iget v2, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->offset:I

    new-instance v3, Lcom/codemao/nemo/fragment/LatestFragmentV2$4;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/fragment/LatestFragmentV2$4;-><init>(Lcom/codemao/nemo/fragment/LatestFragmentV2;)V

    const/16 v4, 0xf

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->getLatestWorks(IIILcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method

.method protected initDelegate()V
    .registers 5

    .line 136
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    new-instance v1, Lcom/codemao/nemo/adapter/LatestWorkDelegate;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/codemao/nemo/fragment/LatestFragmentV2$3;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/fragment/LatestFragmentV2$3;-><init>(Lcom/codemao/nemo/fragment/LatestFragmentV2;)V

    invoke-direct {v1, v2, v3}, Lcom/codemao/nemo/adapter/LatestWorkDelegate;-><init>(Landroid/content/Context;Lcom/codemao/nemo/adapter/LatestWorkDelegate$RecommendWorkCallBack;)V

    invoke-virtual {v0, v1}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    return-void
.end method

.method protected initRecyclerView()V
    .registers 4

    .line 86
    invoke-super {p0}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->initRecyclerView()V

    .line 87
    new-instance v0, Lcom/codemao/nemo/view/WrapGridLayoutmanager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/codemao/nemo/fragment/LatestFragmentV2;->mSpanNum:I

    invoke-direct {v0, v1, v2}, Lcom/codemao/nemo/view/WrapGridLayoutmanager;-><init>(Landroid/content/Context;I)V

    .line 88
    iget-object v1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 90
    iget-object v1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    new-instance v2, Lcom/codemao/nemo/fragment/LatestFragmentV2$1;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/fragment/LatestFragmentV2$1;-><init>(Lcom/codemao/nemo/fragment/LatestFragmentV2;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 120
    new-instance v1, Lcom/codemao/nemo/fragment/LatestFragmentV2$2;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/LatestFragmentV2$2;-><init>(Lcom/codemao/nemo/fragment/LatestFragmentV2;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 65
    invoke-super {p0, p1}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/codemao/nemo/fragment/LatestFragmentV2;->type:I

    return-void
.end method

.method public onResume()V
    .registers 6

    .line 261
    invoke-super {p0}, Lcom/giu/xzz/BaseFragment;->onResume()V

    .line 262
    iget-wide v0, p0, Lcom/codemao/nemo/fragment/LatestFragmentV2;->lastRefreshTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/codemao/nemo/fragment/LatestFragmentV2;->lastRefreshTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xdbba00

    cmp-long v4, v0, v2

    if-lez v4, :cond_2d

    .line 263
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 264
    invoke-virtual {p0}, Lcom/codemao/nemo/fragment/LatestFragmentV2;->showError()V

    return-void

    :cond_27
    const/4 v0, 0x0

    .line 267
    iput v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->offset:I

    .line 268
    invoke-virtual {p0}, Lcom/codemao/nemo/fragment/LatestFragmentV2;->getData()V

    .line 270
    :cond_2d
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 271
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_4a

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;

    if-eqz v0, :cond_4a

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;

    invoke-virtual {v0}, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->isFront()Z

    :cond_4a
    return-void
.end method

.method public onUpdateWorkInfoEvent(Lcom/codemao/nemo/event/UpdateWorkInfoEvents;)V
    .registers 9
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 279
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getWorkId()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 281
    :goto_5
    iget-object v3, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, -0x1

    if-ge v2, v3, :cond_22

    .line 282
    iget-object v3, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/nemo/bean/LatestWorkInfo;

    .line 283
    invoke-virtual {v3}, Lcom/codemao/nemo/bean/LatestWorkInfo;->getWork_id()J

    move-result-wide v5

    cmp-long v3, v5, v0

    if-nez v3, :cond_1f

    goto :goto_23

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_22
    const/4 v2, -0x1

    :goto_23
    if-gez v2, :cond_26

    return-void

    .line 291
    :cond_26
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/LatestWorkInfo;

    .line 293
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getType()I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_69

    const/4 v3, 0x5

    if-eq v1, v3, :cond_51

    const/4 v3, 0x7

    if-eq v1, v3, :cond_3c

    goto :goto_75

    .line 305
    :cond_3c
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->isPraise()Z

    move-result p1

    .line 306
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/LatestWorkInfo;->getLike_count()I

    move-result v1

    if-eqz p1, :cond_47

    const/4 v4, 0x1

    :cond_47
    add-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/LatestWorkInfo;->setLike_count(I)V

    .line 307
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_75

    .line 299
    :cond_51
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getWorkDetailInfo()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    move-result-object p1

    .line 300
    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getWork_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/LatestWorkInfo;->setWork_name(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getPreview()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/bean/LatestWorkInfo;->setPreview(Ljava/lang/String;)V

    .line 302
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_75

    .line 295
    :cond_69
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getViewTime()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/bean/LatestWorkInfo;->setView_count(I)V

    .line 296
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :goto_75
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5

    .line 71
    invoke-super {p0, p1, p2}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 72
    iget-object p1, p0, Lcom/codemao/nemo/fragment/LatestFragmentV2;->commonHeader:Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;

    const/4 p2, 0x1

    new-array p2, p2, [I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const/4 v1, 0x0

    aput v0, p2, v1

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;->setPrimaryColors([I)V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .registers 2

    .line 360
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    if-eqz p1, :cond_22

    .line 361
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result p1

    if-eqz p1, :cond_22

    .line 362
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_22

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;

    if-eqz p1, :cond_22

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;

    invoke-virtual {p1}, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->isFront()Z

    :cond_22
    return-void
.end method

.method protected showError()V
    .registers 2

    .line 336
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    if-nez v0, :cond_5

    return-void

    .line 339
    :cond_5
    invoke-virtual {p0}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->afterLoading()V

    .line 340
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_15

    .line 341
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->showError()V

    .line 343
    :cond_15
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/LatestFragmentV2;->showErrorToast()V

    return-void
.end method
