.class public Lcn/codemao/android/onekeylogin/QuickLoginManager;
.super Ljava/lang/Object;
.source "QuickLoginManager.java"


# static fields
.field private static volatile instance:Lcn/codemao/android/onekeylogin/QuickLoginManager;


# instance fields
.field private agreementIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private currentSupplierType:Ljava/lang/String;

.field private initStateCode:I

.field private initSuccess:Z

.field private localContext:Landroid/content/Context;

.field private localSupplierServcie:Lcn/codemao/android/onekeylogin/supplier/SupplierWrap;

.field private quickLoginInitListener:Lcn/codemao/android/onekeylogin/listener/QuickLoginInitListener;

.field private quickLoginListener:Lcn/codemao/android/onekeylogin/listener/QuickLoginListener;

.field private quickOpenAuthListener:Lcn/codemao/android/onekeylogin/listener/QuickOpenAuthListener;

.field private quickPreLoginListener:Lcn/codemao/android/onekeylogin/listener/QuickPreLoginListener;

.field private retrySDKInitTimes:I

.field private retryTimes:I


# direct methods
.method public static synthetic $r8$lambda$Fe4Ik-5ZHhkuxs-LH1IW81CKlqQ(Lcn/codemao/android/onekeylogin/QuickLoginManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcn/codemao/android/onekeylogin/QuickLoginManager;->lambda$preInit$3(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$G1eJ6wIV0zZgxK0epQ2yIqhREzw(Lcn/codemao/android/onekeylogin/QuickLoginManager;Landroid/content/Context;Lcn/codemao/android/account/bean/PreOnekeyLoginInfoVO;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcn/codemao/android/onekeylogin/QuickLoginManager;->lambda$preInit$2(Landroid/content/Context;Lcn/codemao/android/account/bean/PreOnekeyLoginInfoVO;)V

    return-void
.end method

.method public static synthetic $r8$lambda$USvueiXt6J8jxY2md9MjTDlrml0(Lcn/codemao/android/onekeylogin/QuickLoginManager;Ljava/lang/String;IILjava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcn/codemao/android/onekeylogin/QuickLoginManager;->lambda$new$1(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kn1_JeDf8Nbv16QS9W1t4H5bLG4(Ljava/lang/String;IILjava/lang/String;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcn/codemao/android/onekeylogin/QuickLoginManager;->lambda$new$0(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UNKNOWN"

    .line 32
    iput-object v0, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager;->currentSupplierType:Ljava/lang/String;

    const/16 v0, 0x2712

    .line 43
    iput v0, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager;->initStateCode:I

    const/4 v0, -0x1

    .line 48
    iput v0, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager;->retrySDKInitTimes:I

    .line 63
    new-instance v0, Lcn/codemao/android/onekeylogin/QuickLoginManager$1;

    invoke-direct {v0, p0}, Lcn/codemao/android/onekeylogin/QuickLoginManager$1;-><init>(Lcn/codemao/android/onekeylogin/QuickLoginManager;)V

    iput-object v0, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager;->quickOpenAuthListener:Lcn/codemao/android/onekeylogin/listener/QuickOpenAuthListener;

    .line 133
    sget-object v0, Lcn/codemao/android/onekeylogin/QuickLoginManager$$ExternalSyntheticLambda3;->INSTANCE:Lcn/codemao/android/onekeylogin/QuickLoginManager$$ExternalSyntheticLambda3;

    iput-object v0, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager;->quickPreLoginListener:Lcn/codemao/android/onekeylogin/listener/QuickPreLoginListener;

    .line 138
    new-instance v0, Lcn/codemao/android/onekeylogin/QuickLoginManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcn/codemao/android/onekeylogin/QuickLoginManager$$ExternalSyntheticLambda2;-><init>(Lcn/codemao/android/onekeylogin/QuickLoginManager;)V

    iput-object v0, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager;->quickLoginInitListener:Lcn/codemao/android/onekeylogin/listener/QuickLoginInitListener;

    const/4 v0, 0x0

    .line 229
    iput v0, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager;->retryTimes:I

    return-void
.end method

.method static synthetic access$000(Lcn/codemao/android/onekeylogin/QuickLoginManager;)Lcn/codemao/android/onekeylogin/listener/QuickLoginListener;
    .registers 1

    .line 28
    iget-object p0, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager;->quickLoginListener:Lcn/codemao/android/onekeylogin/listener/QuickLoginListener;

    return-object p0
.end method

.method static synthetic access$100(Lcn/codemao/android/onekeylogin/QuickLoginManager;)Ljava/util/List;
    .registers 1

    .line 28
    iget-object p0, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager;->agreementIds:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcn/codemao/android/onekeylogin/QuickLoginManager;)Lcn/codemao/android/onekeylogin/supplier/SupplierWrap;
    .registers 1

    .line 28
    iget-object p0, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager;->localSupplierServcie:Lcn/codemao/android/onekeylogin/supplier/SupplierWrap;

    return-object p0
.end method

.method private chooseSupplier(Lcn/codemao/android/onekeylogin/supplier/SupplierWrap;)Lcn/codemao/android/onekeylogin/QuickLoginManager;
    .registers 3

    .line 189
    iput-object p1, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager;->localSupplierServcie:Lcn/codemao/android/onekeylogin/supplier/SupplierWrap;

    .line 190
    invoke-static {}, Lcn/codemao/android/onekeylogin/log/QuickLoginLog;->getInstance()Lcn/codemao/android/onekeylogin/log/QuickLoginLog;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/onekeylogin/log/QuickLoginLog;->isDebug()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcn/codemao/android/onekeylogin/supplier/SupplierWrap;->setDebug(Z)V

    .line 191
    invoke-direct {p0}, Lcn/codemao/android/onekeylogin/QuickLoginManager;->createLog()V

    return-object p0
.end method

.method private createLog()V
    .registers 5

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 355
    iget-object v1, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager;->localSupplierServcie:Lcn/codemao/android/onekeylogin/supplier/SupplierWrap;

    if-eqz v1, :cond_23

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager;->localSupplierServcie:Lcn/codemao/android/onekeylogin/supplier/SupplierWrap;

    invoke-virtual {v2}, Lcn/codemao/android/onekeylogin/supplier/SupplierWrap;->configSupplierName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    :cond_23
    invoke-static {}, Lcn/codemao/android/onekeylogin/log/QuickLoginLog;->getInstance()Lcn/codemao/android/onekeylogin/log/QuickLoginLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "正在配置一键登录服务，当前已配置的服务："

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/codemao/android/onekeylogin/log/QuickLoginLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcn/codemao/android/onekeylogin/QuickLoginManager;
    .registers 2

    .line 172
    sget-object v0, Lcn/codemao/android/onekeylogin/QuickLoginManager;->instance:Lcn/codemao/android/onekeylogin/QuickLoginManager;

    if-nez v0, :cond_17

    .line 173
    const-class v0, Lcn/codemao/android/onekeylogin/QuickLoginManager;

    monitor-enter v0

    .line 174
    :try_start_7
    sget-object v1, Lcn/codemao/android/onekeylogin/QuickLoginManager;->instance:Lcn/codemao/android/onekeylogin/QuickLoginManager;

    if-nez v1, :cond_12

    .line 175
    new-instance v1, Lcn/codemao/android/onekeylogin/QuickLoginManager;

    invoke-direct {v1}, Lcn/codemao/android/onekeylogin/QuickLoginManager;-><init>()V

    sput-object v1, Lcn/codemao/android/onekeylogin/QuickLoginManager;->instance:Lcn/codemao/android/onekeylogin/QuickLoginManager;

    .line 177
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 179
    :cond_17
    :goto_17
    sget-object v0, Lcn/codemao/android/onekeylogin/QuickLoginManager;->instance:Lcn/codemao/android/onekeylogin/QuickLoginManager;

    return-object v0
.end method

.method private getPhoneInfo(Landroid/content/Context;)V
    .registers 4

    .line 302
    iget-object v0, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager;->localSupplierServcie:Lcn/codemao/android/onekeylogin/supplier/SupplierWrap;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x1

    .line 305
    iput-boolean v1, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager;->initSuccess:Z

    .line 306
    iget-object v1, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager;->quickPreLoginListener:Lcn/codemao/android/onekeylogin/listener/QuickPreLoginListener;

    invoke-virtual {v0, p1, v1}, Lcn/codemao/android/onekeylogin/supplier/SupplierWrap;->getPhoneInfo(Landroid/content/Context;Lcn/codemao/android/onekeylogin/listener/QuickPreLoginListener;)V

    return-void
.end method

.method private static synthetic lambda$new$0(Ljava/lang/String;IILjava/lang/String;)V
    .registers 4

    return-void
.end method

.method private synthetic lambda$new$1(Ljava/lang/String;IILjava/lang/String;)V
    .registers 5

    const/16 p1, 0x2710

    if-eq p2, p1, :cond_12

    .line 141
    iget p1, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager;->retrySDKInitTimes:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager;->retrySDKInitTimes:I

    if-ltz p1, :cond_17

    .line 143
    iget-object p1, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager;->localContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcn/codemao/android/onekeylogin/QuickLoginManager;->init(Landroid/content/Context;)V

    goto :goto_17

    .line 147
    :cond_12
    iget-object p1, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager;->localContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcn/codemao/android/onekeylogin/QuickLoginManager;->getPhoneInfo(Landroid/content/Context;)V

    .line 149
    :cond_17
    :goto_17
    iput p2, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager;->initStateCode:I

    return-void
.end method

.method private synthetic lambda$preInit$2(Landroid/content/Context;Lcn/codemao/android/account/bean/PreOnekeyLoginInfoVO;)V
    .registers 6

    if-eqz p2, :cond_3b

    .line 240
    invoke-virtual {p2}, Lcn/codemao/android/account/bean/PreOnekeyLoginInfoVO;->getProvider()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHANYAN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0x2711

    if-eqz v0, :cond_26

    .line 241
    invoke-virtual {p0, v1}, Lcn/codemao/android/onekeylogin/QuickLoginManager;->bindCurrentSupplierType(Ljava/lang/String;)V

    .line 242
    new-instance p2, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;

    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getOnekeyShanyanAppId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lcn/codemao/android/onekeylogin/supplier/ShanyanWrap;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcn/codemao/android/onekeylogin/QuickLoginManager;->chooseSupplier(Lcn/codemao/android/onekeylogin/supplier/SupplierWrap;)Lcn/codemao/android/onekeylogin/QuickLoginManager;

    .line 243
    iput v2, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager;->initStateCode:I

    goto :goto_3b

    .line 244
    :cond_26
    invoke-virtual {p2}, Lcn/codemao/android/account/bean/PreOnekeyLoginInfoVO;->getProvider()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    const-string v0, "JIGUANG"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3b

    .line 245
    invoke-virtual {p0, v0}, Lcn/codemao/android/onekeylogin/QuickLoginManager;->bindCurrentSupplierType(Ljava/lang/String;)V

    .line 247
    iput v2, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager;->initStateCode:I

    .line 252
    :cond_3b
    :goto_3b
    iget-object p2, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager;->localSupplierServcie:Lcn/codemao/android/onekeylogin/supplier/SupplierWrap;

    if-nez p2, :cond_4d

    const/4 p1, -0x1

    .line 253
    iput p1, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager;->retrySDKInitTimes:I

    .line 254
    invoke-static {}, Lcn/codemao/android/onekeylogin/log/QuickLoginLog;->getInstance()Lcn/codemao/android/onekeylogin/log/QuickLoginLog;

    move-result-object p1

    const-string/jumbo p2, "未能正确找到一键登录服务商，初始化失败"

    invoke-virtual {p1, p2}, Lcn/codemao/android/onekeylogin/log/QuickLoginLog;->e(Ljava/lang/String;)V

    return-void

    .line 259
    :cond_4d
    iget-object v0, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager;->quickLoginInitListener:Lcn/codemao/android/onekeylogin/listener/QuickLoginInitListener;

    invoke-virtual {p2, p1, v0}, Lcn/codemao/android/onekeylogin/supplier/SupplierWrap;->init(Landroid/content/Context;Lcn/codemao/android/onekeylogin/listener/QuickLoginInitListener;)V

    return-void
.end method

.method private synthetic lambda$preInit$3(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 261
    iget v0, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager;->retryTimes:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_f

    .line 262
    invoke-direct {p0, p1}, Lcn/codemao/android/onekeylogin/QuickLoginManager;->preInit(Landroid/content/Context;)V

    .line 263
    iget p1, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager;->retryTimes:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager;->retryTimes:I

    goto :goto_12

    :cond_f
    const/4 p1, 0x0

    .line 265
    iput p1, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager;->retryTimes:I

    .line 267
    :goto_12
    invoke-static {}, Lcn/codemao/android/onekeylogin/log/QuickLoginLog;->getInstance()Lcn/codemao/android/onekeylogin/log/QuickLoginLog;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "接口请求报错，错误码："

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "，msg："

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/codemao/android/onekeylogin/log/QuickLoginLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method private preInit(Landroid/content/Context;)V
    .registers 5

    .line 232
    iget-boolean v0, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager;->initSuccess:Z

    if-eqz v0, :cond_5

    return-void

    .line 234
    :cond_5
    new-instance v0, Lcn/codemao/android/account/bean/PreOnekeyLoginInfoRequestVO;

    invoke-direct {v0}, Lcn/codemao/android/account/bean/PreOnekeyLoginInfoRequestVO;-><init>()V

    .line 235
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getPID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/codemao/android/account/bean/PreOnekeyLoginInfoRequestVO;->setPid(Ljava/lang/String;)V

    const-string v1, "Android"

    .line 236
    invoke-virtual {v0, v1}, Lcn/codemao/android/account/bean/PreOnekeyLoginInfoRequestVO;->setPlatform(Ljava/lang/String;)V

    .line 238
    new-instance v1, Lcn/codemao/android/onekeylogin/QuickLoginManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcn/codemao/android/onekeylogin/QuickLoginManager$$ExternalSyntheticLambda1;-><init>(Lcn/codemao/android/onekeylogin/QuickLoginManager;Landroid/content/Context;)V

    new-instance v2, Lcn/codemao/android/onekeylogin/QuickLoginManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcn/codemao/android/onekeylogin/QuickLoginManager$$ExternalSyntheticLambda0;-><init>(Lcn/codemao/android/onekeylogin/QuickLoginManager;Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcn/codemao/android/account/net/AccountRequest;->getOnekeyLoginInfo(Lcn/codemao/android/account/bean/PreOnekeyLoginInfoRequestVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public bindCurrentSupplierType(Ljava/lang/String;)V
    .registers 2

    .line 159
    iput-object p1, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager;->currentSupplierType:Ljava/lang/String;

    return-void
.end method

.method public closeAuthPage()V
    .registers 2

    .line 345
    iget-object v0, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager;->localSupplierServcie:Lcn/codemao/android/onekeylogin/supplier/SupplierWrap;

    if-eqz v0, :cond_7

    .line 346
    invoke-virtual {v0}, Lcn/codemao/android/onekeylogin/supplier/SupplierWrap;->closeAuthPage()V

    :cond_7
    return-void
.end method

.method public destroy()V
    .registers 2

    const/4 v0, 0x0

    .line 365
    iput-object v0, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager;->quickLoginInitListener:Lcn/codemao/android/onekeylogin/listener/QuickLoginInitListener;

    .line 367
    iget-object v0, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager;->localSupplierServcie:Lcn/codemao/android/onekeylogin/supplier/SupplierWrap;

    if-eqz v0, :cond_a

    .line 368
    invoke-virtual {v0}, Lcn/codemao/android/onekeylogin/supplier/SupplierWrap;->onDestroy()V

    :cond_a
    return-void
.end method

.method public getCurrentSupplierType()Ljava/lang/String;
    .registers 2

    .line 163
    iget-object v0, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager;->currentSupplierType:Ljava/lang/String;

    return-object v0
.end method

.method public getInitStateCode()I
    .registers 2

    .line 221
    iget v0, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager;->initStateCode:I

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .registers 3

    .line 276
    iget-object v0, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager;->localContext:Landroid/content/Context;

    if-nez v0, :cond_c

    if-nez p1, :cond_7

    return-void

    .line 281
    :cond_7
    invoke-static {p1}, Lcn/codemao/android/onekeylogin/utils/ResUtils;->init(Landroid/content/Context;)V

    .line 282
    iput-object p1, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager;->localContext:Landroid/content/Context;

    .line 284
    :cond_c
    iget-object p1, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager;->localContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcn/codemao/android/onekeylogin/QuickLoginManager;->preInit(Landroid/content/Context;)V

    return-void
.end method

.method public isInitSuccess()Z
    .registers 3

    .line 216
    iget v0, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager;->initStateCode:I

    const/16 v1, 0x2710

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public openLoginAuth(Landroid/content/Context;Ljava/util/List;Lcn/codemao/android/onekeylogin/listener/QuickLoginListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/codemao/android/onekeylogin/listener/QuickLoginListener;",
            ")V"
        }
    .end annotation

    .line 315
    invoke-direct {p0, p1}, Lcn/codemao/android/onekeylogin/QuickLoginManager;->preInit(Landroid/content/Context;)V

    .line 318
    iput-object p2, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager;->agreementIds:Ljava/util/List;

    if-nez p1, :cond_12

    .line 320
    invoke-static {}, Lcn/codemao/android/onekeylogin/log/QuickLoginLog;->getInstance()Lcn/codemao/android/onekeylogin/log/QuickLoginLog;

    move-result-object p1

    const-string/jumbo p2, "打开授权页面的context不能为空"

    invoke-virtual {p1, p2}, Lcn/codemao/android/onekeylogin/log/QuickLoginLog;->e(Ljava/lang/String;)V

    return-void

    .line 326
    :cond_12
    iget-object p2, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager;->localSupplierServcie:Lcn/codemao/android/onekeylogin/supplier/SupplierWrap;

    const-string p3, ""

    if-nez p2, :cond_2b

    .line 327
    iget-object p1, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager;->quickOpenAuthListener:Lcn/codemao/android/onekeylogin/listener/QuickOpenAuthListener;

    if-eqz p1, :cond_2a

    .line 328
    iget-object p2, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager;->currentSupplierType:Ljava/lang/String;

    const/16 v0, 0x2712

    const/4 v1, -0x1

    invoke-interface {p1, p2, v0, v1, p3}, Lcn/codemao/android/onekeylogin/listener/QuickOpenAuthListener;->loginAuthFail(Ljava/lang/String;IILjava/lang/String;)V

    .line 329
    iget-object p1, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager;->quickOpenAuthListener:Lcn/codemao/android/onekeylogin/listener/QuickOpenAuthListener;

    const/4 p2, 0x0

    invoke-interface {p1, p2, p2}, Lcn/codemao/android/onekeylogin/listener/QuickOpenAuthListener;->onAuthPageOpen(ZZ)V

    :cond_2a
    return-void

    .line 333
    :cond_2b
    invoke-virtual {p2}, Lcn/codemao/android/onekeylogin/supplier/SupplierWrap;->isPreLoginSuccess()Z

    move-result p2

    if-nez p2, :cond_36

    .line 335
    iget-object p2, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager;->localContext:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcn/codemao/android/onekeylogin/QuickLoginManager;->getPhoneInfo(Landroid/content/Context;)V

    .line 337
    :cond_36
    iget-object p2, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager;->localSupplierServcie:Lcn/codemao/android/onekeylogin/supplier/SupplierWrap;

    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getOnekeyProtocolMap()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {p2, p1, p3, v0}, Lcn/codemao/android/onekeylogin/supplier/SupplierWrap;->configUi(Landroid/content/Context;Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    .line 338
    iget-object p2, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager;->localSupplierServcie:Lcn/codemao/android/onekeylogin/supplier/SupplierWrap;

    iget-object p3, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager;->quickOpenAuthListener:Lcn/codemao/android/onekeylogin/listener/QuickOpenAuthListener;

    invoke-virtual {p2, p1, p3}, Lcn/codemao/android/onekeylogin/supplier/SupplierWrap;->openLoginAuth(Landroid/content/Context;Lcn/codemao/android/onekeylogin/listener/QuickOpenAuthListener;)V

    return-void
.end method

.method public setDebug(Z)Lcn/codemao/android/onekeylogin/QuickLoginManager;
    .registers 3

    .line 202
    invoke-static {}, Lcn/codemao/android/onekeylogin/log/QuickLoginLog;->getInstance()Lcn/codemao/android/onekeylogin/log/QuickLoginLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/codemao/android/onekeylogin/log/QuickLoginLog;->setEnable(Z)V

    .line 203
    iget-object v0, p0, Lcn/codemao/android/onekeylogin/QuickLoginManager;->localSupplierServcie:Lcn/codemao/android/onekeylogin/supplier/SupplierWrap;

    if-nez v0, :cond_c

    return-object p0

    .line 206
    :cond_c
    invoke-virtual {v0, p1}, Lcn/codemao/android/onekeylogin/supplier/SupplierWrap;->setDebug(Z)V

    return-object p0
.end method
