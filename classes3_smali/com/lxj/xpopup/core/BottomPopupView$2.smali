.class Lcom/lxj/xpopup/core/BottomPopupView$2;
.super Ljava/lang/Object;
.source "BottomPopupView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lxj/xpopup/core/BottomPopupView;->initPopupContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lxj/xpopup/core/BottomPopupView;


# direct methods
.method constructor <init>(Lcom/lxj/xpopup/core/BottomPopupView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcom/lxj/xpopup/core/BottomPopupView$2;->this$0:Lcom/lxj/xpopup/core/BottomPopupView;

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

    .line 83
    iget-object p1, p0, Lcom/lxj/xpopup/core/BottomPopupView$2;->this$0:Lcom/lxj/xpopup/core/BottomPopupView;

    iget-object v0, p1, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    if-eqz v0, :cond_18

    .line 84
    iget-object v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->xPopupCallback:Lcom/lxj/xpopup/interfaces/XPopupCallback;

    if-eqz v0, :cond_d

    .line 85
    invoke-interface {v0, p1}, Lcom/lxj/xpopup/interfaces/XPopupCallback;->onClickOutside(Lcom/lxj/xpopup/core/BasePopupView;)V

    .line 87
    :cond_d
    iget-object p1, p0, Lcom/lxj/xpopup/core/BottomPopupView$2;->this$0:Lcom/lxj/xpopup/core/BottomPopupView;

    iget-object v0, p1, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->isDismissOnTouchOutside:Ljava/lang/Boolean;

    if-eqz v0, :cond_18

    .line 88
    invoke-virtual {p1}, Lcom/lxj/xpopup/core/BottomPopupView;->dismiss()V

    :cond_18
    return-void
.end method
