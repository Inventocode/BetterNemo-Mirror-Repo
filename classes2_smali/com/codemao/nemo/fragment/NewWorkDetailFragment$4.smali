.class Lcom/codemao/nemo/fragment/NewWorkDetailFragment$4;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "NewWorkDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/NewWorkDetailFragment;->getData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
        "Lcom/codemao/nemo/bean/NewWorkDetail;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/NewWorkDetailFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/NewWorkDetailFragment;)V
    .registers 2

    .line 146
    iput-object p1, p0, Lcom/codemao/nemo/fragment/NewWorkDetailFragment$4;->this$0:Lcom/codemao/nemo/fragment/NewWorkDetailFragment;

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 159
    iget-object p1, p0, Lcom/codemao/nemo/fragment/NewWorkDetailFragment$4;->this$0:Lcom/codemao/nemo/fragment/NewWorkDetailFragment;

    invoke-virtual {p1}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->afterLoading()V

    .line 160
    iget-object p1, p0, Lcom/codemao/nemo/fragment/NewWorkDetailFragment$4;->this$0:Lcom/codemao/nemo/fragment/NewWorkDetailFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/codemao/nemo/fragment/NewWorkDetailFragment;->access$302(Lcom/codemao/nemo/fragment/NewWorkDetailFragment;Z)Z

    .line 161
    iget-object p1, p0, Lcom/codemao/nemo/fragment/NewWorkDetailFragment$4;->this$0:Lcom/codemao/nemo/fragment/NewWorkDetailFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1d

    .line 162
    iget-object p1, p0, Lcom/codemao/nemo/fragment/NewWorkDetailFragment$4;->this$0:Lcom/codemao/nemo/fragment/NewWorkDetailFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showError()V

    goto :goto_24

    .line 164
    :cond_1d
    iget-object p1, p0, Lcom/codemao/nemo/fragment/NewWorkDetailFragment$4;->this$0:Lcom/codemao/nemo/fragment/NewWorkDetailFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->hide()V

    .line 166
    :goto_24
    iget-object p1, p0, Lcom/codemao/nemo/fragment/NewWorkDetailFragment$4;->this$0:Lcom/codemao/nemo/fragment/NewWorkDetailFragment;

    iput-boolean p2, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->isLoading:Z

    .line 167
    iput-boolean p2, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->isLoadMore:Z

    .line 168
    iget-object p2, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    iget-boolean p1, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->hasMore:Z

    invoke-virtual {p2, p1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    return-void
.end method

.method public onNetError()V
    .registers 3

    .line 174
    iget-object v0, p0, Lcom/codemao/nemo/fragment/NewWorkDetailFragment$4;->this$0:Lcom/codemao/nemo/fragment/NewWorkDetailFragment;

    invoke-virtual {v0}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->afterLoading()V

    .line 175
    iget-object v0, p0, Lcom/codemao/nemo/fragment/NewWorkDetailFragment$4;->this$0:Lcom/codemao/nemo/fragment/NewWorkDetailFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/codemao/nemo/fragment/NewWorkDetailFragment;->access$302(Lcom/codemao/nemo/fragment/NewWorkDetailFragment;Z)Z

    .line 176
    iget-object v0, p0, Lcom/codemao/nemo/fragment/NewWorkDetailFragment$4;->this$0:Lcom/codemao/nemo/fragment/NewWorkDetailFragment;

    invoke-virtual {v0}, Lcom/codemao/nemo/fragment/NewWorkDetailFragment;->showError()V

    .line 177
    iget-object v0, p0, Lcom/codemao/nemo/fragment/NewWorkDetailFragment$4;->this$0:Lcom/codemao/nemo/fragment/NewWorkDetailFragment;

    iput-boolean v1, v0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->isLoading:Z

    .line 178
    iput-boolean v1, v0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->isLoadMore:Z

    .line 179
    iget-object v1, v0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    iget-boolean v0, v0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->hasMore:Z

    invoke-virtual {v1, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    return-void
.end method

.method public onSuc(Lcom/codemao/nemo/bean/NewWorkDetail;)V
    .registers 3

    .line 149
    iget-object v0, p0, Lcom/codemao/nemo/fragment/NewWorkDetailFragment$4;->this$0:Lcom/codemao/nemo/fragment/NewWorkDetailFragment;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->hide()V

    .line 150
    iget-object v0, p0, Lcom/codemao/nemo/fragment/NewWorkDetailFragment$4;->this$0:Lcom/codemao/nemo/fragment/NewWorkDetailFragment;

    invoke-virtual {v0}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->afterLoading()V

    .line 151
    iget-object v0, p0, Lcom/codemao/nemo/fragment/NewWorkDetailFragment$4;->this$0:Lcom/codemao/nemo/fragment/NewWorkDetailFragment;

    invoke-static {v0, p1}, Lcom/codemao/nemo/fragment/NewWorkDetailFragment;->access$200(Lcom/codemao/nemo/fragment/NewWorkDetailFragment;Lcom/codemao/nemo/bean/NewWorkDetail;)V

    .line 152
    iget-object p1, p0, Lcom/codemao/nemo/fragment/NewWorkDetailFragment$4;->this$0:Lcom/codemao/nemo/fragment/NewWorkDetailFragment;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->isLoading:Z

    .line 153
    iput-boolean v0, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->isLoadMore:Z

    .line 154
    invoke-static {p1, v0}, Lcom/codemao/nemo/fragment/NewWorkDetailFragment;->access$302(Lcom/codemao/nemo/fragment/NewWorkDetailFragment;Z)Z

    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 146
    check-cast p1, Lcom/codemao/nemo/bean/NewWorkDetail;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/fragment/NewWorkDetailFragment$4;->onSuc(Lcom/codemao/nemo/bean/NewWorkDetail;)V

    return-void
.end method
