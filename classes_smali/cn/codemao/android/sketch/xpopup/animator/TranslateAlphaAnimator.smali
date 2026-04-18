.class public Lcn/codemao/android/sketch/xpopup/animator/TranslateAlphaAnimator;
.super Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;
.source "TranslateAlphaAnimator.java"


# instance fields
.field private defTranslationX:F

.field private defTranslationY:F

.field private startTranslationX:F

.field private startTranslationY:F


# direct methods
.method public constructor <init>(Landroid/view/View;Lcn/codemao/android/sketch/xpopup/enums/PopupAnimation;)V
    .registers 3

    .line 19
    invoke-direct {p0, p1, p2}, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;-><init>(Landroid/view/View;Lcn/codemao/android/sketch/xpopup/enums/PopupAnimation;)V

    return-void
.end method

.method private applyTranslation()V
    .registers 4

    .line 35
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/codemao/android/sketch/xpopup/util/XPopupUtils;->getWindowWidth(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    div-int/2addr v0, v1

    .line 36
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/codemao/android/sketch/xpopup/util/XPopupUtils;->getWindowHeight(Landroid/content/Context;)I

    move-result v0

    div-int/2addr v0, v1

    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    div-int/2addr v0, v1

    .line 37
    sget-object v0, Lcn/codemao/android/sketch/xpopup/animator/TranslateAlphaAnimator$1;->$SwitchMap$cn$codemao$android$sketch$xpopup$enums$PopupAnimation:[I

    iget-object v2, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->popupAnimation:Lcn/codemao/android/sketch/xpopup/enums/PopupAnimation;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5d

    if-eq v0, v1, :cond_51

    const/4 v1, 0x3

    if-eq v0, v1, :cond_46

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3b

    goto :goto_68

    .line 48
    :cond_3b
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_68

    .line 45
    :cond_46
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_68

    .line 42
    :cond_51
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_68

    .line 39
    :cond_5d
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    :goto_68
    return-void
.end method


# virtual methods
.method public animateDismiss()V
    .registers 4

    .line 62
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcn/codemao/android/sketch/xpopup/animator/TranslateAlphaAnimator;->startTranslationX:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcn/codemao/android/sketch/xpopup/animator/TranslateAlphaAnimator;->startTranslationY:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    .line 63
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 64
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

    .line 55
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcn/codemao/android/sketch/xpopup/animator/TranslateAlphaAnimator;->defTranslationX:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcn/codemao/android/sketch/xpopup/animator/TranslateAlphaAnimator;->defTranslationY:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    .line 56
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 57
    invoke-static {}, Lcn/codemao/android/sketch/xpopup/XPopup;->getAnimationDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public initAnimator()V
    .registers 3

    .line 24
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, p0, Lcn/codemao/android/sketch/xpopup/animator/TranslateAlphaAnimator;->defTranslationX:F

    .line 25
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Lcn/codemao/android/sketch/xpopup/animator/TranslateAlphaAnimator;->defTranslationY:F

    .line 27
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 29
    invoke-direct {p0}, Lcn/codemao/android/sketch/xpopup/animator/TranslateAlphaAnimator;->applyTranslation()V

    .line 30
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, p0, Lcn/codemao/android/sketch/xpopup/animator/TranslateAlphaAnimator;->startTranslationX:F

    .line 31
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Lcn/codemao/android/sketch/xpopup/animator/TranslateAlphaAnimator;->startTranslationY:F

    return-void
.end method
