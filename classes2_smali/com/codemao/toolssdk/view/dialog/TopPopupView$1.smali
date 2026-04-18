.class Lcom/codemao/toolssdk/view/dialog/TopPopupView$1;
.super Ljava/lang/Object;
.source "TopPopupView.java"

# interfaces
.implements Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/view/dialog/TopPopupView;->initPopupContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/view/dialog/TopPopupView;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/view/dialog/TopPopupView;)V
    .registers 2

    .line 47
    iput-object p1, p0, Lcom/codemao/toolssdk/view/dialog/TopPopupView$1;->this$0:Lcom/codemao/toolssdk/view/dialog/TopPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/codemao/toolssdk/view/dialog/TopPopupView$1;->this$0:Lcom/codemao/toolssdk/view/dialog/TopPopupView;

    invoke-static {v0}, Lcom/codemao/toolssdk/view/dialog/TopPopupView;->access$000(Lcom/codemao/toolssdk/view/dialog/TopPopupView;)V

    return-void
.end method

.method public onOpen()V
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/codemao/toolssdk/view/dialog/TopPopupView$1;->this$0:Lcom/codemao/toolssdk/view/dialog/TopPopupView;

    invoke-static {v0}, Lcom/codemao/toolssdk/view/dialog/TopPopupView;->access$101(Lcom/codemao/toolssdk/view/dialog/TopPopupView;)V

    return-void
.end method
