.class Lcom/nemo/commonui/xpopup/core/AttachPopupView$1;
.super Ljava/lang/Object;
.source "AttachPopupView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemo/commonui/xpopup/core/AttachPopupView;->initPopupContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemo/commonui/xpopup/core/AttachPopupView;


# direct methods
.method constructor <init>(Lcom/nemo/commonui/xpopup/core/AttachPopupView;)V
    .registers 2

    .line 84
    iput-object p1, p0, Lcom/nemo/commonui/xpopup/core/AttachPopupView$1;->this$0:Lcom/nemo/commonui/xpopup/core/AttachPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/core/AttachPopupView$1;->this$0:Lcom/nemo/commonui/xpopup/core/AttachPopupView;

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/AttachPopupView;->doAttach()V

    return-void
.end method
