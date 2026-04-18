.class Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator$2;
.super Ljava/lang/Object;
.source "ScrollScaleAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;->animateShow()V
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

    .line 109
    iput-object p1, p0, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator$2;->this$0:Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 8

    .line 112
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 113
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator$2;->this$0:Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;

    iget-object v1, v0, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-static {v0}, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;->access$400(Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;)Landroid/animation/FloatEvaluator;

    move-result-object v0

    iget-object v2, p0, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator$2;->this$0:Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;

    invoke-static {v2}, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;->access$300(Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, p1, v2, v3}, Landroid/animation/FloatEvaluator;->evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 114
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator$2;->this$0:Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;

    iget-object v1, v0, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-static {v0}, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;->access$500(Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;)Landroid/animation/IntEvaluator;

    move-result-object v0

    iget-object v2, p0, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator$2;->this$0:Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;

    invoke-static {v2}, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;->access$100(Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, p1, v2, v4}, Landroid/animation/IntEvaluator;->evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator$2;->this$0:Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;

    .line 115
    invoke-static {v2}, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;->access$500(Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;)Landroid/animation/IntEvaluator;

    move-result-object v2

    iget-object v5, p0, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator$2;->this$0:Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;

    invoke-static {v5}, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;->access$200(Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, p1, v5, v4}, Landroid/animation/IntEvaluator;->evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 114
    invoke-virtual {v1, v0, v2}, Landroid/view/View;->scrollTo(II)V

    .line 116
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator$2;->this$0:Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;

    invoke-static {v0}, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;->access$400(Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;)Landroid/animation/FloatEvaluator;

    move-result-object v0

    iget-object v1, p0, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator$2;->this$0:Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;

    invoke-static {v1}, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;->access$600(Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1, v3}, Landroid/animation/FloatEvaluator;->evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 117
    iget-object v1, p0, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator$2;->this$0:Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;

    iget-object v1, v1, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 118
    iget-object v1, p0, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator$2;->this$0:Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;

    iget-boolean v2, v1, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;->isOnlyScaleX:Z

    if-nez v2, :cond_8b

    iget-object v1, v1, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    :cond_8b
    const v0, 0x3f666666  # 0.9f

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_b1

    .line 119
    iget-object v1, p0, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator$2;->this$0:Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;

    iget-object v1, v1, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_b1

    sub-float/2addr p1, v0

    const v0, 0x3dcccccd  # 0.1f

    div-float/2addr p1, v0

    .line 121
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator$2;->this$0:Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;

    iget-object v0, v0, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/high16 v1, 0x437f0000  # 255.0f

    mul-float p1, p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_b1
    return-void
.end method
