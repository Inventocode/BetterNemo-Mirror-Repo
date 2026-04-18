.class public Lcom/codemao/nemo/fragment/PublishSearchFragment;
.super Lcom/giu/xzz/BaseFragment;
.source "PublishSearchFragment.java"

# interfaces
.implements Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$LoadingListener;


# instance fields
.field private adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/giu/xzz/adapter/rv/RVBaseAdapter<",
            "Lcom/codemao/nemo/bean/PublishSearchData$PublishData;",
            ">;"
        }
    .end annotation
.end field

.field private hasMore:Z

.field private keyword:Ljava/lang/String;

.field private mDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/PublishSearchData$PublishData;",
            ">;"
        }
    .end annotation
.end field

.field mLoadView:Lcom/codemao/nemo/view/LoadView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mSearchItemDelegate:Lcom/codemao/nemo/delegates/PublishSearchItemDelegate;

.field offset:I

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
    .registers 2

    .line 49
    invoke-direct {p0}, Lcom/giu/xzz/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment;->offset:I

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment;->mDatas:Ljava/util/List;

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment;->hasMore:Z

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/fragment/PublishSearchFragment;)V
    .registers 1

    .line 49
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/PublishSearchFragment;->initData()V

    return-void
.end method

.method static synthetic access$100(Lcom/codemao/nemo/fragment/PublishSearchFragment;)Ljava/lang/String;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment;->keyword:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/nemo/fragment/PublishSearchFragment;)Ljava/util/List;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment;->mDatas:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$302(Lcom/codemao/nemo/fragment/PublishSearchFragment;Z)Z
    .registers 2

    .line 49
    iput-boolean p1, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment;->hasMore:Z

    return p1
.end method

.method static synthetic access$400(Lcom/codemao/nemo/fragment/PublishSearchFragment;)Lcom/codemao/nemo/delegates/PublishSearchItemDelegate;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment;->mSearchItemDelegate:Lcom/codemao/nemo/delegates/PublishSearchItemDelegate;

    return-object p0
.end method

