.class public abstract Lcom/lxj/xpopup/core/AttachPopupView;
.super Lcom/lxj/xpopup/core/BasePopupView;
.source "AttachPopupView.java"


# instance fields
.field protected attachPopupContainer:Landroid/widget/FrameLayout;

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

    .line 37
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getImplLayoutId()I

    move-result v1

    iget-object v2, p0, Lcom/lxj/xpopup/core/AttachPopupView;->attachPopupContainer:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/lxj/xpopup/core/AttachPopupView;->attachPopupContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected applyBg()V
    .registers 4

    .line 84
    iget-boolean v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->isCreated:Z

    if-nez v0, :cond_74

    .line 86
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x0

    if-lt v0, v1, :cond_48

    .line 88
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupImplView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 90
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupImplView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 92
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/lxj/xpopup/core/AttachPopupView;->attachPopupContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 94
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupImplView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 101
    :cond_37
    iget-object v0, p0, Lcom/lxj/xpopup/core/AttachPopupView;->attachPopupContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41200000  # 10.0f

    invoke-static {v1, v2}, Lcom/lxj/xpopup/util/XPopupUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setElevation(F)V

    goto :goto_74

    .line 104
    :cond_48
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupImplView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_74

    .line 105
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupImplView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_74

    .line 107
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/lxj/xpopup/core/AttachPopupView;->attachPopupContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 109
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupImplView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_74
    :goto_74
    return-void
.end method

