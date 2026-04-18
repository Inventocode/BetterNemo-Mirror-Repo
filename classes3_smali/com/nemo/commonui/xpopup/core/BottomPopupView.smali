.class public Lcom/nemo/commonui/xpopup/core/BottomPopupView;
.super Lcom/nemo/commonui/xpopup/core/BasePopupView;
.source "BottomPopupView.java"


# instance fields
.field protected bottomPopupContainer:Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 25
    invoke-direct {p0, p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$001(Lcom/nemo/commonui/xpopup/core/BottomPopupView;)V
    .registers 1

    .line 21
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->doAfterShow()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 3

    .line 127
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object v0, v0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->enableDrag:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 128
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupStatus:Lcom/nemo/commonui/xpopup/enums/PopupStatus;

    sget-object v1, Lcom/nemo/commonui/xpopup/enums/PopupStatus;->Dismissing:Lcom/nemo/commonui/xpopup/enums/PopupStatus;

    if-ne v0, v1, :cond_11

    return-void

    .line 129
    :cond_11
    iput-object v1, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupStatus:Lcom/nemo/commonui/xpopup/enums/PopupStatus;

    .line 130
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object v0, v0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->autoOpenSoftInput:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {p0}, Lcom/nemo/commonui/xpopup/util/KeyboardUtils;->hideSoftInput(Landroid/view/View;)V

    .line 131
    :cond_20
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->clearFocus()V

    .line 133
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BottomPopupView;->bottomPopupContainer:Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->close()V

    goto :goto_2c

    .line 135
    :cond_29
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    :goto_2c
    return-void
.end method

.method protected doAfterShow()V
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object v0, v0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->enableDrag:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_e

    .line 87
    :cond_b
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->doAfterShow()V

    :goto_e
    return-void
.end method

.method public doDismissAnimation()V
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object v0, v0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->enableDrag:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 103
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BottomPopupView;->bottomPopupContainer:Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->close()V

    goto :goto_13

    .line 105
    :cond_10
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->doDismissAnimation()V

    :goto_13
    return-void
.end method

.method public doShowAnimation()V
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object v0, v0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->enableDrag:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 94
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BottomPopupView;->bottomPopupContainer:Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->open()V

    goto :goto_13

    .line 96
    :cond_10
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->doShowAnimation()V

    :goto_13
    return-void
.end method

.method public getAnimationDuration()I
    .registers 2

    .line 116
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

.method protected getContentView()Landroid/view/View;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getImplLayoutId()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected getMaxWidth()I
    .registers 2

    .line 153
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget v0, v0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->maxWidth:I

    if-nez v0, :cond_e

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->getWindowWidth(Landroid/content/Context;)I

    move-result v0

    :cond_e
    return v0
.end method

.method protected getPopupAnimator()Lcom/nemo/commonui/xpopup/animator/PopupAnimator;
    .registers 2

    .line 122
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

    .line 30
    sget v0, Lcom/nemo/commonui/R$layout;->nemocommon_bottom_popup_view:I

    return v0
.end method

.method protected getTargetSizeView()Landroid/view/View;
    .registers 2

    .line 159
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupImplView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected initPopupContent()V
    .registers 5

    .line 35
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->initPopupContent()V

    .line 36
    sget v0, Lcom/nemo/commonui/R$id;->bottomPopupContainer:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;

    iput-object v0, p0, Lcom/nemo/commonui/xpopup/core/BottomPopupView;->bottomPopupContainer:Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;

    .line 37
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BottomPopupView;->getContentView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_26

    .line 39
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BottomPopupView;->getImplLayoutId()I

    move-result v1

    iget-object v2, p0, Lcom/nemo/commonui/xpopup/core/BottomPopupView;->bottomPopupContainer:Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 41
    :cond_26
    iget-object v1, p0, Lcom/nemo/commonui/xpopup/core/BottomPopupView;->bottomPopupContainer:Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 42
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BottomPopupView;->bottomPopupContainer:Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;

    iget-object v1, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object v1, v1, Lcom/nemo/commonui/xpopup/core/PopupInfo;->enableDrag:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->enableDrag(Z)V

    .line 43
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BottomPopupView;->bottomPopupContainer:Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;

    iget-object v1, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object v1, v1, Lcom/nemo/commonui/xpopup/core/PopupInfo;->isDismissOnTouchOutside:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->dismissOnTouchOutside(Z)V

    .line 44
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BottomPopupView;->bottomPopupContainer:Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;

    iget-object v1, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object v1, v1, Lcom/nemo/commonui/xpopup/core/PopupInfo;->hasShadowBg:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->hasShadowBg(Z)V

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

    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BottomPopupView;->getMaxWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getMaxHeight()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->applyPopupSize(Landroid/view/ViewGroup;II)V

    .line 51
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BottomPopupView;->bottomPopupContainer:Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;

    new-instance v1, Lcom/nemo/commonui/xpopup/core/BottomPopupView$1;

    invoke-direct {v1, p0}, Lcom/nemo/commonui/xpopup/core/BottomPopupView$1;-><init>(Lcom/nemo/commonui/xpopup/core/BottomPopupView;)V

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->setOnCloseListener(Lcom/nemo/commonui/xpopup/widget/SmartDragLayout$OnCloseListener;)V

    .line 73
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BottomPopupView;->bottomPopupContainer:Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;

    new-instance v1, Lcom/nemo/commonui/xpopup/core/BottomPopupView$2;

    invoke-direct {v1, p0}, Lcom/nemo/commonui/xpopup/core/BottomPopupView$2;-><init>(Lcom/nemo/commonui/xpopup/core/BottomPopupView;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDragListener(IFZ)V
    .registers 4

    return-void
.end method

.method protected onTouchOutListener(FF)V
    .registers 3

    return-void
.end method
