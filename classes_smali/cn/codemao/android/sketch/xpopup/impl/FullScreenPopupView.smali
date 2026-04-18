.class public Lcn/codemao/android/sketch/xpopup/impl/FullScreenPopupView;
.super Lcn/codemao/android/sketch/xpopup/core/CenterPopupView;
.source "FullScreenPopupView.java"


# instance fields
.field paint:Landroid/graphics/Paint;

.field shadowRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 27
    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/xpopup/core/CenterPopupView;-><init>(Landroid/content/Context;)V

    .line 68
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/sketch/xpopup/impl/FullScreenPopupView;->paint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected applySize(Z)V
    .registers 6

    .line 53
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 54
    invoke-virtual {p0}, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    .line 55
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x30

    .line 56
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 57
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x0

    if-nez p1, :cond_35

    .line 59
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/codemao/android/sketch/xpopup/util/XPopupUtils;->isNavBarVisible(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_33

    goto :goto_35

    :cond_33
    const/4 p1, 0x0

    goto :goto_39

    :cond_35
    :goto_35
    invoke-static {}, Lcn/codemao/android/sketch/xpopup/util/XPopupUtils;->getNavBarHeight()I

    move-result p1

    :goto_39
    if-nez v0, :cond_4b

    .line 61
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3, p1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_60

    :cond_4b
    const/4 p1, 0x1

    if-eq v0, p1, :cond_51

    const/4 p1, 0x3

    if-ne v0, p1, :cond_60

    .line 64
    :cond_51
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {v1, p1, v0, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_60
    :goto_60
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 73
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 74
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->popupInfo:Lcn/codemao/android/sketch/xpopup/core/PopupInfo;

    iget-object v0, v0, Lcn/codemao/android/sketch/xpopup/core/PopupInfo;->hasStatusBarShadow:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 75
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/impl/FullScreenPopupView;->paint:Landroid/graphics/Paint;

    sget v1, Lcn/codemao/android/sketch/xpopup/XPopup;->statusBarShadowColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/codemao/android/sketch/xpopup/util/XPopupUtils;->getWindowWidth(Landroid/content/Context;)I

    move-result v1

    invoke-static {}, Lcn/codemao/android/sketch/xpopup/util/XPopupUtils;->getStatusBarHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcn/codemao/android/sketch/xpopup/impl/FullScreenPopupView;->shadowRect:Landroid/graphics/Rect;

    .line 77
    iget-object v1, p0, Lcn/codemao/android/sketch/xpopup/impl/FullScreenPopupView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_2d
    return-void
.end method

.method protected getMaxWidth()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected getPopupAnimator()Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;
    .registers 4

    .line 89
    new-instance v0, Lcn/codemao/android/sketch/xpopup/animator/TranslateAnimator;

    invoke-virtual {p0}, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    sget-object v2, Lcn/codemao/android/sketch/xpopup/enums/PopupAnimation;->TranslateFromBottom:Lcn/codemao/android/sketch/xpopup/enums/PopupAnimation;

    invoke-direct {v0, v1, v2}, Lcn/codemao/android/sketch/xpopup/animator/TranslateAnimator;-><init>(Landroid/view/View;Lcn/codemao/android/sketch/xpopup/enums/PopupAnimation;)V

    return-object v0
.end method

.method protected initPopupContent()V
    .registers 3

    .line 37
    invoke-super {p0}, Lcn/codemao/android/sketch/xpopup/core/CenterPopupView;->initPopupContent()V

    .line 38
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->popupInfo:Lcn/codemao/android/sketch/xpopup/core/PopupInfo;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, v0, Lcn/codemao/android/sketch/xpopup/core/PopupInfo;->hasShadowBg:Ljava/lang/Boolean;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 83
    invoke-super {p0}, Lcn/codemao/android/sketch/xpopup/core/CenterPopupView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcn/codemao/android/sketch/xpopup/impl/FullScreenPopupView;->paint:Landroid/graphics/Paint;

    return-void
.end method

.method public onNavigationBarChange(Z)V
    .registers 3

    if-nez p1, :cond_e

    .line 44
    invoke-virtual {p0}, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->applyFull()V

    .line 45
    invoke-virtual {p0}, Lcn/codemao/android/sketch/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_12

    :cond_e
    const/4 p1, 0x1

    .line 47
    invoke-virtual {p0, p1}, Lcn/codemao/android/sketch/xpopup/impl/FullScreenPopupView;->applySize(Z)V

    :goto_12
    return-void
.end method
