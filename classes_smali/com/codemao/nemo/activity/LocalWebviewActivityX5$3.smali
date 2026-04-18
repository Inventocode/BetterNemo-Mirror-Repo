.class Lcom/codemao/nemo/activity/LocalWebviewActivityX5$3;
.super Lcom/tencent/smtt/sdk/WebViewClient;
.source "LocalWebviewActivityX5.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->initWebview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/LocalWebviewActivityX5;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/LocalWebviewActivityX5;)V
    .registers 2

    .line 481
    iput-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$3;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivityX5;

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V
    .registers 4

    .line 539
    invoke-super {p0, p1, p2}, Lcom/tencent/smtt/sdk/WebViewClient;->onPageFinished(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V

    .line 540
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$3;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivityX5;

    iget-object p1, p1, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->wv_Game:Lcom/codemao/nemo/view/X5DWebView;

    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/WebView;->canGoForward()Z

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_17

    .line 541
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$3;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivityX5;

    iget-object p1, p1, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->ivNext:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_1e

    .line 543
    :cond_17
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$3;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivityX5;

    iget-object p1, p1, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->ivNext:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 545
    :goto_1e
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$3;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivityX5;

    iget-object p1, p1, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->wv_Game:Lcom/codemao/nemo/view/X5DWebView;

    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_30

    .line 546
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$3;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivityX5;

    iget-object p1, p1, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->ivLast:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_37

    .line 548
    :cond_30
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$3;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivityX5;

    iget-object p1, p1, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->ivLast:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 551
    :goto_37
    :try_start_37
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$3;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivityX5;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "javascript:set_token(\""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getAccountToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->access$800(Lcom/codemao/nemo/activity/LocalWebviewActivityX5;Ljava/lang/String;Lcom/tencent/smtt/sdk/ValueCallback;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_57} :catch_57

    :catch_57
    return-void
.end method

.method public onPageStarted(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    .line 524
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/smtt/sdk/WebViewClient;->onPageStarted(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 525
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$3;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivityX5;

    iget-object p1, p1, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->wv_Game:Lcom/codemao/nemo/view/X5DWebView;

    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/WebView;->canGoForward()Z

    move-result p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p1, :cond_17

    .line 526
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$3;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivityX5;

    iget-object p1, p1, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->ivNext:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_1e

    .line 528
    :cond_17
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$3;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivityX5;

    iget-object p1, p1, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->ivNext:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 530
    :goto_1e
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$3;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivityX5;

    iget-object p1, p1, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->wv_Game:Lcom/codemao/nemo/view/X5DWebView;

    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_30

    .line 531
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$3;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivityX5;

    iget-object p1, p1, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->ivLast:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_37

    .line 533
    :cond_30
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$3;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivityX5;

    iget-object p1, p1, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->ivLast:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setEnabled(Z)V

    :goto_37
    return-void
.end method

.method public onReceivedSslError(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/export/external/interfaces/SslErrorHandler;Lcom/tencent/smtt/export/external/interfaces/SslError;)V
    .registers 4

    if-eqz p2, :cond_5

    .line 486
    invoke-interface {p2}, Lcom/tencent/smtt/export/external/interfaces/SslErrorHandler;->cancel()V

    :cond_5
    return-void
.end method

.method public shouldInterceptRequest(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;
    .registers 4

    .line 492
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$3;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivityX5;

    invoke-virtual {v0, p2}, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->synCookies(Ljava/lang/String;)V

    .line 493
    invoke-super {p0, p1, p2}, Lcom/tencent/smtt/sdk/WebViewClient;->shouldInterceptRequest(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldOverrideUrlLoading(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)Z
    .registers 6

    const-string p1, "http"

    .line 498
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 499
    sget-object p1, Lcom/codemao/nemo/util/WebWhiteListUtils;->INSTANCE:Lcom/codemao/nemo/util/WebWhiteListUtils;

    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$3;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivityX5;

    iget-object v0, v0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->wv_Game:Lcom/codemao/nemo/view/X5DWebView;

    invoke-virtual {p1, v0, p2}, Lcom/codemao/nemo/util/WebWhiteListUtils;->loadUrl(Lcom/codemao/nemo/view/X5DWebView;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_13
    const-string p1, "nemo"

    .line 500
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_52

    .line 502
    :try_start_1c
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "type"

    .line 503
    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    const/4 v1, 0x5

    if-ne p2, v1, :cond_3e

    const-string p2, "url"

    .line 505
    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 506
    sget-object p2, Lcom/codemao/nemo/util/WebWhiteListUtils;->INSTANCE:Lcom/codemao/nemo/util/WebWhiteListUtils;

    iget-object v1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$3;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivityX5;

    iget-object v1, v1, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->wv_Game:Lcom/codemao/nemo/view/X5DWebView;

    invoke-virtual {p2, v1, p1}, Lcom/codemao/nemo/util/WebWhiteListUtils;->loadUrl(Lcom/codemao/nemo/view/X5DWebView;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_3e
    const-wide/16 v1, 0xbb8

    .line 508
    invoke-static {v1, v2}, Lcn/codemao/android/sketch/utils/UiUtil;->isFastClick(J)Z

    move-result p2

    if-eqz p2, :cond_47

    return v0

    .line 511
    :cond_47
    iget-object p2, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$3;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivityX5;

    const/4 v1, 0x0

    invoke-static {p1, p2, v1, v1}, Lcom/codemao/nemo/activity/LocalJumpHelper;->jump(Landroid/net/Uri;Landroid/content/Context;ZZ)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_4d} :catch_4e

    goto :goto_52

    :catch_4e
    move-exception p1

    .line 514
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_52
    :goto_52
    return v0
.end method
