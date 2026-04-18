.class public Lcom/lxj/xpopup/core/BottomPopupView;
.super Lcom/lxj/xpopup/core/BasePopupView;
.source "BottomPopupView.java"


# instance fields
.field protected bottomPopupContainer:Lcom/lxj/xpopup/widget/SmartDragLayout;

.field private translateAnimator:Lcom/lxj/xpopup/animator/TranslateAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1}, Lcom/lxj/xpopup/core/BasePopupView;-><init>(Landroid/content/Context;)V

    .line 26
    sget p1, Lcom/lxj/xpopup/R$id;->bottomPopupContainer:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/lxj/xpopup/widget/SmartDragLayout;

    iput-object p1, p0, Lcom/lxj/xpopup/core/BottomPopupView;->bottomPopupContainer:Lcom/lxj/xpopup/widget/SmartDragLayout;

    return-void
.end method


# virtual methods
.method protected addInnerContent()V
    .registers 5

    .line 30
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BottomPopupView;->getImplLayoutId()I

    move-result v1

    iget-object v2, p0, Lcom/lxj/xpopup/core/BottomPopupView;->bottomPopupContainer:Lcom/lxj/xpopup/widget/SmartDragLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/lxj/xpopup/core/BottomPopupView;->bottomPopupContainer:Lcom/lxj/xpopup/widget/SmartDragLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public dismiss()V
    .registers 4

    .line 151
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    if-nez v0, :cond_5

    return-void

    .line 152
    :cond_5
    iget-boolean v1, v0, Lcom/lxj/xpopup/core/PopupInfo;->enableDrag:Z

    if-eqz v1, :cond_26

    .line 153
    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupStatus:Lcom/lxj/xpopup/enums/PopupStatus;

    sget-object v2, Lcom/lxj/xpopup/enums/PopupStatus;->Dismissing:Lcom/lxj/xpopup/enums/PopupStatus;

    if-ne v1, v2, :cond_10

    return-void

    .line 154
    :cond_10
    iput-object v2, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupStatus:Lcom/lxj/xpopup/enums/PopupStatus;

    .line 155
    iget-object v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->autoOpenSoftInput:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {p0}, Lcom/lxj/xpopup/util/KeyboardUtils;->hideSoftInput(Landroid/view/View;)V

    .line 156
    :cond_1d
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->clearFocus()V

    .line 157
    iget-object v0, p0, Lcom/lxj/xpopup/core/BottomPopupView;->bottomPopupContainer:Lcom/lxj/xpopup/widget/SmartDragLayout;

    invoke-virtual {v0}, Lcom/lxj/xpopup/widget/SmartDragLayout;->close()V

    goto :goto_29

    .line 159
    :cond_26
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->dismiss()V

    :goto_29
    return-void
.end method

.method protected doAfterDismiss()V
    .registers 5

    .line 129
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    if-nez v0, :cond_5

    return-void

    .line 130
    :cond_5
    iget-boolean v1, v0, Lcom/lxj/xpopup/core/PopupInfo;->enableDrag:Z

    if-eqz v1, :cond_25

    .line 131
    iget-object v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->autoOpenSoftInput:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 132
    invoke-static {p0}, Lcom/lxj/xpopup/util/KeyboardUtils;->hideSoftInput(Landroid/view/View;)V

    .line 133
    :cond_14
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->doAfterDismissTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 134
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->doAfterDismissTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_28

    .line 136
    :cond_25
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->doAfterDismiss()V

    :goto_28
    return-void
.end method

.method public doDismissAnimation()V
    .registers 3

    .line 117
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    if-nez v0, :cond_5

    return-void

    .line 118
    :cond_5
    iget-boolean v1, v0, Lcom/lxj/xpopup/core/PopupInfo;->enableDrag:Z

    if-eqz v1, :cond_1e

    .line 119
    iget-object v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->hasBlurBg:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->blurAnimator:Lcom/lxj/xpopup/animator/BlurAnimator;

    if-eqz v0, :cond_18

    .line 120
    invoke-virtual {v0}, Lcom/lxj/xpopup/animator/BlurAnimator;->animateDismiss()V

    .line 122
    :cond_18
    iget-object v0, p0, Lcom/lxj/xpopup/core/BottomPopupView;->bottomPopupContainer:Lcom/lxj/xpopup/widget/SmartDragLayout;

    invoke-virtual {v0}, Lcom/lxj/xpopup/widget/SmartDragLayout;->close()V

    goto :goto_21

    .line 124
    :cond_1e
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->doDismissAnimation()V

    :goto_21
    return-void
