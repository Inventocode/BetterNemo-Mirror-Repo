.class Lcom/codemao/creativestore/dsbridge/DWebView$1$1;
.super Ljava/lang/Object;
.source "DWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativestore/dsbridge/DWebView$1;->closePage(Ljava/lang/Object;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/creativestore/dsbridge/DWebView$1;


# direct methods
.method constructor <init>(Lcom/codemao/creativestore/dsbridge/DWebView$1;)V
    .registers 2

    .line 350
    iput-object p1, p0, Lcom/codemao/creativestore/dsbridge/DWebView$1$1;->this$1:Lcom/codemao/creativestore/dsbridge/DWebView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 353
    iget-object v0, p0, Lcom/codemao/creativestore/dsbridge/DWebView$1$1;->this$1:Lcom/codemao/creativestore/dsbridge/DWebView$1;

    iget-object v0, v0, Lcom/codemao/creativestore/dsbridge/DWebView$1;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/creativestore/dsbridge/DWebView;->access$400(Lcom/codemao/creativestore/dsbridge/DWebView;)Lcom/codemao/creativestore/dsbridge/DWebView$JavascriptCloseWindowListener;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/codemao/creativestore/dsbridge/DWebView$1$1;->this$1:Lcom/codemao/creativestore/dsbridge/DWebView$1;

    iget-object v0, v0, Lcom/codemao/creativestore/dsbridge/DWebView$1;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    .line 354
    invoke-static {v0}, Lcom/codemao/creativestore/dsbridge/DWebView;->access$400(Lcom/codemao/creativestore/dsbridge/DWebView;)Lcom/codemao/creativestore/dsbridge/DWebView$JavascriptCloseWindowListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/codemao/creativestore/dsbridge/DWebView$JavascriptCloseWindowListener;->onClose()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 355
    :cond_18
    iget-object v0, p0, Lcom/codemao/creativestore/dsbridge/DWebView$1$1;->this$1:Lcom/codemao/creativestore/dsbridge/DWebView$1;

    iget-object v0, v0, Lcom/codemao/creativestore/dsbridge/DWebView$1;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 356
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_29

    .line 357
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    :cond_29
    return-void
.end method
