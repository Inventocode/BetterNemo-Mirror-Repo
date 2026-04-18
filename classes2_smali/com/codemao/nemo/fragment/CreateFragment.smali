.class public Lcom/codemao/nemo/fragment/CreateFragment;
.super Lcom/giu/xzz/BaseFragment;
.source "CreateFragment.java"


# instance fields
.field private cancelDialog:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

.field private curPublishData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

.field private curPublishPosition:I

.field private deleteHolder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

.field private discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;

.field private handler:Lcom/giu/xzz/utils/HandlerUtil;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/giu/xzz/utils/HandlerUtil<",
            "Lcom/giu/xzz/BaseFragment;",
            ">;"
        }
    .end annotation
.end field

.field private hasEnterTimeOut:Z

.field private isPad:Z

.field private keyword:Ljava/lang/String;

.field private mAdapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/giu/xzz/adapter/rv/RVBaseAdapter<",
            "Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;",
            ">;"
        }
    .end annotation
.end field

.field private mDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;",
            ">;"
        }
    .end annotation
.end field

.field private mDelegate:Lcom/codemao/nemo/delegates/CreateItemDelegate;

.field private mDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

.field private mGenerateMiaoCodeDialog:Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

.field private mLayoutManager:Lcom/codemao/nemo/view/WrapGridLayoutmanager;

.field mLoadView:Lcom/codemao/nemo/view/LoadView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mProgress:Landroid/widget/ProgressBar;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mSpanNum:I

.field private needFilt:Z

.field private renameDialog:Lcom/codemao/nemo/view/RenameDialog;

.field rlGoBind:Landroidx/cardview/widget/CardView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rvContainer:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private shareMiaoCodeDialog:Lcom/codemao/nemo/view/ShareMiaoCodeDialog;

