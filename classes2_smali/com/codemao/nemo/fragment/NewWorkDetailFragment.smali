.class public Lcom/codemao/nemo/fragment/NewWorkDetailFragment;
.super Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;
.source "NewWorkDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment<",
        "Lcom/codemao/nemo/bean/NewWorkDetailInfo;",
        ">;"
    }
.end annotation


# instance fields
.field card_contribute:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private isLargePad:Z

.field private lastRefreshTime:J

.field llNonet:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mSpanNum:I

.field private needToScrollToTop:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 40
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;-><init>()V

    const-wide/16 v0, -0x1

    .line 42
    iput-wide v0, p0, Lcom/codemao/nemo/fragment/NewWorkDetailFragment;->lastRefreshTime:J

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/codemao/nemo/fragment/NewWorkDetailFragment;->needToScrollToTop:Z

    const/4 v0, 0x1

    .line 55
    iput v0, p0, Lcom/codemao/nemo/fragment/NewWorkDetailFragment;->mSpanNum:I

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/fragment/NewWorkDetailFragment;)I
    .registers 1

    .line 40
    iget p0, p0, Lcom/codemao/nemo/fragment/NewWorkDetailFragment;->mSpanNum:I

    return p0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/fragment/NewWorkDetailFragment;)Z
    .registers 1

    .line 40
    iget-boolean p0, p0, Lcom/codemao/nemo/fragment/NewWorkDetailFragment;->isLargePad:Z

    return p0
.end method

.method static synthetic access$200(Lcom/codemao/nemo/fragment/NewWorkDetailFragment;Lcom/codemao/nemo/bean/NewWorkDetail;)V
    .registers 2

    .line 40
    invoke-direct {p0, p1}, Lcom/codemao/nemo/fragment/NewWorkDetailFragment;->setListData(Lcom/codemao/nemo/bean/NewWorkDetail;)V

    return-void
.end method

.method static synthetic access$302(Lcom/codemao/nemo/fragment/NewWorkDetailFragment;Z)Z
    .registers 2

    .line 40
    iput-boolean p1, p0, Lcom/codemao/nemo/fragment/NewWorkDetailFragment;->needToScrollToTop:Z

    return p1
.end method

.method private hideErrorToast()V
    .registers 3

    .line 325
    iget-object v0, p0, Lcom/codemao/nemo/fragment/NewWorkDetailFragment;->llNonet:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_9

    const/16 v1, 0x8

    .line 326
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_9
    return-void
.end method

