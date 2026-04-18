.class Lcom/codemao/nemo/activity/CommentDetailActivity$5;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "CommentDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/CommentDetailActivity;->getCommentsDetail()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
        "Lcom/codemao/nemo/bean/WorkCommentReplys;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/CommentDetailActivity;)V
    .registers 2

    .line 414
    iput-object p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$5;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "40103008"

    .line 423
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 424
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/codemao/nemo/event/ShowCloseEvent;

    invoke-direct {p2}, Lcom/codemao/nemo/event/ShowCloseEvent;-><init>()V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 425
    iget-object p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$5;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-virtual {p1}, Lcom/codemao/nemo/activity/CommentDetailActivity;->finish()V

    goto :goto_2a

    .line 427
    :cond_1a
    iget-object p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$5;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/codemao/nemo/activity/CommentDetailActivity;->access$1702(Lcom/codemao/nemo/activity/CommentDetailActivity;Z)Z

    .line 428
    iget-object p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$5;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 429
    iget-object p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$5;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/CommentDetailActivity;->access$1800(Lcom/codemao/nemo/activity/CommentDetailActivity;)V

    :goto_2a
    return-void
.end method

.method public onNetError()V
    .registers 3

    .line 435
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$5;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/codemao/nemo/activity/CommentDetailActivity;->access$1702(Lcom/codemao/nemo/activity/CommentDetailActivity;Z)Z

    .line 436
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$5;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-static {v0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    .line 437
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$5;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/CommentDetailActivity;->access$1800(Lcom/codemao/nemo/activity/CommentDetailActivity;)V

    return-void
.end method

.method public onSuc(Lcom/codemao/nemo/bean/WorkCommentReplys;)V
    .registers 3

    .line 417
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$5;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-static {v0, p1}, Lcom/codemao/nemo/activity/CommentDetailActivity;->access$1600(Lcom/codemao/nemo/activity/CommentDetailActivity;Lcom/codemao/nemo/bean/WorkCommentReplys;)V

    .line 418
    iget-object p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$5;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/codemao/nemo/activity/CommentDetailActivity;->access$1702(Lcom/codemao/nemo/activity/CommentDetailActivity;Z)Z

    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 414
    check-cast p1, Lcom/codemao/nemo/bean/WorkCommentReplys;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/CommentDetailActivity$5;->onSuc(Lcom/codemao/nemo/bean/WorkCommentReplys;)V

    return-void
.end method
