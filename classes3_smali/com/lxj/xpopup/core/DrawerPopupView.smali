.class public abstract Lcom/lxj/xpopup/core/DrawerPopupView;
.super Lcom/lxj/xpopup/core/BasePopupView;
.source "DrawerPopupView.java"


# instance fields
.field public argbEvaluator:Landroid/animation/ArgbEvaluator;

.field currColor:I

.field defaultColor:I

.field protected drawerContentContainer:Landroid/widget/FrameLayout;

.field protected drawerLayout:Lcom/lxj/xpopup/widget/PopupDrawerLayout;

.field mFraction:F

.field paint:Landroid/graphics/Paint;

.field shadowRect:Landroid/graphics/Rect;


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

    iget-object v2, p0, Lcom/lxj/xpopup/core/DrawerPopupView;->drawerContentContainer:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/lxj/xpopup/core/DrawerPopupView;->drawerContentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 40
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 41
    iget-object v2, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    if-eqz v2, :cond_44

    const/4 v2, -0x1

    .line 42
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 43
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupWidth()I

    move-result v2

    if-lez v2, :cond_2f

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupWidth()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 44
    :cond_2f
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getMaxWidth()I

    move-result v2

    if-lez v2, :cond_41

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getMaxWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 45
    :cond_41
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_44
    return-void
.end method

.method public dismiss()V
    .registers 4

    .line 168
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    if-nez v0, :cond_5

    return-void

    .line 169
    :cond_5
    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupStatus:Lcom/lxj/xpopup/enums/PopupStatus;

    sget-object v2, Lcom/lxj/xpopup/enums/PopupStatus;->Dismissing:Lcom/lxj/xpopup/enums/PopupStatus;

    if-ne v1, v2, :cond_c

    return-void

    .line 170
    :cond_c
    iput-object v2, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupStatus:Lcom/lxj/xpopup/enums/PopupStatus;

    .line 171
    iget-object v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->autoOpenSoftInput:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {p0}, Lcom/lxj/xpopup/util/KeyboardUtils;->hideSoftInput(Landroid/view/View;)V

    .line 172
    :cond_19
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->clearFocus()V

    const/4 v0, 0x0

    .line 173
    invoke-virtual {p0, v0}, Lcom/lxj/xpopup/core/DrawerPopupView;->doStatusBarColorTransform(Z)V

    .line 175
    iget-object v0, p0, Lcom/lxj/xpopup/core/DrawerPopupView;->drawerLayout:Lcom/lxj/xpopup/widget/PopupDrawerLayout;

    invoke-virtual {v0}, Lcom/lxj/xpopup/widget/PopupDrawerLayout;->close()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 123
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 124
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    if-eqz v0, :cond_4b

    iget-object v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->hasStatusBarShadow:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 125
    iget-object v0, p0, Lcom/lxj/xpopup/core/DrawerPopupView;->shadowRect:Landroid/graphics/Rect;

    if-nez v0, :cond_23

    .line 126
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getStatusBarHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/lxj/xpopup/core/DrawerPopupView;->shadowRect:Landroid/graphics/Rect;

    .line 128
    :cond_23
    iget-object v0, p0, Lcom/lxj/xpopup/core/DrawerPopupView;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/lxj/xpopup/core/DrawerPopupView;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    iget v2, p0, Lcom/lxj/xpopup/core/DrawerPopupView;->mFraction:F

    iget v3, p0, Lcom/lxj/xpopup/core/DrawerPopupView;->defaultColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getStatusBarBgColor()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 129
    iget-object v0, p0, Lcom/lxj/xpopup/core/DrawerPopupView;->shadowRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/lxj/xpopup/core/DrawerPopupView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_4b
    return-void
.end method

.method protected doAfterDismiss()V
    .registers 5

    .line 160
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    if-eqz v0, :cond_f

    iget-object v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->autoOpenSoftInput:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 161
    invoke-static {p0}, Lcom/lxj/xpopup/util/KeyboardUtils;->hideSoftInput(Landroid/view/View;)V

    .line 162
    :cond_f
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->doAfterDismissTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 163
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->doAfterDismissTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public doDismissAnimation()V
    .registers 1

    return-void
.end method

.method protected doMeasure()V
    .registers 5

    .line 51
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->doMeasure()V

    .line 52
    iget-object v0, p0, Lcom/lxj/xpopup/core/DrawerPopupView;->drawerContentContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_d

    return-void

    .line 54
    :cond_d
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 55
    iget-object v2, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    if-eqz v2, :cond_39

    const/4 v2, -0x1

    .line 56
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 57
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupWidth()I

    move-result v2

    if-lez v2, :cond_24

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupWidth()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 58
    :cond_24
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getMaxWidth()I

    move-result v2

    if-lez v2, :cond_36

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getMaxWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 59
    :cond_36
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_39
    return-void
.end method

