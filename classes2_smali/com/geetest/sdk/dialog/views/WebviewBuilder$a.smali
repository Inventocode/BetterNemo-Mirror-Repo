.class Lcom/geetest/sdk/dialog/views/WebviewBuilder$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geetest/sdk/dialog/views/WebviewBuilder;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/geetest/sdk/dialog/views/WebviewBuilder;


# direct methods
.method constructor <init>(Lcom/geetest/sdk/dialog/views/WebviewBuilder;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder$a;->a:Lcom/geetest/sdk/dialog/views/WebviewBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder$a;->a:Lcom/geetest/sdk/dialog/views/WebviewBuilder;

    invoke-static {v0}, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->g(Lcom/geetest/sdk/dialog/views/WebviewBuilder;)Lcom/geetest/sdk/dialog/views/GtWebView;

    move-result-object v0

    const-string v1, "JSInterface"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder$a;->a:Lcom/geetest/sdk/dialog/views/WebviewBuilder;

    invoke-static {v0}, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->g(Lcom/geetest/sdk/dialog/views/WebviewBuilder;)Lcom/geetest/sdk/dialog/views/GtWebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_22

    .line 4
    iget-object v1, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder$a;->a:Lcom/geetest/sdk/dialog/views/WebviewBuilder;

    invoke-static {v1}, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->g(Lcom/geetest/sdk/dialog/views/WebviewBuilder;)Lcom/geetest/sdk/dialog/views/GtWebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 6
    :cond_22
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder$a;->a:Lcom/geetest/sdk/dialog/views/WebviewBuilder;

    invoke-static {v0}, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->g(Lcom/geetest/sdk/dialog/views/WebviewBuilder;)Lcom/geetest/sdk/dialog/views/GtWebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 7
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder$a;->a:Lcom/geetest/sdk/dialog/views/WebviewBuilder;

    invoke-static {v0}, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->g(Lcom/geetest/sdk/dialog/views/WebviewBuilder;)Lcom/geetest/sdk/dialog/views/GtWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geetest/sdk/dialog/views/GtWebView;->destroy()V

    .line 8
    iget-object v0, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder$a;->a:Lcom/geetest/sdk/dialog/views/WebviewBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->a(Lcom/geetest/sdk/dialog/views/WebviewBuilder;Lcom/geetest/sdk/dialog/views/GtWebView;)Lcom/geetest/sdk/dialog/views/GtWebView;

    return-void
.end method
