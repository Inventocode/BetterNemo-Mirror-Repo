.class public Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;
.super Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;
.source "DiscoveryUserSearchFragmentV2.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment<",
        "Lcom/codemao/nemo/bean/DiscoverySearchUserInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private adapterEmpty:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/giu/xzz/adapter/rv/RVBaseAdapter<",
            "Lcom/codemao/nemo/bean/EmptyUserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private content:Ljava/lang/String;

.field private emptyUserInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/EmptyUserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private isNewSearch:Z

.field rvEmpty:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private searchFragmentCallBack:Lcom/codemao/nemo/activity/DiscoverySearchActivity$SearchFragmentCallBack;

.field tvMayLike:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private userDelegate:Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;-><init>()V

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;->isNewSearch:Z

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;)Ljava/util/List;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;->emptyUserInfos:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;->adapterEmpty:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;Lcom/codemao/nemo/bean/DiscoverySearchUsers;)V
    .registers 2

    .line 42
    invoke-direct {p0, p1}, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;->setListData(Lcom/codemao/nemo/bean/DiscoverySearchUsers;)V

    return-void
.end method

.method static synthetic access$300(Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;)V
    .registers 1

    .line 42
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;->showEmpty()V

    return-void
.end method

.method static synthetic access$400(Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;Ljava/util/List;)V
    .registers 2

    .line 42
    invoke-direct {p0, p1}, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;->setEmptyData(Ljava/util/List;)V

    return-void
.end method

