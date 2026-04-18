.class Lcom/nemo/commonui/xpopup/impl/PartShadowPopupView$2;
.super Ljava/lang/Object;
.source "PartShadowPopupView.java"

# interfaces
.implements Lcom/nemo/commonui/xpopup/interfaces/OnClickOutsideListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemo/commonui/xpopup/impl/PartShadowPopupView;->doAttach()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemo/commonui/xpopup/impl/PartShadowPopupView;


# direct methods
.method constructor <init>(Lcom/nemo/commonui/xpopup/impl/PartShadowPopupView;)V
    .registers 2

    .line 117
    iput-object p1, p0, Lcom/nemo/commonui/xpopup/impl/PartShadowPopupView$2;->this$0:Lcom/nemo/commonui/xpopup/impl/PartShadowPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickOutside()V
    .registers 2

    .line 120
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/impl/PartShadowPopupView$2;->this$0:Lcom/nemo/commonui/xpopup/impl/PartShadowPopupView;

    iget-object v0, v0, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object v0, v0, Lcom/nemo/commonui/xpopup/core/PopupInfo;->isDismissOnTouchOutside:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/nemo/commonui/xpopup/impl/PartShadowPopupView$2;->this$0:Lcom/nemo/commonui/xpopup/impl/PartShadowPopupView;

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    :cond_11
    return-void
.end method
