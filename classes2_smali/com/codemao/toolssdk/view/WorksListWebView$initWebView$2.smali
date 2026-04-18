.class public final Lcom/codemao/toolssdk/view/WorksListWebView$initWebView$2;
.super Landroid/webkit/WebViewClient;
.source "WorksListWebView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/view/WorksListWebView;->initWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/view/WorksListWebView;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/view/WorksListWebView;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/view/WorksListWebView$initWebView$2;->this$0:Lcom/codemao/toolssdk/view/WorksListWebView;

    .line 57
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .registers 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/codemao/toolssdk/view/WorksListWebView$initWebView$2;->this$0:Lcom/codemao/toolssdk/view/WorksListWebView;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/view/WorksListWebView;->getDWebView()Lcom/codemao/toolssdk/dsbridge/DWebView;

    move-result-object v0

    if-ne p1, v0, :cond_53

    .line 68
    iget-object p1, p0, Lcom/codemao/toolssdk/view/WorksListWebView$initWebView$2;->this$0:Lcom/codemao/toolssdk/view/WorksListWebView;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/view/WorksListWebView;->getDWebView()Lcom/codemao/toolssdk/dsbridge/DWebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const-string p2, "dWebView.layoutParams"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object p2, p0, Lcom/codemao/toolssdk/view/WorksListWebView$initWebView$2;->this$0:Lcom/codemao/toolssdk/view/WorksListWebView;

    invoke-virtual {p2}, Lcom/codemao/toolssdk/view/WorksListWebView;->destroyWebView()V

    .line 72
    new-instance p2, Lcom/codemao/toolssdk/dsbridge/DWebView;

    iget-object v0, p0, Lcom/codemao/toolssdk/view/WorksListWebView$initWebView$2;->this$0:Lcom/codemao/toolssdk/view/WorksListWebView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;-><init>(Landroid/content/Context;)V

    .line 73
    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    iget-object p1, p0, Lcom/codemao/toolssdk/view/WorksListWebView$initWebView$2;->this$0:Lcom/codemao/toolssdk/view/WorksListWebView;

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/view/WorksListWebView;->setDWebView(Lcom/codemao/toolssdk/dsbridge/DWebView;)V

    .line 77
    iget-object p1, p0, Lcom/codemao/toolssdk/view/WorksListWebView$initWebView$2;->this$0:Lcom/codemao/toolssdk/view/WorksListWebView;

    invoke-static {p1}, Lcom/codemao/toolssdk/view/WorksListWebView;->access$initWebView(Lcom/codemao/toolssdk/view/WorksListWebView;)V

    .line 78
    iget-object p1, p0, Lcom/codemao/toolssdk/view/WorksListWebView$initWebView$2;->this$0:Lcom/codemao/toolssdk/view/WorksListWebView;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/view/WorksListWebView;->getDWebView()Lcom/codemao/toolssdk/dsbridge/DWebView;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 79
    iget-object p1, p0, Lcom/codemao/toolssdk/view/WorksListWebView$initWebView$2;->this$0:Lcom/codemao/toolssdk/view/WorksListWebView;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/view/WorksListWebView;->getDWebView()Lcom/codemao/toolssdk/dsbridge/DWebView;

    move-result-object p1

    iget-object p2, p0, Lcom/codemao/toolssdk/view/WorksListWebView$initWebView$2;->this$0:Lcom/codemao/toolssdk/view/WorksListWebView;

    invoke-static {p2}, Lcom/codemao/toolssdk/view/WorksListWebView;->access$getLastUrl$p(Lcom/codemao/toolssdk/view/WorksListWebView;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/dsbridge/DWebView;->loadUrl(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 82
    :cond_53
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z

    move-result p1

    return p1
.end method
