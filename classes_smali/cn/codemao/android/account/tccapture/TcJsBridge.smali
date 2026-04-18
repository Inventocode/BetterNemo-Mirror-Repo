.class public Lcn/codemao/android/account/tccapture/TcJsBridge;
.super Ljava/lang/Object;
.source "TcJsBridge.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field public mCallback:Lcn/codemao/android/account/tccapture/TcJsBridgeCallBack;


# direct methods
.method public constructor <init>(Lcn/codemao/android/account/tccapture/TcJsBridgeCallBack;)V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcn/codemao/android/account/tccapture/TcJsBridge;->mCallback:Lcn/codemao/android/account/tccapture/TcJsBridgeCallBack;

    return-void
.end method


# virtual methods
.method public getAppid()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 45
    invoke-static {}, Lcn/codemao/android/account/tccapture/TcCaptchaManager;->getInstance()Lcn/codemao/android/account/tccapture/TcCaptchaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/tccapture/TcCaptchaManager;->getAppid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onFailed(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 38
    iget-object v0, p0, Lcn/codemao/android/account/tccapture/TcJsBridge;->mCallback:Lcn/codemao/android/account/tccapture/TcJsBridgeCallBack;

    if-eqz v0, :cond_7

    .line 39
    invoke-interface {v0, p1, p2}, Lcn/codemao/android/account/tccapture/TcJsBridgeCallBack;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public onReady(II)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 31
    iget-object v0, p0, Lcn/codemao/android/account/tccapture/TcJsBridge;->mCallback:Lcn/codemao/android/account/tccapture/TcJsBridgeCallBack;

    if-eqz v0, :cond_7

    .line 32
    invoke-interface {v0, p1, p2}, Lcn/codemao/android/account/tccapture/TcJsBridgeCallBack;->onReady(II)V

    :cond_7
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 24
    iget-object v0, p0, Lcn/codemao/android/account/tccapture/TcJsBridge;->mCallback:Lcn/codemao/android/account/tccapture/TcJsBridgeCallBack;

    if-eqz v0, :cond_7

    .line 25
    invoke-interface {v0, p1, p2}, Lcn/codemao/android/account/tccapture/TcJsBridgeCallBack;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method
