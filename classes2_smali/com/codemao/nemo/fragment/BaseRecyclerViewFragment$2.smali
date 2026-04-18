.class Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment$2;
.super Ljava/lang/Object;
.source "BaseRecyclerViewFragment.java"

# interfaces
.implements Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$LoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->initRecyclerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;)V
    .registers 2

    .line 119
    iput-object p1, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment$2;->this$0:Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .registers 3

    .line 127
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment$2;->this$0:Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;

    iget-boolean v1, v0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->isLoading:Z

    if-eqz v1, :cond_c

    .line 128
    iget-object v0, v0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->loadMoreComplete()V

    return-void

    .line 131
    :cond_c
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 132
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment$2;->this$0:Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;

    invoke-virtual {v0}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->showError()V

    return-void

    .line 135
    :cond_1c
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment$2;->this$0:Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;

    iget-boolean v1, v0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->hasMore:Z

    if-eqz v1, :cond_28

    const/4 v1, 0x1

    .line 136
    iput-boolean v1, v0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->isLoadMore:Z

    .line 137
    invoke-virtual {v0}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->getData()V

    :cond_28
    return-void
.end method
