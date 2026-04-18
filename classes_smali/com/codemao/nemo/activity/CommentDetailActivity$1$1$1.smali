.class Lcom/codemao/nemo/activity/CommentDetailActivity$1$1$1;
.super Ljava/lang/Object;
.source "CommentDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/CommentDetailActivity$1$1;->delete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/codemao/nemo/activity/CommentDetailActivity$1$1;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/CommentDetailActivity$1$1;)V
    .registers 2

    .line 185
    iput-object p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$1$1$1;->this$2:Lcom/codemao/nemo/activity/CommentDetailActivity$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 189
    iget-object p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$1$1$1;->this$2:Lcom/codemao/nemo/activity/CommentDetailActivity$1$1;

    iget-object p1, p1, Lcom/codemao/nemo/activity/CommentDetailActivity$1$1;->this$1:Lcom/codemao/nemo/activity/CommentDetailActivity$1;

    iget-object p1, p1, Lcom/codemao/nemo/activity/CommentDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/CommentDetailActivity;->access$200(Lcom/codemao/nemo/activity/CommentDetailActivity;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 190
    iget-object p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$1$1$1;->this$2:Lcom/codemao/nemo/activity/CommentDetailActivity$1$1;

    iget-object p1, p1, Lcom/codemao/nemo/activity/CommentDetailActivity$1$1;->this$1:Lcom/codemao/nemo/activity/CommentDetailActivity$1;

    iget-object p1, p1, Lcom/codemao/nemo/activity/CommentDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/CommentDetailActivity;->access$000(Lcom/codemao/nemo/activity/CommentDetailActivity;)I

    move-result p1

    if-nez p1, :cond_2b

    .line 191
    iget-object p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$1$1$1;->this$2:Lcom/codemao/nemo/activity/CommentDetailActivity$1$1;

    iget-object p1, p1, Lcom/codemao/nemo/activity/CommentDetailActivity$1$1;->this$1:Lcom/codemao/nemo/activity/CommentDetailActivity$1;

    iget-object p1, p1, Lcom/codemao/nemo/activity/CommentDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/CommentDetailActivity;->access$300(Lcom/codemao/nemo/activity/CommentDetailActivity;)Lcom/codemao/nemo/bean/WorkCommentItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/WorkCommentItem;->getId()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/codemao/nemo/activity/CommentDetailActivity;->access$400(Lcom/codemao/nemo/activity/CommentDetailActivity;J)V

    goto :goto_56

    .line 193
    :cond_2b
    iget-object p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$1$1$1;->this$2:Lcom/codemao/nemo/activity/CommentDetailActivity$1$1;

    iget-object p1, p1, Lcom/codemao/nemo/activity/CommentDetailActivity$1$1;->this$1:Lcom/codemao/nemo/activity/CommentDetailActivity$1;

    iget-object p1, p1, Lcom/codemao/nemo/activity/CommentDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/CommentDetailActivity;->access$500(Lcom/codemao/nemo/activity/CommentDetailActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$1$1$1;->this$2:Lcom/codemao/nemo/activity/CommentDetailActivity$1$1;

    iget-object v1, v1, Lcom/codemao/nemo/activity/CommentDetailActivity$1$1;->this$1:Lcom/codemao/nemo/activity/CommentDetailActivity$1;

    iget-object v1, v1, Lcom/codemao/nemo/activity/CommentDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-static {v1}, Lcom/codemao/nemo/activity/CommentDetailActivity;->access$000(Lcom/codemao/nemo/activity/CommentDetailActivity;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/WorkReplyItem;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/WorkReplyItem;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$1$1$1;->this$2:Lcom/codemao/nemo/activity/CommentDetailActivity$1$1;

    iget-object v2, v2, Lcom/codemao/nemo/activity/CommentDetailActivity$1$1;->this$1:Lcom/codemao/nemo/activity/CommentDetailActivity$1;

    iget-object v2, v2, Lcom/codemao/nemo/activity/CommentDetailActivity$1;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-static {v2}, Lcom/codemao/nemo/activity/CommentDetailActivity;->access$000(Lcom/codemao/nemo/activity/CommentDetailActivity;)I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lcom/codemao/nemo/activity/CommentDetailActivity;->access$600(Lcom/codemao/nemo/activity/CommentDetailActivity;JI)V

    :goto_56
    return-void
.end method
