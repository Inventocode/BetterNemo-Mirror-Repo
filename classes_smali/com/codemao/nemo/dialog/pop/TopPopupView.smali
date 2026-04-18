.class public Lcom/codemao/nemo/dialog/pop/TopPopupView;
.super Lcom/nemo/commonui/xpopup/core/BasePopupView;
.source "TopPopupView.java"


# instance fields
.field protected topPopupContainer:Lcom/codemao/nemo/dialog/pop/SmartTopDragLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 28
    invoke-direct {p0, p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/dialog/pop/TopPopupView;)V
    .registers 1

    .line 24
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->doAfterDismiss()V

    return-void
.end method

.method static synthetic access$101(Lcom/codemao/nemo/dialog/pop/TopPopupView;)V
    .registers 1

    .line 24
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->doAfterShow()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 3

    .line 112
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object v0, v0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->enableDrag:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 113
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupStatus:Lcom/nemo/commonui/xpopup/enums/PopupStatus;

    sget-object v1, Lcom/nemo/commonui/xpopup/enums/PopupStatus;->Dismissing:Lcom/nemo/commonui/xpopup/enums/PopupStatus;

    if-ne v0, v1, :cond_11

    return-void

    .line 114
    :cond_11
    iput-object v1, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupStatus:Lcom/nemo/commonui/xpopup/enums/PopupStatus;

    .line 115
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object v0, v0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->autoOpenSoftInput:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {p0}, Lcom/nemo/commonui/xpopup/util/KeyboardUtils;->hideSoftInput(Landroid/view/View;)V

    .line 116
    :cond_20
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->clearFocus()V

    .line 118
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/TopPopupView;->topPopupContainer:Lcom/codemao/nemo/dialog/pop/SmartTopDragLayout;

    invoke-virtual {v0}, Lcom/codemao/nemo/dialog/pop/SmartTopDragLayout;->close()V

    goto :goto_2c

    .line 120
    :cond_29
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    :goto_2c
    return-void
.end method

.method protected doAfterShow()V
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object v0, v0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->enableDrag:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_e

    .line 72
    :cond_b
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->doAfterShow()V

    :goto_e
    return-void
.end method

.method public doDismissAnimation()V
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object v0, v0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->enableDrag:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 88
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/TopPopupView;->topPopupContainer:Lcom/codemao/nemo/dialog/pop/SmartTopDragLayout;

    invoke-virtual {v0}, Lcom/codemao/nemo/dialog/pop/SmartTopDragLayout;->close()V

    goto :goto_13

    .line 90
    :cond_10
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->doDismissAnimation()V

    :goto_13
    return-void
.end method

.method public doShowAnimation()V
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object v0, v0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->enableDrag:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 79
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/TopPopupView;->topPopupContainer:Lcom/codemao/nemo/dialog/pop/SmartTopDragLayout;

    invoke-virtual {v0}, Lcom/codemao/nemo/dialog/pop/SmartTopDragLayout;->open()V

    goto :goto_13

    .line 81
    :cond_10
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->doShowAnimation()V

    :goto_13
    return-void
.end method

.method public getAnimationDuration()I
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object v0, v0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->enableDrag:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    goto :goto_10

    :cond_c
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getAnimationDuration()I

    move-result v0

    :goto_10
    return v0
.end method

.method protected getImplLayoutId()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected getPopupAnimator()Lcom/nemo/commonui/xpopup/animator/PopupAnimator;
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object v0, v0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->enableDrag:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    goto :goto_10

    :cond_c
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupAnimator()Lcom/nemo/commonui/xpopup/animator/PopupAnimator;

    move-result-object v0

    :goto_10
    return-object v0
.end method

.method protected getPopupLayoutId()I
    .registers 2

    const v0, 0x7f0d0013

    return v0
.end method

.method protected getTargetSizeView()Landroid/view/View;
    .registers 2

    .line 140
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupImplView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected initPopupContent()V
    .registers 5

    .line 38
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->initPopupContent()V

    const v0, 0x7f0a07ce

    .line 39
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/dialog/pop/SmartTopDragLayout;

    iput-object v0, p0, Lcom/codemao/nemo/dialog/pop/TopPopupView;->topPopupContainer:Lcom/codemao/nemo/dialog/pop/SmartTopDragLayout;

    .line 40
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/codemao/nemo/dialog/pop/TopPopupView;->getImplLayoutId()I

    move-result v1

    iget-object v2, p0, Lcom/codemao/nemo/dialog/pop/TopPopupView;->topPopupContainer:Lcom/codemao/nemo/dialog/pop/SmartTopDragLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/codemao/nemo/dialog/pop/TopPopupView;->topPopupContainer:Lcom/codemao/nemo/dialog/pop/SmartTopDragLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 42
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/TopPopupView;->topPopupContainer:Lcom/codemao/nemo/dialog/pop/SmartTopDragLayout;

    iget-object v1, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object v1, v1, Lcom/nemo/commonui/xpopup/core/PopupInfo;->enableDrag:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/pop/SmartTopDragLayout;->enableDrag(Z)V

    .line 43
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/TopPopupView;->topPopupContainer:Lcom/codemao/nemo/dialog/pop/SmartTopDragLayout;

    iget-object v1, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object v1, v1, Lcom/nemo/commonui/xpopup/core/PopupInfo;->isDismissOnTouchOutside:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/pop/SmartTopDragLayout;->dismissOnTouchOutside(Z)V

    .line 44
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/TopPopupView;->topPopupContainer:Lcom/codemao/nemo/dialog/pop/SmartTopDragLayout;

    iget-object v1, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object v1, v1, Lcom/nemo/commonui/xpopup/core/PopupInfo;->hasShadowBg:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/pop/SmartTopDragLayout;->hasShadowBg(Z)V

    .line 46
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupImplView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget v1, v1, Lcom/nemo/commonui/xpopup/core/PopupInfo;->offsetX:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 47
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupImplView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget v1, v1, Lcom/nemo/commonui/xpopup/core/PopupInfo;->offsetY:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 49
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getMaxWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getMaxHeight()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->applyPopupSize(Landroid/view/ViewGroup;II)V

    .line 51
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/TopPopupView;->topPopupContainer:Lcom/codemao/nemo/dialog/pop/SmartTopDragLayout;

    new-instance v1, Lcom/codemao/nemo/dialog/pop/TopPopupView$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/dialog/pop/TopPopupView$1;-><init>(Lcom/codemao/nemo/dialog/pop/TopPopupView;)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/pop/SmartTopDragLayout;->setOnCloseListener(Lcom/codemao/nemo/dialog/pop/SmartTopDragLayout$OnCloseListener;)V

    return-void
.end method