.method public doAttach()V
    .registers 11

    .line 126
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    if-nez v0, :cond_5

    return-void

    .line 127
    :cond_5
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getNavBarHeight()I

    move-result v0

    .line 128
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lxj/xpopup/util/XPopupUtils;->getAppHeight(Landroid/content/Context;)I

    move-result v1

    iget v2, p0, Lcom/lxj/xpopup/core/AttachPopupView;->overflow:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    int-to-float v1, v1

    iput v1, p0, Lcom/lxj/xpopup/core/AttachPopupView;->maxY:F

    .line 129
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lxj/xpopup/util/XPopupUtils;->isLayoutRtl(Landroid/content/Context;)Z

    move-result v1

    .line 131
    iget-object v2, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object v3, v2, Lcom/lxj/xpopup/core/PopupInfo;->touchPoint:Landroid/graphics/PointF;

    const/high16 v4, 0x40000000  # 2.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_119

    .line 132
    sget-object v3, Lcom/lxj/xpopup/XPopup;->longClickPoint:Landroid/graphics/PointF;

    if-eqz v3, :cond_30

    iput-object v3, v2, Lcom/lxj/xpopup/core/PopupInfo;->touchPoint:Landroid/graphics/PointF;

    .line 133
    :cond_30
    iget-object v2, v2, Lcom/lxj/xpopup/core/PopupInfo;->touchPoint:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getActivityContentLeft()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v3, v7

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 134
    iget-object v2, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object v2, v2, Lcom/lxj/xpopup/core/PopupInfo;->touchPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iput v2, p0, Lcom/lxj/xpopup/core/AttachPopupView;->centerY:F

    .line 137
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/lxj/xpopup/core/AttachPopupView;->maxY:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_56

    const/4 v2, 0x1

    goto :goto_57

    :cond_56
    const/4 v2, 0x0

    :goto_57
    if-eqz v2, :cond_73

    .line 139
    iget-object v2, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object v2, v2, Lcom/lxj/xpopup/core/PopupInfo;->touchPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/lxj/xpopup/util/XPopupUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6f

    const/4 v2, 0x1

    goto :goto_70

    :cond_6f
    const/4 v2, 0x0

    :goto_70
    iput-boolean v2, p0, Lcom/lxj/xpopup/core/AttachPopupView;->isShowUp:Z

    goto :goto_75

    .line 141
    :cond_73
    iput-boolean v6, p0, Lcom/lxj/xpopup/core/AttachPopupView;->isShowUp:Z

    .line 143
    :goto_75
    iget-object v2, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object v2, v2, Lcom/lxj/xpopup/core/PopupInfo;->touchPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/lxj/xpopup/util/XPopupUtils;->getAppWidth(Landroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_8a

    goto :goto_8b

    :cond_8a
    const/4 v5, 0x0

    :goto_8b
    iput-boolean v5, p0, Lcom/lxj/xpopup/core/AttachPopupView;->isShowLeft:Z

    .line 146
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 147
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/AttachPopupView;->isShowUpToTarget()Z

    move-result v3

    if-eqz v3, :cond_ac

    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->touchPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getStatusBarHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/lxj/xpopup/core/AttachPopupView;->overflow:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    goto :goto_c3

    .line 148
    :cond_ac
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/lxj/xpopup/util/XPopupUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object v4, v4, Lcom/lxj/xpopup/core/PopupInfo;->touchPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/lxj/xpopup/core/AttachPopupView;->overflow:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    int-to-float v0, v0

    sub-float v0, v3, v0

    :goto_c3
    float-to-int v0, v0

    .line 149
    iget-boolean v3, p0, Lcom/lxj/xpopup/core/AttachPopupView;->isShowLeft:Z

    if-eqz v3, :cond_d9

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/lxj/xpopup/util/XPopupUtils;->getAppWidth(Landroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object v4, v4, Lcom/lxj/xpopup/core/PopupInfo;->touchPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    goto :goto_df

    :cond_d9
    iget-object v3, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object v3, v3, Lcom/lxj/xpopup/core/PopupInfo;->touchPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    :goto_df
    iget v4, p0, Lcom/lxj/xpopup/core/AttachPopupView;->overflow:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    .line 150
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-le v4, v0, :cond_f0

    .line 151
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 153
    :cond_f0
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-le v0, v3, :cond_104

    .line 154
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupWidth()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 156
    :cond_104
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/lxj/xpopup/core/AttachPopupView$3;

    invoke-direct {v2, p0, v1}, Lcom/lxj/xpopup/core/AttachPopupView$3;-><init>(Lcom/lxj/xpopup/core/AttachPopupView;Z)V

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1fd

    .line 201
    :cond_119
    invoke-virtual {v2}, Lcom/lxj/xpopup/core/PopupInfo;->getAtViewRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 202
    iget v3, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getActivityContentLeft()I

    move-result v7

    sub-int/2addr v3, v7

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 203
    iget v3, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getActivityContentLeft()I

    move-result v7

    sub-int/2addr v3, v7

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 205
    iget v7, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v3

    div-int/lit8 v7, v7, 0x2

    .line 209
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v3, v8

    int-to-float v3, v3

    iget v8, p0, Lcom/lxj/xpopup/core/AttachPopupView;->maxY:F

    cmpl-float v3, v3, v8

    if-lez v3, :cond_148

    const/4 v3, 0x1

    goto :goto_149

    :cond_148
    const/4 v3, 0x0

    .line 210
    :goto_149
    iget v8, v2, Landroid/graphics/Rect;->top:I

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v8

    int-to-float v9, v9

    div-float/2addr v9, v4

    iput v9, p0, Lcom/lxj/xpopup/core/AttachPopupView;->centerY:F

    if-eqz v3, :cond_17a

    .line 213
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getStatusBarHeight()I

    move-result v3

    sub-int/2addr v8, v3

    iget v3, p0, Lcom/lxj/xpopup/core/AttachPopupView;->overflow:I

    sub-int/2addr v8, v3

    .line 214
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-le v3, v8, :cond_177

    int-to-float v3, v8

    .line 216
    iget v4, p0, Lcom/lxj/xpopup/core/AttachPopupView;->maxY:F

    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    sub-float/2addr v4, v8

    cmpl-float v3, v3, v4

    if-lez v3, :cond_173

    const/4 v3, 0x1

    goto :goto_174

    :cond_173
    const/4 v3, 0x0

    :goto_174
    iput-boolean v3, p0, Lcom/lxj/xpopup/core/AttachPopupView;->isShowUp:Z

    goto :goto_17c

    .line 218
    :cond_177
    iput-boolean v5, p0, Lcom/lxj/xpopup/core/AttachPopupView;->isShowUp:Z

    goto :goto_17c

    .line 222
    :cond_17a
    iput-boolean v6, p0, Lcom/lxj/xpopup/core/AttachPopupView;->isShowUp:Z

    .line 224
    :goto_17c
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/lxj/xpopup/util/XPopupUtils;->getAppWidth(Landroid/content/Context;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    if-ge v7, v3, :cond_189

    goto :goto_18a

    :cond_189
    const/4 v5, 0x0

    :goto_18a
    iput-boolean v5, p0, Lcom/lxj/xpopup/core/AttachPopupView;->isShowLeft:Z

    .line 228
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 229
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/AttachPopupView;->isShowUpToTarget()Z

    move-result v4

    if-eqz v4, :cond_1a5

    iget v0, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getStatusBarHeight()I

    move-result v4

    sub-int/2addr v0, v4

    iget v4, p0, Lcom/lxj/xpopup/core/AttachPopupView;->overflow:I

    sub-int/2addr v0, v4

    goto :goto_1b5

    .line 230
    :cond_1a5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/lxj/xpopup/util/XPopupUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/lxj/xpopup/core/AttachPopupView;->overflow:I

    sub-int/2addr v4, v5

    sub-int v0, v4, v0

    .line 231
    :goto_1b5
    iget-boolean v4, p0, Lcom/lxj/xpopup/core/AttachPopupView;->isShowLeft:Z

    if-eqz v4, :cond_1c5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/lxj/xpopup/util/XPopupUtils;->getAppWidth(Landroid/content/Context;)I

    move-result v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    goto :goto_1c7

    :cond_1c5
    iget v4, v2, Landroid/graphics/Rect;->right:I

    :goto_1c7
    iget v5, p0, Lcom/lxj/xpopup/core/AttachPopupView;->overflow:I

    sub-int/2addr v4, v5

    .line 232
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-le v5, v0, :cond_1d6

    .line 233
    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 235
    :cond_1d6
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-le v0, v4, :cond_1ea

    .line 236
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupWidth()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 238
    :cond_1ea
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/lxj/xpopup/core/AttachPopupView$4;

    invoke-direct {v3, p0, v1, v2}, Lcom/lxj/xpopup/core/AttachPopupView$4;-><init>(Lcom/lxj/xpopup/core/AttachPopupView;ZLandroid/graphics/Rect;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_1fd
    return-void
.end method

.method protected doMeasure()V
    .registers 8

    .line 73
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->doMeasure()V

    .line 74
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getMaxWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getMaxHeight()I

    move-result v3

    .line 75
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupHeight()I

    move-result v5

    new-instance v6, Lcom/lxj/xpopup/core/AttachPopupView$2;

    invoke-direct {v6, p0}, Lcom/lxj/xpopup/core/AttachPopupView$2;-><init>(Lcom/lxj/xpopup/core/AttachPopupView;)V

    .line 74
    invoke-static/range {v1 .. v6}, Lcom/lxj/xpopup/util/XPopupUtils;->applyPopupSize(Landroid/view/ViewGroup;IIIILjava/lang/Runnable;)V

    return-void
.end method

.method protected final getInnerLayoutId()I
    .registers 2

    .line 43
    sget v0, Lcom/lxj/xpopup/R$layout;->_xpopup_attach_popup_view:I

    return v0
.end method

.method protected getPopupAnimator()Lcom/lxj/xpopup/animator/PopupAnimator;
    .registers 5

    .line 303
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/AttachPopupView;->isShowUpToTarget()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 305
    new-instance v0, Lcom/lxj/xpopup/animator/ScrollScaleAnimator;

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getAnimationDuration()I

    move-result v2

    iget-boolean v3, p0, Lcom/lxj/xpopup/core/AttachPopupView;->isShowLeft:Z

    if-eqz v3, :cond_17

    sget-object v3, Lcom/lxj/xpopup/enums/PopupAnimation;->ScrollAlphaFromLeftBottom:Lcom/lxj/xpopup/enums/PopupAnimation;

    goto :goto_19

    :cond_17
    sget-object v3, Lcom/lxj/xpopup/enums/PopupAnimation;->ScrollAlphaFromRightBottom:Lcom/lxj/xpopup/enums/PopupAnimation;

    :goto_19
    invoke-direct {v0, v1, v2, v3}, Lcom/lxj/xpopup/animator/ScrollScaleAnimator;-><init>(Landroid/view/View;ILcom/lxj/xpopup/enums/PopupAnimation;)V

    goto :goto_33

    .line 309
    :cond_1d
    new-instance v0, Lcom/lxj/xpopup/animator/ScrollScaleAnimator;

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getAnimationDuration()I

    move-result v2

    iget-boolean v3, p0, Lcom/lxj/xpopup/core/AttachPopupView;->isShowLeft:Z

    if-eqz v3, :cond_2e

    sget-object v3, Lcom/lxj/xpopup/enums/PopupAnimation;->ScrollAlphaFromLeftTop:Lcom/lxj/xpopup/enums/PopupAnimation;

    goto :goto_30

    :cond_2e
    sget-object v3, Lcom/lxj/xpopup/enums/PopupAnimation;->ScrollAlphaFromRightTop:Lcom/lxj/xpopup/enums/PopupAnimation;

    :goto_30
    invoke-direct {v0, v1, v2, v3}, Lcom/lxj/xpopup/animator/ScrollScaleAnimator;-><init>(Landroid/view/View;ILcom/lxj/xpopup/enums/PopupAnimation;)V

    :goto_33
    return-object v0
.end method

.method protected initAndStartAnimation()V
    .registers 1

    .line 284
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->initAnimator()V

    .line 285
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->doShowAnimation()V

    .line 286
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->doAfterShow()V

    return-void
.end method

.method protected initPopupContent()V
    .registers 8

    .line 51
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->initPopupContent()V

    .line 52
    iget-object v0, p0, Lcom/lxj/xpopup/core/AttachPopupView;->attachPopupContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/AttachPopupView;->addInnerContent()V

    .line 53
    :cond_e
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object v1, v0, Lcom/lxj/xpopup/core/PopupInfo;->atView:Landroid/view/View;

    if-nez v1, :cond_21

    iget-object v1, v0, Lcom/lxj/xpopup/core/PopupInfo;->touchPoint:Landroid/graphics/PointF;

    if-eqz v1, :cond_19

    goto :goto_21

    .line 54
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "atView() or watchView() must be called for AttachPopupView before show()！"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_21
    :goto_21
    iget v1, v0, Lcom/lxj/xpopup/core/PopupInfo;->offsetY:I

    iput v1, p0, Lcom/lxj/xpopup/core/AttachPopupView;->defaultOffsetY:I

    .line 57
    iget v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->offsetX:I

    iput v0, p0, Lcom/lxj/xpopup/core/AttachPopupView;->defaultOffsetX:I

    .line 59
    iget-object v1, p0, Lcom/lxj/xpopup/core/AttachPopupView;->attachPopupContainer:Landroid/widget/FrameLayout;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 60
    iget-object v0, p0, Lcom/lxj/xpopup/core/AttachPopupView;->attachPopupContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget v1, v1, Lcom/lxj/xpopup/core/PopupInfo;->offsetY:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 61
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/AttachPopupView;->applyBg()V

    .line 62
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getMaxWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getMaxHeight()I

    move-result v3

    .line 63
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupHeight()I

    move-result v5

    new-instance v6, Lcom/lxj/xpopup/core/AttachPopupView$1;

    invoke-direct {v6, p0}, Lcom/lxj/xpopup/core/AttachPopupView$1;-><init>(Lcom/lxj/xpopup/core/AttachPopupView;)V

    .line 62
    invoke-static/range {v1 .. v6}, Lcom/lxj/xpopup/util/XPopupUtils;->applyPopupSize(Landroid/view/ViewGroup;IIIILjava/lang/Runnable;)V

    return-void
.end method

.method protected isShowUpToTarget()Z
    .registers 6

    .line 291
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-boolean v1, v0, Lcom/lxj/xpopup/core/PopupInfo;->positionByWindowCenter:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1c

    .line 293
    iget v0, p0, Lcom/lxj/xpopup/core/AttachPopupView;->centerY:F

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

    .line 296
    :cond_1c
    iget-boolean v1, p0, Lcom/lxj/xpopup/core/AttachPopupView;->isShowUp:Z

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
