.class Lcom/codemao/nemo/fragment/WorkCommentFragment$6;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "WorkCommentFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/WorkCommentFragment;->getComments(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
        "Lcom/codemao/nemo/bean/WorkComments;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

.field final synthetic val$needToScroll:Z


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/WorkCommentFragment;Z)V
    .registers 3

    .line 440
    iput-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$6;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    iput-boolean p2, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$6;->val$needToScroll:Z

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 454
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$6;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$1802(Lcom/codemao/nemo/fragment/WorkCommentFragment;Z)Z

    .line 455
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$6;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {v0, v1}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$1502(Lcom/codemao/nemo/fragment/WorkCommentFragment;Z)Z

    .line 456
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$6;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$1900(Lcom/codemao/nemo/fragment/WorkCommentFragment;)V

    const-string v0, "40103008"

    .line 457
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 458
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$6;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$2000(Lcom/codemao/nemo/fragment/WorkCommentFragment;)V

    goto :goto_3a

    .line 460
    :cond_1e
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$6;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 461
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$6;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$300(Lcom/codemao/nemo/fragment/WorkCommentFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_3a

    .line 462
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$6;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/WorkCommentFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showError()V

    :cond_3a
    :goto_3a
    return-void
.end method

.method public onNetError()V
    .registers 3

    .line 469
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$6;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$1900(Lcom/codemao/nemo/fragment/WorkCommentFragment;)V

    .line 470
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$6;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$300(Lcom/codemao/nemo/fragment/WorkCommentFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_18

    .line 471
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$6;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->showError()V

    .line 473
    :cond_18
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$6;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$1802(Lcom/codemao/nemo/fragment/WorkCommentFragment;Z)Z

    .line 474
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$6;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {v0, v1}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$1502(Lcom/codemao/nemo/fragment/WorkCommentFragment;Z)Z

    .line 475
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$6;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void
.end method

.method public onSuc(Lcom/codemao/nemo/bean/WorkComments;)V
    .registers 4

    .line 443
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$6;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->hide()V

    .line 444
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$6;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    iget-boolean v1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$6;->val$needToScroll:Z

    invoke-static {v0, p1, v1}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$1700(Lcom/codemao/nemo/fragment/WorkCommentFragment;Lcom/codemao/nemo/bean/WorkComments;Z)V

    .line 445
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$6;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$300(Lcom/codemao/nemo/fragment/WorkCommentFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_21

    .line 446
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$6;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/WorkCommentFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showEmpty()V

    .line 448
    :cond_21
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$6;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$1802(Lcom/codemao/nemo/fragment/WorkCommentFragment;Z)Z

    .line 449
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$6;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {p1, v0}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$1502(Lcom/codemao/nemo/fragment/WorkCommentFragment;Z)Z

    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 440
    check-cast p1, Lcom/codemao/nemo/bean/WorkComments;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/fragment/WorkCommentFragment$6;->onSuc(Lcom/codemao/nemo/bean/WorkComments;)V

    return-void
.end method
