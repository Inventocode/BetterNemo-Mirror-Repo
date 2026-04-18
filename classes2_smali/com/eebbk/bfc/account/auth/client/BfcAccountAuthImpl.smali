.class Lcom/eebbk/bfc/account/auth/client/BfcAccountAuthImpl;
.super Ljava/lang/Object;
.source "BfcAccountAuthImpl.java"

# interfaces
.implements Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eebbk/bfc/account/auth/client/BfcAccountAuthImpl$CallBackReceiver;
    }
.end annotation


# instance fields
.field private mAidlManager:Lcom/eebbk/bfc/account/auth/client/AidlManager;

.field private mCallBack:Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth$CallBack;

.field private mCallBackReceiver:Lcom/eebbk/bfc/account/auth/client/BfcAccountAuthImpl$CallBackReceiver;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/eebbk/bfc/account/auth/client/Settings;)V
    .registers 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lcom/eebbk/bfc/account/auth/client/BfcAccountAuthImpl;->mCallBackReceiver:Lcom/eebbk/bfc/account/auth/client/BfcAccountAuthImpl$CallBackReceiver;

    .line 21
    invoke-virtual {p2}, Lcom/eebbk/bfc/account/auth/client/Settings;->isDebug()Z

    move-result p1

    invoke-static {p1}, Lcom/eebbk/bfc/account/auth/client/L;->setDebug(Z)V

    .line 22
    new-instance p1, Lcom/eebbk/bfc/account/auth/client/AidlManager;

    invoke-direct {p1, p2}, Lcom/eebbk/bfc/account/auth/client/AidlManager;-><init>(Lcom/eebbk/bfc/account/auth/client/Settings;)V

    iput-object p1, p0, Lcom/eebbk/bfc/account/auth/client/BfcAccountAuthImpl;->mAidlManager:Lcom/eebbk/bfc/account/auth/client/AidlManager;

    return-void
.end method

.method static synthetic access$000(Lcom/eebbk/bfc/account/auth/client/BfcAccountAuthImpl;)Lcom/eebbk/bfc/account/auth/client/AidlManager;
    .registers 1

    .line 13
    iget-object p0, p0, Lcom/eebbk/bfc/account/auth/client/BfcAccountAuthImpl;->mAidlManager:Lcom/eebbk/bfc/account/auth/client/AidlManager;

    return-object p0
.end method

.method public static isConnectedNetwork(Landroid/content/Context;)Z
    .registers 2

    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "connectivity"

    .line 100
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_1c

    .line 103
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_1c

    .line 104
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 v0, 0x1

    :cond_1c
    return v0
.end method


