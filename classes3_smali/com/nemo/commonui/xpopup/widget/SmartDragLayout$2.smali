.class Lcom/nemo/commonui/xpopup/widget/SmartDragLayout$2;
.super Ljava/lang/Object;
.source "SmartDragLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;


# direct methods
.method constructor <init>(Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;)V
    .registers 2

    .line 226
    iput-object p1, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout$2;->this$0:Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 229
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout$2;->this$0:Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;

    iget v1, v0, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->minY:I

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/widget/SmartDragLayout;->smoothScroll(I)V

    return-void
.end method
