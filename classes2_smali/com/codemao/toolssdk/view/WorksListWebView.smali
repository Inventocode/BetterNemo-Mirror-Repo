.class public final Lcom/codemao/toolssdk/view/WorksListWebView;
.super Landroid/widget/FrameLayout;
.source "WorksListWebView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/view/WorksListWebView$EventCallback;
    }
.end annotation


# instance fields
.field private dWebView:Lcom/codemao/toolssdk/dsbridge/DWebView;

.field private eventCallback:Lcom/codemao/toolssdk/view/WorksListWebView$EventCallback;

.field private lastUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, ""

    .line 21
    iput-object p1, p0, Lcom/codemao/toolssdk/view/WorksListWebView;->lastUrl:Ljava/lang/String;

    .line 34
    new-instance p1, Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/codemao/toolssdk/dsbridge/DWebView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/codemao/toolssdk/view/WorksListWebView;->dWebView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    .line 37
    invoke-direct {p0}, Lcom/codemao/toolssdk/view/WorksListWebView;->initWebView()V

    .line 38
    iget-object p1, p0, Lcom/codemao/toolssdk/view/WorksListWebView;->dWebView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, ""

    .line 21
    iput-object p1, p0, Lcom/codemao/toolssdk/view/WorksListWebView;->lastUrl:Ljava/lang/String;

    .line 34
    new-instance p1, Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/codemao/toolssdk/dsbridge/DWebView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/codemao/toolssdk/view/WorksListWebView;->dWebView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    .line 37
    invoke-direct {p0}, Lcom/codemao/toolssdk/view/WorksListWebView;->initWebView()V

    .line 38
    iget-object p1, p0, Lcom/codemao/toolssdk/view/WorksListWebView;->dWebView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getLastUrl$p(Lcom/codemao/toolssdk/view/WorksListWebView;)Ljava/lang/String;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/codemao/toolssdk/view/WorksListWebView;->lastUrl:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$initWebView(Lcom/codemao/toolssdk/view/WorksListWebView;)V
    .registers 1

    .line 19
    invoke-direct {p0}, Lcom/codemao/toolssdk/view/WorksListWebView;->initWebView()V

    return-void
.end method

.method public static final synthetic access$toolSessionEvent(Lcom/codemao/toolssdk/view/WorksListWebView;Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;)V
    .registers 2

    .line 19
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/view/WorksListWebView;->toolSessionEvent(Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;)V

    return-void
.end method

.method private final initWebView()V
    .registers 10

    .line 42
    iget-object v0, p0, Lcom/codemao/toolssdk/view/WorksListWebView;->dWebView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " CodemaoTools/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "3.11.1-SNAPSHOT"

    const-string v4, "-SNAPSHOT"

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    .line 44
    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/codemao/toolssdk/view/WorksListWebView;->dWebView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 50
    iget-object v0, p0, Lcom/codemao/toolssdk/view/WorksListWebView;->dWebView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 54
    iget-object v0, p0, Lcom/codemao/toolssdk/view/WorksListWebView;->dWebView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    new-instance v1, Lcom/codemao/toolssdk/jsapi/EventJsApi;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/codemao/toolssdk/view/WorksListWebView$initWebView$1;

    invoke-direct {v3, p0}, Lcom/codemao/toolssdk/view/WorksListWebView$initWebView$1;-><init>(Lcom/codemao/toolssdk/view/WorksListWebView;)V

    invoke-direct {v1, v2, v3}, Lcom/codemao/toolssdk/jsapi/EventJsApi;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V

    const-string v2, "events"

    invoke-virtual {v0, v1, v2}, Lcom/codemao/toolssdk/dsbridge/DWebView;->addJavascriptObject(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/codemao/toolssdk/view/WorksListWebView;->dWebView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    new-instance v1, Lcom/codemao/toolssdk/view/WorksListWebView$initWebView$2;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/view/WorksListWebView$initWebView$2;-><init>(Lcom/codemao/toolssdk/view/WorksListWebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method private final toolSessionEvent(Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;)V
    .registers 9

    .line 88
    iget-object v0, p0, Lcom/codemao/toolssdk/view/WorksListWebView;->eventCallback:Lcom/codemao/toolssdk/view/WorksListWebView$EventCallback;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/codemao/toolssdk/view/WorksListWebView$EventCallback;->onEventCallBack(Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;)V

    .line 89
    :cond_7
    sget-object v1, Lcom/codemao/toolssdk/manager/ReportManager;->INSTANCE:Lcom/codemao/toolssdk/manager/ReportManager;

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/codemao/toolssdk/manager/CMToolsManager;->Companion:Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->getCommonReportData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "event事件通知"

    .line 89
    invoke-static/range {v1 .. v6}, Lcom/codemao/toolssdk/manager/ReportManager;->sendCollectionReport$default(Lcom/codemao/toolssdk/manager/ReportManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final destroy()V
    .registers 3

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/codemao/toolssdk/view/WorksListWebView;->dWebView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 102
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_13

    .line 103
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/codemao/toolssdk/view/WorksListWebView;->dWebView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 105
    :cond_13
    iget-object v0, p0, Lcom/codemao/toolssdk/view/WorksListWebView;->dWebView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 107
    iget-object v0, p0, Lcom/codemao/toolssdk/view/WorksListWebView;->dWebView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 108
    iget-object v0, p0, Lcom/codemao/toolssdk/view/WorksListWebView;->dWebView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 109
    iget-object v0, p0, Lcom/codemao/toolssdk/view/WorksListWebView;->dWebView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearView()V

    .line 110
    iget-object v0, p0, Lcom/codemao/toolssdk/view/WorksListWebView;->dWebView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 111
    iget-object v0, p0, Lcom/codemao/toolssdk/view/WorksListWebView;->dWebView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_36} :catch_36

    :catch_36
    return-void
.end method

.method public final destroyWebView()V
    .registers 1

    .line 118
    invoke-virtual {p0}, Lcom/codemao/toolssdk/view/WorksListWebView;->destroy()V

    return-void
.end method

.method public final getDWebView()Lcom/codemao/toolssdk/dsbridge/DWebView;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/codemao/toolssdk/view/WorksListWebView;->dWebView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    return-object v0
.end method

.method public final getEventCallback()Lcom/codemao/toolssdk/view/WorksListWebView$EventCallback;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/codemao/toolssdk/view/WorksListWebView;->eventCallback:Lcom/codemao/toolssdk/view/WorksListWebView$EventCallback;

    return-object v0
.end method

.method public final loadUrl()V
    .registers 3

    .line 122
    sget-object v0, Lcom/codemao/toolssdk/manager/CMToolsManager;->Companion:Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->getWorkListUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/toolssdk/view/WorksListWebView;->lastUrl:Ljava/lang/String;

    .line 123
    iget-object v1, p0, Lcom/codemao/toolssdk/view/WorksListWebView;->dWebView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-virtual {v1, v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public final setDWebView(Lcom/codemao/toolssdk/dsbridge/DWebView;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lcom/codemao/toolssdk/view/WorksListWebView;->dWebView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    return-void
.end method

.method public final setEventCallback(Lcom/codemao/toolssdk/view/WorksListWebView$EventCallback;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lcom/codemao/toolssdk/view/WorksListWebView;->eventCallback:Lcom/codemao/toolssdk/view/WorksListWebView$EventCallback;

    return-void
.end method

.method public final updateWorkList()V
    .registers 4

    .line 96
    iget-object v0, p0, Lcom/codemao/toolssdk/view/WorksListWebView;->dWebView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    const-string v1, "updateWorkList"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/codemao/toolssdk/dsbridge/DWebView;->callHandler(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
