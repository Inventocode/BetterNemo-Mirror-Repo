.class public Lcom/nemo/commonui/xpopup/core/CenterPopupView;
.super Lcom/nemo/commonui/xpopup/core/BasePopupView;
.source "CenterPopupView.java"


# instance fields
.field protected centerPopupContainer:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 30
    invoke-direct {p0, p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;-><init>(Landroid/content/Context;)V

    .line 31
    sget p1, Lcom/nemo/commonui/R$id;->centerPopupContainer:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/nemo/commonui/xpopup/core/CenterPopupView;->centerPopupContainer:Landroid/widget/FrameLayout;

    return-void
.end method


# virtual methods
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
    .registers 3

    .line 74
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget v0, v0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->maxWidth:I

    if-nez v0, :cond_15

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->getWindowWidth(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f5c28f6  # 0.86f

    mul-float v0, v0, v1

    float-to-int v0, v0

    :cond_15
    return v0
.end method

.method protected getPopupAnimator()Lcom/nemo/commonui/xpopup/animator/PopupAnimator;
    .registers 4

    .line 80
    new-instance v0, Lcom/nemo/commonui/xpopup/animator/ScaleAlphaAnimator;

    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v1

    sget-object v2, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->ScaleAlphaFromCenter:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    invoke-direct {v0, v1, v2}, Lcom/nemo/commonui/xpopup/animator/ScaleAlphaAnimator;-><init>(Landroid/view/View;Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)V

    return-object v0
.end method

.method protected getPopupLayoutId()I
    .registers 2

    .line 36
    sget v0, Lcom/nemo/commonui/R$layout;->nemocommon_center_popup_view:I

    return v0
.end method

.method protected initPopupContent()V
    .registers 5

    .line 41
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->initPopupContent()V

    .line 42
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/CenterPopupView;->getContentView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 44
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/CenterPopupView;->getImplLayoutId()I

    move-result v1

    iget-object v2, p0, Lcom/nemo/commonui/xpopup/core/CenterPopupView;->centerPopupContainer:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 46
    :cond_1c
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    .line 47
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 48
    iget-object v2, p0, Lcom/nemo/commonui/xpopup/core/CenterPopupView;->centerPopupContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget v1, v1, Lcom/nemo/commonui/xpopup/core/PopupInfo;->offsetX:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 50
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget v1, v1, Lcom/nemo/commonui/xpopup/core/PopupInfo;->offsetY:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 51
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/CenterPopupView;->getMaxWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getMaxHeight()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->applyPopupSize(Landroid/view/ViewGroup;II)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 56
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method
