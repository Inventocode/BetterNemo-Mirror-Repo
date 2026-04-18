.class public Lcom/codemao/nemo/util/ReworkHelper;
.super Ljava/lang/Object;
.source "ReworkHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/util/ReworkHelper$ReWorkForkCallback;
    }
.end annotation


# instance fields
.field private callback:Lcom/codemao/nemo/util/ReworkHelper$ReWorkForkCallback;

.field private createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

.field private data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

.field private detailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

.field private discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

.field private handler:Lcom/giu/xzz/utils/HandlerUtil;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/giu/xzz/utils/HandlerUtil<",
            "Lcom/giu/xzz/BaseFragment;",
            ">;"
        }
    .end annotation
.end field

.field private hasAdd:Z

.field private mActivity:Landroid/app/Activity;

.field private newWorkId:J

.field private openLater:Z

.field private reWorkDialog:Lcom/codemao/nemo/view/ReWorkDialog;

.field private status:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    new-instance v0, Lcom/giu/xzz/utils/HandlerUtil;

    new-instance v1, Lcom/codemao/nemo/util/ReworkHelper$5;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/util/ReworkHelper$5;-><init>(Lcom/codemao/nemo/util/ReworkHelper;)V

    invoke-direct {v0, p0, v1}, Lcom/giu/xzz/utils/HandlerUtil;-><init>(Ljava/lang/Object;Lcom/giu/xzz/utils/HandlerUtil$HandleBack;)V

    iput-object v0, p0, Lcom/codemao/nemo/util/ReworkHelper;->handler:Lcom/giu/xzz/utils/HandlerUtil;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/util/ReworkHelper;)Z
    .registers 1

    .line 38
    iget-boolean p0, p0, Lcom/codemao/nemo/util/ReworkHelper;->openLater:Z

    return p0
.end method

.method static synthetic access$002(Lcom/codemao/nemo/util/ReworkHelper;Z)Z
    .registers 2

    .line 38
    iput-boolean p1, p0, Lcom/codemao/nemo/util/ReworkHelper;->openLater:Z

    return p1
.end method

.method static synthetic access$100(Lcom/codemao/nemo/util/ReworkHelper;)Lcom/codemao/nemo/view/ReWorkDialog;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/codemao/nemo/util/ReworkHelper;->reWorkDialog:Lcom/codemao/nemo/view/ReWorkDialog;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/codemao/nemo/util/ReworkHelper;)Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/codemao/nemo/util/ReworkHelper;->detailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/codemao/nemo/util/ReworkHelper;)J
    .registers 3

    .line 38
    iget-wide v0, p0, Lcom/codemao/nemo/util/ReworkHelper;->newWorkId:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/codemao/nemo/util/ReworkHelper;J)J
    .registers 3

    .line 38
    iput-wide p1, p0, Lcom/codemao/nemo/util/ReworkHelper;->newWorkId:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/codemao/nemo/util/ReworkHelper;)V
    .registers 1

    .line 38
    invoke-direct {p0}, Lcom/codemao/nemo/util/ReworkHelper;->onErrorMessage()V

    return-void
.end method

.method static synthetic access$1302(Lcom/codemao/nemo/util/ReworkHelper;Z)Z
    .registers 2

    .line 38
    iput-boolean p1, p0, Lcom/codemao/nemo/util/ReworkHelper;->hasAdd:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/codemao/nemo/util/ReworkHelper;)Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/codemao/nemo/util/ReworkHelper;->data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/codemao/nemo/util/ReworkHelper;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/codemao/nemo/util/ReworkHelper;->data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/codemao/nemo/util/ReworkHelper;)Lcom/giu/xzz/utils/HandlerUtil;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/codemao/nemo/util/ReworkHelper;->handler:Lcom/giu/xzz/utils/HandlerUtil;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/codemao/nemo/util/ReworkHelper;)V
    .registers 1

    .line 38
    invoke-direct {p0}, Lcom/codemao/nemo/util/ReworkHelper;->enter()V

    return-void
.end method

.method static synthetic access$200(Lcom/codemao/nemo/util/ReworkHelper;)Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/codemao/nemo/util/ReworkHelper;->createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    return-object p0
.end method

