.class public Lcom/codemao/nemo/util/MiaoCodeHelper;
.super Ljava/lang/Object;
.source "MiaoCodeHelper.java"


# static fields
.field private static mInstance:Lcom/codemao/nemo/util/MiaoCodeHelper;


# instance fields
.field private code:Lcom/codemao/nemo/bean/MiaoCode;

.field private createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

.field private generateMiaoCodeDialog:Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

.field private generateMiaoCodeLandScapeDialog:Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog;

.field private handler:Lcom/giu/xzz/utils/HandlerUtil;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/giu/xzz/utils/HandlerUtil<",
            "Lcom/giu/xzz/BaseFragment;",
            ">;"
        }
    .end annotation
.end field

.field private mActivity:Landroid/app/Activity;

.field private mShowLater:Z

.field private type:I


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    new-instance v0, Lcom/giu/xzz/utils/HandlerUtil;

    new-instance v1, Lcom/codemao/nemo/util/MiaoCodeHelper$8;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/util/MiaoCodeHelper$8;-><init>(Lcom/codemao/nemo/util/MiaoCodeHelper;)V

    invoke-direct {v0, p0, v1}, Lcom/giu/xzz/utils/HandlerUtil;-><init>(Ljava/lang/Object;Lcom/giu/xzz/utils/HandlerUtil$HandleBack;)V

    iput-object v0, p0, Lcom/codemao/nemo/util/MiaoCodeHelper;->handler:Lcom/giu/xzz/utils/HandlerUtil;

    .line 76
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/util/MiaoCodeHelper;)V
    .registers 1

    .line 54
    invoke-direct {p0}, Lcom/codemao/nemo/util/MiaoCodeHelper;->closeDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/codemao/nemo/util/MiaoCodeHelper;)Lcom/codemao/nemo/bean/MiaoCode;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/codemao/nemo/util/MiaoCodeHelper;->code:Lcom/codemao/nemo/bean/MiaoCode;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/codemao/nemo/util/MiaoCodeHelper;)V
    .registers 1

    .line 54
    invoke-direct {p0}, Lcom/codemao/nemo/util/MiaoCodeHelper;->showLaterDialog()V

    return-void
.end method

.method static synthetic access$102(Lcom/codemao/nemo/util/MiaoCodeHelper;Lcom/codemao/nemo/bean/MiaoCode;)Lcom/codemao/nemo/bean/MiaoCode;
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/codemao/nemo/util/MiaoCodeHelper;->code:Lcom/codemao/nemo/bean/MiaoCode;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/codemao/nemo/util/MiaoCodeHelper;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 54
    invoke-direct {p0, p1}, Lcom/codemao/nemo/util/MiaoCodeHelper;->withdrawMiaoCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/codemao/nemo/util/MiaoCodeHelper;)Landroid/app/Activity;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/codemao/nemo/util/MiaoCodeHelper;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/codemao/nemo/util/MiaoCodeHelper;Z)V
    .registers 2

    .line 54
    invoke-direct {p0, p1}, Lcom/codemao/nemo/util/MiaoCodeHelper;->setNetErrorCallback(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/codemao/nemo/util/MiaoCodeHelper;)Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/codemao/nemo/util/MiaoCodeHelper;->generateMiaoCodeLandScapeDialog:Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/codemao/nemo/util/MiaoCodeHelper;ZZ)V
    .registers 3

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/util/MiaoCodeHelper;->download(ZZ)V

    return-void
.end method

.method static synthetic access$1600(Lcom/codemao/nemo/util/MiaoCodeHelper;Z)V
    .registers 2

    .line 54
    invoke-direct {p0, p1}, Lcom/codemao/nemo/util/MiaoCodeHelper;->setNoNotice(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/codemao/nemo/util/MiaoCodeHelper;)Lcom/giu/xzz/utils/HandlerUtil;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/codemao/nemo/util/MiaoCodeHelper;->handler:Lcom/giu/xzz/utils/HandlerUtil;

    return-object p0
