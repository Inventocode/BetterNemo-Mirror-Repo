.class Lcom/codemao/nemo/activity/CommentDetailActivity$6;
.super Ljava/lang/Object;
.source "CommentDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/CommentDetailActivity;->setCommentDetail(Lcom/codemao/nemo/bean/WorkCommentReplys;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

.field final synthetic val$finalTouchPosition:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/CommentDetailActivity;I)V
    .registers 3

    .line 483
    iput-object p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$6;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    iput p2, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$6;->val$finalTouchPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 486
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$6;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/CommentDetailActivity;->rvReplyDetail:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    iget v1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$6;->val$finalTouchPosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method
