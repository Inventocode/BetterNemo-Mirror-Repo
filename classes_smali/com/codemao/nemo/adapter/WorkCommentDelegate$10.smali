.class Lcom/codemao/nemo/adapter/WorkCommentDelegate$10;
.super Ljava/lang/Object;
.source "WorkCommentDelegate.java"

# interfaces
.implements Lcom/codemao/nemo/adapter/CommentExpressionDelegate$CommentExpressionCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/adapter/WorkCommentDelegate;->convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/adapter/WorkCommentDelegate;

.field final synthetic val$data:Lcom/codemao/nemo/bean/WorkCommentItem;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/WorkCommentDelegate;ILcom/codemao/nemo/bean/WorkCommentItem;)V
    .registers 4

    .line 211
    iput-object p1, p0, Lcom/codemao/nemo/adapter/WorkCommentDelegate$10;->this$0:Lcom/codemao/nemo/adapter/WorkCommentDelegate;

    iput p2, p0, Lcom/codemao/nemo/adapter/WorkCommentDelegate$10;->val$position:I

    iput-object p3, p0, Lcom/codemao/nemo/adapter/WorkCommentDelegate$10;->val$data:Lcom/codemao/nemo/bean/WorkCommentItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copyReplyId()V
    .registers 4

    .line 219
    iget-object v0, p0, Lcom/codemao/nemo/adapter/WorkCommentDelegate$10;->this$0:Lcom/codemao/nemo/adapter/WorkCommentDelegate;

    invoke-static {v0}, Lcom/codemao/nemo/adapter/WorkCommentDelegate;->access$000(Lcom/codemao/nemo/adapter/WorkCommentDelegate;)Lcom/codemao/nemo/adapter/WorkCommentDelegate$WorkCommentCallBack;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/adapter/WorkCommentDelegate$10;->val$data:Lcom/codemao/nemo/bean/WorkCommentItem;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkCommentItem;->getId()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/codemao/nemo/adapter/WorkCommentDelegate$WorkCommentCallBack;->copyCommentId(J)V

    return-void
.end method

.method public reply()V
    .registers 3

    .line 214
    iget-object v0, p0, Lcom/codemao/nemo/adapter/WorkCommentDelegate$10;->this$0:Lcom/codemao/nemo/adapter/WorkCommentDelegate;

    invoke-static {v0}, Lcom/codemao/nemo/adapter/WorkCommentDelegate;->access$000(Lcom/codemao/nemo/adapter/WorkCommentDelegate;)Lcom/codemao/nemo/adapter/WorkCommentDelegate$WorkCommentCallBack;

    move-result-object v0

    iget v1, p0, Lcom/codemao/nemo/adapter/WorkCommentDelegate$10;->val$position:I

    invoke-interface {v0, v1}, Lcom/codemao/nemo/adapter/WorkCommentDelegate$WorkCommentCallBack;->comment(I)V

    return-void
.end method
