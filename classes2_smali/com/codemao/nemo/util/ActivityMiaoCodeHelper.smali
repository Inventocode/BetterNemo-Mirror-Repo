.class public Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;
.super Ljava/lang/Object;
.source "ActivityMiaoCodeHelper.java"


# instance fields
.field private code:Lcom/codemao/nemo/bean/MiaoCode;

.field private createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

.field private generateMiaoCodeDialog:Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

.field private handler:Lcom/giu/xzz/utils/HandlerUtil;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/giu/xzz/utils/HandlerUtil<",
            "Lcom/giu/xzz/BaseFragment;",
            ">;"
        }
    .end annotation
.end field

.field private isFinish:Z

.field private mActivity:Landroid/content/Context;

.field private mShowLater:Z

.field private templateId:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->isFinish:Z

    .line 260
    new-instance v0, Lcom/giu/xzz/utils/HandlerUtil;

    new-instance v1, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$8;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$8;-><init>(Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;)V

    invoke-direct {v0, p0, v1}, Lcom/giu/xzz/utils/HandlerUtil;-><init>(Ljava/lang/Object;Lcom/giu/xzz/utils/HandlerUtil$HandleBack;)V

    iput-object v0, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->handler:Lcom/giu/xzz/utils/HandlerUtil;

    .line 65
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;)V
    .registers 1

    .line 53
    invoke-direct {p0}, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->closeDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->generateMiaoCodeDialog:Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;)Landroid/content/Context;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->mActivity:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;ZZ)V
    .registers 3

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->download(ZZ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;Z)V
    .registers 2

    .line 53
    invoke-direct {p0, p1}, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->setNoNotice(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;Z)V
    .registers 2

    .line 53
    invoke-direct {p0, p1}, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->download(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;)V
    .registers 1

    .line 53
    invoke-direct {p0}, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->showLaterDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;)Z
    .registers 1

    .line 53
    iget-boolean p0, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->mShowLater:Z

    return p0
.end method

.method static synthetic access$402(Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;Z)Z
    .registers 2

    .line 53
    iput-boolean p1, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->mShowLater:Z

    return p1
.end method

.method static synthetic access$500(Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 53
    invoke-direct {p0, p1}, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->withdrawMiaoCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;)Z
    .registers 1

    .line 53
    iget-boolean p0, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->isFinish:Z

    return p0
.end method

.method static synthetic access$700(Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;)Lcom/codemao/nemo/bean/MiaoCode;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->code:Lcom/codemao/nemo/bean/MiaoCode;

    return-object p0
.end method

.method static synthetic access$702(Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;Lcom/codemao/nemo/bean/MiaoCode;)Lcom/codemao/nemo/bean/MiaoCode;
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->code:Lcom/codemao/nemo/bean/MiaoCode;

    return-object p1
.end method

.method static synthetic access$800(Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;)Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    return-object p0
.end method

