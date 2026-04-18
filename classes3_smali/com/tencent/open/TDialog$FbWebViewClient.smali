.class Lcom/tencent/open/TDialog$FbWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/open/TDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FbWebViewClient"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/open/TDialog;


# direct methods
.method private constructor <init>(Lcom/tencent/open/TDialog;)V
    .registers 2

    .line 414
    iput-object p1, p0, Lcom/tencent/open/TDialog$FbWebViewClient;->a:Lcom/tencent/open/TDialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/open/TDialog;Lcom/tencent/open/TDialog$1;)V
    .registers 3

    .line 414
    invoke-direct {p0, p1}, Lcom/tencent/open/TDialog$FbWebViewClient;-><init>(Lcom/tencent/open/TDialog;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    .line 487
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 489
    iget-object p1, p0, Lcom/tencent/open/TDialog$FbWebViewClient;->a:Lcom/tencent/open/TDialog;

    invoke-static {p1}, Lcom/tencent/open/TDialog;->d(Lcom/tencent/open/TDialog;)Lcom/tencent/open/c/b;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setVisibility(I)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Webview loading URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "openSDK_LOG.TDialog"

    invoke-static {v1, v0}, Lcom/tencent/open/log/SLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 465
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 466
    iget-object p1, p0, Lcom/tencent/open/TDialog$FbWebViewClient;->a:Lcom/tencent/open/TDialog;

    invoke-static {p1}, Lcom/tencent/open/TDialog;->c(Lcom/tencent/open/TDialog;)Lcom/tencent/open/TDialog$OnTimeListener;

    move-result-object p1

    new-instance v0, Lcom/tencent/tauth/UiError;

    invoke-direct {v0, p2, p3, p4}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/tencent/open/TDialog$OnTimeListener;->onError(Lcom/tencent/tauth/UiError;)V

    .line 471
    iget-object p1, p0, Lcom/tencent/open/TDialog$FbWebViewClient;->a:Lcom/tencent/open/TDialog;

    invoke-static {p1}, Lcom/tencent/open/TDialog;->a(Lcom/tencent/open/TDialog;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    if-eqz p1, :cond_3b

    iget-object p1, p0, Lcom/tencent/open/TDialog$FbWebViewClient;->a:Lcom/tencent/open/TDialog;

    invoke-static {p1}, Lcom/tencent/open/TDialog;->a(Lcom/tencent/open/TDialog;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3b

    .line 472
    iget-object p1, p0, Lcom/tencent/open/TDialog$FbWebViewClient;->a:Lcom/tencent/open/TDialog;

    invoke-static {p1}, Lcom/tencent/open/TDialog;->a(Lcom/tencent/open/TDialog;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const/4 p2, 0x0

    const-string p3, "网络连接异常或系统错误"

    invoke-static {p1, p3, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 473
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 475
    :cond_3b
    iget-object p1, p0, Lcom/tencent/open/TDialog$FbWebViewClient;->a:Lcom/tencent/open/TDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 5

    .line 418
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Redirect URL: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "openSDK_LOG.TDialog"

    invoke-static {v0, p1}, Lcom/tencent/open/log/SLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    invoke-static {}, Lcom/tencent/open/utils/j;->a()Lcom/tencent/open/utils/j;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/open/TDialog$FbWebViewClient;->a:Lcom/tencent/open/TDialog;

    invoke-static {v0}, Lcom/tencent/open/TDialog;->a(Lcom/tencent/open/TDialog;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "auth://tauth.qq.com/"

    invoke-virtual {p1, v0, v1}, Lcom/tencent/open/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_4e

    .line 421
    iget-object p1, p0, Lcom/tencent/open/TDialog$FbWebViewClient;->a:Lcom/tencent/open/TDialog;

    invoke-static {p1}, Lcom/tencent/open/TDialog;->c(Lcom/tencent/open/TDialog;)Lcom/tencent/open/TDialog$OnTimeListener;

    move-result-object p1

    invoke-static {p2}, Lcom/tencent/open/utils/m;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tencent/open/TDialog$OnTimeListener;->onComplete(Ljava/lang/Object;)V

    .line 422
    iget-object p1, p0, Lcom/tencent/open/TDialog$FbWebViewClient;->a:Lcom/tencent/open/TDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_4d

    .line 423
    iget-object p1, p0, Lcom/tencent/open/TDialog$FbWebViewClient;->a:Lcom/tencent/open/TDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_4d
    return v0

    :cond_4e
    const-string p1, "auth://cancel"

    .line 426
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6d

    .line 427
    iget-object p1, p0, Lcom/tencent/open/TDialog$FbWebViewClient;->a:Lcom/tencent/open/TDialog;

    invoke-static {p1}, Lcom/tencent/open/TDialog;->c(Lcom/tencent/open/TDialog;)Lcom/tencent/open/TDialog$OnTimeListener;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/open/TDialog$OnTimeListener;->onCancel()V

    .line 428
    iget-object p1, p0, Lcom/tencent/open/TDialog$FbWebViewClient;->a:Lcom/tencent/open/TDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_6c

    .line 429
    iget-object p1, p0, Lcom/tencent/open/TDialog$FbWebViewClient;->a:Lcom/tencent/open/TDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_6c
    return v0

    :cond_6d
    const-string p1, "auth://close"

    .line 432
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_83

    .line 434
    iget-object p1, p0, Lcom/tencent/open/TDialog$FbWebViewClient;->a:Lcom/tencent/open/TDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_82

    .line 435
    iget-object p1, p0, Lcom/tencent/open/TDialog$FbWebViewClient;->a:Lcom/tencent/open/TDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_82
    return v0

    :cond_83
    const-string p1, "download://"

    .line 438
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9f

    const-string v1, ".apk"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_94

    goto :goto_9f

    :cond_94
    const-string p1, "auth://progress"

    .line 456
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9d

    return v0

    :cond_9d
    const/4 p1, 0x0

    return p1

    .line 442
    :cond_9f
    :goto_9f
    :try_start_9f
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b4

    const/16 p1, 0xb

    .line 443
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_bc

    .line 445
    :cond_b4
    invoke-static {p2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 447
    :goto_bc
    new-instance p2, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p2, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    .line 448
    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 449
    iget-object p1, p0, Lcom/tencent/open/TDialog$FbWebViewClient;->a:Lcom/tencent/open/TDialog;

    invoke-static {p1}, Lcom/tencent/open/TDialog;->a(Lcom/tencent/open/TDialog;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    if-eqz p1, :cond_f0

    iget-object p1, p0, Lcom/tencent/open/TDialog$FbWebViewClient;->a:Lcom/tencent/open/TDialog;

    invoke-static {p1}, Lcom/tencent/open/TDialog;->a(Lcom/tencent/open/TDialog;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_f0

    .line 450
    iget-object p1, p0, Lcom/tencent/open/TDialog$FbWebViewClient;->a:Lcom/tencent/open/TDialog;

    invoke-static {p1}, Lcom/tencent/open/TDialog;->a(Lcom/tencent/open/TDialog;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_eb} :catch_ec

    goto :goto_f0

    :catch_ec
    move-exception p1

    .line 453
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_f0
    :goto_f0
    return v0
.end method
