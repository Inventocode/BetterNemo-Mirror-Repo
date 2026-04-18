.class Lcom/codemao/nemo/adapter/WorkReplyDelegate$2;
.super Ljava/lang/Object;
.source "WorkReplyDelegate.java"

# interfaces
.implements Lcom/codemao/nemo/view/FitSpannerEllipsizeTextView$NormalClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/adapter/WorkReplyDelegate;->convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/adapter/WorkReplyDelegate;

.field final synthetic val$data:Lcom/codemao/nemo/bean/WorkReplyItem;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/WorkReplyDelegate;ILcom/codemao/nemo/bean/WorkReplyItem;)V
    .registers 4

    .line 84
    iput-object p1, p0, Lcom/codemao/nemo/adapter/WorkReplyDelegate$2;->this$0:Lcom/codemao/nemo/adapter/WorkReplyDelegate;

    iput p2, p0, Lcom/codemao/nemo/adapter/WorkReplyDelegate$2;->val$position:I

    iput-object p3, p0, Lcom/codemao/nemo/adapter/WorkReplyDelegate$2;->val$data:Lcom/codemao/nemo/bean/WorkReplyItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNormalClick(Landroid/view/View;)V
    .registers 5

    .line 88
    iget-object p1, p0, Lcom/codemao/nemo/adapter/WorkReplyDelegate$2;->this$0:Lcom/codemao/nemo/adapter/WorkReplyDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/adapter/WorkReplyDelegate;->access$000(Lcom/codemao/nemo/adapter/WorkReplyDelegate;)Lcom/codemao/nemo/adapter/WorkReplyDelegate$WorkReplyCallBack;

    move-result-object p1

    iget v0, p0, Lcom/codemao/nemo/adapter/WorkReplyDelegate$2;->val$position:I

    iget-object v1, p0, Lcom/codemao/nemo/adapter/WorkReplyDelegate$2;->val$data:Lcom/codemao/nemo/bean/WorkReplyItem;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkReplyItem;->getId()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/codemao/nemo/adapter/WorkReplyDelegate$WorkReplyCallBack;->showCommentDetail(IJ)V

    return-void
.end method
