.class Lcom/codemao/nemo/fragment/WorkCommentFragment$16;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "WorkCommentFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/WorkCommentFragment;->deleteComment(JI)V
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
.field final synthetic this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

.field final synthetic val$id:J

.field final synthetic val$postion:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/WorkCommentFragment;JI)V
    .registers 5

    .line 821
    iput-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$16;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    iput-wide p2, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$16;->val$id:J

    iput p4, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$16;->val$postion:I

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 830
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$16;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onNetError()V
    .registers 2

    .line 835
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$16;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 821
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/fragment/WorkCommentFragment$16;->onSuc(Ljava/lang/String;)V

    return-void
.end method

.method public onSuc(Ljava/lang/String;)V
    .registers 5

    .line 825
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$16;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    iget-wide v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$16;->val$id:J

    iget v2, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$16;->val$postion:I

    invoke-static {p1, v0, v1, v2}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$3000(Lcom/codemao/nemo/fragment/WorkCommentFragment;JI)V

    return-void
.end method
