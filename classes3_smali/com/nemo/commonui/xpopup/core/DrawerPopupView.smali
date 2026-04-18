.class public abstract Lcom/nemo/commonui/xpopup/core/DrawerPopupView;
.super Lcom/nemo/commonui/xpopup/core/BasePopupView;
.source "DrawerPopupView.java"


# instance fields
.field protected drawerContentContainer:Landroid/widget/FrameLayout;

.field drawerLayout:Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 22
    invoke-direct {p0, p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;-><init>(Landroid/content/Context;)V

    .line 23
    sget p1, Lcom/nemo/commonui/R$id;->drawerLayout:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;

    iput-object p1, p0, Lcom/nemo/commonui/xpopup/core/DrawerPopupView;->drawerLayout:Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;

    .line 24
    sget p1, Lcom/nemo/commonui/R$id;->drawerContentContainer:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/nemo/commonui/xpopup/core/DrawerPopupView;->drawerContentContainer:Landroid/widget/FrameLayout;

    .line 25
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getContentView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_30

    .line 27
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getImplLayoutId()I

    move-result v0

    iget-object v1, p0, Lcom/nemo/commonui/xpopup/core/DrawerPopupView;->drawerContentContainer:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 29
    :cond_30
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/DrawerPopupView;->drawerContentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$001(Lcom/nemo/commonui/xpopup/core/DrawerPopupView;)V
    .registers 1

    .line 17
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    return-void
.end method

.method static synthetic access$101(Lcom/nemo/commonui/xpopup/core/DrawerPopupView;)V
    .registers 1

    .line 17
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->doAfterShow()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/DrawerPopupView;->drawerLayout:Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->close()V

    return-void
.end method

.method protected doAfterShow()V
    .registers 1

    return-void
.end method

.method public doDismissAnimation()V
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/DrawerPopupView;->drawerLayout:Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->close()V

    return-void
.end method

.method public doShowAnimation()V
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/DrawerPopupView;->drawerLayout:Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->open()V

    return-void
.end method

.method public getAnimationDuration()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected getPopupLayoutId()I
    .registers 2

    .line 34
    sget v0, Lcom/nemo/commonui/R$layout;->nemocommon_drawer_popup_view:I

    return v0
.end method

.method protected getTargetSizeView()Landroid/view/View;
    .registers 2

    .line 102
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupImplView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected initPopupContent()V
    .registers 3

    .line 39
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->initPopupContent()V

    .line 40
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/DrawerPopupView;->drawerLayout:Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;

    iget-object v1, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object v1, v1, Lcom/nemo/commonui/xpopup/core/PopupInfo;->hasShadowBg:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->enableShadow:Z

    .line 41
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/DrawerPopupView;->drawerLayout:Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;

    iget-object v1, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object v1, v1, Lcom/nemo/commonui/xpopup/core/PopupInfo;->isDismissOnTouchOutside:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->isCanClose:Z

    .line 42
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/DrawerPopupView;->drawerLayout:Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;

    new-instance v1, Lcom/nemo/commonui/xpopup/core/DrawerPopupView$1;

    invoke-direct {v1, p0}, Lcom/nemo/commonui/xpopup/core/DrawerPopupView$1;-><init>(Lcom/nemo/commonui/xpopup/core/DrawerPopupView;)V

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->setOnCloseListener(Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout$OnCloseListener;)V

    .line 58
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupImplView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget v1, v1, Lcom/nemo/commonui/xpopup/core/PopupInfo;->offsetX:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 59
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->getPopupImplView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget v1, v1, Lcom/nemo/commonui/xpopup/core/PopupInfo;->offsetY:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 60
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/DrawerPopupView;->drawerLayout:Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;

    iget-object v1, p0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object v1, v1, Lcom/nemo/commonui/xpopup/core/PopupInfo;->popupPosition:Lcom/nemo/commonui/xpopup/enums/PopupPosition;

    if-nez v1, :cond_47

    sget-object v1, Lcom/nemo/commonui/xpopup/enums/PopupPosition;->Left:Lcom/nemo/commonui/xpopup/enums/PopupPosition;

    :cond_47
    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->setDrawerPosition(Lcom/nemo/commonui/xpopup/enums/PopupPosition;)V

    .line 61
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/DrawerPopupView;->drawerLayout:Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;

    new-instance v1, Lcom/nemo/commonui/xpopup/core/DrawerPopupView$2;

    invoke-direct {v1, p0}, Lcom/nemo/commonui/xpopup/core/DrawerPopupView$2;-><init>(Lcom/nemo/commonui/xpopup/core/DrawerPopupView;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
