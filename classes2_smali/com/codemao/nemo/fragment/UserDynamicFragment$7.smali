.class Lcom/codemao/nemo/fragment/UserDynamicFragment$7;
.super Ljava/lang/Object;
.source "UserDynamicFragment.java"

# interfaces
.implements Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$LoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/UserDynamicFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/UserDynamicFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/UserDynamicFragment;)V
    .registers 2

    .line 229
    iput-object p1, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment$7;->this$0:Lcom/codemao/nemo/fragment/UserDynamicFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .registers 3

    .line 237
    iget-object v0, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment$7;->this$0:Lcom/codemao/nemo/fragment/UserDynamicFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/UserDynamicFragment;->access$400(Lcom/codemao/nemo/fragment/UserDynamicFragment;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    .line 238
    iget-object v0, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment$7;->this$0:Lcom/codemao/nemo/fragment/UserDynamicFragment;

    invoke-static {v0, v1}, Lcom/codemao/nemo/fragment/UserDynamicFragment;->access$802(Lcom/codemao/nemo/fragment/UserDynamicFragment;Z)Z

    .line 239
    iget-object v0, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment$7;->this$0:Lcom/codemao/nemo/fragment/UserDynamicFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/UserDynamicFragment;->access$700(Lcom/codemao/nemo/fragment/UserDynamicFragment;)V

    goto :goto_1b

    .line 241
    :cond_14
    iget-object v0, p0, Lcom/codemao/nemo/fragment/UserDynamicFragment$7;->this$0:Lcom/codemao/nemo/fragment/UserDynamicFragment;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/UserDynamicFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setNoMoreData(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    :goto_1b
    return-void
.end method
