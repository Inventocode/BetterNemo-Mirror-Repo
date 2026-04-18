.class public abstract Lcom/lxj/xpopup/core/BubbleAttachPopupView;
.super Lcom/lxj/xpopup/core/BasePopupView;
.source "BubbleAttachPopupView.java"


# instance fields
.field protected bubbleContainer:Lcom/lxj/xpopup/widget/BubbleLayout;

.field centerY:F

.field protected defaultOffsetX:I

.field protected defaultOffsetY:I

.field public isShowLeft:Z

.field public isShowUp:Z

.field maxY:F

.field overflow:I

.field translationX:F

.field translationY:F


# virtual methods
.method protected addInnerContent()V
    .registers 5

    .line 34
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getImplLayoutId()I

    move-result v1

    iget-object v2, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->bubbleContainer:Lcom/lxj/xpopup/widget/BubbleLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->bubbleContainer:Lcom/lxj/xpopup/widget/BubbleLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public doAttach()V
    .registers 10

    .line 88
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    if-nez v0, :cond_5

    return-void

    .line 89
    :cond_5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lxj/xpopup/util/XPopupUtils;->getAppHeight(Landroid/content/Context;)I

    move-result v0

    iget v1, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->overflow:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->maxY:F

    .line 90
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lxj/xpopup/util/XPopupUtils;->isLayoutRtl(Landroid/content/Context;)Z

    move-result v0

    .line 92
    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object v2, v1, Lcom/lxj/xpopup/core/PopupInfo;->touchPoint:Landroid/graphics/PointF;

    const/high16 v3, 0x40000000  # 2.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_107

    .line 93
    sget-object v2, Lcom/lxj/xpopup/XPopup;->longClickPoint:Landroid/graphics/PointF;

    if-eqz v2, :cond_2b

    iput-object v2, v1, Lcom/lxj/xpopup/core/PopupInfo;->touchPoint:Landroid/graphics/PointF;

    .line 94
    :cond_2b
    iget-object v1, v1, Lcom/lxj/xpopup/core/PopupInfo;->touchPoint:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getActivityContentLeft()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v2, v6

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 95
    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object v1, v1, Lcom/lxj/xpopup/core/PopupInfo;->touchPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->centerY:F

    .line 98
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->maxY:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_51

    const/4 v1, 0x1

    goto :goto_52

    :cond_51
    const/4 v1, 0x0

    :goto_52
    if-eqz v1, :cond_6e

    .line 100
    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object v1, v1, Lcom/lxj/xpopup/core/PopupInfo;->touchPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lxj/xpopup/util/XPopupUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6a

    const/4 v1, 0x1

    goto :goto_6b

    :cond_6a
    const/4 v1, 0x0

    :goto_6b
    iput-boolean v1, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->isShowUp:Z

    goto :goto_70

    .line 102
    :cond_6e
    iput-boolean v5, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->isShowUp:Z

    .line 104
    :goto_70
    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object v1, v1, Lcom/lxj/xpopup/core/PopupInfo;->touchPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lxj/xpopup/util/XPopupUtils;->getAppWidth(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_85

    goto :goto_86

    :cond_85
    const/4 v4, 0x0

    :goto_86
    iput-boolean v4, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->isShowLeft:Z

    .line 107
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 108
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->isShowUpToTarget()Z

    move-result v2

    if-eqz v2, :cond_a5

    iget-object v2, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object v2, v2, Lcom/lxj/xpopup/core/PopupInfo;->touchPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getStatusBarHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->overflow:I

    goto :goto_b7

    .line 109
    :cond_a5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lxj/xpopup/util/XPopupUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object v3, v3, Lcom/lxj/xpopup/core/PopupInfo;->touchPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->overflow:I

    :goto_b7
    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 110
    iget-boolean v3, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->isShowLeft:Z

    if-eqz v3, :cond_c5

    iget-object v3, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object v3, v3, Lcom/lxj/xpopup/core/PopupInfo;->touchPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    goto :goto_d5

    :cond_c5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/lxj/xpopup/util/XPopupUtils;->getAppWidth(Landroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object v4, v4, Lcom/lxj/xpopup/core/PopupInfo;->touchPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    :goto_d5
    iget v4, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->overflow:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    .line 111
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-le v4, v2, :cond_e6

    .line 112
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 114
    :cond_e6
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    if-le v2, v3, :cond_f2

    .line 115
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 117
    :cond_f2
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/lxj/xpopup/core/BubbleAttachPopupView$3;

    invoke-direct {v2, p0, v0}, Lcom/lxj/xpopup/core/BubbleAttachPopupView$3;-><init>(Lcom/lxj/xpopup/core/BubbleAttachPopupView;Z)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1bd

    .line 162
    :cond_107
    invoke-virtual {v1}, Lcom/lxj/xpopup/core/PopupInfo;->getAtViewRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 163
    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getActivityContentLeft()I

    move-result v6

    sub-int/2addr v2, v6

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 164
    iget v2, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getActivityContentLeft()I

    move-result v6

    sub-int/2addr v2, v6

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 165
    iget v6, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v2

    div-int/lit8 v6, v6, 0x2

    .line 169
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v2, v7

    int-to-float v2, v2

    iget v7, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->maxY:F

    cmpl-float v2, v2, v7

    if-lez v2, :cond_136

    const/4 v2, 0x1

    goto :goto_137

    :cond_136
    const/4 v2, 0x0

    .line 170
    :goto_137
    iget v7, v1, Landroid/graphics/Rect;->top:I

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    div-float/2addr v7, v3

    iput v7, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->centerY:F

    if-eqz v2, :cond_145

    .line 173
    iput-boolean v4, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->isShowUp:Z

    goto :goto_147

    .line 175
    :cond_145
    iput-boolean v5, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->isShowUp:Z

    .line 177
    :goto_147
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lxj/xpopup/util/XPopupUtils;->getAppWidth(Landroid/content/Context;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-le v6, v2, :cond_154

    goto :goto_155

    :cond_154
    const/4 v4, 0x0

    :goto_155
    iput-boolean v4, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->isShowLeft:Z

    .line 180
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 181
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->isShowUpToTarget()Z

    move-result v3

    if-eqz v3, :cond_16f

    iget v3, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getStatusBarHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->overflow:I

    goto :goto_17c

    .line 182
    :cond_16f
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/lxj/xpopup/util/XPopupUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v3

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->overflow:I

    :goto_17c
    sub-int/2addr v3, v4

    .line 183
    iget-boolean v4, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->isShowLeft:Z

    if-eqz v4, :cond_184

    iget v4, v1, Landroid/graphics/Rect;->right:I

    goto :goto_18f

    :cond_184
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/lxj/xpopup/util/XPopupUtils;->getAppWidth(Landroid/content/Context;)I

    move-result v4

    iget v5, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    :goto_18f
    iget v5, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->overflow:I

    sub-int/2addr v4, v5

    .line 184
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-le v5, v3, :cond_19e

    .line 185
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 187
    :cond_19e
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    if-le v3, v4, :cond_1aa

    .line 188
    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 190
    :cond_1aa
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/lxj/xpopup/core/BubbleAttachPopupView$4;

    invoke-direct {v3, p0, v1, v0}, Lcom/lxj/xpopup/core/BubbleAttachPopupView$4;-><init>(Lcom/lxj/xpopup/core/BubbleAttachPopupView;Landroid/graphics/Rect;Z)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_1bd
    return-void
.end method

.method protected doMeasure()V
    .registers 8

    .line 69
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->doMeasure()V

    .line 70
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getMaxWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getMaxHeight()I

    move-result v3

    .line 71
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupHeight()I

    move-result v5

    new-instance v6, Lcom/lxj/xpopup/core/BubbleAttachPopupView$2;

    invoke-direct {v6, p0}, Lcom/lxj/xpopup/core/BubbleAttachPopupView$2;-><init>(Lcom/lxj/xpopup/core/BubbleAttachPopupView;)V

    .line 70
    invoke-static/range {v1 .. v6}, Lcom/lxj/xpopup/util/XPopupUtils;->applyPopupSize(Landroid/view/ViewGroup;IIIILjava/lang/Runnable;)V

    return-void
.end method

.method protected final getInnerLayoutId()I
    .registers 2

    .line 40
    sget v0, Lcom/lxj/xpopup/R$layout;->_xpopup_bubble_attach_popup_view:I

    return v0
.end method

.method protected getPopupAnimator()Lcom/lxj/xpopup/animator/PopupAnimator;
    .registers 5

    .line 350
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

    .line 255
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->initAnimator()V

    .line 256
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->doShowAnimation()V

    .line 257
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->doAfterShow()V

    return-void
.end method

.method protected initPopupContent()V
    .registers 8

    .line 48
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->initPopupContent()V

    .line 49
    iget-object v0, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->bubbleContainer:Lcom/lxj/xpopup/widget/BubbleLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->addInnerContent()V

    .line 50
    :cond_e
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object v1, v0, Lcom/lxj/xpopup/core/PopupInfo;->atView:Landroid/view/View;

    if-nez v1, :cond_21

    iget-object v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->touchPoint:Landroid/graphics/PointF;

    if-eqz v0, :cond_19

    goto :goto_21

    .line 51
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "atView() or watchView() must be called for BubbleAttachPopupView before show()！"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_21
    :goto_21
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_37

    .line 53
    iget-object v0, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->bubbleContainer:Lcom/lxj/xpopup/widget/BubbleLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41200000  # 10.0f

    invoke-static {v1, v2}, Lcom/lxj/xpopup/util/XPopupUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 55
    :cond_37
    iget-object v0, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->bubbleContainer:Lcom/lxj/xpopup/widget/BubbleLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/lxj/xpopup/util/XPopupUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lxj/xpopup/widget/BubbleLayout;->setShadowRadius(I)V

    .line 56
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget v1, v0, Lcom/lxj/xpopup/core/PopupInfo;->offsetY:I

    iput v1, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->defaultOffsetY:I

    .line 57
    iget v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->offsetX:I

    iput v0, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->defaultOffsetX:I

    .line 58
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getMaxWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getMaxHeight()I

    move-result v3

    .line 59
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupHeight()I

    move-result v5

    new-instance v6, Lcom/lxj/xpopup/core/BubbleAttachPopupView$1;

    invoke-direct {v6, p0}, Lcom/lxj/xpopup/core/BubbleAttachPopupView$1;-><init>(Lcom/lxj/xpopup/core/BubbleAttachPopupView;)V

    .line 58
    invoke-static/range {v1 .. v6}, Lcom/lxj/xpopup/util/XPopupUtils;->applyPopupSize(Landroid/view/ViewGroup;IIIILjava/lang/Runnable;)V

    return-void
.end method

.method protected isShowUpToTarget()Z
    .registers 6

    .line 262
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-boolean v1, v0, Lcom/lxj/xpopup/core/PopupInfo;->positionByWindowCenter:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1c

    .line 264
    iget v0, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->centerY:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lxj/xpopup/util/XPopupUtils;->getAppHeight(Landroid/content/Context;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v2, 0x0

    :goto_1b
    return v2

    .line 267
    :cond_1c
    iget-boolean v1, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->isShowUp:Z

    if-nez v1, :cond_26

    iget-object v1, v0, Lcom/lxj/xpopup/core/PopupInfo;->popupPosition:Lcom/lxj/xpopup/enums/PopupPosition;

    sget-object v4, Lcom/lxj/xpopup/enums/PopupPosition;->Top:Lcom/lxj/xpopup/enums/PopupPosition;

    if-ne v1, v4, :cond_2d

    :cond_26
    iget-object v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->popupPosition:Lcom/lxj/xpopup/enums/PopupPosition;

    sget-object v1, Lcom/lxj/xpopup/enums/PopupPosition;->Bottom:Lcom/lxj/xpopup/enums/PopupPosition;

    if-eq v0, v1, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v2, 0x0

    :goto_2e
    return v2
.end method
