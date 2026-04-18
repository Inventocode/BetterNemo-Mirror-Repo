.class public Lcom/lxj/xpopup/core/BubbleHorizontalAttachPopupView;
.super Lcom/lxj/xpopup/core/BubbleAttachPopupView;
.source "BubbleHorizontalAttachPopupView.java"


# instance fields
.field translationX:F

.field translationY:F


# direct methods
.method static synthetic access$000(Lcom/lxj/xpopup/core/BubbleHorizontalAttachPopupView;)Z
    .registers 1

    .line 16
    invoke-direct {p0}, Lcom/lxj/xpopup/core/BubbleHorizontalAttachPopupView;->isShowLeftToTarget()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/lxj/xpopup/core/BubbleHorizontalAttachPopupView;)V
    .registers 1

    .line 16
    invoke-direct {p0}, Lcom/lxj/xpopup/core/BubbleHorizontalAttachPopupView;->doBubble()V

    return-void
.end method

.method private doBubble()V
    .registers 5

    .line 104
    invoke-direct {p0}, Lcom/lxj/xpopup/core/BubbleHorizontalAttachPopupView;->isShowLeftToTarget()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 105
    iget-object v0, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->bubbleContainer:Lcom/lxj/xpopup/widget/BubbleLayout;

    sget-object v1, Lcom/lxj/xpopup/widget/BubbleLayout$Look;->RIGHT:Lcom/lxj/xpopup/widget/BubbleLayout$Look;

    invoke-virtual {v0, v1}, Lcom/lxj/xpopup/widget/BubbleLayout;->setLook(Lcom/lxj/xpopup/widget/BubbleLayout$Look;)V

    goto :goto_15

    .line 107
    :cond_e
    iget-object v0, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->bubbleContainer:Lcom/lxj/xpopup/widget/BubbleLayout;

    sget-object v1, Lcom/lxj/xpopup/widget/BubbleLayout$Look;->LEFT:Lcom/lxj/xpopup/widget/BubbleLayout$Look;

    invoke-virtual {v0, v1}, Lcom/lxj/xpopup/widget/BubbleLayout;->setLook(Lcom/lxj/xpopup/widget/BubbleLayout$Look;)V

    .line 109
    :goto_15
    iget v0, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->defaultOffsetY:I

    if-nez v0, :cond_20

    .line 110
    iget-object v0, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->bubbleContainer:Lcom/lxj/xpopup/widget/BubbleLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lxj/xpopup/widget/BubbleLayout;->setLookPositionCenter(Z)V

    goto :goto_3f

    .line 112
    :cond_20
    iget-object v0, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->bubbleContainer:Lcom/lxj/xpopup/widget/BubbleLayout;

    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000  # 2.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->defaultOffsetY:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->bubbleContainer:Lcom/lxj/xpopup/widget/BubbleLayout;

    iget v3, v3, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookLength:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lxj/xpopup/widget/BubbleLayout;->setLookPosition(I)V

    .line 114
    :goto_3f
    iget-object v0, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->bubbleContainer:Lcom/lxj/xpopup/widget/BubbleLayout;

    invoke-virtual {v0}, Lcom/lxj/xpopup/widget/BubbleLayout;->invalidate()V

    .line 116
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/lxj/xpopup/core/BubbleHorizontalAttachPopupView;->translationX:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 117
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/lxj/xpopup/core/BubbleHorizontalAttachPopupView;->translationY:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 118
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->initAndStartAnimation()V

    return-void
.end method

.method private isShowLeftToTarget()Z
    .registers 3

    .line 122
    iget-boolean v0, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->isShowLeft:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->popupPosition:Lcom/lxj/xpopup/enums/PopupPosition;

    sget-object v1, Lcom/lxj/xpopup/enums/PopupPosition;->Left:Lcom/lxj/xpopup/enums/PopupPosition;

    if-ne v0, v1, :cond_16

    :cond_c
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->popupPosition:Lcom/lxj/xpopup/enums/PopupPosition;

    sget-object v1, Lcom/lxj/xpopup/enums/PopupPosition;->Right:Lcom/lxj/xpopup/enums/PopupPosition;

    if-eq v0, v1, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method


