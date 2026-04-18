.class Lcom/codemao/nemo/activity/BoxPlayerActivity$3;
.super Landroid/webkit/WebViewClient;
.source "BoxPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/BoxPlayerActivity;->initWebview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/BoxPlayerActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/BoxPlayerActivity;)V
    .registers 2

    .line 183
    iput-object p1, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity$3;->this$0:Lcom/codemao/nemo/activity/BoxPlayerActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    .line 214
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 215
    iget-object p1, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity$3;->this$0:Lcom/codemao/nemo/activity/BoxPlayerActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/BoxPlayerActivity;->wv_Game:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_17

    .line 216
    iget-object p1, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity$3;->this$0:Lcom/codemao/nemo/activity/BoxPlayerActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/BoxPlayerActivity;->ivNext:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_1e

    .line 218
    :cond_17
    iget-object p1, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity$3;->this$0:Lcom/codemao/nemo/activity/BoxPlayerActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/BoxPlayerActivity;->ivNext:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 220
    :goto_1e
    iget-object p1, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity$3;->this$0:Lcom/codemao/nemo/activity/BoxPlayerActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/BoxPlayerActivity;->wv_Game:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_30

    .line 221
    iget-object p1, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity$3;->this$0:Lcom/codemao/nemo/activity/BoxPlayerActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/BoxPlayerActivity;->ivLast:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_37

    .line 223
    :cond_30
    iget-object p1, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity$3;->this$0:Lcom/codemao/nemo/activity/BoxPlayerActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/BoxPlayerActivity;->ivLast:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    :goto_37
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    .line 199
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 200
    iget-object p1, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity$3;->this$0:Lcom/codemao/nemo/activity/BoxPlayerActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/BoxPlayerActivity;->wv_Game:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p1, :cond_17

    .line 201
    iget-object p1, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity$3;->this$0:Lcom/codemao/nemo/activity/BoxPlayerActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/BoxPlayerActivity;->ivNext:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_1e

    .line 203
    :cond_17
    iget-object p1, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity$3;->this$0:Lcom/codemao/nemo/activity/BoxPlayerActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/BoxPlayerActivity;->ivNext:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 205
    :goto_1e
    iget-object p1, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity$3;->this$0:Lcom/codemao/nemo/activity/BoxPlayerActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/BoxPlayerActivity;->wv_Game:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_30

    .line 206
    iget-object p1, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity$3;->this$0:Lcom/codemao/nemo/activity/BoxPlayerActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/BoxPlayerActivity;->ivLast:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_37

    .line 208
    :cond_30
    iget-object p1, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity$3;->this$0:Lcom/codemao/nemo/activity/BoxPlayerActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/BoxPlayerActivity;->ivLast:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setEnabled(Z)V

    :goto_37
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 4

    if-eqz p2, :cond_5

    .line 188
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    :cond_5
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4

    .line 194
    sget-object p1, Lcom/codemao/nemo/util/WebWhiteListUtils;->INSTANCE:Lcom/codemao/nemo/util/WebWhiteListUtils;

    iget-object v0, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity$3;->this$0:Lcom/codemao/nemo/activity/BoxPlayerActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/BoxPlayerActivity;->wv_Game:Landroid/webkit/WebView;

    invoke-virtual {p1, v0, p2}, Lcom/codemao/nemo/util/WebWhiteListUtils;->loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
