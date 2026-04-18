.class Lcom/codemao/nemo/fragment/LatestFragmentV2$4;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "LatestFragmentV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/LatestFragmentV2;->getData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
        "Lcom/codemao/nemo/bean/LatestWorks;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/LatestFragmentV2;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/LatestFragmentV2;)V
    .registers 2

    .line 168
    iput-object p1, p0, Lcom/codemao/nemo/fragment/LatestFragmentV2$4;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV2;

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 181
    iget-object p1, p0, Lcom/codemao/nemo/fragment/LatestFragmentV2$4;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV2;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/codemao/nemo/fragment/LatestFragmentV2;->access$502(Lcom/codemao/nemo/fragment/LatestFragmentV2;Z)Z

    .line 182
    iget-object p1, p0, Lcom/codemao/nemo/fragment/LatestFragmentV2$4;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV2;

    iput-boolean p2, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->isLoading:Z

    .line 183
    iput-boolean p2, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->isLoadMore:Z

    .line 184
    iget-object p2, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    iget-boolean p1, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->hasMore:Z

    invoke-virtual {p2, p1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    .line 185
    iget-object p1, p0, Lcom/codemao/nemo/fragment/LatestFragmentV2$4;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV2;

    invoke-virtual {p1}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->afterLoading()V

    .line 186
    iget-object p1, p0, Lcom/codemao/nemo/fragment/LatestFragmentV2$4;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV2;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2a

    .line 187
    iget-object p1, p0, Lcom/codemao/nemo/fragment/LatestFragmentV2$4;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV2;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showError()V

    goto :goto_31

    .line 189
    :cond_2a
    iget-object p1, p0, Lcom/codemao/nemo/fragment/LatestFragmentV2$4;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV2;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->hide()V

    :goto_31
    return-void
.end method

.method public onNetError()V
    .registers 3

    .line 195
    iget-object v0, p0, Lcom/codemao/nemo/fragment/LatestFragmentV2$4;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/codemao/nemo/fragment/LatestFragmentV2;->access$502(Lcom/codemao/nemo/fragment/LatestFragmentV2;Z)Z

    .line 196
    iget-object v0, p0, Lcom/codemao/nemo/fragment/LatestFragmentV2$4;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV2;

    iput-boolean v1, v0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->isLoading:Z

    .line 197
    iput-boolean v1, v0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->isLoadMore:Z

    .line 198
    iget-object v1, v0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    iget-boolean v0, v0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->hasMore:Z

    invoke-virtual {v1, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    .line 199
    iget-object v0, p0, Lcom/codemao/nemo/fragment/LatestFragmentV2$4;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV2;

    invoke-virtual {v0}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->afterLoading()V

    .line 200
    iget-object v0, p0, Lcom/codemao/nemo/fragment/LatestFragmentV2$4;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV2;

    invoke-virtual {v0}, Lcom/codemao/nemo/fragment/LatestFragmentV2;->showError()V

    return-void
.end method

.method public onSuc(Lcom/codemao/nemo/bean/LatestWorks;)V
    .registers 3

    .line 171
    iget-object v0, p0, Lcom/codemao/nemo/fragment/LatestFragmentV2$4;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV2;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->hide()V

    .line 172
    iget-object v0, p0, Lcom/codemao/nemo/fragment/LatestFragmentV2$4;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV2;

    invoke-virtual {v0}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->afterLoading()V

    .line 173
    iget-object v0, p0, Lcom/codemao/nemo/fragment/LatestFragmentV2$4;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV2;

    invoke-static {v0, p1}, Lcom/codemao/nemo/fragment/LatestFragmentV2;->access$400(Lcom/codemao/nemo/fragment/LatestFragmentV2;Lcom/codemao/nemo/bean/LatestWorks;)V

    .line 174
    iget-object p1, p0, Lcom/codemao/nemo/fragment/LatestFragmentV2$4;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV2;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->isLoading:Z

    .line 175
    iput-boolean v0, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->isLoadMore:Z

    .line 176
    invoke-static {p1, v0}, Lcom/codemao/nemo/fragment/LatestFragmentV2;->access$502(Lcom/codemao/nemo/fragment/LatestFragmentV2;Z)Z

    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 168
    check-cast p1, Lcom/codemao/nemo/bean/LatestWorks;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/fragment/LatestFragmentV2$4;->onSuc(Lcom/codemao/nemo/bean/LatestWorks;)V

    return-void
.end method
