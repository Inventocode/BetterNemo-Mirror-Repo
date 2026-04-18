.class public abstract Lcom/lxj/xpopup/impl/PartShadowPopupView;
.super Lcom/lxj/xpopup/core/BasePopupView;
.source "PartShadowPopupView.java"


# instance fields
.field protected attachPopupContainer:Lcom/lxj/xpopup/widget/PartShadowContainer;

.field private hasInit:Z

.field public isShowUp:Z


# direct methods
.method static synthetic access$000(Lcom/lxj/xpopup/impl/PartShadowPopupView;)V
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/lxj/xpopup/impl/PartShadowPopupView;->initAndStartAnimation()V

    return-void
.end method

.method private initAndStartAnimation()V
    .registers 2

    .line 76
    iget-boolean v0, p0, Lcom/lxj/xpopup/impl/PartShadowPopupView;->hasInit:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/lxj/xpopup/impl/PartShadowPopupView;->hasInit:Z

    .line 78
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->initAnimator()V

    .line 79
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->doShowAnimation()V

    .line 80
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->doAfterShow()V

    return-void
.end method


# virtual methods
.method protected addInnerContent()V
    .registers 5

    .line 38
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getImplLayoutId()I

    move-result v1

    iget-object v2, p0, Lcom/lxj/xpopup/impl/PartShadowPopupView;->attachPopupContainer:Lcom/lxj/xpopup/widget/PartShadowContainer;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/lxj/xpopup/impl/PartShadowPopupView;->attachPopupContainer:Lcom/lxj/xpopup/widget/PartShadowContainer;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public doAttach()V
    .registers 7

    .line 91
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->atView:Landroid/view/View;

    if-eqz v0, :cond_b6

    .line 95
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 97
    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    invoke-virtual {v1}, Lcom/lxj/xpopup/core/PopupInfo;->getAtViewRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 98
    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 99
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupImplView()Landroid/view/View;

    move-result-object v3

    .line 100
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v4, :cond_31

    .line 101
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 102
    :cond_31
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    if-gt v2, v5, :cond_41

    iget-object v2, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object v2, v2, Lcom/lxj/xpopup/core/PopupInfo;->popupPosition:Lcom/lxj/xpopup/enums/PopupPosition;

    sget-object v5, Lcom/lxj/xpopup/enums/PopupPosition;->Top:Lcom/lxj/xpopup/enums/PopupPosition;

    if-ne v2, v5, :cond_69

    :cond_41
    iget-object v2, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object v2, v2, Lcom/lxj/xpopup/core/PopupInfo;->popupPosition:Lcom/lxj/xpopup/enums/PopupPosition;

    sget-object v5, Lcom/lxj/xpopup/enums/PopupPosition;->Bottom:Lcom/lxj/xpopup/enums/PopupPosition;

    if-eq v2, v5, :cond_69

    .line 104
    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v1, 0x1

    .line 105
    iput-boolean v1, p0, Lcom/lxj/xpopup/impl/PartShadowPopupView;->isShowUp:Z

    const/16 v1, 0x50

    .line 106
    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 107
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getMaxHeight()I

    move-result v1

    if-lez v1, :cond_8f

    .line 108
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getMaxHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_8f

    .line 111
    :cond_69
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v2, 0x0

    .line 112
    iput-boolean v2, p0, Lcom/lxj/xpopup/impl/PartShadowPopupView;->isShowUp:Z

    .line 113
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/16 v1, 0x30

    .line 114
    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 115
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getMaxHeight()I

    move-result v1

    if-lez v1, :cond_8f

    .line 116
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getMaxHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 119
    :cond_8f
    :goto_8f
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/lxj/xpopup/impl/PartShadowPopupView$3;

    invoke-direct {v1, p0}, Lcom/lxj/xpopup/impl/PartShadowPopupView$3;-><init>(Lcom/lxj/xpopup/impl/PartShadowPopupView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 128
    iget-object v0, p0, Lcom/lxj/xpopup/impl/PartShadowPopupView;->attachPopupContainer:Lcom/lxj/xpopup/widget/PartShadowContainer;

    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object v1, v1, Lcom/lxj/xpopup/core/PopupInfo;->notDismissWhenTouchInArea:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/lxj/xpopup/widget/PartShadowContainer;->notDismissArea:Ljava/util/ArrayList;

    .line 129
    new-instance v1, Lcom/lxj/xpopup/impl/PartShadowPopupView$4;

    invoke-direct {v1, p0}, Lcom/lxj/xpopup/impl/PartShadowPopupView$4;-><init>(Lcom/lxj/xpopup/impl/PartShadowPopupView;)V

    invoke-virtual {v0, v1}, Lcom/lxj/xpopup/widget/PartShadowContainer;->setOnClickOutsideListener(Lcom/lxj/xpopup/interfaces/OnClickOutsideListener;)V

    return-void

    .line 92
    :cond_b6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "atView() must be called before show()！"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected doMeasure()V
    .registers 8

    .line 64
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->doMeasure()V

    .line 65
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getMaxWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getMaxHeight()I

    move-result v3

    .line 66
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupHeight()I

    move-result v5

    new-instance v6, Lcom/lxj/xpopup/impl/PartShadowPopupView$2;

    invoke-direct {v6, p0}, Lcom/lxj/xpopup/impl/PartShadowPopupView$2;-><init>(Lcom/lxj/xpopup/impl/PartShadowPopupView;)V

    .line 65
    invoke-static/range {v1 .. v6}, Lcom/lxj/xpopup/util/XPopupUtils;->applyPopupSize(Landroid/view/ViewGroup;IIIILjava/lang/Runnable;)V

    return-void
.end method

.method protected final getInnerLayoutId()I
    .registers 2

    .line 35
    sget v0, Lcom/lxj/xpopup/R$layout;->_xpopup_partshadow_popup_view:I

    return v0
.end method

.method protected getPopupAnimator()Lcom/lxj/xpopup/animator/PopupAnimator;
    .registers 5

    .line 138
    new-instance v0, Lcom/lxj/xpopup/animator/TranslateAnimator;

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupImplView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getAnimationDuration()I

    move-result v2

    iget-boolean v3, p0, Lcom/lxj/xpopup/impl/PartShadowPopupView;->isShowUp:Z

    if-eqz v3, :cond_11

    sget-object v3, Lcom/lxj/xpopup/enums/PopupAnimation;->TranslateFromBottom:Lcom/lxj/xpopup/enums/PopupAnimation;

    goto :goto_13

    :cond_11
    sget-object v3, Lcom/lxj/xpopup/enums/PopupAnimation;->TranslateFromTop:Lcom/lxj/xpopup/enums/PopupAnimation;

    :goto_13
    invoke-direct {v0, v1, v2, v3}, Lcom/lxj/xpopup/animator/TranslateAnimator;-><init>(Landroid/view/View;ILcom/lxj/xpopup/enums/PopupAnimation;)V

    return-object v0
.end method

.method protected initPopupContent()V
    .registers 8

    .line 44
    iget-object v0, p0, Lcom/lxj/xpopup/impl/PartShadowPopupView;->attachPopupContainer:Lcom/lxj/xpopup/widget/PartShadowContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/lxj/xpopup/impl/PartShadowPopupView;->addInnerContent()V

    .line 46
    :cond_b
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->hasShadowBg:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 47
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->shadowBgAnimator:Lcom/lxj/xpopup/animator/ShadowBgAnimator;

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/lxj/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    .line 50
    :cond_1d
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupImplView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget v1, v1, Lcom/lxj/xpopup/core/PopupInfo;->offsetX:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 51
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupImplView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget v1, v1, Lcom/lxj/xpopup/core/PopupInfo;->offsetY:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 52
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupImplView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 53
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getMaxWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getMaxHeight()I

    move-result v3

    .line 54
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupHeight()I

    move-result v5

    new-instance v6, Lcom/lxj/xpopup/impl/PartShadowPopupView$1;

    invoke-direct {v6, p0}, Lcom/lxj/xpopup/impl/PartShadowPopupView$1;-><init>(Lcom/lxj/xpopup/impl/PartShadowPopupView;)V

    .line 53
    invoke-static/range {v1 .. v6}, Lcom/lxj/xpopup/util/XPopupUtils;->applyPopupSize(Landroid/view/ViewGroup;IIIILjava/lang/Runnable;)V

    return-void
.end method

.method protected onDismiss()V
    .registers 2

    .line 85
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->onDismiss()V

    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Lcom/lxj/xpopup/impl/PartShadowPopupView;->hasInit:Z

    return-void
.end method
