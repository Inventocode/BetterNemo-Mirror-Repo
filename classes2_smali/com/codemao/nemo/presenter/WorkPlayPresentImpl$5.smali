.class Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$5;
.super Landroid/webkit/WebViewClient;
.source "WorkPlayPresentImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->initWebview(Lcom/codemao/creativestore/dsbridge/DWebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;Lcom/codemao/creativestore/dsbridge/DWebView;)V
    .registers 3

    .line 263
    iput-object p2, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$5;->val$wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 4

    if-eqz p2, :cond_5

    .line 268
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    :cond_5
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4

    const-string p1, "http"

    .line 274
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_e

    .line 275
    iget-object p1, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$5;->val$wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-virtual {p1, p2}, Lcom/codemao/creativestore/dsbridge/DWebView;->loadUrl(Ljava/lang/String;)V

    :cond_e
    return v0
.end method
