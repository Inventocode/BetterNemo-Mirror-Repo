.class Lcom/codemao/nemo/view/X5DWebView$1$1;
.super Ljava/lang/Object;
.source "X5DWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/view/X5DWebView$1;->closePage(Ljava/lang/Object;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/nemo/view/X5DWebView$1;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/view/X5DWebView$1;)V
    .registers 2

    .line 333
    iput-object p1, p0, Lcom/codemao/nemo/view/X5DWebView$1$1;->this$1:Lcom/codemao/nemo/view/X5DWebView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 336
    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView$1$1;->this$1:Lcom/codemao/nemo/view/X5DWebView$1;

    iget-object v0, v0, Lcom/codemao/nemo/view/X5DWebView$1;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-static {v0}, Lcom/codemao/nemo/view/X5DWebView;->access$300(Lcom/codemao/nemo/view/X5DWebView;)Lcom/codemao/nemo/view/X5DWebView$JavascriptCloseWindowListener;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView$1$1;->this$1:Lcom/codemao/nemo/view/X5DWebView$1;

    iget-object v0, v0, Lcom/codemao/nemo/view/X5DWebView$1;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    .line 337
    invoke-static {v0}, Lcom/codemao/nemo/view/X5DWebView;->access$300(Lcom/codemao/nemo/view/X5DWebView;)Lcom/codemao/nemo/view/X5DWebView$JavascriptCloseWindowListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/codemao/nemo/view/X5DWebView$JavascriptCloseWindowListener;->onClose()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 338
    :cond_18
    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView$1$1;->this$1:Lcom/codemao/nemo/view/X5DWebView$1;

    iget-object v0, v0, Lcom/codemao/nemo/view/X5DWebView$1;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 339
    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_31

    .line 340
    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView$1$1;->this$1:Lcom/codemao/nemo/view/X5DWebView$1;

    iget-object v0, v0, Lcom/codemao/nemo/view/X5DWebView$1;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    :cond_31
    return-void
.end method
