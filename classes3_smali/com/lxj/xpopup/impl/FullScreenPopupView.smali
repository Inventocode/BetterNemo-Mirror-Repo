.class public Lcom/lxj/xpopup/impl/FullScreenPopupView;
.super Lcom/lxj/xpopup/core/BasePopupView;
.source "FullScreenPopupView.java"


# instance fields
.field public argbEvaluator:Landroid/animation/ArgbEvaluator;

.field protected contentView:Landroid/view/View;

.field currColor:I

.field protected fullPopupContainer:Landroid/widget/FrameLayout;

.field private paint:Landroid/graphics/Paint;

.field protected shadowRect:Landroid/graphics/Rect;

.field private translateAnimator:Lcom/lxj/xpopup/animator/TranslateAnimator;


# direct methods
.method private doStatusBarColorTransform(Z)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isShow"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    if-eqz v0, :cond_45

    iget-object v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->hasStatusBarShadow:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 79
    iget-object v0, p0, Lcom/lxj/xpopup/impl/FullScreenPopupView;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz p1, :cond_16

    const/4 v3, 0x0

    goto :goto_1a

    .line 80
    :cond_16
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getStatusBarBgColor()I

    move-result v3

    :goto_1a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v3, 0x1

    if-eqz p1, :cond_27

    .line 81
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getStatusBarBgColor()I

    move-result v2

    :cond_27
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v3

    .line 79
    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 82
    new-instance v0, Lcom/lxj/xpopup/impl/FullScreenPopupView$1;

    invoke-direct {v0, p0}, Lcom/lxj/xpopup/impl/FullScreenPopupView$1;-><init>(Lcom/lxj/xpopup/impl/FullScreenPopupView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 89
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getAnimationDuration()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_45
    return-void
.end method


# virtual methods
.method protected addInnerContent()V
    .registers 5

    .line 40
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getImplLayoutId()I

    move-result v1

    iget-object v2, p0, Lcom/lxj/xpopup/impl/FullScreenPopupView;->fullPopupContainer:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lxj/xpopup/impl/FullScreenPopupView;->contentView:Landroid/view/View;

    .line 41
    iget-object v1, p0, Lcom/lxj/xpopup/impl/FullScreenPopupView;->fullPopupContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 56
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 57
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    if-eqz v0, :cond_2b

    iget-object v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->hasStatusBarShadow:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 58
    iget-object v0, p0, Lcom/lxj/xpopup/impl/FullScreenPopupView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/lxj/xpopup/impl/FullScreenPopupView;->currColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getStatusBarHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/lxj/xpopup/impl/FullScreenPopupView;->shadowRect:Landroid/graphics/Rect;

    .line 60
    iget-object v1, p0, Lcom/lxj/xpopup/impl/FullScreenPopupView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_2b
    return-void
.end method

.method protected doDismissAnimation()V
    .registers 2

    .line 72
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->doDismissAnimation()V

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, v0}, Lcom/lxj/xpopup/impl/FullScreenPopupView;->doStatusBarColorTransform(Z)V

    return-void
.end method

.method protected doShowAnimation()V
    .registers 2

    .line 66
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->doShowAnimation()V

    const/4 v0, 0x1

    .line 67
    invoke-direct {p0, v0}, Lcom/lxj/xpopup/impl/FullScreenPopupView;->doStatusBarColorTransform(Z)V

    return-void
.end method

.method protected getInnerLayoutId()I
    .registers 2

    .line 36
    sget v0, Lcom/lxj/xpopup/R$layout;->_xpopup_fullscreen_popup_view:I

    return v0
.end method

.method protected getPopupAnimator()Lcom/lxj/xpopup/animator/PopupAnimator;
    .registers 5

    .line 96
    iget-object v0, p0, Lcom/lxj/xpopup/impl/FullScreenPopupView;->translateAnimator:Lcom/lxj/xpopup/animator/TranslateAnimator;

    if-nez v0, :cond_15

    .line 97
    new-instance v0, Lcom/lxj/xpopup/animator/TranslateAnimator;

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getAnimationDuration()I

    move-result v2

    sget-object v3, Lcom/lxj/xpopup/enums/PopupAnimation;->TranslateFromBottom:Lcom/lxj/xpopup/enums/PopupAnimation;

    invoke-direct {v0, v1, v2, v3}, Lcom/lxj/xpopup/animator/TranslateAnimator;-><init>(Landroid/view/View;ILcom/lxj/xpopup/enums/PopupAnimation;)V

    iput-object v0, p0, Lcom/lxj/xpopup/impl/FullScreenPopupView;->translateAnimator:Lcom/lxj/xpopup/animator/TranslateAnimator;

    .line 99
    :cond_15
    iget-object v0, p0, Lcom/lxj/xpopup/impl/FullScreenPopupView;->translateAnimator:Lcom/lxj/xpopup/animator/TranslateAnimator;

    return-object v0
.end method

.method protected initPopupContent()V
    .registers 3

    .line 45
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->initPopupContent()V

    .line 46
    iget-object v0, p0, Lcom/lxj/xpopup/impl/FullScreenPopupView;->fullPopupContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/lxj/xpopup/impl/FullScreenPopupView;->addInnerContent()V

    .line 47
    :cond_e
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget v1, v1, Lcom/lxj/xpopup/core/PopupInfo;->offsetX:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 48
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget v1, v1, Lcom/lxj/xpopup/core/PopupInfo;->offsetY:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .line 104
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/lxj/xpopup/impl/FullScreenPopupView;->translateAnimator:Lcom/lxj/xpopup/animator/TranslateAnimator;

    if-eqz v0, :cond_23

    .line 105
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lxj/xpopup/impl/FullScreenPopupView;->translateAnimator:Lcom/lxj/xpopup/animator/TranslateAnimator;

    iget v1, v1, Lcom/lxj/xpopup/animator/TranslateAnimator;->startTranslationX:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 106
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lxj/xpopup/impl/FullScreenPopupView;->translateAnimator:Lcom/lxj/xpopup/animator/TranslateAnimator;

    iget v1, v1, Lcom/lxj/xpopup/animator/TranslateAnimator;->startTranslationY:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 107
    iget-object v0, p0, Lcom/lxj/xpopup/impl/FullScreenPopupView;->translateAnimator:Lcom/lxj/xpopup/animator/TranslateAnimator;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/lxj/xpopup/animator/PopupAnimator;->hasInit:Z

    .line 109
    :cond_23
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->onDetachedFromWindow()V

    return-void
.end method
