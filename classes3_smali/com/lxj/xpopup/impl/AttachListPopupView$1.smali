.class Lcom/lxj/xpopup/impl/AttachListPopupView$1;
.super Lcom/lxj/easyadapter/EasyAdapter;
.source "AttachListPopupView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lxj/xpopup/impl/AttachListPopupView;->onCreate()V
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
.field final synthetic this$0:Lcom/lxj/xpopup/impl/AttachListPopupView;


# direct methods
.method constructor <init>(Lcom/lxj/xpopup/impl/AttachListPopupView;Ljava/util/List;I)V
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

    .line 57
    iput-object p1, p0, Lcom/lxj/xpopup/impl/AttachListPopupView$1;->this$0:Lcom/lxj/xpopup/impl/AttachListPopupView;

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

    .line 57
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/lxj/xpopup/impl/AttachListPopupView$1;->bind(Lcom/lxj/easyadapter/ViewHolder;Ljava/lang/String;I)V

    return-void
.end method

.method protected bind(Lcom/lxj/easyadapter/ViewHolder;Ljava/lang/String;I)V
    .registers 6
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

    .line 60
    sget v0, Lcom/lxj/xpopup/R$id;->tv_text:I

    invoke-virtual {p1, v0, p2}, Lcom/lxj/easyadapter/ViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/lxj/easyadapter/ViewHolder;

    .line 61
    sget p2, Lcom/lxj/xpopup/R$id;->iv_image:I

    invoke-virtual {p1, p2}, Lcom/lxj/easyadapter/ViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 62
    iget-object v1, p0, Lcom/lxj/xpopup/impl/AttachListPopupView$1;->this$0:Lcom/lxj/xpopup/impl/AttachListPopupView;

    iget-object v1, v1, Lcom/lxj/xpopup/impl/AttachListPopupView;->iconIds:[I

    if-eqz v1, :cond_26

    array-length v1, v1

    if-le v1, p3, :cond_26

    if-eqz p2, :cond_2a

    const/4 v1, 0x1

    .line 64
    invoke-static {p2, v1}, Lcom/lxj/xpopup/util/XPopupUtils;->setVisible(Landroid/view/View;Z)V

    .line 65
    iget-object v1, p0, Lcom/lxj/xpopup/impl/AttachListPopupView$1;->this$0:Lcom/lxj/xpopup/impl/AttachListPopupView;

    iget-object v1, v1, Lcom/lxj/xpopup/impl/AttachListPopupView;->iconIds:[I

    aget p3, v1, p3

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2a

    :cond_26
    const/4 p3, 0x0

    .line 68
    invoke-static {p2, p3}, Lcom/lxj/xpopup/util/XPopupUtils;->setVisible(Landroid/view/View;Z)V

    .line 71
    :cond_2a
    :goto_2a
    iget-object p2, p0, Lcom/lxj/xpopup/impl/AttachListPopupView$1;->this$0:Lcom/lxj/xpopup/impl/AttachListPopupView;

    iget p3, p2, Lcom/lxj/xpopup/impl/AttachListPopupView;->bindItemLayoutId:I

    if-nez p3, :cond_70

    .line 72
    iget-object p2, p2, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-boolean p2, p2, Lcom/lxj/xpopup/core/PopupInfo;->isDarkTheme:Z

    if-eqz p2, :cond_4c

    .line 73
    invoke-virtual {p1, v0}, Lcom/lxj/easyadapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget-object p3, p0, Lcom/lxj/xpopup/impl/AttachListPopupView$1;->this$0:Lcom/lxj/xpopup/impl/AttachListPopupView;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/lxj/xpopup/R$color;->_xpopup_white_color:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_61

    .line 75
    :cond_4c
    invoke-virtual {p1, v0}, Lcom/lxj/easyadapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget-object p3, p0, Lcom/lxj/xpopup/impl/AttachListPopupView$1;->this$0:Lcom/lxj/xpopup/impl/AttachListPopupView;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/lxj/xpopup/R$color;->_xpopup_dark_color:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 77
    :goto_61
    sget p2, Lcom/lxj/xpopup/R$id;->_ll_temp:I

    invoke-virtual {p1, p2}, Lcom/lxj/easyadapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 78
    iget-object p2, p0, Lcom/lxj/xpopup/impl/AttachListPopupView$1;->this$0:Lcom/lxj/xpopup/impl/AttachListPopupView;

    iget p2, p2, Lcom/lxj/xpopup/impl/AttachListPopupView;->contentGravity:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setGravity(I)V

    :cond_70
    return-void
.end method