.field tvGoBind:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$Iu6WZc6RlcMoH5KdvBhHxhDEToQ(Lcom/codemao/nemo/fragment/CreateFragment;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/nemo/fragment/CreateFragment;->lambda$notifyBcmData$1(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dpuQnZbSZekydItNEQmksyqK6cA(Lcom/codemao/nemo/fragment/CreateFragment;Ljava/lang/Throwable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/nemo/fragment/CreateFragment;->lambda$notifyBcmData$2(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ja0J6VR7Cv8LN1g7shBQpZqRlXk(Ljava/lang/String;)Ljava/util/List;
    .registers 1

    invoke-static {p0}, Lcom/codemao/nemo/fragment/CreateFragment;->lambda$notifyBcmData$0(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 3

    .line 119
    invoke-direct {p0}, Lcom/giu/xzz/BaseFragment;-><init>()V

    const/4 v0, 0x1

    .line 163
    iput v0, p0, Lcom/codemao/nemo/fragment/CreateFragment;->mSpanNum:I

    .line 1585
    new-instance v0, Lcom/giu/xzz/utils/HandlerUtil;

    new-instance v1, Lcom/codemao/nemo/fragment/CreateFragment$20;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/CreateFragment$20;-><init>(Lcom/codemao/nemo/fragment/CreateFragment;)V

    invoke-direct {v0, p0, v1}, Lcom/giu/xzz/utils/HandlerUtil;-><init>(Ljava/lang/Object;Lcom/giu/xzz/utils/HandlerUtil$HandleBack;)V

    iput-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment;->handler:Lcom/giu/xzz/utils/HandlerUtil;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/fragment/CreateFragment;)Z
    .registers 1

    .line 119
    iget-boolean p0, p0, Lcom/codemao/nemo/fragment/CreateFragment;->hasEnterTimeOut:Z

    return p0
.end method

.method static synthetic access$002(Lcom/codemao/nemo/fragment/CreateFragment;Z)Z
    .registers 2

    .line 119
    iput-boolean p1, p0, Lcom/codemao/nemo/fragment/CreateFragment;->hasEnterTimeOut:Z

    return p1
.end method

.method static synthetic access$100(Lcom/codemao/nemo/fragment/CreateFragment;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 2

    .line 119
    invoke-direct {p0, p1}, Lcom/codemao/nemo/fragment/CreateFragment;->enter(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/codemao/nemo/fragment/CreateFragment;)Lcom/giu/xzz/utils/HandlerUtil;
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/codemao/nemo/fragment/CreateFragment;->handler:Lcom/giu/xzz/utils/HandlerUtil;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/codemao/nemo/fragment/CreateFragment;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;
    .registers 2

    .line 119
    iput-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment;->deleteHolder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/codemao/nemo/fragment/CreateFragment;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V
    .registers 3

    .line 119
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/fragment/CreateFragment;->showShareMiaoCodeDialog(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/codemao/nemo/fragment/CreateFragment;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 2

    .line 119
    invoke-direct {p0, p1}, Lcom/codemao/nemo/fragment/CreateFragment;->cancelPublish(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/codemao/nemo/fragment/CreateFragment;)Ljava/util/List;
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/codemao/nemo/fragment/CreateFragment;->mDatas:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/codemao/nemo/fragment/CreateFragment;)V
    .registers 1

    .line 119
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/CreateFragment;->dismissDeleteHolder()V

    return-void
.end method

.method static synthetic access$1600(Lcom/codemao/nemo/fragment/CreateFragment;)Z
    .registers 1

    .line 119
    iget-boolean p0, p0, Lcom/codemao/nemo/fragment/CreateFragment;->isPad:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/codemao/nemo/fragment/CreateFragment;)I
    .registers 1

    .line 119
    iget p0, p0, Lcom/codemao/nemo/fragment/CreateFragment;->mSpanNum:I

    return p0
.end method

.method static synthetic access$1800(Lcom/codemao/nemo/fragment/CreateFragment;)Z
    .registers 1

    .line 119
    iget-boolean p0, p0, Lcom/codemao/nemo/fragment/CreateFragment;->needFilt:Z

    return p0
.end method

.method static synthetic access$1900(Lcom/codemao/nemo/fragment/CreateFragment;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 2

    .line 119
    invoke-direct {p0, p1}, Lcom/codemao/nemo/fragment/CreateFragment;->sendErrorMessage(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    return-void
.end method

.method static synthetic access$200(Lcom/codemao/nemo/fragment/CreateFragment;)Z
    .registers 1

    .line 119
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/CreateFragment;->hasEnterTimeout()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2000(Lcom/codemao/nemo/fragment/CreateFragment;)V
    .registers 1

    .line 119
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/CreateFragment;->afterLoadData()V

    return-void
.end method

.method static synthetic access$2100(Lcom/codemao/nemo/fragment/CreateFragment;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/codemao/nemo/fragment/CreateFragment;->cancelDialog:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/codemao/nemo/fragment/CreateFragment;J)V
    .registers 3

    .line 119
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/fragment/CreateFragment;->createCancelPublishEvents(J)V

    return-void
.end method

.method static synthetic access$2300(Lcom/codemao/nemo/fragment/CreateFragment;)Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/codemao/nemo/fragment/CreateFragment;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/codemao/nemo/fragment/CreateFragment;)Lcom/codemao/nemo/view/RenameDialog;
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/codemao/nemo/fragment/CreateFragment;->renameDialog:Lcom/codemao/nemo/view/RenameDialog;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/codemao/nemo/fragment/CreateFragment;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/codemao/nemo/fragment/CreateFragment;->mAdapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/codemao/nemo/fragment/CreateFragment;)Lcom/codemao/nemo/view/ShareMiaoCodeDialog;
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/codemao/nemo/fragment/CreateFragment;->shareMiaoCodeDialog:Lcom/codemao/nemo/view/ShareMiaoCodeDialog;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/codemao/nemo/fragment/CreateFragment;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V
    .registers 3

    .line 119
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/fragment/CreateFragment;->generate(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/codemao/nemo/fragment/CreateFragment;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V
    .registers 3

    .line 119
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/fragment/CreateFragment;->createMiaoCode(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/codemao/nemo/fragment/CreateFragment;)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/codemao/nemo/fragment/CreateFragment;->mGenerateMiaoCodeDialog:Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    return-object p0
.end method

.method static synthetic access$300(Lcom/codemao/nemo/fragment/CreateFragment;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;)V
    .registers 2

    .line 119
    invoke-direct {p0, p1}, Lcom/codemao/nemo/fragment/CreateFragment;->updateBcm(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/codemao/nemo/fragment/CreateFragment;)Ljava/lang/String;
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/codemao/nemo/fragment/CreateFragment;->keyword:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/codemao/nemo/fragment/CreateFragment;)Lcom/codemao/nemo/delegates/CreateItemDelegate;
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/codemao/nemo/fragment/CreateFragment;->mDelegate:Lcom/codemao/nemo/delegates/CreateItemDelegate;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/codemao/nemo/fragment/CreateFragment;Ljava/lang/String;)I
    .registers 2

    .line 119
    invoke-direct {p0, p1}, Lcom/codemao/nemo/fragment/CreateFragment;->getPositionByPath(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$3300(Lcom/codemao/nemo/fragment/CreateFragment;)V
    .registers 1

    .line 119
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/CreateFragment;->refresh()V

    return-void
.end method

.method static synthetic access$3400(Lcom/codemao/nemo/fragment/CreateFragment;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 2

    .line 119
    invoke-direct {p0, p1}, Lcom/codemao/nemo/fragment/CreateFragment;->goPublishActivity(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/codemao/nemo/fragment/CreateFragment;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 2

    .line 119
    invoke-direct {p0, p1}, Lcom/codemao/nemo/fragment/CreateFragment;->generateMiaoCode(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    return-void
.end method

.method static synthetic access$400(Lcom/codemao/nemo/fragment/CreateFragment;I)V
    .registers 2

    .line 119
    invoke-direct {p0, p1}, Lcom/codemao/nemo/fragment/CreateFragment;->showRenameDialog(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/codemao/nemo/fragment/CreateFragment;Ljava/lang/String;)V
    .registers 2

    .line 119
    invoke-direct {p0, p1}, Lcom/codemao/nemo/fragment/CreateFragment;->showLoadingDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/codemao/nemo/fragment/CreateFragment;)V
    .registers 1

    .line 119
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/CreateFragment;->dismissLoadingDialog()V

    return-void
.end method

.method static synthetic access$702(Lcom/codemao/nemo/fragment/CreateFragment;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;
    .registers 2

    .line 119
    iput-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment;->curPublishData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    return-object p1
.end method

.method static synthetic access$802(Lcom/codemao/nemo/fragment/CreateFragment;I)I
    .registers 2

    .line 119
    iput p1, p0, Lcom/codemao/nemo/fragment/CreateFragment;->curPublishPosition:I

    return p1
.end method

.method static synthetic access$900(Lcom/codemao/nemo/fragment/CreateFragment;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V
    .registers 3

    .line 119
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/fragment/CreateFragment;->upload(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V

    return-void
.end method

.method private afterLoadData()V
    .registers 2

    .line 930
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment;->mAdapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    if-nez v0, :cond_7

    .line 931
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/CreateFragment;->initAdapter()V

    .line 933
    :cond_7
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment;->mAdapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 934
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->hide()V

    return-void
.end method

.method private cancelPublish(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 4

    .line 1018
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 1019
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 1023
    :cond_12
    new-instance v0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/codemao/nemo/fragment/CreateFragment$10;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/fragment/CreateFragment$10;-><init>(Lcom/codemao/nemo/fragment/CreateFragment;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->setLeftClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object p1

    new-instance v0, Lcom/codemao/nemo/fragment/CreateFragment$9;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/fragment/CreateFragment$9;-><init>(Lcom/codemao/nemo/fragment/CreateFragment;)V

    .line 1057
    invoke-virtual {p1, v0}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->setRightClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object p1

    .line 1063
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->contentStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->topCatState(I)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment;->cancelDialog:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    const-string v0, ""

    .line 1064
    invoke-virtual {p1, v0}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->titleStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private checkMiaoCode(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V
    .registers 6

    .line 1146
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1147
    iget-object v1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 1148
    iget-object v1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1150
    :cond_1a
    iget-object v1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->parent_id:Ljava/lang/Long;

    if-eqz v1, :cond_21

    .line 1151
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1153
    :cond_21
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_32

    .line 1154
    iget-object v1, p0, Lcom/codemao/nemo/fragment/CreateFragment;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;

    new-instance v2, Lcom/codemao/nemo/fragment/CreateFragment$13;

    invoke-direct {v2, p0, p1, p2}, Lcom/codemao/nemo/fragment/CreateFragment$13;-><init>(Lcom/codemao/nemo/fragment/CreateFragment;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V

    invoke-virtual {v1, v0, v2}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->checkWork(Ljava/util/Set;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    goto :goto_35

    .line 1176
    :cond_32
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/fragment/CreateFragment;->createMiaoCode(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V

    :goto_35
    return-void
.end method

.method private createCancelPublishEvents(J)V
    .registers 4

    .line 1078
    new-instance v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    invoke-direct {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;-><init>()V

    .line 1079
    invoke-virtual {v0, p1, p2}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->setId(J)V

    .line 1080
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-static {v0}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->creatCancelPublishEvents(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;)Lcom/codemao/nemo/event/UpdateWorkInfoEvents;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private createMiaoCode(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V
    .registers 4

    .line 1202
    new-instance v0, Lcom/codemao/nemo/fragment/CreateFragment$15;

    invoke-direct {v0, p0, p1, p2}, Lcom/codemao/nemo/fragment/CreateFragment$15;-><init>(Lcom/codemao/nemo/fragment/CreateFragment;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V

    invoke-static {v0}, Lcom/giu/xzz/utils/ThreadPoolUtil;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private dismissDeleteHolder()V
    .registers 4

    .line 977
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment;->deleteHolder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    if-eqz v0, :cond_31

    const v1, 0x7f0a05fa

    const/4 v2, 0x0

    .line 978
    invoke-virtual {v0, v1, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    .line 979
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment;->deleteHolder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    const v1, 0x7f0a057f

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setVisible(IZ)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    .line 980
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment;->deleteHolder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    const v1, 0x7f0a09bd

    invoke-virtual {v0, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 981
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment;->deleteHolder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    const v2, 0x7f0a0470

    invoke-virtual {v0, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    const/4 v0, 0x0

    .line 982
    iput-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment;->deleteHolder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    :cond_31
    return-void
.end method

.method private dismissLoadingDialog()V
    .registers 2

    .line 1883
    :try_start_0
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment;->mDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1884
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment;->mDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_f

    :catch_f
    :cond_f
    return-void
.end method

.method private download(ZLcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;)V
    .registers 5

    .line 1408
    sget-boolean v0, Lcom/codemao/nemo/util/AppConstants;->HAS_BCM_DOWNLOAD:Z

    if-eqz v0, :cond_f

    .line 1409
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f1202e8

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;I)V

    return-void

    .line 1413
    :cond_f
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 1414
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 1418
    :cond_21
    new-instance v0, Lcom/codemao/nemo/fragment/CreateFragment$17;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/codemao/nemo/fragment/CreateFragment$17;-><init>(Lcom/codemao/nemo/fragment/CreateFragment;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Z)V

    invoke-static {v0}, Lcom/giu/xzz/utils/ThreadPoolUtil;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private enter(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 6

    .line 1000
    new-instance v0, Lcom/codemao/creativestore/bean/WorksEvent;

    invoke-direct {v0}, Lcom/codemao/creativestore/bean/WorksEvent;-><init>()V

    .line 1001
    iget-boolean v1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->isMould:Z

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_1c

    .line 1002
    iput v2, v0, Lcom/codemao/creativestore/bean/WorksEvent;->type:I

    .line 1003
    iget-object v1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->getName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/codemao/creativestore/bean/WorksEvent;->name:Ljava/lang/String;

    .line 1004
    invoke-static {}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->createNewPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/codemao/creativestore/bean/WorksEvent;->desDirPath:Ljava/lang/String;

    goto :goto_22

    .line 1006
    :cond_1c
    iput v3, v0, Lcom/codemao/creativestore/bean/WorksEvent;->type:I

    .line 1007
    iget-object v1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    iput-object v1, v0, Lcom/codemao/creativestore/bean/WorksEvent;->name:Ljava/lang/String;

    .line 1009
    :goto_22
    iget v1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishStatus:I

    if-ne v1, v2, :cond_27

    goto :goto_28

    :cond_27
    const/4 v3, 0x0

    :goto_28
    iput-boolean v3, v0, Lcom/codemao/creativestore/bean/WorksEvent;->havePublished:Z

    .line 1010
    iget-boolean v1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->have_published_status:Z

    iput-boolean v1, v0, Lcom/codemao/creativestore/bean/WorksEvent;->havePublishStatus:Z

    .line 1011
    iget-object v1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/codemao/creativestore/bean/WorksEvent;->workId:Ljava/lang/String;

    .line 1012
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/codemao/nemo/util/BcmHelper;->getPrefixPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".bcm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/codemao/creativestore/bean/WorksEvent;->srcPath:Ljava/lang/String;

    .line 1013
    iget-boolean p1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->isLandscape:Z

    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/bean/WorksEvent;->setLandscapeStage(Z)V

    .line 1014
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/BcmHelper;->enter(Landroid/content/Context;Lcom/codemao/creativestore/bean/WorksEvent;)V

    return-void
.end method

.method private generate(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V
    .registers 7

    .line 1181
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment;->mGenerateMiaoCodeDialog:Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    const/4 v1, 0x1

    if-nez v0, :cond_19

    .line 1182
    new-instance v0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment;->mGenerateMiaoCodeDialog:Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    .line 1183
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->setType(I)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_20

    .line 1185
    :cond_19
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->showByType(I)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1189
    :goto_20
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment;->mGenerateMiaoCodeDialog:Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    new-instance v1, Lcom/codemao/nemo/fragment/CreateFragment$14;

    invoke-direct {v1, p0, p1, p2}, Lcom/codemao/nemo/fragment/CreateFragment$14;-><init>(Lcom/codemao/nemo/fragment/CreateFragment;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->setGenerateMiaoCodeErrorCallback(Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$GenerateMiaoCodeErrorCallback;)V

    .line 1196
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/fragment/CreateFragment;->checkMiaoCode(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V

    return-void
.end method

.method private generateMiaoCode(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 5

    .line 1243
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/BcmHelper;->getConfigVO(Landroid/content/Context;)Lcom/codemao/nemo/bean/ConfigVO;

    .line 1244
    new-instance v0, Lcom/codemao/nemo/bean/GetMiaoCodeRequest;

    invoke-direct {v0}, Lcom/codemao/nemo/bean/GetMiaoCodeRequest;-><init>()V

    .line 1245
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getBcmVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/GetMiaoCodeRequest;->setBcm_version(Ljava/lang/String;)V

    .line 1246
    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getAppVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/GetMiaoCodeRequest;->setApp_version(Ljava/lang/String;)V

    .line 1247
    iget-object v1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/GetMiaoCodeRequest;->setName(Ljava/lang/String;)V

    const-string v1, "android"

    .line 1248
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/GetMiaoCodeRequest;->setOs(Ljava/lang/String;)V

    .line 1249
    iget-object v1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/GetMiaoCodeRequest;->setWork_id(Ljava/lang/String;)V

    .line 1250
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/GetMiaoCodeRequest;->setEquipment(Ljava/lang/String;)V

    .line 1251
    iget-object v1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->bcm_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/GetMiaoCodeRequest;->setWork_url(Ljava/lang/String;)V

    .line 1252
    iget-object v1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishPreview:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/GetMiaoCodeRequest;->setPreview(Ljava/lang/String;)V

    .line 1253
    iget-object v1, p0, Lcom/codemao/nemo/fragment/CreateFragment;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;

    new-instance v2, Lcom/codemao/nemo/fragment/CreateFragment$16;

    invoke-direct {v2, p0, p1}, Lcom/codemao/nemo/fragment/CreateFragment$16;-><init>(Lcom/codemao/nemo/fragment/CreateFragment;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    invoke-virtual {v1, v0, v2}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->shareMiaoCode(Lcom/codemao/nemo/bean/GetMiaoCodeRequest;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method

.method private getInvalidData(Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 943
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;

    new-instance v1, Lcom/codemao/nemo/fragment/CreateFragment$8;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/CreateFragment$8;-><init>(Lcom/codemao/nemo/fragment/CreateFragment;)V

    invoke-virtual {v0, p1, v1}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->checkWork(Ljava/util/Set;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method

.method private getPositionByPath(Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    .line 1450
    :goto_1
    iget-object v1, p0, Lcom/codemao/nemo/fragment/CreateFragment;->mDatas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 1451
    iget-object v1, p0, Lcom/codemao/nemo/fragment/CreateFragment;->mDatas:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-boolean v1, v1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->isMould:Z

    if-nez v1, :cond_26

    iget-object v1, p0, Lcom/codemao/nemo/fragment/CreateFragment;->mDatas:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v1, v1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    return v0

    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_29
    const/4 p1, -0x1

    return p1
.end method

.method private goPublishActivity(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "我的-点击发布草稿箱作品"

    .line 1087
    invoke-static {v1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1088
    iget-object v0, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1089
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1090
    iget-object v3, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    const-string v4, "defaultImagePath"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1091
    iget-object v3, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    const-string v4, "name"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1092
    iget-object v3, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->desc:Ljava/lang/String;

    const-string v4, "des"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1093
    iget-object p1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishPreview:Ljava/lang/String;

    const-string v3, "imagePath"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "workId"

    .line 1094
    invoke-virtual {v2, p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/4 p1, 0x1

    const-string v0, "type"

    .line 1095
    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1096
    invoke-virtual {p0, v2}, Lcom/giu/xzz/BaseFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private hasEnterTimeout()Z
    .registers 3

    .line 987
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 989
    iget-boolean v0, p0, Lcom/codemao/nemo/fragment/CreateFragment;->hasEnterTimeOut:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 990
    iput-boolean v1, p0, Lcom/codemao/nemo/fragment/CreateFragment;->hasEnterTimeOut:Z

    goto :goto_16

    :cond_15
    const/4 v1, 0x1

    :goto_16
    return v1
.end method

.method private init()V
    .registers 3

    .line 240
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/CreateFragment;->initAdapter()V

    .line 242
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment;->tvGoBind:Landroid/widget/TextView;

    const-string v1, "为保证作品可在其他设备查看，请<font color=\"#6F60DD\">绑定手机号！</font>"

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/CreateFragment;->updateBindStatus()V

    .line 244
    iget-boolean v0, p0, Lcom/codemao/nemo/fragment/CreateFragment;->needFilt:Z

    if-eqz v0, :cond_19

    .line 245
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/CreateFragment;->afterLoadData()V

    goto :goto_1c

    .line 247
    :cond_19
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/CreateFragment;->notifyBcmData()V

    :goto_1c
    return-void
.end method

.method private initAdapter()V
    .registers 6

    .line 278
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment;->mDatas:Ljava/util/List;

    .line 279
    new-instance v0, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/nemo/fragment/CreateFragment;->mDatas:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment;->mAdapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 280
    new-instance v0, Lcom/codemao/nemo/delegates/CreateItemDelegate;

    new-instance v1, Lcom/codemao/nemo/fragment/CreateFragment$2;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/CreateFragment$2;-><init>(Lcom/codemao/nemo/fragment/CreateFragment;)V

    invoke-direct {v0, v1}, Lcom/codemao/nemo/delegates/CreateItemDelegate;-><init>(Lcom/codemao/nemo/delegates/CreateItemDelegate$CreateCallBack;)V

    iput-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment;->mDelegate:Lcom/codemao/nemo/delegates/CreateItemDelegate;

    .line 752
    iget-object v1, p0, Lcom/codemao/nemo/fragment/CreateFragment;->mAdapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v1, v0}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 753
    new-instance v0, Lcom/codemao/nemo/view/WrapGridLayoutmanager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/codemao/nemo/fragment/CreateFragment;->mSpanNum:I

    invoke-direct {v0, v1, v2}, Lcom/codemao/nemo/view/WrapGridLayoutmanager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment;->mLayoutManager:Lcom/codemao/nemo/view/WrapGridLayoutmanager;

    .line 754
    new-instance v1, Lcom/codemao/nemo/fragment/CreateFragment$3;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/CreateFragment$3;-><init>(Lcom/codemao/nemo/fragment/CreateFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 764
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result v1

    if-eqz v1, :cond_48

    const v1, 0x7f070244

    goto :goto_4b

    :cond_48
    const v1, 0x7f07025b

    :goto_4b
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 768
    iget-object v1, p0, Lcom/codemao/nemo/fragment/CreateFragment;->rvContainer:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/codemao/nemo/fragment/CreateFragment$4;

    invoke-direct {v2, p0, v0}, Lcom/codemao/nemo/fragment/CreateFragment$4;-><init>(Lcom/codemao/nemo/fragment/CreateFragment;I)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 792
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment;->rvContainer:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/codemao/nemo/fragment/CreateFragment;->mLayoutManager:Lcom/codemao/nemo/view/WrapGridLayoutmanager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 793
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment;->rvContainer:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/codemao/nemo/fragment/CreateFragment;->mAdapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 795
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment;->rvContainer:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/codemao/nemo/fragment/CreateFragment$5;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/CreateFragment$5;-><init>(Lcom/codemao/nemo/fragment/CreateFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 806
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    new-instance v1, Lcom/codemao/nemo/fragment/CreateFragment$6;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/CreateFragment$6;-><init>(Lcom/codemao/nemo/fragment/CreateFragment;)V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const v4, 0x7f0a0212

    aput v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/codemao/nemo/view/LoadView;->setOnClickListener(Landroid/view/View$OnClickListener;[I)V

    return-void
.end method

.method private static synthetic lambda$notifyBcmData$0(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 254
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result p0

    if-eqz p0, :cond_15

    .line 255
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/codemao/nemo/bean/LocalUserInfo;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Lcom/codemao/nemo/util/BcmHelper;->moveUnLoginDirToUserDir(Ljava/lang/Long;)V

    :cond_15
    const/4 p0, 0x1

    .line 257
    invoke-static {p0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->getBcms(Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$notifyBcmData$1(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 262
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 263
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment;->mDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 264
    sget-object p1, Lcom/codemao/nemo/util/BcmHelper;->totalIds:Ljava/util/Set;

    if-eqz p1, :cond_21

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-gtz p1, :cond_15

    goto :goto_21

    .line 267
    :cond_15
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result p1

    if-eqz p1, :cond_37

    .line 268
    sget-object p1, Lcom/codemao/nemo/util/BcmHelper;->totalIds:Ljava/util/Set;

    invoke-direct {p0, p1}, Lcom/codemao/nemo/fragment/CreateFragment;->getInvalidData(Ljava/util/Set;)V

    goto :goto_37

    .line 265
    :cond_21
    :goto_21
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/codemao/nemo/event/MineTabEvent;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/codemao/nemo/fragment/CreateFragment;->mDatas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/codemao/nemo/event/MineTabEvent;-><init>(II)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 266
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/CreateFragment;->afterLoadData()V

    :cond_37
    :goto_37
    return-void
.end method

.method private synthetic lambda$notifyBcmData$2(Ljava/lang/Throwable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->showError()V

    .line 272
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static newInstance(Z)Lcom/codemao/nemo/fragment/CreateFragment;
    .registers 4

    .line 169
    new-instance v0, Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-direct {v0}, Lcom/codemao/nemo/fragment/CreateFragment;-><init>()V

    .line 170
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "needFilt"

    .line 171
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 172
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private notifyBcmData()V
    .registers 4

    const-string v0, ""

    .line 252
    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/codemao/nemo/fragment/CreateFragment$$ExternalSyntheticLambda2;->INSTANCE:Lcom/codemao/nemo/fragment/CreateFragment$$ExternalSyntheticLambda2;

    .line 253
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 259
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 260
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/fragment/CreateFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/CreateFragment$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/nemo/fragment/CreateFragment;)V

    new-instance v2, Lcom/codemao/nemo/fragment/CreateFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/fragment/CreateFragment$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/fragment/CreateFragment;)V

    .line 261
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 274
    iget-object v1, p0, Lcom/giu/xzz/BaseFragment;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private parseCreateData(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 4

    .line 1280
    iget v0, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->downloadStatus:I

    iput v0, p2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->downloadStatus:I

    .line 1281
    iget v0, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->roles:I

    iput v0, p2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->roles:I

    .line 1282
    iget v0, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->blocks:I

    iput v0, p2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->blocks:I

    .line 1283
    iget v0, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->downloadStatus:I

    iput v0, p2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->downloadStatus:I

    .line 1284
    iget-boolean v0, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->isMould:Z

    iput-boolean v0, p2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->isMould:Z

    .line 1285
    iget v0, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->uploadStatus:I

    iput v0, p2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->uploadStatus:I

    .line 1286
    iget-boolean p1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->have_published_status:Z

    iput-boolean p1, p2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->have_published_status:Z

    return-void
.end method

.method private refresh()V
    .registers 3

    .line 1510
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment;->mProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1511
    new-instance v0, Lcom/codemao/nemo/fragment/CreateFragment$19;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/fragment/CreateFragment$19;-><init>(Lcom/codemao/nemo/fragment/CreateFragment;)V

    invoke-static {v0}, Lcom/giu/xzz/utils/ThreadPoolUtil;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private sendErrorMessage(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 4

    const/4 v0, 0x1

    .line 1069
    iput v0, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->uploadStatus:I

    const/4 v0, 0x0

    .line 1070
    iput v0, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishStatus:I

    .line 1071
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xc

    .line 1072
    iput v1, v0, Landroid/os/Message;->what:I

    .line 1073
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1074
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment;->handler:Lcom/giu/xzz/utils/HandlerUtil;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private showLoadingDialog(Ljava/lang/String;)V
    .registers 4

    .line 1877
    new-instance v0, Lcom/codemao/nemo/dialog/LoadingDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/codemao/nemo/dialog/LoadingDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment;->mDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    .line 1878
    invoke-virtual {v0}, Lcom/codemao/nemo/dialog/LoadingDialog;->show()V

    return-void
.end method

.method private showRenameDialog(I)V
    .registers 5

    .line 1100
    new-instance v0, Lcom/codemao/nemo/view/RenameDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/nemo/fragment/CreateFragment;->mDatas:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v2, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/codemao/nemo/view/RenameDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lcom/codemao/nemo/fragment/CreateFragment$11;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/CreateFragment$11;-><init>(Lcom/codemao/nemo/fragment/CreateFragment;)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/RenameDialog;->setConfirmListener(Lcom/codemao/nemo/view/RenameDialog$RenameConfirmCallback;)Lcom/codemao/nemo/view/RenameDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment;->renameDialog:Lcom/codemao/nemo/view/RenameDialog;

    .line 1123
    iget-object v1, p0, Lcom/codemao/nemo/fragment/CreateFragment;->mDatas:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v1, v1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/RenameDialog;->setContent(Ljava/lang/String;)Lcom/codemao/nemo/view/RenameDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/view/RenameDialog;->setPosition(I)Lcom/codemao/nemo/view/RenameDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/view/RenameDialog;->show()V

    return-void
.end method

.method private showShareMiaoCodeDialog(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V
    .registers 6

    .line 1127
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment;->shareMiaoCodeDialog:Lcom/codemao/nemo/view/ShareMiaoCodeDialog;

    if-nez v0, :cond_11

    .line 1128
    new-instance v0, Lcom/codemao/nemo/view/ShareMiaoCodeDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/codemao/nemo/view/ShareMiaoCodeDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment;->shareMiaoCodeDialog:Lcom/codemao/nemo/view/ShareMiaoCodeDialog;

    .line 1130
    :cond_11
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment;->shareMiaoCodeDialog:Lcom/codemao/nemo/view/ShareMiaoCodeDialog;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/view/ShareMiaoCodeDialog;->setData(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)Lcom/codemao/nemo/view/ShareMiaoCodeDialog;

    move-result-object p1

    new-instance v0, Lcom/codemao/nemo/fragment/CreateFragment$12;

    invoke-direct {v0, p0, p2}, Lcom/codemao/nemo/fragment/CreateFragment$12;-><init>(Lcom/codemao/nemo/fragment/CreateFragment;I)V

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/ShareMiaoCodeDialog;->setShareMiaoCodeCallback(Lcom/codemao/nemo/view/ShareMiaoCodeDialog$ShareMiaoCodeCallback;)Lcom/codemao/nemo/view/ShareMiaoCodeDialog;

    move-result-object p1

    .line 1142
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private updateBcm(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;)V
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1357
    :goto_2
    iget-object v2, p0, Lcom/codemao/nemo/fragment/CreateFragment;->mDatas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2e

    .line 1358
    iget-object v2, p0, Lcom/codemao/nemo/fragment/CreateFragment;->mDatas:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    .line 1359
    iget-object v3, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 1360
    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getId()J

    move-result-wide v3

    iget-object v5, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_2b

    goto :goto_2f

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2e
    const/4 v2, 0x0

    :goto_2f
    if-eqz v2, :cond_34

    .line 1367
    invoke-direct {p0, v0, v2, p1}, Lcom/codemao/nemo/fragment/CreateFragment;->download(ZLcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;)V

    :cond_34
    return-void
.end method

.method private updateBindStatus()V
    .registers 3

    .line 225
    iget-boolean v0, p0, Lcom/codemao/nemo/fragment/CreateFragment;->needFilt:Z

    if-nez v0, :cond_21

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isBBKLogin()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->hasPhone()Z

    move-result v0

    if-nez v0, :cond_21

    .line 226
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment;->rlGoBind:Landroidx/cardview/widget/CardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment;->rlGoBind:Landroidx/cardview/widget/CardView;

    new-instance v1, Lcom/codemao/nemo/fragment/CreateFragment$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/CreateFragment$1;-><init>(Lcom/codemao/nemo/fragment/CreateFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_28

    .line 235
    :cond_21
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment;->rlGoBind:Landroidx/cardview/widget/CardView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_28
    return-void
.end method

.method private upload(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x3

    .line 824
    iput v0, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->uploadStatus:I

    .line 825
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment;->mAdapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 826
    invoke-static {p1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->updatePublishStatus(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)Z

    .line 827
    new-instance v0, Lcom/codemao/nemo/fragment/CreateFragment$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/codemao/nemo/fragment/CreateFragment$7;-><init>(Lcom/codemao/nemo/fragment/CreateFragment;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V

    invoke-static {v0}, Lcom/giu/xzz/utils/ThreadPoolUtil;->post(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected contentViewId()I
    .registers 2

    .line 178
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/nemo/fragment/CreateFragment;->isPad:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x2

    .line 180
    iput v0, p0, Lcom/codemao/nemo/fragment/CreateFragment;->mSpanNum:I

    :cond_b
    const v0, 0x7f0d0149

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    .line 206
    invoke-super {p0, p1}, Lcom/giu/xzz/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 207
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/CreateFragment;->init()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .line 1908
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, -0x1

    if-ne p2, p3, :cond_17

    const/16 p2, 0x2766

    if-ne p1, p2, :cond_17

    .line 1910
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/codemao/nemo/event/InstallPermissionResult;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Lcom/codemao/nemo/event/InstallPermissionResult;-><init>(I)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_17
    return-void
.end method

.method public onBackHeaderEV(Lcom/codemao/nemo/event/BackHeaderEV;)V
    .registers 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 1578
    iget-object p1, p1, Lcom/codemao/nemo/event/BackHeaderEV;->mClass:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 1579
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment;->rvContainer:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_1a

    const/4 v0, 0x0

    .line 1580
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_1a
    return-void
.end method

.method public onBind(Lcom/codemao/nemo/event/BindEvent;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 1931
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/CreateFragment;->updateBindStatus()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 187
    invoke-super {p0, p1}, Lcom/giu/xzz/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 188
    invoke-static {}, Lcom/codemao/nemo/util/PermissionUtils;->getImagesStoragePermissions()[Ljava/lang/String;

    .line 189
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_14

    const-string v0, "needFilt"

    .line 191
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/codemao/nemo/fragment/CreateFragment;->needFilt:Z

    .line 193
    :cond_14
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 194
    new-instance p1, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;

    invoke-direct {p1, p0}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;-><init>(Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;)V

    iput-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;

    return-void
.end method

.method public onDeleteBcmEvent(Lcom/codemao/nemo/event/DeleteBcmEvent;)V
    .registers 7
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1386
    iget-object v0, p1, Lcom/codemao/nemo/event/DeleteBcmEvent;->createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    if-eqz v0, :cond_56

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1389
    :goto_6
    iget-object v2, p0, Lcom/codemao/nemo/fragment/CreateFragment;->mDatas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_29

    .line 1390
    iget-object v2, p0, Lcom/codemao/nemo/fragment/CreateFragment;->mDatas:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v2, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    iget-object v4, p1, Lcom/codemao/nemo/event/DeleteBcmEvent;->createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v4, v4, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    const/4 p1, 0x1

    goto :goto_2b

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_29
    const/4 p1, 0x0

    const/4 v1, 0x0

    :goto_2b
    if-eqz p1, :cond_56

    .line 1398
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment;->mDatas:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1399
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment;->mAdapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 1400
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment;->mAdapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    iget-object v2, p0, Lcom/codemao/nemo/fragment/CreateFragment;->mDatas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    add-int/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 1401
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v1, Lcom/codemao/nemo/event/MineTabEvent;

    iget-object v2, p0, Lcom/codemao/nemo/fragment/CreateFragment;->mDatas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/codemao/nemo/event/MineTabEvent;-><init>(II)V

    invoke-virtual {p1, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_56
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 212
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 213
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;

    if-eqz v0, :cond_e

    .line 214
    invoke-virtual {v0}, Lcom/codemao/nemo/http/NetUtils;->dispose()V

    .line 218
    :cond_e
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment;->handler:Lcom/giu/xzz/utils/HandlerUtil;

    if-eqz v0, :cond_1a

    const/4 v1, 0x0

    .line 219
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 221
    :cond_1a
    invoke-super {p0}, Lcom/giu/xzz/BaseFragment;->onDestroy()V

    return-void
.end method

.method public onDownloadBcmEvent(Lcom/codemao/nemo/event/DownloadBcmEvent;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1346
    iget-object v0, p1, Lcom/codemao/nemo/event/DownloadBcmEvent;->workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    .line 1347
    iget p1, p1, Lcom/codemao/nemo/event/DownloadBcmEvent;->downloadType:I

    const/4 v1, 0x1

    if-nez p1, :cond_c

    const/4 p1, 0x0

    .line 1349
    invoke-direct {p0, v1, p1, v0}, Lcom/codemao/nemo/fragment/CreateFragment;->download(ZLcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;)V

    goto :goto_11

    :cond_c
    if-ne p1, v1, :cond_11

    .line 1351
    invoke-direct {p0, v0}, Lcom/codemao/nemo/fragment/CreateFragment;->updateBcm(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;)V

    :cond_11
    :goto_11
    return-void
.end method

.method public onDownloadBcmResult(Lcom/codemao/creativecenter/utils/bcm/events/DownloadBcmResult;)V
    .registers 9
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1291
    iget-boolean v0, p0, Lcom/codemao/nemo/fragment/CreateFragment;->needFilt:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_99

    .line 1294
    iget-object v0, p1, Lcom/codemao/creativecenter/utils/bcm/events/DownloadBcmResult;->createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    if-eqz v0, :cond_99

    .line 1295
    iget v1, p1, Lcom/codemao/creativecenter/utils/bcm/events/DownloadBcmResult;->status:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    sput-boolean v1, Lcom/codemao/nemo/util/AppConstants;->HAS_BCM_DOWNLOAD:Z

    .line 1297
    iget-object v1, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/codemao/nemo/fragment/CreateFragment;->getPositionByPath(Ljava/lang/String;)I

    move-result v1

    .line 1298
    iget v4, p1, Lcom/codemao/creativecenter/utils/bcm/events/DownloadBcmResult;->type:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-ne v4, v6, :cond_41

    .line 1299
    iget p1, p1, Lcom/codemao/creativecenter/utils/bcm/events/DownloadBcmResult;->status:I

    if-ne p1, v6, :cond_29

    .line 1300
    iput v5, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->downloadStatus:I

    goto :goto_2d

    :cond_29
    if-ne p1, v2, :cond_2d

    .line 1302
    iput v6, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->downloadStatus:I

    .line 1304
    :cond_2d
    :goto_2d
    invoke-static {v0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->updateDownloadData(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    .line 1305
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment;->mDatas:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-direct {p0, v0, p1}, Lcom/codemao/nemo/fragment/CreateFragment;->parseCreateData(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    .line 1306
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment;->mAdapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void

    :cond_41
    const/4 v2, -0x1

    if-ne v1, v2, :cond_6b

    .line 1310
    iget p1, p1, Lcom/codemao/creativecenter/utils/bcm/events/DownloadBcmResult;->status:I

    if-ne p1, v6, :cond_49

    return-void

    .line 1314
    :cond_49
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment;->mDatas:Ljava/util/List;

    invoke-interface {p1, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1316
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment;->mAdapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1317
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment;->rvContainer:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 1318
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/codemao/nemo/event/MineTabEvent;

    iget-object v1, p0, Lcom/codemao/nemo/fragment/CreateFragment;->mDatas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v3, v1}, Lcom/codemao/nemo/event/MineTabEvent;-><init>(II)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_99

    .line 1321
    :cond_6b
    iget-object v2, p0, Lcom/codemao/nemo/fragment/CreateFragment;->mDatas:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    .line 1322
    invoke-direct {p0, v0, v2}, Lcom/codemao/nemo/fragment/CreateFragment;->parseCreateData(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    .line 1324
    iget v3, p1, Lcom/codemao/creativecenter/utils/bcm/events/DownloadBcmResult;->status:I

    if-ne v3, v6, :cond_85

    .line 1325
    iput v5, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->downloadStatus:I

    .line 1326
    invoke-static {v2}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->updatePublishStatus(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)Z

    .line 1327
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment;->mAdapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void

    .line 1331
    :cond_85
    iget p1, p1, Lcom/codemao/creativecenter/utils/bcm/events/DownloadBcmResult;->type:I

    if-ne p1, v5, :cond_91

    .line 1332
    iput v6, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->uploadStatus:I

    .line 1333
    iput v6, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishStatus:I

    .line 1334
    iget-object p1, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    iput-object p1, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    .line 1336
    :cond_91
    invoke-static {v2}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->updatePublishStatus(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)Z

    .line 1337
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment;->mAdapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_99
    :goto_99
    return-void
.end method

.method public onEvent(Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;)V
    .registers 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 1924
    iget-boolean v0, p1, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;->isVerified:Z

    if-eqz v0, :cond_1b

    iget-boolean v0, p1, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;->isFinishAnswer:Z

    if-nez v0, :cond_1b

    iget v0, p1, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1b

    .line 1925
    :cond_10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget p1, p1, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;->type:I

    iget-object v2, p0, Lcom/codemao/nemo/fragment/CreateFragment;->curPublishData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-static {v0, p1, v2, v1}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->goAnswer(Landroid/content/Context;ILcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Z)V

    :cond_1b
    return-void
.end method

.method public onFinishAnswer(Lcom/codemao/nemo/event/FinishAnswerEvent;)V
    .registers 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 1917
    invoke-virtual {p1}, Lcom/codemao/nemo/event/FinishAnswerEvent;->getType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_e

    .line 1918
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment;->curPublishData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget v0, p0, Lcom/codemao/nemo/fragment/CreateFragment;->curPublishPosition:I

    invoke-direct {p0, p1, v0}, Lcom/codemao/nemo/fragment/CreateFragment;->upload(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V

    :cond_e
    return-void
.end method

.method public onLogin(Lcom/codemao/nemo/event/LoginEvent;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 1535
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/CreateFragment;->refresh()V

    return-void
.end method

.method public onRefreshEvent(Lcom/codemao/nemo/event/RefreshEvent;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1506
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/CreateFragment;->refresh()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 1902
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 1903
    invoke-static {p1, p2, p3, v0}, Lpub/devrel/easypermissions/EasyPermissions;->onRequestPermissionsResult(I[Ljava/lang/String;[I[Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .registers 2

    .line 1893
    invoke-super {p0}, Lcom/giu/xzz/BaseFragment;->onResume()V

    .line 1894
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment;->renameDialog:Lcom/codemao/nemo/view/RenameDialog;

    if-eqz v0, :cond_a

    .line 1895
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_a
    return-void
.end method

.method public onSearchEvent(Lcom/codemao/nemo/event/SearchEvent;)V
    .registers 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1460
    iget-boolean v0, p0, Lcom/codemao/nemo/fragment/CreateFragment;->needFilt:Z

    if-eqz v0, :cond_1a

    .line 1461
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->showLoading()V

    .line 1462
    iget-object v0, p1, Lcom/codemao/nemo/event/SearchEvent;->keyword:Ljava/lang/String;

    iput-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment;->keyword:Ljava/lang/String;

    .line 1463
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1465
    new-instance v0, Lcom/codemao/nemo/fragment/CreateFragment$18;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/fragment/CreateFragment$18;-><init>(Lcom/codemao/nemo/fragment/CreateFragment;Lcom/codemao/nemo/event/SearchEvent;)V

    invoke-static {v0}, Lcom/giu/xzz/utils/ThreadPoolUtil;->post(Ljava/lang/Runnable;)V

    :cond_1a
    return-void
.end method

.method public onUpdateWorkInfoEvents(Lcom/codemao/nemo/event/UpdateWorkInfoEvents;)V
    .registers 7
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 1540
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_e

    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getType()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_bc

    .line 1541
    :cond_e
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getWorkId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 1542
    :goto_17
    iget-object v3, p0, Lcom/codemao/nemo/fragment/CreateFragment;->mDatas:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_bc

    .line 1543
    iget-object v3, p0, Lcom/codemao/nemo/fragment/CreateFragment;->mDatas:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    .line 1544
    iget-object v4, v3, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b8

    .line 1545
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->isError()Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_4e

    .line 1546
    iput v4, v3, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->uploadStatus:I

    .line 1547
    iput v4, v3, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishStatus:I

    .line 1548
    invoke-static {v3}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->updatePublishStatus(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)Z

    .line 1549
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/16 v0, 0xb

    .line 1550
    iput v0, p1, Landroid/os/Message;->what:I

    .line 1551
    iput-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1552
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment;->handler:Lcom/giu/xzz/utils/HandlerUtil;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 1556
    :cond_4e
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getType()I

    move-result v0

    if-ne v0, v1, :cond_56

    const/4 v0, 0x2

    goto :goto_57

    :cond_56
    const/4 v0, 0x3

    :goto_57
    iput v0, v3, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishStatus:I

    .line 1557
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getNewWorkName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_69

    .line 1558
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getNewWorkName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    .line 1560
    :cond_69
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getType()I

    move-result v0

    if-ne v0, v1, :cond_83

    .line 1561
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getWorkDetailInfo()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getPreview()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishPreview:Ljava/lang/String;

    .line 1562
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getWorkDetailInfo()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->desc:Ljava/lang/String;

    .line 1564
    :cond_83
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getWorkDetailInfo()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getBase64Str()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ad

    .line 1565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data:image/jpeg;base64,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getWorkDetailInfo()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getBase64Str()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->updateCover(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;)Z

    .line 1567
    :cond_ad
    iput-boolean v4, v3, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->have_published_status:Z

    .line 1568
    invoke-static {v3}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->updatePublishStatus(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)Z

    .line 1569
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment;->mAdapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void

    :cond_b8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_17

    :cond_bc
    return-void
.end method

.method public onUploadBcmEvent(Lcom/codemao/nemo/event/UploadBcmEvent;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_1f

    .line 1373
    iget-object v0, p1, Lcom/codemao/nemo/event/UploadBcmEvent;->data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    if-eqz v0, :cond_1f

    .line 1374
    iget-object v0, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/codemao/nemo/fragment/CreateFragment;->getPositionByPath(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    .line 1376
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/CreateFragment;->refresh()V

    return-void

    .line 1379
    :cond_13
    iget-object v1, p0, Lcom/codemao/nemo/fragment/CreateFragment;->mDatas:Ljava/util/List;

    iget-object p1, p1, Lcom/codemao/nemo/event/UploadBcmEvent;->data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1380
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment;->mAdapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1f
    return-void
.end method

.method public onUserInfoChanged()V
    .registers 1

    return-void
.end method

.method public onWorksEvent(Lcom/codemao/creativestore/bean/WorksEvent;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 1497
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x5

    .line 1498
    iput v1, v0, Landroid/os/Message;->what:I

    .line 1499
    iget-boolean v1, p1, Lcom/codemao/creativestore/bean/WorksEvent;->update:Z

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1500
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1501
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment;->handler:Lcom/giu/xzz/utils/HandlerUtil;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public scrollToTop()V
    .registers 3

    .line 1935
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment;->rvContainer:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 1936
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_8
    return-void
.end method
