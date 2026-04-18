.class public Lcom/lxj/xpopup/core/PositionPopupView;
.super Lcom/lxj/xpopup/core/BasePopupView;
.source "PositionPopupView.java"


# instance fields
.field positionPopupContainer:Lcom/lxj/xpopup/widget/PositionPopupContainer;


# direct methods
.method static synthetic access$000(Lcom/lxj/xpopup/core/PositionPopupView;)V
    .registers 1

    .line 21
    invoke-direct {p0}, Lcom/lxj/xpopup/core/PositionPopupView;->doPosition()V

    return-void
.end method

.method private doPosition()V
    .registers 4

    .line 71
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    if-nez v0, :cond_5

    return-void

    .line 72
    :cond_5
    iget-boolean v1, v0, Lcom/lxj/xpopup/core/PopupInfo;->isCenterHorizontal:Z

    if-eqz v1, :cond_3d

    .line 73
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lxj/xpopup/util/XPopupUtils;->isLayoutRtl(Landroid/content/Context;)Z

    move-result v0

    const/high16 v1, 0x40000000  # 2.0f

    if-nez v0, :cond_25

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lxj/xpopup/util/XPopupUtils;->getAppWidth(Landroid/content/Context;)I

    move-result v0

    iget-object v2, p0, Lcom/lxj/xpopup/core/PositionPopupView;->positionPopupContainer:Lcom/lxj/xpopup/widget/PositionPopupContainer;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v0, v2

    goto :goto_35

    .line 74
    :cond_25
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lxj/xpopup/util/XPopupUtils;->getAppWidth(Landroid/content/Context;)I

    move-result v0

    iget-object v2, p0, Lcom/lxj/xpopup/core/PositionPopupView;->positionPopupContainer:Lcom/lxj/xpopup/widget/PositionPopupContainer;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v0, v2

    neg-int v0, v0

    :goto_35
    int-to-float v0, v0

    div-float/2addr v0, v1

    .line 75
    iget-object v1, p0, Lcom/lxj/xpopup/core/PositionPopupView;->positionPopupContainer:Lcom/lxj/xpopup/widget/PositionPopupContainer;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    goto :goto_45

    .line 77
    :cond_3d
    iget-object v1, p0, Lcom/lxj/xpopup/core/PositionPopupView;->positionPopupContainer:Lcom/lxj/xpopup/widget/PositionPopupContainer;

    iget v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->offsetX:I

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 79
    :goto_45
    iget-object v0, p0, Lcom/lxj/xpopup/core/PositionPopupView;->positionPopupContainer:Lcom/lxj/xpopup/widget/PositionPopupContainer;

    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget v1, v1, Lcom/lxj/xpopup/core/PopupInfo;->offsetY:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 80
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/PositionPopupView;->initAndStartAnimation()V

    return-void
.end method


# virtual methods
.method protected doMeasure()V
    .registers 8

    .line 60
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->doMeasure()V

    .line 61
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getMaxWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getMaxHeight()I

    move-result v3

    .line 62
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupHeight()I

    move-result v5

    new-instance v6, Lcom/lxj/xpopup/core/PositionPopupView$3;

    invoke-direct {v6, p0}, Lcom/lxj/xpopup/core/PositionPopupView$3;-><init>(Lcom/lxj/xpopup/core/PositionPopupView;)V

    .line 61
    invoke-static/range {v1 .. v6}, Lcom/lxj/xpopup/util/XPopupUtils;->applyPopupSize(Landroid/view/ViewGroup;IIIILjava/lang/Runnable;)V

    return-void
.end method

.method protected getDragOrientation()Lcom/lxj/xpopup/enums/DragOrientation;
    .registers 2

    .line 98
    sget-object v0, Lcom/lxj/xpopup/enums/DragOrientation;->DragToUp:Lcom/lxj/xpopup/enums/DragOrientation;

    return-object v0
.end method

.method protected final getInnerLayoutId()I
    .registers 2

    .line 33
    sget v0, Lcom/lxj/xpopup/R$layout;->_xpopup_position_popup_view:I

    return v0
.end method

.method protected getPopupAnimator()Lcom/lxj/xpopup/animator/PopupAnimator;
    .registers 5

    .line 90
    new-instance v0, Lcom/lxj/xpopup/animator/ScaleAlphaAnimator;

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getAnimationDuration()I

    move-result v2

    sget-object v3, Lcom/lxj/xpopup/enums/PopupAnimation;->ScaleAlphaFromCenter:Lcom/lxj/xpopup/enums/PopupAnimation;

    invoke-direct {v0, v1, v2, v3}, Lcom/lxj/xpopup/animator/ScaleAlphaAnimator;-><init>(Landroid/view/View;ILcom/lxj/xpopup/enums/PopupAnimation;)V

    return-object v0
.end method

.method protected initAndStartAnimation()V
    .registers 1

    .line 84
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->initAnimator()V

    .line 85
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->doShowAnimation()V

    .line 86
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->doAfterShow()V

    return-void
.end method

.method protected initPopupContent()V
    .registers 8

    .line 38
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->initPopupContent()V

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 40
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 41
    iget-object v0, p0, Lcom/lxj/xpopup/core/PositionPopupView;->positionPopupContainer:Lcom/lxj/xpopup/widget/PositionPopupContainer;

    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-boolean v1, v1, Lcom/lxj/xpopup/core/PopupInfo;->enableDrag:Z

    iput-boolean v1, v0, Lcom/lxj/xpopup/widget/PositionPopupContainer;->enableDrag:Z

    .line 42
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/PositionPopupView;->getDragOrientation()Lcom/lxj/xpopup/enums/DragOrientation;

    move-result-object v1

    iput-object v1, v0, Lcom/lxj/xpopup/widget/PositionPopupContainer;->dragOrientation:Lcom/lxj/xpopup/enums/DragOrientation;

    .line 43
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getMaxWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getMaxHeight()I

    move-result v3

    .line 44
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupHeight()I

    move-result v5

    new-instance v6, Lcom/lxj/xpopup/core/PositionPopupView$1;

    invoke-direct {v6, p0}, Lcom/lxj/xpopup/core/PositionPopupView$1;-><init>(Lcom/lxj/xpopup/core/PositionPopupView;)V

    .line 43
    invoke-static/range {v1 .. v6}, Lcom/lxj/xpopup/util/XPopupUtils;->applyPopupSize(Landroid/view/ViewGroup;IIIILjava/lang/Runnable;)V

    .line 50
    iget-object v0, p0, Lcom/lxj/xpopup/core/PositionPopupView;->positionPopupContainer:Lcom/lxj/xpopup/widget/PositionPopupContainer;

    new-instance v1, Lcom/lxj/xpopup/core/PositionPopupView$2;

    invoke-direct {v1, p0}, Lcom/lxj/xpopup/core/PositionPopupView$2;-><init>(Lcom/lxj/xpopup/core/PositionPopupView;)V

    invoke-virtual {v0, v1}, Lcom/lxj/xpopup/widget/PositionPopupContainer;->setOnPositionDragChangeListener(Lcom/lxj/xpopup/widget/PositionPopupContainer$OnPositionDragListener;)V

    return-void
.end method
