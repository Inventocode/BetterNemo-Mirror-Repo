.class Lcom/codemao/nemo/fragment/WorkCommentFragment$4;
.super Ljava/lang/Object;
.source "WorkCommentFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/WorkCommentFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    .line 362
    iput-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$4;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 366
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$4;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_14

    .line 367
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$4;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/WorkCommentFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showError()V

    return-void

    .line 370
    :cond_14
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$4;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$1302(Lcom/codemao/nemo/fragment/WorkCommentFragment;I)I

    .line 371
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$4;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/WorkCommentFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showLoading()V

    .line 372
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$4;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {p1, v0}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$1400(Lcom/codemao/nemo/fragment/WorkCommentFragment;Z)V

    return-void
.end method
