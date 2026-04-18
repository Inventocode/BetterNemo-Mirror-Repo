.class public Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "MultipleTypeAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/ListAdapter<",
        "Ljava/lang/Object;",
        "Lcom/ljwx/recyclerview/holder/ItemHolder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMultipleTypeAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MultipleTypeAdapter.kt\ncom/ljwx/recyclerview/adapter/MultipleTypeAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,135:1\n1#2:136\n*E\n"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field protected mItemTypes:[Lcom/ljwx/recyclerview/itemtype/ItemType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/ljwx/recyclerview/itemtype/ItemType<",
            "Ljava/lang/Object;",
            "Lcom/ljwx/recyclerview/holder/ItemHolder;",
            ">;"
        }
    .end annotation
.end field

.field private newList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lcom/ljwx/recyclerview/itemtype/ItemType;Landroidx/recyclerview/widget/AsyncDifferConfig;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/ljwx/recyclerview/itemtype/ItemType<",
            "**>;",
            "Landroidx/recyclerview/widget/AsyncDifferConfig<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "itemTypes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/AsyncDifferConfig;)V

    .line 21
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-[rv"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;->TAG:Ljava/lang/String;

    .line 29
    invoke-virtual {p0, p1}, Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;->setMItemTypes([Lcom/ljwx/recyclerview/itemtype/ItemType;)V

    return-void
.end method

.method public synthetic constructor <init>([Lcom/ljwx/recyclerview/itemtype/ItemType;Landroidx/recyclerview/widget/AsyncDifferConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_19

    .line 18
    new-instance p2, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;

    new-instance p3, Lcom/ljwx/recyclerview/diff/ItemDiffCallback;

    const/4 p4, 0x1

    const/4 v0, 0x0

    invoke-direct {p3, v0, p4, v0}, Lcom/ljwx/recyclerview/diff/ItemDiffCallback;-><init>(Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p2, p3}, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    invoke-virtual {p2}, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;->build()Landroidx/recyclerview/widget/AsyncDifferConfig;

    move-result-object p2

    const-string p3, "Builder(ItemDiffCallback()).build()"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    :cond_19
    invoke-direct {p0, p1, p2}, Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;-><init>([Lcom/ljwx/recyclerview/itemtype/ItemType;Landroidx/recyclerview/widget/AsyncDifferConfig;)V

    return-void
.end method


# virtual methods
.method public deletePosition(I)V
    .registers 3

    .line 93
    iget-object v0, p0, Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;->newList:Ljava/util/List;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    if-ge p1, v0, :cond_1e

    .line 94
    iget-object v0, p0, Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;->newList:Ljava/util/List;

    if-eqz v0, :cond_1a

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 95
    :goto_1b
    invoke-virtual {p0, v0}, Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;->submitList(Ljava/util/List;)V

    :cond_1e
    return-void
.end method

.method public getData()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;->newList:Ljava/util/List;

    return-object v0
.end method

.method public getDataItem(I)Ljava/lang/Object;
    .registers 4

    .line 109
    iget-object v0, p0, Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;->newList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_f

    goto :goto_17

    .line 112
    :cond_f
    iget-object v0, p0, Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;->newList:Ljava/util/List;

    if-eqz v0, :cond_17

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    :cond_17
    :goto_17
    return-object v1
.end method

.method public getDataSize()I
    .registers 2

    .line 120
    iget-object v0, p0, Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;->newList:Ljava/util/List;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getItemViewType(I)I
    .registers 6

    .line 60
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 61
    invoke-virtual {p0}, Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;->getMItemTypes()[Lcom/ljwx/recyclerview/itemtype/ItemType;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_21

    .line 62
    invoke-virtual {p0}, Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;->getMItemTypes()[Lcom/ljwx/recyclerview/itemtype/ItemType;

    move-result-object v2

    aget-object v2, v2, v1

    const-string v3, "item"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, p1}, Lcom/ljwx/recyclerview/itemtype/ItemType;->matches(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    return v1

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_21
    const/4 p1, -0x1

    return p1
.end method

.method protected final getMItemTypes()[Lcom/ljwx/recyclerview/itemtype/ItemType;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lcom/ljwx/recyclerview/itemtype/ItemType<",
            "Ljava/lang/Object;",
            "Lcom/ljwx/recyclerview/holder/ItemHolder;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;->mItemTypes:[Lcom/ljwx/recyclerview/itemtype/ItemType;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "mItemTypes"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 16
    check-cast p1, Lcom/ljwx/recyclerview/holder/ItemHolder;

    invoke-virtual {p0, p1, p2}, Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;->onBindViewHolder(Lcom/ljwx/recyclerview/holder/ItemHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/ljwx/recyclerview/holder/ItemHolder;I)V
    .registers 7

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    sget-object v0, Lcom/ljwx/recyclerview/BaseRecyclerLog;->INSTANCE:Lcom/ljwx/recyclerview/BaseRecyclerLog;

    iget-object v1, p0, Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;->TAG:Ljava/lang/String;

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

    .line 80
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_42

    .line 81
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    .line 82
    invoke-virtual {p0}, Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;->getMItemTypes()[Lcom/ljwx/recyclerview/itemtype/ItemType;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    aget-object v0, v0, v1

    const-string v1, "item"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1, p2}, Lcom/ljwx/recyclerview/itemtype/ItemType;->bind(Lcom/ljwx/recyclerview/holder/ItemHolder;Ljava/lang/Object;)V

    :cond_42
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ljwx/recyclerview/holder/ItemHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ljwx/recyclerview/holder/ItemHolder;
    .registers 7

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    sget-object v0, Lcom/ljwx/recyclerview/BaseRecyclerLog;->INSTANCE:Lcom/ljwx/recyclerview/BaseRecyclerLog;

    iget-object v1, p0, Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreateViewHolder,viewType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ljwx/recyclerview/BaseRecyclerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2f

    .line 73
    new-instance p2, Lcom/ljwx/recyclerview/holder/ItemHolder;

    new-instance v0, Landroid/widget/Space;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    invoke-direct {p2, v0}, Lcom/ljwx/recyclerview/holder/ItemHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 75
    :cond_2f
    invoke-virtual {p0}, Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;->getMItemTypes()[Lcom/ljwx/recyclerview/itemtype/ItemType;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-interface {p2, p1}, Lcom/ljwx/recyclerview/itemtype/ItemType;->create(Landroid/view/ViewGroup;)Lcom/ljwx/recyclerview/holder/ItemHolder;

    move-result-object p1

    return-object p1
.end method

.method protected final setMItemTypes([Lcom/ljwx/recyclerview/itemtype/ItemType;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/ljwx/recyclerview/itemtype/ItemType<",
            "Ljava/lang/Object;",
            "Lcom/ljwx/recyclerview/holder/ItemHolder;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;->mItemTypes:[Lcom/ljwx/recyclerview/itemtype/ItemType;

    return-void
.end method

.method public submitList(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;->newList:Ljava/util/List;

    .line 125
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;)V

    .line 126
    sget-object p1, Lcom/ljwx/recyclerview/BaseRecyclerLog;->INSTANCE:Lcom/ljwx/recyclerview/BaseRecyclerLog;

    iget-object v0, p0, Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;->TAG:Ljava/lang/String;

    const-string v1, "提交数据"

    invoke-virtual {p1, v0, v1}, Lcom/ljwx/recyclerview/BaseRecyclerLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
