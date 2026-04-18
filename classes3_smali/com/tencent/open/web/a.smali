.class public Lcom/tencent/open/web/a;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method private static a(Landroid/webkit/WebSettings;)V
    .registers 4

    const/4 v0, 0x0

    .line 35
    :try_start_1
    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 36
    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 38
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1c

    .line 39
    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 40
    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_14

    goto :goto_1c

    :catch_14
    move-exception p0

    const-string v0, "WebViewUtils"

    const-string v1, "Exception"

    .line 43
    invoke-static {v0, v1, p0}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1c
    :goto_1c
    return-void
.end method

.method public static a(Landroid/webkit/WebView;)V
    .registers 1

    if-nez p0, :cond_3

    return-void

    .line 24
    :cond_3
    invoke-static {p0}, Lcom/tencent/open/web/a;->b(Landroid/webkit/WebView;)V

    .line 26
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 28
    invoke-static {p0}, Lcom/tencent/open/web/a;->a(Landroid/webkit/WebSettings;)V

    .line 29
    invoke-static {p0}, Lcom/tencent/open/web/a;->b(Landroid/webkit/WebSettings;)V

    :cond_12
    return-void
.end method

.method private static b(Landroid/webkit/WebSettings;)V
    .registers 2

    const/4 v0, 0x1

    .line 56
    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    return-void
.end method

.method private static b(Landroid/webkit/WebView;)V
    .registers 3

    .line 48
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_15

    const-string v0, "searchBoxJavaBridge_"

    .line 49
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v0, "accessibility"

    .line 50
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v0, "accessibilityTraversal"

    .line 51
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    :cond_15
    return-void
.end method
