.class Lcom/nemo/commonui/xpopup/core/BottomPopupView$1;
.super Ljava/lang/Object;
.source "BottomPopupView.java"

# interfaces
.implements Lcom/nemo/commonui/xpopup/widget/SmartDragLayout$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemo/commonui/xpopup/core/BottomPopupView;->initPopupContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemo/commonui/xpopup/core/BottomPopupView;


# direct methods
.method constructor <init>(Lcom/nemo/commonui/xpopup/core/BottomPopupView;)V
    .registers 2

    .line 51
    iput-object p1, p0, Lcom/nemo/commonui/xpopup/core/BottomPopupView$1;->this$0:Lcom/nemo/commonui/xpopup/core/BottomPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BottomPopupView$1;->this$0:Lcom/nemo/commonui/xpopup/core/BottomPopupView;

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->doAfterDismiss()V

    return-void
.end method

.method public onDrag(IFZ)V
    .registers 5

    .line 59
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BottomPopupView$1;->this$0:Lcom/nemo/commonui/xpopup/core/BottomPopupView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nemo/commonui/xpopup/core/BottomPopupView;->onDragListener(IFZ)V

    return-void
.end method

.method public onOpen()V
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BottomPopupView$1;->this$0:Lcom/nemo/commonui/xpopup/core/BottomPopupView;

    invoke-static {v0}, Lcom/nemo/commonui/xpopup/core/BottomPopupView;->access$001(Lcom/nemo/commonui/xpopup/core/BottomPopupView;)V

    return-void
.end method

.method public onTouchOut(FF)V
    .registers 4

    .line 69
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/BottomPopupView$1;->this$0:Lcom/nemo/commonui/xpopup/core/BottomPopupView;

    invoke-virtual {v0, p1, p2}, Lcom/nemo/commonui/xpopup/core/BottomPopupView;->onTouchOutListener(FF)V

    return-void
.end method
