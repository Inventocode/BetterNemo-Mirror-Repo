.class public final Lcom/codemao/toolssdk/activity/WebActivity$onCreate$1;
.super Landroid/webkit/WebChromeClient;
.source "WebActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/activity/WebActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityWebBinding;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/databinding/ToolsdkActivityWebBinding;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/activity/WebActivity$onCreate$1;->$binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityWebBinding;

    .line 73
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 3

    .line 75
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 76
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/WebActivity$onCreate$1;->$binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityWebBinding;

    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityWebBinding;->progressBar:Lcom/codemao/toolssdk/view/progress/WebViewProgressBar;

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/view/progress/WebViewProgressBar;->setProgress(I)V

    return-void
.end method
