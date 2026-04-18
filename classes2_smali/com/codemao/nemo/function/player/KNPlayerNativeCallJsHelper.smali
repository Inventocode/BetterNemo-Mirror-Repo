.class public Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper;
.super Ljava/lang/Object;
.source "KNPlayerNativeCallJsHelper.java"


# instance fields
.field POST_ASYNC_MSG:Ljava/lang/String;

.field POST_SYNC_MSG:Ljava/lang/String;

.field private mWebReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/codemao/toolssdk/dsbridge/DWebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "postMessage"

    .line 28
    iput-object v0, p0, Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper;->POST_SYNC_MSG:Ljava/lang/String;

    const-string v0, "postMessageAsyn"

    .line 30
    iput-object v0, p0, Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper;->POST_ASYNC_MSG:Ljava/lang/String;

    return-void
.end method

.method private checkWebView()Z
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper;->mWebReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private fetchWebView()Lcom/codemao/toolssdk/dsbridge/DWebView;
    .registers 2

    .line 51
    invoke-direct {p0}, Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper;->checkWebView()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper;->mWebReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/toolssdk/dsbridge/DWebView;

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return-object v0
.end method


# virtual methods
.method public destroy()V
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper;->mWebReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_a

    .line 45
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper;->mWebReference:Ljava/lang/ref/WeakReference;

    :cond_a
    return-void
.end method

.method public getScreenShot(Lcom/codemao/toolssdk/cpp/view/WoodWebView;Lcom/codemao/toolssdk/dsbridge/OnReturnValue;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/cpp/view/WoodWebView;",
            "Lcom/codemao/toolssdk/dsbridge/OnReturnValue<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 70
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/MessageOptions;

    const-string v1, "get_screen_shot"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codemao/toolssdk/model/dsbridge/MessageOptions;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    const/4 v4, 0x1

    :try_start_e
    new-array v4, v4, [Lorg/json/JSONObject;

    const/4 v5, 0x0

    .line 73
    new-instance v6, Lorg/json/JSONObject;

    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    aput-object v6, v4, v5

    const-string v0, "application.onMessage"

    .line 74
    new-instance v3, Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper$1;

    invoke-direct {v3, p0, p2}, Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper$1;-><init>(Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper;Lcom/codemao/toolssdk/dsbridge/OnReturnValue;)V

    new-instance v5, Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper$2;

    invoke-direct {v5, p0}, Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper$2;-><init>(Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper;)V

    invoke-virtual {p1, v0, v4, v3, v5}, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;->callDSHandlerWithTimeOut(Ljava/lang/String;[Lorg/json/JSONObject;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_2b} :catch_2c

    goto :goto_44

    :catch_2c
    move-exception p1

    .line 105
    invoke-interface {p2, v2}, Lcom/codemao/toolssdk/dsbridge/OnReturnValue;->onValue(Ljava/lang/Object;)V

    .line 106
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "jscall-exception"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_44
    return-void
.end method

.method public init(Lcom/codemao/toolssdk/dsbridge/DWebView;)V
    .registers 3

    .line 37
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper;->mWebReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public onPhoneShake()V
    .registers 3

    const-string v0, "ON_PHONE_SHAKE"

    const-string v1, ""

    .line 144
    invoke-virtual {p0, v0, v1}, Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public pausePalyer()V
    .registers 3

    const-string v0, "PAUSE_PLAYER"

    const-string v1, ""

    .line 119
    invoke-virtual {p0, v0, v1}, Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public postMsg(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 156
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/Object;ZLcom/codemao/toolssdk/dsbridge/OnReturnValue;)V

    return-void
.end method

.method public postMsg(Ljava/lang/String;Ljava/lang/Object;ZLcom/codemao/toolssdk/dsbridge/OnReturnValue;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Z",
            "Lcom/codemao/toolssdk/dsbridge/OnReturnValue<",
            "TT;>;)V"
        }
    .end annotation

    .line 161
    invoke-direct {p0}, Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper;->fetchWebView()Lcom/codemao/toolssdk/dsbridge/DWebView;

    move-result-object v0

    if-eqz v0, :cond_19

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    if-eqz p3, :cond_14

    .line 164
    iget-object p1, p0, Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper;->POST_SYNC_MSG:Ljava/lang/String;

    goto :goto_16

    :cond_14
    iget-object p1, p0, Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper;->POST_ASYNC_MSG:Ljava/lang/String;

    :goto_16
    invoke-virtual {v0, p1, v1, p4}, Lcom/codemao/toolssdk/dsbridge/DWebView;->callHandler(Ljava/lang/String;[Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/OnReturnValue;)V

    :cond_19
    return-void
.end method

.method public resumePalyer()V
    .registers 3

    const-string v0, "RESUME_PLAYER"

    const-string v1, ""

    .line 124
    invoke-virtual {p0, v0, v1}, Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setAskDialogPosition(Z)V
    .registers 3

    if-eqz p1, :cond_5

    const-string p1, "top"

    goto :goto_7

    :cond_5
    const-string p1, "bottom"

    :goto_7
    const-string v0, "SET_ASK_DIALOG_POSITION"

    .line 140
    invoke-virtual {p0, v0, p1}, Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setPlayerUI(Z)V
    .registers 3

    .line 132
    new-instance v0, Lcom/codemao/nemo/bean/SetPlayerUIMsg;

    invoke-direct {v0, p1}, Lcom/codemao/nemo/bean/SetPlayerUIMsg;-><init>(Z)V

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/BaseJsonBean;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SET_PLAYER_UI"

    invoke-virtual {p0, v0, p1}, Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setRecordPermission(Z)V
    .registers 3

    .line 115
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "SET_RECORD_PERMISSION"

    invoke-virtual {p0, v0, p1}, Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setVolume(D)V
    .registers 3

    .line 111
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p2, "SET_VOLUME"

    invoke-virtual {p0, p2, p1}, Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setupUserInfo()V
    .registers 3

    .line 66
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getAccountToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, "USER_LOGIN"

    invoke-virtual {p0, v1, v0}, Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
