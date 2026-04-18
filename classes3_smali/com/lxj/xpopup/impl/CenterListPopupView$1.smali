.class Lcom/lxj/xpopup/impl/CenterListPopupView$1;
.super Lcom/lxj/easyadapter/EasyAdapter;
.source "CenterListPopupView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lxj/xpopup/impl/CenterListPopupView;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lxj/easyadapter/EasyAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lxj/xpopup/impl/CenterListPopupView;


# direct methods
.method constructor <init>(Lcom/lxj/xpopup/impl/CenterListPopupView;Ljava/util/List;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "arg0",
            "arg1"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/lxj/xpopup/impl/CenterListPopupView$1;->this$0:Lcom/lxj/xpopup/impl/CenterListPopupView;

    invoke-direct {p0, p2, p3}, Lcom/lxj/easyadapter/EasyAdapter;-><init>(Ljava/util/List;I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic bind(Lcom/lxj/easyadapter/ViewHolder;Ljava/lang/Object;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "holder",
            "s",
            "position"
        }
    .end annotation

    .line 71
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/lxj/xpopup/impl/CenterListPopupView$1;->bind(Lcom/lxj/easyadapter/ViewHolder;Ljava/lang/String;I)V

    return-void
.end method

.method protected bind(Lcom/lxj/easyadapter/ViewHolder;Ljava/lang/String;I)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "holder",
            "s",
            "position"
        }
    .end annotation

    .line 74
    sget v0, Lcom/lxj/xpopup/R$id;->tv_text:I

    invoke-virtual {p1, v0, p2}, Lcom/lxj/easyadapter/ViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/lxj/easyadapter/ViewHolder;

    .line 75
    sget p2, Lcom/lxj/xpopup/R$id;->iv_image:I

    invoke-virtual {p1, p2}, Lcom/lxj/easyadapter/ViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 76
    iget-object v1, p0, Lcom/lxj/xpopup/impl/CenterListPopupView$1;->this$0:Lcom/lxj/xpopup/impl/CenterListPopupView;

    iget-object v1, v1, Lcom/lxj/xpopup/impl/CenterListPopupView;->iconIds:[I

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_28

    array-length v1, v1

    if-le v1, p3, :cond_28

    if-eqz p2, :cond_2d

    .line 78
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 79
    iget-object v1, p0, Lcom/lxj/xpopup/impl/CenterListPopupView$1;->this$0:Lcom/lxj/xpopup/impl/CenterListPopupView;

    iget-object v1, v1, Lcom/lxj/xpopup/impl/CenterListPopupView;->iconIds:[I

    aget v1, v1, p3

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2d

    :cond_28
    if-eqz p2, :cond_2d

    .line 82
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 84
    :cond_2d
    :goto_2d
    iget-object p2, p0, Lcom/lxj/xpopup/impl/CenterListPopupView$1;->this$0:Lcom/lxj/xpopup/impl/CenterListPopupView;

    invoke-static {p2}, Lcom/lxj/xpopup/impl/CenterListPopupView;->access$000(Lcom/lxj/xpopup/impl/CenterListPopupView;)I

    move-result p2

    if-nez p2, :cond_68

    .line 85
    iget-object p2, p0, Lcom/lxj/xpopup/impl/CenterListPopupView$1;->this$0:Lcom/lxj/xpopup/impl/CenterListPopupView;

    iget-object p2, p2, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-boolean p2, p2, Lcom/lxj/xpopup/core/PopupInfo;->isDarkTheme:Z

    if-eqz p2, :cond_53

    .line 86
    invoke-virtual {p1, v0}, Lcom/lxj/easyadapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lxj/xpopup/impl/CenterListPopupView$1;->this$0:Lcom/lxj/xpopup/impl/CenterListPopupView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/lxj/xpopup/R$color;->_xpopup_white_color:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_68

    .line 88
    :cond_53
    invoke-virtual {p1, v0}, Lcom/lxj/easyadapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lxj/xpopup/impl/CenterListPopupView$1;->this$0:Lcom/lxj/xpopup/impl/CenterListPopupView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/lxj/xpopup/R$color;->_xpopup_dark_color:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 92
    :cond_68
    :goto_68
    iget-object p2, p0, Lcom/lxj/xpopup/impl/CenterListPopupView$1;->this$0:Lcom/lxj/xpopup/impl/CenterListPopupView;

    iget p2, p2, Lcom/lxj/xpopup/impl/CenterListPopupView;->checkedPosition:I

    const/4 v1, -0x1

    if-eq p2, v1, :cond_cf

    .line 93
    sget p2, Lcom/lxj/xpopup/R$id;->check_view:I

    invoke-virtual {p1, p2}, Lcom/lxj/easyadapter/ViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_94

    .line 94
    invoke-virtual {p1, p2}, Lcom/lxj/easyadapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Lcom/lxj/xpopup/impl/CenterListPopupView$1;->this$0:Lcom/lxj/xpopup/impl/CenterListPopupView;

    iget v4, v4, Lcom/lxj/xpopup/impl/CenterListPopupView;->checkedPosition:I

    if-ne p3, v4, :cond_82

    goto :goto_84

    :cond_82
    const/16 v2, 0x8

    :goto_84
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 95
    invoke-virtual {p1, p2}, Lcom/lxj/easyadapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/lxj/xpopup/widget/CheckView;

    invoke-static {}, Lcom/lxj/xpopup/XPopup;->getPrimaryColor()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/lxj/xpopup/widget/CheckView;->setColor(I)V

    .line 97
    :cond_94
    invoke-virtual {p1, v0}, Lcom/lxj/easyadapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lxj/xpopup/impl/CenterListPopupView$1;->this$0:Lcom/lxj/xpopup/impl/CenterListPopupView;

    iget v2, v1, Lcom/lxj/xpopup/impl/CenterListPopupView;->checkedPosition:I

    if-ne p3, v2, :cond_a5

    .line 98
    invoke-static {}, Lcom/lxj/xpopup/XPopup;->getPrimaryColor()I

    move-result p3

    goto :goto_af

    :cond_a5
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/lxj/xpopup/R$color;->_xpopup_title_color:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    .line 97
    :goto_af
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    invoke-virtual {p1, v0}, Lcom/lxj/easyadapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object p2, p0, Lcom/lxj/xpopup/impl/CenterListPopupView$1;->this$0:Lcom/lxj/xpopup/impl/CenterListPopupView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/lxj/xpopup/util/XPopupUtils;->isLayoutRtl(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_c8

    const p2, 0x800005

    goto :goto_cb

    :cond_c8
    const p2, 0x800003

    :goto_cb
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_e9

    .line 101
    :cond_cf
    sget p2, Lcom/lxj/xpopup/R$id;->check_view:I

    invoke-virtual {p1, p2}, Lcom/lxj/easyadapter/ViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_de

    invoke-virtual {p1, p2}, Lcom/lxj/easyadapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 103
    :cond_de
    invoke-virtual {p1, v0}, Lcom/lxj/easyadapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/16 p2, 0x11

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    :goto_e9
    return-void
.end method