# virtual methods
.method public bindService(Landroid/content/Context;Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth$CallBack;Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth$ConnectionListener;)Z
    .registers 7

    const-string v0, "context == null"

    .line 27
    invoke-static {p1, v0}, Lcom/eebbk/bfc/account/auth/client/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    iput-object p2, p0, Lcom/eebbk/bfc/account/auth/client/BfcAccountAuthImpl;->mCallBack:Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth$CallBack;

    .line 29
    iget-object v0, p0, Lcom/eebbk/bfc/account/auth/client/BfcAccountAuthImpl;->mAidlManager:Lcom/eebbk/bfc/account/auth/client/AidlManager;

    invoke-virtual {v0, p3}, Lcom/eebbk/bfc/account/auth/client/AidlManager;->setConnectionListener(Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth$ConnectionListener;)V

    .line 30
    iget-object p3, p0, Lcom/eebbk/bfc/account/auth/client/BfcAccountAuthImpl;->mAidlManager:Lcom/eebbk/bfc/account/auth/client/AidlManager;

    invoke-virtual {p3, p2}, Lcom/eebbk/bfc/account/auth/client/AidlManager;->setCallBack(Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth$CallBack;)V

    .line 31
    iget-object p3, p0, Lcom/eebbk/bfc/account/auth/client/BfcAccountAuthImpl;->mAidlManager:Lcom/eebbk/bfc/account/auth/client/AidlManager;

    const-string v0, "com.bbk.personal"

    invoke-virtual {p3, p1, v0}, Lcom/eebbk/bfc/account/auth/client/AidlManager;->bindService(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4d

    .line 32
    iget-object v0, p0, Lcom/eebbk/bfc/account/auth/client/BfcAccountAuthImpl;->mCallBackReceiver:Lcom/eebbk/bfc/account/auth/client/BfcAccountAuthImpl$CallBackReceiver;

    if-nez v0, :cond_4d

    .line 33
    new-instance v0, Lcom/eebbk/bfc/account/auth/client/BfcAccountAuthImpl$CallBackReceiver;

    invoke-direct {v0}, Lcom/eebbk/bfc/account/auth/client/BfcAccountAuthImpl$CallBackReceiver;-><init>()V

    iput-object v0, p0, Lcom/eebbk/bfc/account/auth/client/BfcAccountAuthImpl;->mCallBackReceiver:Lcom/eebbk/bfc/account/auth/client/BfcAccountAuthImpl$CallBackReceiver;

    .line 34
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".bfc.account.auth.callback.action"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 36
    iget-object v1, p0, Lcom/eebbk/bfc/account/auth/client/BfcAccountAuthImpl;->mCallBackReceiver:Lcom/eebbk/bfc/account/auth/client/BfcAccountAuthImpl$CallBackReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 37
    iget-object p1, p0, Lcom/eebbk/bfc/account/auth/client/BfcAccountAuthImpl;->mCallBackReceiver:Lcom/eebbk/bfc/account/auth/client/BfcAccountAuthImpl$CallBackReceiver;

    invoke-virtual {p1, p2}, Lcom/eebbk/bfc/account/auth/client/BfcAccountAuthImpl$CallBackReceiver;->setCallBack(Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth$CallBack;)V

    :cond_4d
    return p3
.end method

.method public enqueue(Landroid/content/Context;Lcom/eebbk/bfc/account/auth/client/request/IRequest;)V
    .registers 6

    const-string v0, "context == null"

    .line 58
    invoke-static {p1, v0}, Lcom/eebbk/bfc/account/auth/client/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "request == null"

    .line 59
    invoke-static {p2, v0}, Lcom/eebbk/bfc/account/auth/client/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    invoke-virtual {p0, p1}, Lcom/eebbk/bfc/account/auth/client/BfcAccountAuthImpl;->isSupport(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_29

    .line 61
    iget-object v0, p0, Lcom/eebbk/bfc/account/auth/client/BfcAccountAuthImpl;->mCallBack:Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth$CallBack;

    if-eqz v0, :cond_28

    .line 62
    invoke-interface {p2}, Lcom/eebbk/bfc/account/auth/client/request/IRequest;->getType()I

    move-result v2

    invoke-interface {p2, p1, v1}, Lcom/eebbk/bfc/account/auth/client/request/IRequest;->getParameter(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "5000"

    const-string v1, "当前个人中心版本不支持"

    .line 63
    invoke-static {p2, v1}, Lcom/eebbk/bfc/account/auth/client/ErrorCode;->createErrorResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 62
    invoke-interface {v0, v2, p1, p2}, Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth$CallBack;->onResponse(ILjava/lang/String;Ljava/lang/String;)V

    :cond_28
    return-void

    .line 67
    :cond_29
    invoke-static {p1}, Lcom/eebbk/bfc/account/auth/client/BfcAccountAuthImpl;->isConnectedNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_47

    .line 68
    iget-object v0, p0, Lcom/eebbk/bfc/account/auth/client/BfcAccountAuthImpl;->mCallBack:Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth$CallBack;

    if-eqz v0, :cond_46

    .line 69
    invoke-interface {p2}, Lcom/eebbk/bfc/account/auth/client/request/IRequest;->getType()I

    move-result v2

    invoke-interface {p2, p1, v1}, Lcom/eebbk/bfc/account/auth/client/request/IRequest;->getParameter(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "5001"

    const-string v1, "No network"

    .line 70
    invoke-static {p2, v1}, Lcom/eebbk/bfc/account/auth/client/ErrorCode;->createErrorResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 69
    invoke-interface {v0, v2, p1, p2}, Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth$CallBack;->onResponse(ILjava/lang/String;Ljava/lang/String;)V

    :cond_46
    return-void

    .line 74
    :cond_47
    new-instance v0, Lcom/eebbk/bfc/account/auth/client/BfcAccountAuthImpl$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/eebbk/bfc/account/auth/client/BfcAccountAuthImpl$1;-><init>(Lcom/eebbk/bfc/account/auth/client/BfcAccountAuthImpl;Landroid/content/Context;Lcom/eebbk/bfc/account/auth/client/request/IRequest;)V

    invoke-static {v0}, Lcom/eebbk/bfc/account/auth/client/ExecutorsUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isSupport(Landroid/content/Context;)Z
    .registers 5

    const-string v0, "com.bbk.personal"

    .line 89
    invoke-static {p1, v0}, Lcom/eebbk/bfc/account/auth/client/Utils;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 92
    :cond_a
    invoke-static {p1, v0}, Lcom/eebbk/bfc/account/auth/client/Utils;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    const v0, 0x3d0900

    if-ge p1, v0, :cond_14

    return v2

    :cond_14
    const/4 p1, 0x1

    return p1
.end method

.method public unBindService(Landroid/content/Context;)V
    .registers 4

    const-string v0, "context == null"

    .line 44
    invoke-static {p1, v0}, Lcom/eebbk/bfc/account/auth/client/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lcom/eebbk/bfc/account/auth/client/BfcAccountAuthImpl;->mAidlManager:Lcom/eebbk/bfc/account/auth/client/AidlManager;

    invoke-virtual {v0, p1}, Lcom/eebbk/bfc/account/auth/client/AidlManager;->unBindService(Landroid/content/Context;)V

    .line 46
    iget-object v0, p0, Lcom/eebbk/bfc/account/auth/client/BfcAccountAuthImpl;->mAidlManager:Lcom/eebbk/bfc/account/auth/client/AidlManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/eebbk/bfc/account/auth/client/AidlManager;->setConnectionListener(Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth$ConnectionListener;)V

    .line 47
    iget-object v0, p0, Lcom/eebbk/bfc/account/auth/client/BfcAccountAuthImpl;->mAidlManager:Lcom/eebbk/bfc/account/auth/client/AidlManager;

    invoke-virtual {v0, v1}, Lcom/eebbk/bfc/account/auth/client/AidlManager;->setCallBack(Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth$CallBack;)V

    .line 48
    iput-object v1, p0, Lcom/eebbk/bfc/account/auth/client/BfcAccountAuthImpl;->mCallBack:Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth$CallBack;

    .line 49
    iget-object v0, p0, Lcom/eebbk/bfc/account/auth/client/BfcAccountAuthImpl;->mCallBackReceiver:Lcom/eebbk/bfc/account/auth/client/BfcAccountAuthImpl$CallBackReceiver;

    if-eqz v0, :cond_25

    .line 50
    invoke-virtual {v0, v1}, Lcom/eebbk/bfc/account/auth/client/BfcAccountAuthImpl$CallBackReceiver;->setCallBack(Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth$CallBack;)V

    .line 51
    iget-object v0, p0, Lcom/eebbk/bfc/account/auth/client/BfcAccountAuthImpl;->mCallBackReceiver:Lcom/eebbk/bfc/account/auth/client/BfcAccountAuthImpl$CallBackReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 52
    iput-object v1, p0, Lcom/eebbk/bfc/account/auth/client/BfcAccountAuthImpl;->mCallBackReceiver:Lcom/eebbk/bfc/account/auth/client/BfcAccountAuthImpl$CallBackReceiver;

    :cond_25
    return-void
.end method
