.class Lcom/lxj/xpopup/core/DrawerPopupView$2;
.super Ljava/lang/Object;
.source "DrawerPopupView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lxj/xpopup/core/DrawerPopupView;->initPopupContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lxj/xpopup/core/DrawerPopupView;


# direct methods
.method constructor <init>(Lcom/lxj/xpopup/core/DrawerPopupView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 101
    iput-object p1, p0, Lcom/lxj/xpopup/core/DrawerPopupView$2;->this$0:Lcom/lxj/xpopup/core/DrawerPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 104
    iget-object p1, p0, Lcom/lxj/xpopup/core/DrawerPopupView$2;->this$0:Lcom/lxj/xpopup/core/DrawerPopupView;

    iget-object v0, p1, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    if-eqz v0, :cond_1e

    .line 105
    iget-object v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->xPopupCallback:Lcom/lxj/xpopup/interfaces/XPopupCallback;

    if-eqz v0, :cond_d

    .line 106
    invoke-interface {v0, p1}, Lcom/lxj/xpopup/interfaces/XPopupCallback;->onClickOutside(Lcom/lxj/xpopup/core/BasePopupView;)V

    .line 108
    :cond_d
    iget-object p1, p0, Lcom/lxj/xpopup/core/DrawerPopupView$2;->this$0:Lcom/lxj/xpopup/core/DrawerPopupView;

    iget-object p1, p1, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object p1, p1, Lcom/lxj/xpopup/core/PopupInfo;->isDismissOnTouchOutside:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 109
    iget-object p1, p0, Lcom/lxj/xpopup/core/DrawerPopupView$2;->this$0:Lcom/lxj/xpopup/core/DrawerPopupView;

    invoke-virtual {p1}, Lcom/lxj/xpopup/core/DrawerPopupView;->dismiss()V

    :cond_1e
    return-void
.end method
