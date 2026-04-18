.class public Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;
.super Lcom/giu/xzz/BaseActivity;
.source "UserFollowersOrFansActivity.java"


# instance fields
.field adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

.field private datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/UserFanAndFollowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

.field private hasMore:Z

.field private isLoadMore:Z

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

.field tvFollow:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private type:I

.field private userId:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 48
    invoke-direct {p0}, Lcom/giu/xzz/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->offset:I

    .line 62
    new-instance v1, Lcom/codemao/nemo/http/DiscoveryNetUtil;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/http/DiscoveryNetUtil;-><init>(Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;)V

    iput-object v1, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    .line 63
    iput-boolean v0, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->isLoadMore:Z

    .line 64
    iput-boolean v0, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->hasMore:Z

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->datas:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;)I
    .registers 1

    .line 48
    iget p0, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->type:I

    return p0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;)Ljava/util/List;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->datas:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;)Z
    .registers 1

    .line 48
    iget-boolean p0, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->hasMore:Z

    return p0
.end method

.method static synthetic access$302(Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;Z)Z
    .registers 2

    .line 48
    iput-boolean p1, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->isLoadMore:Z

    return p1
.end method

.method static synthetic access$400(Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;)V
    .registers 1

    .line 48
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->getDatas()V

    return-void
.end method

.method static synthetic access$502(Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;I)I
    .registers 2

    .line 48
    iput p1, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->offset:I

    return p1
.end method

.method static synthetic access$600(Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;Lcom/codemao/nemo/bean/UserFansOrFollowers;)V
    .registers 2

    .line 48
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->setListData(Lcom/codemao/nemo/bean/UserFansOrFollowers;)V

    return-void
.end method

