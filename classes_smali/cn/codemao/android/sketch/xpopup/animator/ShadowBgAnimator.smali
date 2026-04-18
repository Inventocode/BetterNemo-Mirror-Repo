.class public Lcn/codemao/android/sketch/xpopup/animator/ShadowBgAnimator;
.super Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;
.source "ShadowBgAnimator.java"


# instance fields
.field public argbEvaluator:Landroid/animation/ArgbEvaluator;

.field public isZeroDuration:Z

.field public startColor:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2

    .line 22
    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;-><init>(Landroid/view/View;)V

    .line 18
    new-instance p1, Landroid/animation/ArgbEvaluator;

    invoke-direct {p1}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/sketch/xpopup/animator/ShadowBgAnimator;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lcn/codemao/android/sketch/xpopup/animator/ShadowBgAnimator;->startColor:I

    .line 20
    iput-boolean p1, p0, Lcn/codemao/android/sketch/xpopup/animator/ShadowBgAnimator;->isZeroDuration:Z

    return-void
.end method


# virtual methods
.method public animateDismiss()V
    .registers 5

    .line 45
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/animator/ShadowBgAnimator;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lcn/codemao/android/sketch/xpopup/XPopup;->getShadowBgColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcn/codemao/android/sketch/xpopup/animator/ShadowBgAnimator;->startColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 46
    new-instance v1, Lcn/codemao/android/sketch/xpopup/animator/ShadowBgAnimator$2;

    invoke-direct {v1, p0}, Lcn/codemao/android/sketch/xpopup/animator/ShadowBgAnimator$2;-><init>(Lcn/codemao/android/sketch/xpopup/animator/ShadowBgAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 52
    new-instance v1, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 53
    iget-boolean v1, p0, Lcn/codemao/android/sketch/xpopup/animator/ShadowBgAnimator;->isZeroDuration:Z

    if-eqz v1, :cond_34

    const-wide/16 v1, 0x0

    goto :goto_39

    :cond_34
    invoke-static {}, Lcn/codemao/android/sketch/xpopup/XPopup;->getAnimationDuration()I

    move-result v1

    int-to-long v1, v1

    :goto_39
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public animateShow()V
    .registers 5

    .line 32
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/animator/ShadowBgAnimator;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcn/codemao/android/sketch/xpopup/animator/ShadowBgAnimator;->startColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Lcn/codemao/android/sketch/xpopup/XPopup;->getShadowBgColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 33
    new-instance v1, Lcn/codemao/android/sketch/xpopup/animator/ShadowBgAnimator$1;

    invoke-direct {v1, p0}, Lcn/codemao/android/sketch/xpopup/animator/ShadowBgAnimator$1;-><init>(Lcn/codemao/android/sketch/xpopup/animator/ShadowBgAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 39
    new-instance v1, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 40
    iget-boolean v1, p0, Lcn/codemao/android/sketch/xpopup/animator/ShadowBgAnimator;->isZeroDuration:Z

    if-eqz v1, :cond_34

    const-wide/16 v1, 0x0

    goto :goto_39

    :cond_34
    invoke-static {}, Lcn/codemao/android/sketch/xpopup/XPopup;->getAnimationDuration()I

    move-result v1

    int-to-long v1, v1

    :goto_39
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public initAnimator()V
    .registers 3

    .line 27
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    iget v1, p0, Lcn/codemao/android/sketch/xpopup/animator/ShadowBgAnimator;->startColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method
