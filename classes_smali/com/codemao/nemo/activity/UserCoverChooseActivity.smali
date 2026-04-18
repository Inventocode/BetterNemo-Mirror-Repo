.class public Lcom/codemao/nemo/activity/UserCoverChooseActivity;
.super Lcom/giu/xzz/BaseActivity;
.source "UserCoverChooseActivity.java"


# instance fields
.field adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

.field private datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;",
            ">;"
        }
    .end annotation
.end field

.field private discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

.field private needPermissions:[Ljava/lang/String;

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 63
    invoke-direct {p0}, Lcom/giu/xzz/BaseActivity;-><init>()V

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 69
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/activity/UserCoverChooseActivity;->needPermissions:[Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/activity/UserCoverChooseActivity;->datas:Ljava/util/List;

    .line 82
    new-instance v0, Lcom/codemao/nemo/http/DiscoveryNetUtil;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/http/DiscoveryNetUtil;-><init>(Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;)V

    iput-object v0, p0, Lcom/codemao/nemo/activity/UserCoverChooseActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/activity/UserCoverChooseActivity;)Ljava/util/List;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/codemao/nemo/activity/UserCoverChooseActivity;->datas:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/activity/UserCoverChooseActivity;)[Ljava/lang/String;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/codemao/nemo/activity/UserCoverChooseActivity;->needPermissions:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/nemo/activity/UserCoverChooseActivity;Ljava/lang/String;)V
    .registers 2

    .line 63
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/UserCoverChooseActivity;->updateCover(Ljava/lang/String;)V

    return-void
.end method

.method private initData()V
    .registers 5

    .line 99
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "userId"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 100
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 101
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCoverChooseActivity;->datas:Ljava/util/List;

    new-instance v1, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;

    const v2, 0x7f080148

    const-string v3, "https://static.codemao.cn/nemo/cover/cover_forset.png"

    invoke-direct {v1, v2, v3}, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCoverChooseActivity;->datas:Ljava/util/List;

    new-instance v1, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;

    const v2, 0x7f080149

    const-string v3, "https://static.codemao.cn/nemo/cover/cover_moon.png"

    invoke-direct {v1, v2, v3}, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCoverChooseActivity;->datas:Ljava/util/List;

    new-instance v1, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;

    const v2, 0x7f08014a

    const-string v3, "https://static.codemao.cn/nemo/cover/cover_mountain.png"

    invoke-direct {v1, v2, v3}, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCoverChooseActivity;->datas:Ljava/util/List;

    new-instance v1, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;

    const v2, 0x7f08014b

    const-string v3, "https://static.codemao.cn/nemo/cover/cover_sunrise.png"

    invoke-direct {v1, v2, v3}, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCoverChooseActivity;->datas:Ljava/util/List;

    new-instance v1, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;

    const/16 v2, -0x3e7

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private initView()V
    .registers 4

    .line 109
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_13

    .line 110
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 112
    :cond_13
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;-><init>(II)V

    .line 113
    iget-object v1, p0, Lcom/codemao/nemo/activity/UserCoverChooseActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 114
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCoverChooseActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 115
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCoverChooseActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 117
    :cond_33
    new-instance v0, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    iget-object v1, p0, Lcom/codemao/nemo/activity/UserCoverChooseActivity;->datas:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/codemao/nemo/activity/UserCoverChooseActivity;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 118
    new-instance v1, Lcom/codemao/nemo/adapter/UserCoverChooseDelegate;

    new-instance v2, Lcom/codemao/nemo/activity/UserCoverChooseActivity$1;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/activity/UserCoverChooseActivity$1;-><init>(Lcom/codemao/nemo/activity/UserCoverChooseActivity;)V

    invoke-direct {v1, p0, v2}, Lcom/codemao/nemo/adapter/UserCoverChooseDelegate;-><init>(Landroid/content/Context;Lcom/codemao/nemo/adapter/UserCoverChooseDelegate$ChooseCallback;)V

    invoke-virtual {v0, v1}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 134
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCoverChooseActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/codemao/nemo/activity/UserCoverChooseActivity;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private updateCover(Ljava/lang/String;)V
    .registers 4

    .line 162
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCoverChooseActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    new-instance v1, Lcom/codemao/nemo/activity/UserCoverChooseActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/activity/UserCoverChooseActivity$2;-><init>(Lcom/codemao/nemo/activity/UserCoverChooseActivity;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/codemao/nemo/http/DiscoveryNetUtil;->updateUserCover(Ljava/lang/String;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method


# virtual methods
.method protected contentViewId()I
    .registers 2

    const v0, 0x7f0d0066

    return v0
.end method

.method public initViewName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "用户封面选择页"

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .line 200
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, -0x1

    if-ne p2, p3, :cond_17

    const/16 p2, 0x2766

    if-ne p1, p2, :cond_17

    .line 202
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/codemao/nemo/event/InstallPermissionResult;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Lcom/codemao/nemo/event/InstallPermissionResult;-><init>(I)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_17
    return-void
.end method

.method onClick(Landroid/view/View;)V
    .registers 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 152
    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 91
    invoke-super {p0, p1}, Lcom/giu/xzz/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-static {}, Lcom/codemao/nemo/util/PermissionUtils;->getImagesStoragePermissions()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/activity/UserCoverChooseActivity;->needPermissions:[Ljava/lang/String;

    .line 93
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 94
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserCoverChooseActivity;->initData()V

    .line 95
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserCoverChooseActivity;->initView()V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 140
    invoke-super {p0}, Lcom/giu/xzz/BaseActivity;->onDestroy()V

    .line 141
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 188
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 189
    invoke-static {p1, p2, p3, v1}, Lpub/devrel/easypermissions/EasyPermissions;->onRequestPermissionsResult(I[Ljava/lang/String;[I[Ljava/lang/Object;)V

    .line 190
    array-length p1, p3

    if-lez p1, :cond_30

    aget p1, p3, v2

    if-nez p1, :cond_30

    .line 191
    invoke-static {}, Lcom/codemao/nemo/ui/MultiImageSelector;->create()Lcom/codemao/nemo/ui/MultiImageSelector;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/ui/MultiImageSelector;->showCamera(Z)Lcom/codemao/nemo/ui/MultiImageSelector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/ui/MultiImageSelector;->single()Lcom/codemao/nemo/ui/MultiImageSelector;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/ui/MultiImageSelector;->setTitle(Ljava/lang/String;)Lcom/codemao/nemo/ui/MultiImageSelector;

    move-result-object p1

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/ui/MultiImageSelector;->setType(I)Lcom/codemao/nemo/ui/MultiImageSelector;

    move-result-object p1

    const/16 p2, 0x4e21

    .line 192
    invoke-virtual {p1, p0, p2}, Lcom/codemao/nemo/ui/MultiImageSelector;->start(Landroid/app/Activity;I)V

    goto :goto_36

    :cond_30
    const-string/jumbo p1, "无访问权限，相册打开失败"

    .line 194
    invoke-static {p0, p1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_36
    return-void
.end method

.method public saveSuccess(Lcom/codemao/nemo/event/UserCoverEditEvents;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 157
    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->finish()V

    return-void
.end method