.method static synthetic access$300(Lcom/codemao/nemo/util/ReworkHelper;)V
    .registers 1

    .line 38
    invoke-direct {p0}, Lcom/codemao/nemo/util/ReworkHelper;->cancel()V

    return-void
.end method

.method static synthetic access$400(Lcom/codemao/nemo/util/ReworkHelper;)Landroid/app/Activity;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/codemao/nemo/util/ReworkHelper;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$500(Lcom/codemao/nemo/util/ReworkHelper;)I
    .registers 1

    .line 38
    iget p0, p0, Lcom/codemao/nemo/util/ReworkHelper;->status:I

    return p0
.end method

.method static synthetic access$600(Lcom/codemao/nemo/util/ReworkHelper;)V
    .registers 1

    .line 38
    invoke-direct {p0}, Lcom/codemao/nemo/util/ReworkHelper;->fork()V

    return-void
.end method

.method static synthetic access$700(Lcom/codemao/nemo/util/ReworkHelper;)V
    .registers 1

    .line 38
    invoke-direct {p0}, Lcom/codemao/nemo/util/ReworkHelper;->updateName()V

    return-void
.end method

.method static synthetic access$800(Lcom/codemao/nemo/util/ReworkHelper;)V
    .registers 1

    .line 38
    invoke-direct {p0}, Lcom/codemao/nemo/util/ReworkHelper;->download()V

    return-void
.end method

.method static synthetic access$900(Lcom/codemao/nemo/util/ReworkHelper;)Lcom/codemao/nemo/util/ReworkHelper$ReWorkForkCallback;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/codemao/nemo/util/ReworkHelper;->callback:Lcom/codemao/nemo/util/ReworkHelper$ReWorkForkCallback;

    return-object p0
.end method

.method private cancel()V
    .registers 2

    .line 149
    iget-object v0, p0, Lcom/codemao/nemo/util/ReworkHelper;->reWorkDialog:Lcom/codemao/nemo/view/ReWorkDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 150
    iget-object v0, p0, Lcom/codemao/nemo/util/ReworkHelper;->callback:Lcom/codemao/nemo/util/ReworkHelper$ReWorkForkCallback;

    invoke-interface {v0}, Lcom/codemao/nemo/util/ReworkHelper$ReWorkForkCallback;->onCancel()V

    return-void
.end method

.method private download()V
    .registers 7

    const/4 v0, 0x3

    .line 194
    iput v0, p0, Lcom/codemao/nemo/util/ReworkHelper;->status:I

    .line 195
    iget-object v0, p0, Lcom/codemao/nemo/util/ReworkHelper;->createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v1, p0, Lcom/codemao/nemo/util/ReworkHelper;->detailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getBcm_version()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->bcmVersion:Ljava/lang/String;

    .line 196
    iget-boolean v0, p0, Lcom/codemao/nemo/util/ReworkHelper;->hasAdd:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/codemao/nemo/util/ReworkHelper;->createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v4, p0, Lcom/codemao/nemo/util/ReworkHelper;->detailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    new-instance v5, Lcom/codemao/nemo/util/ReworkHelper$4;

    invoke-direct {v5, p0}, Lcom/codemao/nemo/util/ReworkHelper$4;-><init>(Lcom/codemao/nemo/util/ReworkHelper;)V

    invoke-static {v0, v2, v3, v4, v5}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->download(ZZLcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;)V

    .line 220
    iput-boolean v1, p0, Lcom/codemao/nemo/util/ReworkHelper;->hasAdd:Z

    return-void
.end method

