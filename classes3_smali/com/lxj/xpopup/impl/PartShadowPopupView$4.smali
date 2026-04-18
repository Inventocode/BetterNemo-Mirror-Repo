.class Lcom/lxj/xpopup/impl/PartShadowPopupView$4;
.super Ljava/lang/Object;
.source "PartShadowPopupView.java"

# interfaces
.implements Lcom/lxj/xpopup/interfaces/OnClickOutsideListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lxj/xpopup/impl/PartShadowPopupView;->doAttach()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lxj/xpopup/impl/PartShadowPopupView;


# direct methods
.method constructor <init>(Lcom/lxj/xpopup/impl/PartShadowPopupView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 129
    iput-object p1, p0, Lcom/lxj/xpopup/impl/PartShadowPopupView$4;->this$0:Lcom/lxj/xpopup/impl/PartShadowPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickOutside()V
    .registers 2

    .line 132
    iget-object v0, p0, Lcom/lxj/xpopup/impl/PartShadowPopupView$4;->this$0:Lcom/lxj/xpopup/impl/PartShadowPopupView;

    iget-object v0, v0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    iget-object v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->isDismissOnTouchOutside:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/lxj/xpopup/impl/PartShadowPopupView$4;->this$0:Lcom/lxj/xpopup/impl/PartShadowPopupView;

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->dismiss()V

    :cond_11
    return-void
.end method
