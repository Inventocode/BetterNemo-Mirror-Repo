.class Lcom/codemao/nemo/activity/CommentDetailActivity$13;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "CommentDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/CommentDetailActivity;->deleteReply(JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/CommentDetailActivity;I)V
    .registers 3

    .line 727
    iput-object p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$13;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    iput p2, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$13;->val$position:I

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "40103008"

    .line 735
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 736
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/codemao/nemo/event/ShowCloseEvent;

    invoke-direct {p2}, Lcom/codemao/nemo/event/ShowCloseEvent;-><init>()V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 737
    iget-object p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$13;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-virtual {p1}, Lcom/codemao/nemo/activity/CommentDetailActivity;->finish()V

    goto :goto_1f

    .line 739
    :cond_1a
    iget-object p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$13;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_1f
    return-void
.end method

.method public onNetError()V
    .registers 2

    .line 746
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$13;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-static {v0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 727
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/CommentDetailActivity$13;->onSuc(Ljava/lang/String;)V

    return-void
.end method

.method public onSuc(Ljava/lang/String;)V
    .registers 3

    .line 730
    iget-object p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$13;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    iget v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$13;->val$position:I

    invoke-static {p1, v0}, Lcom/codemao/nemo/activity/CommentDetailActivity;->access$2400(Lcom/codemao/nemo/activity/CommentDetailActivity;I)V

    return-void
.end method
