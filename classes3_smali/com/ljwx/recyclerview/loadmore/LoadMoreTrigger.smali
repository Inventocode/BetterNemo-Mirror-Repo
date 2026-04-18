.class public final Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "LoadMoreTrigger.kt"

# interfaces
.implements Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private hasMore:Z

.field private isLoading:Z

.field private nestedScrollView:Landroidx/core/widget/NestedScrollView;

.field private onLoadMore:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private visibleThreshold:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 13
    const-class v0, Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;->TAG:Ljava/lang/String;

    .line 15
    sget-object v0, Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger$onLoadMore$1;->INSTANCE:Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger$onLoadMore$1;

    iput-object v0, p0, Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;->onLoadMore:Lkotlin/jvm/functions/Function0;

    const/4 v0, 0x3

    .line 18
    iput v0, p0, Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;->visibleThreshold:I

    return-void
.end method

.method private final attachNestedScrollView()V
    .registers 3

    .line 52
    iget-object v0, p0, Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 53
    :goto_a
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_1f

    .line 54
    instance-of v1, v0, Landroidx/core/widget/NestedScrollView;

    if-eqz v1, :cond_1a

    .line 55
    check-cast v0, Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0, p0}, Landroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;)V

    .line 56
    iput-object v0, p0, Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;->nestedScrollView:Landroidx/core/widget/NestedScrollView;

    goto :goto_1f

    .line 59
    :cond_1a
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_a

    :cond_1f
    :goto_1f
    return-void
.end method

.method private final detachNestedScrollView()V
    .registers 3

    .line 65
    iget-object v0, p0, Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;->nestedScrollView:Landroidx/core/widget/NestedScrollView;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {v0, v1}, Landroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;)V

    .line 66
    :cond_8
    iput-object v1, p0, Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;->nestedScrollView:Landroidx/core/widget/NestedScrollView;

    return-void
.end method

.method private final needLoadMore(III)Z
    .registers 4

    if-lez p1, :cond_9

    .line 131
    iget p1, p0, Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;->visibleThreshold:I

    sub-int/2addr p2, p1

    if-le p3, p2, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method

.method private final scroll(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 6

    .line 105
    iget-boolean v0, p0, Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;->isLoading:Z

    if-nez v0, :cond_6e

    iget-boolean v0, p0, Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;->hasMore:Z

    if-nez v0, :cond_9

    goto :goto_6e

    .line 107
    :cond_9
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const-string v1, "根据滑动计算,触发loadMore方法"

    const-string v2, "TAG"

    if-eqz v0, :cond_3e

    .line 108
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 109
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    .line 110
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v3

    .line 111
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    .line 112
    invoke-direct {p0, p1, v3, v0}, Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;->needLoadMore(III)Z

    move-result p1

    if-eqz p1, :cond_6e

    .line 114
    sget-object p1, Lcom/ljwx/recyclerview/BaseRecyclerLog;->INSTANCE:Lcom/ljwx/recyclerview/BaseRecyclerLog;

    iget-object v0, p0, Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcom/ljwx/recyclerview/BaseRecyclerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;->loadMore()V

    goto :goto_6e

    .line 117
    :cond_3e
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_6e

    .line 118
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 119
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    .line 120
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v3

    .line 121
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    .line 122
    invoke-direct {p0, p1, v3, v0}, Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;->needLoadMore(III)Z

    move-result p1

    if-eqz p1, :cond_6e

    .line 124
    sget-object p1, Lcom/ljwx/recyclerview/BaseRecyclerLog;->INSTANCE:Lcom/ljwx/recyclerview/BaseRecyclerLog;

    iget-object v0, p0, Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcom/ljwx/recyclerview/BaseRecyclerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;->loadMore()V

    :cond_6e
    :goto_6e
    return-void
.end method


# virtual methods
.method public final attach(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 5

    const-string v0, "rv"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 34
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 36
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isNestedScrollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 37
    sget-object v0, Lcom/ljwx/recyclerview/BaseRecyclerLog;->INSTANCE:Lcom/ljwx/recyclerview/BaseRecyclerLog;

    iget-object v1, p0, Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;->TAG:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "启用嵌套滑动"

    invoke-virtual {v0, v1, v2}, Lcom/ljwx/recyclerview/BaseRecyclerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    goto :goto_25

    .line 40
    :cond_22
    invoke-direct {p0}, Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;->attachNestedScrollView()V

    :goto_25
    return-void
.end method

.method public final detach()V
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 46
    :cond_7
    iget-object v0, p0, Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_e

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_e
    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 48
    invoke-direct {p0}, Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;->detachNestedScrollView()V

    return-void
.end method

.method public final isLoading()Z
    .registers 2

    .line 17
    iget-boolean v0, p0, Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;->isLoading:Z

    return v0
.end method

.method public final loadMore()V
    .registers 4

    .line 27
    sget-object v0, Lcom/ljwx/recyclerview/BaseRecyclerLog;->INSTANCE:Lcom/ljwx/recyclerview/BaseRecyclerLog;

    iget-object v1, p0, Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;->TAG:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "触发onLoadMore"

    invoke-virtual {v0, v1, v2}, Lcom/ljwx/recyclerview/BaseRecyclerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;->isLoading:Z

    .line 29
    iget-object v0, p0, Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;->onLoadMore:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public onScrollChange(Landroidx/core/widget/NestedScrollView;IIII)V
    .registers 6

    const-string p2, "scroll"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 95
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p4

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result p1

    add-int/2addr p4, p1

    sub-int/2addr p2, p4

    if-nez p2, :cond_28

    if-le p3, p5, :cond_28

    .line 97
    iget-object p1, p0, Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_28

    .line 98
    invoke-direct {p0, p1}, Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;->scroll(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_28
    return-void
.end method

.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 7

    const-string v0, "rv"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 80
    sget-object v0, Lcom/ljwx/recyclerview/BaseRecyclerLog;->INSTANCE:Lcom/ljwx/recyclerview/BaseRecyclerLog;

    iget-object v1, p0, Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;->TAG:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScrollStateChanged:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ljwx/recyclerview/BaseRecyclerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p2, v0, :cond_29

    return-void

    .line 84
    :cond_29
    invoke-direct {p0, p1}, Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;->scroll(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 3

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0}, Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;->attachNestedScrollView()V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 3

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-direct {p0}, Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;->detachNestedScrollView()V

    return-void
.end method

.method public final setHasMore(Z)V
    .registers 2

    .line 16
    iput-boolean p1, p0, Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;->hasMore:Z

    return-void
.end method

.method public final setLoading(Z)V
    .registers 2

    .line 17
    iput-boolean p1, p0, Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;->isLoading:Z

    return-void
.end method

.method public final setOnLoadMore(Lkotlin/jvm/functions/Function0;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;->onLoadMore:Lkotlin/jvm/functions/Function0;

    return-void
.end method
