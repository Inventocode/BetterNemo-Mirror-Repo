.class public Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;
.super Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;
.source "DiscoveryWorkSearchFragmentV2.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment<",
        "Lcom/codemao/nemo/bean/DiscoverySearchWorkInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private adapterEmpty:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/giu/xzz/adapter/rv/RVBaseAdapter<",
            "Lcom/codemao/nemo/bean/CollectWorkInfo;",
            ">;"
        }
    .end annotation
.end field

.field private content:Ljava/lang/String;

.field private dataEmpty:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/CollectWorkInfo;",
            ">;"
        }
    .end annotation
.end field

.field private isNewSearch:Z

.field private isPad:Z

.field private mSpanNum:I

.field rvEmpty:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private searchFragmentCallBack:Lcom/codemao/nemo/activity/DiscoverySearchActivity$SearchFragmentCallBack;

.field tvMayLike:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private workDelegate:Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;->dataEmpty:Ljava/util/List;

    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;->isNewSearch:Z

    .line 62
    iput v0, p0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;->mSpanNum:I

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;)Z
    .registers 1

    .line 43
    iget-boolean p0, p0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;->isPad:Z

    return p0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;)I
    .registers 1

    .line 43
    iget p0, p0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;->mSpanNum:I

    return p0
.end method

.method static synthetic access$200(Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;Ljava/util/List;)V
    .registers 2

    .line 43
    invoke-direct {p0, p1}, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;->setEmptyData(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;Lcom/codemao/nemo/bean/DiscoverySearchWorks;)V
    .registers 2

    .line 43
    invoke-direct {p0, p1}, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;->setListData(Lcom/codemao/nemo/bean/DiscoverySearchWorks;)V

    return-void
.end method

.method static synthetic access$400(Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;)V
    .registers 1

    .line 43
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;->showEmpty()V

    return-void
.end method

