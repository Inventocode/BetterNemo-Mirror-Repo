.class public Lcom/nemo/commonui/xpopup/core/PositionPopupView;
.super Lcom/nemo/commonui/xpopup/core/BasePopupView;
.source "PositionPopupView.java"


# instance fields
.field attachPopupContainer:Lcom/nemo/commonui/xpopup/widget/PartShadowContainer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 26
    invoke-direct {p0, p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;-><init>(Landroid/content/Context;)V

    .line 27
    sget p1, Lcom/nemo/commonui/R$id;->attachPopupContainer:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/nemo/commonui/xpopup/widget/PartShadowContainer;

    iput-object p1, p0, Lcom/nemo/commonui/xpopup/core/PositionPopupView;->attachPopupContainer:Lcom/nemo/commonui/xpopup/widget/PartShadowContainer;

    .line 28
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getContentView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_26

    .line 30
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getImplLayoutId()I

    move-result v0

    iget-object v1, p0, Lcom/nemo/commonui/xpopup/core/PositionPopupView;->attachPopupContainer:Lcom/nemo/commonui/xpopup/widget/PartShadowContainer;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 32
    :cond_26
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/PositionPopupView;->attachPopupContainer:Lcom/nemo/commonui/xpopup/widget/PartShadowContainer;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected getPopupAnimator()Lcom/nemo/commonui/xpopup/animator/PopupAnimator;
    .registers 4

    .line 59
    new-instance v0, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;

    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    sget-object v2, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->ScaleAlphaFromCenter:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    invoke-direct {v0, v1, v2}, Lcom/nemo/commonui/xpopup/animator/ScrollScaleAnimator;-><init>(Landroid/view/View;Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)V

    return-object v0
.end method

.method protected getPopupLayoutId()I
    .registers 2

    .line 37
    sget v0, Lcom/nemo/commonui/R$layout;->nemocommon_attach_popup_view:I

    return v0
.end method

.method protected initPopupContent()V
    .registers 5

    .line 42
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->initPopupContent()V

    .line 43
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getMaxWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getMaxHeight()I

    move-result v2

    new-instance v3, Lcom/nemo/commonui/xpopup/core/PositionPopupView$1;

    invoke-direct {v3, p0}, Lcom/nemo/commonui/xpopup/core/PositionPopupView$1;-><init>(Lcom/nemo/commonui/xpopup/core/PositionPopupView;)V

    invoke-static {v0, v1, v2, v3}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->applyPopupSize(Landroid/view/ViewGroup;IILjava/lang/Runnable;)V

    return-void
.end method
