.class Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator$3;
.super Ljava/lang/Object;
.source "ScrollScaleAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;->animateDismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;


# direct methods
.method constructor <init>(Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;)V
    .registers 2

    .line 132
    iput-object p1, p0, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator$3;->this$0:Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 8

    .line 135
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 136
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator$3;->this$0:Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;

    iget-object v1, v0, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-static {v0}, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;->access$400(Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;)Landroid/animation/FloatEvaluator;

    move-result-object v0

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget-object v3, p0, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator$3;->this$0:Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;

    invoke-static {v3}, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;->access$300(Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, p1, v2, v3}, Landroid/animation/FloatEvaluator;->evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 137
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator$3;->this$0:Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;

    iget-object v1, v0, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-static {v0}, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;->access$500(Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;)Landroid/animation/IntEvaluator;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator$3;->this$0:Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;

    invoke-static {v4}, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;->access$100(Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, p1, v3, v4}, Landroid/animation/IntEvaluator;->evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v4, p0, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator$3;->this$0:Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;

    .line 138
    invoke-static {v4}, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;->access$500(Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;)Landroid/animation/IntEvaluator;

    move-result-object v4

    iget-object v5, p0, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator$3;->this$0:Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;

    invoke-static {v5}, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;->access$200(Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, p1, v3, v5}, Landroid/animation/IntEvaluator;->evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 137
    invoke-virtual {v1, v0, v3}, Landroid/view/View;->scrollTo(II)V

    .line 139
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator$3;->this$0:Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;

    invoke-static {v0}, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;->access$400(Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;)Landroid/animation/FloatEvaluator;

    move-result-object v0

    iget-object v1, p0, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator$3;->this$0:Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;

    invoke-static {v1}, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;->access$600(Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v2, v1}, Landroid/animation/FloatEvaluator;->evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 140
    iget-object v1, p0, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator$3;->this$0:Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;

    iget-object v1, v1, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 141
    iget-object v1, p0, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator$3;->this$0:Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;

    iget-boolean v2, v1, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;->isOnlyScaleX:Z

    if-nez v2, :cond_8b

    iget-object v1, v1, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 142
    :cond_8b
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator$3;->this$0:Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;

    iget-object v0, v0, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_a5

    iget-object v0, p0, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator$3;->this$0:Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;

    iget-object v0, v0, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/high16 v1, 0x437f0000  # 255.0f

    mul-float p1, p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_a5
    return-void
.end method
