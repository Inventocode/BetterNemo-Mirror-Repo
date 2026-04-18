.class final Lcom/eebbk/bfc/account/auth/client/AidlManager;
.super Ljava/lang/Object;
.source "AidlManager.java"


# instance fields
.field private final conn:Landroid/content/ServiceConnection;

.field private mCallBack:Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth$CallBack;

.field private mListener:Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth$ConnectionListener;

.field private mRemoteService:Lcom/eebbk/bfc/account/auth/client/IAccountAuthAidlInterface;

.field private settingsJson:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/eebbk/bfc/account/auth/client/Settings;)V
    .registers 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Lcom/eebbk/bfc/account/auth/client/AidlManager$1;

    invoke-direct {v0, p0}, Lcom/eebbk/bfc/account/auth/client/AidlManager$1;-><init>(Lcom/eebbk/bfc/account/auth/client/AidlManager;)V

    iput-object v0, p0, Lcom/eebbk/bfc/account/auth/client/AidlManager;->conn:Landroid/content/ServiceConnection;

    .line 22
    invoke-virtual {p1}, Lcom/eebbk/bfc/account/auth/client/Settings;->toJson()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/eebbk/bfc/account/auth/client/AidlManager;->settingsJson:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/eebbk/bfc/account/auth/client/AidlManager;Lcom/eebbk/bfc/account/auth/client/IAccountAuthAidlInterface;)Lcom/eebbk/bfc/account/auth/client/IAccountAuthAidlInterface;
    .registers 2

    .line 12
    iput-object p1, p0, Lcom/eebbk/bfc/account/auth/client/AidlManager;->mRemoteService:Lcom/eebbk/bfc/account/auth/client/IAccountAuthAidlInterface;

    return-object p1
.end method

.method static synthetic access$100(Lcom/eebbk/bfc/account/auth/client/AidlManager;)Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth$ConnectionListener;
    .registers 1

    .line 12
    iget-object p0, p0, Lcom/eebbk/bfc/account/auth/client/AidlManager;->mListener:Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth$ConnectionListener;

    return-object p0
.end method

.method private isConnection()Z
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/eebbk/bfc/account/auth/client/AidlManager;->mRemoteService:Lcom/eebbk/bfc/account/auth/client/IAccountAuthAidlInterface;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method


# virtual methods
.method bindService(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    const-string v0, "context == null"

    .line 34
    invoke-static {p1, v0}, Lcom/eebbk/bfc/account/auth/client/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "appPackageName"

    .line 35
    invoke-static {p2, v0}, Lcom/eebbk/bfc/account/auth/client/Utils;->checkNotNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    :try_start_a
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".bfc.account.auth.service"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    iget-object p2, p0, Lcom/eebbk/bfc/account/auth/client/AidlManager;->conn:Landroid/content/ServiceConnection;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p2, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2a} :catch_2b

    return p1

    :catch_2b
    move-exception p1

    .line 41
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    .line 42
    iput-object p1, p0, Lcom/eebbk/bfc/account/auth/client/AidlManager;->mRemoteService:Lcom/eebbk/bfc/account/auth/client/IAccountAuthAidlInterface;

    const/4 p1, 0x0

    return p1
.end method

