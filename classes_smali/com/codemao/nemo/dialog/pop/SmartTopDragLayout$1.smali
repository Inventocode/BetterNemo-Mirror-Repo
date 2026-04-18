.class Lcom/codemao/nemo/dialog/pop/SmartTopDragLayout$1;
.super Ljava/lang/Object;
.source "SmartTopDragLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/dialog/pop/SmartTopDragLayout;->open()V
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

    .line 193
    iput-object p1, p0, Lcom/codemao/nemo/dialog/pop/SmartTopDragLayout$1;->this$0:Lcom/codemao/nemo/dialog/pop/SmartTopDragLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 196
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/SmartTopDragLayout$1;->this$0:Lcom/codemao/nemo/dialog/pop/SmartTopDragLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v1

    iget-object v2, p0, Lcom/codemao/nemo/dialog/pop/SmartTopDragLayout$1;->this$0:Lcom/codemao/nemo/dialog/pop/SmartTopDragLayout;

    iget v2, v2, Lcom/codemao/nemo/dialog/pop/SmartTopDragLayout;->maxY:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/pop/SmartTopDragLayout;->smoothScroll(I)V

    return-void
.end method
