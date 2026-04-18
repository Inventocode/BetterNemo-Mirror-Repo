.class Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2$6;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "DiscoveryWorkSearchFragmentV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;->getData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
        "Lcom/codemao/nemo/bean/DiscoverySearchWorks;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;)V
    .registers 2

    .line 239
    iput-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2$6;->this$0:Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 250
    iget-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2$6;->this$0:Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->isLoading:Z

    .line 251
    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    .line 252
    iget-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2$6;->this$0:Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;

    iput-boolean p2, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->isLoadMore:Z

    .line 253
    invoke-virtual {p1}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->afterLoading()V

    .line 254
    iget-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2$6;->this$0:Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;

    iget p2, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->offset:I

    if-nez p2, :cond_1c

    .line 255
    invoke-static {p1}, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;->access$400(Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;)V

    goto :goto_21

    .line 257
    :cond_1c
    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->hide()V

    :goto_21
    return-void
.end method

.method public onNetError()V
    .registers 4

    .line 263
    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2$6;->this$0:Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->isLoading:Z

    .line 264
    iget-object v0, v0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    .line 265
    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2$6;->this$0:Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;

    iput-boolean v1, v0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->isLoadMore:Z

    .line 266
    invoke-virtual {v0}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->afterLoading()V

    .line 267
    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2$6;->this$0:Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_24

    .line 268
    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2$6;->this$0:Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->showError()V

    goto :goto_2b

    .line 270
    :cond_24
    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2$6;->this$0:Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->hide()V

    :goto_2b
    return-void
.end method

.method public onSuc(Lcom/codemao/nemo/bean/DiscoverySearchWorks;)V
    .registers 3

    .line 243
    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2$6;->this$0:Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;

    invoke-static {v0, p1}, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;->access$300(Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;Lcom/codemao/nemo/bean/DiscoverySearchWorks;)V

    .line 244
    iget-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2$6;->this$0:Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->isLoading:Z

    .line 245
    iput-boolean v0, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->isLoadMore:Z

    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 239
    check-cast p1, Lcom/codemao/nemo/bean/DiscoverySearchWorks;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2$6;->onSuc(Lcom/codemao/nemo/bean/DiscoverySearchWorks;)V

    return-void
.end method
