.class public final Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;
.super Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;
.source "QuickLoadMoreAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final layoutResId:I

.field private mItemType:Lcom/ljwx/recyclerview/itemtype/ItemTypeLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ljwx/recyclerview/itemtype/ItemTypeLayout<",
            "TItem;>;"
        }
    .end annotation
.end field

.field private mLoadMoreBind:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/view/View;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final mLoadMoreItem:Lcom/ljwx/recyclerview/loadmore/view/LoadMoreItem;

.field private final mLoadMoreItemType:Lcom/ljwx/recyclerview/itemtype/ItemTypeViewClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ljwx/recyclerview/itemtype/ItemTypeViewClass<",
            "Lcom/ljwx/recyclerview/loadmore/view/LoadMoreItem;",
            "Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView;",
            ">;"
        }
    .end annotation
.end field

.field private final mLoadMorePresenter:Lcom/ljwx/recyclerview/loadmore/view/LoadMoreViewPresenter;

.field private final mLoadMoreTrigger:Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;

.field private mLoadMoreVisible:Z


# direct methods
.method public constructor <init>(Ljava/lang/Class;ILandroidx/recyclerview/widget/AsyncDifferConfig;Lkotlin/jvm/functions/Function2;)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TItem;>;I",
            "Landroidx/recyclerview/widget/AsyncDifferConfig<",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/ljwx/recyclerview/holder/ItemHolder;",
            "-TItem;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const-string v2, "itemClass"

    move-object/from16 v4, p1

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "config"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/ljwx/recyclerview/itemtype/ItemType;

    .line 25
    invoke-direct {v0, v3, v1}, Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;-><init>([Lcom/ljwx/recyclerview/itemtype/ItemType;Landroidx/recyclerview/widget/AsyncDifferConfig;)V

    move/from16 v1, p2

    .line 22
    iput v1, v0, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->layoutResId:I

    .line 28
    const-class v3, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->TAG:Ljava/lang/String;

    .line 32
    new-instance v3, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreItem;

    invoke-direct {v3}, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreItem;-><init>()V

    iput-object v3, v0, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->mLoadMoreItem:Lcom/ljwx/recyclerview/loadmore/view/LoadMoreItem;

    .line 34
    new-instance v10, Lcom/ljwx/recyclerview/itemtype/ItemTypeViewClass;

    const-class v13, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreItem;

    const-class v14, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView;

    new-instance v3, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter$mLoadMoreItemType$1;

    invoke-direct {v3, v0}, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter$mLoadMoreItemType$1;-><init>(Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;)V

    const/4 v15, 0x0

    const/16 v17, 0x4

    const/16 v18, 0x0

    move-object v12, v10

    move-object/from16 v16, v3

    invoke-direct/range {v12 .. v18}, Lcom/ljwx/recyclerview/itemtype/ItemTypeViewClass;-><init>(Ljava/lang/Class;Ljava/lang/Class;ILkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v10, v0, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->mLoadMoreItemType:Lcom/ljwx/recyclerview/itemtype/ItemTypeViewClass;

    .line 38
    new-instance v3, Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;

    invoke-direct {v3}, Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;-><init>()V

    iput-object v3, v0, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->mLoadMoreTrigger:Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;

    .line 39
    new-instance v3, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreViewPresenter;

    invoke-direct {v3}, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreViewPresenter;-><init>()V

    iput-object v3, v0, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->mLoadMorePresenter:Lcom/ljwx/recyclerview/loadmore/view/LoadMoreViewPresenter;

    const-string v12, "null cannot be cast to non-null type com.ljwx.recyclerview.itemtype.ItemType<kotlin.Any, com.ljwx.recyclerview.holder.ItemHolder>"

    .line 43
    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v13, Lcom/ljwx/recyclerview/itemtype/ItemTypeBinding;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0xc

    const/4 v14, 0x0

    move-object v3, v13

    move/from16 v5, p2

    move-object/from16 v8, p4

    move-object v1, v10

    move-object v10, v14

    invoke-direct/range {v3 .. v10}, Lcom/ljwx/recyclerview/itemtype/ItemTypeBinding;-><init>(Ljava/lang/Class;IILjava/lang/Integer;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v13, v0, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->mItemType:Lcom/ljwx/recyclerview/itemtype/ItemTypeLayout;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/ljwx/recyclerview/itemtype/ItemType;

    aput-object v1, v3, v2

    .line 45
    invoke-static {v13, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    aput-object v13, v3, v1

    invoke-virtual {v0, v3}, Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;->setMItemTypes([Lcom/ljwx/recyclerview/itemtype/ItemType;)V

    .line 46
    sget-object v2, Lcom/ljwx/recyclerview/BaseRecyclerLog;->INSTANCE:Lcom/ljwx/recyclerview/BaseRecyclerLog;

    const-string v3, "TAG"

    invoke-static {v11, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "初始化加载更多item"

    invoke-virtual {v2, v11, v3}, Lcom/ljwx/recyclerview/BaseRecyclerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iput-boolean v1, v0, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->mLoadMoreVisible:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Class;ILandroidx/recyclerview/widget/AsyncDifferConfig;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 9

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_19

    .line 23
    new-instance p3, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;

    new-instance p6, Lcom/ljwx/recyclerview/diff/ItemDiffCallback;

    const/4 v1, 0x1

    invoke-direct {p6, v0, v1, v0}, Lcom/ljwx/recyclerview/diff/ItemDiffCallback;-><init>(Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p3, p6}, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    invoke-virtual {p3}, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;->build()Landroidx/recyclerview/widget/AsyncDifferConfig;

    move-result-object p3

    const-string p6, "Builder(ItemDiffCallback()).build()"

    invoke-static {p3, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_19
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1e

    move-object p4, v0

    .line 20
    :cond_1e
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;-><init>(Ljava/lang/Class;ILandroidx/recyclerview/widget/AsyncDifferConfig;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static final synthetic access$getMLoadMoreBind$p(Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;)Lkotlin/jvm/functions/Function2;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->mLoadMoreBind:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public static final synthetic access$getMLoadMorePresenter$p(Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;)Lcom/ljwx/recyclerview/loadmore/view/LoadMoreViewPresenter;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->mLoadMorePresenter:Lcom/ljwx/recyclerview/loadmore/view/LoadMoreViewPresenter;

    return-object p0
.end method

.method private final setStatus(Ljava/lang/String;)V
    .registers 5

    .line 120
    iget-boolean v0, p0, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->mLoadMoreVisible:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->mLoadMoreItem:Lcom/ljwx/recyclerview/loadmore/view/LoadMoreItem;

    invoke-virtual {v0}, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreItem;->getState()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 121
    iget-object v0, p0, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->mLoadMoreItem:Lcom/ljwx/recyclerview/loadmore/view/LoadMoreItem;

    invoke-virtual {v0, p1}, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreItem;->setState(Ljava/lang/String;)V

    .line 123
    :cond_15
    sget-object v0, Lcom/ljwx/recyclerview/BaseRecyclerLog;->INSTANCE:Lcom/ljwx/recyclerview/BaseRecyclerLog;

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",loadMoreVisible:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->mLoadMoreVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",itemStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->mLoadMoreItem:Lcom/ljwx/recyclerview/loadmore/view/LoadMoreItem;

    invoke-virtual {v2}, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreItem;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "加载更多"

    .line 123
    invoke-virtual {v0, v2, v1}, Lcom/ljwx/recyclerview/BaseRecyclerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 128
    iget-object v0, p0, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->mLoadMoreTrigger:Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;

    const-string v1, "hasMore"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;->setHasMore(Z)V

    .line 129
    iget-object p1, p0, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->mLoadMoreTrigger:Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;->setLoading(Z)V

    return-void
.end method


# virtual methods
.method public final addList(Ljava/util/List;ZZ)V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;ZZ)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    sget-object v0, Lcom/ljwx/recyclerview/BaseRecyclerLog;->INSTANCE:Lcom/ljwx/recyclerview/BaseRecyclerLog;

    iget-object v1, p0, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->TAG:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "添加新数据数据"

    invoke-virtual {v0, v1, v2}, Lcom/ljwx/recyclerview/BaseRecyclerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_16

    goto :goto_2b

    .line 110
    :cond_16
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    const-string v1, "currentList"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v0}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p3

    invoke-static {p3, p1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 111
    :goto_2b
    invoke-virtual {p0, p1}, Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;->submitList(Ljava/util/List;)V

    .line 113
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3a

    const-string p1, "empty"

    invoke-direct {p0, p1}, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->setStatus(Ljava/lang/String;)V

    goto :goto_47

    :cond_3a
    if-eqz p2, :cond_42

    const-string p1, "hasMore"

    .line 114
    invoke-direct {p0, p1}, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->setStatus(Ljava/lang/String;)V

    goto :goto_47

    :cond_42
    const-string p1, "complete"

    .line 115
    invoke-direct {p0, p1}, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->setStatus(Ljava/lang/String;)V

    :goto_47
    return-void
.end method

.method protected getItem(I)Ljava/lang/Object;
    .registers 3

    .line 139
    invoke-virtual {p0}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, p1, :cond_d

    iget-object p1, p0, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->mLoadMoreItem:Lcom/ljwx/recyclerview/loadmore/view/LoadMoreItem;

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

    .line 134
    invoke-super {p0}, Landroidx/recyclerview/widget/ListAdapter;->getItemCount()I

    move-result v0

    iget-boolean v1, p0, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->mLoadMoreVisible:Z

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

    .line 143
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

    .line 147
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 148
    sget-object v0, Lcom/ljwx/recyclerview/BaseRecyclerLog;->INSTANCE:Lcom/ljwx/recyclerview/BaseRecyclerLog;

    iget-object v1, p0, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->TAG:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "onAttachedToRecyclerView"

    invoke-virtual {v0, v1, v2}, Lcom/ljwx/recyclerview/BaseRecyclerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 150
    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v1, :cond_29

    .line 151
    move-object v1, v0

    check-cast v1, Landroidx/recyclerview/widget/GridLayoutManager;

    new-instance v2, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter$onAttachedToRecyclerView$1;

    invoke-direct {v2, p0, v0}, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter$onAttachedToRecyclerView$1;-><init>(Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 159
    :cond_29
    iget-object v0, p0, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->mLoadMoreTrigger:Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;

    invoke-virtual {v0, p1}, Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;->attach(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 4

    const-string v0, "rv"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 164
    sget-object p1, Lcom/ljwx/recyclerview/BaseRecyclerLog;->INSTANCE:Lcom/ljwx/recyclerview/BaseRecyclerLog;

    iget-object v0, p0, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->TAG:Ljava/lang/String;

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "onDetachedFromRecyclerView"

    invoke-virtual {p1, v0, v1}, Lcom/ljwx/recyclerview/BaseRecyclerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object p1, p0, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->mLoadMoreTrigger:Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;

    invoke-virtual {p1}, Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;->detach()V

    return-void
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 2

    .line 19
    check-cast p1, Lcom/ljwx/recyclerview/holder/ItemHolder;

    invoke-virtual {p0, p1}, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->onViewAttachedToWindow(Lcom/ljwx/recyclerview/holder/ItemHolder;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lcom/ljwx/recyclerview/holder/ItemHolder;)V
    .registers 5

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 171
    sget-object v0, Lcom/ljwx/recyclerview/BaseRecyclerLog;->INSTANCE:Lcom/ljwx/recyclerview/BaseRecyclerLog;

    iget-object v1, p0, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->TAG:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "onViewAttachedToWindow"

    invoke-virtual {v0, v1, v2}, Lcom/ljwx/recyclerview/BaseRecyclerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 173
    instance-of v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    if-eqz v1, :cond_2c

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of p1, p1, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreView;

    if-eqz p1, :cond_2c

    .line 174
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V

    :cond_2c
    return-void
.end method

.method public setLoadMoreBind(Lkotlin/jvm/functions/Function2;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/view/View;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "bind"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    iput-object p1, p0, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->mLoadMoreBind:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final setLoadMoreCompleteView(I)V
    .registers 3

    .line 73
    iget-object v0, p0, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->mLoadMorePresenter:Lcom/ljwx/recyclerview/loadmore/view/LoadMoreViewPresenter;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreViewPresenter;->setLoadMoreCompleteLayout(Ljava/lang/Integer;)V

    return-void
.end method

.method public final setLoadMoreLoadingView(I)V
    .registers 3

    .line 65
    iget-object v0, p0, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->mLoadMorePresenter:Lcom/ljwx/recyclerview/loadmore/view/LoadMoreViewPresenter;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ljwx/recyclerview/loadmore/view/LoadMoreViewPresenter;->setLoadMoreLoadingLayout(Ljava/lang/Integer;)V

    return-void
.end method

.method public setOnItemBind(Lkotlin/jvm/functions/Function2;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/ljwx/recyclerview/holder/ItemHolder;",
            "-TItem;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "binder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->mItemType:Lcom/ljwx/recyclerview/itemtype/ItemTypeLayout;

    invoke-virtual {v0, p1}, Lcom/ljwx/recyclerview/itemtype/ItemTypeLayout;->setOnItemBind(Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public setOnItemChildClick([ILkotlin/jvm/functions/Function3;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lcom/ljwx/recyclerview/holder/ItemHolder;",
            "-TItem;-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemClick"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->mItemType:Lcom/ljwx/recyclerview/itemtype/ItemTypeLayout;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/ljwx/recyclerview/itemtype/ItemTypeLayout;->setOnItemChildClick([ILkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method public setOnItemClick(Lkotlin/jvm/functions/Function2;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/ljwx/recyclerview/holder/ItemHolder;",
            "-TItem;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "itemClick"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->mItemType:Lcom/ljwx/recyclerview/itemtype/ItemTypeLayout;

    invoke-virtual {v0, p1}, Lcom/ljwx/recyclerview/itemtype/ItemTypeLayout;->setOnItemClick(Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final setOnLoadMoreListener(Lkotlin/jvm/functions/Function0;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->mLoadMoreTrigger:Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;

    invoke-virtual {v0, p1}, Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;->setOnLoadMore(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final startLoadMore()V
    .registers 4

    .line 86
    sget-object v0, Lcom/ljwx/recyclerview/BaseRecyclerLog;->INSTANCE:Lcom/ljwx/recyclerview/BaseRecyclerLog;

    iget-object v1, p0, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->TAG:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "触发加载更多显示"

    invoke-virtual {v0, v1, v2}, Lcom/ljwx/recyclerview/BaseRecyclerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->mLoadMoreTrigger:Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;

    invoke-virtual {v0}, Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;->isLoading()Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "hasMore"

    .line 88
    invoke-direct {p0, v0}, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->setStatus(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->mLoadMoreTrigger:Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;

    invoke-virtual {v0}, Lcom/ljwx/recyclerview/loadmore/LoadMoreTrigger;->loadMore()V

    :cond_20
    return-void
.end method
