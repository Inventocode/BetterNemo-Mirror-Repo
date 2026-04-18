.class Lcom/codemao/nemo/activity/BoxPlayerActivity$2;
.super Landroid/webkit/WebChromeClient;
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

    .line 165
    iput-object p1, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity$2;->this$0:Lcom/codemao/nemo/activity/BoxPlayerActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 3

    .line 177
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 178
    iget-object p1, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity$2;->this$0:Lcom/codemao/nemo/activity/BoxPlayerActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/BoxPlayerActivity;->progressBar:Lcom/codemao/nemo/view/WebViewProgressBar;

    if-eqz p1, :cond_c

    .line 179
    invoke-virtual {p1, p2}, Lcom/codemao/nemo/view/WebViewProgressBar;->setProgress(I)V

    :cond_c
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    .line 168
    iget-object v0, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity$2;->this$0:Lcom/codemao/nemo/activity/BoxPlayerActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/BoxPlayerActivity;->access$000(Lcom/codemao/nemo/activity/BoxPlayerActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 169
    iget-object v0, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity$2;->this$0:Lcom/codemao/nemo/activity/BoxPlayerActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/BoxPlayerActivity;->access$100(Lcom/codemao/nemo/activity/BoxPlayerActivity;)Lcom/codemao/nemo/bean/ShareModel;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/codemao/nemo/bean/ShareModel;->setTitle(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/codemao/nemo/activity/BoxPlayerActivity$2;->this$0:Lcom/codemao/nemo/activity/BoxPlayerActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/BoxPlayerActivity;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    :cond_1c
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method
