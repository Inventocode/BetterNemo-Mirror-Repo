.class Lcom/codemao/creativecenter/customview/CreativeSmartTopDragLayout$2;
.super Ljava/lang/Object;
.source "CreativeSmartTopDragLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/customview/CreativeSmartTopDragLayout;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/customview/CreativeSmartTopDragLayout;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/customview/CreativeSmartTopDragLayout;)V
    .registers 2

    .line 203
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CreativeSmartTopDragLayout$2;->this$0:Lcom/codemao/creativecenter/customview/CreativeSmartTopDragLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 206
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSmartTopDragLayout$2;->this$0:Lcom/codemao/creativecenter/customview/CreativeSmartTopDragLayout;

    iget v1, v0, Lcom/codemao/creativecenter/customview/CreativeSmartTopDragLayout;->minY:I

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/customview/CreativeSmartTopDragLayout;->smoothScroll(I)V

    return-void
.end method
