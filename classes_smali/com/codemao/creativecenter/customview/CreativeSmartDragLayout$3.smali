.class Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout$3;
.super Ljava/lang/Object;
.source "CreativeSmartDragLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->smoothScroll(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;

.field final synthetic val$dy:I

.field final synthetic val$isOpen:Z


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;IZ)V
    .registers 4

    .line 223
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout$3;->this$0:Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;

    iput p2, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout$3;->val$dy:I

    iput-boolean p3, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout$3;->val$isOpen:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 226
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout$3;->this$0:Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;

    iget-object v1, v0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v2

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout$3;->this$0:Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v3

    iget v5, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout$3;->val$dy:I

    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout$3;->val$isOpen:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout$3;->this$0:Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;

    iget v0, v0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->duration:I

    int-to-float v0, v0

    goto :goto_24

    :cond_1a
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout$3;->this$0:Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;

    iget v0, v0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->duration:I

    int-to-float v0, v0

    const v4, 0x3f4ccccd  # 0.8f

    mul-float v0, v0, v4

    :goto_24
    float-to-int v6, v0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 227
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout$3;->this$0:Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method