.end method

.method protected doMeasure()V
    .registers 8

    .line 97
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->doMeasure()V

    .line 98
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getMaxWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getMaxHeight()I

    move-result v3

    .line 99
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupHeight()I

    move-result v5

    const/4 v6, 0x0

    .line 98
    invoke-static/range {v1 .. v6}, Lcom/lxj/xpopup/util/XPopupUtils;->applyPopupSize(Landroid/view/ViewGroup;IIIILjava/lang/Runnable;)V

    return-void
.end method

.method public doShowAnimation()V
    .registers 3

    .line 104
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    if-nez v0, :cond_5

    return-void

    .line 105
    :cond_5
    iget-boolean v1, v0, Lcom/lxj/xpopup/core/PopupInfo;->enableDrag:Z

    if-eqz v1, :cond_1e

    .line 106
    iget-object v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->hasBlurBg:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->blurAnimator:Lcom/lxj/xpopup/animator/BlurAnimator;

    if-eqz v0, :cond_18

    .line 107
    invoke-virtual {v0}, Lcom/lxj/xpopup/animator/BlurAnimator;->animateShow()V

    .line 109
    :cond_18
    iget-object v0, p0, Lcom/lxj/xpopup/core/BottomPopupView;->bottomPopupContainer:Lcom/lxj/xpopup/widget/SmartDragLayout;

    invoke-virtual {v0}, Lcom/lxj/xpopup/widget/SmartDragLayout;->open()V

    goto :goto_21

    .line 111
    :cond_1e
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->doShowAnimation()V

    :goto_21
    return-void
.end method

.method protected getImplLayoutId()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected final getInnerLayoutId()I
    .registers 2

    .line 36
    sget v0, Lcom/lxj/xpopup/R$layout;->_xpopup_bottom_popup_view:I

    return v0
.end method

.method protected getPopupAnimator()Lcom/lxj/xpopup/animator/PopupAnimator;
    .registers 6

    .line 143
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 144
    :cond_6
    iget-object v0, p0, Lcom/lxj/xpopup/core/BottomPopupView;->translateAnimator:Lcom/lxj/xpopup/animator/TranslateAnimator;

    if-nez v0, :cond_1b

    new-instance v0, Lcom/lxj/xpopup/animator/TranslateAnimator;

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getAnimationDuration()I

    move-result v3

    sget-object v4, Lcom/lxj/xpopup/enums/PopupAnimation;->TranslateFromBottom:Lcom/lxj/xpopup/enums/PopupAnimation;

    invoke-direct {v0, v2, v3, v4}, Lcom/lxj/xpopup/animator/TranslateAnimator;-><init>(Landroid/view/View;ILcom/lxj/xpopup/enums/PopupAnimation;)V

    iput-object v0, p0, Lcom/lxj/xpopup/core/BottomPopupView;->translateAnimator:Lcom/lxj/xpopup/animator/TranslateAnimator;

    .line 146
    :cond_1b
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-boolean v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->enableDrag:Z

    if-eqz v0, :cond_22

    goto :goto_24

    :cond_22
    iget-object v1, p0, Lcom/lxj/xpopup/core/BottomPopupView;->translateAnimator:Lcom/lxj/xpopup/animator/TranslateAnimator;

    :goto_24
    return-object v1
.end method

