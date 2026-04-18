.class public Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;
.super Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;
.source "UserDetailWorkListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment<",
        "Lcom/codemao/nemo/bean/UserPublishedWorkInfoV2;",
        ">;"
    }
.end annotation


# instance fields
.field private header:Landroid/view/View;

.field private isOwner:Z

.field private total:I

.field tvHotest:Landroid/widget/TextView;

.field tvLatest:Landroid/widget/TextView;

.field tvWorksNum:Landroid/widget/TextView;

.field private type:Ljava/lang/String;

.field private userId:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 31
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;->total:I

    const-string v1, "newest"

    .line 35
    iput-object v1, p0, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;->type:Ljava/lang/String;

    .line 41
    iput-boolean v0, p0, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;->isOwner:Z

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;)Z
    .registers 1

    .line 31
    iget-boolean p0, p0, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;->isOwner:Z

    return p0
.end method

.method static synthetic access$102(Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 31
    iput-object p1, p0, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;->type:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;Lcom/codemao/nemo/bean/UserPublisWorksV2;)V
    .registers 2

    .line 31
    invoke-direct {p0, p1}, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;->setListData(Lcom/codemao/nemo/bean/UserPublisWorksV2;)V

    return-void
.end method

.method private getHeaderCount()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public static getInstance(J)Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;
    .registers 5

    .line 44
    new-instance v0, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;

    invoke-direct {v0}, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;-><init>()V

    .line 45
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "userId"

    .line 46
    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 47
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private setListData(Lcom/codemao/nemo/bean/UserPublisWorksV2;)V
    .registers 7

    const/4 v0, 0x1

    if-nez p1, :cond_1a

    .line 180
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    .line 181
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_14

    .line 182
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;->showEmpty()V

    goto :goto_19

    .line 184
    :cond_14
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->hide()V

    :goto_19
    return-void

    .line 188
    :cond_1a
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserPublisWorksV2;->getTotal()I

    move-result v1

    iput v1, p0, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;->total:I

    .line 189
    iget-object v1, p0, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;->tvWorksNum:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "全部作品("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;->total:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserPublisWorksV2;->getItems()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_bd

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserPublisWorksV2;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_4f

    goto :goto_bd

    .line 200
    :cond_4f
    iget-object v1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v1}, Lcom/codemao/nemo/view/LoadView;->hide()V

    .line 201
    iget-object v1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 202
    iget v3, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->offset:I

    if-nez v3, :cond_64

    .line 204
    iget-object v1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    .line 206
    :cond_64
    iget-object v3, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserPublisWorksV2;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 207
    iget-object v3, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 208
    iget-boolean v3, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->isLoadMore:Z

    if-eqz v3, :cond_89

    .line 209
    iget-object v3, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-direct {p0}, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;->getHeaderCount()I

    move-result v4

    add-int/2addr v1, v4

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserPublisWorksV2;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v1, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_8e

    .line 211
    :cond_89
    iget-object v1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 214
    :goto_8e
    iget v1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->offset:I

    if-nez v1, :cond_97

    .line 215
    iget-object v1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 217
    :cond_97
    iget v1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->offset:I

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserPublisWorksV2;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->offset:I

    .line 218
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserPublisWorksV2;->getTotal()I

    move-result p1

    if-ge v1, p1, :cond_ac

    const/4 p1, 0x1

    goto :goto_ad

    :cond_ac
    const/4 p1, 0x0

    :goto_ad
    iput-boolean p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->hasMore:Z

    if-nez p1, :cond_b7

    .line 220
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    goto :goto_bc

    .line 222
    :cond_b7
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1, v2}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    :goto_bc
    return-void

    .line 191
    :cond_bd
    :goto_bd
    iput-boolean v2, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->hasMore:Z

    .line 192
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    .line 193
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_d0

    .line 194
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;->showEmpty()V

    goto :goto_d5

    .line 196
    :cond_d0
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->hide()V

    :goto_d5
    return-void
