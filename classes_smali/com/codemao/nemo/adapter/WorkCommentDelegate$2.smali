.class Lcom/codemao/nemo/adapter/WorkCommentDelegate$2;
.super Ljava/lang/Object;
.source "WorkCommentDelegate.java"

# interfaces
.implements Lcom/codemao/nemo/adapter/WorkReplyDelegate$WorkReplyCallBack;


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

    .line 107
    iput-object p1, p0, Lcom/codemao/nemo/adapter/WorkCommentDelegate$2;->this$0:Lcom/codemao/nemo/adapter/WorkCommentDelegate;

    iput p2, p0, Lcom/codemao/nemo/adapter/WorkCommentDelegate$2;->val$position:I

    iput-object p3, p0, Lcom/codemao/nemo/adapter/WorkCommentDelegate$2;->val$data:Lcom/codemao/nemo/bean/WorkCommentItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copyReply(J)V
    .registers 4

    .line 125
    iget-object v0, p0, Lcom/codemao/nemo/adapter/WorkCommentDelegate$2;->this$0:Lcom/codemao/nemo/adapter/WorkCommentDelegate;

    invoke-static {v0}, Lcom/codemao/nemo/adapter/WorkCommentDelegate;->access$000(Lcom/codemao/nemo/adapter/WorkCommentDelegate;)Lcom/codemao/nemo/adapter/WorkCommentDelegate$WorkCommentCallBack;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/codemao/nemo/adapter/WorkCommentDelegate$WorkCommentCallBack;->copyCommentId(J)V

    return-void
.end method

.method public showCommentDetail(IJ)V
    .registers 11

    .line 115
    iget-object v0, p0, Lcom/codemao/nemo/adapter/WorkCommentDelegate$2;->this$0:Lcom/codemao/nemo/adapter/WorkCommentDelegate;

    invoke-static {v0}, Lcom/codemao/nemo/adapter/WorkCommentDelegate;->access$000(Lcom/codemao/nemo/adapter/WorkCommentDelegate;)Lcom/codemao/nemo/adapter/WorkCommentDelegate$WorkCommentCallBack;

    move-result-object v1

    iget v2, p0, Lcom/codemao/nemo/adapter/WorkCommentDelegate$2;->val$position:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/codemao/nemo/adapter/WorkCommentDelegate$2;->val$data:Lcom/codemao/nemo/bean/WorkCommentItem;

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/WorkCommentItem;->getId()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move v4, p1

    move-wide v5, p2

    invoke-interface/range {v1 .. v6}, Lcom/codemao/nemo/adapter/WorkCommentDelegate$WorkCommentCallBack;->showCommentDetail(ILjava/lang/String;IJ)V

    return-void
.end method

.method public toUserDetail(Landroid/widget/ImageView;JLjava/lang/String;)V
    .registers 6

    .line 130
    iget-object v0, p0, Lcom/codemao/nemo/adapter/WorkCommentDelegate$2;->this$0:Lcom/codemao/nemo/adapter/WorkCommentDelegate;

    invoke-static {v0}, Lcom/codemao/nemo/adapter/WorkCommentDelegate;->access$000(Lcom/codemao/nemo/adapter/WorkCommentDelegate;)Lcom/codemao/nemo/adapter/WorkCommentDelegate$WorkCommentCallBack;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/codemao/nemo/adapter/WorkCommentDelegate$WorkCommentCallBack;->toUserDetail(Landroid/widget/ImageView;JLjava/lang/String;)V

    return-void
.end method