.end method

.method static synthetic access$300(Lcom/codemao/nemo/util/MiaoCodeHelper;)Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/codemao/nemo/util/MiaoCodeHelper;->createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    return-object p0
.end method

.method static synthetic access$302(Lcom/codemao/nemo/util/MiaoCodeHelper;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/codemao/nemo/util/MiaoCodeHelper;->createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    return-object p1
.end method

.method static synthetic access$400(Lcom/codemao/nemo/util/MiaoCodeHelper;)Z
    .registers 1

    .line 54
    iget-boolean p0, p0, Lcom/codemao/nemo/util/MiaoCodeHelper;->mShowLater:Z

    return p0
.end method

.method static synthetic access$402(Lcom/codemao/nemo/util/MiaoCodeHelper;Z)Z
    .registers 2

    .line 54
    iput-boolean p1, p0, Lcom/codemao/nemo/util/MiaoCodeHelper;->mShowLater:Z

    return p1
.end method

.method static synthetic access$500(Lcom/codemao/nemo/util/MiaoCodeHelper;Ljava/lang/String;)Z
    .registers 2

    .line 54
    invoke-direct {p0, p1}, Lcom/codemao/nemo/util/MiaoCodeHelper;->showDownloadAppDialog(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/codemao/nemo/util/MiaoCodeHelper;)I
    .registers 1

    .line 54
    iget p0, p0, Lcom/codemao/nemo/util/MiaoCodeHelper;->type:I

    return p0
.end method

.method static synthetic access$700(Lcom/codemao/nemo/util/MiaoCodeHelper;)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/codemao/nemo/util/MiaoCodeHelper;->generateMiaoCodeDialog:Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    return-object p0
.end method

.method static synthetic access$800(Lcom/codemao/nemo/util/MiaoCodeHelper;)V
    .registers 1

    .line 54
    invoke-direct {p0}, Lcom/codemao/nemo/util/MiaoCodeHelper;->clearClip()V

    return-void
.end method

.method static synthetic access$900(Lcom/codemao/nemo/util/MiaoCodeHelper;Z)V
    .registers 2

    .line 54
    invoke-direct {p0, p1}, Lcom/codemao/nemo/util/MiaoCodeHelper;->download(Z)V

    return-void
.end method

.method private clearClip()V
    .registers 4

    .line 379
    iget-object v0, p0, Lcom/codemao/nemo/util/MiaoCodeHelper;->mActivity:Landroid/app/Activity;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    const/4 v1, 0x0

    const-string v2, ""

    .line 380
    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void
.end method

.method private closeDialog()V
    .registers 2

    .line 169
    invoke-direct {p0}, Lcom/codemao/nemo/util/MiaoCodeHelper;->clearClip()V

    .line 170
    iget-object v0, p0, Lcom/codemao/nemo/util/MiaoCodeHelper;->createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    if-eqz v0, :cond_f

    .line 171
    new-instance v0, Lcom/codemao/nemo/util/MiaoCodeHelper$6;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/util/MiaoCodeHelper$6;-><init>(Lcom/codemao/nemo/util/MiaoCodeHelper;)V

    .line 180
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 182
    :cond_f
    iget-object v0, p0, Lcom/codemao/nemo/util/MiaoCodeHelper;->generateMiaoCodeDialog:Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private download(Z)V
    .registers 3

    const/4 v0, 0x0

    .line 226
    invoke-direct {p0, p1, v0}, Lcom/codemao/nemo/util/MiaoCodeHelper;->download(ZZ)V

    return-void
.end method

.method private download(ZZ)V
    .registers 9

    .line 186
    iput-boolean p1, p0, Lcom/codemao/nemo/util/MiaoCodeHelper;->mShowLater:Z

    .line 187
    sget-boolean v0, Lcom/codemao/nemo/util/AppConstants;->HAS_BCM_DOWNLOAD:Z

    if-eqz v0, :cond_f

    .line 188
    iget-object p1, p0, Lcom/codemao/nemo/util/MiaoCodeHelper;->mActivity:Landroid/app/Activity;

    const p2, 0x7f1202e8

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;I)V

    return-void

    :cond_f
    const/4 v0, 0x1

    .line 191
    sput-boolean v0, Lcom/codemao/nemo/util/AppConstants;->HAS_BCM_DOWNLOAD:Z

    if-nez p2, :cond_25

    .line 193
    new-instance v1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v2, p0, Lcom/codemao/nemo/util/MiaoCodeHelper;->code:Lcom/codemao/nemo/bean/MiaoCode;

    iget-object v3, v2, Lcom/codemao/nemo/bean/MiaoCode;->name:Ljava/lang/String;

    iget-object v4, v2, Lcom/codemao/nemo/bean/MiaoCode;->work_url:Ljava/lang/String;

    iget-object v5, v2, Lcom/codemao/nemo/bean/MiaoCode;->preview:Ljava/lang/String;

    iget-object v2, v2, Lcom/codemao/nemo/bean/MiaoCode;->bcm_version:Ljava/lang/String;

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/codemao/nemo/util/MiaoCodeHelper;->createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    .line 195
    :cond_25
    iget-object v1, p0, Lcom/codemao/nemo/util/MiaoCodeHelper;->createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v2, p0, Lcom/codemao/nemo/util/MiaoCodeHelper;->code:Lcom/codemao/nemo/bean/MiaoCode;

    iget-wide v2, v2, Lcom/codemao/nemo/bean/MiaoCode;->work_id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    xor-int/lit8 v1, p2, 0x1

    xor-int/2addr p2, v0

    .line 196
    iget-object v0, p0, Lcom/codemao/nemo/util/MiaoCodeHelper;->createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    const/4 v2, 0x0

    new-instance v3, Lcom/codemao/nemo/util/MiaoCodeHelper$7;

    invoke-direct {v3, p0, p1}, Lcom/codemao/nemo/util/MiaoCodeHelper$7;-><init>(Lcom/codemao/nemo/util/MiaoCodeHelper;Z)V

    invoke-static {v1, p2, v0, v2, v3}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->download(ZZLcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;)V

    return-void