.end method

.method private showEmpty()V
    .registers 2

    .line 300
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->showEmpty()V

    return-void
.end method


# virtual methods
.method protected contentViewId()I
    .registers 2

    const v0, 0x7f0d016e

    return v0
.end method

.method protected getData()V
    .registers 8

    const/4 v0, 0x1

    .line 135
    iput-boolean v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->isLoading:Z

    .line 136
    invoke-static {}, Lcom/giu/xzz/http/RetrofitManager;->get()Lcom/giu/xzz/http/RetrofitManager;

    move-result-object v0

    const-class v1, Lcom/codemao/nemo/retrofit/api/UserService;

    invoke-virtual {v0, v1}, Lcom/giu/xzz/http/RetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/codemao/nemo/retrofit/api/UserService;

    iget-wide v2, p0, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;->userId:J

    iget-object v4, p0, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;->type:Ljava/lang/String;

    iget v5, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->offset:I

    const/16 v6, 0xf

    invoke-interface/range {v1 .. v6}, Lcom/codemao/nemo/retrofit/api/UserService;->getUserWorkList(JLjava/lang/String;II)Lio/reactivex/Observable;

    move-result-object v0

    .line 137
    invoke-static {}, Lcom/giu/xzz/http/transform/ThreadTransformer;->create()Lcom/giu/xzz/http/transform/ThreadTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 138
    invoke-virtual {p0}, Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment$4;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment$4;-><init>(Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;)V

    .line 139
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method protected initDelegate()V
    .registers 5

    .line 71
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    new-instance v1, Lcom/codemao/nemo/adapter/UserDetailWorkDelegate;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment$1;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment$1;-><init>(Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;)V

    invoke-direct {v1, v2, v3}, Lcom/codemao/nemo/adapter/UserDetailWorkDelegate;-><init>(Landroid/content/Context;Lcom/codemao/nemo/adapter/UserDetailWorkDelegate$MyPublishWorkCallBack;)V

    invoke-virtual {v0, v1}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    .line 54
    invoke-super {p0, p1}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "userId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;->userId:J

    const/4 p1, 0x0

    .line 57
    :try_start_10
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object v0

    if-eqz v0, :cond_2a

    iget-wide v0, p0, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;->userId:J

    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object v2

    invoke-virtual {v2}, Lcn/codemao/android/account/bean/UserInfoVO;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_2a

    const/4 v0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    iput-boolean v0, p0, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;->isOwner:Z
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2d} :catch_2e

    goto :goto_30

    .line 59
    :catch_2e
    iput-boolean p1, p0, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;->isOwner:Z

    :goto_30
    return-void
.end method

