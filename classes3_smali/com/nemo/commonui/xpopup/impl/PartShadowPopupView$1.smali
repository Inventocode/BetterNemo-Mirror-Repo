.class Lcom/nemo/commonui/xpopup/impl/PartShadowPopupView$1;
.super Ljava/lang/Object;
.source "PartShadowPopupView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    .line 110
    iput-object p1, p0, Lcom/nemo/commonui/xpopup/impl/PartShadowPopupView$1;->this$0:Lcom/nemo/commonui/xpopup/impl/PartShadowPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 2

    .line 113
    iget-object p1, p0, Lcom/nemo/commonui/xpopup/impl/PartShadowPopupView$1;->this$0:Lcom/nemo/commonui/xpopup/impl/PartShadowPopupView;

    iget-object p1, p1, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object p1, p1, Lcom/nemo/commonui/xpopup/core/PopupInfo;->isDismissOnTouchOutside:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/nemo/commonui/xpopup/impl/PartShadowPopupView$1;->this$0:Lcom/nemo/commonui/xpopup/impl/PartShadowPopupView;

    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    :cond_11
    const/4 p1, 0x0

    return p1
.end method