.method protected initPopupContent()V
    .registers 8

    .line 41
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->initPopupContent()V

    .line 42
    iget-object v0, p0, Lcom/lxj/xpopup/core/BottomPopupView;->bottomPopupContainer:Lcom/lxj/xpopup/widget/SmartDragLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_e

    .line 43
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BottomPopupView;->addInnerContent()V

    .line 45
    :cond_e
    iget-object v0, p0, Lcom/lxj/xpopup/core/BottomPopupView;->bottomPopupContainer:Lcom/lxj/xpopup/widget/SmartDragLayout;

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getAnimationDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lxj/xpopup/widget/SmartDragLayout;->setDuration(I)V

    .line 46
    iget-object v0, p0, Lcom/lxj/xpopup/core/BottomPopupView;->bottomPopupContainer:Lcom/lxj/xpopup/widget/SmartDragLayout;

    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-boolean v1, v1, Lcom/lxj/xpopup/core/PopupInfo;->enableDrag:Z

    invoke-virtual {v0, v1}, Lcom/lxj/xpopup/widget/SmartDragLayout;->enableDrag(Z)V

    .line 47
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-boolean v1, v0, Lcom/lxj/xpopup/core/PopupInfo;->enableDrag:Z

    if-eqz v1, :cond_42

    const/4 v1, 0x0

    .line 48
    iput-object v1, v0, Lcom/lxj/xpopup/core/PopupInfo;->popupAnimation:Lcom/lxj/xpopup/enums/PopupAnimation;

    .line 49
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupImplView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget v1, v1, Lcom/lxj/xpopup/core/PopupInfo;->offsetX:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 50
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupImplView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget v1, v1, Lcom/lxj/xpopup/core/PopupInfo;->offsetY:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_5a

    .line 52
    :cond_42
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget v1, v1, Lcom/lxj/xpopup/core/PopupInfo;->offsetX:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 53
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget v1, v1, Lcom/lxj/xpopup/core/PopupInfo;->offsetY:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 55
    :goto_5a
    iget-object v0, p0, Lcom/lxj/xpopup/core/BottomPopupView;->bottomPopupContainer:Lcom/lxj/xpopup/widget/SmartDragLayout;

    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object v1, v1, Lcom/lxj/xpopup/core/PopupInfo;->isDismissOnTouchOutside:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lxj/xpopup/widget/SmartDragLayout;->dismissOnTouchOutside(Z)V

    .line 56
    iget-object v0, p0, Lcom/lxj/xpopup/core/BottomPopupView;->bottomPopupContainer:Lcom/lxj/xpopup/widget/SmartDragLayout;

    iget-object v1, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-boolean v1, v1, Lcom/lxj/xpopup/core/PopupInfo;->isThreeDrag:Z

    invoke-virtual {v0, v1}, Lcom/lxj/xpopup/widget/SmartDragLayout;->isThreeDrag(Z)V

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

    const/4 v6, 0x0

    .line 58
    invoke-static/range {v1 .. v6}, Lcom/lxj/xpopup/util/XPopupUtils;->applyPopupSize(Landroid/view/ViewGroup;IIIILjava/lang/Runnable;)V

    .line 61
    iget-object v0, p0, Lcom/lxj/xpopup/core/BottomPopupView;->bottomPopupContainer:Lcom/lxj/xpopup/widget/SmartDragLayout;

    new-instance v1, Lcom/lxj/xpopup/core/BottomPopupView$1;

    invoke-direct {v1, p0}, Lcom/lxj/xpopup/core/BottomPopupView$1;-><init>(Lcom/lxj/xpopup/core/BottomPopupView;)V

    invoke-virtual {v0, v1}, Lcom/lxj/xpopup/widget/SmartDragLayout;->setOnCloseListener(Lcom/lxj/xpopup/widget/SmartDragLayout$OnCloseListener;)V

    .line 80
    iget-object v0, p0, Lcom/lxj/xpopup/core/BottomPopupView;->bottomPopupContainer:Lcom/lxj/xpopup/widget/SmartDragLayout;

    new-instance v1, Lcom/lxj/xpopup/core/BottomPopupView$2;

    invoke-direct {v1, p0}, Lcom/lxj/xpopup/core/BottomPopupView$2;-><init>(Lcom/lxj/xpopup/core/BottomPopupView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .line 174
    iget-object v0, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    if-eqz v0, :cond_27

    iget-boolean v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->enableDrag:Z

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/lxj/xpopup/core/BottomPopupView;->translateAnimator:Lcom/lxj/xpopup/animator/TranslateAnimator;

    if-eqz v0, :cond_27

    .line 175
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lxj/xpopup/core/BottomPopupView;->translateAnimator:Lcom/lxj/xpopup/animator/TranslateAnimator;

    iget v1, v1, Lcom/lxj/xpopup/animator/TranslateAnimator;->startTranslationX:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 176
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lxj/xpopup/core/BottomPopupView;->translateAnimator:Lcom/lxj/xpopup/animator/TranslateAnimator;

    iget v1, v1, Lcom/lxj/xpopup/animator/TranslateAnimator;->startTranslationY:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 177
    iget-object v0, p0, Lcom/lxj/xpopup/core/BottomPopupView;->translateAnimator:Lcom/lxj/xpopup/animator/TranslateAnimator;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/lxj/xpopup/animator/PopupAnimator;->hasInit:Z

    .line 179
    :cond_27
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->onDetachedFromWindow()V

    return-void
.end method
