.class public Lcom/codemao/toolssdk/view/dialog/TopPopupView;
.super Lcom/nemo/commonui/xpopup/core/BasePopupView;
.source "TopPopupView.java"


# instance fields
.field protected topPopupContainer:Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 24
    invoke-direct {p0, p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/toolssdk/view/dialog/TopPopupView;)V
    .registers 1

    .line 20
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->doAfterDismiss()V

    return-void
.end method

.method static synthetic access$101(Lcom/codemao/toolssdk/view/dialog/TopPopupView;)V
    .registers 1

    .line 20
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->doAfterShow()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 3

    .line 108
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object v0, v0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->enableDrag:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 109
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupStatus:Lcom/nemo/commonui/xpopup/enums/PopupStatus;

    sget-object v1, Lcom/nemo/commonui/xpopup/enums/PopupStatus;->Dismissing:Lcom/nemo/commonui/xpopup/enums/PopupStatus;

    if-ne v0, v1, :cond_11

    return-void

    .line 110
    :cond_11
    iput-object v1, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupStatus:Lcom/nemo/commonui/xpopup/enums/PopupStatus;

    .line 111
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object v0, v0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->autoOpenSoftInput:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {p0}, Lcom/nemo/commonui/xpopup/util/KeyboardUtils;->hideSoftInput(Landroid/view/View;)V

    .line 112
    :cond_20
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->clearFocus()V

    .line 114
    iget-object v0, p0, Lcom/codemao/toolssdk/view/dialog/TopPopupView;->topPopupContainer:Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->close()V

    goto :goto_2c

    .line 116
    :cond_29
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    :goto_2c
    return-void
.end method

.method protected doAfterShow()V
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object v0, v0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->enableDrag:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_e

    .line 68
    :cond_b
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->doAfterShow()V

    :goto_e
    return-void
.end method

.method public doDismissAnimation()V
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object v0, v0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->enableDrag:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 84
    iget-object v0, p0, Lcom/codemao/toolssdk/view/dialog/TopPopupView;->topPopupContainer:Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->close()V

    goto :goto_13

    .line 86
    :cond_10
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->doDismissAnimation()V

    :goto_13
    return-void
.end method

.method public doShowAnimation()V
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object v0, v0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->enableDrag:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 75
    iget-object v0, p0, Lcom/codemao/toolssdk/view/dialog/TopPopupView;->topPopupContainer:Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->open()V

    goto :goto_13

    .line 77
    :cond_10
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->doShowAnimation()V

    :goto_13
    return-void
.end method

.method public getAnimationDuration()I
    .registers 2

    .line 97
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

    .line 103
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

    .line 29
    sget v0, Lcom/codemao/toolssdk/R$layout;->toolsdk_xpopup_top_popup_view:I

    return v0
.end method

.method protected getTargetSizeView()Landroid/view/View;
    .registers 2

    .line 136
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupImplView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected initPopupContent()V
    .registers 5

    .line 34
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->initPopupContent()V

    .line 35
    sget v0, Lcom/codemao/toolssdk/R$id;->topPopupContainer:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;

    iput-object v0, p0, Lcom/codemao/toolssdk/view/dialog/TopPopupView;->topPopupContainer:Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;

    .line 36
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/codemao/toolssdk/view/dialog/TopPopupView;->getImplLayoutId()I

    move-result v1

    iget-object v2, p0, Lcom/codemao/toolssdk/view/dialog/TopPopupView;->topPopupContainer:Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/codemao/toolssdk/view/dialog/TopPopupView;->topPopupContainer:Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 38
    iget-object v0, p0, Lcom/codemao/toolssdk/view/dialog/TopPopupView;->topPopupContainer:Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;

    iget-object v1, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object v1, v1, Lcom/nemo/commonui/xpopup/core/PopupInfo;->enableDrag:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->enableDrag(Z)V

    .line 39
    iget-object v0, p0, Lcom/codemao/toolssdk/view/dialog/TopPopupView;->topPopupContainer:Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;

    iget-object v1, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object v1, v1, Lcom/nemo/commonui/xpopup/core/PopupInfo;->isDismissOnTouchOutside:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->dismissOnTouchOutside(Z)V

    .line 40
    iget-object v0, p0, Lcom/codemao/toolssdk/view/dialog/TopPopupView;->topPopupContainer:Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;

    iget-object v1, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object v1, v1, Lcom/nemo/commonui/xpopup/core/PopupInfo;->hasShadowBg:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->hasShadowBg(Z)V

    .line 42
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupImplView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget v1, v1, Lcom/nemo/commonui/xpopup/core/PopupInfo;->offsetX:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 43
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupImplView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget v1, v1, Lcom/nemo/commonui/xpopup/core/PopupInfo;->offsetY:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 45
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getMaxWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getMaxHeight()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->applyPopupSize(Landroid/view/ViewGroup;II)V

    .line 47
    iget-object v0, p0, Lcom/codemao/toolssdk/view/dialog/TopPopupView;->topPopupContainer:Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;

    new-instance v1, Lcom/codemao/toolssdk/view/dialog/TopPopupView$1;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/view/dialog/TopPopupView$1;-><init>(Lcom/codemao/toolssdk/view/dialog/TopPopupView;)V

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->setOnCloseListener(Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout$OnCloseListener;)V

    return-void
.end method
