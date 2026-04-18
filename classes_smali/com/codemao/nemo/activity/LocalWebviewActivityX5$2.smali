.class Lcom/codemao/nemo/activity/LocalWebviewActivityX5$2;
.super Lcom/tencent/smtt/sdk/WebChromeClient;
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

    .line 459
    iput-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$2;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivityX5;

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/tencent/smtt/sdk/WebView;I)V
    .registers 3

    .line 475
    invoke-super {p0, p1, p2}, Lcom/tencent/smtt/sdk/WebChromeClient;->onProgressChanged(Lcom/tencent/smtt/sdk/WebView;I)V

    .line 476
    iget-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$2;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivityX5;

    iget-object p1, p1, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->progressBar:Lcom/codemao/nemo/view/WebViewProgressBar;

    if-eqz p1, :cond_c

    .line 477
    invoke-virtual {p1, p2}, Lcom/codemao/nemo/view/WebViewProgressBar;->setProgress(I)V

    :cond_c
    return-void
.end method

.method public onReceivedTitle(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V
    .registers 5

    .line 463
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$2;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivityX5;

    invoke-static {v0}, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->access$600(Lcom/codemao/nemo/activity/LocalWebviewActivityX5;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 464
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$2;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivityX5;

    invoke-static {v0}, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->access$500(Lcom/codemao/nemo/activity/LocalWebviewActivityX5;)Lcom/codemao/nemo/bean/ShareModel;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/codemao/nemo/bean/ShareModel;->setTitle(Ljava/lang/String;)V

    .line 465
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$2;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivityX5;

    iget-object v0, v0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    :cond_1c
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$2;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivityX5;

    invoke-static {v0}, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->access$700(Lcom/codemao/nemo/activity/LocalWebviewActivityX5;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 468
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$2;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivityX5;

    iget-object v0, v0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->tvTitle:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 470
    :cond_2d
    invoke-super {p0, p1, p2}, Lcom/tencent/smtt/sdk/WebChromeClient;->onReceivedTitle(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V

    return-void
.end method
