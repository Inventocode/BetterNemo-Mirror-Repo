.class public final Lcom/ljwx/recyclerview/loadmore/LoadMoreAdapter;
.super Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;
.source "LoadMoreAdapter.kt"


# instance fields
.field private final mLoadMoreItem:Lcom/ljwx/recyclerview/loadmore/view/LoadMoreItem;

.field private final mLoadMoreTrigger:Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;

.field private mLoadMoreVisible:Z


# direct methods
.method private final setStatus(Ljava/lang/String;)V
    .registers 4

    .line 110
    iget-boolean v0, p0, Lcom/ljwx/recyclerview/loadmore/LoadMoreAdapter;->mLoadMoreVisible:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/ljwx/recyclerview/loadmore/LoadMoreAdapter;->mLoadMoreItem:Lcom/ljwx/recyclerview/loadmore/view/LoadMoreItem;

    invoke-virtual {v0}, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreItem;->getState()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 111
    iget-object v0, p0, Lcom/ljwx/recyclerview/loadmore/LoadMoreAdapter;->mLoadMoreItem:Lcom/ljwx/recyclerview/loadmore/view/LoadMoreItem;

    invoke-virtual {v0, p1}, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreItem;->setState(Ljava/lang/String;)V

    .line 113
    :cond_15
    invoke-virtual {p0}, Lcom/ljwx/recyclerview/loadmore/LoadMoreAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 114
    iget-object v0, p0, Lcom/ljwx/recyclerview/loadmore/LoadMoreAdapter;->mLoadMoreTrigger:Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;

    const-string v1, "hasMore"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;->setHasMore(Z)V

    .line 115
    iget-object p1, p0, Lcom/ljwx/recyclerview/loadmore/LoadMoreAdapter;->mLoadMoreTrigger:Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;->setLoading(Z)V

    return-void
.end method


# virtual methods
.method protected getItem(I)Ljava/lang/Object;
    .registers 3

    .line 125
    invoke-virtual {p0}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, p1, :cond_d

    iget-object p1, p0, Lcom/ljwx/recyclerview/loadmore/LoadMoreAdapter;->mLoadMoreItem:Lcom/ljwx/recyclerview/loadmore/view/LoadMoreItem;

    goto :goto_15

    :cond_d
    invoke-virtual {p0}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_15
    const-string v0, "if (currentList.size == …lse currentList[position]"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getItemCount()I
    .registers 5

    .line 120
    invoke-super {p0}, Landroidx/recyclerview/widget/ListAdapter;->getItemCount()I

    move-result v0

    iget-boolean v1, p0, Lcom/ljwx/recyclerview/loadmore/LoadMoreAdapter;->mLoadMoreVisible:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1a

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v1

    const-string v3, "currentList"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v2, 0x0

    :goto_1b
    add-int/2addr v0, v2

    return v0
.end method

.method public getItemId(I)J
    .registers 4

    .line 129
    invoke-virtual {p0}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, p1, :cond_d

    const-wide/16 v0, -0x1

    goto :goto_11

    :cond_d
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    :goto_11
    return-wide v0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 5

    const-string v0, "rv"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 134
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 135
    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v1, :cond_1b

    .line 136
    move-object v1, v0

    check-cast v1, Landroidx/recyclerview/widget/GridLayoutManager;

    new-instance v2, Lcom/ljwx/recyclerview/loadmore/LoadMoreAdapter$onAttachedToRecyclerView$1;

    invoke-direct {v2, p0, v0}, Lcom/ljwx/recyclerview/loadmore/LoadMoreAdapter$onAttachedToRecyclerView$1;-><init>(Lcom/ljwx/recyclerview/loadmore/LoadMoreAdapter;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 144
    :cond_1b
    iget-object v0, p0, Lcom/ljwx/recyclerview/loadmore/LoadMoreAdapter;->mLoadMoreTrigger:Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;

    invoke-virtual {v0, p1}, Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;->attach(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3

    const-string v0, "rv"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 149
    iget-object p1, p0, Lcom/ljwx/recyclerview/loadmore/LoadMoreAdapter;->mLoadMoreTrigger:Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;

    invoke-virtual {p1}, Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;->detach()V

    return-void
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 2

    .line 16
    check-cast p1, Lcom/ljwx/recyclerview/holder/ItemHolder;

    invoke-virtual {p0, p1}, Lcom/ljwx/recyclerview/loadmore/LoadMoreAdapter;->onViewAttachedToWindow(Lcom/ljwx/recyclerview/holder/ItemHolder;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lcom/ljwx/recyclerview/holder/ItemHolder;)V
    .registers 4

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 155
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 156
    instance-of v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    if-eqz v1, :cond_1e

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of p1, p1, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView;

    if-eqz p1, :cond_1e

    .line 157
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V

    :cond_1e
    return-void
.end method

.method public final startLoadMore()V
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/ljwx/recyclerview/loadmore/LoadMoreAdapter;->mLoadMoreTrigger:Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;

    invoke-virtual {v0}, Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;->isLoading()Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "hasMore"

    .line 81
    invoke-direct {p0, v0}, Lcom/ljwx/recyclerview/loadmore/LoadMoreAdapter;->setStatus(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/ljwx/recyclerview/loadmore/LoadMoreAdapter;->mLoadMoreTrigger:Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;

    invoke-virtual {v0}, Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;->loadMore()V

    :cond_12
    return-void
.end method
