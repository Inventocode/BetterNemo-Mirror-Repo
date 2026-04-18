.class Lcom/codemao/nemo/fragment/CloudWorkFragment$4;
.super Ljava/lang/Object;
.source "CloudWorkFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/CloudWorkFragment;->onCloudDetEV(Lcom/codemao/nemo/event/CloudDetEV;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/CloudWorkFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/CloudWorkFragment;)V
    .registers 2

    .line 214
    iput-object p1, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment$4;->this$0:Lcom/codemao/nemo/fragment/CloudWorkFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 217
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment$4;->this$0:Lcom/codemao/nemo/fragment/CloudWorkFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/CloudWorkFragment;->access$300(Lcom/codemao/nemo/fragment/CloudWorkFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1e

    iget-object v0, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment$4;->this$0:Lcom/codemao/nemo/fragment/CloudWorkFragment;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CloudWorkFragment;->smartRecyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->getNoMore()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 218
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment$4;->this$0:Lcom/codemao/nemo/fragment/CloudWorkFragment;

    invoke-virtual {v0}, Lcom/codemao/nemo/fragment/CloudWorkFragment;->onLoadMore()V

    return-void

    .line 221
    :cond_1e
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment$4;->this$0:Lcom/codemao/nemo/fragment/CloudWorkFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/CloudWorkFragment;->access$300(Lcom/codemao/nemo/fragment/CloudWorkFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_31

    .line 222
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment$4;->this$0:Lcom/codemao/nemo/fragment/CloudWorkFragment;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CloudWorkFragment;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->showEmpty()V

    :cond_31
    return-void
.end method
