.class Lcom/codemao/nemo/fragment/WorkCommentFragment$9;
.super Ljava/lang/Object;
.source "WorkCommentFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/WorkCommentFragment;->showCommentInput(Z)V
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

    .line 537
    iput-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$9;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 541
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$9;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_16

    .line 542
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$9;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 545
    :cond_16
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$9;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$2200(Lcom/codemao/nemo/fragment/WorkCommentFragment;)Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$2102(Lcom/codemao/nemo/fragment/WorkCommentFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 546
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$9;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$2200(Lcom/codemao/nemo/fragment/WorkCommentFragment;)Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->getEmojiContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$2302(Lcom/codemao/nemo/fragment/WorkCommentFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 548
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$9;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    const-string v0, "一级"

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->getReportParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "作品详情页-点击评论发送"

    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 549
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$9;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$2200(Lcom/codemao/nemo/fragment/WorkCommentFragment;)Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->getType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_50

    .line 550
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$9;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$2400(Lcom/codemao/nemo/fragment/WorkCommentFragment;)V

    goto :goto_62

    .line 551
    :cond_50
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$9;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$2200(Lcom/codemao/nemo/fragment/WorkCommentFragment;)Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->getType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_62

    .line 552
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$9;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$2500(Lcom/codemao/nemo/fragment/WorkCommentFragment;)V

    :cond_62
    :goto_62
    return-void
.end method
