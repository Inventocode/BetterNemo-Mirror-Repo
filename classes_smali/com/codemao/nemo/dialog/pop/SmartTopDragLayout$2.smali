.class Lcom/codemao/nemo/dialog/pop/SmartTopDragLayout$2;
.super Ljava/lang/Object;
.source "SmartTopDragLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/dialog/pop/SmartTopDragLayout;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/dialog/pop/SmartTopDragLayout;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/dialog/pop/SmartTopDragLayout;)V
    .registers 2

    .line 204
    iput-object p1, p0, Lcom/codemao/nemo/dialog/pop/SmartTopDragLayout$2;->this$0:Lcom/codemao/nemo/dialog/pop/SmartTopDragLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 207
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/SmartTopDragLayout$2;->this$0:Lcom/codemao/nemo/dialog/pop/SmartTopDragLayout;

    iget v1, v0, Lcom/codemao/nemo/dialog/pop/SmartTopDragLayout;->minY:I

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/pop/SmartTopDragLayout;->smoothScroll(I)V

    return-void
.end method
