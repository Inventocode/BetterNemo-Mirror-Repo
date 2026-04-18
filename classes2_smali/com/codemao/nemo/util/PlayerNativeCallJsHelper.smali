.class public Lcom/codemao/nemo/util/PlayerNativeCallJsHelper;
.super Ljava/lang/Object;
.source "PlayerNativeCallJsHelper.java"


# instance fields
.field POST_ASYNC_MSG:Ljava/lang/String;

.field POST_SYNC_MSG:Ljava/lang/String;

.field private mWebReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/codemao/creativestore/dsbridge/DWebView;",
            ">;"
        }
    .end annotation
.end field

.field private mWebReferenceX5:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/codemao/nemo/view/X5DWebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "postMessage"

    .line 19
    iput-object v0, p0, Lcom/codemao/nemo/util/PlayerNativeCallJsHelper;->POST_SYNC_MSG:Ljava/lang/String;

    const-string v0, "postMessageAsyn"

    .line 21
    iput-object v0, p0, Lcom/codemao/nemo/util/PlayerNativeCallJsHelper;->POST_ASYNC_MSG:Ljava/lang/String;

    return-void
.end method

.method private checkWebView()Z
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/codemao/nemo/util/PlayerNativeCallJsHelper;->mWebReference:Ljava/lang/ref/WeakReference;

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

.method private checkWebViewX5()Z
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/codemao/nemo/util/PlayerNativeCallJsHelper;->mWebReferenceX5:Ljava/lang/ref/WeakReference;

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

.method private fetchWebView()Lcom/codemao/creativestore/dsbridge/DWebView;
    .registers 2

    .line 54
    invoke-direct {p0}, Lcom/codemao/nemo/util/PlayerNativeCallJsHelper;->checkWebView()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/codemao/nemo/util/PlayerNativeCallJsHelper;->mWebReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativestore/dsbridge/DWebView;

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return-object v0
.end method

.method private fetchWebViewX5()Lcom/codemao/nemo/view/X5DWebView;
    .registers 2

    .line 58
    invoke-direct {p0}, Lcom/codemao/nemo/util/PlayerNativeCallJsHelper;->checkWebViewX5()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/codemao/nemo/util/PlayerNativeCallJsHelper;->mWebReferenceX5:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/X5DWebView;

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return-object v0
.end method


# virtual methods
.method public destroy()V
    .registers 3

    .line 43
    iget-object v0, p0, Lcom/codemao/nemo/util/PlayerNativeCallJsHelper;->mWebReference:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 44
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 45
    iput-object v1, p0, Lcom/codemao/nemo/util/PlayerNativeCallJsHelper;->mWebReference:Ljava/lang/ref/WeakReference;

    .line 47
    :cond_a
    iget-object v0, p0, Lcom/codemao/nemo/util/PlayerNativeCallJsHelper;->mWebReferenceX5:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_13

    .line 48
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 49
    iput-object v1, p0, Lcom/codemao/nemo/util/PlayerNativeCallJsHelper;->mWebReferenceX5:Ljava/lang/ref/WeakReference;

    :cond_13
    return-void
.end method

.method public getScreenShot(Lcom/codemao/creativestore/dsbridge/OnReturnValue;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativestore/dsbridge/OnReturnValue<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "GET_SCREENSHOT"

    const-string v1, ""

    const/4 v2, 0x0

    .line 84
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/codemao/nemo/util/PlayerNativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/Object;ZLcom/codemao/creativestore/dsbridge/OnReturnValue;)V

    return-void
.end method

.method public init(Lcom/codemao/creativestore/dsbridge/DWebView;)V
    .registers 3

    .line 29
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/codemao/nemo/util/PlayerNativeCallJsHelper;->mWebReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public initX5(Lcom/codemao/nemo/view/X5DWebView;)V
    .registers 3

    .line 36
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/codemao/nemo/util/PlayerNativeCallJsHelper;->mWebReferenceX5:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public onPhoneShake()V
    .registers 3

    const-string v0, "ON_PHONE_SHAKE"

    const-string v1, ""

    .line 121
    invoke-virtual {p0, v0, v1}, Lcom/codemao/nemo/util/PlayerNativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public pausePalyer()V
    .registers 3

    const-string v0, "PAUSE_PLAYER"

    const-string v1, ""

    .line 96
    invoke-virtual {p0, v0, v1}, Lcom/codemao/nemo/util/PlayerNativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public postMsg(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 133
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/codemao/nemo/util/PlayerNativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/Object;ZLcom/codemao/creativestore/dsbridge/OnReturnValue;)V

    return-void
.end method