.method private enter()V
    .registers 6

    .line 260
    iget-object v0, p0, Lcom/codemao/nemo/util/ReworkHelper;->data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    if-nez v0, :cond_5

    return-void

    .line 263
    :cond_5
    new-instance v0, Lcom/codemao/nemo/view/ReWorkSuccessDialog;

    iget-object v1, p0, Lcom/codemao/nemo/util/ReworkHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/codemao/nemo/view/ReWorkSuccessDialog;-><init>(Landroid/content/Context;)V

    .line 264
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 265
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/codemao/nemo/util/ReworkHelper$6;

    invoke-direct {v2, p0, v0}, Lcom/codemao/nemo/util/ReworkHelper$6;-><init>(Lcom/codemao/nemo/util/ReworkHelper;Lcom/codemao/nemo/view/ReWorkSuccessDialog;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private fork()V
    .registers 5

    const/4 v0, 0x1

    .line 107
    sput-boolean v0, Lcom/codemao/nemo/util/AppConstants;->HAS_BCM_DOWNLOAD:Z

    .line 108
    iget-object v1, p0, Lcom/codemao/nemo/util/ReworkHelper;->reWorkDialog:Lcom/codemao/nemo/view/ReWorkDialog;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/codemao/nemo/view/ReWorkDialog;->showByType(I)Lcom/codemao/nemo/view/ReWorkDialog;

    .line 109
    iput v0, p0, Lcom/codemao/nemo/util/ReworkHelper;->status:I

    .line 110
    iget-object v0, p0, Lcom/codemao/nemo/util/ReworkHelper;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    iget-object v1, p0, Lcom/codemao/nemo/util/ReworkHelper;->detailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getId()J

    move-result-wide v1

    new-instance v3, Lcom/codemao/nemo/util/ReworkHelper$2;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/util/ReworkHelper$2;-><init>(Lcom/codemao/nemo/util/ReworkHelper;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/codemao/nemo/http/DiscoveryNetUtil;->forkWork(JLcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method

.method private onErrorMessage()V
    .registers 3

    .line 168
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    .line 169
    iput v1, v0, Landroid/os/Message;->what:I

    .line 170
    iget-object v1, p0, Lcom/codemao/nemo/util/ReworkHelper;->handler:Lcom/giu/xzz/utils/HandlerUtil;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private update()V
    .registers 3

    const/4 v0, 0x2

    .line 174
    iput v0, p0, Lcom/codemao/nemo/util/ReworkHelper;->status:I

    .line 175
    iget-object v0, p0, Lcom/codemao/nemo/util/ReworkHelper;->createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    new-instance v1, Lcom/codemao/nemo/util/ReworkHelper$3;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/util/ReworkHelper$3;-><init>(Lcom/codemao/nemo/util/ReworkHelper;)V

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->updateName(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;)V

    return-void
.end method

.method private updateName()V
    .registers 4

    .line 154
    new-instance v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-direct {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/util/ReworkHelper;->createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    .line 155
    iget-object v0, p0, Lcom/codemao/nemo/util/ReworkHelper;->detailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getWork_name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->hasName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 156
    iget-object v0, p0, Lcom/codemao/nemo/util/ReworkHelper;->createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v1, p0, Lcom/codemao/nemo/util/ReworkHelper;->detailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getWork_name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/codemao/nemo/util/BcmHelper;->getName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    goto :goto_2d

    .line 158
    :cond_23
    iget-object v0, p0, Lcom/codemao/nemo/util/ReworkHelper;->createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v1, p0, Lcom/codemao/nemo/util/ReworkHelper;->detailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getWork_name()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    .line 160
    :goto_2d
    iget-object v0, p0, Lcom/codemao/nemo/util/ReworkHelper;->createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v1, p0, Lcom/codemao/nemo/util/ReworkHelper;->detailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getPreview()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishPreview:Ljava/lang/String;

    .line 161
    iget-object v0, p0, Lcom/codemao/nemo/util/ReworkHelper;->createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v1, p0, Lcom/codemao/nemo/util/ReworkHelper;->detailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getBcm_url()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->bcm_url:Ljava/lang/String;

    .line 162
    iget-object v0, p0, Lcom/codemao/nemo/util/ReworkHelper;->createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v1, p0, Lcom/codemao/nemo/util/ReworkHelper;->detailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getBcm_version()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->bcmVersion:Ljava/lang/String;

    .line 163
    iget-object v0, p0, Lcom/codemao/nemo/util/ReworkHelper;->createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-wide v1, p0, Lcom/codemao/nemo/util/ReworkHelper;->newWorkId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    .line 164
    invoke-direct {p0}, Lcom/codemao/nemo/util/ReworkHelper;->update()V

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .registers 2

    .line 304
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onDownloadPorgressEvent(Lcom/codemao/creativecenter/utils/bcm/events/DownloadProgressEvent;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_1d

    .line 296
    iget v0, p1, Lcom/codemao/creativecenter/utils/bcm/events/DownloadProgressEvent;->downloadCount:I

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/codemao/nemo/util/ReworkHelper;->reWorkDialog:Lcom/codemao/nemo/view/ReWorkDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/codemao/nemo/util/ReworkHelper;->reWorkDialog:Lcom/codemao/nemo/view/ReWorkDialog;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/ReWorkDialog;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1d

    .line 297
    iget-object v0, p0, Lcom/codemao/nemo/util/ReworkHelper;->reWorkDialog:Lcom/codemao/nemo/view/ReWorkDialog;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/ReWorkDialog;->showByType(I)Lcom/codemao/nemo/view/ReWorkDialog;

    .line 299
    :cond_1d
    iget-object v0, p0, Lcom/codemao/nemo/util/ReworkHelper;->reWorkDialog:Lcom/codemao/nemo/view/ReWorkDialog;

    iget v1, p1, Lcom/codemao/creativecenter/utils/bcm/events/DownloadProgressEvent;->downloadSuccessCount:I

    iget p1, p1, Lcom/codemao/creativecenter/utils/bcm/events/DownloadProgressEvent;->downloadCount:I

    invoke-virtual {v0, v1, p1}, Lcom/codemao/nemo/view/ReWorkDialog;->setProgress(II)V

    return-void
.end method

.method public showReworkDialog(Landroid/app/Activity;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Lcom/codemao/nemo/util/ReworkHelper$ReWorkForkCallback;)Lcom/codemao/nemo/view/ReWorkDialog;
    .registers 6

    .line 51
    iput-object p1, p0, Lcom/codemao/nemo/util/ReworkHelper;->mActivity:Landroid/app/Activity;

    .line 52
    iput-object p3, p0, Lcom/codemao/nemo/util/ReworkHelper;->callback:Lcom/codemao/nemo/util/ReworkHelper$ReWorkForkCallback;

    .line 53
    iput-object p2, p0, Lcom/codemao/nemo/util/ReworkHelper;->detailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    const/4 p3, 0x0

    .line 54
    iput-boolean p3, p0, Lcom/codemao/nemo/util/ReworkHelper;->openLater:Z

    .line 55
    new-instance p3, Lcom/codemao/nemo/http/DiscoveryNetUtil;

    move-object v0, p1

    check-cast v0, Lcom/giu/xzz/BaseActivity;

    invoke-direct {p3, v0}, Lcom/codemao/nemo/http/DiscoveryNetUtil;-><init>(Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;)V

    iput-object p3, p0, Lcom/codemao/nemo/util/ReworkHelper;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    .line 56
    new-instance p3, Lcom/codemao/nemo/view/ReWorkDialog;

    invoke-virtual {p2}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getId()J

    move-result-wide v0

    invoke-direct {p3, p1, v0, v1}, Lcom/codemao/nemo/view/ReWorkDialog;-><init>(Landroid/content/Context;J)V

    iput-object p3, p0, Lcom/codemao/nemo/util/ReworkHelper;->reWorkDialog:Lcom/codemao/nemo/view/ReWorkDialog;

    .line 58
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2f

    .line 59
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 61
    :cond_2f
    iget-object p1, p0, Lcom/codemao/nemo/util/ReworkHelper;->reWorkDialog:Lcom/codemao/nemo/view/ReWorkDialog;

    invoke-virtual {p2}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getBcm_version()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/view/ReWorkDialog;->setBcm_version(Ljava/lang/String;)V

    .line 62
    iget-object p1, p0, Lcom/codemao/nemo/util/ReworkHelper;->reWorkDialog:Lcom/codemao/nemo/view/ReWorkDialog;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/view/ReWorkDialog;->setType(I)Lcom/codemao/nemo/view/ReWorkDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 63
    iget-object p1, p0, Lcom/codemao/nemo/util/ReworkHelper;->reWorkDialog:Lcom/codemao/nemo/view/ReWorkDialog;

    new-instance p2, Lcom/codemao/nemo/util/ReworkHelper$1;

    invoke-direct {p2, p0}, Lcom/codemao/nemo/util/ReworkHelper$1;-><init>(Lcom/codemao/nemo/util/ReworkHelper;)V

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/view/ReWorkDialog;->setReworkCallback(Lcom/codemao/nemo/view/ReWorkDialog$ReWorkCallback;)V

    .line 103
    iget-object p1, p0, Lcom/codemao/nemo/util/ReworkHelper;->reWorkDialog:Lcom/codemao/nemo/view/ReWorkDialog;

    return-object p1
.end method
