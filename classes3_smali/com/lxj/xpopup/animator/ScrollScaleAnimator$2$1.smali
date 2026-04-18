.class Lcom/lxj/xpopup/animator/ScrollScaleAnimator$2$1;
.super Ljava/lang/Object;
.source "ScrollScaleAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lxj/xpopup/animator/ScrollScaleAnimator$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lxj/xpopup/animator/ScrollScaleAnimator$2;


# direct methods
.method constructor <init>(Lcom/lxj/xpopup/animator/ScrollScaleAnimator$2;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lcom/lxj/xpopup/animator/ScrollScaleAnimator$2$1;->this$1:Lcom/lxj/xpopup/animator/ScrollScaleAnimator$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 109
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 110
    iget-object v0, p0, Lcom/lxj/xpopup/animator/ScrollScaleAnimator$2$1;->this$1:Lcom/lxj/xpopup/animator/ScrollScaleAnimator$2;

    iget-object v0, v0, Lcom/lxj/xpopup/animator/ScrollScaleAnimator$2;->this$0:Lcom/lxj/xpopup/animator/ScrollScaleAnimator;

    iget-object v0, v0, Lcom/lxj/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 111
    iget-object v0, p0, Lcom/lxj/xpopup/animator/ScrollScaleAnimator$2$1;->this$1:Lcom/lxj/xpopup/animator/ScrollScaleAnimator$2;

    iget-object v0, v0, Lcom/lxj/xpopup/animator/ScrollScaleAnimator$2;->this$0:Lcom/lxj/xpopup/animator/ScrollScaleAnimator;

    iget-object v1, v0, Lcom/lxj/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-static {v0}, Lcom/lxj/xpopup/animator/ScrollScaleAnimator;->access$300(Lcom/lxj/xpopup/animator/ScrollScaleAnimator;)Landroid/animation/IntEvaluator;

    move-result-object v0

    iget-object v2, p0, Lcom/lxj/xpopup/animator/ScrollScaleAnimator$2$1;->this$1:Lcom/lxj/xpopup/animator/ScrollScaleAnimator$2;

    iget-object v2, v2, Lcom/lxj/xpopup/animator/ScrollScaleAnimator$2;->this$0:Lcom/lxj/xpopup/animator/ScrollScaleAnimator;

    invoke-static {v2}, Lcom/lxj/xpopup/animator/ScrollScaleAnimator;->access$100(Lcom/lxj/xpopup/animator/ScrollScaleAnimator;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, p1, v2, v3}, Landroid/animation/IntEvaluator;->evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/lxj/xpopup/animator/ScrollScaleAnimator$2$1;->this$1:Lcom/lxj/xpopup/animator/ScrollScaleAnimator$2;

    iget-object v2, v2, Lcom/lxj/xpopup/animator/ScrollScaleAnimator$2;->this$0:Lcom/lxj/xpopup/animator/ScrollScaleAnimator;

    .line 112
    invoke-static {v2}, Lcom/lxj/xpopup/animator/ScrollScaleAnimator;->access$300(Lcom/lxj/xpopup/animator/ScrollScaleAnimator;)Landroid/animation/IntEvaluator;

    move-result-object v2

    iget-object v4, p0, Lcom/lxj/xpopup/animator/ScrollScaleAnimator$2$1;->this$1:Lcom/lxj/xpopup/animator/ScrollScaleAnimator$2;

    iget-object v4, v4, Lcom/lxj/xpopup/animator/ScrollScaleAnimator$2;->this$0:Lcom/lxj/xpopup/animator/ScrollScaleAnimator;

    invoke-static {v4}, Lcom/lxj/xpopup/animator/ScrollScaleAnimator;->access$200(Lcom/lxj/xpopup/animator/ScrollScaleAnimator;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, p1, v4, v3}, Landroid/animation/IntEvaluator;->evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 111
    invoke-virtual {v1, v0, v2}, Landroid/view/View;->scrollTo(II)V

    .line 113
    iget-object v0, p0, Lcom/lxj/xpopup/animator/ScrollScaleAnimator$2$1;->this$1:Lcom/lxj/xpopup/animator/ScrollScaleAnimator$2;

    iget-object v0, v0, Lcom/lxj/xpopup/animator/ScrollScaleAnimator$2;->this$0:Lcom/lxj/xpopup/animator/ScrollScaleAnimator;

    invoke-static {v0, p1}, Lcom/lxj/xpopup/animator/ScrollScaleAnimator;->access$400(Lcom/lxj/xpopup/animator/ScrollScaleAnimator;F)V

    return-void
.end method
