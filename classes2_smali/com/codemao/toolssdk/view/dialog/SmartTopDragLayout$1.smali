.class Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout$1;
.super Ljava/lang/Object;
.source "SmartTopDragLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->open()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;)V
    .registers 2

    .line 192
    iput-object p1, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout$1;->this$0:Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 195
    iget-object v0, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout$1;->this$0:Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v1

    iget-object v2, p0, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout$1;->this$0:Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;

    iget v2, v2, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->maxY:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/view/dialog/SmartTopDragLayout;->smoothScroll(I)V

    return-void
.end method
