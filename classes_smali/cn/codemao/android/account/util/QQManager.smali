.class public Lcn/codemao/android/account/util/QQManager;
.super Ljava/lang/Object;
.source "QQManager.java"


# static fields
.field private static volatile mInstance:Lcn/codemao/android/account/util/QQManager;


# instance fields
.field private checkBind:Z

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

.field private mIUiListener:Lcom/tencent/tauth/IUiListener;

.field private mSuccessResultListener:Lcn/codemao/android/account/listener/NetSuccessResultListener;

.field private mTencent:Lcom/tencent/tauth/Tencent;

.field private volatile netResultListener:Lcn/codemao/android/account/listener/NetResultListener;

.field private type:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Lcn/codemao/android/account/util/QQManager$1;

    invoke-direct {v0, p0}, Lcn/codemao/android/account/util/QQManager$1;-><init>(Lcn/codemao/android/account/util/QQManager;)V

    iput-object v0, p0, Lcn/codemao/android/account/util/QQManager;->mIUiListener:Lcom/tencent/tauth/IUiListener;

    return-void
.end method

.method static synthetic access$000(Lcn/codemao/android/account/util/QQManager;)Lcn/codemao/android/account/listener/NetSuccessResultListener;
    .registers 1

    .line 27
    iget-object p0, p0, Lcn/codemao/android/account/util/QQManager;->mSuccessResultListener:Lcn/codemao/android/account/listener/NetSuccessResultListener;

    return-object p0
.end method

.method static synthetic access$100(Lcn/codemao/android/account/util/QQManager;)Lcn/codemao/android/account/listener/NetFailResultListener;
    .registers 1

    .line 27
    iget-object p0, p0, Lcn/codemao/android/account/util/QQManager;->mFailResultListener:Lcn/codemao/android/account/listener/NetFailResultListener;

    return-object p0
.end method

.method static synthetic access$200(Lcn/codemao/android/account/util/QQManager;)I
    .registers 1

    .line 27
    iget p0, p0, Lcn/codemao/android/account/util/QQManager;->type:I

    return p0
.end method

.method static synthetic access$300(Lcn/codemao/android/account/util/QQManager;)Ljava/util/List;
    .registers 1

    .line 27
    iget-object p0, p0, Lcn/codemao/android/account/util/QQManager;->mAgreeProtocolIds:Ljava/util/List;

    return-object p0
.end method

.method public static getInstance()Lcn/codemao/android/account/util/QQManager;
    .registers 2

    .line 41
    sget-object v0, Lcn/codemao/android/account/util/QQManager;->mInstance:Lcn/codemao/android/account/util/QQManager;

    if-nez v0, :cond_17

    .line 42
    const-class v0, Lcn/codemao/android/account/util/QQManager;

    monitor-enter v0

    .line 43
    :try_start_7
    sget-object v1, Lcn/codemao/android/account/util/QQManager;->mInstance:Lcn/codemao/android/account/util/QQManager;

    if-nez v1, :cond_12

    new-instance v1, Lcn/codemao/android/account/util/QQManager;

    invoke-direct {v1}, Lcn/codemao/android/account/util/QQManager;-><init>()V

    sput-object v1, Lcn/codemao/android/account/util/QQManager;->mInstance:Lcn/codemao/android/account/util/QQManager;

    .line 44
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 46
    :cond_17
    :goto_17
    sget-object v0, Lcn/codemao/android/account/util/QQManager;->mInstance:Lcn/codemao/android/account/util/QQManager;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .registers 2

    const/4 v0, 0x0

    .line 145
    iput-object v0, p0, Lcn/codemao/android/account/util/QQManager;->mSuccessResultListener:Lcn/codemao/android/account/listener/NetSuccessResultListener;

    .line 146
    iput-object v0, p0, Lcn/codemao/android/account/util/QQManager;->mFailResultListener:Lcn/codemao/android/account/listener/NetFailResultListener;

    .line 147
    iput-object v0, p0, Lcn/codemao/android/account/util/QQManager;->mAuthListener:Lcn/codemao/android/account/listener/AuthListener;

    return-void
.end method

.method public login(ZLcn/codemao/android/account/listener/AuthListener;Ljava/util/List;Landroid/app/Activity;ILcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcn/codemao/android/account/listener/AuthListener;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/Activity;",
            "I",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    .line 51
    iput p5, p0, Lcn/codemao/android/account/util/QQManager;->type:I

    .line 52
    iput-boolean p1, p0, Lcn/codemao/android/account/util/QQManager;->checkBind:Z

    .line 53
    iput-object p3, p0, Lcn/codemao/android/account/util/QQManager;->mAgreeProtocolIds:Ljava/util/List;

    .line 54
    iput-object p6, p0, Lcn/codemao/android/account/util/QQManager;->mSuccessResultListener:Lcn/codemao/android/account/listener/NetSuccessResultListener;

    .line 55
    iput-object p7, p0, Lcn/codemao/android/account/util/QQManager;->mFailResultListener:Lcn/codemao/android/account/listener/NetFailResultListener;

    .line 57
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getQqAppId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_42

    .line 59
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getQqAppId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p4}, Lcom/tencent/tauth/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;

    move-result-object p1

    iput-object p1, p0, Lcn/codemao/android/account/util/QQManager;->mTencent:Lcom/tencent/tauth/Tencent;

    .line 60
    invoke-virtual {p1, p4}, Lcom/tencent/tauth/Tencent;->isQQInstalled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_30

    .line 61
    iget-object p1, p0, Lcn/codemao/android/account/util/QQManager;->mFailResultListener:Lcn/codemao/android/account/listener/NetFailResultListener;

    if-eqz p1, :cond_2f

    const-string p2, "800035"

    const-string p3, "QQ未安装"

    .line 62
    invoke-interface {p1, p2, p3}, Lcn/codemao/android/account/listener/NetFailResultListener;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    return-void

    .line 68
    :cond_30
    iget-object p1, p0, Lcn/codemao/android/account/util/QQManager;->mTencent:Lcom/tencent/tauth/Tencent;

    invoke-virtual {p1}, Lcom/tencent/tauth/Tencent;->isSessionValid()Z

    move-result p1

    if-nez p1, :cond_41

    .line 69
    iget-object p1, p0, Lcn/codemao/android/account/util/QQManager;->mTencent:Lcom/tencent/tauth/Tencent;

    iget-object p2, p0, Lcn/codemao/android/account/util/QQManager;->mIUiListener:Lcom/tencent/tauth/IUiListener;

    const-string p3, "all"

    invoke-virtual {p1, p4, p3, p2}, Lcom/tencent/tauth/Tencent;->login(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I

    :cond_41
    return-void

    .line 58
    :cond_42
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Please call setQQAppKey to init!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public logout(Landroid/content/Context;)V
    .registers 3

    .line 73
    iget-object v0, p0, Lcn/codemao/android/account/util/QQManager;->mTencent:Lcom/tencent/tauth/Tencent;

    if-nez v0, :cond_5

    return-void

    .line 74
    :cond_5
    invoke-virtual {v0, p1}, Lcom/tencent/tauth/Tencent;->logout(Landroid/content/Context;)V

    return-void
.end method

.method public setIUiListener(IILandroid/content/Intent;)V
    .registers 5

    .line 78
    iget-object v0, p0, Lcn/codemao/android/account/util/QQManager;->mIUiListener:Lcom/tencent/tauth/IUiListener;

    invoke-static {p1, p2, p3, v0}, Lcom/tencent/tauth/Tencent;->onActivityResultData(IILandroid/content/Intent;Lcom/tencent/tauth/IUiListener;)Z

    return-void
.end method