.method private getDatas()V
    .registers 6

    .line 264
    iget v0, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->type:I

    if-nez v0, :cond_13

    .line 265
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    iget-wide v1, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->userId:J

    iget v3, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->offset:I

    new-instance v4, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$5;

    invoke-direct {v4, p0}, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$5;-><init>(Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/codemao/nemo/http/DiscoveryNetUtil;->getUserFans(JILcom/codemao/nemo/http/LocalNetCallBackV2;)V

    goto :goto_21

    .line 298
    :cond_13
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    iget-wide v1, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->userId:J

    iget v3, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->offset:I

    new-instance v4, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$6;

    invoke-direct {v4, p0}, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$6;-><init>(Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/codemao/nemo/http/DiscoveryNetUtil;->getUserFollower(JILcom/codemao/nemo/http/LocalNetCallBackV2;)V

    :goto_21
    return-void
.end method

.method private initData()V
    .registers 5

    .line 109
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "userId"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->userId:J

    .line 110
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->type:I

    return-void
.end method

.method private initView()V
    .registers 5

    .line 115
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_13

    .line 116
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 119
    :cond_13
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->notifyTitleName()V

    .line 121
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    new-instance v1, Lcom/codemao/nemo/view/WrapLinearLayoutmanager;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/view/WrapLinearLayoutmanager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 122
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_34

    .line 123
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 125
    :cond_34
    new-instance v0, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    iget-object v2, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->datas:Ljava/util/List;

    invoke-direct {v0, p0, v2}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 126
    new-instance v2, Lcom/codemao/nemo/adapter/UserFollowersAndFansDelegate;

    new-instance v3, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$1;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$1;-><init>(Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;)V

    invoke-direct {v2, p0, v3}, Lcom/codemao/nemo/adapter/UserFollowersAndFansDelegate;-><init>(Landroid/content/Context;Lcom/codemao/nemo/adapter/UserFollowersAndFansDelegate$UserCallBack;)V

    invoke-virtual {v0, v2}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 145
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    iget-object v2, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v0, v2}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 147
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    new-instance v2, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$2;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$2;-><init>(Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;)V

    invoke-virtual {v0, v2}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setLoadingListener(Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$LoadingListener;)V

    .line 168
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableLoadMore(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 169
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    new-instance v1, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$3;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$3;-><init>(Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;)V

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setOnRefreshListener(Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 180
    invoke-static {p0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_76

    .line 181
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->showError()V

    return-void

    .line 184
    :cond_76
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->getDatas()V

    return-void
.end method

.method private isOwner()Z
    .registers 6

    .line 104
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-wide v0, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->userId:J

    .line 105
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

.method private notifyTitleName()V
    .registers 3

    .line 188
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->isOwner()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 189
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->tvFollow:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_18

    .line 190
    :cond_e
    iget v0, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->type:I

    if-nez v0, :cond_18

    .line 191
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->tvFollow:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    :cond_18
    :goto_18
    iget v0, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->type:I

    if-nez v0, :cond_33

    .line 195
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->isOwner()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 196
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->tvTitle:Landroid/widget/TextView;

    const-string/jumbo v1, "我的粉丝"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_49

    .line 198
    :cond_2b
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->tvTitle:Landroid/widget/TextView;

    const-string v1, "Ta的粉丝"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_49

    .line 201
    :cond_33
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->isOwner()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 202
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->tvTitle:Landroid/widget/TextView;

    const-string/jumbo v1, "我的关注"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_49

    .line 204
    :cond_42
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->tvTitle:Landroid/widget/TextView;

    const-string v1, "Ta的关注"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_49
    return-void
.end method

.method private notifyViewName()V
    .registers 2

    .line 87
    iget v0, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->type:I

    if-nez v0, :cond_17

    .line 88
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->isOwner()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string/jumbo v0, "我的粉丝"

    .line 89
    invoke-virtual {p0, v0}, Lcom/giu/xzz/BaseActivity;->setViewName(Ljava/lang/String;)V

    goto :goto_29

    :cond_11
    const-string v0, "ta的粉丝"

    .line 91
    invoke-virtual {p0, v0}, Lcom/giu/xzz/BaseActivity;->setViewName(Ljava/lang/String;)V

    goto :goto_29

    .line 95
    :cond_17
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->isOwner()Z

    move-result v0

    if-eqz v0, :cond_24

    const-string/jumbo v0, "我的关注"

    .line 96
    invoke-virtual {p0, v0}, Lcom/giu/xzz/BaseActivity;->setViewName(Ljava/lang/String;)V

    goto :goto_29

    :cond_24
    const-string v0, "ta的关注"

    .line 98
    invoke-virtual {p0, v0}, Lcom/giu/xzz/BaseActivity;->setViewName(Ljava/lang/String;)V

    :goto_29
    return-void
.end method

.method private setListData(Lcom/codemao/nemo/bean/UserFansOrFollowers;)V
    .registers 8

    .line 386
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->loadMoreComplete()V

    .line 387
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_a7

    .line 388
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserFansOrFollowers;->getItems()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_a7

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserFansOrFollowers;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_20

    goto/16 :goto_a7

    .line 398
    :cond_20
    iget v2, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->type:I

    if-nez v2, :cond_36

    .line 399
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    iget-wide v3, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->userId:J

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserFansOrFollowers;->getTotal()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/codemao/nemo/event/UpdateUserFollowFanCollectCountEvents;->creatUpdateFansCountEvents(JI)Lcom/codemao/nemo/event/UpdateUserFollowFanCollectCountEvents;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_47

    .line 401
    :cond_36
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    iget-wide v3, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->userId:J

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserFansOrFollowers;->getTotal()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/codemao/nemo/event/UpdateUserFollowFanCollectCountEvents;->creatUpdateFollowCountEvents(JI)Lcom/codemao/nemo/event/UpdateUserFollowFanCollectCountEvents;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 404
    :goto_47
    iget-object v2, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->datas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 405
    iget v3, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->offset:I

    if-nez v3, :cond_57

    .line 407
    iget-object v2, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->datas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v2, 0x0

    .line 409
    :cond_57
    iget-object v3, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->datas:Ljava/util/List;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserFansOrFollowers;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 410
    iget-object v3, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 411
    iget-object v3, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v3}, Lcom/codemao/nemo/view/LoadView;->hide()V

    .line 412
    iget-boolean v3, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->isLoadMore:Z

    if-eqz v3, :cond_7c

    .line 413
    iget-object v3, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserFansOrFollowers;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_81

    .line 415
    :cond_7c
    iget-object v2, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 417
    :goto_81
    iget v2, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->offset:I

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserFansOrFollowers;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->offset:I

    .line 418
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserFansOrFollowers;->getTotal()I

    move-result p1

    if-ge v2, p1, :cond_96

    const/4 p1, 0x1

    goto :goto_97

    :cond_96
    const/4 p1, 0x0

    :goto_97
    iput-boolean p1, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->hasMore:Z

    if-nez p1, :cond_a1

    .line 420
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    goto :goto_a6

    .line 422
    :cond_a1
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1, v1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    :goto_a6
    return-void

    .line 389
    :cond_a7
    :goto_a7
    iput-boolean v1, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->hasMore:Z

    .line 390
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->datas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_b7

    .line 391
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showEmpty()V

    goto :goto_bc

    .line 393
    :cond_b7
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->hide()V

    .line 395
    :goto_bc
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    return-void
.end method


# virtual methods
.method protected contentViewId()I
    .registers 2

    const v0, 0x7f0d0068

    return v0
.end method

.method follow(JI)V
    .registers 7

    .line 336
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v0

    if-nez v0, :cond_20

    .line 337
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->getViewName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "-点击前往登录（关注）"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/codemao/nemo/view/UnLoginXpopup;->showUnLoginForRecordHobbiesTipsDialog(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 341
    :cond_20
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->datas:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/UserFanAndFollowInfo;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/UserFanAndFollowInfo;->isFollowed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_54

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->getViewName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-点击取消关注"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    new-instance v1, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$7;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$7;-><init>(Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;IJ)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/codemao/nemo/http/DiscoveryNetUtil;->cancelFollowUser(JLcom/codemao/nemo/http/LocalNetCallBackV2;)V

    goto :goto_78

    .line 362
    :cond_54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->getViewName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-点击关注按钮"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    new-instance v1, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$8;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$8;-><init>(Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;IJ)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/codemao/nemo/http/DiscoveryNetUtil;->followUser(JLcom/codemao/nemo/http/LocalNetCallBackV2;)V

    :goto_78
    return-void
.end method

.method follow(Landroid/view/View;)V
    .registers 5
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 233
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result p1

    if-nez p1, :cond_20

    .line 234
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->getViewName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-点击前往登录（关注）"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/codemao/nemo/view/UnLoginXpopup;->showUnLoginForRecordHobbiesTipsDialog(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 238
    :cond_20
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showLoading()V

    .line 239
    invoke-static {p0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2f

    .line 240
    invoke-static {p0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 243
    :cond_2f
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    iget-wide v0, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->userId:J

    new-instance v2, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$4;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$4;-><init>(Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/codemao/nemo/http/DiscoveryNetUtil;->followUser(JLcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method

.method public initViewName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "我的关注"

    return-object v0
.end method

.method onClick(Landroid/view/View;)V
    .registers 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 443
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->getViewName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-点击返回"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 444
    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 78
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->initData()V

    .line 79
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->notifyViewName()V

    .line 80
    invoke-super {p0, p1}, Lcom/giu/xzz/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 83
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->initView()V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 428
    invoke-super {p0}, Lcom/giu/xzz/BaseActivity;->onDestroy()V

    .line 429
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 430
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    if-eqz v0, :cond_11

    .line 431
    invoke-virtual {v0}, Lcom/codemao/nemo/http/NetUtils;->dispose()V

    :cond_11
    return-void
.end method

.method public onFollowUserEvent(Lcom/codemao/nemo/event/FollowUserEvents;)V
    .registers 10
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 450
    :goto_2
    iget-object v2, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->datas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, -0x1

    if-ge v1, v2, :cond_23

    .line 451
    iget-object v2, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->datas:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/nemo/bean/UserFanAndFollowInfo;

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/UserFanAndFollowInfo;->getId()J

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
    if-ne v1, v3, :cond_27

    return-void

    .line 460
    :cond_27
    invoke-virtual {p1}, Lcom/codemao/nemo/event/FollowUserEvents;->getType()I

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_3d

    if-eq p1, v2, :cond_31

    goto :goto_48

    .line 465
    :cond_31
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->datas:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/UserFanAndFollowInfo;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/UserFanAndFollowInfo;->setFollowed(Z)V

    goto :goto_48

    .line 462
    :cond_3d
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->datas:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/UserFanAndFollowInfo;

    invoke-virtual {p1, v2}, Lcom/codemao/nemo/bean/UserFanAndFollowInfo;->setFollowed(Z)V

    .line 468
    :goto_48
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public onUserInfoChanged()V
    .registers 2

    .line 211
    invoke-super {p0}, Lcom/giu/xzz/BaseActivity;->onUserInfoChanged()V

    .line 212
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->notifyViewName()V

    .line 213
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->notifyTitleName()V

    const/4 v0, 0x0

    .line 214
    iput v0, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->offset:I

    .line 215
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->getDatas()V

    return-void
.end method

.method refresh(Landroid/view/View;)V
    .registers 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 221
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showLoading()V

    .line 222
    invoke-static {p0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_11

    .line 223
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showError()V

    return-void

    :cond_11
    const/4 p1, 0x0

    .line 226
    iput p1, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->offset:I

    .line 227
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->getDatas()V

    return-void
.end method
