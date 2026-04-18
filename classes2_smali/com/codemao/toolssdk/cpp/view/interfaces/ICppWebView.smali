.class public interface abstract Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;
.super Ljava/lang/Object;
.source "ICppWebView.kt"

# interfaces
.implements Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;
.implements Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewCallHandler;
.implements Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewConfig;
.implements Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewKeyboard;
.implements Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewWork;
.implements Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBiz;
.implements Lcom/codemao/toolssdk/cpp/view/interfaces/IPosMessageToWebView;
.implements Lcom/codemao/toolssdk/cpp/jsobjects/network/INetworkProvider;


# virtual methods
.method public abstract isToolTypePlayer()Z
.end method

.method public abstract setAccountListener(Lcom/codemao/toolssdk/jsapi/AccountJsApi$AccountListener;)V
.end method

.method public abstract setBindPhoneResult(Z)V
.end method

.method public abstract setToolType(Ljava/lang/String;)V
.end method

.method public abstract setUserData(Lcom/codemao/toolssdk/model/dsbridge/UserData;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/model/dsbridge/UserData;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract webViewClientOnRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)V
.end method
