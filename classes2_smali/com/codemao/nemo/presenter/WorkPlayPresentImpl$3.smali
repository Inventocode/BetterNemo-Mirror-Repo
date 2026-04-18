.class Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$3;
.super Lcom/tencent/smtt/sdk/WebViewClient;
.source "WorkPlayPresentImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->initWebviewX5(Lcom/codemao/nemo/view/X5DWebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$wv_GameX5:Lcom/codemao/nemo/view/X5DWebView;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;Lcom/codemao/nemo/view/X5DWebView;)V
    .registers 3

    .line 166
    iput-object p2, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$3;->val$wv_GameX5:Lcom/codemao/nemo/view/X5DWebView;

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V
    .registers 3

    .line 177
    invoke-super {p0, p1, p2}, Lcom/tencent/smtt/sdk/WebViewClient;->onPageFinished(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedSslError(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/export/external/interfaces/SslErrorHandler;Lcom/tencent/smtt/export/external/interfaces/SslError;)V
    .registers 4

    if-eqz p2, :cond_5

    .line 171
    invoke-interface {p2}, Lcom/tencent/smtt/export/external/interfaces/SslErrorHandler;->cancel()V

    :cond_5
    return-void
.end method

.method public shouldOverrideUrlLoading(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)Z
    .registers 4

    const-string p1, "http"

    .line 182
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_e

    .line 183
    iget-object p1, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$3;->val$wv_GameX5:Lcom/codemao/nemo/view/X5DWebView;

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/view/X5DWebView;->loadUrl(Ljava/lang/String;)V

    :cond_e
    return v0
.end method