.method static synthetic access$802(Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    return-object p1
.end method

.method static synthetic access$900(Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;)Lcom/giu/xzz/utils/HandlerUtil;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->handler:Lcom/giu/xzz/utils/HandlerUtil;

    return-object p0
.end method

.method private closeDialog()V
    .registers 5

    const/4 v0, 0x1

    .line 188
    iput-boolean v0, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->isFinish:Z

    .line 189
    iget-object v0, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->handler:Lcom/giu/xzz/utils/HandlerUtil;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 190
    iget-object v0, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    if-eqz v0, :cond_28

    .line 191
    invoke-static {v0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->deleteBcm(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 192
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v2, Lcom/codemao/nemo/event/DeleteBcmEvent;

    iget-object v3, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-direct {v2, v3}, Lcom/codemao/nemo/event/DeleteBcmEvent;-><init>(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 194
    :cond_21
    iget-object v0, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-static {v0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->removeDownloadData(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    .line 195
    iput-object v1, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    .line 197
    :cond_28
    iget-object v0, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->generateMiaoCodeDialog:Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 198
    iput-object v1, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->generateMiaoCodeDialog:Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    return-void
.end method

.method private download(Z)V
    .registers 3

    const/4 v0, 0x0

    .line 257
    invoke-direct {p0, p1, v0}, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->download(ZZ)V

    return-void
.end method

.method private download(ZZ)V
    .registers 10

    .line 202
    iget-object v0, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->code:Lcom/codemao/nemo/bean/MiaoCode;

    iget-object v0, v0, Lcom/codemao/nemo/bean/MiaoCode;->bcm_version:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->showDownloadAppDialog(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 203
    iget-object p1, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->generateMiaoCodeDialog:Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    if-eqz p1, :cond_14

    .line 204
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 205
    iput-object v1, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->generateMiaoCodeDialog:Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    :cond_14
    return-void

    .line 209
    :cond_15
    iput-boolean p1, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->mShowLater:Z

    .line 210
    sget-boolean v0, Lcom/codemao/nemo/util/AppConstants;->HAS_BCM_DOWNLOAD:Z

    if-eqz v0, :cond_24

    .line 211
    iget-object p1, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->mActivity:Landroid/content/Context;

    const p2, 0x7f1202e8

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;I)V

    return-void

    :cond_24
    const/4 v0, 0x1

    .line 214
    sput-boolean v0, Lcom/codemao/nemo/util/AppConstants;->HAS_BCM_DOWNLOAD:Z

    if-nez p2, :cond_3a

    .line 216
    new-instance v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v3, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->code:Lcom/codemao/nemo/bean/MiaoCode;

    iget-object v4, v3, Lcom/codemao/nemo/bean/MiaoCode;->name:Ljava/lang/String;

    iget-object v5, v3, Lcom/codemao/nemo/bean/MiaoCode;->work_url:Ljava/lang/String;

    iget-object v6, v3, Lcom/codemao/nemo/bean/MiaoCode;->preview:Ljava/lang/String;

    iget-object v3, v3, Lcom/codemao/nemo/bean/MiaoCode;->bcm_version:Ljava/lang/String;

    invoke-direct {v2, v4, v5, v6, v3}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    .line 218
    :cond_3a
    iget-object v2, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iput v0, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->downloadStatus:I

    .line 219
    iget v3, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->templateId:I

    int-to-long v3, v3

    iput-wide v3, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->template_id:J

    const/4 v3, 0x4

    .line 220
    iput v3, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->template_type:I

    .line 221
    iget-object v3, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->code:Lcom/codemao/nemo/bean/MiaoCode;

    iget-wide v3, v3, Lcom/codemao/nemo/bean/MiaoCode;->work_id:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    xor-int/lit8 v2, p2, 0x1

    xor-int/2addr p2, v0

    .line 222
    iget-object v0, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    new-instance v3, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$7;

    invoke-direct {v3, p0, p1}, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$7;-><init>(Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;Z)V

    invoke-static {v2, p2, v0, v1, v3}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->download(ZZLcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;)V

    return-void
.end method

.method private setNetErrorCallback(Z)V
    .registers 4

    .line 292
    iget-object v0, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->mActivity:Landroid/content/Context;

    invoke-static {v0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 293
    iget-object p1, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->mActivity:Landroid/content/Context;

    invoke-static {p1}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 296
    :cond_e
    iget-object v0, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->generateMiaoCodeDialog:Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    new-instance v1, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$9;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$9;-><init>(Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;Z)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->setGenerateMiaoCodeErrorCallback(Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$GenerateMiaoCodeErrorCallback;)V

    return-void
.end method

.method private setNoNotice(Z)V
    .registers 5

    .line 338
    iget-object v0, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->mActivity:Landroid/content/Context;

    const-string v1, "nemo"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 339
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "no_activity_notice_check"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private shouldShow()Z
    .registers 4

    .line 333
    iget-object v0, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->mActivity:Landroid/content/Context;

    const-string v1, "nemo"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "no_activity_notice_check"

    .line 334
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private showDownloadAppDialog(Ljava/lang/String;)Z
    .registers 3

    .line 159
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getBcmVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/codemao/nemo/util/StringUtil;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_42

    .line 160
    new-instance p1, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    iget-object v0, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->mActivity:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;-><init>(Landroid/content/Context;)V

    const-string v0, "这次算了"

    .line 161
    invoke-virtual {p1, v0}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->leftBtnStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object p1

    const-string v0, "火速更新"

    .line 162
    invoke-virtual {p1, v0}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->rightBtnStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object p1

    const-string v0, ""

    .line 163
    invoke-virtual {p1, v0}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->titleStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object p1

    const-string v0, "当前App版本低于作品版本，无法直接修改，请更新App后再试"

    .line 164
    invoke-virtual {p1, v0}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->contentStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object p1

    .line 165
    new-instance v0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$5;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$5;-><init>(Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;Lcom/codemao/nemo/dialog/CustomDialogTypeOne;)V

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->setRightClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    .line 173
    new-instance v0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$6;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$6;-><init>(Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;Lcom/codemao/nemo/dialog/CustomDialogTypeOne;)V

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->setLeftClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    .line 180
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    const/4 p1, 0x1

    return p1

    :cond_42
    const/4 p1, 0x0

    return p1
.end method

.method private showLaterDialog()V
    .registers 3

    .line 314
    invoke-direct {p0}, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->shouldShow()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 315
    new-instance v0, Lcom/codemao/nemo/dialog/LaterCheckDialog;

    iget-object v1, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->mActivity:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/codemao/nemo/dialog/LaterCheckDialog;-><init>(Landroid/content/Context;)V

    .line 316
    new-instance v1, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$10;

    invoke-direct {v1, p0, v0}, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$10;-><init>(Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;Lcom/codemao/nemo/dialog/LaterCheckDialog;)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/LaterCheckDialog;->setCallback(Lcom/codemao/nemo/dialog/LaterCheckDialog$Callback;)V

    .line 325
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_18
    return-void
.end method

.method private withdrawMiaoCode(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 352
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "\\$&(.*?)&\\$"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 353
    invoke-virtual {v0, p1, v1}, Lkotlin/text/Regex;->find(Ljava/lang/CharSequence;I)Lkotlin/text/MatchResult;

    move-result-object p1

    if-eqz p1, :cond_3b

    .line 354
    invoke-interface {p1}, Lkotlin/text/MatchResult;->getGroups()Lkotlin/text/MatchGroupCollection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 355
    invoke-interface {p1}, Lkotlin/text/MatchResult;->getGroups()Lkotlin/text/MatchGroupCollection;

    move-result-object p1

    invoke-interface {p1, v1}, Lkotlin/text/MatchGroupCollection;->get(I)Lkotlin/text/MatchGroup;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lkotlin/text/MatchGroup;

    invoke-virtual {p1}, Lkotlin/text/MatchGroup;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 356
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_3b

    .line 357
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3b
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public onDownloadPorgressEvent(Lcom/codemao/creativecenter/utils/bcm/events/DownloadProgressEvent;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_f

    .line 345
    iget v0, p1, Lcom/codemao/creativecenter/utils/bcm/events/DownloadProgressEvent;->downloadCount:I

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->generateMiaoCodeDialog:Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    if-eqz v1, :cond_f

    .line 346
    iget p1, p1, Lcom/codemao/creativecenter/utils/bcm/events/DownloadProgressEvent;->downloadSuccessCount:I

    invoke-virtual {v1, p1, v0}, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->setProgress(II)V

    :cond_f
    return-void
.end method

.method public showMiaoCode(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .registers 7

    .line 69
    iput p3, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->templateId:I

    const/4 p3, 0x0

    .line 70
    iput-boolean p3, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->isFinish:Z

    .line 71
    iput-object p1, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->mActivity:Landroid/content/Context;

    .line 72
    invoke-static {p1}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 73
    invoke-static {p1}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 77
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->generateMiaoCodeDialog:Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    if-eqz v0, :cond_18

    .line 78
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 81
    :cond_18
    new-instance v0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    invoke-direct {v0, p1, p4}, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->generateMiaoCodeDialog:Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    .line 82
    new-instance v1, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$1;-><init>(Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->setCloseCallback(Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$CloseCallback;)V

    .line 88
    sget-boolean v0, Lcom/codemao/nemo/util/AppConstants;->HAS_BCM_DOWNLOAD:Z

    if-eqz v0, :cond_35

    .line 89
    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object p1

    const-string p2, "当前有作品在下载中，无法下载该作品，请稍后再试"

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    :cond_35
    const/4 v0, 0x1

    .line 92
    sput-boolean v0, Lcom/codemao/nemo/util/AppConstants;->IS_SHOW_ACTIVITY_MIAO_CODE:Z

    .line 93
    iget-object v0, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->generateMiaoCodeDialog:Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->setTitleText(Ljava/lang/String;)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->setType(I)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 94
    iget-object v0, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->generateMiaoCodeDialog:Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    new-instance v1, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$2;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$2;-><init>(Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 100
    iget-object v0, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->generateMiaoCodeDialog:Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    new-instance v1, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$3;

    invoke-direct {v1, p0, p1, p4}, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$3;-><init>(Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->setShowMiaoCodeCallback(Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$ShowMiaoCodeCallback;)V

    .line 136
    invoke-direct {p0, p3}, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->setNetErrorCallback(Z)V

    .line 138
    new-instance p1, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$4;

    invoke-direct {p1, p0}, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$4;-><init>(Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;)V

    invoke-static {p2, p1}, Lcom/codemao/nemo/util/BcmHelper;->getMiaoCode(Ljava/lang/String;Lcom/codemao/nemo/listener/GetMiaoCodeCallBack;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_67} :catch_68

    goto :goto_6c

    :catch_68
    move-exception p1

    .line 154
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6c
    return-void
.end method