.method static synthetic access$500(Lcom/codemao/nemo/fragment/PublishSearchFragment;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    return-object p0
.end method

.method private doSearch()V
    .registers 9

    .line 124
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 125
    invoke-static {}, Lcom/giu/xzz/http/RetrofitManager;->get()Lcom/giu/xzz/http/RetrofitManager;

    move-result-object v0

    const-class v1, Lcom/codemao/nemo/retrofit/api/SearchService;

    invoke-virtual {v0, v1}, Lcom/giu/xzz/http/RetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/codemao/nemo/retrofit/api/SearchService;

    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/bean/UserInfoVO;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment;->keyword:Ljava/lang/String;

    iget v5, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment;->offset:I

    const/16 v6, 0xa

    const/16 v7, 0x8

    invoke-interface/range {v1 .. v7}, Lcom/codemao/nemo/retrofit/api/SearchService;->searchPubWorks(JLjava/lang/String;III)Lio/reactivex/Observable;

    move-result-object v0

    .line 126
    invoke-static {}, Lcom/giu/xzz/http/transform/ThreadTransformer;->create()Lcom/giu/xzz/http/transform/ThreadTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 127
    invoke-virtual {p0}, Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/fragment/PublishSearchFragment$2;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/PublishSearchFragment$2;-><init>(Lcom/codemao/nemo/fragment/PublishSearchFragment;)V

    .line 128
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    :cond_43
    return-void
.end method

.method private init()V
    .registers 6

    .line 94
    iget-object v0, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment;->smartLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableRefresh(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 95
    iget-object v0, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment;->smartLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableLoadMore(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 97
    new-instance v0, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment;->mDatas:Ljava/util/List;

    invoke-direct {v0, v2, v3}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 98
    new-instance v0, Lcom/codemao/nemo/delegates/PublishSearchItemDelegate;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/codemao/nemo/delegates/PublishSearchItemDelegate;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment;->mSearchItemDelegate:Lcom/codemao/nemo/delegates/PublishSearchItemDelegate;

    .line 99
    iget-object v2, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v2, v0}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 101
    iget-object v0, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment;->smartRecyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    new-instance v2, Lcom/codemao/nemo/view/WrapLinearLayoutmanager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/codemao/nemo/view/WrapLinearLayoutmanager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 102
    iget-object v0, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment;->smartRecyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    iget-object v2, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v0, v2}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 103
    iget-object v0, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment;->smartRecyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v0, p0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setLoadingListener(Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$LoadingListener;)V

    .line 104
    iget-object v0, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    new-instance v2, Lcom/codemao/nemo/fragment/PublishSearchFragment$1;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/fragment/PublishSearchFragment$1;-><init>(Lcom/codemao/nemo/fragment/PublishSearchFragment;)V

    const/4 v3, 0x1

    new-array v3, v3, [I

    const v4, 0x7f0a0222

    aput v4, v3, v1

    invoke-virtual {v0, v2, v3}, Lcom/codemao/nemo/view/LoadView;->setOnClickListener(Landroid/view/View$OnClickListener;[I)V

    return-void
.end method

.method private initData()V
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->showLoading()V

    .line 115
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    .line 116
    iput v0, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment;->offset:I

    .line 117
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/PublishSearchFragment;->doSearch()V

    goto :goto_1b

    .line 119
    :cond_16
    iget-object v0, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->showError()V

    :goto_1b
    return-void
.end method

.method public static newInstance()Lcom/codemao/nemo/fragment/PublishSearchFragment;
    .registers 1

    .line 67
    new-instance v0, Lcom/codemao/nemo/fragment/PublishSearchFragment;

    invoke-direct {v0}, Lcom/codemao/nemo/fragment/PublishSearchFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected contentViewId()I
    .registers 2

    const v0, 0x7f0d0167

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    .line 89
    invoke-super {p0, p1}, Lcom/giu/xzz/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 90
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/PublishSearchFragment;->init()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 77
    invoke-super {p0, p1}, Lcom/giu/xzz/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4

    .line 84
    invoke-super {p0, p1, p2, p3}, Lcom/giu/xzz/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .registers 2

    .line 216
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 217
    invoke-super {p0}, Lcom/giu/xzz/BaseFragment;->onDestroy()V

    return-void
.end method

.method public onLoadMore()V
    .registers 2

    .line 208
    iget-object v0, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment;->keyword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 211
    :cond_9
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/PublishSearchFragment;->doSearch()V

    return-void
.end method

.method public onSearchEvent(Lcom/codemao/nemo/event/SearchEvent;)V
    .registers 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 194
    iget-object p1, p1, Lcom/codemao/nemo/event/SearchEvent;->keyword:Ljava/lang/String;

    iput-object p1, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment;->keyword:Ljava/lang/String;

    .line 195
    iget-object p1, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment;->mDatas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 196
    iget-object p1, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment;->mSearchItemDelegate:Lcom/codemao/nemo/delegates/PublishSearchItemDelegate;

    iget-object v0, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment;->keyword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/delegates/PublishSearchItemDelegate;->setKeyword(Ljava/lang/String;)V

    .line 197
    iget-object p1, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 198
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/PublishSearchFragment;->initData()V

    return-void
.end method

.method public onUpdateWorkInfoEvent(Lcom/codemao/nemo/event/UpdateWorkInfoEvents;)V
    .registers 11
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 223
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getWorkId()J

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 225
    :goto_8
    iget-object v6, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment;->mDatas:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_22

    .line 226
    iget-object v6, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment;->mDatas:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/codemao/nemo/bean/PublishSearchData$PublishData;

    .line 227
    iget-wide v6, v6, Lcom/codemao/nemo/bean/PublishSearchData$PublishData;->id:J

    cmp-long v8, v6, v0

    if-nez v8, :cond_1f

    move v5, v4

    :cond_1f
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_22
    const/4 v0, 0x5

    if-gez v5, :cond_31

    .line 232
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getType()I

    move-result p1

    if-ne p1, v0, :cond_30

    .line 233
    iput v2, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment;->offset:I

    .line 234
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/PublishSearchFragment;->doSearch()V

    :cond_30
    return-void

    .line 238
    :cond_31
    iget-object v1, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment;->mDatas:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/bean/PublishSearchData$PublishData;

    .line 239
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getType()I

    move-result v2

    if-eqz v2, :cond_b6

    const/4 v4, 0x3

    if-eq v2, v4, :cond_a9

    if-eq v2, v0, :cond_93

    const/4 v0, 0x6

    const/4 v4, 0x1

    if-eq v2, v0, :cond_60

    const/4 v0, 0x7

    if-eq v2, v0, :cond_4d

    goto/16 :goto_c1

    .line 264
    :cond_4d
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->isPraise()Z

    move-result p1

    .line 265
    iget-wide v6, v1, Lcom/codemao/nemo/bean/PublishSearchData$PublishData;->praise_times:J

    if-eqz p1, :cond_56

    const/4 v3, 0x1

    :cond_56
    int-to-long v2, v3

    add-long/2addr v6, v2

    iput-wide v6, v1, Lcom/codemao/nemo/bean/PublishSearchData$PublishData;->praise_times:J

    .line 266
    iget-object p1, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_c1

    .line 250
    :cond_60
    iget-object p1, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment;->mDatas:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 251
    iget p1, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment;->offset:I

    sub-int/2addr p1, v4

    iput p1, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment;->offset:I

    .line 252
    iget-object p1, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 253
    iget-object p1, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    iget-object v0, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-virtual {p1, v5, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 255
    iget-object p1, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment;->mDatas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_c1

    .line 256
    iget-boolean p1, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment;->hasMore:Z

    if-eqz p1, :cond_8d

    .line 257
    iget-object p1, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment;->smartRecyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->loadMore()V

    goto :goto_c1

    .line 259
    :cond_8d
    iget-object p1, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showEmpty()V

    goto :goto_c1

    .line 269
    :cond_93
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getWorkDetailInfo()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    move-result-object p1

    .line 270
    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getWork_name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/codemao/nemo/bean/PublishSearchData$PublishData;->work_name:Ljava/lang/String;

    .line 271
    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getPreview()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/codemao/nemo/bean/PublishSearchData$PublishData;->preview:Ljava/lang/String;

    .line 272
    iget-object p1, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_c1

    .line 245
    :cond_a9
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getViewTime()I

    move-result p1

    int-to-long v2, p1

    iput-wide v2, v1, Lcom/codemao/nemo/bean/PublishSearchData$PublishData;->view_times:J

    .line 246
    iget-object p1, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_c1

    .line 241
    :cond_b6
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getNewWorkName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/codemao/nemo/bean/PublishSearchData$PublishData;->work_name:Ljava/lang/String;

    .line 242
    iget-object p1, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_c1
    :goto_c1
    return-void
.end method

.method public scrollToTop()V
    .registers 3

    .line 280
    iget-object v0, p0, Lcom/codemao/nemo/fragment/PublishSearchFragment;->smartRecyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 281
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_8
    return-void
.end method
