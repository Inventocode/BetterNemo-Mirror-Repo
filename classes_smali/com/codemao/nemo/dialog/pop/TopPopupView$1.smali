.class Lcom/codemao/nemo/dialog/pop/TopPopupView$1;
.super Ljava/lang/Object;
.source "TopPopupView.java"

# interfaces
.implements Lcom/codemao/nemo/dialog/pop/SmartTopDragLayout$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/dialog/pop/TopPopupView;->initPopupContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/dialog/pop/TopPopupView;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/dialog/pop/TopPopupView;)V
    .registers 2

    .line 51
    iput-object p1, p0, Lcom/codemao/nemo/dialog/pop/TopPopupView$1;->this$0:Lcom/codemao/nemo/dialog/pop/TopPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/TopPopupView$1;->this$0:Lcom/codemao/nemo/dialog/pop/TopPopupView;

    invoke-static {v0}, Lcom/codemao/nemo/dialog/pop/TopPopupView;->access$000(Lcom/codemao/nemo/dialog/pop/TopPopupView;)V

    return-void
.end method

.method public onOpen()V
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/TopPopupView$1;->this$0:Lcom/codemao/nemo/dialog/pop/TopPopupView;

    invoke-static {v0}, Lcom/codemao/nemo/dialog/pop/TopPopupView;->access$101(Lcom/codemao/nemo/dialog/pop/TopPopupView;)V

    return-void
.end method