.method private getEmptyUsers()V
    .registers 3

    .line 362
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->discoveryFragmentNetUtil:Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;

    new-instance v1, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2$8;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2$8;-><init>(Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->getEmptyUsers(Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method

.method private setEmptyData(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/EmptyUserInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_53

    .line 381
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_53

    .line 384
    :cond_9
    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;->rvEmpty:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/codemao/nemo/view/WrapLinearLayoutmanager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/codemao/nemo/view/WrapLinearLayoutmanager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 385
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;->emptyUserInfos:Ljava/util/List;

    .line 386
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 387
    new-instance p1, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;->emptyUserInfos:Ljava/util/List;

    invoke-direct {p1, v0, v1}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;->adapterEmpty:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 388
    new-instance p1, Lcom/codemao/nemo/adapter/EmptyUserDelegate;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2$9;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2$9;-><init>(Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;)V

    invoke-direct {p1, v0, v1}, Lcom/codemao/nemo/adapter/EmptyUserDelegate;-><init>(Landroid/content/Context;Lcom/codemao/nemo/adapter/EmptyUserDelegate$UserCallBack;)V

    .line 411
    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;->adapterEmpty:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v0, p1}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 412
    iget-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;->rvEmpty:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;->adapterEmpty:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 413
    iget-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;->tvMayLike:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 414
    iget-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;->rvEmpty:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_53
    :goto_53
    return-void
.end method

.method private setListData(Lcom/codemao/nemo/bean/DiscoverySearchUsers;)V
    .registers 10

    .line 271
    invoke-virtual {p0}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->afterLoading()V

    const/4 v0, 0x1

    if-nez p1, :cond_2b

    .line 273
    iget p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->offset:I

    if-nez p1, :cond_14

    .line 274
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 275
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 277
    :cond_14
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_20

    .line 278
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;->showEmpty()V

    goto :goto_25

    .line 280
    :cond_20
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->hide()V

    .line 282
    :goto_25
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    return-void

    .line 285
    :cond_2b
    iget-boolean v1, p0, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;->isNewSearch:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_86

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    .line 286
    iget-object v3, p0, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;->content:Ljava/lang/String;

    aput-object v3, v1, v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/DiscoverySearchUsers;->getTotal()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    const/4 v3, 0x2

    const-string v5, "用户"

    aput-object v5, v1, v3

    const-string v3, "搜索页-主页-发起搜索"

    invoke-static {v3, v1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 287
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v1

    iget-object v6, p0, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;->content:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setSearchName(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/DiscoverySearchUsers;->getTotal()I

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

    .line 288
    iput-boolean v2, p0, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;->isNewSearch:Z

    .line 290
    :cond_86
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/DiscoverySearchUsers;->getItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_115

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/DiscoverySearchUsers;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_98

    goto/16 :goto_115

    .line 304
    :cond_98
    iget-object v1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v1}, Lcom/codemao/nemo/view/LoadView;->hide()V

    .line 305
    iget-object v1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 306
    iget v3, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->offset:I

    if-nez v3, :cond_ad

    .line 308
    iget-object v1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    .line 310
    :cond_ad
    iget-object v3, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/DiscoverySearchUsers;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 311
    iget-object v3, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 312
    iget-boolean v3, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->isLoadMore:Z

    if-eqz v3, :cond_cd

    .line 313
    iget-object v3, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/DiscoverySearchUsers;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v1, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_e6

    .line 315
    :cond_cd
    iget-object v1, p0, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;->userDelegate:Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate;

    invoke-virtual {v1}, Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate;->getNameWitdh()I

    move-result v1

    if-gtz v1, :cond_e1

    .line 316
    iget-object v1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    new-instance v3, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2$7;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2$7;-><init>(Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v3, v4, v5}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 325
    :cond_e1
    iget-object v1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 327
    :goto_e6
    iget v1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->offset:I

    if-nez v1, :cond_ef

    .line 328
    iget-object v1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 330
    :cond_ef
    iget v1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->offset:I

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/DiscoverySearchUsers;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->offset:I

    .line 331
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/DiscoverySearchUsers;->getTotal()I

    move-result p1

    if-ge v1, p1, :cond_104

    const/4 p1, 0x1

    goto :goto_105

    :cond_104
    const/4 p1, 0x0

    :goto_105
    iput-boolean p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->hasMore:Z

    if-nez p1, :cond_10f

    .line 333
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    goto :goto_114

    .line 335
    :cond_10f
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1, v2}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    :goto_114
    return-void

    .line 291
    :cond_115
    :goto_115
    iput-boolean v2, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->hasMore:Z

    .line 292
    iget p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->offset:I

    if-nez p1, :cond_125

    .line 293
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 294
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 296
    :cond_125
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_131

    .line 297
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;->showEmpty()V

    goto :goto_136

    .line 299
    :cond_131
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->hide()V

    .line 301
    :goto_136
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    return-void
.end method

.method private showEmpty()V
    .registers 2

    .line 357
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->showEmpty()V

    .line 358
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;->getEmptyUsers()V

    return-void
.end method


# virtual methods
.method protected contentViewId()I
    .registers 2

    const v0, 0x7f0d014e

    return v0
.end method

.method follow(JI)V
    .registers 8

    .line 104
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 105
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 109
    :cond_12
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v0

    if-nez v0, :cond_23

    .line 110
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    const-string p3, "搜索页-主页-点击前往登录（关注）"

    invoke-static {p1, p3, p2}, Lcom/codemao/nemo/view/UnLoginXpopup;->showUnLoginForRecordHobbiesTipsDialog(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 114
    :cond_23
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/DiscoverySearchUserInfo;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/DiscoverySearchUserInfo;->isFollowed()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_5e

    .line 115
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setFollowUserId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object v0

    const-string v1, "搜索页-主页-点击取消关注"

    invoke-static {v1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 116
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->discoveryFragmentNetUtil:Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;

    new-instance v1, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2$2;

    invoke-direct {v1, p0, p3}, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2$2;-><init>(Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;I)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->cancelFollowUser(JLcom/codemao/nemo/http/LocalNetCallBackV2;)V

    goto :goto_a0

    :cond_5e
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "搜索页-主页-点击关注"

    invoke-static {v2, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 136
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setFollowUserId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 137
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->discoveryFragmentNetUtil:Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;

    new-instance v1, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2$3;

    invoke-direct {v1, p0, p3}, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2$3;-><init>(Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;I)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->followUser(JLcom/codemao/nemo/http/LocalNetCallBackV2;)V

    :goto_a0
    return-void
.end method

.method followEmpty(JI)V
    .registers 8

    .line 158
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 159
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 162
    :cond_12
    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;->emptyUserInfos:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/EmptyUserInfo;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/EmptyUserInfo;->isIs_attention()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_4d

    .line 163
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setFollowUserId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object v0

    const-string v1, "搜索页-主页-点击取消关注"

    invoke-static {v1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 164
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->discoveryFragmentNetUtil:Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;

    new-instance v1, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2$4;

    invoke-direct {v1, p0, p3}, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2$4;-><init>(Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;I)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->cancelFollowUser(JLcom/codemao/nemo/http/LocalNetCallBackV2;)V

    goto :goto_8f

    :cond_4d
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 183
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "搜索页-主页-点击关注"

    invoke-static {v2, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 184
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setFollowUserId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 185
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->discoveryFragmentNetUtil:Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;

    new-instance v1, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2$5;

    invoke-direct {v1, p0, p3}, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2$5;-><init>(Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;I)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->followUser(JLcom/codemao/nemo/http/LocalNetCallBackV2;)V

    :goto_8f
    return-void
.end method

.method protected getData()V
    .registers 5

    const/4 v0, 0x1

    .line 231
    iput-boolean v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->isLoading:Z

    .line 233
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->discoveryFragmentNetUtil:Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;

    iget-object v1, p0, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;->content:Ljava/lang/String;

    iget v2, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->offset:I

    new-instance v3, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2$6;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2$6;-><init>(Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->searchUser(Ljava/lang/String;ILcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method

.method hideInput(Landroid/view/View;)V
    .registers 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 224
    iget-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;->searchFragmentCallBack:Lcom/codemao/nemo/activity/DiscoverySearchActivity$SearchFragmentCallBack;

    if-eqz p1, :cond_7

    .line 225
    invoke-interface {p1}, Lcom/codemao/nemo/activity/DiscoverySearchActivity$SearchFragmentCallBack;->hideInput()V

    :cond_7
    return-void
.end method

.method protected initDelegate()V
    .registers 4

    .line 79
    new-instance v0, Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2$1;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2$1;-><init>(Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;)V

    invoke-direct {v0, v1, v2}, Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate;-><init>(Landroid/content/Context;Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate$UserCallBack;)V

    iput-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;->userDelegate:Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate;

    .line 98
    iget-object v1, p0, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate;->setKey(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    iget-object v1, p0, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;->userDelegate:Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate;

    invoke-virtual {v0, v1}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 207
    invoke-super {p0, p1}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->onCreate(Landroid/os/Bundle;)V

    .line 208
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 209
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "content"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;->content:Ljava/lang/String;

    .line 211
    :cond_15
    iget-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;->userDelegate:Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate;

    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate;->setKey(Ljava/lang/String;)V

    return-void
.end method

.method public onFollowUserEvent(Lcom/codemao/nemo/event/FollowUserEvents;)V
    .registers 11
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 420
    :goto_2
    iget-object v2, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, -0x1

    if-ge v1, v2, :cond_23

    .line 421
    iget-object v2, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/nemo/bean/DiscoverySearchUserInfo;

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/DiscoverySearchUserInfo;->getId()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/codemao/nemo/event/FollowUserEvents;->getUserId()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-nez v2, :cond_20

    goto :goto_24

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_23
    const/4 v1, -0x1

    :goto_24
    const/4 v2, 0x1

    if-eq v1, v3, :cond_4c

    .line 427
    invoke-virtual {p1}, Lcom/codemao/nemo/event/FollowUserEvents;->getType()I

    move-result v4

    if-eqz v4, :cond_3c

    if-eq v4, v2, :cond_30

    goto :goto_47

    .line 432
    :cond_30
    iget-object v4, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/codemao/nemo/bean/DiscoverySearchUserInfo;

    invoke-virtual {v4, v0}, Lcom/codemao/nemo/bean/DiscoverySearchUserInfo;->setFollowed(Z)V

    goto :goto_47

    .line 429
    :cond_3c
    iget-object v4, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/codemao/nemo/bean/DiscoverySearchUserInfo;

    invoke-virtual {v4, v2}, Lcom/codemao/nemo/bean/DiscoverySearchUserInfo;->setFollowed(Z)V

    .line 435
    :goto_47
    iget-object v4, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_4c
    const/4 v1, 0x0

    .line 439
    :goto_4d
    iget-object v4, p0, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;->emptyUserInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_6d

    .line 440
    iget-object v4, p0, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;->emptyUserInfos:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/codemao/nemo/bean/EmptyUserInfo;

    invoke-virtual {v4}, Lcom/codemao/nemo/bean/EmptyUserInfo;->getUser_id()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/codemao/nemo/event/FollowUserEvents;->getUserId()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_6a

    goto :goto_6e

    :cond_6a
    add-int/lit8 v1, v1, 0x1

    goto :goto_4d

    :cond_6d
    const/4 v1, -0x1

    :goto_6e
    if-eq v1, v3, :cond_95

    .line 446
    invoke-virtual {p1}, Lcom/codemao/nemo/event/FollowUserEvents;->getType()I

    move-result p1

    if-eqz p1, :cond_85

    if-eq p1, v2, :cond_79

    goto :goto_90

    .line 451
    :cond_79
    iget-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;->emptyUserInfos:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/EmptyUserInfo;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/EmptyUserInfo;->setIs_attention(Z)V

    goto :goto_90

    .line 448
    :cond_85
    iget-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;->emptyUserInfos:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/EmptyUserInfo;

    invoke-virtual {p1, v2}, Lcom/codemao/nemo/bean/EmptyUserInfo;->setIs_attention(Z)V

    .line 454
    :goto_90
    iget-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;->adapterEmpty:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_95
    return-void
.end method

.method public onUserInfoChanged()V
    .registers 2

    .line 216
    invoke-super {p0}, Lcom/giu/xzz/BaseFragment;->onUserInfoChanged()V

    const/4 v0, 0x0

    .line 217
    iput v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->offset:I

    .line 218
    invoke-virtual {p0}, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;->getData()V

    return-void
.end method