.method request(Landroid/content/Context;Lcom/eebbk/bfc/account/auth/client/request/IRequest;)V
    .registers 10

    const-string v0, "request == null"

    .line 60
    invoke-static {p2, v0}, Lcom/eebbk/bfc/account/auth/client/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    invoke-direct {p0}, Lcom/eebbk/bfc/account/auth/client/AidlManager;->isConnection()Z

    move-result v0

    const-string v1, "使用前先绑定服务"

    const-string v2, "5002"

    const/4 v3, 0x0

    if-nez v0, :cond_24

    .line 62
    iget-object v0, p0, Lcom/eebbk/bfc/account/auth/client/AidlManager;->mCallBack:Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth$CallBack;

    if-eqz v0, :cond_23

    .line 63
    invoke-interface {p2}, Lcom/eebbk/bfc/account/auth/client/request/IRequest;->getType()I

    move-result v4

    invoke-interface {p2, p1, v3}, Lcom/eebbk/bfc/account/auth/client/request/IRequest;->getParameter(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v1}, Lcom/eebbk/bfc/account/auth/client/ErrorCode;->createErrorResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v4, p1, p2}, Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth$CallBack;->onResponse(ILjava/lang/String;Ljava/lang/String;)V

    :cond_23
    return-void

    .line 68
    :cond_24
    :try_start_24
    iget-object v0, p0, Lcom/eebbk/bfc/account/auth/client/AidlManager;->mRemoteService:Lcom/eebbk/bfc/account/auth/client/IAccountAuthAidlInterface;

    invoke-interface {p2}, Lcom/eebbk/bfc/account/auth/client/request/IRequest;->getType()I

    move-result v4

    iget-object v5, p0, Lcom/eebbk/bfc/account/auth/client/AidlManager;->settingsJson:Ljava/lang/String;

    invoke-interface {p2, p1, v5}, Lcom/eebbk/bfc/account/auth/client/request/IRequest;->getParameter(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lcom/eebbk/bfc/account/auth/client/IAccountAuthAidlInterface;->request(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "wait"

    .line 69
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_63

    .line 70
    iget-object v4, p0, Lcom/eebbk/bfc/account/auth/client/AidlManager;->mCallBack:Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth$CallBack;

    if-eqz v4, :cond_63

    .line 71
    invoke-interface {p2}, Lcom/eebbk/bfc/account/auth/client/request/IRequest;->getType()I

    move-result v5

    invoke-interface {p2, p1, v3}, Lcom/eebbk/bfc/account/auth/client/request/IRequest;->getParameter(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6, v0}, Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth$CallBack;->onResponse(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_4b} :catch_4c

    goto :goto_63

    :catch_4c
    move-exception v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 76
    iget-object v0, p0, Lcom/eebbk/bfc/account/auth/client/AidlManager;->mCallBack:Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth$CallBack;

    if-eqz v0, :cond_63

    .line 77
    invoke-interface {p2}, Lcom/eebbk/bfc/account/auth/client/request/IRequest;->getType()I

    move-result v4

    invoke-interface {p2, p1, v3}, Lcom/eebbk/bfc/account/auth/client/request/IRequest;->getParameter(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v1}, Lcom/eebbk/bfc/account/auth/client/ErrorCode;->createErrorResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v4, p1, p2}, Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth$CallBack;->onResponse(ILjava/lang/String;Ljava/lang/String;)V

    :cond_63
    :goto_63
    return-void
.end method

.method setCallBack(Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth$CallBack;)V
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/eebbk/bfc/account/auth/client/AidlManager;->mCallBack:Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth$CallBack;

    return-void
.end method

.method setConnectionListener(Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth$ConnectionListener;)V
    .registers 2

    .line 26
    iput-object p1, p0, Lcom/eebbk/bfc/account/auth/client/AidlManager;->mListener:Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth$ConnectionListener;

    return-void
.end method

.method unBindService(Landroid/content/Context;)V
    .registers 3

    if-eqz p1, :cond_14

    .line 48
    iget-object v0, p0, Lcom/eebbk/bfc/account/auth/client/AidlManager;->mRemoteService:Lcom/eebbk/bfc/account/auth/client/IAccountAuthAidlInterface;

    if-nez v0, :cond_7

    goto :goto_14

    .line 52
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/eebbk/bfc/account/auth/client/AidlManager;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_d

    goto :goto_11

    :catch_d
    move-exception p1

    .line 54
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_11
    const/4 p1, 0x0

    .line 56
    iput-object p1, p0, Lcom/eebbk/bfc/account/auth/client/AidlManager;->mRemoteService:Lcom/eebbk/bfc/account/auth/client/IAccountAuthAidlInterface;

    :cond_14
    :goto_14
    return-void
.end method
