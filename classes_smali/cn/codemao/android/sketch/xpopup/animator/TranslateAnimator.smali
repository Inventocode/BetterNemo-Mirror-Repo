.class public Lcn/codemao/android/sketch/xpopup/animator/TranslateAnimator;
.super Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;
.source "TranslateAnimator.java"


# instance fields
.field private hasInitDefTranslation:Z

.field private initTranslationX:F

.field private initTranslationY:F

.field private oldHeight:I

.field private oldWidth:I

.field private startTranslationX:F

.field private startTranslationY:F


# direct methods
.method public constructor <init>(Landroid/view/View;Lcn/codemao/android/sketch/xpopup/enums/PopupAnimation;)V
    .registers 3

    .line 22
    invoke-direct {p0, p1, p2}, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;-><init>(Landroid/view/View;Lcn/codemao/android/sketch/xpopup/enums/PopupAnimation;)V

    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lcn/codemao/android/sketch/xpopup/animator/TranslateAnimator;->hasInitDefTranslation:Z

    return-void
.end method

.method private applyTranslation()V
    .registers 4

    .line 42
    sget-object v0, Lcn/codemao/android/sketch/xpopup/animator/TranslateAnimator$1;->$SwitchMap$cn$codemao$android$sketch$xpopup$enums$PopupAnimation:[I

    iget-object v1, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->popupAnimation:Lcn/codemao/android/sketch/xpopup/enums/PopupAnimation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_53

    const/4 v1, 0x2

    if-eq v0, v1, :cond_47

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2f

    const/4 v1, 0x4

    if-eq v0, v1, :cond_17

    goto :goto_5e

    .line 53
    :cond_17
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_5e

    .line 50
    :cond_2f
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_5e

    .line 47
    :cond_47
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_5e

    .line 44
    :cond_53
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    :goto_5e
    return-void
.end method


# virtual methods
.method public animateDismiss()V
    .registers 4

    .line 68
    sget-object v0, Lcn/codemao/android/sketch/xpopup/animator/TranslateAnimator$1;->$SwitchMap$cn$codemao$android$sketch$xpopup$enums$PopupAnimation:[I

    iget-object v1, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->popupAnimation:Lcn/codemao/android/sketch/xpopup/enums/PopupAnimation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_47

    const/4 v1, 0x2

    if-eq v0, v1, :cond_37

    const/4 v1, 0x3

    if-eq v0, v1, :cond_27

    const/4 v1, 0x4

    if-eq v0, v1, :cond_17

    goto :goto_56

    .line 79
    :cond_17
    iget v0, p0, Lcn/codemao/android/sketch/xpopup/animator/TranslateAnimator;->startTranslationY:F

    iget-object v1, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lcn/codemao/android/sketch/xpopup/animator/TranslateAnimator;->oldHeight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcn/codemao/android/sketch/xpopup/animator/TranslateAnimator;->startTranslationY:F

    goto :goto_56

    .line 76
    :cond_27
    iget v0, p0, Lcn/codemao/android/sketch/xpopup/animator/TranslateAnimator;->startTranslationX:F

    iget-object v1, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcn/codemao/android/sketch/xpopup/animator/TranslateAnimator;->oldWidth:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcn/codemao/android/sketch/xpopup/animator/TranslateAnimator;->startTranslationX:F

    goto :goto_56

    .line 73
    :cond_37
    iget v0, p0, Lcn/codemao/android/sketch/xpopup/animator/TranslateAnimator;->startTranslationY:F

    iget-object v1, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lcn/codemao/android/sketch/xpopup/animator/TranslateAnimator;->oldHeight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcn/codemao/android/sketch/xpopup/animator/TranslateAnimator;->startTranslationY:F

    goto :goto_56

    .line 70
    :cond_47
    iget v0, p0, Lcn/codemao/android/sketch/xpopup/animator/TranslateAnimator;->startTranslationX:F

    iget-object v1, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcn/codemao/android/sketch/xpopup/animator/TranslateAnimator;->oldWidth:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcn/codemao/android/sketch/xpopup/animator/TranslateAnimator;->startTranslationX:F

    .line 83
    :goto_56
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcn/codemao/android/sketch/xpopup/animator/TranslateAnimator;->startTranslationX:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcn/codemao/android/sketch/xpopup/animator/TranslateAnimator;->startTranslationY:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    .line 84
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 85
    invoke-static {}, Lcn/codemao/android/sketch/xpopup/XPopup;->getAnimationDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public animateShow()V
    .registers 4

    .line 60
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcn/codemao/android/sketch/xpopup/animator/TranslateAnimator;->initTranslationX:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcn/codemao/android/sketch/xpopup/animator/TranslateAnimator;->initTranslationY:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    .line 61
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 62
    invoke-static {}, Lcn/codemao/android/sketch/xpopup/XPopup;->getAnimationDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public initAnimator()V
    .registers 2

    .line 27
    iget-boolean v0, p0, Lcn/codemao/android/sketch/xpopup/animator/TranslateAnimator;->hasInitDefTranslation:Z

    if-nez v0, :cond_17

    .line 28
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, p0, Lcn/codemao/android/sketch/xpopup/animator/TranslateAnimator;->initTranslationX:F

    .line 29
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Lcn/codemao/android/sketch/xpopup/animator/TranslateAnimator;->initTranslationY:F

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcn/codemao/android/sketch/xpopup/animator/TranslateAnimator;->hasInitDefTranslation:Z

    .line 33
    :cond_17
    invoke-direct {p0}, Lcn/codemao/android/sketch/xpopup/animator/TranslateAnimator;->applyTranslation()V

    .line 34
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, p0, Lcn/codemao/android/sketch/xpopup/animator/TranslateAnimator;->startTranslationX:F

    .line 35
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Lcn/codemao/android/sketch/xpopup/animator/TranslateAnimator;->startTranslationY:F

    .line 37
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcn/codemao/android/sketch/xpopup/animator/TranslateAnimator;->oldWidth:I

    .line 38
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcn/codemao/android/sketch/xpopup/animator/TranslateAnimator;->oldHeight:I

    return-void
.end method
