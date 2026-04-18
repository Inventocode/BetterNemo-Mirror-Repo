.class public Lcom/ljwx/recyclerview/quick/QuickSingleAdapter;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "QuickSingleAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/ListAdapter<",
        "TItem;",
        "Lcom/ljwx/recyclerview/holder/ItemHolder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nQuickSingleAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QuickSingleAdapter.kt\ncom/ljwx/recyclerview/quick/QuickSingleAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,110:1\n1#2:111\n*E\n"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final layoutResId:I

.field private final mItemType:Lcom/ljwx/recyclerview/itemtype/ItemTypeLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ljwx/recyclerview/itemtype/ItemTypeLayout<",
            "TItem;>;"
        }
    .end annotation
.end field

.field private newList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+TItem;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;ILjava/lang/Integer;Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Lkotlin/jvm/functions/Function2;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TItem;>;I",
            "Ljava/lang/Integer;",
            "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
            "TItem;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/ljwx/recyclerview/holder/ItemHolder;",
            "-TItem;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "itemClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "diff"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;

    invoke-direct {v0, p4}, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;->build()Landroidx/recyclerview/widget/AsyncDifferConfig;

    move-result-object p4

    invoke-direct {p0, p4}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/AsyncDifferConfig;)V

    .line 18
    iput p2, p0, Lcom/ljwx/recyclerview/quick/QuickSingleAdapter;->layoutResId:I

    .line 26
    const-class p4, Lcom/ljwx/recyclerview/quick/QuickSingleAdapter;

    invoke-virtual {p4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/ljwx/recyclerview/quick/QuickSingleAdapter;->TAG:Ljava/lang/String;

    .line 29
    new-instance p4, Lcom/ljwx/recyclerview/itemtype/ItemTypeBinding;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x14

    const/4 v7, 0x0

    move-object v0, p4

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/ljwx/recyclerview/itemtype/ItemTypeBinding;-><init>(Ljava/lang/Class;IILjava/lang/Integer;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p4, p0, Lcom/ljwx/recyclerview/quick/QuickSingleAdapter;->mItemType:Lcom/ljwx/recyclerview/itemtype/ItemTypeLayout;

    if-eqz p5, :cond_35

    .line 34
    invoke-virtual {p0, p5}, Lcom/ljwx/recyclerview/quick/QuickSingleAdapter;->setOnItemClick(Lkotlin/jvm/functions/Function2;)V

    :cond_35
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Class;ILjava/lang/Integer;Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 14

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_a

    .line 20
    sget p3, Lcom/ljwx/recyclerview/BR;->item:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    :cond_a
    move-object v3, p3

    and-int/lit8 p3, p6, 0x8

    const/4 p7, 0x0

    if-eqz p3, :cond_16

    .line 21
    new-instance p4, Lcom/ljwx/recyclerview/diff/ItemDiffCallback;

    const/4 p3, 0x1

    invoke-direct {p4, p7, p3, p7}, Lcom/ljwx/recyclerview/diff/ItemDiffCallback;-><init>(Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_16
    move-object v4, p4

    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_1d

    move-object v5, p7

    goto :goto_1e

    :cond_1d
    move-object v5, p5

    :goto_1e
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 16
    invoke-direct/range {v0 .. v5}, Lcom/ljwx/recyclerview/quick/QuickSingleAdapter;-><init>(Ljava/lang/Class;ILjava/lang/Integer;Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 16
    check-cast p1, Lcom/ljwx/recyclerview/holder/ItemHolder;

    invoke-virtual {p0, p1, p2}, Lcom/ljwx/recyclerview/quick/QuickSingleAdapter;->onBindViewHolder(Lcom/ljwx/recyclerview/holder/ItemHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/ljwx/recyclerview/holder/ItemHolder;I)V
    .registers 7

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    sget-object v0, Lcom/ljwx/recyclerview/BaseRecyclerLog;->INSTANCE:Lcom/ljwx/recyclerview/BaseRecyclerLog;

    iget-object v1, p0, Lcom/ljwx/recyclerview/quick/QuickSingleAdapter;->TAG:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBindViewHolder:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",holder address:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ljwx/recyclerview/BaseRecyclerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/ljwx/recyclerview/quick/QuickSingleAdapter;->mItemType:Lcom/ljwx/recyclerview/itemtype/ItemTypeLayout;

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    const-string v1, "getItem(position)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Lcom/ljwx/recyclerview/itemtype/ItemTypeLayout;->bind(Lcom/ljwx/recyclerview/holder/ItemHolder;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/ljwx/recyclerview/quick/QuickSingleAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ljwx/recyclerview/holder/ItemHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ljwx/recyclerview/holder/ItemHolder;
    .registers 5

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    sget-object p2, Lcom/ljwx/recyclerview/BaseRecyclerLog;->INSTANCE:Lcom/ljwx/recyclerview/BaseRecyclerLog;

    iget-object v0, p0, Lcom/ljwx/recyclerview/quick/QuickSingleAdapter;->TAG:Ljava/lang/String;

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "onCreateViewHolder"

    invoke-virtual {p2, v0, v1}, Lcom/ljwx/recyclerview/BaseRecyclerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object p2, p0, Lcom/ljwx/recyclerview/quick/QuickSingleAdapter;->mItemType:Lcom/ljwx/recyclerview/itemtype/ItemTypeLayout;

    invoke-virtual {p2, p1}, Lcom/ljwx/recyclerview/itemtype/ItemTypeLayout;->create(Landroid/view/ViewGroup;)Lcom/ljwx/recyclerview/holder/ItemHolder;

    move-result-object p1

    return-object p1
.end method

.method public setOnItemClick(Lkotlin/jvm/functions/Function2;)V
    .registers 5
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

    .line 74
    sget-object v0, Lcom/ljwx/recyclerview/BaseRecyclerLog;->INSTANCE:Lcom/ljwx/recyclerview/BaseRecyclerLog;

    iget-object v1, p0, Lcom/ljwx/recyclerview/quick/QuickSingleAdapter;->TAG:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "设置item点击"

    invoke-virtual {v0, v1, v2}, Lcom/ljwx/recyclerview/BaseRecyclerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/ljwx/recyclerview/quick/QuickSingleAdapter;->mItemType:Lcom/ljwx/recyclerview/itemtype/ItemTypeLayout;

    invoke-virtual {v0, p1}, Lcom/ljwx/recyclerview/itemtype/ItemTypeLayout;->setOnItemClick(Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public submitList(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TItem;>;)V"
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lcom/ljwx/recyclerview/quick/QuickSingleAdapter;->newList:Ljava/util/List;

    .line 99
    invoke-virtual {p0}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    .line 100
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;)V

    .line 101
    sget-object p1, Lcom/ljwx/recyclerview/BaseRecyclerLog;->INSTANCE:Lcom/ljwx/recyclerview/BaseRecyclerLog;

    iget-object v0, p0, Lcom/ljwx/recyclerview/quick/QuickSingleAdapter;->TAG:Ljava/lang/String;

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "提交数据"

    invoke-virtual {p1, v0, v1}, Lcom/ljwx/recyclerview/BaseRecyclerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