.end method

.method public static getInstance()Lcom/codemao/nemo/util/MiaoCodeHelper;
    .registers 2

    .line 65
    sget-object v0, Lcom/codemao/nemo/util/MiaoCodeHelper;->mInstance:Lcom/codemao/nemo/util/MiaoCodeHelper;

    if-nez v0, :cond_17

    .line 66
    const-class v0, Lcom/codemao/nemo/util/MiaoCodeHelper;

    monitor-enter v0

    .line 67
    :try_start_7
    sget-object v1, Lcom/codemao/nemo/util/MiaoCodeHelper;->mInstance:Lcom/codemao/nemo/util/MiaoCodeHelper;

    if-nez v1, :cond_12

    .line 68
    new-instance v1, Lcom/codemao/nemo/util/MiaoCodeHelper;

    invoke-direct {v1}, Lcom/codemao/nemo/util/MiaoCodeHelper;-><init>()V

    sput-object v1, Lcom/codemao/nemo/util/MiaoCodeHelper;->mInstance:Lcom/codemao/nemo/util/MiaoCodeHelper;

    .line 70
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 72
    :cond_17
    :goto_17
    sget-object v0, Lcom/codemao/nemo/util/MiaoCodeHelper;->mInstance:Lcom/codemao/nemo/util/MiaoCodeHelper;

    return-object v0
.end method

.method private setNetErrorCallback(Z)V
    .registers 4

    .line 338
    iget-object v0, p0, Lcom/codemao/nemo/util/MiaoCodeHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 339
    iget-object p1, p0, Lcom/codemao/nemo/util/MiaoCodeHelper;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 342
    :cond_e
    iget-object v0, p0, Lcom/codemao/nemo/util/MiaoCodeHelper;->generateMiaoCodeDialog:Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    new-instance v1, Lcom/codemao/nemo/util/MiaoCodeHelper$9;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/util/MiaoCodeHelper$9;-><init>(Lcom/codemao/nemo/util/MiaoCodeHelper;Z)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->setGenerateMiaoCodeErrorCallback(Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$GenerateMiaoCodeErrorCallback;)V

    return-void
