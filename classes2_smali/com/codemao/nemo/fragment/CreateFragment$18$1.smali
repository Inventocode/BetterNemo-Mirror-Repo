.class Lcom/codemao/nemo/fragment/CreateFragment$18$1;
.super Ljava/lang/Object;
.source "CreateFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/CreateFragment$18;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/nemo/fragment/CreateFragment$18;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/CreateFragment$18;)V
    .registers 2

    .line 1477
    iput-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$18$1;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1480
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$18$1;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$18;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CreateFragment$18;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/CreateFragment;->access$1400(Lcom/codemao/nemo/fragment/CreateFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_18

    .line 1481
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$18$1;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$18;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CreateFragment$18;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CreateFragment;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->showEmpty()V

    goto :goto_21

    .line 1483
    :cond_18
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$18$1;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$18;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CreateFragment$18;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CreateFragment;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->hide()V

    .line 1485
    :goto_21
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$18$1;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$18;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CreateFragment$18;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/CreateFragment;->access$3100(Lcom/codemao/nemo/fragment/CreateFragment;)Lcom/codemao/nemo/delegates/CreateItemDelegate;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/fragment/CreateFragment$18$1;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$18;

    iget-object v1, v1, Lcom/codemao/nemo/fragment/CreateFragment$18;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$3000(Lcom/codemao/nemo/fragment/CreateFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/delegates/CreateItemDelegate;->setKeyword(Ljava/lang/String;)V

    .line 1486
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$18$1;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$18;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CreateFragment$18;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/CreateFragment;->access$3100(Lcom/codemao/nemo/fragment/CreateFragment;)Lcom/codemao/nemo/delegates/CreateItemDelegate;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/delegates/CreateItemDelegate;->setRenameable(Z)V

    .line 1487
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$18$1;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$18;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CreateFragment$18;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/CreateFragment;->access$2500(Lcom/codemao/nemo/fragment/CreateFragment;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