# virtual methods
.method public doAttach()V
    .registers 7

    .line 34
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lxj/xpopup/util/XPopupUtils;->isLayoutRtl(Landroid/content/Context;)Z

    move-result v0

    .line 36
    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object v2, v1, Lcom/lxj/xpopup/core/PopupInfo;->touchPoint:Landroid/graphics/PointF;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_ad

    .line 37
    sget-object v2, Lcom/lxj/xpopup/XPopup;->longClickPoint:Landroid/graphics/PointF;

    if-eqz v2, :cond_16

    iput-object v2, v1, Lcom/lxj/xpopup/core/PopupInfo;->touchPoint:Landroid/graphics/PointF;

    .line 38
    :cond_16
    iget-object v1, v1, Lcom/lxj/xpopup/core/PopupInfo;->touchPoint:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getActivityContentLeft()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v2, v5

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 39
    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object v1, v1, Lcom/lxj/xpopup/core/PopupInfo;->touchPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lxj/xpopup/util/XPopupUtils;->getAppWidth(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v5, 0x40000000  # 2.0f

    div-float/2addr v2, v5

    cmpl-float v1, v1, v2

    if-lez v1, :cond_39

    goto :goto_3a

    :cond_39
    const/4 v3, 0x0

    :goto_3a
    iput-boolean v3, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->isShowLeft:Z

    .line 40
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v0, :cond_64

    .line 43
    iget-boolean v2, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->isShowLeft:Z

    if-eqz v2, :cond_51

    iget-object v2, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object v2, v2, Lcom/lxj/xpopup/core/PopupInfo;->touchPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    goto :goto_61

    :cond_51
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lxj/xpopup/util/XPopupUtils;->getAppWidth(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object v3, v3, Lcom/lxj/xpopup/core/PopupInfo;->touchPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    :goto_61
    iget v3, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->overflow:I

    goto :goto_81

    .line 45
    :cond_64
    iget-boolean v2, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->isShowLeft:Z

    if-eqz v2, :cond_6f

    iget-object v2, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object v2, v2, Lcom/lxj/xpopup/core/PopupInfo;->touchPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    goto :goto_7f

    :cond_6f
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lxj/xpopup/util/XPopupUtils;->getAppWidth(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object v3, v3, Lcom/lxj/xpopup/core/PopupInfo;->touchPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    :goto_7f
    iget v3, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->overflow:I

    :goto_81
    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 47
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    if-le v3, v2, :cond_98

    .line 48
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 50
    :cond_98
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/lxj/xpopup/core/BubbleHorizontalAttachPopupView$1;

    invoke-direct {v2, p0, v0}, Lcom/lxj/xpopup/core/BubbleHorizontalAttachPopupView$1;-><init>(Lcom/lxj/xpopup/core/BubbleHorizontalAttachPopupView;Z)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_134

    .line 69
    :cond_ad
    invoke-virtual {v1}, Lcom/lxj/xpopup/core/PopupInfo;->getAtViewRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 70
    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getActivityContentLeft()I

    move-result v5

    sub-int/2addr v2, v5

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 71
    iget v2, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getActivityContentLeft()I

    move-result v5

    sub-int/2addr v2, v5

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 73
    iget v5, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v2

    div-int/lit8 v5, v5, 0x2

    .line 74
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lxj/xpopup/util/XPopupUtils;->getAppWidth(Landroid/content/Context;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-le v5, v2, :cond_d5

    goto :goto_d6

    :cond_d5
    const/4 v3, 0x0

    :goto_d6
    iput-boolean v3, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->isShowLeft:Z

    .line 75
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v0, :cond_f8

    .line 78
    iget-boolean v3, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->isShowLeft:Z

    if-eqz v3, :cond_e9

    iget v3, v1, Landroid/graphics/Rect;->left:I

    goto :goto_f4

    :cond_e9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/lxj/xpopup/util/XPopupUtils;->getAppWidth(Landroid/content/Context;)I

    move-result v3

    iget v4, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    :goto_f4
    iget v4, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->overflow:I

    :goto_f6
    sub-int/2addr v3, v4

    goto :goto_10d

    .line 80
    :cond_f8
    iget-boolean v3, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->isShowLeft:Z

    if-eqz v3, :cond_ff

    iget v3, v1, Landroid/graphics/Rect;->left:I

    goto :goto_10a

    :cond_ff
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/lxj/xpopup/util/XPopupUtils;->getAppWidth(Landroid/content/Context;)I

    move-result v3

    iget v4, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    :goto_10a
    iget v4, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->overflow:I

    goto :goto_f6

    .line 82
    :goto_10d
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    if-le v4, v3, :cond_121

    .line 83
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 85
    :cond_121
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/lxj/xpopup/core/BubbleHorizontalAttachPopupView$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/lxj/xpopup/core/BubbleHorizontalAttachPopupView$2;-><init>(Lcom/lxj/xpopup/core/BubbleHorizontalAttachPopupView;ZLandroid/graphics/Rect;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_134
    return-void
.end method

.method protected initPopupContent()V
    .registers 3

    .line 23
    iget-object v0, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->bubbleContainer:Lcom/lxj/xpopup/widget/BubbleLayout;

    sget-object v1, Lcom/lxj/xpopup/widget/BubbleLayout$Look;->LEFT:Lcom/lxj/xpopup/widget/BubbleLayout$Look;

    invoke-virtual {v0, v1}, Lcom/lxj/xpopup/widget/BubbleLayout;->setLook(Lcom/lxj/xpopup/widget/BubbleLayout$Look;)V

    .line 24
    invoke-super {p0}, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->initPopupContent()V

    .line 25
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget v1, v0, Lcom/lxj/xpopup/core/PopupInfo;->offsetY:I

    iput v1, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->defaultOffsetY:I

    .line 26
    iget v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->offsetX:I

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40000000  # 2.0f

    invoke-static {v0, v1}, Lcom/lxj/xpopup/util/XPopupUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    :cond_1e
    iput v0, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->defaultOffsetX:I

    return-void
.end method
