.class Lcom/codemao/nemo/fragment/CreateFragment$19$1;
.super Ljava/lang/Object;
.source "CreateFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/CreateFragment$19;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/nemo/fragment/CreateFragment$19;

.field final synthetic val$lists:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/CreateFragment$19;Ljava/util/List;)V
    .registers 3

    .line 1515
    iput-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$19$1;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$19;

    iput-object p2, p0, Lcom/codemao/nemo/fragment/CreateFragment$19$1;->val$lists:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1518
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$19$1;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$19;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CreateFragment$19;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/CreateFragment;->access$1400(Lcom/codemao/nemo/fragment/CreateFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1519
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$19$1;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$19;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CreateFragment$19;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/CreateFragment;->access$1400(Lcom/codemao/nemo/fragment/CreateFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/fragment/CreateFragment$19$1;->val$lists:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1520
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$19$1;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$19;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CreateFragment$19;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/CreateFragment;->access$2500(Lcom/codemao/nemo/fragment/CreateFragment;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 1521
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$19$1;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$19;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CreateFragment$19;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/CreateFragment;->access$2500(Lcom/codemao/nemo/fragment/CreateFragment;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1522
    :cond_2d
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/event/MineTabEvent;

    iget-object v2, p0, Lcom/codemao/nemo/fragment/CreateFragment$19$1;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$19;

    iget-object v2, v2, Lcom/codemao/nemo/fragment/CreateFragment$19;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v2}, Lcom/codemao/nemo/fragment/CreateFragment;->access$1400(Lcom/codemao/nemo/fragment/CreateFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lcom/codemao/nemo/event/MineTabEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1523
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$19$1;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$19;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CreateFragment$19;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CreateFragment;->mProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1524
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$19$1;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$19;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CreateFragment$19;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CreateFragment;->rvContainer:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_5c

    .line 1525
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_5c
    return-void
.end method
