.class public final Lcom/ljwx/recyclerview/loadmore/view/LoadMoreViewPresenter;
.super Ljava/lang/Object;
.source "LoadMoreViewPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLoadMoreViewPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadMoreViewPresenter.kt\ncom/ljwx/recyclerview/loadmore/view/LoadMoreViewPresenter\n+ 2 LoadMoreView.kt\ncom/ljwx/recyclerview/loadmore/view/LoadMoreView\n*L\n1#1,39:1\n68#2,2:40\n88#2,2:42\n78#2,2:44\n*S KotlinDebug\n*F\n+ 1 LoadMoreViewPresenter.kt\ncom/ljwx/recyclerview/loadmore/view/LoadMoreViewPresenter\n*L\n23#1:40,2\n26#1:42,2\n30#1:44,2\n*E\n"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private loadMoreCompleteLayout:Ljava/lang/Integer;

.field private loadMoreErrorLayout:Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private loadMoreLoadingLayout:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-class v0, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreViewPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreViewPresenter;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getLoadMoreCompleteLayout()Ljava/lang/Integer;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreViewPresenter;->loadMoreCompleteLayout:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getLoadMoreErrorLayout()Lkotlin/Pair;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreViewPresenter;->loadMoreErrorLayout:Lkotlin/Pair;

    return-object v0
.end method

.method public final getLoadMoreLoadingLayout()Ljava/lang/Integer;
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreViewPresenter;->loadMoreLoadingLayout:Ljava/lang/Integer;

    return-object v0
.end method

.method public final setLoadMoreCompleteLayout(Ljava/lang/Integer;)V
    .registers 2

    .line 18
    iput-object p1, p0, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreViewPresenter;->loadMoreCompleteLayout:Ljava/lang/Integer;

    return-void
.end method

.method public final setLoadMoreErrorLayout(Lkotlin/Pair;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 17
    iput-object p1, p0, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreViewPresenter;->loadMoreErrorLayout:Lkotlin/Pair;

    return-void
.end method

.method public final setLoadMoreLoadingLayout(Ljava/lang/Integer;)V
    .registers 2

    .line 16
    iput-object p1, p0, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreViewPresenter;->loadMoreLoadingLayout:Ljava/lang/Integer;

    return-void
.end method

.method public final showState(Landroid/view/View;Ljava/lang/String;)V
    .registers 11

    const-string v0, "holderView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    sget-object v0, Lcom/ljwx/recyclerview/BaseRecyclerLog;->INSTANCE:Lcom/ljwx/recyclerview/BaseRecyclerLog;

    iget-object v1, p0, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreViewPresenter;->TAG:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ljwx/recyclerview/BaseRecyclerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "hasMore"

    .line 22
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5b

    .line 23
    instance-of v0, p1, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView;

    if-eqz v0, :cond_38

    move-object v0, p1

    check-cast v0, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView;

    goto :goto_39

    :cond_38
    move-object v0, v1

    :goto_39
    if-eqz v0, :cond_5b

    iget-object v2, p0, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreViewPresenter;->loadMoreLoadingLayout:Ljava/lang/Integer;

    if-nez v2, :cond_50

    .line 68
    sget-object v2, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView;->Companion:Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView$Companion;

    invoke-virtual {v2}, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView$Companion;->getCommonViews()Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 69
    :cond_50
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v3, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView$showStateLoading$1;

    invoke-direct {v3, v0, v2}, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView$showStateLoading$1;-><init>(Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView;Ljava/lang/Integer;)V

    invoke-virtual {v0, v2, v3}, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView;->showStateView(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Landroid/view/View;

    :cond_5b
    const-string v0, "complete"

    .line 25
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 26
    instance-of v0, p1, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView;

    if-eqz v0, :cond_6b

    move-object v0, p1

    check-cast v0, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView;

    goto :goto_6c

    :cond_6b
    move-object v0, v1

    :goto_6c
    if-eqz v0, :cond_8e

    iget-object v2, p0, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreViewPresenter;->loadMoreCompleteLayout:Ljava/lang/Integer;

    if-nez v2, :cond_83

    .line 88
    sget-object v2, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView;->Companion:Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView$Companion;

    invoke-virtual {v2}, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView$Companion;->getCommonViews()Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 89
    :cond_83
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v3, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView$showStateComplete$1;

    invoke-direct {v3, v0, v2}, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView$showStateComplete$1;-><init>(Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView;Ljava/lang/Integer;)V

    invoke-virtual {v0, v2, v3}, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView;->showStateView(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Landroid/view/View;

    :cond_8e
    const-string v0, "error"

    .line 28
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f7

    .line 29
    iget-object p2, p0, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreViewPresenter;->loadMoreErrorLayout:Lkotlin/Pair;

    if-eqz p2, :cond_a7

    invoke-virtual {p2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_a7

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_a9

    :cond_a7
    sget p2, Lcom/ljwx/recyclerview/R$id;->rv_load_more_retry:I

    .line 30
    :goto_a9
    instance-of v0, p1, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView;

    if-eqz v0, :cond_b1

    move-object v0, p1

    check-cast v0, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView;

    goto :goto_b2

    :cond_b1
    move-object v0, v1

    :goto_b2
    if-eqz v0, :cond_f7

    iget-object v2, p0, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreViewPresenter;->loadMoreErrorLayout:Lkotlin/Pair;

    if-eqz v2, :cond_be

    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    :cond_be
    if-nez v1, :cond_d1

    .line 78
    sget-object v1, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView;->Companion:Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView$Companion;

    invoke-virtual {v1}, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView$Companion;->getCommonViews()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 79
    :cond_d1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView$showStateError$1;

    invoke-direct {v2, v0, v1}, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView$showStateError$1;-><init>(Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1, v2}, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView;->showStateView(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_f7

    .line 31
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_f7

    const-string p2, "findViewById<View>(retryId)"

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreViewPresenter$showState$1$1;

    invoke-direct {v5, p1}, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreViewPresenter$showState$1$1;-><init>(Landroid/view/View;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/ljwx/recyclerview/SingleClickKt;->singleClick$default(Landroid/view/View;JLjava/util/concurrent/TimeUnit;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    :cond_f7
    return-void
.end method
