.class public Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;
.super Ljava/lang/Object;
.source "NativeCallJsHelper.java"


# instance fields
.field private mWebReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/codemao/creativestore/dsbridge/DWebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private callHandler(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    .line 87
    invoke-direct {p0}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->fetchWebView()Lcom/codemao/creativestore/dsbridge/DWebView;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 92
    invoke-virtual {v0, p1, v1}, Lcom/codemao/creativestore/dsbridge/DWebView;->callHandler(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private checkWebView()Z
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->mWebReference:Ljava/lang/ref/WeakReference;

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

    .line 46
    invoke-direct {p0}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->checkWebView()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->mWebReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativestore/dsbridge/DWebView;

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return-object v0
.end method


# virtual methods
.method public disconnect(Lcom/codemao/creativestore/jsbridge/bean/ConnectData;)V
    .registers 5

    .line 113
    :try_start_0
    sget-object v0, Lcom/codemao/creativestore/jsbridge/consts/NativeCallJsConst;->DISCONNECT:Ljava/lang/String;

    new-instance v1, Lorg/json/JSONObject;

    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->toJsonStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->callHandler(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_17

    :catch_13
    move-exception p1

    .line 115
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_17
    return-void
.end method

.method public init(Lcom/codemao/creativestore/dsbridge/DWebView;)V
    .registers 3

    .line 32
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->mWebReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public notification(Lcom/codemao/creativestore/jsbridge/bean/NotificationReturnData;)V
    .registers 5

    .line 105
    :try_start_0
    sget-object v0, Lcom/codemao/creativestore/jsbridge/consts/NativeCallJsConst;->NOTIFICATION:Ljava/lang/String;

    new-instance v1, Lorg/json/JSONObject;

    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->toJsonStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->callHandler(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_17

    :catch_13
    move-exception p1

    .line 107
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_17
    return-void
.end method

.method public peripheral(Lcom/codemao/creativestore/jsbridge/bean/PeripheralReturnData;)V
    .registers 5

    .line 97
    :try_start_0
    sget-object v0, Lcom/codemao/creativestore/jsbridge/consts/NativeCallJsConst;->PERIPHERAL:Ljava/lang/String;

    new-instance v1, Lorg/json/JSONObject;

    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->toJsonStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->callHandler(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_17

    :catch_13
    move-exception p1

    .line 99
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_17
    return-void
.end method

.method public permissionState(Lcom/codemao/creativestore/jsbridge/bean/StateReturnData;)V
    .registers 5

    .line 121
    :try_start_0
    sget-object v0, Lcom/codemao/creativestore/jsbridge/consts/NativeCallJsConst;->PERMISSIONSTATE:Ljava/lang/String;

    new-instance v1, Lorg/json/JSONObject;

    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->toJsonStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->callHandler(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_17

    :catch_13
    move-exception p1

    .line 123
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_17
    return-void
.end method

.method public postDelay(Ljava/lang/Runnable;I)V
    .registers 6

    .line 78
    invoke-direct {p0}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->fetchWebView()Lcom/codemao/creativestore/dsbridge/DWebView;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    int-to-long v1, p2

    .line 82
    invoke-virtual {v0, p1, v1, v2}, Landroid/webkit/WebView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public postMsg(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 59
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/creativestore/dsbridge/OnReturnValue;)V

    return-void
.end method

.method public postMsg(Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/creativestore/dsbridge/OnReturnValue;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/codemao/creativestore/dsbridge/OnReturnValue<",
            "TT;>;)V"
        }
    .end annotation

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nemolog   postMsg"

    invoke-static {v1, v0}, Lcom/codemao/creativestore/utils/CreativeLoggerUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-direct {p0}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->fetchWebView()Lcom/codemao/creativestore/dsbridge/DWebView;

    move-result-object v0

    if-nez v0, :cond_28

    return-void

    :cond_28
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    if-eqz p3, :cond_36

    const-string p1, "postMessage"

    goto :goto_38

    :cond_36
    const-string p1, "postMessageAsyn"

    .line 73
    :goto_38
    invoke-virtual {v0, p1, v1, p4}, Lcom/codemao/creativestore/dsbridge/DWebView;->callHandler(Ljava/lang/String;[Ljava/lang/Object;Lcom/codemao/creativestore/dsbridge/OnReturnValue;)V

    return-void
.end method
