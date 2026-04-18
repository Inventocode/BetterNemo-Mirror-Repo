.class public Lcom/nemo/commonui/xpopup/animator/TranslateAnimator;
.super Lcom/nemo/commonui/xpopup/animator/PopupAnimator;
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
.method public constructor <init>(Landroid/view/View;Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)V
    .registers 3

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;-><init>(Landroid/view/View;Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)V

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/nemo/commonui/xpopup/animator/TranslateAnimator;->hasInitDefTranslation:Z

    return-void
.end method

.method private applyTranslation()V
    .registers 4

    .line 41
    sget-object v0, Lcom/nemo/commonui/xpopup/animator/TranslateAnimator$1;->$SwitchMap$com$nemo$commonui$xpopup$enums$PopupAnimation:[I

    iget-object v1, p0, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->popupAnimation:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

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

    .line 52
    :cond_17
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_5e

    .line 49
    :cond_2f
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_5e

    .line 46
    :cond_47
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_5e

    .line 43
    :cond_53
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

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

    .line 67
    sget-object v0, Lcom/nemo/commonui/xpopup/animator/TranslateAnimator$1;->$SwitchMap$com$nemo$commonui$xpopup$enums$PopupAnimation:[I

    iget-object v1, p0, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->popupAnimation:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

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

    .line 78
    :cond_17
    iget v0, p0, Lcom/nemo/commonui/xpopup/animator/TranslateAnimator;->startTranslationY:F

    iget-object v1, p0, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lcom/nemo/commonui/xpopup/animator/TranslateAnimator;->oldHeight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/nemo/commonui/xpopup/animator/TranslateAnimator;->startTranslationY:F

    goto :goto_56

    .line 75
    :cond_27
    iget v0, p0, Lcom/nemo/commonui/xpopup/animator/TranslateAnimator;->startTranslationX:F

    iget-object v1, p0, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/nemo/commonui/xpopup/animator/TranslateAnimator;->oldWidth:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/nemo/commonui/xpopup/animator/TranslateAnimator;->startTranslationX:F

    goto :goto_56

    .line 72
    :cond_37
    iget v0, p0, Lcom/nemo/commonui/xpopup/animator/TranslateAnimator;->startTranslationY:F

    iget-object v1, p0, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lcom/nemo/commonui/xpopup/animator/TranslateAnimator;->oldHeight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/nemo/commonui/xpopup/animator/TranslateAnimator;->startTranslationY:F

    goto :goto_56

    .line 69
    :cond_47
    iget v0, p0, Lcom/nemo/commonui/xpopup/animator/TranslateAnimator;->startTranslationX:F

    iget-object v1, p0, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/nemo/commonui/xpopup/animator/TranslateAnimator;->oldWidth:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/nemo/commonui/xpopup/animator/TranslateAnimator;->startTranslationX:F

    .line 82
    :goto_56
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/nemo/commonui/xpopup/animator/TranslateAnimator;->startTranslationX:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/nemo/commonui/xpopup/animator/TranslateAnimator;->startTranslationY:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    .line 83
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 84
    invoke-static {}, Lcom/nemo/commonui/xpopup/XPopup;->getAnimationDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public animateShow()V
    .registers 4

    .line 59
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/nemo/commonui/xpopup/animator/TranslateAnimator;->initTranslationX:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/nemo/commonui/xpopup/animator/TranslateAnimator;->initTranslationY:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    .line 60
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 61
    invoke-static {}, Lcom/nemo/commonui/xpopup/XPopup;->getAnimationDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public initAnimator()V
    .registers 2

    .line 26
    iget-boolean v0, p0, Lcom/nemo/commonui/xpopup/animator/TranslateAnimator;->hasInitDefTranslation:Z

    if-nez v0, :cond_17

    .line 27
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, p0, Lcom/nemo/commonui/xpopup/animator/TranslateAnimator;->initTranslationX:F

    .line 28
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Lcom/nemo/commonui/xpopup/animator/TranslateAnimator;->initTranslationY:F

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/nemo/commonui/xpopup/animator/TranslateAnimator;->hasInitDefTranslation:Z

    .line 32
    :cond_17
    invoke-direct {p0}, Lcom/nemo/commonui/xpopup/animator/TranslateAnimator;->applyTranslation()V

    .line 33
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, p0, Lcom/nemo/commonui/xpopup/animator/TranslateAnimator;->startTranslationX:F

    .line 34
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Lcom/nemo/commonui/xpopup/animator/TranslateAnimator;->startTranslationY:F

    .line 36
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/nemo/commonui/xpopup/animator/TranslateAnimator;->oldWidth:I

    .line 37
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/nemo/commonui/xpopup/animator/TranslateAnimator;->oldHeight:I

    return-void
.end method
