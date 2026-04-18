.class public Lcom/lxj/xpopup/animator/ShadowBgAnimator;
.super Lcom/lxj/xpopup/animator/PopupAnimator;
.source "ShadowBgAnimator.java"


# instance fields
.field public argbEvaluator:Landroid/animation/ArgbEvaluator;

.field public isZeroDuration:Z

.field public shadowColor:I

.field public startColor:I


# direct methods
.method public constructor <init>(Landroid/view/View;II)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "animationDuration",
            "shadowColor"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/lxj/xpopup/animator/PopupAnimator;-><init>(Landroid/view/View;I)V

    .line 14
    new-instance p1, Landroid/animation/ArgbEvaluator;

    invoke-direct {p1}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object p1, p0, Lcom/lxj/xpopup/animator/ShadowBgAnimator;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lcom/lxj/xpopup/animator/ShadowBgAnimator;->startColor:I

    .line 16
    iput-boolean p1, p0, Lcom/lxj/xpopup/animator/ShadowBgAnimator;->isZeroDuration:Z

    .line 20
    iput p3, p0, Lcom/lxj/xpopup/animator/ShadowBgAnimator;->shadowColor:I

    return-void
.end method


# virtual methods
.method public animateDismiss()V
    .registers 5

    .line 43
    iget-boolean v0, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->animating:Z

    if-eqz v0, :cond_5

    return-void

    .line 44
    :cond_5
    iget-object v0, p0, Lcom/lxj/xpopup/animator/ShadowBgAnimator;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/lxj/xpopup/animator/ShadowBgAnimator;->shadowColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/lxj/xpopup/animator/ShadowBgAnimator;->startColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 45
    new-instance v1, Lcom/lxj/xpopup/animator/ShadowBgAnimator$2;

    invoke-direct {v1, p0}, Lcom/lxj/xpopup/animator/ShadowBgAnimator$2;-><init>(Lcom/lxj/xpopup/animator/ShadowBgAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 51
    invoke-virtual {p0, v0}, Lcom/lxj/xpopup/animator/PopupAnimator;->observerAnimator(Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 52
    new-instance v1, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 53
    iget-boolean v1, p0, Lcom/lxj/xpopup/animator/ShadowBgAnimator;->isZeroDuration:Z

    if-eqz v1, :cond_3a

    const-wide/16 v1, 0x0

    goto :goto_3d

    :cond_3a
    iget v1, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->animationDuration:I

    int-to-long v1, v1

    :goto_3d
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public animateShow()V
    .registers 5

    .line 30
    iget-object v0, p0, Lcom/lxj/xpopup/animator/ShadowBgAnimator;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/lxj/xpopup/animator/ShadowBgAnimator;->startColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/lxj/xpopup/animator/ShadowBgAnimator;->shadowColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 31
    new-instance v1, Lcom/lxj/xpopup/animator/ShadowBgAnimator$1;

    invoke-direct {v1, p0}, Lcom/lxj/xpopup/animator/ShadowBgAnimator$1;-><init>(Lcom/lxj/xpopup/animator/ShadowBgAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 37
    new-instance v1, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 38
    iget-boolean v1, p0, Lcom/lxj/xpopup/animator/ShadowBgAnimator;->isZeroDuration:Z

    if-eqz v1, :cond_32

    const-wide/16 v1, 0x0

    goto :goto_35

    :cond_32
    iget v1, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->animationDuration:I

    int-to-long v1, v1

    :goto_35
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public applyColorValue(F)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "val"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/lxj/xpopup/animator/ShadowBgAnimator;->calculateBgColor(F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public calculateBgColor(F)I
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fraction"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/lxj/xpopup/animator/ShadowBgAnimator;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    iget v1, p0, Lcom/lxj/xpopup/animator/ShadowBgAnimator;->startColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/lxj/xpopup/animator/ShadowBgAnimator;->shadowColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public initAnimator()V
    .registers 3

    .line 25
    iget-object v0, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    iget v1, p0, Lcom/lxj/xpopup/animator/ShadowBgAnimator;->startColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method