.method public doShowAnimation()V
    .registers 2

    .line 151
    iget-object v0, p0, Lcom/lxj/xpopup/core/DrawerPopupView;->drawerLayout:Lcom/lxj/xpopup/widget/PopupDrawerLayout;

    invoke-virtual {v0}, Lcom/lxj/xpopup/widget/PopupDrawerLayout;->open()V

    const/4 v0, 0x1

    .line 152
    invoke-virtual {p0, v0}, Lcom/lxj/xpopup/core/DrawerPopupView;->doStatusBarColorTransform(Z)V

    return-void
.end method

.method public doStatusBarColorTransform(Z)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isShow"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    if-eqz v0, :cond_45

    iget-object v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->hasStatusBarShadow:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 135
    iget-object v0, p0, Lcom/lxj/xpopup/core/DrawerPopupView;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz p1, :cond_16

    const/4 v3, 0x0

    goto :goto_1a

    .line 136
    :cond_16
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getStatusBarBgColor()I

    move-result v3

    :goto_1a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v3, 0x1

    if-eqz p1, :cond_27

    .line 137
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getStatusBarBgColor()I

    move-result v2

    :cond_27
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v3

    .line 135
    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 138
    new-instance v0, Lcom/lxj/xpopup/core/DrawerPopupView$3;

    invoke-direct {v0, p0}, Lcom/lxj/xpopup/core/DrawerPopupView$3;-><init>(Lcom/lxj/xpopup/core/DrawerPopupView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 145
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getAnimationDuration()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_45
    return-void
.end method

.method protected final getInnerLayoutId()I
    .registers 2

    .line 70
    sget v0, Lcom/lxj/xpopup/R$layout;->_xpopup_drawer_popup_view:I

    return v0
.end method

.method protected getPopupAnimator()Lcom/lxj/xpopup/animator/PopupAnimator;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPopupImplView()Landroid/view/View;
    .registers 3

    .line 65
    iget-object v0, p0, Lcom/lxj/xpopup/core/DrawerPopupView;->drawerContentContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected initPopupContent()V
    .registers 3

    .line 75
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->initPopupContent()V

    .line 76
    iget-object v0, p0, Lcom/lxj/xpopup/core/DrawerPopupView;->drawerContentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/DrawerPopupView;->addInnerContent()V

    .line 77
    :cond_e
    iget-object v0, p0, Lcom/lxj/xpopup/core/DrawerPopupView;->drawerLayout:Lcom/lxj/xpopup/widget/PopupDrawerLayout;

    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object v1, v1, Lcom/lxj/xpopup/core/PopupInfo;->isDismissOnTouchOutside:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/lxj/xpopup/widget/PopupDrawerLayout;->isDismissOnTouchOutside:Z

    .line 78
    iget-object v0, p0, Lcom/lxj/xpopup/core/DrawerPopupView;->drawerLayout:Lcom/lxj/xpopup/widget/PopupDrawerLayout;

    new-instance v1, Lcom/lxj/xpopup/core/DrawerPopupView$1;

    invoke-direct {v1, p0}, Lcom/lxj/xpopup/core/DrawerPopupView$1;-><init>(Lcom/lxj/xpopup/core/DrawerPopupView;)V

    invoke-virtual {v0, v1}, Lcom/lxj/xpopup/widget/PopupDrawerLayout;->setOnCloseListener(Lcom/lxj/xpopup/widget/PopupDrawerLayout$OnCloseListener;)V

    .line 97
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/DrawerPopupView;->getPopupImplView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget v1, v1, Lcom/lxj/xpopup/core/PopupInfo;->offsetX:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 98
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/DrawerPopupView;->getPopupImplView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget v1, v1, Lcom/lxj/xpopup/core/PopupInfo;->offsetY:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 99
    iget-object v0, p0, Lcom/lxj/xpopup/core/DrawerPopupView;->drawerLayout:Lcom/lxj/xpopup/widget/PopupDrawerLayout;

    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object v1, v1, Lcom/lxj/xpopup/core/PopupInfo;->popupPosition:Lcom/lxj/xpopup/enums/PopupPosition;

    if-nez v1, :cond_46

    sget-object v1, Lcom/lxj/xpopup/enums/PopupPosition;->Left:Lcom/lxj/xpopup/enums/PopupPosition;

    :cond_46
    invoke-virtual {v0, v1}, Lcom/lxj/xpopup/widget/PopupDrawerLayout;->setDrawerPosition(Lcom/lxj/xpopup/enums/PopupPosition;)V

    .line 100
    iget-object v0, p0, Lcom/lxj/xpopup/core/DrawerPopupView;->drawerLayout:Lcom/lxj/xpopup/widget/PopupDrawerLayout;

    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-boolean v1, v1, Lcom/lxj/xpopup/core/PopupInfo;->enableDrag:Z

    iput-boolean v1, v0, Lcom/lxj/xpopup/widget/PopupDrawerLayout;->enableDrag:Z

    const/4 v1, 0x0

    .line 101
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/lxj/xpopup/core/DrawerPopupView$2;

    invoke-direct {v1, p0}, Lcom/lxj/xpopup/core/DrawerPopupView$2;-><init>(Lcom/lxj/xpopup/core/DrawerPopupView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