.end method

.method private setNoNotice(Z)V
    .registers 5

    .line 390
    iget-object v0, p0, Lcom/codemao/nemo/util/MiaoCodeHelper;->mActivity:Landroid/app/Activity;

    const-string v1, "nemo"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 391
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "no_notice_check"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private shouldShow()Z
    .registers 4

    .line 385
    iget-object v0, p0, Lcom/codemao/nemo/util/MiaoCodeHelper;->mActivity:Landroid/app/Activity;

    const-string v1, "nemo"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "no_notice_check"

    .line 386
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private showDownloadAppDialog(Ljava/lang/String;)Z
    .registers 3

    .line 139
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getBcmVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/codemao/nemo/util/StringUtil;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_45

    .line 140
    new-instance p1, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    iget-object v0, p0, Lcom/codemao/nemo/util/MiaoCodeHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;-><init>(Landroid/content/Context;)V

    const-string v0, "这次算了"

    .line 141
    invoke-virtual {p1, v0}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->leftBtnStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object p1

    const-string v0, "火速更新"

    .line 142
    invoke-virtual {p1, v0}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->rightBtnStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object p1

    const-string v0, ""

    .line 143
    invoke-virtual {p1, v0}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->titleStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object p1

    const-string v0, "当前App版本低于作品版本，无法直接修改，请更新App后再试"

    .line 144
    invoke-virtual {p1, v0}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->contentStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object p1

    .line 145
    new-instance v0, Lcom/codemao/nemo/util/MiaoCodeHelper$4;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/util/MiaoCodeHelper$4;-><init>(Lcom/codemao/nemo/util/MiaoCodeHelper;Lcom/codemao/nemo/dialog/CustomDialogTypeOne;)V

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->setRightClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    .line 153
    new-instance v0, Lcom/codemao/nemo/util/MiaoCodeHelper$5;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/util/MiaoCodeHelper$5;-><init>(Lcom/codemao/nemo/util/MiaoCodeHelper;Lcom/codemao/nemo/dialog/CustomDialogTypeOne;)V

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->setLeftClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    .line 160
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 161
    invoke-direct {p0}, Lcom/codemao/nemo/util/MiaoCodeHelper;->clearClip()V

    const/4 p1, 0x1

    return p1

    :cond_45
    const/4 p1, 0x0

    return p1
.end method

.method private showLaterDialog()V
    .registers 3

    .line 360
    invoke-direct {p0}, Lcom/codemao/nemo/util/MiaoCodeHelper;->shouldShow()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 361
    new-instance v0, Lcom/codemao/nemo/dialog/LaterCheckDialog;

    iget-object v1, p0, Lcom/codemao/nemo/util/MiaoCodeHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/codemao/nemo/dialog/LaterCheckDialog;-><init>(Landroid/content/Context;)V

    .line 362
    new-instance v1, Lcom/codemao/nemo/util/MiaoCodeHelper$10;

    invoke-direct {v1, p0, v0}, Lcom/codemao/nemo/util/MiaoCodeHelper$10;-><init>(Lcom/codemao/nemo/util/MiaoCodeHelper;Lcom/codemao/nemo/dialog/LaterCheckDialog;)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/LaterCheckDialog;->setCallback(Lcom/codemao/nemo/dialog/LaterCheckDialog$Callback;)V

    .line 371
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_18
    return-void
.end method

