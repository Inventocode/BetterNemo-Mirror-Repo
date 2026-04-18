.class Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO;
.super Landroid/webkit/WebViewClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->initWithOption(Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;Lcom/ishumei/sdk/captcha/SmCaptchaWebView$ResultListener;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private O0000O000000oO:Ljava/util/Timer;

.field private O000O00000OoO:Landroid/os/Handler;

.field final synthetic O000O00000o0O:Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;

.field final synthetic O000O00000oO:Lcom/ishumei/sdk/captcha/SmCaptchaWebView;


# direct methods
.method constructor <init>(Lcom/ishumei/sdk/captcha/SmCaptchaWebView;Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;)V
    .registers 3

    iput-object p1, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO;->O000O00000oO:Lcom/ishumei/sdk/captcha/SmCaptchaWebView;

    iput-object p2, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO;->O000O00000o0O:Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO;->O0000O000000oO:Ljava/util/Timer;

    new-instance p1, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO$O0000O000000oO;

    invoke-direct {p1, p0}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO$O0000O000000oO;-><init>(Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO;)V

    iput-object p1, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO;->O000O00000OoO:Landroid/os/Handler;

    return-void
.end method

.method static synthetic O0000O000000oO(Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO;->O000O00000OoO:Landroid/os/Handler;

    return-object p0
.end method

.method private O0000O000000oO(Ljava/util/TimerTask;JJ)V
    .registers 13

    iget-object v0, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO;->O0000O000000oO:Ljava/util/Timer;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO;->O0000O000000oO:Ljava/util/Timer;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_b} :catch_e
    .catchall {:try_start_3 .. :try_end_b} :catchall_c

    goto :goto_12

    :catchall_c
    move-exception p1

    goto :goto_14

    :catch_e
    move-exception p1

    :try_start_f
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    :goto_12
    monitor-exit v0

    return-void

    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_c

    throw p1
.end method

.method private O000O00000OoO()V
    .registers 3

    iget-object v0, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO;->O0000O000000oO:Ljava/util/Timer;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO;->O0000O000000oO:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_b
    .catchall {:try_start_3 .. :try_end_8} :catchall_9

    goto :goto_f

    :catchall_9
    move-exception v1

    goto :goto_11

    :catch_b
    move-exception v1

    :try_start_c
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    :goto_f
    monitor-exit v0

    return-void

    :goto_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_9

    throw v1
.end method

.method static synthetic O000O00000OoO(Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO;)V
    .registers 1

    invoke-direct {p0}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO;->O000O00000OoO()V

    return-void
.end method


# virtual methods
.method public O0000O000000oO()V
    .registers 3

    iget-object v0, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO;->O000O00000oO:Lcom/ishumei/sdk/captcha/SmCaptchaWebView;

    invoke-static {v0}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->access$600(Lcom/ishumei/sdk/captcha/SmCaptchaWebView;)I

    move-result v0

    iget-object v1, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO;->O000O00000o0O:Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;

    invoke-virtual {v1}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;->getRetry()I

    move-result v1

    if-ge v0, v1, :cond_1b

    iget-object v0, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO;->O000O00000oO:Lcom/ishumei/sdk/captcha/SmCaptchaWebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO;->O000O00000oO:Lcom/ishumei/sdk/captcha/SmCaptchaWebView;

    invoke-virtual {v0}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->reloadCaptcha()V

    return-void

    :cond_1b
    iget-object v0, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO;->O000O00000oO:Lcom/ishumei/sdk/captcha/SmCaptchaWebView;

    invoke-virtual {v0}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->loadDefaultHtml()V

    iget-object v0, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO;->O000O00000oO:Lcom/ishumei/sdk/captcha/SmCaptchaWebView;

    sget v1, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->SMCAPTCHA_WV_NETWORK_ERROR:I

    invoke-static {v0, v1}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->access$500(Lcom/ishumei/sdk/captcha/SmCaptchaWebView;I)V

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO;->O000O00000OoO()V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 12

    iget-object v0, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO;->O000O00000oO:Lcom/ishumei/sdk/captcha/SmCaptchaWebView;

    invoke-static {v0}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->access$100(Lcom/ishumei/sdk/captcha/SmCaptchaWebView;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO;->O000O00000oO:Lcom/ishumei/sdk/captcha/SmCaptchaWebView;

    invoke-static {v0}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->access$100(Lcom/ishumei/sdk/captcha/SmCaptchaWebView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_1e

    :cond_15
    iget-object v0, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO;->O000O00000oO:Lcom/ishumei/sdk/captcha/SmCaptchaWebView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->access$102(Lcom/ishumei/sdk/captcha/SmCaptchaWebView;Ljava/lang/String;)Ljava/lang/String;

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :goto_1e
    new-instance v3, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO$O000O00000OoO;

    invoke-direct {v3, p0}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO$O000O00000OoO;-><init>(Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO;)V

    iget-object p1, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO;->O000O00000o0O:Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;

    invoke-virtual {p1}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;->getTimeout()I

    move-result p1

    int-to-long v4, p1

    const-wide/16 v6, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO;->O0000O000000oO(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO;->O000O00000o0O:Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;

    invoke-virtual {p1}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;->getCaptchaHtml()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_27

    const-string p1, "fengkongcloud.com"

    invoke-virtual {p4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_18

    goto :goto_27

    :cond_18
    iget-object p1, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO;->O000O00000oO:Lcom/ishumei/sdk/captcha/SmCaptchaWebView;

    sget p2, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->SMCAPTCHA_WV_NETWORK_ERROR:I

    invoke-static {p1, p2}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->access$500(Lcom/ishumei/sdk/captcha/SmCaptchaWebView;I)V

    iget-object p1, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO;->O000O00000oO:Lcom/ishumei/sdk/captcha/SmCaptchaWebView;

    const-string p2, "about:blank"

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void

    :cond_27
    :goto_27
    invoke-virtual {p0}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO;->O0000O000000oO()V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x15

    if-lt p1, p3, :cond_29

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO;->O000O00000o0O:Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;

    invoke-virtual {p2}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;->getCaptchaHtml()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_25

    const-string p2, "fengkongcloud.com"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_29

    :cond_25
    invoke-virtual {p0}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO;->O0000O000000oO()V

    return-void

    :cond_29
    iget-object p1, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO;->O000O00000oO:Lcom/ishumei/sdk/captcha/SmCaptchaWebView;

    sget p2, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->SMCAPTCHA_WV_NETWORK_ERROR:I

    invoke-static {p1, p2}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->access$500(Lcom/ishumei/sdk/captcha/SmCaptchaWebView;I)V

    iget-object p1, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO;->O000O00000oO:Lcom/ishumei/sdk/captcha/SmCaptchaWebView;

    const-string p2, "about:blank"

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x15

    if-lt p1, p3, :cond_38

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO;->O000O00000o0O:Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;

    invoke-virtual {p2}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;->getCaptchaHtml()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_35

    const-string p2, "fengkongcloud.com"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_26

    goto :goto_35

    :cond_26
    iget-object p1, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO;->O000O00000oO:Lcom/ishumei/sdk/captcha/SmCaptchaWebView;

    const-string p2, "about:blank"

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO;->O000O00000oO:Lcom/ishumei/sdk/captcha/SmCaptchaWebView;

    sget p2, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->SMCAPTCHA_WV_NETWORK_ERROR:I

    invoke-static {p1, p2}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->access$500(Lcom/ishumei/sdk/captcha/SmCaptchaWebView;I)V

    goto :goto_38

    :cond_35
    :goto_35
    invoke-virtual {p0}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO;->O0000O000000oO()V

    :cond_38
    :goto_38
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 4

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1d

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO;->O000O00000oO:Lcom/ishumei/sdk/captcha/SmCaptchaWebView;

    invoke-static {v1, v0}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->access$200(Lcom/ishumei/sdk/captcha/SmCaptchaWebView;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-static {v0}, Lcom/ishumei/sdk/captcha/SmCaptcha;->O000O00000OoO(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    if-eqz v0, :cond_1d

    return-object v0

    :cond_1d
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 4

    iget-object v0, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO;->O000O00000oO:Lcom/ishumei/sdk/captcha/SmCaptchaWebView;

    invoke-static {v0, p2}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->access$200(Lcom/ishumei/sdk/captcha/SmCaptchaWebView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p2}, Lcom/ishumei/sdk/captcha/SmCaptcha;->O000O00000OoO(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    if-eqz v0, :cond_f

    return-object v0

    :cond_f
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_14

    iget-object v0, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO;->O000O00000oO:Lcom/ishumei/sdk/captcha/SmCaptchaWebView;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->access$000(Lcom/ishumei/sdk/captcha/SmCaptchaWebView;Landroid/webkit/WebView;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 p1, 0x1

    return p1

    :cond_14
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result p1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO;->O000O00000oO:Lcom/ishumei/sdk/captcha/SmCaptchaWebView;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->access$000(Lcom/ishumei/sdk/captcha/SmCaptchaWebView;Landroid/webkit/WebView;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object p1, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO;->O000O00000oO:Lcom/ishumei/sdk/captcha/SmCaptchaWebView;

    invoke-static {p1, p2}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->access$102(Lcom/ishumei/sdk/captcha/SmCaptchaWebView;Ljava/lang/String;)Ljava/lang/String;

    :try_start_11
    iget-object p1, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO;->O000O00000oO:Lcom/ishumei/sdk/captcha/SmCaptchaWebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_16

    :catchall_16
    const/4 p1, 0x1

    return p1

    :cond_18
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
