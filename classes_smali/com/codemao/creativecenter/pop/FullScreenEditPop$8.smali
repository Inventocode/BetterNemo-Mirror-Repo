.class Lcom/codemao/creativecenter/pop/FullScreenEditPop$8;
.super Ljava/lang/Object;
.source "FullScreenEditPop.java"

# interfaces
.implements Landroidx/core/view/ViewPropertyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/pop/FullScreenEditPop;->hideNotice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)V
    .registers 2

    .line 751
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$8;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .registers 3

    .line 760
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$8;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->access$500(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1b

    iget-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$8;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->access$500(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1b

    iget-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$8;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->access$500(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)I

    move-result p1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_2e

    .line 761
    :cond_1b
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$8;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->access$1000(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 762
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$8;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->access$1100(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 764
    :cond_2e
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$8;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->access$1600(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .registers 2

    return-void
.end method
