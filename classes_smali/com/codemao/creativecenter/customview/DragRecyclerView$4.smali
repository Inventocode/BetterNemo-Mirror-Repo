.class Lcom/codemao/creativecenter/customview/DragRecyclerView$4;
.super Ljava/lang/Object;
.source "DragRecyclerView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/customview/DragRecyclerView;->revertView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/customview/DragRecyclerView;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/customview/DragRecyclerView;Landroid/view/View;)V
    .registers 3

    .line 309
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView$4;->this$0:Lcom/codemao/creativecenter/customview/DragRecyclerView;

    iput-object p2, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView$4;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 2

    .line 318
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView$4;->val$v:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 319
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView$4;->this$0:Lcom/codemao/creativecenter/customview/DragRecyclerView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/DragRecyclerView;->access$100(Lcom/codemao/creativecenter/customview/DragRecyclerView;)Lcom/codemao/creativecenter/callback/OnItemChangeListener;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 320
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView$4;->this$0:Lcom/codemao/creativecenter/customview/DragRecyclerView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/DragRecyclerView;->access$100(Lcom/codemao/creativecenter/customview/DragRecyclerView;)Lcom/codemao/creativecenter/callback/OnItemChangeListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/codemao/creativecenter/callback/OnItemChangeListener;->onFinishDrag()V

    :cond_16
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method
