.class public Lcom/ainirobot/oauth/presenter/AuthPresenter;
.super Ljava/lang/Object;
.source "AuthPresenter.java"


# instance fields
.field private final mAppid:Ljava/lang/String;

.field private final mRetrofitHelper:Lcom/ainirobot/oauth/connect/RetrofitHelper;

.field private mTokenGeter:Lcom/ainirobot/coreservice/aidl/ITokenGeter;

.field private mView:Lcom/ainirobot/oauth/contract/AuthContract$View;


# direct methods
.method public constructor <init>(Lcom/ainirobot/oauth/AuthActivity;)V
    .registers 4

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/ainirobot/oauth/presenter/AuthPresenter;->mView:Lcom/ainirobot/oauth/contract/AuthContract$View;

    .line 42
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "appid"

    .line 43
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ainirobot/oauth/presenter/AuthPresenter;->mAppid:Ljava/lang/String;

    const-string v0, "can_use_account"

    const/4 v1, 0x0

    .line 44
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 45
    iget-object v0, p0, Lcom/ainirobot/oauth/presenter/AuthPresenter;->mView:Lcom/ainirobot/oauth/contract/AuthContract$View;

    invoke-interface {v0, p1}, Lcom/ainirobot/oauth/contract/AuthContract$View;->setAccountView(Z)V

    .line 46
    new-instance p1, Lcom/ainirobot/oauth/connect/RetrofitHelper;

    invoke-direct {p1}, Lcom/ainirobot/oauth/connect/RetrofitHelper;-><init>()V

    iput-object p1, p0, Lcom/ainirobot/oauth/presenter/AuthPresenter;->mRetrofitHelper:Lcom/ainirobot/oauth/connect/RetrofitHelper;

    return-void
.end method

.method static synthetic access$002(Lcom/ainirobot/oauth/presenter/AuthPresenter;Lcom/ainirobot/coreservice/aidl/ITokenGeter;)Lcom/ainirobot/coreservice/aidl/ITokenGeter;
    .registers 2

    .line 34
    iput-object p1, p0, Lcom/ainirobot/oauth/presenter/AuthPresenter;->mTokenGeter:Lcom/ainirobot/coreservice/aidl/ITokenGeter;

    return-object p1
.end method

.method static synthetic access$100(Lcom/ainirobot/oauth/presenter/AuthPresenter;Lcom/ainirobot/oauth/connect/ProtocolBean;)Z
    .registers 2

    .line 34
    invoke-direct {p0, p1}, Lcom/ainirobot/oauth/presenter/AuthPresenter;->checkDataIsValidate(Lcom/ainirobot/oauth/connect/ProtocolBean;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/ainirobot/oauth/presenter/AuthPresenter;)Lcom/ainirobot/oauth/contract/AuthContract$View;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/ainirobot/oauth/presenter/AuthPresenter;->mView:Lcom/ainirobot/oauth/contract/AuthContract$View;

    return-object p0
.end method

.method private checkDataIsValidate(Lcom/ainirobot/oauth/connect/ProtocolBean;)Z
    .registers 3

    if-eqz p1, :cond_10

    .line 124
    invoke-virtual {p1}, Lcom/ainirobot/oauth/connect/ProtocolBean;->getRet()I

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p1}, Lcom/ainirobot/oauth/connect/ProtocolBean;->getData()Lcom/ainirobot/oauth/connect/ProtocolBean$DataBean;

    move-result-object p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method

.method private getFiledMsg(Ljava/lang/String;I)Ljava/lang/String;
    .registers 8

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ret"

    .line 106
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "stime"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object p1, p0, Lcom/ainirobot/oauth/presenter/AuthPresenter;->mView:Lcom/ainirobot/oauth/contract/AuthContract$View;

    invoke-interface {p1}, Lcom/ainirobot/oauth/contract/AuthContract$View;->getCcontext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "msg"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getToken()Ljava/lang/String;
    .registers 2

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/ainirobot/oauth/presenter/AuthPresenter;->mTokenGeter:Lcom/ainirobot/coreservice/aidl/ITokenGeter;

    invoke-interface {v0}, Lcom/ainirobot/coreservice/aidl/ITokenGeter;->getToken()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_c

    :catch_7
    move-exception v0

    .line 118
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method