.method public onUpdateWorkInfoEvent(Lcom/codemao/nemo/event/UpdateWorkInfoEvents;)V
    .registers 10
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 228
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getWorkId()J

    move-result-wide v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 230
    :goto_7
    iget-object v5, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_23

    .line 231
    iget-object v5, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/codemao/nemo/bean/UserPublishedWorkInfoV2;

    .line 232
    invoke-virtual {v5}, Lcom/codemao/nemo/bean/UserPublishedWorkInfoV2;->getId()J

    move-result-wide v5

    cmp-long v7, v5, v0

    if-nez v7, :cond_20

    move v4, v3

    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_23
    if-ne v4, v2, :cond_26

    return-void

    .line 239
    :cond_26
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/UserPublishedWorkInfoV2;

    .line 241
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getType()I

    move-result v1

    if-eqz v1, :cond_ff

    const/4 v3, 0x2

    if-eq v1, v3, :cond_eb

    const/4 v3, 0x3

    if-eq v1, v3, :cond_d7

    const/4 v3, 0x5

    if-eq v1, v3, :cond_b8

    const/4 v3, 0x6

    const/4 v5, 0x1

    if-eq v1, v3, :cond_63

    const/4 v3, 0x7

    if-eq v1, v3, :cond_46

    goto/16 :goto_110

    .line 277
    :cond_46
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->isPraise()Z

    move-result p1

    if-eqz v0, :cond_110

    .line 279
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/UserPublishedWorkInfoV2;->getLiked_times()I

    move-result v1

    if-eqz p1, :cond_53

    const/4 v2, 0x1

    :cond_53
    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/UserPublishedWorkInfoV2;->setLiked_times(I)V

    .line 280
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-direct {p0}, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;->getHeaderCount()I

    move-result v0

    add-int/2addr v4, v0

    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto/16 :goto_110

    :cond_63
    if-eqz v0, :cond_a2

    .line 261
    iget p1, p0, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;->total:I

    sub-int/2addr p1, v5

    iput p1, p0, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;->total:I

    .line 262
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;->tvWorksNum:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "全部作品("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;->total:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-direct {p0}, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;->getHeaderCount()I

    move-result v0

    add-int/2addr v0, v4

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 264
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-direct {p0}, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;->getHeaderCount()I

    move-result v0

    add-int/2addr v0, v4

    iget-object v1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 267
    :cond_a2
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_110

    .line 268
    iget-boolean p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->hasMore:Z

    if-eqz p1, :cond_b4

    .line 269
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->loadMore()V

    goto :goto_110

    .line 271
    :cond_b4
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;->showEmpty()V

    goto :goto_110

    .line 284
    :cond_b8
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getWorkDetailInfo()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    move-result-object p1

    if-eqz v0, :cond_110

    .line 286
    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getWork_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/UserPublishedWorkInfoV2;->setWork_name(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getPreview()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/bean/UserPublishedWorkInfoV2;->setPreview(Ljava/lang/String;)V

    .line 288
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-direct {p0}, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;->getHeaderCount()I

    move-result v0

    add-int/2addr v4, v0

    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_110

    :cond_d7
    if-eqz v0, :cond_110

    .line 248
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getViewTime()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/bean/UserPublishedWorkInfoV2;->setView_times(I)V

    .line 249
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-direct {p0}, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;->getHeaderCount()I

    move-result v0

    add-int/2addr v4, v0

    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_110

    :cond_eb
    if-eqz v0, :cond_110

    .line 254
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getCollecTime()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/bean/UserPublishedWorkInfoV2;->setCollect_times(I)V

    .line 255
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-direct {p0}, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;->getHeaderCount()I

    move-result v0

    add-int/2addr v4, v0

    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_110

    .line 243
    :cond_ff
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getNewWorkName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/bean/UserPublishedWorkInfoV2;->setWork_name(Ljava/lang/String;)V

    .line 244
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-direct {p0}, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;->getHeaderCount()I

    move-result v0

    add-int/2addr v4, v0

    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_110
    :goto_110
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5

    .line 90
    invoke-super {p0, p1, p2}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0d017d

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;->header:Landroid/view/View;

    .line 92
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;->header:Landroid/view/View;

    const p2, 0x7f0a0862

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;->tvHotest:Landroid/widget/TextView;

    .line 94
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;->header:Landroid/view/View;

    const p2, 0x7f0a0928

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;->tvWorksNum:Landroid/widget/TextView;

    .line 95
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;->header:Landroid/view/View;

    const p2, 0x7f0a0872

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;->tvLatest:Landroid/widget/TextView;

    .line 96
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    iget-object p2, p0, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;->header:Landroid/view/View;

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->addHeadView(Landroid/view/View;)V

    .line 97
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;->tvLatest:Landroid/widget/TextView;

    new-instance p2, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment$2;

    invoke-direct {p2, p0}, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment$2;-><init>(Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;->tvHotest:Landroid/widget/TextView;

    new-instance p2, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment$3;

    invoke-direct {p2, p0}, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment$3;-><init>(Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
