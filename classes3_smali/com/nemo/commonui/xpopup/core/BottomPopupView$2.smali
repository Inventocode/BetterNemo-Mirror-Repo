.class Lcom/nemo/commonui/xpopup/core/BottomPopupView$2;
.super Ljava/lang/Object;
.source "BottomPopupView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 73
    iput-object p1, p0, Lcom/nemo/commonui/xpopup/core/BottomPopupView$2;->this$0:Lcom/nemo/commonui/xpopup/core/BottomPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 76
    iget-object p1, p0, Lcom/nemo/commonui/xpopup/core/BottomPopupView$2;->this$0:Lcom/nemo/commonui/xpopup/core/BottomPopupView;

    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BottomPopupView;->dismiss()V

    return-void
.end method
