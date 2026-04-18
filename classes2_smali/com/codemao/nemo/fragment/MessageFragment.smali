.class public Lcom/codemao/nemo/fragment/MessageFragment;
.super Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;
.source "MessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment<",
        "Lcom/codemao/nemo/bean/MessageVO;",
        ">;"
    }
.end annotation


# instance fields
.field private clickTime:J

.field commonHeader:Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field final discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

.field private isFirst:Z

.field llNonet:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mType:I

.field private mView:Landroid/view/View;

.field private mVisible:Z

.field refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 36
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;-><init>()V

    const-wide/16 v0, -0x1

    .line 39
    iput-wide v0, p0, Lcom/codemao/nemo/fragment/MessageFragment;->clickTime:J

    .line 49
    new-instance v0, Lcom/codemao/nemo/http/DiscoveryNetUtil;

    invoke-direct {v0}, Lcom/codemao/nemo/http/DiscoveryNetUtil;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/fragment/MessageFragment;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/fragment/MessageFragment;)Z
    .registers 1

    .line 36
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/MessageFragment;->isTooShortToClick()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/fragment/MessageFragment;)I
    .registers 1

    .line 36
    iget p0, p0, Lcom/codemao/nemo/fragment/MessageFragment;->mType:I

    return p0
.end method

.method static synthetic access$202(Lcom/codemao/nemo/fragment/MessageFragment;Z)Z
    .registers 2

    .line 36
    iput-boolean p1, p0, Lcom/codemao/nemo/fragment/MessageFragment;->isFirst:Z

    return p1
.end method

.method private checkNet()Z
    .registers 2

    .line 158
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 159
    invoke-virtual {p0}, Lcom/codemao/nemo/fragment/MessageFragment;->showError()V

    const/4 v0, 0x0

    return v0

    :cond_f
    const/4 v0, 0x1

    return v0
.end method

.method private hideErrorToast()V
    .registers 3

    .line 87
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MessageFragment;->llNonet:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_9

    const/16 v1, 0x8

    .line 88
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_9
    return-void
.end method

.method private isTooShortToClick()Z
    .registers 7

    .line 143
    iget-wide v0, p0, Lcom/codemao/nemo/fragment/MessageFragment;->clickTime:J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-gez v5, :cond_10

    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/codemao/nemo/fragment/MessageFragment;->clickTime:J

    return v2

    .line 147
    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/codemao/nemo/fragment/MessageFragment;->clickTime:J

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x3e8

    cmp-long v5, v0, v3

    if-ltz v5, :cond_24

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/codemao/nemo/fragment/MessageFragment;->clickTime:J

    return v2

    :cond_24
    const/4 v0, 0x1

    return v0
.end method

.method public static newInstance(I)Lcom/codemao/nemo/fragment/MessageFragment;
    .registers 4

    .line 54
    new-instance v0, Lcom/codemao/nemo/fragment/MessageFragment;

    invoke-direct {v0}, Lcom/codemao/nemo/fragment/MessageFragment;-><init>()V

    .line 55
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "type"

    .line 56
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 57
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private showErrorToast()V
    .registers 3

    .line 81
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MessageFragment;->llNonet:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 82
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_8
    return-void
.end method


# virtual methods
.method protected contentViewId()I
    .registers 2

    const v0, 0x7f0d0168

    return v0
.end method

.method protected getData()V
    .registers 5

    .line 167
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/MessageFragment;->hideErrorToast()V

    .line 168
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/MessageFragment;->checkNet()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 172
    :cond_a
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v0

    if-nez v0, :cond_16

    .line 173
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->showEmpty()V

    return-void

    .line 177
    :cond_16
    iget-boolean v0, p0, Lcom/codemao/nemo/fragment/MessageFragment;->mVisible:Z

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/codemao/nemo/fragment/MessageFragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_2f

    const/4 v0, 0x1

    .line 178
    iput-boolean v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->isLoading:Z

    .line 180
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MessageFragment;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    iget v1, p0, Lcom/codemao/nemo/fragment/MessageFragment;->mType:I

    iget v2, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->offset:I

    new-instance v3, Lcom/codemao/nemo/fragment/MessageFragment$2;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/fragment/MessageFragment$2;-><init>(Lcom/codemao/nemo/fragment/MessageFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/codemao/nemo/http/DiscoveryNetUtil;->getMessageByType(IILcom/codemao/nemo/http/LocalNetCallBackV2;)V

    :cond_2f
    return-void
.end method

.method protected initDelegate()V
    .registers 5

    .line 94
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    new-instance v1, Lcom/codemao/nemo/adapter/MessageDelegate;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/codemao/nemo/fragment/MessageFragment$1;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/fragment/MessageFragment$1;-><init>(Lcom/codemao/nemo/fragment/MessageFragment;)V

    invoke-direct {v1, v2, v3}, Lcom/codemao/nemo/adapter/MessageDelegate;-><init>(Landroid/content/Context;Lcom/codemao/nemo/adapter/MessageDelegate$RecommendWorkCallBack;)V

    invoke-virtual {v0, v1}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    return-void
.end method

.method public onUpdateWorkInfoEvent(Lcom/codemao/nemo/event/UpdateWorkInfoEvents;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5

    .line 68
    invoke-super {p0, p1, p2}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 69
    iput-object p1, p0, Lcom/codemao/nemo/fragment/MessageFragment;->mView:Landroid/view/View;

    .line 70
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_13

    const-string p2, "type"

    .line 72
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/codemao/nemo/fragment/MessageFragment;->mType:I

    .line 74
    :cond_13
    iget-object p1, p0, Lcom/codemao/nemo/fragment/MessageFragment;->commonHeader:Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;

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

    .line 75
    iput v1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->offset:I

    .line 76
    invoke-virtual {p0}, Lcom/codemao/nemo/fragment/MessageFragment;->getData()V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .registers 3

    .line 251
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 252
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1a

    .line 253
    iput v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->offset:I

    const/4 p1, 0x1

    .line 254
    iput-boolean p1, p0, Lcom/codemao/nemo/fragment/MessageFragment;->mVisible:Z

    .line 255
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    if-eqz p1, :cond_16

    .line 256
    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showLoading()V

    .line 257
    :cond_16
    invoke-virtual {p0}, Lcom/codemao/nemo/fragment/MessageFragment;->getData()V

    goto :goto_1c

    .line 259
    :cond_1a
    iput-boolean v0, p0, Lcom/codemao/nemo/fragment/MessageFragment;->mVisible:Z

    :goto_1c
    return-void
.end method

.method protected showError()V
    .registers 2

    .line 271
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    if-nez v0, :cond_5

    return-void

    .line 274
    :cond_5
    invoke-virtual {p0}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->afterLoading()V

    .line 275
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_15

    .line 276
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->showError()V

    .line 278
    :cond_15
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/MessageFragment;->showErrorToast()V

    return-void
.end method
