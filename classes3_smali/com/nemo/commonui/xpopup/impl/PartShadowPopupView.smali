.class public abstract Lcom/nemo/commonui/xpopup/impl/PartShadowPopupView;
.super Lcom/nemo/commonui/xpopup/core/AttachPopupView;
.source "PartShadowPopupView.java"


# virtual methods
.method protected doAttach()V
    .registers 11

    .line 51
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/PopupInfo;->getAtView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_170

    .line 55
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->shadowBgAnimator:Lcom/nemo/commonui/xpopup/animator/ShadowBgAnimator;

    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    .line 58
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

    .line 59
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_39

    .line 61
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    goto :goto_55

    :cond_39
    if-eq v0, v2, :cond_3e

    const/4 v4, 0x3

    if-ne v0, v4, :cond_55

    .line 63
    :cond_3e
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->isNavBarVisible(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_51

    invoke-static {}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->getNavBarHeight()I

    move-result v4

    goto :goto_52

    :cond_51
    const/4 v4, 0x0

    :goto_52
    sub-int/2addr v0, v4

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 67
    :cond_55
    :goto_55
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-boolean v0, v0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->isCenterHorizontal:Z

    if-eqz v0, :cond_7f

    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupImplView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7f

    .line 68
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupImplView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->getWindowWidth(Landroid/content/Context;)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000  # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    sub-float/2addr v4, v6

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationX(F)V

    :cond_7f
    const/4 v0, 0x2

    new-array v4, v0, [I

    .line 73
    iget-object v5, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    invoke-virtual {v5}, Lcom/nemo/commonui/xpopup/core/PopupInfo;->getAtView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 74
    new-instance v5, Landroid/graphics/Rect;

    aget v6, v4, v3

    aget v7, v4, v2

    aget v8, v4, v3

    iget-object v9, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    invoke-virtual {v9}, Lcom/nemo/commonui/xpopup/core/PopupInfo;->getAtView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v8, v9

    aget v4, v4, v2

    iget-object v9, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    .line 75
    invoke-virtual {v9}, Lcom/nemo/commonui/xpopup/core/PopupInfo;->getAtView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v4, v9

    invoke-direct {v5, v6, v7, v8, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 76
    iget v4, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/2addr v6, v0

    add-int/2addr v4, v6

    .line 77
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v6

    div-int/2addr v6, v0

    if-gt v4, v6, :cond_c5

    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object v0, v0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->popupPosition:Lcom/nemo/commonui/xpopup/enums/PopupPosition;

    sget-object v4, Lcom/nemo/commonui/xpopup/enums/PopupPosition;->Top:Lcom/nemo/commonui/xpopup/enums/PopupPosition;

    if-ne v0, v4, :cond_104

    :cond_c5
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object v0, v0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->popupPosition:Lcom/nemo/commonui/xpopup/enums/PopupPosition;

    sget-object v4, Lcom/nemo/commonui/xpopup/enums/PopupPosition;->Bottom:Lcom/nemo/commonui/xpopup/enums/PopupPosition;

    if-eq v0, v4, :cond_104

    .line 79
    iget v0, v5, Landroid/graphics/Rect;->top:I

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 80
    iput-boolean v2, p0, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->isShowUp:Z

    .line 81
    iget v0, p0, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->defaultOffsetY:I

    neg-int v0, v0

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 83
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x50

    .line 85
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 86
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getMaxHeight()I

    move-result v3

    if-eqz v3, :cond_100

    .line 87
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getMaxHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 88
    :cond_100
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_154

    .line 92
    :cond_104
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    iget v2, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 94
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->isNavBarVisible(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_120

    .line 95
    iget v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->getNavBarHeight()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 97
    :cond_120
    iput-boolean v3, p0, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->isShowUp:Z

    .line 98
    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->defaultOffsetY:I

    add-int/2addr v0, v2

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 101
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x30

    .line 103
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 104
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getMaxHeight()I

    move-result v3

    if-eqz v3, :cond_151

    .line 105
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getMaxHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 106
    :cond_151
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    :goto_154
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->attachPopupContainer:Lcom/nemo/commonui/xpopup/widget/PartShadowContainer;

    new-instance v1, Lcom/nemo/commonui/xpopup/impl/PartShadowPopupView$1;

    invoke-direct {v1, p0}, Lcom/nemo/commonui/xpopup/impl/PartShadowPopupView$1;-><init>(Lcom/nemo/commonui/xpopup/impl/PartShadowPopupView;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->attachPopupContainer:Lcom/nemo/commonui/xpopup/widget/PartShadowContainer;

    new-instance v1, Lcom/nemo/commonui/xpopup/impl/PartShadowPopupView$2;

    invoke-direct {v1, p0}, Lcom/nemo/commonui/xpopup/impl/PartShadowPopupView$2;-><init>(Lcom/nemo/commonui/xpopup/impl/PartShadowPopupView;)V

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/widget/PartShadowContainer;->setOnClickOutsideListener(Lcom/nemo/commonui/xpopup/interfaces/OnClickOutsideListener;)V

    return-void

    .line 52
    :cond_170
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "atView must not be null for PartShadowPopupView！"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getPopupAnimator()Lcom/nemo/commonui/xpopup/animator/PopupAnimator;
    .registers 4

    .line 136
    new-instance v0, Lcom/nemo/commonui/xpopup/animator/TranslateAnimator;

    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupImplView()Landroid/view/View;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->isShowUp:Z

    if-eqz v2, :cond_d

    .line 137
    sget-object v2, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->TranslateFromBottom:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    goto :goto_f

    :cond_d
    sget-object v2, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->TranslateFromTop:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    :goto_f
    invoke-direct {v0, v1, v2}, Lcom/nemo/commonui/xpopup/animator/TranslateAnimator;-><init>(Landroid/view/View;Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)V

    return-object v0
.end method

.method protected initPopupContent()V
    .registers 3

    .line 31
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->initPopupContent()V

    .line 32
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget v0, v0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->offsetY:I

    const/4 v1, 0x0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    :cond_12
    iput v0, p0, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->defaultOffsetY:I

    .line 33
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget v0, v0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->offsetX:I

    if-nez v0, :cond_22

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    :cond_22
    iput v0, p0, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->defaultOffsetX:I

    .line 35
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupImplView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget v1, v1, Lcom/nemo/commonui/xpopup/core/PopupInfo;->offsetX:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 36
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupImplView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget v1, v1, Lcom/nemo/commonui/xpopup/core/PopupInfo;->offsetY:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public onNavigationBarChange(Z)V
    .registers 3

    .line 41
    invoke-super {p0, p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onNavigationBarChange(Z)V

    if-nez p1, :cond_20

    .line 43
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 44
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->getWindowHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 45
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_20
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 128
    iget-object p1, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object p1, p1, Lcom/nemo/commonui/xpopup/core/PopupInfo;->isDismissOnTouchOutside:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 129
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    .line 131
    :cond_d
    iget-object p1, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object p1, p1, Lcom/nemo/commonui/xpopup/core/PopupInfo;->isDismissOnTouchOutside:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
