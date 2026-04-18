.class public Lcom/lxj/xpopup/impl/LoadingPopupView;
.super Lcom/lxj/xpopup/core/CenterPopupView;
.source "LoadingPopupView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lxj/xpopup/impl/LoadingPopupView$Style;
    }
.end annotation


# instance fields
.field private firstShow:Z

.field private loadingStyle:Lcom/lxj/xpopup/impl/LoadingPopupView$Style;

.field private progressBar:Landroid/view/View;

.field private spinnerView:Landroid/view/View;

.field private title:Ljava/lang/CharSequence;

.field private tv_title:Landroid/widget/TextView;


# direct methods
.method static synthetic access$000(Lcom/lxj/xpopup/impl/LoadingPopupView;)Z
    .registers 1

    .line 25
    iget-boolean p0, p0, Lcom/lxj/xpopup/impl/LoadingPopupView;->firstShow:Z

    return p0
.end method

.method static synthetic access$100(Lcom/lxj/xpopup/impl/LoadingPopupView;)Landroid/widget/FrameLayout;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/lxj/xpopup/core/CenterPopupView;->centerPopupContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/lxj/xpopup/impl/LoadingPopupView;)Ljava/lang/CharSequence;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/lxj/xpopup/impl/LoadingPopupView;->title:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$300(Lcom/lxj/xpopup/impl/LoadingPopupView;)Landroid/widget/TextView;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/lxj/xpopup/impl/LoadingPopupView;->tv_title:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/lxj/xpopup/impl/LoadingPopupView;)Lcom/lxj/xpopup/impl/LoadingPopupView$Style;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/lxj/xpopup/impl/LoadingPopupView;->loadingStyle:Lcom/lxj/xpopup/impl/LoadingPopupView$Style;

    return-object p0
.end method

.method static synthetic access$500(Lcom/lxj/xpopup/impl/LoadingPopupView;)Landroid/view/View;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/lxj/xpopup/impl/LoadingPopupView;->progressBar:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lcom/lxj/xpopup/impl/LoadingPopupView;)Landroid/view/View;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/lxj/xpopup/impl/LoadingPopupView;->spinnerView:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method protected getImplLayoutId()I
    .registers 2

    .line 47
    iget v0, p0, Lcom/lxj/xpopup/core/CenterPopupView;->bindLayoutId:I

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    sget v0, Lcom/lxj/xpopup/R$layout;->_xpopup_center_impl_loading:I

    :goto_7
    return v0
.end method

.method protected onCreate()V
    .registers 4

    .line 52
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->onCreate()V

    .line 53
    sget v0, Lcom/lxj/xpopup/R$id;->tv_title:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lxj/xpopup/impl/LoadingPopupView;->tv_title:Landroid/widget/TextView;

    .line 54
    sget v0, Lcom/lxj/xpopup/R$id;->loadProgress:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lxj/xpopup/impl/LoadingPopupView;->progressBar:Landroid/view/View;

    .line 55
    sget v0, Lcom/lxj/xpopup/R$id;->loadview:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lxj/xpopup/impl/LoadingPopupView;->spinnerView:Landroid/view/View;

    .line 57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2c

    .line 58
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupImplView()Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x41200000  # 10.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setElevation(F)V

    .line 60
    :cond_2c
    iget v0, p0, Lcom/lxj/xpopup/core/CenterPopupView;->bindLayoutId:I

    if-nez v0, :cond_45

    .line 61
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupImplView()Landroid/view/View;

    move-result-object v0

    const-string v1, "#212121"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget v2, v2, Lcom/lxj/xpopup/core/PopupInfo;->borderRadius:F

    invoke-static {v1, v2}, Lcom/lxj/xpopup/util/XPopupUtils;->createDrawable(IF)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 63
    :cond_45
    invoke-virtual {p0}, Lcom/lxj/xpopup/impl/LoadingPopupView;->setup()V

    return-void
.end method

.method protected onDismiss()V
    .registers 2

    .line 118
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->onDismiss()V

    const/4 v0, 0x1

    .line 119
    iput-boolean v0, p0, Lcom/lxj/xpopup/impl/LoadingPopupView;->firstShow:Z

    return-void
.end method

.method protected onShow()V
    .registers 2

    .line 69
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->onShow()V

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/lxj/xpopup/impl/LoadingPopupView;->firstShow:Z

    return-void
.end method

.method protected setup()V
    .registers 2

    .line 74
    new-instance v0, Lcom/lxj/xpopup/impl/LoadingPopupView$1;

    invoke-direct {v0, p0}, Lcom/lxj/xpopup/impl/LoadingPopupView$1;-><init>(Lcom/lxj/xpopup/impl/LoadingPopupView;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
