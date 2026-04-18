.class Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$4;
.super Landroid/webkit/WebChromeClient;
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
.field final synthetic this$0:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;)V
    .registers 2

    .line 247
    iput-object p1, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$4;->this$0:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 3

    .line 259
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 260
    iget-object p1, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$4;->this$0:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-static {p1}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->access$200(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;)Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;->onProgressChange(I)V

    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    .line 251
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 252
    iget-object v0, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$4;->this$0:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    invoke-static {v0}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->access$100(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;)Lcom/codemao/nemo/bean/ShareModel;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/codemao/nemo/bean/ShareModel;->setTitle(Ljava/lang/String;)V

    .line 254
    :cond_f
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method
