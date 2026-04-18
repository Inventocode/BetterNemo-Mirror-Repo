.class Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2$6;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "DiscoveryUserSearchFragmentV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;->getData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
        "Lcom/codemao/nemo/bean/DiscoverySearchUsers;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;)V
    .registers 2

    .line 233
    iput-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2$6;->this$0:Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 243
    iget-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2$6;->this$0:Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;

    invoke-virtual {p1}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->afterLoading()V

    .line 244
    iget-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2$6;->this$0:Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;

    iget p2, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->offset:I

    if-nez p2, :cond_f

    .line 245
    invoke-static {p1}, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;->access$300(Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;)V

    goto :goto_14

    .line 247
    :cond_f
    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->hide()V

    .line 249
    :goto_14
    iget-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2$6;->this$0:Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->isLoading:Z

    .line 250
    iput-boolean p2, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->isLoadMore:Z

    .line 252
    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    return-void
.end method

.method public onNetError()V
    .registers 3

    .line 258
    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2$6;->this$0:Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->isLoading:Z

    .line 259
    iput-boolean v1, v0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->isLoadMore:Z

    .line 260
    invoke-virtual {v0}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->afterLoading()V

    .line 261
    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2$6;->this$0:Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1c

    .line 262
    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2$6;->this$0:Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->showError()V

    goto :goto_23

    .line 264
    :cond_1c
    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2$6;->this$0:Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->hide()V

    :goto_23
    return-void
.end method

.method public onSuc(Lcom/codemao/nemo/bean/DiscoverySearchUsers;)V
    .registers 3

    .line 236
    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2$6;->this$0:Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;

    invoke-static {v0, p1}, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;->access$200(Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;Lcom/codemao/nemo/bean/DiscoverySearchUsers;)V

    .line 237
    iget-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2$6;->this$0:Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->isLoading:Z

    .line 238
    iput-boolean v0, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->isLoadMore:Z

    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 233
    check-cast p1, Lcom/codemao/nemo/bean/DiscoverySearchUsers;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2$6;->onSuc(Lcom/codemao/nemo/bean/DiscoverySearchUsers;)V

    return-void
.end method
