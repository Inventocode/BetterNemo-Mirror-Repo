.class public Lcn/codemao/android/account/util/WechatManager;
.super Ljava/lang/Object;
.source "WechatManager.java"


# static fields
.field private static volatile mInstance:Lcn/codemao/android/account/util/WechatManager;


# instance fields
.field private auth:Lcom/tencent/mm/opensdk/diffdev/IDiffDevOAuth;

.field private checkBind:Z

.field public isLoginScan:Z

.field private mAgreeProtocolIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAuthListener:Lcn/codemao/android/account/listener/AuthListener;

.field private mFailResultListener:Lcn/codemao/android/account/listener/NetFailResultListener;

.field private mIWXAPI:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

.field private mIshareResult:Lcn/codemao/android/share/interfaces/IshareResult;

.field private mNetResultListener:Lcn/codemao/android/account/listener/NetResultListener;

.field private mSuccessResultListener:Lcn/codemao/android/account/listener/NetSuccessResultListener;

.field private mWechatCodeListener:Lcn/codemao/android/account/listener/WechatCodeListener;

.field oAuthListener:Lcom/tencent/mm/opensdk/diffdev/OAuthListener;

.field private type:I


# direct methods
.method public static synthetic $r8$lambda$XTZG1roiELJlON-gxAO2rfo0OtQ(Lcn/codemao/android/account/listener/WechatCodeListener;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcn/codemao/android/account/util/WechatManager;->lambda$bindByWechatCode$3(Lcn/codemao/android/account/listener/WechatCodeListener;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nCMULkzwbbDy_uo6Pbe6aetRDVc(Lcn/codemao/android/account/util/WechatManager;Lcn/codemao/android/account/bean/WechatCodeLoginResultVO;)V
    .registers 2

    invoke-direct {p0, p1}, Lcn/codemao/android/account/util/WechatManager;->lambda$loginByWechatCode$0(Lcn/codemao/android/account/bean/WechatCodeLoginResultVO;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nCZ5GHtzwxtr2QvGebHOimsTbY0(Lcn/codemao/android/account/listener/WechatCodeListener;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcn/codemao/android/account/util/WechatManager;->lambda$loginByWechatCode$1(Lcn/codemao/android/account/listener/WechatCodeListener;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$t_s1j6de8NWWiCjnpu3IfuKMwY8(Lcn/codemao/android/account/util/WechatManager;Lcn/codemao/android/account/bean/WechatCodeLoginResultVO;)V
    .registers 2

    invoke-direct {p0, p1}, Lcn/codemao/android/account/util/WechatManager;->lambda$bindByWechatCode$2(Lcn/codemao/android/account/bean/WechatCodeLoginResultVO;)V

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance v0, Lcn/codemao/android/account/util/WechatManager$1;

    invoke-direct {v0, p0}, Lcn/codemao/android/account/util/WechatManager$1;-><init>(Lcn/codemao/android/account/util/WechatManager;)V

    iput-object v0, p0, Lcn/codemao/android/account/util/WechatManager;->oAuthListener:Lcom/tencent/mm/opensdk/diffdev/OAuthListener;

    .line 66
    invoke-static {}, Lcom/tencent/mm/opensdk/diffdev/DiffDevOAuthFactory;->getDiffDevOAuth()Lcom/tencent/mm/opensdk/diffdev/IDiffDevOAuth;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/account/util/WechatManager;->auth:Lcom/tencent/mm/opensdk/diffdev/IDiffDevOAuth;

    return-void
.end method

.method static synthetic access$000(Lcn/codemao/android/account/util/WechatManager;)Lcn/codemao/android/account/listener/WechatCodeListener;
    .registers 1

    .line 30
    iget-object p0, p0, Lcn/codemao/android/account/util/WechatManager;->mWechatCodeListener:Lcn/codemao/android/account/listener/WechatCodeListener;

    return-object p0
.end method

.method static synthetic access$100(Lcn/codemao/android/account/util/WechatManager;)Lcn/codemao/android/account/listener/NetFailResultListener;
    .registers 1

    .line 30
    iget-object p0, p0, Lcn/codemao/android/account/util/WechatManager;->mFailResultListener:Lcn/codemao/android/account/listener/NetFailResultListener;

    return-object p0
.end method

.method static synthetic access$200(Lcn/codemao/android/account/util/WechatManager;)Lcn/codemao/android/account/listener/NetSuccessResultListener;
    .registers 1

    .line 30
    iget-object p0, p0, Lcn/codemao/android/account/util/WechatManager;->mSuccessResultListener:Lcn/codemao/android/account/listener/NetSuccessResultListener;

    return-object p0
.end method

.method public static getInstance()Lcn/codemao/android/account/util/WechatManager;
    .registers 2

    .line 57
    sget-object v0, Lcn/codemao/android/account/util/WechatManager;->mInstance:Lcn/codemao/android/account/util/WechatManager;

    if-nez v0, :cond_17

    .line 58
    const-class v0, Lcn/codemao/android/account/util/WechatManager;

    monitor-enter v0

    .line 59
    :try_start_7
    sget-object v1, Lcn/codemao/android/account/util/WechatManager;->mInstance:Lcn/codemao/android/account/util/WechatManager;

    if-nez v1, :cond_12

    new-instance v1, Lcn/codemao/android/account/util/WechatManager;

    invoke-direct {v1}, Lcn/codemao/android/account/util/WechatManager;-><init>()V

    sput-object v1, Lcn/codemao/android/account/util/WechatManager;->mInstance:Lcn/codemao/android/account/util/WechatManager;

    .line 60
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 62
    :cond_17
    :goto_17
    sget-object v0, Lcn/codemao/android/account/util/WechatManager;->mInstance:Lcn/codemao/android/account/util/WechatManager;

    return-object v0
.end method

.method private isWechatInstalled()Z
    .registers 2

    .line 224
    iget-object v0, p0, Lcn/codemao/android/account/util/WechatManager;->mIWXAPI:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v0

    if-nez v0, :cond_10

    const-string/jumbo v0, "您还未安装微信客户端"

    .line 225
    invoke-static {v0}, Lcn/codemao/android/account/util/LogUtils;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_10
    const/4 v0, 0x1

    return v0
.end method

.method private synthetic lambda$bindByWechatCode$2(Lcn/codemao/android/account/bean/WechatCodeLoginResultVO;)V
    .registers 9

    .line 150
    iget-object v0, p0, Lcn/codemao/android/account/util/WechatManager;->auth:Lcom/tencent/mm/opensdk/diffdev/IDiffDevOAuth;

    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getWechatAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/codemao/android/account/bean/WechatCodeLoginResultVO;->getNonce_str()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcn/codemao/android/account/bean/WechatCodeLoginResultVO;->getTime_stamp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcn/codemao/android/account/bean/WechatCodeLoginResultVO;->getSignature()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcn/codemao/android/account/util/WechatManager;->oAuthListener:Lcom/tencent/mm/opensdk/diffdev/OAuthListener;

    const-string v2, "snsapi_userinfo"

    invoke-interface/range {v0 .. v6}, Lcom/tencent/mm/opensdk/diffdev/IDiffDevOAuth;->auth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/opensdk/diffdev/OAuthListener;)Z

    return-void
.end method

.method private static synthetic lambda$bindByWechatCode$3(Lcn/codemao/android/account/listener/WechatCodeListener;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 151
    sget-object p1, Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;->WechatAuth_Err_NetworkErr:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    invoke-interface {p0, p1}, Lcn/codemao/android/account/listener/WechatCodeListener;->onAuthFinish(Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;)V

    return-void
.end method

.method private synthetic lambda$loginByWechatCode$0(Lcn/codemao/android/account/bean/WechatCodeLoginResultVO;)V
    .registers 9

    .line 139
    iget-object v0, p0, Lcn/codemao/android/account/util/WechatManager;->auth:Lcom/tencent/mm/opensdk/diffdev/IDiffDevOAuth;

    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getWechatAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/codemao/android/account/bean/WechatCodeLoginResultVO;->getNonce_str()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcn/codemao/android/account/bean/WechatCodeLoginResultVO;->getTime_stamp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcn/codemao/android/account/bean/WechatCodeLoginResultVO;->getSignature()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcn/codemao/android/account/util/WechatManager;->oAuthListener:Lcom/tencent/mm/opensdk/diffdev/OAuthListener;

    const-string v2, "snsapi_userinfo"

    invoke-interface/range {v0 .. v6}, Lcom/tencent/mm/opensdk/diffdev/IDiffDevOAuth;->auth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/opensdk/diffdev/OAuthListener;)Z

    return-void
.end method

.method private static synthetic lambda$loginByWechatCode$1(Lcn/codemao/android/account/listener/WechatCodeListener;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 140
    sget-object p1, Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;->WechatAuth_Err_NetworkErr:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    invoke-interface {p0, p1}, Lcn/codemao/android/account/listener/WechatCodeListener;->onAuthFinish(Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;)V

    return-void
.end method

.method private stopWechatCode()V
    .registers 2

    .line 129
    iget-object v0, p0, Lcn/codemao/android/account/util/WechatManager;->auth:Lcom/tencent/mm/opensdk/diffdev/IDiffDevOAuth;

    invoke-interface {v0}, Lcom/tencent/mm/opensdk/diffdev/IDiffDevOAuth;->stopAuth()Z

    return-void
.end method


# virtual methods
.method public bindByWechatCode(Lcn/codemao/android/account/listener/WechatCodeListener;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/listener/WechatCodeListener;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    .line 144
    invoke-direct {p0}, Lcn/codemao/android/account/util/WechatManager;->stopWechatCode()V

    const/4 v0, 0x0

    .line 145
    iput-boolean v0, p0, Lcn/codemao/android/account/util/WechatManager;->isLoginScan:Z

    .line 146
    iput-object p1, p0, Lcn/codemao/android/account/util/WechatManager;->mWechatCodeListener:Lcn/codemao/android/account/listener/WechatCodeListener;

    .line 147
    iput-object p2, p0, Lcn/codemao/android/account/util/WechatManager;->mSuccessResultListener:Lcn/codemao/android/account/listener/NetSuccessResultListener;

    .line 148
    iput-object p3, p0, Lcn/codemao/android/account/util/WechatManager;->mFailResultListener:Lcn/codemao/android/account/listener/NetFailResultListener;

    .line 149
    new-instance p2, Lcn/codemao/android/account/util/WechatManager$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcn/codemao/android/account/util/WechatManager$$ExternalSyntheticLambda3;-><init>(Lcn/codemao/android/account/util/WechatManager;)V

    new-instance p3, Lcn/codemao/android/account/util/WechatManager$$ExternalSyntheticLambda0;

    invoke-direct {p3, p1}, Lcn/codemao/android/account/util/WechatManager$$ExternalSyntheticLambda0;-><init>(Lcn/codemao/android/account/listener/WechatCodeListener;)V

    invoke-static {p2, p3}, Lcn/codemao/android/account/net/AccountRequest;->getWechatCode(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public clear()V
    .registers 2

    const/4 v0, 0x0

    .line 214
    iput-object v0, p0, Lcn/codemao/android/account/util/WechatManager;->mAuthListener:Lcn/codemao/android/account/listener/AuthListener;

    .line 215
    iput-object v0, p0, Lcn/codemao/android/account/util/WechatManager;->mIshareResult:Lcn/codemao/android/share/interfaces/IshareResult;

    .line 216
    iput-object v0, p0, Lcn/codemao/android/account/util/WechatManager;->mIWXAPI:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    .line 217
    iput-object v0, p0, Lcn/codemao/android/account/util/WechatManager;->mNetResultListener:Lcn/codemao/android/account/listener/NetResultListener;

    .line 218
    iput-object v0, p0, Lcn/codemao/android/account/util/WechatManager;->mFailResultListener:Lcn/codemao/android/account/listener/NetFailResultListener;

    .line 219
    iput-object v0, p0, Lcn/codemao/android/account/util/WechatManager;->mWechatCodeListener:Lcn/codemao/android/account/listener/WechatCodeListener;

    .line 220
    iput-object v0, p0, Lcn/codemao/android/account/util/WechatManager;->mSuccessResultListener:Lcn/codemao/android/account/listener/NetSuccessResultListener;

    return-void
.end method

.method public getAgreeProtocolIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcn/codemao/android/account/util/WechatManager;->mAgreeProtocolIds:Ljava/util/List;

    return-object v0
.end method

.method public getAuthListener()Lcn/codemao/android/account/listener/AuthListener;
    .registers 2

    .line 94
    iget-object v0, p0, Lcn/codemao/android/account/util/WechatManager;->mAuthListener:Lcn/codemao/android/account/listener/AuthListener;

    return-object v0
.end method

.method public getIshareResult()Lcn/codemao/android/share/interfaces/IshareResult;
    .registers 2

    .line 74
    iget-object v0, p0, Lcn/codemao/android/account/util/WechatManager;->mIshareResult:Lcn/codemao/android/share/interfaces/IshareResult;

    return-object v0
.end method

.method public getNetFailResultListener()Lcn/codemao/android/account/listener/NetFailResultListener;
    .registers 2

    .line 86
    iget-object v0, p0, Lcn/codemao/android/account/util/WechatManager;->mFailResultListener:Lcn/codemao/android/account/listener/NetFailResultListener;

    return-object v0
.end method

.method public getNetSuccessResultListener()Lcn/codemao/android/account/listener/NetSuccessResultListener;
    .registers 2

    .line 82
    iget-object v0, p0, Lcn/codemao/android/account/util/WechatManager;->mSuccessResultListener:Lcn/codemao/android/account/listener/NetSuccessResultListener;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 70
    iget v0, p0, Lcn/codemao/android/account/util/WechatManager;->type:I

    return v0
.end method

.method public isCheckBind()Z
    .registers 2

    .line 90
    iget-boolean v0, p0, Lcn/codemao/android/account/util/WechatManager;->checkBind:Z

    return v0
.end method

.method public loginByWechatCode(Lcn/codemao/android/account/listener/WechatCodeListener;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/account/listener/WechatCodeListener;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/WechatLoginResultVO;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    .line 133
    invoke-direct {p0}, Lcn/codemao/android/account/util/WechatManager;->stopWechatCode()V

    const/4 v0, 0x1

    .line 134
    iput-boolean v0, p0, Lcn/codemao/android/account/util/WechatManager;->isLoginScan:Z

    .line 135
    iput-object p1, p0, Lcn/codemao/android/account/util/WechatManager;->mWechatCodeListener:Lcn/codemao/android/account/listener/WechatCodeListener;

    .line 136
    iput-object p2, p0, Lcn/codemao/android/account/util/WechatManager;->mSuccessResultListener:Lcn/codemao/android/account/listener/NetSuccessResultListener;

    .line 137
    iput-object p3, p0, Lcn/codemao/android/account/util/WechatManager;->mFailResultListener:Lcn/codemao/android/account/listener/NetFailResultListener;

    .line 138
    new-instance p2, Lcn/codemao/android/account/util/WechatManager$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcn/codemao/android/account/util/WechatManager$$ExternalSyntheticLambda2;-><init>(Lcn/codemao/android/account/util/WechatManager;)V

    new-instance p3, Lcn/codemao/android/account/util/WechatManager$$ExternalSyntheticLambda1;

    invoke-direct {p3, p1}, Lcn/codemao/android/account/util/WechatManager$$ExternalSyntheticLambda1;-><init>(Lcn/codemao/android/account/listener/WechatCodeListener;)V

    invoke-static {p2, p3}, Lcn/codemao/android/account/net/AccountRequest;->getWechatCode(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public setIshareResult(Lcn/codemao/android/share/interfaces/IshareResult;)V
    .registers 2

    .line 78
    iput-object p1, p0, Lcn/codemao/android/account/util/WechatManager;->mIshareResult:Lcn/codemao/android/share/interfaces/IshareResult;

    return-void
.end method

.method public wxRequest(ZLjava/util/List;Lcn/codemao/android/account/listener/AuthListener;Landroid/content/Context;ILcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/codemao/android/account/listener/AuthListener;",
            "Landroid/content/Context;",
            "I",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    .line 98
    iput p5, p0, Lcn/codemao/android/account/util/WechatManager;->type:I

    .line 99
    iput-object p2, p0, Lcn/codemao/android/account/util/WechatManager;->mAgreeProtocolIds:Ljava/util/List;

    .line 100
    iput-object p6, p0, Lcn/codemao/android/account/util/WechatManager;->mSuccessResultListener:Lcn/codemao/android/account/listener/NetSuccessResultListener;

    .line 101
    iput-object p7, p0, Lcn/codemao/android/account/util/WechatManager;->mFailResultListener:Lcn/codemao/android/account/listener/NetFailResultListener;

    .line 102
    iput-boolean p1, p0, Lcn/codemao/android/account/util/WechatManager;->checkBind:Z

    .line 103
    iput-object p3, p0, Lcn/codemao/android/account/util/WechatManager;->mAuthListener:Lcn/codemao/android/account/listener/AuthListener;

    .line 104
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getWechatAppId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_49

    .line 106
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getWechatAppId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object p1

    iput-object p1, p0, Lcn/codemao/android/account/util/WechatManager;->mIWXAPI:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    .line 108
    invoke-direct {p0}, Lcn/codemao/android/account/util/WechatManager;->isWechatInstalled()Z

    move-result p1

    if-nez p1, :cond_36

    const-string/jumbo p1, "微信未安装"

    const-string p2, "800034"

    if-eqz p7, :cond_30

    .line 110
    invoke-interface {p7, p2, p1}, Lcn/codemao/android/account/listener/NetFailResultListener;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    :cond_30
    if-eqz p3, :cond_35

    .line 112
    invoke-interface {p3, p2, p1}, Lcn/codemao/android/account/listener/AuthListener;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    :cond_35
    return-void

    .line 116
    :cond_36
    new-instance p1, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Req;

    invoke-direct {p1}, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Req;-><init>()V

    const-string p2, "snsapi_userinfo"

    .line 117
    iput-object p2, p1, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Req;->scope:Ljava/lang/String;

    const-string p2, "none"

    .line 118
    iput-object p2, p1, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Req;->state:Ljava/lang/String;

    .line 119
    iget-object p2, p0, Lcn/codemao/android/account/util/WechatManager;->mIWXAPI:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {p2, p1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z

    return-void

    .line 105
    :cond_49
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Please call setWeChatAppKey to init!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
