.class public Lcom/codemao/toolssdk/cpp/view/WoodWebView;
.super Lcom/codemao/toolssdk/cpp/view/CppWebViewBridge;
.source "WoodWebView.kt"


# instance fields
.field private reportRenderGone:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBridge;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBridge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBridge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public loadFail(Lcom/codemao/toolssdk/model/dsbridge/IResult;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/model/dsbridge/IResult<",
            "Lcom/codemao/toolssdk/model/dsbridge/ToolsError;",
            ">;)V"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->getToolsManager()Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lcom/codemao/toolssdk/view/CMToolSessionListener$DefaultImpls;->toolLoadDidFail$default(Lcom/codemao/toolssdk/view/CMToolSessionListener;Lcom/codemao/toolssdk/model/dsbridge/IResult;Ljava/lang/Exception;ILjava/lang/Object;)V

    :cond_10
    return-void
.end method

.method public loadFinish()V
    .registers 2

    .line 47
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->getToolsManager()Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/codemao/toolssdk/view/CMToolSessionListener;->toolLoadDidFinish()V

    :cond_9
    const/4 v0, 0x1

    .line 48
    invoke-virtual {p0, v0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewWork;->setLoadSucceed(Z)V

    return-void
.end method

.method public loadStart()V
    .registers 2

    .line 33
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->getToolsManager()Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/codemao/toolssdk/view/CMToolSessionListener;->toolLoadDidStart()V

    :cond_9
    return-void
.end method

.method public setAccountListener(Lcom/codemao/toolssdk/jsapi/AccountJsApi$AccountListener;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->getJsObjectManager()Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManager;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->getAccountJsObject()Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppAccountJsApi;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppAccountJsApi;->setAccountCallback(Lcom/codemao/toolssdk/jsapi/AccountJsApi$AccountListener;)V

    :cond_14
    return-void
.end method

.method public setBindPhoneResult(Z)V
    .registers 3

    .line 204
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->getJsObjectManager()Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManager;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->getAccountJsObject()Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppAccountJsApi;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppAccountJsApi;->setBindPhoneResult(Z)V

    :cond_f
    return-void
.end method

.method public setLoginResult(Z)V
    .registers 3

    .line 208
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->getJsObjectManager()Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManager;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->getAccountJsObject()Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppAccountJsApi;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppAccountJsApi;->setLoginResult(Z)V

    :cond_f
    return-void
.end method

.method public setUserData(Lcom/codemao/toolssdk/model/dsbridge/UserData;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;)V
    .registers 5
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

    const-string v0, "success"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fail"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->getJsObjectManager()Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManager;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->getApplication()Lcom/codemao/toolssdk/cpp/jsobjects/objects/application/CppApplicationJsApi;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v0, p1, p2, p3}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/application/CppApplicationJsApi;->setUserData(Lcom/codemao/toolssdk/model/dsbridge/UserData;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;)V

    :cond_19
    return-void
.end method

.method public toolSessionEvent(Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;)V
    .registers 3

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->getToolsManager()Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-interface {v0, p1}, Lcom/codemao/toolssdk/view/CMToolSessionListener;->toolSessionEvent(Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;)V

    :cond_e
    return-void
.end method

.method public webViewClientOnRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)V
    .registers 3

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-boolean p1, p0, Lcom/codemao/toolssdk/cpp/view/WoodWebView;->reportRenderGone:Z

    if-nez p1, :cond_15

    .line 61
    sget-object p1, Lcom/codemao/toolssdk/func/logevent/WebLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/WebLogEventUtils;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->getLastUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/func/logevent/WebLogEventUtils;->renderGone(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 62
    iput-boolean p1, p0, Lcom/codemao/toolssdk/cpp/view/WoodWebView;->reportRenderGone:Z

    :cond_15
    return-void
.end method
