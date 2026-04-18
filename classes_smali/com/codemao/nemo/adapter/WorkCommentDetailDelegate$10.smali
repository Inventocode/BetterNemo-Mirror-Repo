.class Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$10;
.super Ljava/lang/Object;
.source "WorkCommentDetailDelegate.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;Lcom/codemao/nemo/bean/WorkReplyItem;)V
    .registers 3

    .line 214
    iput-object p1, p0, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$10;->this$0:Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;

    iput-object p2, p0, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$10;->val$data:Lcom/codemao/nemo/bean/WorkReplyItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 4

    .line 217
    iget-object p1, p0, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$10;->this$0:Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;->access$000(Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;)Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$WorkCommentDetailCallBack;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$10;->val$data:Lcom/codemao/nemo/bean/WorkReplyItem;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/WorkReplyItem;->getId()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$WorkCommentDetailCallBack;->copyReplyId(J)V

    const/4 p1, 0x1

    return p1
.end method
