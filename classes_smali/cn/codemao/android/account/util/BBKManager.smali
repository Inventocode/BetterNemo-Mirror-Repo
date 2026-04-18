.class public Lcn/codemao/android/account/util/BBKManager;
.super Ljava/lang/Object;
.source "BBKManager.java"


# static fields
.field private static volatile mInstance:Lcn/codemao/android/account/util/BBKManager;


# instance fields
.field private bfcAccountAuth:Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth;

.field private final callBack:Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth$CallBack;

.field private isBindService:Z

.field private mFailResultListener:Lcn/codemao/android/account/listener/NetFailResultListener;

.field private mSuccessResultListener:Lcn/codemao/android/account/listener/NetSuccessResultListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcn/codemao/android/account/util/BBKManager;->isBindService:Z

    .line 90
    new-instance v0, Lcn/codemao/android/account/util/BBKManager$2;

    invoke-direct {v0, p0}, Lcn/codemao/android/account/util/BBKManager$2;-><init>(Lcn/codemao/android/account/util/BBKManager;)V

    iput-object v0, p0, Lcn/codemao/android/account/util/BBKManager;->callBack:Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth$CallBack;

    return-void
.end method

.method static synthetic access$002(Lcn/codemao/android/account/util/BBKManager;Z)Z
    .registers 2

    .line 39
    iput-boolean p1, p0, Lcn/codemao/android/account/util/BBKManager;->isBindService:Z

    return p1
.end method

.method static synthetic access$100(Lcn/codemao/android/account/util/BBKManager;)Lcn/codemao/android/account/listener/NetSuccessResultListener;
    .registers 1

    .line 39
    iget-object p0, p0, Lcn/codemao/android/account/util/BBKManager;->mSuccessResultListener:Lcn/codemao/android/account/listener/NetSuccessResultListener;

    return-object p0
.end method

.method static synthetic access$200(Lcn/codemao/android/account/util/BBKManager;)Lcn/codemao/android/account/listener/NetFailResultListener;
    .registers 1

    .line 39
    iget-object p0, p0, Lcn/codemao/android/account/util/BBKManager;->mFailResultListener:Lcn/codemao/android/account/listener/NetFailResultListener;

    return-object p0
.end method

.method public static getInstance()Lcn/codemao/android/account/util/BBKManager;
    .registers 2

    .line 48
    sget-object v0, Lcn/codemao/android/account/util/BBKManager;->mInstance:Lcn/codemao/android/account/util/BBKManager;

    if-nez v0, :cond_17

    .line 49
    const-class v0, Lcn/codemao/android/account/util/BBKManager;

    monitor-enter v0

    .line 50
    :try_start_7
    sget-object v1, Lcn/codemao/android/account/util/BBKManager;->mInstance:Lcn/codemao/android/account/util/BBKManager;

    if-nez v1, :cond_12

    new-instance v1, Lcn/codemao/android/account/util/BBKManager;

    invoke-direct {v1}, Lcn/codemao/android/account/util/BBKManager;-><init>()V

    sput-object v1, Lcn/codemao/android/account/util/BBKManager;->mInstance:Lcn/codemao/android/account/util/BBKManager;

    .line 51
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 53
    :cond_17
    :goto_17
    sget-object v0, Lcn/codemao/android/account/util/BBKManager;->mInstance:Lcn/codemao/android/account/util/BBKManager;

    return-object v0
.end method


# virtual methods
.method public bindService(Landroid/app/Activity;)V
    .registers 5

    .line 57
    new-instance v0, Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth$Builder;

    invoke-direct {v0}, Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth$Builder;->setDebug(Z)Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth$Builder;->build(Landroid/content/Context;)Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/account/util/BBKManager;->bfcAccountAuth:Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth;

    .line 58
    iget-object v1, p0, Lcn/codemao/android/account/util/BBKManager;->callBack:Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth$CallBack;

    new-instance v2, Lcn/codemao/android/account/util/BBKManager$1;

    invoke-direct {v2, p0}, Lcn/codemao/android/account/util/BBKManager$1;-><init>(Lcn/codemao/android/account/util/BBKManager;)V

    invoke-interface {v0, p1, v1, v2}, Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth;->bindService(Landroid/content/Context;Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth$CallBack;Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth$ConnectionListener;)Z

    return-void
.end method

