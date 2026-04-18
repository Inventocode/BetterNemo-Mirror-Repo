.class Lcom/nemo/commonui/xpopup/core/DrawerPopupView$1;
.super Ljava/lang/Object;
.source "DrawerPopupView.java"

# interfaces
.implements Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemo/commonui/xpopup/core/DrawerPopupView;->initPopupContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemo/commonui/xpopup/core/DrawerPopupView;


# direct methods
.method constructor <init>(Lcom/nemo/commonui/xpopup/core/DrawerPopupView;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/nemo/commonui/xpopup/core/DrawerPopupView$1;->this$0:Lcom/nemo/commonui/xpopup/core/DrawerPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/DrawerPopupView$1;->this$0:Lcom/nemo/commonui/xpopup/core/DrawerPopupView;

    invoke-static {v0}, Lcom/nemo/commonui/xpopup/core/DrawerPopupView;->access$001(Lcom/nemo/commonui/xpopup/core/DrawerPopupView;)V

    return-void
.end method

.method public onDismissing(F)V
    .registers 3

    .line 55
    iget-object p1, p0, Lcom/nemo/commonui/xpopup/core/DrawerPopupView$1;->this$0:Lcom/nemo/commonui/xpopup/core/DrawerPopupView;

    iget-object v0, p1, Lcom/nemo/commonui/xpopup/core/DrawerPopupView;->drawerLayout:Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;

    iget-object p1, p1, Lcom/nemo/commonui/xpopup/core/BasePopupView;->popupInfo:Lcom/nemo/commonui/xpopup/core/PopupInfo;

    iget-object p1, p1, Lcom/nemo/commonui/xpopup/core/PopupInfo;->hasStatusBarShadow:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->isDrawStatusBarShadow:Z

    return-void
.end method

.method public onOpen()V
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/DrawerPopupView$1;->this$0:Lcom/nemo/commonui/xpopup/core/DrawerPopupView;

    invoke-static {v0}, Lcom/nemo/commonui/xpopup/core/DrawerPopupView;->access$101(Lcom/nemo/commonui/xpopup/core/DrawerPopupView;)V

    return-void
.end method
