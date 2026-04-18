.class Lcom/geetest/sdk/dialog/views/GtWebView$c;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geetest/sdk/dialog/views/GtWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private a:Lcom/geetest/sdk/dialog/views/GtWebView;

.field final synthetic b:Lcom/geetest/sdk/dialog/views/GtWebView;


# direct methods
.method public constructor <init>(Lcom/geetest/sdk/dialog/views/GtWebView;Lcom/geetest/sdk/dialog/views/GtWebView;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/dialog/views/GtWebView$c;->b:Lcom/geetest/sdk/dialog/views/GtWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/geetest/sdk/dialog/views/GtWebView$c;->a:Lcom/geetest/sdk/dialog/views/GtWebView;

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-static {}, Lcom/geetest/sdk/dialog/views/GtWebView;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadResource-->url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-static {}, Lcom/geetest/sdk/dialog/views/GtWebView;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Webview-->onPageFinished-->url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 7

    .line 1
    invoke-static {}, Lcom/geetest/sdk/dialog/views/GtWebView;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Webview-->onPageStarted-->url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .registers 10

    const-string v0, "onReceivedError-->Description: "

    const-string v1, "onReceivedError-->url: "

    .line 1
    iget-object v2, p0, Lcom/geetest/sdk/dialog/views/GtWebView$c;->b:Lcom/geetest/sdk/dialog/views/GtWebView;

    invoke-static {v2}, Lcom/geetest/sdk/dialog/views/GtWebView;->b(Lcom/geetest/sdk/dialog/views/GtWebView;)Lcom/geetest/sdk/aa;

    move-result-object v2

    if-eqz v2, :cond_d6

    const/4 v2, 0x0

    const/16 v3, 0x17

    .line 4
    :try_start_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-static {}, Lcom/geetest/sdk/dialog/views/GtWebView;->c()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_9a

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "-->onReceivedError-->ErrorCode: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-static {}, Lcom/geetest/sdk/dialog/views/GtWebView;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/geetest/sdk/dialog/views/GtWebView;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceivedError-->ErrorCode: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_95} :catch_96

    goto :goto_9a

    :catch_96
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 15
    :cond_9a
    :goto_9a
    :try_start_9a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_ba

    .line 16
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".mp3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ba

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_ba

    .line 21
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_b8} :catch_b9

    return-void

    :catch_b9
    nop

    .line 27
    :cond_ba
    invoke-static {}, Lcom/geetest/sdk/dialog/views/GtWebView;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "webview加载出错 错误码：204_1 中间页地址有误或加载失败"

    invoke-static {v0, v1}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/GtWebView$c;->b:Lcom/geetest/sdk/dialog/views/GtWebView;

    invoke-static {v0}, Lcom/geetest/sdk/dialog/views/GtWebView;->b(Lcom/geetest/sdk/dialog/views/GtWebView;)Lcom/geetest/sdk/aa;

    move-result-object v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d1

    const-string v2, "Webview-->onReceivedError: webview load error !"

    :cond_d1
    const-string v1, "204_1"

    invoke-virtual {v0, v1, v2}, Lcom/geetest/sdk/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_d6
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/GtWebView$c;->b:Lcom/geetest/sdk/dialog/views/GtWebView;

    invoke-static {v0}, Lcom/geetest/sdk/dialog/views/GtWebView;->c(Lcom/geetest/sdk/dialog/views/GtWebView;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_f7

    .line 32
    :try_start_de
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/GtWebView$c;->b:Lcom/geetest/sdk/dialog/views/GtWebView;

    invoke-static {v0}, Lcom/geetest/sdk/dialog/views/GtWebView;->c(Lcom/geetest/sdk/dialog/views/GtWebView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/geetest/sdk/dialog/views/GtWebView$c;->b:Lcom/geetest/sdk/dialog/views/GtWebView;

    invoke-static {v1}, Lcom/geetest/sdk/dialog/views/GtWebView;->d(Lcom/geetest/sdk/dialog/views/GtWebView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 33
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/GtWebView$c;->b:Lcom/geetest/sdk/dialog/views/GtWebView;

    invoke-static {v0}, Lcom/geetest/sdk/dialog/views/GtWebView;->c(Lcom/geetest/sdk/dialog/views/GtWebView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_f7
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_f7} :catch_f7

    .line 37
    :catch_f7
    :cond_f7
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .registers 13

    const-string v0, "?"

    .line 1
    :try_start_2
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {}, Lcom/geetest/sdk/dialog/views/GtWebView;->c()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceivedHttpError-->getStatusCode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/geetest/sdk/dialog/views/GtWebView;->c()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceivedHttpError-->url: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v4, p0, Lcom/geetest/sdk/dialog/views/GtWebView$c;->b:Lcom/geetest/sdk/dialog/views/GtWebView;

    invoke-static {v4}, Lcom/geetest/sdk/dialog/views/GtWebView;->e(Lcom/geetest/sdk/dialog/views/GtWebView;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b8

    iget-object v4, p0, Lcom/geetest/sdk/dialog/views/GtWebView$c;->b:Lcom/geetest/sdk/dialog/views/GtWebView;

    invoke-static {v4}, Lcom/geetest/sdk/dialog/views/GtWebView;->e(Lcom/geetest/sdk/dialog/views/GtWebView;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/geetest/sdk/dialog/views/GtWebView$c;->b:Lcom/geetest/sdk/dialog/views/GtWebView;

    invoke-static {v5}, Lcom/geetest/sdk/dialog/views/GtWebView;->e(Lcom/geetest/sdk/dialog/views/GtWebView;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b8

    .line 8
    iget-object v2, p0, Lcom/geetest/sdk/dialog/views/GtWebView$c;->b:Lcom/geetest/sdk/dialog/views/GtWebView;

    invoke-static {v2}, Lcom/geetest/sdk/dialog/views/GtWebView;->f(Lcom/geetest/sdk/dialog/views/GtWebView;)Lcom/geetest/sdk/model/beans/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/geetest/sdk/model/beans/b;->j()Lcom/geetest/sdk/model/beans/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/geetest/sdk/model/beans/g;->c()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_b8

    .line 9
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_b8

    .line 10
    iget-object v4, p0, Lcom/geetest/sdk/dialog/views/GtWebView$c;->a:Lcom/geetest/sdk/dialog/views/GtWebView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/geetest/sdk/utils/d;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_90} :catch_b4

    const-string v7, "%s/static/appweb/app3-index.html"

    :try_start_92
    new-array v8, v5, [Ljava/lang/Object;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v8, v3

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_b3} :catch_b4

    goto :goto_b8

    :catch_b4
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 17
    :cond_b8
    :goto_b8
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 2
    iget-object p1, p0, Lcom/geetest/sdk/dialog/views/GtWebView$c;->b:Lcom/geetest/sdk/dialog/views/GtWebView;

    invoke-static {p1}, Lcom/geetest/sdk/dialog/views/GtWebView;->b(Lcom/geetest/sdk/dialog/views/GtWebView;)Lcom/geetest/sdk/aa;

    move-result-object p1

    if-eqz p1, :cond_47

    .line 3
    invoke-static {}, Lcom/geetest/sdk/dialog/views/GtWebView;->c()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceivedSslError-->webview加载出错 错误码：204_2 网络证书有误, "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/net/http/SslError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/geetest/sdk/dialog/views/GtWebView$c;->b:Lcom/geetest/sdk/dialog/views/GtWebView;

    invoke-static {p1}, Lcom/geetest/sdk/dialog/views/GtWebView;->b(Lcom/geetest/sdk/dialog/views/GtWebView;)Lcom/geetest/sdk/aa;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Webview-->onReceivedSslError: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/net/http/SslError;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "204_2"

    invoke-virtual {p1, p3, p2}, Lcom/geetest/sdk/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_47
    iget-object p1, p0, Lcom/geetest/sdk/dialog/views/GtWebView$c;->b:Lcom/geetest/sdk/dialog/views/GtWebView;

    invoke-static {p1}, Lcom/geetest/sdk/dialog/views/GtWebView;->c(Lcom/geetest/sdk/dialog/views/GtWebView;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_68

    .line 8
    :try_start_4f
    iget-object p1, p0, Lcom/geetest/sdk/dialog/views/GtWebView$c;->b:Lcom/geetest/sdk/dialog/views/GtWebView;

    invoke-static {p1}, Lcom/geetest/sdk/dialog/views/GtWebView;->c(Lcom/geetest/sdk/dialog/views/GtWebView;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/geetest/sdk/dialog/views/GtWebView$c;->b:Lcom/geetest/sdk/dialog/views/GtWebView;

    invoke-static {p2}, Lcom/geetest/sdk/dialog/views/GtWebView;->d(Lcom/geetest/sdk/dialog/views/GtWebView;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9
    iget-object p1, p0, Lcom/geetest/sdk/dialog/views/GtWebView$c;->b:Lcom/geetest/sdk/dialog/views/GtWebView;

    invoke-static {p1}, Lcom/geetest/sdk/dialog/views/GtWebView;->c(Lcom/geetest/sdk/dialog/views/GtWebView;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_68} :catch_68

    :catch_68
    :cond_68
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .registers 5

    .line 1
    :try_start_0
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "jsinterface"

    .line 3
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_1a

    :catch_16
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    :cond_1a
    :goto_1a
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 5

    if-eqz p1, :cond_28

    if-eqz p2, :cond_28

    .line 1
    iget-object p1, p0, Lcom/geetest/sdk/dialog/views/GtWebView$c;->b:Lcom/geetest/sdk/dialog/views/GtWebView;

    invoke-static {p1}, Lcom/geetest/sdk/dialog/views/GtWebView;->a(Lcom/geetest/sdk/dialog/views/GtWebView;)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 3
    :try_start_c
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 6
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/GtWebView$c;->b:Lcom/geetest/sdk/dialog/views/GtWebView;

    invoke-static {v0}, Lcom/geetest/sdk/dialog/views/GtWebView;->a(Lcom/geetest/sdk/dialog/views/GtWebView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_28} :catch_28

    .line 11
    :catch_28
    :cond_28
    invoke-static {}, Lcom/geetest/sdk/dialog/views/GtWebView;->c()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shouldOverrideUrlLoading-->url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/geetest/sdk/utils/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
