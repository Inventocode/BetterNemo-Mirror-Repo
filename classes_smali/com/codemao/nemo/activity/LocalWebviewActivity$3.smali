.class Lcom/codemao/nemo/activity/LocalWebviewActivity$3;
.super Landroid/webkit/WebViewClient;
.source "LocalWebviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/LocalWebviewActivity;->initWebview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/LocalWebviewActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/LocalWebviewActivity;)V
    .registers 2

    .line 573
    iput-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$3;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    .line 639
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 640
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$3;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/LocalWebviewActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_17

    .line 641
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$3;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/LocalWebviewActivity;->ivNext:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_1e

    .line 643
    :cond_17
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$3;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/LocalWebviewActivity;->ivNext:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 645
    :goto_1e
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$3;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/LocalWebviewActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_30

    .line 646
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$3;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/LocalWebviewActivity;->ivLast:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_37

    .line 648
    :cond_30
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$3;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/LocalWebviewActivity;->ivLast:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 651
    :goto_37
    :try_start_37
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$3;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivity;

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

    invoke-static {p1, p2, v0}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->access$1100(Lcom/codemao/nemo/activity/LocalWebviewActivity;Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_57} :catch_57

    :catch_57
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    .line 624
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 625
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$3;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/LocalWebviewActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p1, :cond_17

    .line 626
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$3;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/LocalWebviewActivity;->ivNext:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_1e

    .line 628
    :cond_17
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$3;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/LocalWebviewActivity;->ivNext:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 630
    :goto_1e
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$3;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/LocalWebviewActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_30

    .line 631
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$3;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/LocalWebviewActivity;->ivLast:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_37

    .line 633
    :cond_30
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$3;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/LocalWebviewActivity;->ivLast:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setEnabled(Z)V

    :goto_37
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 4

    if-eqz p2, :cond_5

    .line 578
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    :cond_5
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 4

    .line 584
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$3;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivity;

    invoke-virtual {v0, p2}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->synCookies(Ljava/lang/String;)V

    .line 585
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 6

    .line 590
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "新加载的url:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "web白名单"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "http"

    .line 591
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 592
    sget-object p1, Lcom/codemao/nemo/util/WebWhiteListUtils;->INSTANCE:Lcom/codemao/nemo/util/WebWhiteListUtils;

    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$3;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/LocalWebviewActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-virtual {p1, v0, p2}, Lcom/codemao/nemo/util/WebWhiteListUtils;->loadUrl(Lcom/codemao/creativestore/dsbridge/DWebView;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_2a
    const-string p1, "nemo"

    .line 593
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_69

    .line 595
    :try_start_33
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "type"

    .line 596
    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    const/4 v1, 0x5

    if-ne p2, v1, :cond_55

    const-string p2, "url"

    .line 598
    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 599
    sget-object p2, Lcom/codemao/nemo/util/WebWhiteListUtils;->INSTANCE:Lcom/codemao/nemo/util/WebWhiteListUtils;

    iget-object v1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$3;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivity;

    iget-object v1, v1, Lcom/codemao/nemo/activity/LocalWebviewActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-virtual {p2, v1, p1}, Lcom/codemao/nemo/util/WebWhiteListUtils;->loadUrl(Lcom/codemao/creativestore/dsbridge/DWebView;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_55
    const-wide/16 v1, 0xbb8

    .line 601
    invoke-static {v1, v2}, Lcn/codemao/android/sketch/utils/UiUtil;->isFastClick(J)Z

    move-result p2

    if-eqz p2, :cond_5e

    return v0

    .line 604
    :cond_5e
    iget-object p2, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$3;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivity;

    const/4 v1, 0x0

    invoke-static {p1, p2, v1, v1}, Lcom/codemao/nemo/activity/LocalJumpHelper;->jump(Landroid/net/Uri;Landroid/content/Context;ZZ)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_64} :catch_65

    goto :goto_69

    :catch_65
    move-exception p1

    .line 607
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_69
    :goto_69
    return v0
.end method
