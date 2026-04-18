.class Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$7;
.super Ljava/lang/Object;
.source "WorkCommentDetailDelegate.java"

# interfaces
.implements Lcom/codemao/nemo/adapter/CommentExpressionDelegate$CommentExpressionCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;->convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;

.field final synthetic val$data:Lcom/codemao/nemo/bean/WorkReplyItem;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;ILcom/codemao/nemo/bean/WorkReplyItem;)V
    .registers 4

    .line 163
    iput-object p1, p0, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$7;->this$0:Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;

    iput p2, p0, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$7;->val$position:I

    iput-object p3, p0, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$7;->val$data:Lcom/codemao/nemo/bean/WorkReplyItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copyReplyId()V
    .registers 4

    .line 172
    iget-object v0, p0, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$7;->this$0:Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;

    invoke-static {v0}, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;->access$000(Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;)Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$WorkCommentDetailCallBack;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$7;->val$data:Lcom/codemao/nemo/bean/WorkReplyItem;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkReplyItem;->getId()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$WorkCommentDetailCallBack;->copyReplyId(J)V

    return-void
.end method

.method public reply()V
    .registers 3

    .line 167
    iget-object v0, p0, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$7;->this$0:Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;

    invoke-static {v0}, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;->access$000(Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;)Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$WorkCommentDetailCallBack;

    move-result-object v0

    iget v1, p0, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$7;->val$position:I

    invoke-interface {v0, v1}, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$WorkCommentDetailCallBack;->reply(I)V

    return-void
.end method
