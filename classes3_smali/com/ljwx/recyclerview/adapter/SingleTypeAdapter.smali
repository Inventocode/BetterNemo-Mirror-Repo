.class public final Lcom/ljwx/recyclerview/adapter/SingleTypeAdapter;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "SingleTypeAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item:",
        "Ljava/lang/Object;",
        "Holder:",
        "Lcom/ljwx/recyclerview/holder/ItemHolder;",
        ">",
        "Landroidx/recyclerview/widget/ListAdapter<",
        "TItem;THolder;>;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final itemType:Lcom/ljwx/recyclerview/itemtype/ItemType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ljwx/recyclerview/itemtype/ItemType<",
            "TItem;THolder;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ljwx/recyclerview/itemtype/ItemType;Landroidx/recyclerview/widget/AsyncDifferConfig;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ljwx/recyclerview/itemtype/ItemType<",
            "TItem;THolder;>;",
            "Landroidx/recyclerview/widget/AsyncDifferConfig<",
            "TItem;>;)V"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/AsyncDifferConfig;)V

    .line 17
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v0, Lcom/ljwx/recyclerview/adapter/SingleTypeAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-[rv"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/ljwx/recyclerview/adapter/SingleTypeAdapter;->TAG:Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/ljwx/recyclerview/adapter/SingleTypeAdapter;->itemType:Lcom/ljwx/recyclerview/itemtype/ItemType;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ljwx/recyclerview/itemtype/ItemType;Landroidx/recyclerview/widget/AsyncDifferConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_19

    .line 14
    new-instance p2, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;

    new-instance p3, Lcom/ljwx/recyclerview/diff/ItemDiffCallback;

    const/4 p4, 0x1

    const/4 v0, 0x0

    invoke-direct {p3, v0, p4, v0}, Lcom/ljwx/recyclerview/diff/ItemDiffCallback;-><init>(Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p2, p3}, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    invoke-virtual {p2}, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;->build()Landroidx/recyclerview/widget/AsyncDifferConfig;

    move-result-object p2

    const-string p3, "Builder<Item>(ItemDiffCallback()).build()"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    :cond_19
    invoke-direct {p0, p1, p2}, Lcom/ljwx/recyclerview/adapter/SingleTypeAdapter;-><init>(Lcom/ljwx/recyclerview/itemtype/ItemType;Landroidx/recyclerview/widget/AsyncDifferConfig;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 12
    check-cast p1, Lcom/ljwx/recyclerview/holder/ItemHolder;

    invoke-virtual {p0, p1, p2}, Lcom/ljwx/recyclerview/adapter/SingleTypeAdapter;->onBindViewHolder(Lcom/ljwx/recyclerview/holder/ItemHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/ljwx/recyclerview/holder/ItemHolder;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(THolder;I)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/ljwx/recyclerview/adapter/SingleTypeAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindViewHolder:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iget-object v0, p0, Lcom/ljwx/recyclerview/adapter/SingleTypeAdapter;->itemType:Lcom/ljwx/recyclerview/itemtype/ItemType;

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    const-string v1, "getItem(position)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1, p2}, Lcom/ljwx/recyclerview/itemtype/ItemType;->bind(Lcom/ljwx/recyclerview/holder/ItemHolder;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/ljwx/recyclerview/adapter/SingleTypeAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ljwx/recyclerview/holder/ItemHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ljwx/recyclerview/holder/ItemHolder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)THolder;"
        }
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object p2, p0, Lcom/ljwx/recyclerview/adapter/SingleTypeAdapter;->itemType:Lcom/ljwx/recyclerview/itemtype/ItemType;

    invoke-interface {p2, p1}, Lcom/ljwx/recyclerview/itemtype/ItemType;->create(Landroid/view/ViewGroup;)Lcom/ljwx/recyclerview/holder/ItemHolder;

    move-result-object p1

    return-object p1
.end method