.method public clear(Landroid/app/Activity;)V
    .registers 3

    const/4 v0, 0x0

    .line 129
    iput-object v0, p0, Lcn/codemao/android/account/util/BBKManager;->mSuccessResultListener:Lcn/codemao/android/account/listener/NetSuccessResultListener;

    .line 130
    iput-object v0, p0, Lcn/codemao/android/account/util/BBKManager;->mFailResultListener:Lcn/codemao/android/account/listener/NetFailResultListener;

    .line 132
    :try_start_5
    iget-object v0, p0, Lcn/codemao/android/account/util/BBKManager;->bfcAccountAuth:Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth;

    invoke-interface {v0, p1}, Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth;->unBindService(Landroid/content/Context;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_f

    :catch_b
    move-exception p1

    .line 134
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_f
    return-void
.end method

.method public login(Landroid/app/Activity;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 5

    .line 72
    iput-object p2, p0, Lcn/codemao/android/account/util/BBKManager;->mSuccessResultListener:Lcn/codemao/android/account/listener/NetSuccessResultListener;

    .line 73
    iput-object p3, p0, Lcn/codemao/android/account/util/BBKManager;->mFailResultListener:Lcn/codemao/android/account/listener/NetFailResultListener;

    .line 74
    iget-boolean p2, p0, Lcn/codemao/android/account/util/BBKManager;->isBindService:Z

    if-nez p2, :cond_13

    if-eqz p3, :cond_12

    const-string p1, "800037"

    const-string/jumbo p2, "未绑定服务"

    .line 76
    invoke-interface {p3, p1, p2}, Lcn/codemao/android/account/listener/NetFailResultListener;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    return-void

    .line 80
    :cond_13
    iget-object p2, p0, Lcn/codemao/android/account/util/BBKManager;->bfcAccountAuth:Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth;

    new-instance p3, Lcom/eebbk/bfc/account/auth/client/request/AuthorizeRequest$Builder;

    invoke-direct {p3}, Lcom/eebbk/bfc/account/auth/client/request/AuthorizeRequest$Builder;-><init>()V

    .line 81
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getBbkClientId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/eebbk/bfc/account/auth/client/request/AbstractRequest$Builder;->setClientId(Ljava/lang/String;)Lcom/eebbk/bfc/account/auth/client/request/AbstractRequest$Builder;

    move-result-object p3

    check-cast p3, Lcom/eebbk/bfc/account/auth/client/request/AuthorizeRequest$Builder;

    .line 82
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getBbkClientKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/eebbk/bfc/account/auth/client/request/AbstractRequest$Builder;->setClientKey(Ljava/lang/String;)Lcom/eebbk/bfc/account/auth/client/request/AbstractRequest$Builder;

    move-result-object p3

    check-cast p3, Lcom/eebbk/bfc/account/auth/client/request/AuthorizeRequest$Builder;

    .line 83
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getBbkClientArgument()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/eebbk/bfc/account/auth/client/request/AbstractRequest$Builder;->setClientKeyArgument(Ljava/lang/String;)Lcom/eebbk/bfc/account/auth/client/request/AbstractRequest$Builder;

    move-result-object p3

    check-cast p3, Lcom/eebbk/bfc/account/auth/client/request/AuthorizeRequest$Builder;

    const-string v0, "USER_INFO_GRADE"

    .line 84
    invoke-virtual {p3, v0}, Lcom/eebbk/bfc/account/auth/client/request/AuthorizeRequest$Builder;->setScope(Ljava/lang/String;)Lcom/eebbk/bfc/account/auth/client/request/AuthorizeRequest$Builder;

    move-result-object p3

    .line 85
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getPID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/eebbk/bfc/account/auth/client/request/AuthorizeRequest$Builder;->setState(Ljava/lang/String;)Lcom/eebbk/bfc/account/auth/client/request/AuthorizeRequest$Builder;

    move-result-object p3

    .line 86
    invoke-virtual {p3, p1}, Lcom/eebbk/bfc/account/auth/client/request/AuthorizeRequest$Builder;->build(Landroid/content/Context;)Lcom/eebbk/bfc/account/auth/client/request/AuthorizeRequest;

    move-result-object p3

    .line 80
    invoke-interface {p2, p1, p3}, Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth;->enqueue(Landroid/content/Context;Lcom/eebbk/bfc/account/auth/client/request/IRequest;)V

    return-void
.end method
