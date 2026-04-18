.class Lcom/codemao/nemo/fragment/WorkCommentFragment$11;
.super Ljava/lang/Object;
.source "WorkCommentFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/WorkCommentFragment;->showReplyInput()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/WorkCommentFragment;)V
    .registers 2

    .line 586
    iput-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$11;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 590
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$11;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$2200(Lcom/codemao/nemo/fragment/WorkCommentFragment;)Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$2102(Lcom/codemao/nemo/fragment/WorkCommentFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 591
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$11;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$2200(Lcom/codemao/nemo/fragment/WorkCommentFragment;)Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->getEmojiContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$2302(Lcom/codemao/nemo/fragment/WorkCommentFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 592
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$11;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    const-string v0, "二级"

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->getReportParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "作品详情页-点击评论发送"

    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 593
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$11;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$2200(Lcom/codemao/nemo/fragment/WorkCommentFragment;)Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->getType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3a

    .line 594
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$11;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$2400(Lcom/codemao/nemo/fragment/WorkCommentFragment;)V

    goto :goto_4c

    .line 595
    :cond_3a
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$11;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$2200(Lcom/codemao/nemo/fragment/WorkCommentFragment;)Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->getType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_4c

    .line 596
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$11;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$2500(Lcom/codemao/nemo/fragment/WorkCommentFragment;)V

    :cond_4c
    :goto_4c
    return-void
.end method
