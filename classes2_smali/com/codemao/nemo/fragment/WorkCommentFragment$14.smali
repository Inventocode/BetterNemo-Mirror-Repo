.class Lcom/codemao/nemo/fragment/WorkCommentFragment$14;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "WorkCommentFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/WorkCommentFragment;->sendReply()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
        "Lcom/codemao/nemo/response/CommentAndReplyResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/WorkCommentFragment;)V
    .registers 2

    .line 655
    iput-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$14;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "40103008"

    .line 663
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 664
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$14;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$2000(Lcom/codemao/nemo/fragment/WorkCommentFragment;)V

    goto :goto_56

    :cond_e
    const-string v0, "40102007"

    .line 665
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 666
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$14;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    new-instance v0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    iget-object v1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$14;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->setRightTextVisible(Z)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->titleStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->contentStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object p2

    const-string v0, "知道了"

    invoke-virtual {p2, v0}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->leftBtnStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$2802(Lcom/codemao/nemo/fragment/WorkCommentFragment;Lcom/codemao/nemo/dialog/CustomDialogTypeOne;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    .line 667
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$14;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$2800(Lcom/codemao/nemo/fragment/WorkCommentFragment;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_56

    :cond_45
    const-string v0, "402"

    .line 668
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_56

    .line 669
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$14;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :cond_56
    :goto_56
    return-void
.end method

.method public onNetError()V
    .registers 2

    .line 675
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$14;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void
.end method

.method public onSuc(Lcom/codemao/nemo/response/CommentAndReplyResponse;)V
    .registers 3

    .line 658
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$14;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-virtual {p1}, Lcom/codemao/nemo/response/CommentAndReplyResponse;->getId()I

    move-result p1

    invoke-static {v0, p1}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$2900(Lcom/codemao/nemo/fragment/WorkCommentFragment;I)V

    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 655
    check-cast p1, Lcom/codemao/nemo/response/CommentAndReplyResponse;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/fragment/WorkCommentFragment$14;->onSuc(Lcom/codemao/nemo/response/CommentAndReplyResponse;)V

    return-void
.end method