.method private setListData(Lcom/codemao/nemo/bean/NewWorkDetail;)V
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_86

    .line 188
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/NewWorkDetail;->getItems()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_86

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/NewWorkDetail;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_15

    goto :goto_86

    .line 198
    :cond_15
    iget-object v2, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 201
    iget v3, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->offset:I

    if-nez v3, :cond_2b

    .line 203
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/codemao/nemo/fragment/NewWorkDetailFragment;->lastRefreshTime:J

    .line 204
    iget-object v2, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v2, 0x0

    .line 206
    :cond_2b
    iget-object v3, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/NewWorkDetail;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 207
    iget-object v3, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 208
    iget-boolean v3, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->isLoadMore:Z

    if-eqz v3, :cond_4b

    .line 209
    iget-object v3, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/NewWorkDetail;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_50

    .line 211
    :cond_4b
    iget-object v2, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 213
    :goto_50
    iget v2, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->offset:I

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/NewWorkDetail;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->offset:I

    .line 214
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/NewWorkDetail;->getTotal()I

    move-result p1

    if-ge v2, p1, :cond_65

    const/4 p1, 0x1

    goto :goto_66

    :cond_65
    const/4 p1, 0x0

    :goto_66
    iput-boolean p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->hasMore:Z

    if-nez p1, :cond_70

    .line 216
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    goto :goto_75

    .line 218
    :cond_70
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1, v1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    .line 220
    :goto_75
    iget-boolean p1, p0, Lcom/codemao/nemo/fragment/NewWorkDetailFragment;->needToScrollToTop:Z

    if-eqz p1, :cond_85

    .line 221
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    new-instance v0, Lcom/codemao/nemo/fragment/NewWorkDetailFragment$5;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/fragment/NewWorkDetailFragment$5;-><init>(Lcom/codemao/nemo/fragment/NewWorkDetailFragment;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_85
    return-void

    .line 189
    :cond_86
    :goto_86
    iput-boolean v1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->hasMore:Z

    .line 190
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    .line 191
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_9b

    .line 192
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showEmpty()V

    goto :goto_a0

    .line 194
    :cond_9b
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->hide()V

    :goto_a0
    return-void
.end method

.method private showErrorToast()V
    .registers 3

    .line 319
    iget-object v0, p0, Lcom/codemao/nemo/fragment/NewWorkDetailFragment;->llNonet:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 320
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_8
    return-void
.end method


# virtual methods
.method protected contentViewId()I
    .registers 2

    .line 60
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/nemo/fragment/NewWorkDetailFragment;->isLargePad:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x2

    .line 62
    iput v0, p0, Lcom/codemao/nemo/fragment/NewWorkDetailFragment;->mSpanNum:I

    :cond_b
    const v0, 0x7f0d0143

    return v0
.end method

.method protected getData()V
    .registers 4

    const/4 v0, 0x1

    .line 143
    iput-boolean v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->isLoading:Z

    .line 144
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/NewWorkDetailFragment;->hideErrorToast()V

    .line 146
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->discoveryFragmentNetUtil:Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;

    iget v1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->offset:I

    new-instance v2, Lcom/codemao/nemo/fragment/NewWorkDetailFragment$4;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/fragment/NewWorkDetailFragment$4;-><init>(Lcom/codemao/nemo/fragment/NewWorkDetailFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->getNewWorkDetails(ILcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method

.method public getViewName()Ljava/lang/String;
    .registers 2

    const-string v0, "新作喵喵看页"

    return-object v0
.end method

.method protected initDelegate()V
    .registers 5

    .line 127
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    new-instance v1, Lcom/codemao/nemo/adapter/NewWorkDelegate;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/codemao/nemo/fragment/NewWorkDetailFragment$3;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/fragment/NewWorkDetailFragment$3;-><init>(Lcom/codemao/nemo/fragment/NewWorkDetailFragment;)V

    invoke-direct {v1, v2, v3}, Lcom/codemao/nemo/adapter/NewWorkDelegate;-><init>(Landroid/content/Context;Lcom/codemao/nemo/adapter/NewWorkDelegate$RecommendWorkCallBack;)V

    invoke-virtual {v0, v1}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    return-void
.end method

.method protected initRecyclerView()V
    .registers 4

    .line 88
    invoke-super {p0}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->initRecyclerView()V

    .line 89
    new-instance v0, Lcom/codemao/nemo/view/WrapGridLayoutmanager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/codemao/nemo/fragment/NewWorkDetailFragment;->mSpanNum:I

    invoke-direct {v0, v1, v2}, Lcom/codemao/nemo/view/WrapGridLayoutmanager;-><init>(Landroid/content/Context;I)V

    .line 90
    iget-object v1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 91
    new-instance v1, Lcom/codemao/nemo/fragment/NewWorkDetailFragment$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/NewWorkDetailFragment$1;-><init>(Lcom/codemao/nemo/fragment/NewWorkDetailFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 103
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    new-instance v1, Lcom/codemao/nemo/fragment/NewWorkDetailFragment$2;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/NewWorkDetailFragment$2;-><init>(Lcom/codemao/nemo/fragment/NewWorkDetailFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method public onResume()V
    .registers 6

    .line 232
    invoke-super {p0}, Lcom/giu/xzz/BaseFragment;->onResume()V

    .line 233
    iget-wide v0, p0, Lcom/codemao/nemo/fragment/NewWorkDetailFragment;->lastRefreshTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/codemao/nemo/fragment/NewWorkDetailFragment;->lastRefreshTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xdbba00

    cmp-long v4, v0, v2

    if-lez v4, :cond_2d

    .line 234
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 235
    invoke-virtual {p0}, Lcom/codemao/nemo/fragment/NewWorkDetailFragment;->showError()V

    return-void

    :cond_27
    const/4 v0, 0x0

    .line 238
    iput v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->offset:I

    .line 239
    invoke-virtual {p0}, Lcom/codemao/nemo/fragment/NewWorkDetailFragment;->getData()V

    .line 241
    :cond_2d
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 242
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

    .line 250
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getWorkId()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 252
    :goto_5
    iget-object v3, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, -0x1

    if-ge v2, v3, :cond_22

    .line 253
    iget-object v3, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/nemo/bean/NewWorkDetailInfo;

    .line 254
    invoke-virtual {v3}, Lcom/codemao/nemo/bean/NewWorkDetailInfo;->getWork_id()J

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

    .line 262
    :cond_26
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/NewWorkDetailInfo;

    .line 264
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getType()I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_6a

    const/4 v3, 0x5

    if-eq v1, v3, :cond_52

    const/4 v3, 0x7

    if-eq v1, v3, :cond_3c

    goto :goto_77

    .line 276
    :cond_3c
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->isPraise()Z

    move-result p1

    .line 277
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/NewWorkDetailInfo;->getLike_times()J

    move-result-wide v5

    if-eqz p1, :cond_47

    const/4 v4, 0x1

    :cond_47
    int-to-long v3, v4

    add-long/2addr v5, v3

    invoke-virtual {v0, v5, v6}, Lcom/codemao/nemo/bean/NewWorkDetailInfo;->setLike_times(J)V

    .line 278
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_77

    .line 270
    :cond_52
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getWorkDetailInfo()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    move-result-object p1

    .line 271
    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getWork_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/NewWorkDetailInfo;->setWork_name(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getPreview()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/bean/NewWorkDetailInfo;->setWork_preview(Ljava/lang/String;)V

    .line 273
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_77

    .line 266
    :cond_6a
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getViewTime()I

    move-result p1

    int-to-long v3, p1

    invoke-virtual {v0, v3, v4}, Lcom/codemao/nemo/bean/NewWorkDetailInfo;->setView_times(J)V

    .line 267
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :goto_77
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    .line 69
    invoke-super {p0, p1, p2}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 71
    iget-boolean p1, p0, Lcom/codemao/nemo/fragment/NewWorkDetailFragment;->isLargePad:Z

    if-eqz p1, :cond_13

    .line 72
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    const/high16 p2, 0x41200000  # 10.0f

    invoke-static {p2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2, v0, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_13
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .registers 2

    .line 341
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    if-eqz p1, :cond_22

    .line 342
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result p1

    if-eqz p1, :cond_22

    .line 343
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

.method public setViewWorkIds(II)Ljava/lang/String;
    .registers 7

    :goto_0
    if-gt p1, p2, :cond_27

    .line 332
    :try_start_2
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->reportViewIds:Ljava/util/Set;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/nemo/bean/NewWorkDetailInfo;

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/NewWorkDetailInfo;->getWork_id()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_24} :catch_24

    :catch_24
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 337
    :cond_27
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->reportViewIds:Ljava/util/Set;

    invoke-static {p1}, Lcom/codemao/nemo/util/StringUtil;->getReportStr(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected showError()V
    .registers 2

    .line 307
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    if-nez v0, :cond_5

    return-void

    .line 310
    :cond_5
    invoke-virtual {p0}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->afterLoading()V

    .line 311
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_15

    .line 312
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->showError()V

    .line 314
    :cond_15
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/NewWorkDetailFragment;->showErrorToast()V

    return-void
.end method
