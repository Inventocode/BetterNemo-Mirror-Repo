.class public abstract Lcom/nemo/commonui/xpopup/core/AttachPopupView;
.super Lcom/nemo/commonui/xpopup/core/BasePopupView;
.source "AttachPopupView.java"


# instance fields
.field protected attachPopupContainer:Lcom/nemo/commonui/xpopup/widget/PartShadowContainer;

.field protected bgDrawableMargin:I

.field protected defaultOffsetX:I

.field protected defaultOffsetY:I

.field isShowLeft:Z

.field public isShowUp:Z

.field maxX:F

.field maxY:F

.field translationX:F

.field translationY:F


# virtual methods
.method protected doAttach()V
    .registers 10

    .line 103
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object v1, v0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->touchPoint:Landroid/graphics/PointF;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_f0

    .line 105
    iget v0, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->maxX:F

    .line 108
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object v0, v0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->touchPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->maxY:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_34

    const/4 v0, 0x1

    goto :goto_35

    :cond_34
    const/4 v0, 0x0

    :goto_35
    if-eqz v0, :cond_51

    .line 110
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object v0, v0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->touchPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->getWindowHeight(Landroid/content/Context;)I

    move-result v1

    div-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4d

    const/4 v0, 0x1

    goto :goto_4e

    :cond_4d
    const/4 v0, 0x0

    :goto_4e
    iput-boolean v0, p0, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->isShowUp:Z

    goto :goto_53

    .line 112
    :cond_51
    iput-boolean v4, p0, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->isShowUp:Z

    .line 114
    :goto_53
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object v0, v0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->touchPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->getWindowWidth(Landroid/content/Context;)I

    move-result v1

    div-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_68

    goto :goto_69

    :cond_68
    const/4 v3, 0x0

    :goto_69
    iput-boolean v3, p0, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->isShowLeft:Z

    .line 117
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->isShowUpToTarget()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 118
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object v1, v1, Lcom/nemo/commonui/xpopup/core/PopupInfo;->touchPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_e2

    .line 119
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object v1, v1, Lcom/nemo/commonui/xpopup/core/PopupInfo;->touchPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->getStatusBarHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 121
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_e2

    .line 124
    :cond_a3
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object v1, v1, Lcom/nemo/commonui/xpopup/core/PopupInfo;->touchPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->getWindowHeight(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_e2

    .line 125
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 126
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->getWindowHeight(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object v2, v2, Lcom/nemo/commonui/xpopup/core/PopupInfo;->touchPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 127
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    :cond_e2
    :goto_e2
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/nemo/commonui/xpopup/core/AttachPopupView$2;

    invoke-direct {v1, p0}, Lcom/nemo/commonui/xpopup/core/AttachPopupView$2;-><init>(Lcom/nemo/commonui/xpopup/core/AttachPopupView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1db

    :cond_f0
    new-array v1, v2, [I

    .line 158
    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/PopupInfo;->getAtView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 159
    new-instance v0, Landroid/graphics/Rect;

    aget v5, v1, v4

    aget v6, v1, v3

    aget v7, v1, v4

    iget-object v8, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    invoke-virtual {v8}, Lcom/nemo/commonui/xpopup/core/PopupInfo;->getAtView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v7, v8

    aget v1, v1, v3

    iget-object v8, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    .line 160
    invoke-virtual {v8}, Lcom/nemo/commonui/xpopup/core/PopupInfo;->getAtView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v1, v8

    invoke-direct {v0, v5, v6, v7, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 162
    iget v1, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v1, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->maxX:F

    .line 163
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v5

    div-int/2addr v1, v2

    .line 167
    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->maxY:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_148

    const/4 v5, 0x1

    goto :goto_149

    :cond_148
    const/4 v5, 0x0

    :goto_149
    if-eqz v5, :cond_162

    .line 169
    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    div-int/2addr v5, v2

    .line 170
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->getWindowHeight(Landroid/content/Context;)I

    move-result v6

    div-int/2addr v6, v2

    if-le v5, v6, :cond_15e

    const/4 v5, 0x1

    goto :goto_15f

    :cond_15e
    const/4 v5, 0x0

    :goto_15f
    iput-boolean v5, p0, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->isShowUp:Z

    goto :goto_164

    .line 172
    :cond_162
    iput-boolean v4, p0, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->isShowUp:Z

    .line 174
    :goto_164
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->getWindowWidth(Landroid/content/Context;)I

    move-result v5

    div-int/2addr v5, v2

    if-ge v1, v5, :cond_170

    goto :goto_171

    :cond_170
    const/4 v3, 0x0

    :goto_171
    iput-boolean v3, p0, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->isShowLeft:Z

    .line 177
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->isShowUpToTarget()Z

    move-result v1

    if-eqz v1, :cond_19e

    .line 178
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    if-le v1, v2, :cond_1cf

    .line 179
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 180
    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-static {}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->getStatusBarHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 181
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1cf

    .line 184
    :cond_19e
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->getWindowHeight(Landroid/content/Context;)I

    move-result v2

    if-le v1, v2, :cond_1cf

    .line 185
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 186
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->getWindowHeight(Landroid/content/Context;)I

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 187
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    :cond_1cf
    :goto_1cf
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/nemo/commonui/xpopup/core/AttachPopupView$3;

    invoke-direct {v2, p0, v0}, Lcom/nemo/commonui/xpopup/core/AttachPopupView$3;-><init>(Lcom/nemo/commonui/xpopup/core/AttachPopupView;Landroid/graphics/Rect;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_1db
    return-void
.end method

.method protected getPopupAnimator()Lcom/nemo/commonui/xpopup/animator/PopupAnimator;
    .registers 4

    .line 225
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->isShowUpToTarget()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 227
    iget-boolean v0, p0, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->isShowLeft:Z

    if-eqz v0, :cond_16

    .line 228
    new-instance v0, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;

    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    sget-object v2, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->ScrollAlphaFromLeftBottom:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    invoke-direct {v0, v1, v2}, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;-><init>(Landroid/view/View;Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)V

    goto :goto_3d

    .line 230
    :cond_16
    new-instance v0, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;

    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    sget-object v2, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->ScrollAlphaFromRightBottom:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    invoke-direct {v0, v1, v2}, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;-><init>(Landroid/view/View;Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)V

    goto :goto_3d

    .line 234
    :cond_22
    iget-boolean v0, p0, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->isShowLeft:Z

    if-eqz v0, :cond_32

    .line 235
    new-instance v0, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;

    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    sget-object v2, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->ScrollAlphaFromLeftTop:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    invoke-direct {v0, v1, v2}, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;-><init>(Landroid/view/View;Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)V

    goto :goto_3d

    .line 237
    :cond_32
    new-instance v0, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;

    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    sget-object v2, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->ScrollAlphaFromRightTop:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    invoke-direct {v0, v1, v2}, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;-><init>(Landroid/view/View;Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)V

    :goto_3d
    return-object v0
.end method

.method protected getPopupBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getPopupLayoutId()I
    .registers 2

    .line 46
    sget v0, Lcom/nemo/commonui/R$layout;->nemocommon_attach_popup_view:I

    return v0
.end method

.method protected initPopupContent()V
    .registers 5

    .line 55
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->initPopupContent()V

    .line 56
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/PopupInfo;->getAtView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object v0, v0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->touchPoint:Landroid/graphics/PointF;

    if-eqz v0, :cond_12

    goto :goto_1a

    .line 57
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "atView() or touchPoint must not be null for AttachPopupView ！"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_1a
    :goto_1a
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget v0, v0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->offsetY:I

    if-nez v0, :cond_2a

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40800000  # 4.0f

    invoke-static {v0, v1}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    :cond_2a
    iput v0, p0, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->defaultOffsetY:I

    .line 60
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget v0, v0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->offsetX:I

    if-nez v0, :cond_3b

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    :cond_3b
    iput v0, p0, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->defaultOffsetX:I

    .line 62
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->attachPopupContainer:Lcom/nemo/commonui/xpopup/widget/PartShadowContainer;

    iget-object v1, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget v1, v1, Lcom/nemo/commonui/xpopup/core/PopupInfo;->offsetX:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 63
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->attachPopupContainer:Lcom/nemo/commonui/xpopup/widget/PartShadowContainer;

    iget-object v1, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget v1, v1, Lcom/nemo/commonui/xpopup/core/PopupInfo;->offsetY:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 64
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object v0, v0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->hasShadowBg:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_af

    .line 65
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_88

    .line 67
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->getPopupBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_6e

    .line 68
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->attachPopupContainer:Lcom/nemo/commonui/xpopup/widget/PartShadowContainer;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_77

    .line 70
    :cond_6e
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->attachPopupContainer:Lcom/nemo/commonui/xpopup/widget/PartShadowContainer;

    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->getPopupBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72
    :goto_77
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->attachPopupContainer:Lcom/nemo/commonui/xpopup/widget/PartShadowContainer;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41200000  # 10.0f

    invoke-static {v1, v2}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setElevation(F)V

    goto :goto_af

    .line 75
    :cond_88
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupImplView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_a6

    .line 76
    iget v0, p0, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->defaultOffsetX:I

    iget v1, p0, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->bgDrawableMargin:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->defaultOffsetX:I

    .line 77
    iget v0, p0, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->defaultOffsetY:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->defaultOffsetY:I

    .line 78
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->attachPopupContainer:Lcom/nemo/commonui/xpopup/widget/PartShadowContainer;

    sget v1, Lcom/nemo/commonui/R$drawable;->nemocommon_shadow:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_af

    .line 80
    :cond_a6
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->attachPopupContainer:Lcom/nemo/commonui/xpopup/widget/PartShadowContainer;

    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->getPopupBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    :cond_af
    :goto_af
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getMaxWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getMaxHeight()I

    move-result v2

    new-instance v3, Lcom/nemo/commonui/xpopup/core/AttachPopupView$1;

    invoke-direct {v3, p0}, Lcom/nemo/commonui/xpopup/core/AttachPopupView$1;-><init>(Lcom/nemo/commonui/xpopup/core/AttachPopupView;)V

    invoke-static {v0, v1, v2, v3}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->applyPopupSize(Landroid/view/ViewGroup;IILjava/lang/Runnable;)V

    return-void
.end method

.method protected isShowUpToTarget()Z
    .registers 3

    .line 218
    iget-boolean v0, p0, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->isShowUp:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object v0, v0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->popupPosition:Lcom/nemo/commonui/xpopup/enums/PopupPosition;

    sget-object v1, Lcom/nemo/commonui/xpopup/enums/PopupPosition;->Top:Lcom/nemo/commonui/xpopup/enums/PopupPosition;

    if-ne v0, v1, :cond_16

    :cond_c
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object v0, v0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->popupPosition:Lcom/nemo/commonui/xpopup/enums/PopupPosition;

    sget-object v1, Lcom/nemo/commonui/xpopup/enums/PopupPosition;->Bottom:Lcom/nemo/commonui/xpopup/enums/PopupPosition;

    if-eq v0, v1, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method
