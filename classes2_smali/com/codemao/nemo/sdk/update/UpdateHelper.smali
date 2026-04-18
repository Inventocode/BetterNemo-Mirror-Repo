.class public Lcom/codemao/nemo/sdk/update/UpdateHelper;
.super Ljava/lang/Object;
.source "UpdateHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/sdk/update/UpdateHelper$CheckHasNewVersionCallBack;,
        Lcom/codemao/nemo/sdk/update/UpdateHelper$Singleton;
    }
.end annotation


# instance fields
.field private apkSize:J

.field private isForce:Z

.field private mDialog:Lcom/codemao/nemo/dialog/ReusableDialog;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerUtil:Lcom/giu/xzz/utils/HandlerUtil;

.field private sCodemaoUpdate:Lcn/codemao/android/update/CodemaoUpdate;

.field private sInit:Z


# direct methods
.method private constructor <init>()V
    .registers 4

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper;->sInit:Z

    const-wide/16 v1, 0x0

    .line 37
    iput-wide v1, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper;->apkSize:J

    .line 38
    iput-boolean v0, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper;->isForce:Z

    .line 162
    new-instance v0, Lcom/giu/xzz/utils/HandlerUtil;

    new-instance v1, Lcom/codemao/nemo/sdk/update/UpdateHelper$4;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/sdk/update/UpdateHelper$4;-><init>(Lcom/codemao/nemo/sdk/update/UpdateHelper;)V

    invoke-direct {v0, p0, v1}, Lcom/giu/xzz/utils/HandlerUtil;-><init>(Ljava/lang/Object;Lcom/giu/xzz/utils/HandlerUtil$HandleBack;)V

    iput-object v0, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper;->mHandlerUtil:Lcom/giu/xzz/utils/HandlerUtil;

    return-void
.end method

.method synthetic constructor <init>(Lcom/codemao/nemo/sdk/update/UpdateHelper$1;)V
    .registers 2

    .line 32
    invoke-direct {p0}, Lcom/codemao/nemo/sdk/update/UpdateHelper;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/codemao/nemo/sdk/update/UpdateHelper;)Landroid/os/Handler;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/codemao/nemo/sdk/update/UpdateHelper;)Lcn/codemao/android/update/CodemaoUpdate;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper;->sCodemaoUpdate:Lcn/codemao/android/update/CodemaoUpdate;

    return-object p0
.end method

.method static synthetic access$202(Lcom/codemao/nemo/sdk/update/UpdateHelper;J)J
    .registers 3

    .line 32
    iput-wide p1, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper;->apkSize:J

    return-wide p1
.end method

.method static synthetic access$302(Lcom/codemao/nemo/sdk/update/UpdateHelper;Z)Z
    .registers 2

    .line 32
    iput-boolean p1, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper;->isForce:Z

    return p1
.end method

.method static synthetic access$400(Lcom/codemao/nemo/sdk/update/UpdateHelper;Landroid/os/Handler;Lcn/codemao/android/update/vo/UpdateResultVO;)V
    .registers 3

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/sdk/update/UpdateHelper;->updateDialog(Landroid/os/Handler;Lcn/codemao/android/update/vo/UpdateResultVO;)V

    return-void
.end method

.method static synthetic access$500(Lcom/codemao/nemo/sdk/update/UpdateHelper;)V
    .registers 1

    .line 32
    invoke-direct {p0}, Lcom/codemao/nemo/sdk/update/UpdateHelper;->initDialog()V

    return-void
.end method

.method static synthetic access$600(Lcom/codemao/nemo/sdk/update/UpdateHelper;)Lcom/codemao/nemo/dialog/ReusableDialog;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper;->mDialog:Lcom/codemao/nemo/dialog/ReusableDialog;

    return-object p0
.end method

.method static synthetic access$700(Lcom/codemao/nemo/sdk/update/UpdateHelper;)Lcom/giu/xzz/utils/HandlerUtil;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper;->mHandlerUtil:Lcom/giu/xzz/utils/HandlerUtil;

    return-object p0
.end method

