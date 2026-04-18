.class Lcom/codemao/nemo/activity/CommentDetailActivity$14;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "CommentDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/CommentDetailActivity;->deleteComment(J)V
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


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/CommentDetailActivity;)V
    .registers 2

    .line 757
    iput-object p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$14;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 765
    iget-object p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$14;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onNetError()V
    .registers 2

    .line 770
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$14;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-static {v0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 757
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/CommentDetailActivity$14;->onSuc(Ljava/lang/String;)V

    return-void
.end method

.method public onSuc(Ljava/lang/String;)V
    .registers 2

    .line 760
    iget-object p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$14;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/CommentDetailActivity;->access$2500(Lcom/codemao/nemo/activity/CommentDetailActivity;)V

    return-void
.end method