# virtual methods
.method public doLogin()V
    .registers 6

    .line 66
    iget-object v0, p0, Lcom/ainirobot/oauth/presenter/AuthPresenter;->mTokenGeter:Lcom/ainirobot/coreservice/aidl/ITokenGeter;

    const/4 v1, 0x0

    if-nez v0, :cond_13

    .line 67
    iget-object v0, p0, Lcom/ainirobot/oauth/presenter/AuthPresenter;->mView:Lcom/ainirobot/oauth/contract/AuthContract$View;

    sget v2, Lcom/ainirobot/oauth/R$string;->error_serivce_disconnectd:I

    const-string v3, "100201"

    invoke-direct {p0, v3, v2}, Lcom/ainirobot/oauth/presenter/AuthPresenter;->getFiledMsg(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/ainirobot/oauth/contract/AuthContract$View;->onFailed(Ljava/lang/String;Z)V

    return-void

    .line 70
    :cond_13
    invoke-direct {p0}, Lcom/ainirobot/oauth/presenter/AuthPresenter;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 72
    iget-object v0, p0, Lcom/ainirobot/oauth/presenter/AuthPresenter;->mView:Lcom/ainirobot/oauth/contract/AuthContract$View;

    sget v2, Lcom/ainirobot/oauth/R$string;->error_token_invalid:I

    const-string v3, "100202"

    invoke-direct {p0, v3, v2}, Lcom/ainirobot/oauth/presenter/AuthPresenter;->getFiledMsg(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/ainirobot/oauth/contract/AuthContract$View;->onFailed(Ljava/lang/String;Z)V

    return-void

    .line 75
    :cond_2b
    iget-object v1, p0, Lcom/ainirobot/oauth/presenter/AuthPresenter;->mView:Lcom/ainirobot/oauth/contract/AuthContract$View;

    invoke-interface {v1}, Lcom/ainirobot/oauth/contract/AuthContract$View;->showLoading()V

    .line 76
    iget-object v1, p0, Lcom/ainirobot/oauth/presenter/AuthPresenter;->mRetrofitHelper:Lcom/ainirobot/oauth/connect/RetrofitHelper;

    iget-object v2, p0, Lcom/ainirobot/oauth/presenter/AuthPresenter;->mAppid:Ljava/lang/String;

    invoke-static {}, Lcom/ainirobot/oauth/utils/AndroidUtil;->getSn()Ljava/lang/String;

    move-result-object v3

    const-string v4, "privateinfo"

    invoke-virtual {v1, v2, v4, v3, v0}, Lcom/ainirobot/oauth/connect/RetrofitHelper;->fetchAuthCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 77
    new-instance v1, Lcom/ainirobot/oauth/presenter/AuthPresenter$2;

    invoke-direct {v1, p0}, Lcom/ainirobot/oauth/presenter/AuthPresenter$2;-><init>(Lcom/ainirobot/oauth/presenter/AuthPresenter;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public doSelfLoginNow()V
    .registers 4

    .line 101
    iget-object v0, p0, Lcom/ainirobot/oauth/presenter/AuthPresenter;->mView:Lcom/ainirobot/oauth/contract/AuthContract$View;

    sget v1, Lcom/ainirobot/oauth/R$string;->error_self_login:I

    const-string v2, "100200"

    invoke-direct {p0, v2, v1}, Lcom/ainirobot/oauth/presenter/AuthPresenter;->getFiledMsg(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/ainirobot/oauth/contract/AuthContract$View;->onFailed(Ljava/lang/String;Z)V

    return-void
.end method

.method public getConnection()Landroid/content/ServiceConnection;
    .registers 2

    .line 51
    new-instance v0, Lcom/ainirobot/oauth/presenter/AuthPresenter$1;

    invoke-direct {v0, p0}, Lcom/ainirobot/oauth/presenter/AuthPresenter$1;-><init>(Lcom/ainirobot/oauth/presenter/AuthPresenter;)V

    return-object v0
.end method