.method static synthetic access$800(Lcom/codemao/nemo/sdk/update/UpdateHelper;Landroid/os/Handler;)V
    .registers 2

    .line 32
    invoke-direct {p0, p1}, Lcom/codemao/nemo/sdk/update/UpdateHelper;->downloadApk(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$900(Lcom/codemao/nemo/sdk/update/UpdateHelper;)V
    .registers 1

    .line 32
    invoke-direct {p0}, Lcom/codemao/nemo/sdk/update/UpdateHelper;->progressDialog()V

    return-void
.end method

.method private convert(J)Ljava/lang/String;
    .registers 6

    .line 329
    new-instance v0, Ljava/math/BigDecimal;

    const-wide/32 v1, 0x100000

    div-long/2addr p1, v1

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(J)V

    .line 330
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 p2, 0x1

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p2}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "MB"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private downloadApk(Landroid/os/Handler;)V
    .registers 3

    .line 237
    invoke-direct {p0}, Lcom/codemao/nemo/sdk/update/UpdateHelper;->progressDialog()V

    const/4 v0, 0x0

    .line 238
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/sdk/update/UpdateHelper;->setProgress(I)V

    .line 239
    iget-object v0, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper;->sCodemaoUpdate:Lcn/codemao/android/update/CodemaoUpdate;

    invoke-virtual {v0, p1}, Lcn/codemao/android/update/CodemaoUpdate;->download(Landroid/os/Handler;)Lcn/codemao/android/update/CodemaoUpdate;

    return-void
.end method

.method public static get()Lcom/codemao/nemo/sdk/update/UpdateHelper;
    .registers 1

    .line 43
    sget-object v0, Lcom/codemao/nemo/sdk/update/UpdateHelper$Singleton;->SINGLETON:Lcom/codemao/nemo/sdk/update/UpdateHelper$Singleton;

    invoke-static {v0}, Lcom/codemao/nemo/sdk/update/UpdateHelper$Singleton;->access$000(Lcom/codemao/nemo/sdk/update/UpdateHelper$Singleton;)Lcom/codemao/nemo/sdk/update/UpdateHelper;

    move-result-object v0

    return-object v0
.end method

.method private initDialog()V
    .registers 3

    .line 185
    invoke-static {}, Lcom/codemao/nemo/util/ActivityUtils;->get()Lcom/codemao/nemo/util/ActivityUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/util/ActivityUtils;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    .line 186
    new-instance v1, Lcom/codemao/nemo/dialog/ReusableDialog$Builder;

    invoke-direct {v1, v0}, Lcom/codemao/nemo/dialog/ReusableDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f130142

    .line 187
    invoke-virtual {v1, v0}, Lcom/codemao/nemo/dialog/ReusableDialog$Builder;->setTheme(I)Lcom/codemao/nemo/dialog/ReusableDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0131

    .line 188
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/ReusableDialog$Builder;->setContentView(I)Lcom/codemao/nemo/dialog/ReusableDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 189
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/ReusableDialog$Builder;->setScreenFull(Z)Lcom/codemao/nemo/dialog/ReusableDialog$Builder;

    move-result-object v0

    const v1, 0x7f130337

    .line 190
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/ReusableDialog$Builder;->setAnim(I)Lcom/codemao/nemo/dialog/ReusableDialog$Builder;

    move-result-object v0

    .line 191
    invoke-virtual {v0}, Lcom/codemao/nemo/dialog/ReusableDialog$Builder;->build()Lcom/codemao/nemo/dialog/ReusableDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper;->mDialog:Lcom/codemao/nemo/dialog/ReusableDialog;

    return-void
.end method

