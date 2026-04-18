.class Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout$2;
.super Ljava/lang/Object;
.source "CreativeSmartDragLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;)V
    .registers 2

    .line 212
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout$2;->this$0:Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 215
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout$2;->this$0:Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;

    iget-object v0, v0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 216
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout$2;->this$0:Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;

    iget v1, v0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->minY:I

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->smoothScroll(IZ)V

    .line 217
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout$2;->this$0:Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;

    sget-object v1, Lcom/nemo/commonui/xpopup/enums/LayoutStatus;->Closing:Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

    iput-object v1, v0, Lcom/codemao/creativecenter/customview/CreativeSmartDragLayout;->status:Lcom/nemo/commonui/xpopup/enums/LayoutStatus;

    return-void
.end method