.method private withdrawMiaoCode(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 404
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "\\$&(.*?)&\\$"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 405
    invoke-virtual {v0, p1, v1}, Lkotlin/text/Regex;->find(Ljava/lang/CharSequence;I)Lkotlin/text/MatchResult;

    move-result-object p1

    if-eqz p1, :cond_3b

    .line 406
    invoke-interface {p1}, Lkotlin/text/MatchResult;->getGroups()Lkotlin/text/MatchGroupCollection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 407
    invoke-interface {p1}, Lkotlin/text/MatchResult;->getGroups()Lkotlin/text/MatchGroupCollection;

    move-result-object p1

    invoke-interface {p1, v1}, Lkotlin/text/MatchGroupCollection;->get(I)Lkotlin/text/MatchGroup;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lkotlin/text/MatchGroup;

    invoke-virtual {p1}, Lkotlin/text/MatchGroup;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 408
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_3b

    .line 409
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

    if-eqz p1, :cond_d

    .line 397
    iget v0, p1, Lcom/codemao/creativecenter/utils/bcm/events/DownloadProgressEvent;->downloadCount:I

    if-eqz v0, :cond_d

    .line 398
    iget-object v1, p0, Lcom/codemao/nemo/util/MiaoCodeHelper;->generateMiaoCodeDialog:Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    iget p1, p1, Lcom/codemao/creativecenter/utils/bcm/events/DownloadProgressEvent;->downloadSuccessCount:I

    invoke-virtual {v1, p1, v0}, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->setProgress(II)V

    :cond_d
    return-void
.end method

.method public showMiaoCode(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 81
    :try_start_0
    iput-object p1, p0, Lcom/codemao/nemo/util/MiaoCodeHelper;->mActivity:Landroid/app/Activity;

    .line 82
    iput p2, p0, Lcom/codemao/nemo/util/MiaoCodeHelper;->type:I

    .line 83
    invoke-static {p1}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_e

    .line 84
    invoke-static {p1}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 88
    :cond_e
    iget-object p2, p0, Lcom/codemao/nemo/util/MiaoCodeHelper;->generateMiaoCodeDialog:Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    if-eqz p2, :cond_15

    .line 89
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    .line 91
    :cond_15
    iget-object p2, p0, Lcom/codemao/nemo/util/MiaoCodeHelper;->generateMiaoCodeLandScapeDialog:Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog;

    if-eqz p2, :cond_1c

    .line 92
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    .line 95
    :cond_1c
    new-instance p2, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    invoke-direct {p2, p1, p4}, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/codemao/nemo/util/MiaoCodeHelper;->generateMiaoCodeDialog:Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    .line 96
    new-instance p4, Lcom/codemao/nemo/util/MiaoCodeHelper$1;

    invoke-direct {p4, p0}, Lcom/codemao/nemo/util/MiaoCodeHelper$1;-><init>(Lcom/codemao/nemo/util/MiaoCodeHelper;)V

    invoke-virtual {p2, p4}, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->setCloseCallback(Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$CloseCallback;)V

    .line 102
    new-instance p2, Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog;

    invoke-direct {p2, p1}, Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/codemao/nemo/util/MiaoCodeHelper;->generateMiaoCodeLandScapeDialog:Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog;

    .line 103
    new-instance p1, Lcom/codemao/nemo/util/MiaoCodeHelper$2;

    invoke-direct {p1, p0}, Lcom/codemao/nemo/util/MiaoCodeHelper$2;-><init>(Lcom/codemao/nemo/util/MiaoCodeHelper;)V

    invoke-virtual {p2, p1}, Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog;->setCloseCallback(Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog$CloseCallback;)V

    .line 111
    new-instance p1, Lcom/codemao/nemo/util/MiaoCodeHelper$3;

    invoke-direct {p1, p0, p3}, Lcom/codemao/nemo/util/MiaoCodeHelper$3;-><init>(Lcom/codemao/nemo/util/MiaoCodeHelper;Ljava/lang/String;)V

    .line 130
    invoke-static {p1}, Lcom/giu/xzz/utils/ThreadPoolUtil;->post(Ljava/lang/Runnable;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_42} :catch_43

    goto :goto_47

    :catch_43
    move-exception p1

    .line 134
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_47
    return-void
.end method