.method private progressDialog()V
    .registers 4

    .line 298
    iget-object v0, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper;->mDialog:Lcom/codemao/nemo/dialog/ReusableDialog;

    const v1, 0x7f0d012f

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/ReusableDialog;->setContentView(I)V

    .line 299
    iget-boolean v0, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper;->isForce:Z

    const v1, 0x7f0a00f6

    if-eqz v0, :cond_1a

    .line 300
    iget-object v0, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper;->mDialog:Lcom/codemao/nemo/dialog/ReusableDialog;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/ReusableDialog;->getView(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_24

    .line 302
    :cond_1a
    iget-object v0, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper;->mDialog:Lcom/codemao/nemo/dialog/ReusableDialog;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/ReusableDialog;->getView(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 304
    :goto_24
    iget-object v0, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper;->mDialog:Lcom/codemao/nemo/dialog/ReusableDialog;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/ReusableDialog;->getView(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/sdk/update/UpdateHelper$11;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/sdk/update/UpdateHelper$11;-><init>(Lcom/codemao/nemo/sdk/update/UpdateHelper;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private updateDialog(Landroid/os/Handler;Lcn/codemao/android/update/vo/UpdateResultVO;)V
    .registers 9

    .line 201
    invoke-direct {p0}, Lcom/codemao/nemo/sdk/update/UpdateHelper;->initDialog()V

    .line 202
    invoke-virtual {p2}, Lcn/codemao/android/update/vo/UpdateResultVO;->isForceUpdate()Z

    move-result v0

    const/16 v1, 0x8

    const v2, 0x7f0a02a3

    const v3, 0x7f0a0578

    const/4 v4, 0x0

    const v5, 0x7f0a058b

    if-eqz v0, :cond_31

    .line 203
    iget-object v0, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper;->mDialog:Lcom/codemao/nemo/dialog/ReusableDialog;

    invoke-virtual {v0, v5}, Lcom/codemao/nemo/dialog/ReusableDialog;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper;->mDialog:Lcom/codemao/nemo/dialog/ReusableDialog;

    invoke-virtual {v0, v3}, Lcom/codemao/nemo/dialog/ReusableDialog;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper;->mDialog:Lcom/codemao/nemo/dialog/ReusableDialog;

    invoke-virtual {v0, v2}, Lcom/codemao/nemo/dialog/ReusableDialog;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4c

    .line 207
    :cond_31
    iget-object v0, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper;->mDialog:Lcom/codemao/nemo/dialog/ReusableDialog;

    invoke-virtual {v0, v5}, Lcom/codemao/nemo/dialog/ReusableDialog;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper;->mDialog:Lcom/codemao/nemo/dialog/ReusableDialog;

    invoke-virtual {v0, v3}, Lcom/codemao/nemo/dialog/ReusableDialog;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper;->mDialog:Lcom/codemao/nemo/dialog/ReusableDialog;

    invoke-virtual {v0, v2}, Lcom/codemao/nemo/dialog/ReusableDialog;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 211
    :goto_4c
    iget-object v0, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper;->mDialog:Lcom/codemao/nemo/dialog/ReusableDialog;

    invoke-virtual {v0, v5}, Lcom/codemao/nemo/dialog/ReusableDialog;->getView(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/sdk/update/UpdateHelper$5;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/sdk/update/UpdateHelper$5;-><init>(Lcom/codemao/nemo/sdk/update/UpdateHelper;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-object v0, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper;->mDialog:Lcom/codemao/nemo/dialog/ReusableDialog;

    invoke-virtual {v0, v3}, Lcom/codemao/nemo/dialog/ReusableDialog;->getView(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/sdk/update/UpdateHelper$6;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/sdk/update/UpdateHelper$6;-><init>(Lcom/codemao/nemo/sdk/update/UpdateHelper;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v0, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper;->mDialog:Lcom/codemao/nemo/dialog/ReusableDialog;

    invoke-virtual {v0, v2}, Lcom/codemao/nemo/dialog/ReusableDialog;->getView(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/sdk/update/UpdateHelper$7;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/sdk/update/UpdateHelper$7;-><init>(Lcom/codemao/nemo/sdk/update/UpdateHelper;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iget-object p1, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper;->mDialog:Lcom/codemao/nemo/dialog/ReusableDialog;

    const v0, 0x7f0a01d1

    invoke-virtual {p2}, Lcn/codemao/android/update/vo/UpdateResultVO;->getUpdateDesc()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/codemao/nemo/dialog/ReusableDialog;->setText(ILjava/lang/String;)V

    .line 233
    iget-object p1, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper;->mDialog:Lcom/codemao/nemo/dialog/ReusableDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .line 323
    iget-object v0, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper;->mDialog:Lcom/codemao/nemo/dialog/ReusableDialog;

    if-eqz v0, :cond_7

    .line 324
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_7
    return-void
.end method

.method public getIfHasNewVersion(Lcom/codemao/nemo/sdk/update/UpdateHelper$CheckHasNewVersionCallBack;)V
    .registers 4

    .line 90
    iget-boolean v0, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper;->sInit:Z

    if-nez v0, :cond_5

    return-void

    .line 93
    :cond_5
    iget-object v0, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper;->sCodemaoUpdate:Lcn/codemao/android/update/CodemaoUpdate;

    new-instance v1, Lcom/codemao/nemo/sdk/update/UpdateHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/sdk/update/UpdateHelper$1;-><init>(Lcom/codemao/nemo/sdk/update/UpdateHelper;Lcom/codemao/nemo/sdk/update/UpdateHelper$CheckHasNewVersionCallBack;)V

    invoke-virtual {v0, v1}, Lcn/codemao/android/update/CodemaoUpdate;->update2(Lcn/codemao/android/update/listener/NetResultListener;)Lcn/codemao/android/update/CodemaoUpdate;

    return-void
.end method

.method public init(Landroid/content/Context;Z)V
    .registers 5

    .line 70
    iput-boolean p2, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper;->sInit:Z

    if-nez p2, :cond_5

    return-void

    :cond_5
    const/4 p2, 0x0

    .line 75
    new-instance v0, Lcn/codemao/android/update/CodemaoUpdate$Builder;

    invoke-direct {v0}, Lcn/codemao/android/update/CodemaoUpdate$Builder;-><init>()V

    .line 76
    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getChannel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/codemao/android/update/CodemaoUpdate$Builder;->setChannel(Ljava/lang/String;)Lcn/codemao/android/update/CodemaoUpdate$Builder;

    move-result-object v0

    .line 77
    invoke-virtual {v0, p2}, Lcn/codemao/android/update/CodemaoUpdate$Builder;->setDebug(Z)Lcn/codemao/android/update/CodemaoUpdate$Builder;

    move-result-object p2

    const/4 v0, 0x1

    .line 78
    invoke-virtual {p2, v0}, Lcn/codemao/android/update/CodemaoUpdate$Builder;->setEnv(I)Lcn/codemao/android/update/CodemaoUpdate$Builder;

    move-result-object p2

    const-string v0, "T5qx9_w0"

    .line 79
    invoke-virtual {p2, v0}, Lcn/codemao/android/update/CodemaoUpdate$Builder;->setPid(Ljava/lang/String;)Lcn/codemao/android/update/CodemaoUpdate$Builder;

    move-result-object p2

    .line 80
    invoke-virtual {p2, p1}, Lcn/codemao/android/update/CodemaoUpdate$Builder;->builder(Landroid/content/Context;)V

    .line 81
    sget-object p1, Lcn/codemao/android/update/CodemaoUpdate;->INSTANCE:Lcn/codemao/android/update/CodemaoUpdate;

    iput-object p1, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper;->sCodemaoUpdate:Lcn/codemao/android/update/CodemaoUpdate;

    return-void
.end method

.method public install()V
    .registers 2

    .line 181
    iget-object v0, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper;->sCodemaoUpdate:Lcn/codemao/android/update/CodemaoUpdate;

    invoke-virtual {v0}, Lcn/codemao/android/update/CodemaoUpdate;->install()Lcn/codemao/android/update/CodemaoUpdate;

    return-void
.end method

.method public retryDialog()V
    .registers 7

    .line 255
    iget-object v0, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper;->mDialog:Lcom/codemao/nemo/dialog/ReusableDialog;

    const v1, 0x7f0d0130

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/ReusableDialog;->setContentView(I)V

    .line 256
    iget-boolean v0, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper;->isForce:Z

    const v1, 0x7f0a060d

    const/4 v2, 0x0

    const v3, 0x7f0a060c

    const/16 v4, 0x8

    const v5, 0x7f0a0609

    if-eqz v0, :cond_34

    .line 257
    iget-object v0, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper;->mDialog:Lcom/codemao/nemo/dialog/ReusableDialog;

    invoke-virtual {v0, v3}, Lcom/codemao/nemo/dialog/ReusableDialog;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper;->mDialog:Lcom/codemao/nemo/dialog/ReusableDialog;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/ReusableDialog;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper;->mDialog:Lcom/codemao/nemo/dialog/ReusableDialog;

    invoke-virtual {v0, v5}, Lcom/codemao/nemo/dialog/ReusableDialog;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4f

    .line 261
    :cond_34
    iget-object v0, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper;->mDialog:Lcom/codemao/nemo/dialog/ReusableDialog;

    invoke-virtual {v0, v5}, Lcom/codemao/nemo/dialog/ReusableDialog;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper;->mDialog:Lcom/codemao/nemo/dialog/ReusableDialog;

    invoke-virtual {v0, v3}, Lcom/codemao/nemo/dialog/ReusableDialog;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper;->mDialog:Lcom/codemao/nemo/dialog/ReusableDialog;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/ReusableDialog;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 265
    :goto_4f
    iget-object v0, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper;->mDialog:Lcom/codemao/nemo/dialog/ReusableDialog;

    invoke-virtual {v0, v3}, Lcom/codemao/nemo/dialog/ReusableDialog;->getView(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/codemao/nemo/sdk/update/UpdateHelper$8;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/sdk/update/UpdateHelper$8;-><init>(Lcom/codemao/nemo/sdk/update/UpdateHelper;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    iget-object v0, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper;->mDialog:Lcom/codemao/nemo/dialog/ReusableDialog;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/ReusableDialog;->getView(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/sdk/update/UpdateHelper$9;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/sdk/update/UpdateHelper$9;-><init>(Lcom/codemao/nemo/sdk/update/UpdateHelper;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    iget-object v0, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper;->mDialog:Lcom/codemao/nemo/dialog/ReusableDialog;

    invoke-virtual {v0, v5}, Lcom/codemao/nemo/dialog/ReusableDialog;->getView(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/sdk/update/UpdateHelper$10;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/sdk/update/UpdateHelper$10;-><init>(Lcom/codemao/nemo/sdk/update/UpdateHelper;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setProgress(I)V
    .registers 8

    .line 317
    iget-object v0, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper;->mDialog:Lcom/codemao/nemo/dialog/ReusableDialog;

    const v1, 0x7f0a05c8

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/ReusableDialog;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 318
    iget-object v0, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper;->mDialog:Lcom/codemao/nemo/dialog/ReusableDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a05c7

    invoke-virtual {v0, v2, v1}, Lcom/codemao/nemo/dialog/ReusableDialog;->setText(ILjava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper;->mDialog:Lcom/codemao/nemo/dialog/ReusableDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v2, p1

    iget-wide v4, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper;->apkSize:J

    mul-long v2, v2, v4

    const-wide/16 v4, 0x64

    div-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lcom/codemao/nemo/sdk/update/UpdateHelper;->convert(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper;->apkSize:J

    invoke-direct {p0, v2, v3}, Lcom/codemao/nemo/sdk/update/UpdateHelper;->convert(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v1, 0x7f0a0728

    invoke-virtual {v0, v1, p1}, Lcom/codemao/nemo/dialog/ReusableDialog;->setText(ILjava/lang/String;)V

    return-void
.end method

.method public update(Landroid/os/Handler;)V
    .registers 4

    .line 116
    iget-boolean v0, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper;->sInit:Z

    if-nez v0, :cond_5

    return-void

    .line 119
    :cond_5
    iput-object p1, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper;->mHandler:Landroid/os/Handler;

    .line 120
    iget-object v0, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper;->sCodemaoUpdate:Lcn/codemao/android/update/CodemaoUpdate;

    new-instance v1, Lcom/codemao/nemo/sdk/update/UpdateHelper$2;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/sdk/update/UpdateHelper$2;-><init>(Lcom/codemao/nemo/sdk/update/UpdateHelper;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Lcn/codemao/android/update/CodemaoUpdate;->update(Lcn/codemao/android/update/listener/NetResultListener;)Lcn/codemao/android/update/CodemaoUpdate;

    return-void
.end method

.method public update2()V
    .registers 3

    .line 142
    iget-boolean v0, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper;->sInit:Z

    if-nez v0, :cond_5

    return-void

    .line 145
    :cond_5
    iget-object v0, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper;->sCodemaoUpdate:Lcn/codemao/android/update/CodemaoUpdate;

    new-instance v1, Lcom/codemao/nemo/sdk/update/UpdateHelper$3;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/sdk/update/UpdateHelper$3;-><init>(Lcom/codemao/nemo/sdk/update/UpdateHelper;)V

    invoke-virtual {v0, v1}, Lcn/codemao/android/update/CodemaoUpdate;->update2(Lcn/codemao/android/update/listener/NetResultListener;)Lcn/codemao/android/update/CodemaoUpdate;

    return-void
.end method
