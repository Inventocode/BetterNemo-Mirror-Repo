.class public Lcom/lxj/xpopup/core/HorizontalAttachPopupView;
.super Lcom/lxj/xpopup/core/AttachPopupView;
.source "HorizontalAttachPopupView.java"


# instance fields
.field translationX:F

.field translationY:F


# direct methods
.method static synthetic access$000(Lcom/lxj/xpopup/core/HorizontalAttachPopupView;)Z
    .registers 1

    .line 19
    invoke-direct {p0}, Lcom/lxj/xpopup/core/HorizontalAttachPopupView;->isShowLeftToTarget()Z

    move-result p0

    return p0
.end method

.method private isShowLeftToTarget()Z
    .registers 3

    .line 114
    iget-boolean v0, p0, Lcom/lxj/xpopup/core/AttachPopupView;->isShowLeft:Z

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
    .registers 10

    .line 37
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    if-nez v0, :cond_5

    return-void

    .line 38
    :cond_5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lxj/xpopup/util/XPopupUtils;->isLayoutRtl(Landroid/content/Context;)Z

    move-result v3

    .line 39
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 40
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 42
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object v1, v0, Lcom/lxj/xpopup/core/PopupInfo;->touchPoint:Landroid/graphics/PointF;

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_c2

    .line 43
    sget-object v1, Lcom/lxj/xpopup/XPopup;->longClickPoint:Landroid/graphics/PointF;

    if-eqz v1, :cond_2b

    iput-object v1, v0, Lcom/lxj/xpopup/core/PopupInfo;->touchPoint:Landroid/graphics/PointF;

    .line 45
    :cond_2b
    iget-object v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->touchPoint:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getActivityContentLeft()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v1, v7

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 46
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->touchPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lxj/xpopup/util/XPopupUtils;->getAppWidth(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v7, 0x40000000  # 2.0f

    div-float/2addr v1, v7

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4e

    goto :goto_4f

    :cond_4e
    const/4 v2, 0x0

    :goto_4f
    iput-boolean v2, p0, Lcom/lxj/xpopup/core/AttachPopupView;->isShowLeft:Z

    .line 48
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v3, :cond_79

    .line 51
    iget-boolean v1, p0, Lcom/lxj/xpopup/core/AttachPopupView;->isShowLeft:Z

    if-eqz v1, :cond_66

    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object v1, v1, Lcom/lxj/xpopup/core/PopupInfo;->touchPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    goto :goto_76

    :cond_66
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lxj/xpopup/util/XPopupUtils;->getAppWidth(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object v2, v2, Lcom/lxj/xpopup/core/PopupInfo;->touchPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    :goto_76
    iget v2, p0, Lcom/lxj/xpopup/core/AttachPopupView;->overflow:I

    goto :goto_96

    .line 53
    :cond_79
    iget-boolean v1, p0, Lcom/lxj/xpopup/core/AttachPopupView;->isShowLeft:Z

    if-eqz v1, :cond_84

    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object v1, v1, Lcom/lxj/xpopup/core/PopupInfo;->touchPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    goto :goto_94

    :cond_84
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lxj/xpopup/util/XPopupUtils;->getAppWidth(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object v2, v2, Lcom/lxj/xpopup/core/PopupInfo;->touchPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    :goto_94
    iget v2, p0, Lcom/lxj/xpopup/core/AttachPopupView;->overflow:I

    :goto_96
    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 55
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    if-le v2, v1, :cond_ad

    .line 56
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 58
    :cond_ad
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/lxj/xpopup/core/HorizontalAttachPopupView$1;

    invoke-direct {v1, p0, v3, v5, v6}, Lcom/lxj/xpopup/core/HorizontalAttachPopupView$1;-><init>(Lcom/lxj/xpopup/core/HorizontalAttachPopupView;ZII)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_14c

    .line 77
    :cond_c2
    invoke-virtual {v0}, Lcom/lxj/xpopup/core/PopupInfo;->getAtViewRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 78
    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getActivityContentLeft()I

    move-result v7

    sub-int/2addr v1, v7

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 79
    iget v1, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getActivityContentLeft()I

    move-result v7

    sub-int/2addr v1, v7

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 80
    iget v7, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v1

    div-int/lit8 v7, v7, 0x2

    .line 81
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lxj/xpopup/util/XPopupUtils;->getAppWidth(Landroid/content/Context;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-le v7, v1, :cond_ea

    goto :goto_eb

    :cond_ea
    const/4 v2, 0x0

    :goto_eb
    iput-boolean v2, p0, Lcom/lxj/xpopup/core/AttachPopupView;->isShowLeft:Z

    .line 83
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v3, :cond_10d

    .line 86
    iget-boolean v2, p0, Lcom/lxj/xpopup/core/AttachPopupView;->isShowLeft:Z

    if-eqz v2, :cond_fe

    iget v2, v0, Landroid/graphics/Rect;->left:I

    goto :goto_109

    :cond_fe
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lxj/xpopup/util/XPopupUtils;->getAppWidth(Landroid/content/Context;)I

    move-result v2

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v4

    :goto_109
    iget v4, p0, Lcom/lxj/xpopup/core/AttachPopupView;->overflow:I

    :goto_10b
    sub-int/2addr v2, v4

    goto :goto_122

    .line 88
    :cond_10d
    iget-boolean v2, p0, Lcom/lxj/xpopup/core/AttachPopupView;->isShowLeft:Z

    if-eqz v2, :cond_114

    iget v2, v0, Landroid/graphics/Rect;->left:I

    goto :goto_11f

    :cond_114
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lxj/xpopup/util/XPopupUtils;->getAppWidth(Landroid/content/Context;)I

    move-result v2

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v4

    :goto_11f
    iget v4, p0, Lcom/lxj/xpopup/core/AttachPopupView;->overflow:I

    goto :goto_10b

    .line 90
    :goto_122
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    if-le v4, v2, :cond_136

    .line 91
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupWidth()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 93
    :cond_136
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/lxj/xpopup/core/HorizontalAttachPopupView$2;

    move-object v1, v8

    move-object v2, p0

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Lcom/lxj/xpopup/core/HorizontalAttachPopupView$2;-><init>(Lcom/lxj/xpopup/core/HorizontalAttachPopupView;ZLandroid/graphics/Rect;II)V

    invoke-virtual {v7, v8}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_14c
    return-void
.end method

.method protected getPopupAnimator()Lcom/lxj/xpopup/animator/PopupAnimator;
    .registers 5

    .line 121
    invoke-direct {p0}, Lcom/lxj/xpopup/core/HorizontalAttachPopupView;->isShowLeftToTarget()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 122
    new-instance v0, Lcom/lxj/xpopup/animator/ScrollScaleAnimator;

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getAnimationDuration()I

    move-result v2

    sget-object v3, Lcom/lxj/xpopup/enums/PopupAnimation;->ScrollAlphaFromRight:Lcom/lxj/xpopup/enums/PopupAnimation;

    invoke-direct {v0, v1, v2, v3}, Lcom/lxj/xpopup/animator/ScrollScaleAnimator;-><init>(Landroid/view/View;ILcom/lxj/xpopup/enums/PopupAnimation;)V

    goto :goto_25

    .line 124
    :cond_16
    new-instance v0, Lcom/lxj/xpopup/animator/ScrollScaleAnimator;

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getAnimationDuration()I

    move-result v2

    sget-object v3, Lcom/lxj/xpopup/enums/PopupAnimation;->ScrollAlphaFromLeft:Lcom/lxj/xpopup/enums/PopupAnimation;

    invoke-direct {v0, v1, v2, v3}, Lcom/lxj/xpopup/animator/ScrollScaleAnimator;-><init>(Landroid/view/View;ILcom/lxj/xpopup/enums/PopupAnimation;)V

    :goto_25
    return-object v0
.end method

.method protected initPopupContent()V
    .registers 3

    .line 26
    invoke-super {p0}, Lcom/lxj/xpopup/core/AttachPopupView;->initPopupContent()V

    .line 27
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget v1, v0, Lcom/lxj/xpopup/core/PopupInfo;->offsetY:I

    iput v1, p0, Lcom/lxj/xpopup/core/AttachPopupView;->defaultOffsetY:I

    .line 28
    iget v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->offsetX:I

    if-nez v0, :cond_17

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40000000  # 2.0f

    invoke-static {v0, v1}, Lcom/lxj/xpopup/util/XPopupUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    :cond_17
    iput v0, p0, Lcom/lxj/xpopup/core/AttachPopupView;->defaultOffsetX:I

    return-void
.end method
