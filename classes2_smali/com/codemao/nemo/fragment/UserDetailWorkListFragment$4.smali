.class Lcom/codemao/nemo/fragment/UserDetailWorkListFragment$4;
.super Lcom/codemao/nemo/retrofit/response/CommonSubcriber;
.source "UserDetailWorkListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;->getData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/retrofit/response/CommonSubcriber<",
        "Lcom/codemao/nemo/bean/UserPublisWorksV2;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;)V
    .registers 2

    .line 139
    iput-object p1, p0, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment$4;->this$0:Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;

    invoke-direct {p0}, Lcom/codemao/nemo/retrofit/response/CommonSubcriber;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 150
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment$4;->this$0:Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;

    invoke-virtual {p1}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->afterLoading()V

    .line 151
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment$4;->this$0:Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    .line 152
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment$4;->this$0:Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1f

    .line 153
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment$4;->this$0:Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showError()V

    goto :goto_26

    .line 155
    :cond_1f
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment$4;->this$0:Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->hide()V

    .line 157
    :goto_26
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment$4;->this$0:Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->isLoading:Z

    .line 158
    iput-boolean p2, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->isLoadMore:Z

    return-void
.end method

.method protected onNetError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 163
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment$4;->this$0:Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;

    invoke-virtual {p1}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->afterLoading()V

    .line 164
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment$4;->this$0:Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    .line 165
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment$4;->this$0:Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1d

    .line 166
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment$4;->this$0:Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;

    invoke-virtual {p1}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->showError()V

    goto :goto_24

    .line 168
    :cond_1d
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment$4;->this$0:Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->hide()V

    .line 170
    :goto_24
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment$4;->this$0:Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->isLoading:Z

    .line 171
    iput-boolean p2, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->isLoadMore:Z

    return-void
.end method

.method protected onSuccess(Lcom/codemao/nemo/bean/UserPublisWorksV2;)V
    .registers 3

    .line 142
    iget-object v0, p0, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment$4;->this$0:Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;

    invoke-virtual {v0}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->afterLoading()V

    .line 143
    iget-object v0, p0, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment$4;->this$0:Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;

    invoke-static {v0, p1}, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;->access$200(Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;Lcom/codemao/nemo/bean/UserPublisWorksV2;)V

    .line 144
    iget-object p1, p0, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment$4;->this$0:Lcom/codemao/nemo/fragment/UserDetailWorkListFragment;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->isLoading:Z

    .line 145
    iput-boolean v0, p1, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->isLoadMore:Z

    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 139
    check-cast p1, Lcom/codemao/nemo/bean/UserPublisWorksV2;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/fragment/UserDetailWorkListFragment$4;->onSuccess(Lcom/codemao/nemo/bean/UserPublisWorksV2;)V

    return-void
.end method