.method public postMsg(Ljava/lang/String;Ljava/lang/Object;ZLcom/codemao/creativestore/dsbridge/OnReturnValue;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Z",
            "Lcom/codemao/creativestore/dsbridge/OnReturnValue<",
            "TT;>;)V"
        }
    .end annotation

    .line 138
    invoke-direct {p0}, Lcom/codemao/nemo/util/PlayerNativeCallJsHelper;->fetchWebView()Lcom/codemao/creativestore/dsbridge/DWebView;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v0, :cond_28

    .line 140
    invoke-direct {p0}, Lcom/codemao/nemo/util/PlayerNativeCallJsHelper;->fetchWebViewX5()Lcom/codemao/nemo/view/X5DWebView;

    move-result-object v0

    if-nez v0, :cond_17

    const-string p1, "nemo"

    const-string p2, "webview未绑定"

    .line 142
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    :cond_17
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    aput-object p2, v3, v1

    if-eqz p3, :cond_22

    .line 145
    iget-object p1, p0, Lcom/codemao/nemo/util/PlayerNativeCallJsHelper;->POST_SYNC_MSG:Ljava/lang/String;

    goto :goto_24

    :cond_22
    iget-object p1, p0, Lcom/codemao/nemo/util/PlayerNativeCallJsHelper;->POST_ASYNC_MSG:Ljava/lang/String;

    :goto_24
    invoke-virtual {v0, p1, v3, p4}, Lcom/codemao/nemo/view/X5DWebView;->callHandler(Ljava/lang/String;[Ljava/lang/Object;Lcom/codemao/creativestore/dsbridge/OnReturnValue;)V

    goto :goto_38

    :cond_28
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    aput-object p2, v3, v1

    if-eqz p3, :cond_33

    .line 150
    iget-object p1, p0, Lcom/codemao/nemo/util/PlayerNativeCallJsHelper;->POST_SYNC_MSG:Ljava/lang/String;

    goto :goto_35

    :cond_33
    iget-object p1, p0, Lcom/codemao/nemo/util/PlayerNativeCallJsHelper;->POST_ASYNC_MSG:Ljava/lang/String;

    :goto_35
    invoke-virtual {v0, p1, v3, p4}, Lcom/codemao/creativestore/dsbridge/DWebView;->callHandler(Ljava/lang/String;[Ljava/lang/Object;Lcom/codemao/creativestore/dsbridge/OnReturnValue;)V

    :goto_38
    return-void
.end method

.method public resetPlayer()V
    .registers 3

    const-string v0, "RESET_PLAYER"

    const-string v1, ""

    .line 125
    invoke-virtual {p0, v0, v1}, Lcom/codemao/nemo/util/PlayerNativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public resumePalyer()V
    .registers 3

    const-string v0, "RESUME_PLAYER"

    const-string v1, ""

    .line 101
    invoke-virtual {p0, v0, v1}, Lcom/codemao/nemo/util/PlayerNativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/Object;)V

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

    .line 117
    invoke-virtual {p0, v0, p1}, Lcom/codemao/nemo/util/PlayerNativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setPlayerUI(Z)V
    .registers 3

    .line 109
    new-instance v0, Lcom/codemao/nemo/bean/SetPlayerUIMsg;

    invoke-direct {v0, p1}, Lcom/codemao/nemo/bean/SetPlayerUIMsg;-><init>(Z)V

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/BaseJsonBean;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SET_PLAYER_UI"

    invoke-virtual {p0, v0, p1}, Lcom/codemao/nemo/util/PlayerNativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setRecordPermission(Z)V
    .registers 3

    .line 92
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "SET_RECORD_PERMISSION"

    invoke-virtual {p0, v0, p1}, Lcom/codemao/nemo/util/PlayerNativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setVolume(D)V
    .registers 3

    .line 88
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p2, "SET_VOLUME"

    invoke-virtual {p0, p2, p1}, Lcom/codemao/nemo/util/PlayerNativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setupUserInfo()V
    .registers 3

    .line 80
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getAccountToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, "USER_LOGIN"

    invoke-virtual {p0, v1, v0}, Lcom/codemao/nemo/util/PlayerNativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public startPlayer()V
    .registers 3

    const-string v0, "START_WORK"

    const-string v1, ""

    .line 129
    invoke-virtual {p0, v0, v1}, Lcom/codemao/nemo/util/PlayerNativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public toggleKeyboard(Z)V
    .registers 3

    .line 105
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "TOGGLE_VIRTUAL_KEYBOARD"

    invoke-virtual {p0, v0, p1}, Lcom/codemao/nemo/util/PlayerNativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
