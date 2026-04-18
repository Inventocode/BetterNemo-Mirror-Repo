.class public abstract Lcom/codemao/toolssdk/view/ToolsWebViewBiz;
.super Lcom/codemao/toolssdk/view/ToolsWebViewCommunication;
.source "ToolsWebViewBiz.kt"


# instance fields
.field private loacalUrl:Ljava/lang/String;

.field private stateView:Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/codemao/toolssdk/view/ToolsWebViewCommunication;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, ""

    .line 144
    iput-object p1, p0, Lcom/codemao/toolssdk/view/ToolsWebViewBiz;->loacalUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/toolssdk/view/ToolsWebViewCommunication;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, ""

    .line 144
    iput-object p1, p0, Lcom/codemao/toolssdk/view/ToolsWebViewBiz;->loacalUrl:Ljava/lang/String;

    return-void
.end method

.method private final createStateView()V
    .registers 4

    .line 59
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "为webview的多状态创建LoadingFullScreenView"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogOther;->dLeak(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebViewBiz;->stateView:Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;

    if-nez v0, :cond_19

    new-instance v0, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;-><init>(Landroid/content/Context;)V

    :cond_19
    iput-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebViewBiz;->stateView:Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 2

    .line 106
    iget-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebViewBiz;->stateView:Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;->onDestroy()V

    :cond_7
    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebViewBiz;->stateView:Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;

    return-void
.end method

.method public getCurrentDWebView()Lcom/codemao/toolssdk/dsbridge/DWebView;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getLoacalUrl()Ljava/lang/String;
    .registers 2

    .line 144
    iget-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebViewBiz;->loacalUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final loadLocal(Ljava/lang/Long;Landroid/net/Uri;)V
    .registers 5

    const-string p1, "uri"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "file:///android_asset/work_local/index.html"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 148
    iput-object p1, p0, Lcom/codemao/toolssdk/view/ToolsWebViewBiz;->loacalUrl:Ljava/lang/String;

    .line 149
    invoke-virtual {p0}, Lcom/codemao/toolssdk/view/ToolsWebViewBiz;->getCurrentDWebView()Lcom/codemao/toolssdk/dsbridge/DWebView;

    move-result-object p2

    if-eqz p2, :cond_21

    invoke-virtual {p2, p1}, Lcom/codemao/toolssdk/dsbridge/DWebView;->loadUrl(Ljava/lang/String;)V

    .line 150
    :cond_21
    sget-object p2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "加载本地文件:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/codemao/toolssdk/utils/ExtLog;->dKnLoad(Ljava/lang/String;)V

    return-void
.end method

.method protected final setLoacalUrl(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    iput-object p1, p0, Lcom/codemao/toolssdk/view/ToolsWebViewBiz;->loacalUrl:Ljava/lang/String;

    return-void
.end method

.method public setStateButtonsListener(Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop$ButtonOnClickListener;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-direct {p0}, Lcom/codemao/toolssdk/view/ToolsWebViewBiz;->createStateView()V

    .line 102
    iget-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebViewBiz;->stateView:Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;->setButtonsOnClickListener(Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop$ButtonOnClickListener;)V

    :cond_f
    return-void
.end method