.method private getEmptyWorks()V
    .registers 3

    .line 190
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->discoveryFragmentNetUtil:Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;

    new-instance v1, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2$4;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2$4;-><init>(Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->getEmptyWorks(Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method

.method public static getInstance(Ljava/lang/String;Lcom/codemao/nemo/activity/DiscoverySearchActivity$SearchFragmentCallBack;)Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;
    .registers 4

    .line 70
    new-instance v0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;

    invoke-direct {v0}, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;-><init>()V

    .line 71
    invoke-direct {v0, p1}, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;->setSearchFragmentCallBack(Lcom/codemao/nemo/activity/DiscoverySearchActivity$SearchFragmentCallBack;)V

    .line 72
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "content"

    .line 73
    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private setEmptyData(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/CollectWorkInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_53

    .line 209
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_53

    .line 212
    :cond_9
    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;->rvEmpty:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/codemao/nemo/view/WrapLinearLayoutmanager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/codemao/nemo/view/WrapLinearLayoutmanager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;->dataEmpty:Ljava/util/List;

    .line 214
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 215
    new-instance p1, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;->dataEmpty:Ljava/util/List;

    invoke-direct {p1, v0, v1}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;->adapterEmpty:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 216
    new-instance p1, Lcom/codemao/nemo/adapter/EmptyWorkDelegate;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2$5;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2$5;-><init>(Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;)V

    invoke-direct {p1, v0, v1}, Lcom/codemao/nemo/adapter/EmptyWorkDelegate;-><init>(Landroid/content/Context;Lcom/codemao/nemo/adapter/EmptyWorkDelegate$EmptyWorkCallBack;)V

    .line 230
    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;->adapterEmpty:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v0, p1}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 231
    iget-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;->rvEmpty:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;->adapterEmpty:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 232
    iget-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;->rvEmpty:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 233
    iget-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;->tvMayLike:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_53
    :goto_53
    return-void
.end method

.method private setListData(Lcom/codemao/nemo/bean/DiscoverySearchWorks;)V
    .registers 10

    .line 278
    invoke-virtual {p0}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->afterLoading()V

    const/4 v0, 0x1

    if-nez p1, :cond_2b

    .line 280
    iget p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->offset:I

    if-nez p1, :cond_14

    .line 281
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 282
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 284
    :cond_14
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_20

    .line 285
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;->showEmpty()V

    goto :goto_25

    .line 287
    :cond_20
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->hide()V

    .line 289
    :goto_25
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    return-void

    .line 292
    :cond_2b
    iget-boolean v1, p0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;->isNewSearch:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_86

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    .line 293
    iget-object v3, p0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;->content:Ljava/lang/String;

    aput-object v3, v1, v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/DiscoverySearchWorks;->getTotal()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    const/4 v3, 0x2

    const-string v5, "作品"

    aput-object v5, v1, v3

    const-string v3, "搜索页-主页-发起搜索"

    invoke-static {v3, v1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 294
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v1

    iget-object v6, p0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;->content:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setSearchName(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/DiscoverySearchWorks;->getTotal()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkCount(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setSearchType(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 296
    iput-boolean v2, p0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;->isNewSearch:Z

    .line 298
    :cond_86
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/DiscoverySearchWorks;->getItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_115

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/DiscoverySearchWorks;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_98

    goto/16 :goto_115

    .line 312
    :cond_98
    iget-object v1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v1}, Lcom/codemao/nemo/view/LoadView;->hide()V

    .line 313
    iget-object v1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 314
    iget v3, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->offset:I

    if-nez v3, :cond_ad

    .line 316
    iget-object v1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    .line 318
    :cond_ad
    iget-object v3, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/DiscoverySearchWorks;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 319
    iget-object v3, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 320
    iget-boolean v3, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->isLoadMore:Z

    if-eqz v3, :cond_cd

    .line 321
    iget-object v3, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/DiscoverySearchWorks;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v1, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_e6

    .line 323
    :cond_cd
    iget-object v1, p0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;->workDelegate:Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate;

    invoke-virtual {v1}, Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate;->getNameWitdh()I

    move-result v1

    if-gtz v1, :cond_e1

    .line 324
    iget-object v1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    new-instance v3, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2$7;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2$7;-><init>(Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v3, v4, v5}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 334
    :cond_e1
    iget-object v1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 336
    :goto_e6
    iget v1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->offset:I

    if-nez v1, :cond_ef

    .line 337
    iget-object v1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 339
    :cond_ef
    iget v1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->offset:I

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/DiscoverySearchWorks;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->offset:I

    .line 340
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/DiscoverySearchWorks;->getTotal()I

    move-result p1

    if-ge v1, p1, :cond_104

    const/4 p1, 0x1

    goto :goto_105

    :cond_104
    const/4 p1, 0x0

    :goto_105
    iput-boolean p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->hasMore:Z

    if-nez p1, :cond_10f

    .line 342
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    goto :goto_114

    .line 344
    :cond_10f
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1, v2}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    :goto_114
    return-void

    .line 299
    :cond_115
    :goto_115
    iget p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->offset:I

    if-nez p1, :cond_123

    .line 300
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 301
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 303
    :cond_123
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_12f

    .line 304
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;->showEmpty()V

    goto :goto_134

    .line 306
    :cond_12f
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->hide()V

    .line 308
    :goto_134
    iput-boolean v2, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->hasMore:Z

    .line 309
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    return-void
.end method

.method private setSearchFragmentCallBack(Lcom/codemao/nemo/activity/DiscoverySearchActivity$SearchFragmentCallBack;)V
    .registers 2

    .line 79
    iput-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;->searchFragmentCallBack:Lcom/codemao/nemo/activity/DiscoverySearchActivity$SearchFragmentCallBack;

    return-void
.end method

.method private showEmpty()V
    .registers 2

    .line 185
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->showEmpty()V

    .line 186
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;->getEmptyWorks()V

    return-void
.end method


# virtual methods
.method protected contentViewId()I
    .registers 2

    .line 84
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;->isPad:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x2

    .line 86
    iput v0, p0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;->mSpanNum:I

    :cond_b
    const v0, 0x7f0d014e

    return v0
.end method

.method protected getData()V
    .registers 5

    const/4 v0, 0x1

    .line 238
    iput-boolean v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->isLoading:Z

    .line 239
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->discoveryFragmentNetUtil:Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;

    iget-object v1, p0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;->content:Ljava/lang/String;

    iget v2, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->offset:I

    new-instance v3, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2$6;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2$6;-><init>(Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->searchWork(Ljava/lang/String;ILcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method

.method hideInput(Landroid/view/View;)V
    .registers 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 163
    iget-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;->searchFragmentCallBack:Lcom/codemao/nemo/activity/DiscoverySearchActivity$SearchFragmentCallBack;

    if-eqz p1, :cond_7

    .line 164
    invoke-interface {p1}, Lcom/codemao/nemo/activity/DiscoverySearchActivity$SearchFragmentCallBack;->hideInput()V

    :cond_7
    return-void
.end method

.method protected initDelegate()V
    .registers 4

    .line 134
    new-instance v0, Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2$3;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2$3;-><init>(Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;)V

    invoke-direct {v0, v1, v2}, Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate;-><init>(Landroid/content/Context;Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate$WorkCallBack;)V

    iput-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;->workDelegate:Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate;

    .line 146
    iget-object v1, p0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate;->setKey(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    iget-object v1, p0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;->workDelegate:Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate;

    invoke-virtual {v0, v1}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    return-void
.end method

.method protected initRecyclerView()V
    .registers 4

    .line 93
    invoke-super {p0}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->initRecyclerView()V

    .line 94
    new-instance v0, Lcom/codemao/nemo/view/WrapGridLayoutmanager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;->mSpanNum:I

    invoke-direct {v0, v1, v2}, Lcom/codemao/nemo/view/WrapGridLayoutmanager;-><init>(Landroid/content/Context;I)V

    .line 95
    new-instance v1, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2$1;-><init>(Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 104
    iget-object v1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 106
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    new-instance v1, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2$2;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2$2;-><init>(Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 153
    invoke-super {p0, p1}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->onCreate(Landroid/os/Bundle;)V

    .line 154
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 155
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "content"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;->content:Ljava/lang/String;

    .line 157
    :cond_15
    iget-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;->workDelegate:Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate;

    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate;->setKey(Ljava/lang/String;)V

    return-void
.end method

.method public onUpdateWorkInfoEvent(Lcom/codemao/nemo/event/UpdateWorkInfoEvents;)V
    .registers 18
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    move-object/from16 v0, p0

    .line 351
    invoke-virtual/range {p1 .. p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getWorkId()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 353
    :goto_a
    iget-object v7, v0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_26

    .line 354
    iget-object v7, v0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/codemao/nemo/bean/DiscoverySearchWorkInfo;

    invoke-virtual {v7}, Lcom/codemao/nemo/bean/DiscoverySearchWorkInfo;->getId()J

    move-result-wide v7

    cmp-long v9, v7, v1

    if-nez v9, :cond_23

    move v6, v5

    :cond_23
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_26
    const-wide/16 v7, 0x0

    const/4 v5, 0x7

    const/4 v9, 0x6

    const/4 v10, 0x5

    const/4 v11, 0x1

    if-eq v6, v4, :cond_b0

    .line 359
    iget-object v12, v0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/codemao/nemo/bean/DiscoverySearchWorkInfo;

    .line 360
    invoke-virtual/range {p1 .. p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getType()I

    move-result v13

    if-eqz v13, :cond_a4

    const/4 v14, 0x4

    if-eq v13, v14, :cond_97

    if-eq v13, v10, :cond_7f

    if-eq v13, v9, :cond_5d

    if-eq v13, v5, :cond_46

    goto :goto_b0

    .line 376
    :cond_46
    invoke-virtual/range {p1 .. p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->isPraise()Z

    move-result v13

    .line 377
    invoke-virtual {v12}, Lcom/codemao/nemo/bean/DiscoverySearchWorkInfo;->getPraise_times()I

    move-result v14

    if-eqz v13, :cond_52

    const/4 v13, 0x1

    goto :goto_53

    :cond_52
    const/4 v13, -0x1

    :goto_53
    add-int/2addr v14, v13

    invoke-virtual {v12, v14}, Lcom/codemao/nemo/bean/DiscoverySearchWorkInfo;->setPraise_times(I)V

    .line 378
    iget-object v12, v0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v12, v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_b0

    .line 370
    :cond_5d
    iget-object v12, v0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/codemao/nemo/bean/DiscoverySearchWorkInfo;

    invoke-virtual {v12, v7, v8}, Lcom/codemao/nemo/bean/DiscoverySearchWorkInfo;->setPublish_time(J)V

    .line 371
    iget-object v12, v0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {v12, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 372
    iget-object v12, v0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v12, v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 373
    iget-object v12, v0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    iget-object v13, v0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    sub-int/2addr v13, v6

    invoke-virtual {v12, v6, v13}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    goto :goto_b0

    .line 381
    :cond_7f
    invoke-virtual/range {p1 .. p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getWorkDetailInfo()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    move-result-object v13

    .line 382
    invoke-virtual {v13}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getWork_name()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/codemao/nemo/bean/DiscoverySearchWorkInfo;->setWork_name(Ljava/lang/String;)V

    .line 383
    invoke-virtual {v13}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getPreview()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/codemao/nemo/bean/DiscoverySearchWorkInfo;->setPreview(Ljava/lang/String;)V

    .line 384
    iget-object v12, v0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v12, v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_b0

    .line 366
    :cond_97
    invoke-virtual/range {p1 .. p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getCommentTime()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/codemao/nemo/bean/DiscoverySearchWorkInfo;->setComment_times(I)V

    .line 367
    iget-object v12, v0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v12, v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_b0

    .line 362
    :cond_a4
    invoke-virtual/range {p1 .. p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getNewWorkName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/codemao/nemo/bean/DiscoverySearchWorkInfo;->setWork_name(Ljava/lang/String;)V

    .line 363
    iget-object v12, v0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v12, v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_b0
    :goto_b0
    const/4 v12, -0x1

    .line 391
    :goto_b1
    iget-object v13, v0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;->dataEmpty:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v3, v13, :cond_cd

    .line 392
    iget-object v13, v0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;->dataEmpty:Ljava/util/List;

    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/codemao/nemo/bean/CollectWorkInfo;

    invoke-virtual {v13}, Lcom/codemao/nemo/bean/CollectWorkInfo;->getId()J

    move-result-wide v13

    cmp-long v15, v13, v1

    if-nez v15, :cond_ca

    move v12, v3

    :cond_ca
    add-int/lit8 v3, v3, 0x1

    goto :goto_b1

    :cond_cd
    if-eq v12, v4, :cond_13f

    .line 398
    iget-object v1, v0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;->dataEmpty:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/bean/CollectWorkInfo;

    .line 399
    invoke-virtual/range {p1 .. p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getType()I

    move-result v2

    if-eqz v2, :cond_133

    if-eq v2, v10, :cond_11b

    if-eq v2, v9, :cond_f9

    if-eq v2, v5, :cond_e4

    goto :goto_13f

    .line 411
    :cond_e4
    invoke-virtual/range {p1 .. p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->isPraise()Z

    move-result v2

    .line 412
    invoke-virtual {v1}, Lcom/codemao/nemo/bean/CollectWorkInfo;->getLikes_count()I

    move-result v3

    if-eqz v2, :cond_ef

    const/4 v4, 0x1

    :cond_ef
    add-int/2addr v3, v4

    invoke-virtual {v1, v3}, Lcom/codemao/nemo/bean/CollectWorkInfo;->setLikes_count(I)V

    .line 413
    iget-object v1, v0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;->adapterEmpty:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v1, v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_13f

    .line 405
    :cond_f9
    iget-object v1, v0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;->dataEmpty:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/bean/CollectWorkInfo;

    invoke-virtual {v1, v7, v8}, Lcom/codemao/nemo/bean/CollectWorkInfo;->setPublish_time(J)V

    .line 406
    iget-object v1, v0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;->dataEmpty:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 407
    iget-object v1, v0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;->adapterEmpty:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v1, v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 408
    iget-object v1, v0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;->adapterEmpty:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    iget-object v2, v0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;->dataEmpty:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v6

    invoke-virtual {v1, v6, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    goto :goto_13f

    .line 416
    :cond_11b
    invoke-virtual/range {p1 .. p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getWorkDetailInfo()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    move-result-object v2

    .line 417
    invoke-virtual {v2}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getWork_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/codemao/nemo/bean/CollectWorkInfo;->setName(Ljava/lang/String;)V

    .line 418
    invoke-virtual {v2}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getPreview()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/codemao/nemo/bean/CollectWorkInfo;->setPreview(Ljava/lang/String;)V

    .line 419
    iget-object v1, v0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;->adapterEmpty:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v1, v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_13f

    .line 401
    :cond_133
    invoke-virtual/range {p1 .. p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getNewWorkName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/codemao/nemo/bean/CollectWorkInfo;->setName(Ljava/lang/String;)V

    .line 402
    iget-object v1, v0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;->adapterEmpty:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v1, v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_13f
    :goto_13f
    return-void
.end method

.method public scrollToTop()V
    .registers 3

    .line 426
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 427
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_8
    return-void
.end method

.method public setNewContent(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    .line 169
    iput-boolean v0, p0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;->isNewSearch:Z

    .line 170
    iput-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;->content:Ljava/lang/String;

    .line 171
    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;->workDelegate:Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate;

    if-nez v0, :cond_a

    return-void

    .line 174
    :cond_a
    invoke-virtual {v0, p1}, Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate;->setKey(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 175
    iput p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->offset:I

    .line 176
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showLoading()V

    .line 177
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_25

    .line 178
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showError()V

    return-void

    .line 181
    :cond_25
    invoke-virtual {p0}, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;->getData()V

    return-void
.end method
