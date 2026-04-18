.class Lcom/codemao/nemo/fragment/CloudWorkFragment$3;
.super Lcom/codemao/nemo/retrofit/response/CommonSubcriber;
.source "CloudWorkFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/CloudWorkFragment;->onLoadWorksData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/retrofit/response/CommonSubcriber<",
        "Ljava/util/List<",
        "Lcom/codemao/nemo/bean/CloudData;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/CloudWorkFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/CloudWorkFragment;)V
    .registers 2

    .line 152
    iput-object p1, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment$3;->this$0:Lcom/codemao/nemo/fragment/CloudWorkFragment;

    invoke-direct {p0}, Lcom/codemao/nemo/retrofit/response/CommonSubcriber;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 184
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment$3;->this$0:Lcom/codemao/nemo/fragment/CloudWorkFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/CloudWorkFragment;->smartRecyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->loadMoreComplete()V

    .line 185
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment$3;->this$0:Lcom/codemao/nemo/fragment/CloudWorkFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/CloudWorkFragment;->smartLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 186
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment$3;->this$0:Lcom/codemao/nemo/fragment/CloudWorkFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/CloudWorkFragment;->access$300(Lcom/codemao/nemo/fragment/CloudWorkFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_22

    .line 187
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment$3;->this$0:Lcom/codemao/nemo/fragment/CloudWorkFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/CloudWorkFragment;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showError()V

    goto :goto_31

    .line 189
    :cond_22
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment$3;->this$0:Lcom/codemao/nemo/fragment/CloudWorkFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/CloudWorkFragment;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->hide()V

    .line 190
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment$3;->this$0:Lcom/codemao/nemo/fragment/CloudWorkFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/CloudWorkFragment;->smartRecyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    :goto_31
    return-void
.end method

.method protected onNetError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 196
    invoke-virtual {p0, p1, p2}, Lcom/codemao/nemo/fragment/CloudWorkFragment$3;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 152
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/fragment/CloudWorkFragment$3;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method protected onSuccess(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/CloudData;",
            ">;)V"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment$3;->this$0:Lcom/codemao/nemo/fragment/CloudWorkFragment;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CloudWorkFragment;->smartRecyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->loadMoreComplete()V

    .line 157
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment$3;->this$0:Lcom/codemao/nemo/fragment/CloudWorkFragment;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CloudWorkFragment;->smartLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 158
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment$3;->this$0:Lcom/codemao/nemo/fragment/CloudWorkFragment;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CloudWorkFragment;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->hide()V

    const/4 v0, 0x1

    if-eqz p1, :cond_6e

    .line 159
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1f

    goto :goto_6e

    .line 167
    :cond_1f
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_2f

    .line 168
    iget-object v1, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment$3;->this$0:Lcom/codemao/nemo/fragment/CloudWorkFragment;

    iget-object v1, v1, Lcom/codemao/nemo/fragment/CloudWorkFragment;->smartRecyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v1, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    goto :goto_37

    .line 170
    :cond_2f
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment$3;->this$0:Lcom/codemao/nemo/fragment/CloudWorkFragment;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CloudWorkFragment;->smartRecyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    .line 172
    :goto_37
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment$3;->this$0:Lcom/codemao/nemo/fragment/CloudWorkFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/CloudWorkFragment;->access$400(Lcom/codemao/nemo/fragment/CloudWorkFragment;)I

    move-result v0

    if-nez v0, :cond_52

    .line 173
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment$3;->this$0:Lcom/codemao/nemo/fragment/CloudWorkFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/CloudWorkFragment;->access$300(Lcom/codemao/nemo/fragment/CloudWorkFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 174
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment$3;->this$0:Lcom/codemao/nemo/fragment/CloudWorkFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/CloudWorkFragment;->access$300(Lcom/codemao/nemo/fragment/CloudWorkFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_5b

    .line 176
    :cond_52
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment$3;->this$0:Lcom/codemao/nemo/fragment/CloudWorkFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/CloudWorkFragment;->access$300(Lcom/codemao/nemo/fragment/CloudWorkFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 178
    :goto_5b
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment$3;->this$0:Lcom/codemao/nemo/fragment/CloudWorkFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/CloudWorkFragment;->access$500(Lcom/codemao/nemo/fragment/CloudWorkFragment;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 179
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment$3;->this$0:Lcom/codemao/nemo/fragment/CloudWorkFragment;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {v0, p1}, Lcom/codemao/nemo/fragment/CloudWorkFragment;->access$412(Lcom/codemao/nemo/fragment/CloudWorkFragment;I)I

    return-void

    .line 160
    :cond_6e
    :goto_6e
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment$3;->this$0:Lcom/codemao/nemo/fragment/CloudWorkFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/CloudWorkFragment;->access$300(Lcom/codemao/nemo/fragment/CloudWorkFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_82

    .line 161
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment$3;->this$0:Lcom/codemao/nemo/fragment/CloudWorkFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/CloudWorkFragment;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showEmpty()V

    goto :goto_89

    .line 163
    :cond_82
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CloudWorkFragment$3;->this$0:Lcom/codemao/nemo/fragment/CloudWorkFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/CloudWorkFragment;->smartRecyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    :goto_89
    return-void
.end method
