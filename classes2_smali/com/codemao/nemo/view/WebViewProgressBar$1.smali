.class Lcom/codemao/nemo/view/WebViewProgressBar$1;
.super Ljava/lang/Object;
.source "WebViewProgressBar.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/view/WebViewProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/view/WebViewProgressBar;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/view/WebViewProgressBar;)V
    .registers 2

    .line 94
    iput-object p1, p0, Lcom/codemao/nemo/view/WebViewProgressBar$1;->this$0:Lcom/codemao/nemo/view/WebViewProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 102
    iget-object p1, p0, Lcom/codemao/nemo/view/WebViewProgressBar$1;->this$0:Lcom/codemao/nemo/view/WebViewProgressBar;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/codemao/nemo/view/WebViewProgressBar;->access$002(Lcom/codemao/nemo/view/WebViewProgressBar;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 97
    iget-object p1, p0, Lcom/codemao/nemo/view/WebViewProgressBar$1;->this$0:Lcom/codemao/nemo/view/WebViewProgressBar;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/codemao/nemo/view/WebViewProgressBar;->access$002(Lcom/codemao/nemo/view/WebViewProgressBar;Z)Z

    return-void
.end method
