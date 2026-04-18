.class Lcom/codemao/nemo/activity/CommentDetailActivity$12;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "CommentDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/CommentDetailActivity;->sendReply(JJLjava/lang/String;J)V
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
.field final synthetic this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/CommentDetailActivity;)V
    .registers 2

    .line 648
    iput-object p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$12;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "40103008"

    .line 656
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 657
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/codemao/nemo/event/ShowCloseEvent;

    invoke-direct {p2}, Lcom/codemao/nemo/event/ShowCloseEvent;-><init>()V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 658
    iget-object p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$12;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-virtual {p1}, Lcom/codemao/nemo/activity/CommentDetailActivity;->finish()V

    goto :goto_5b

    :cond_1a
    const-string v0, "40102007"

    .line 659
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 660
    iget-object p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$12;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    new-instance v0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    iget-object v1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$12;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-direct {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->setRightTextVisible(Z)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->titleStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->contentStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object p2

    const-string/jumbo v0, "知道了"

    invoke-virtual {p2, v0}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->leftBtnStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/codemao/nemo/activity/CommentDetailActivity;->access$2302(Lcom/codemao/nemo/activity/CommentDetailActivity;Lcom/codemao/nemo/dialog/CustomDialogTypeOne;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    .line 661
    iget-object p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$12;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/CommentDetailActivity;->access$2300(Lcom/codemao/nemo/activity/CommentDetailActivity;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_5b

    :cond_4e
    const-string v0, "402"

    .line 662
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5b

    .line 663
    iget-object p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$12;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :cond_5b
    :goto_5b
    return-void
.end method

.method public onNetError()V
    .registers 2

    .line 669
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$12;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-static {v0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void
.end method

.method public onSuc(Lcom/codemao/nemo/response/CommentAndReplyResponse;)V
    .registers 5

    .line 651
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$12;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-virtual {p1}, Lcom/codemao/nemo/response/CommentAndReplyResponse;->getId()I

    move-result p1

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lcom/codemao/nemo/activity/CommentDetailActivity;->access$2200(Lcom/codemao/nemo/activity/CommentDetailActivity;J)V

    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 648
    check-cast p1, Lcom/codemao/nemo/response/CommentAndReplyResponse;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/CommentDetailActivity$12;->onSuc(Lcom/codemao/nemo/response/CommentAndReplyResponse;)V

    return-void
.end method
