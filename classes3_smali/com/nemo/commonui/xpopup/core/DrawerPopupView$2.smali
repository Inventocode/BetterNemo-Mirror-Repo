.class Lcom/nemo/commonui/xpopup/core/DrawerPopupView$2;
.super Ljava/lang/Object;
.source "DrawerPopupView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 61
    iput-object p1, p0, Lcom/nemo/commonui/xpopup/core/DrawerPopupView$2;->this$0:Lcom/nemo/commonui/xpopup/core/DrawerPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 64
    iget-object p1, p0, Lcom/nemo/commonui/xpopup/core/DrawerPopupView$2;->this$0:Lcom/nemo/commonui/xpopup/core/DrawerPopupView;

    iget-object p1, p1, Lcom/nemo/commonui/xpopup/core/DrawerPopupView;->drawerLayout:Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;

    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/widget/PopupDrawerLayout;->close()V

    return-void
.end method
