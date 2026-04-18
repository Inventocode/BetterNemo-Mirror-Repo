.class public Lcom/lxj/easyadapter/MultiItemTypeAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MultiItemTypeAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lxj/easyadapter/MultiItemTypeAdapter$OnItemClickListener;,
        Lcom/lxj/easyadapter/MultiItemTypeAdapter$SimpleOnItemClickListener;,
        Lcom/lxj/easyadapter/MultiItemTypeAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/lxj/easyadapter/ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private final mFootViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mHeaderViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mItemDelegateManager:Lcom/lxj/easyadapter/ItemDelegateManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lxj/easyadapter/ItemDelegateManager<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mOnItemClickListener:Lcom/lxj/easyadapter/MultiItemTypeAdapter$OnItemClickListener;


# direct methods
.method public static synthetic $r8$lambda$rGweOoWsYfZsJOSyWFVMkam7slk(Lcom/lxj/easyadapter/MultiItemTypeAdapter;Lcom/lxj/easyadapter/ViewHolder;Landroid/view/View;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->setListener$lambda-1(Lcom/lxj/easyadapter/MultiItemTypeAdapter;Lcom/lxj/easyadapter/ViewHolder;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$uqfb58lcjGNtfRb2skdChm3CLns(Lcom/lxj/easyadapter/MultiItemTypeAdapter;Lcom/lxj/easyadapter/ViewHolder;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->setListener$lambda-0(Lcom/lxj/easyadapter/MultiItemTypeAdapter;Lcom/lxj/easyadapter/ViewHolder;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/lxj/easyadapter/MultiItemTypeAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lxj/easyadapter/MultiItemTypeAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->data:Ljava/util/List;

    .line 13
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->mHeaderViews:Landroid/util/SparseArray;

    .line 14
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->mFootViews:Landroid/util/SparseArray;

    .line 16
    new-instance p1, Lcom/lxj/easyadapter/ItemDelegateManager;

    invoke-direct {p1}, Lcom/lxj/easyadapter/ItemDelegateManager;-><init>()V

    iput-object p1, p0, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->mItemDelegateManager:Lcom/lxj/easyadapter/ItemDelegateManager;

    return-void
.end method

.method public static final synthetic access$getMFootViews$p(Lcom/lxj/easyadapter/MultiItemTypeAdapter;)Landroid/util/SparseArray;
    .registers 1

    .line 11
    iget-object p0, p0, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->mFootViews:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static final synthetic access$getMHeaderViews$p(Lcom/lxj/easyadapter/MultiItemTypeAdapter;)Landroid/util/SparseArray;
    .registers 1

    .line 11
    iget-object p0, p0, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->mHeaderViews:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static synthetic convert$default(Lcom/lxj/easyadapter/MultiItemTypeAdapter;Lcom/lxj/easyadapter/ViewHolder;Ljava/lang/Object;Ljava/util/List;ILjava/lang/Object;)V
    .registers 6

    if-nez p5, :cond_b

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_7

    const/4 p3, 0x0

    .line 56
    :cond_7
    invoke-virtual {p0, p1, p2, p3}, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->convert(Lcom/lxj/easyadapter/ViewHolder;Ljava/lang/Object;Ljava/util/List;)V

    return-void

    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: convert"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final getRealItemCount()I
    .registers 3

    .line 20
    invoke-virtual {p0}, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->getItemCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->getHeadersCount()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->getFootersCount()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private final isFooterViewPos(I)Z
    .registers 4

    .line 135
    invoke-virtual {p0}, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->getHeadersCount()I

    move-result v0

    invoke-direct {p0}, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->getRealItemCount()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    return p1
.end method

.method private final isHeaderViewPos(I)Z
    .registers 3

    .line 131
    invoke-virtual {p0}, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->getHeadersCount()I

    move-result v0

    if-ge p1, v0, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method private static final setListener$lambda-0(Lcom/lxj/easyadapter/MultiItemTypeAdapter;Lcom/lxj/easyadapter/ViewHolder;Landroid/view/View;)V
    .registers 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->mOnItemClickListener:Lcom/lxj/easyadapter/MultiItemTypeAdapter$OnItemClickListener;

    if-eqz v0, :cond_24

    .line 69
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->getHeadersCount()I

    move-result v1

    sub-int/2addr v0, v1

    .line 70
    iget-object p0, p0, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->mOnItemClickListener:Lcom/lxj/easyadapter/MultiItemTypeAdapter$OnItemClickListener;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "v"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p2, p1, v0}, Lcom/lxj/easyadapter/MultiItemTypeAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_24
    return-void
.end method

.method private static final setListener$lambda-1(Lcom/lxj/easyadapter/MultiItemTypeAdapter;Lcom/lxj/easyadapter/ViewHolder;Landroid/view/View;)Z
    .registers 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->mOnItemClickListener:Lcom/lxj/easyadapter/MultiItemTypeAdapter$OnItemClickListener;

    if-eqz v0, :cond_26

    .line 76
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->getHeadersCount()I

    move-result v1

    sub-int/2addr v0, v1

    .line 77
    iget-object p0, p0, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->mOnItemClickListener:Lcom/lxj/easyadapter/MultiItemTypeAdapter$OnItemClickListener;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "v"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p2, p1, v0}, Lcom/lxj/easyadapter/MultiItemTypeAdapter$OnItemClickListener;->onItemLongClick(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)Z

    move-result p0

    return p0

    :cond_26
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final addItemDelegate(Lcom/lxj/easyadapter/ItemDelegate;)Lcom/lxj/easyadapter/MultiItemTypeAdapter;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lxj/easyadapter/ItemDelegate<",
            "TT;>;)",
            "Lcom/lxj/easyadapter/MultiItemTypeAdapter<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "itemViewDelegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->mItemDelegateManager:Lcom/lxj/easyadapter/ItemDelegateManager;

    invoke-virtual {v0, p1}, Lcom/lxj/easyadapter/ItemDelegateManager;->addDelegate(Lcom/lxj/easyadapter/ItemDelegate;)Lcom/lxj/easyadapter/ItemDelegateManager;

    return-object p0
.end method

.method public final convert(Lcom/lxj/easyadapter/ViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lxj/easyadapter/ViewHolder;",
            "TT;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->mItemDelegateManager:Lcom/lxj/easyadapter/ItemDelegateManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->getHeadersCount()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/lxj/easyadapter/ItemDelegateManager;->convert(Lcom/lxj/easyadapter/ViewHolder;Ljava/lang/Object;ILjava/util/List;)V

    return-void
.end method

.method public final getData()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->data:Ljava/util/List;

    return-object v0
.end method

.method public final getFootersCount()I
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->mFootViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public final getHeadersCount()I
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->mHeaderViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public getItemCount()I
    .registers 4

    .line 126
    iget-object v0, p0, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 127
    invoke-virtual {p0}, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->getHeadersCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->getFootersCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    return v1
.end method

.method public getItemViewType(I)I
    .registers 5

    .line 29
    invoke-direct {p0, p1}, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->isHeaderViewPos(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 30
    iget-object v0, p0, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->mHeaderViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p1

    return p1

    .line 31
    :cond_d
    invoke-direct {p0, p1}, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->isFooterViewPos(I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 32
    iget-object v0, p0, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->mFootViews:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->getHeadersCount()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-direct {p0}, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->getRealItemCount()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p1

    return p1

    .line 34
    :cond_24
    invoke-virtual {p0}, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->useItemDelegateManager()Z

    move-result v0

    if-nez v0, :cond_2f

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    goto :goto_46

    :cond_2f
    iget-object v0, p0, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->mItemDelegateManager:Lcom/lxj/easyadapter/ItemDelegateManager;

    iget-object v1, p0, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->data:Ljava/util/List;

    invoke-virtual {p0}, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->getHeadersCount()I

    move-result v2

    sub-int v2, p1, v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->getHeadersCount()I

    move-result v2

    sub-int/2addr p1, v2

    invoke-virtual {v0, v1, p1}, Lcom/lxj/easyadapter/ItemDelegateManager;->getItemViewType(Ljava/lang/Object;I)I

    move-result p1

    :goto_46
    return p1
.end method

.method protected final isEnabled(I)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 4

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 105
    sget-object v0, Lcom/lxj/easyadapter/WrapperUtils;->INSTANCE:Lcom/lxj/easyadapter/WrapperUtils;

    new-instance v1, Lcom/lxj/easyadapter/MultiItemTypeAdapter$onAttachedToRecyclerView$1;

    invoke-direct {v1, p0}, Lcom/lxj/easyadapter/MultiItemTypeAdapter$onAttachedToRecyclerView$1;-><init>(Lcom/lxj/easyadapter/MultiItemTypeAdapter;)V

    invoke-virtual {v0, p1, v1}, Lcom/lxj/easyadapter/WrapperUtils;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 11
    check-cast p1, Lcom/lxj/easyadapter/ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->onBindViewHolder(Lcom/lxj/easyadapter/ViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .registers 4

    .line 11
    check-cast p1, Lcom/lxj/easyadapter/ViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->onBindViewHolder(Lcom/lxj/easyadapter/ViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/lxj/easyadapter/ViewHolder;I)V
    .registers 10

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-direct {p0, p2}, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->isHeaderViewPos(I)Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    .line 87
    :cond_c
    invoke-direct {p0, p2}, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->isFooterViewPos(I)Z

    move-result v0

    if-eqz v0, :cond_13

    return-void

    .line 90
    :cond_13
    iget-object v0, p0, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->data:Ljava/util/List;

    invoke-virtual {p0}, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->getHeadersCount()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->convert$default(Lcom/lxj/easyadapter/MultiItemTypeAdapter;Lcom/lxj/easyadapter/ViewHolder;Ljava/lang/Object;Ljava/util/List;ILjava/lang/Object;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/lxj/easyadapter/ViewHolder;ILjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lxj/easyadapter/ViewHolder;",
            "I",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-direct {p0, p2}, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->isHeaderViewPos(I)Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    .line 97
    :cond_11
    invoke-direct {p0, p2}, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->isFooterViewPos(I)Z

    move-result v0

    if-eqz v0, :cond_18

    return-void

    .line 100
    :cond_18
    iget-object v0, p0, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->data:Ljava/util/List;

    invoke-virtual {p0}, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->getHeadersCount()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->convert(Lcom/lxj/easyadapter/ViewHolder;Ljava/lang/Object;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/lxj/easyadapter/ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/lxj/easyadapter/ViewHolder;
    .registers 7

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->mHeaderViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 40
    sget-object p1, Lcom/lxj/easyadapter/ViewHolder;->Companion:Lcom/lxj/easyadapter/ViewHolder$Companion;

    iget-object v0, p0, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->mHeaderViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Landroid/view/View;

    invoke-virtual {p1, p2}, Lcom/lxj/easyadapter/ViewHolder$Companion;->createViewHolder(Landroid/view/View;)Lcom/lxj/easyadapter/ViewHolder;

    move-result-object p1

    return-object p1

    .line 42
    :cond_1f
    iget-object v0, p0, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->mFootViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 43
    sget-object p1, Lcom/lxj/easyadapter/ViewHolder;->Companion:Lcom/lxj/easyadapter/ViewHolder$Companion;

    iget-object v0, p0, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->mFootViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Landroid/view/View;

    invoke-virtual {p1, p2}, Lcom/lxj/easyadapter/ViewHolder$Companion;->createViewHolder(Landroid/view/View;)Lcom/lxj/easyadapter/ViewHolder;

    move-result-object p1

    return-object p1

    .line 45
    :cond_39
    iget-object v0, p0, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->mItemDelegateManager:Lcom/lxj/easyadapter/ItemDelegateManager;

    invoke-virtual {v0, p2}, Lcom/lxj/easyadapter/ItemDelegateManager;->getItemViewDelegate(I)Lcom/lxj/easyadapter/ItemDelegate;

    move-result-object v0

    .line 47
    invoke-interface {v0}, Lcom/lxj/easyadapter/ItemDelegate;->getLayoutId()I

    move-result v0

    .line 48
    sget-object v1, Lcom/lxj/easyadapter/ViewHolder;->Companion:Lcom/lxj/easyadapter/ViewHolder$Companion;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "parent.context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2, p1, v0}, Lcom/lxj/easyadapter/ViewHolder$Companion;->createViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/lxj/easyadapter/ViewHolder;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/lxj/easyadapter/ViewHolder;->getConvertView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->onViewHolderCreated(Lcom/lxj/easyadapter/ViewHolder;Landroid/view/View;)V

    .line 50
    invoke-virtual {p0, p1, v0, p2}, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->setListener(Landroid/view/ViewGroup;Lcom/lxj/easyadapter/ViewHolder;I)V

    return-object v0
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 2

    .line 11
    check-cast p1, Lcom/lxj/easyadapter/ViewHolder;

    invoke-virtual {p0, p1}, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->onViewAttachedToWindow(Lcom/lxj/easyadapter/ViewHolder;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lcom/lxj/easyadapter/ViewHolder;)V
    .registers 4

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 119
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v0

    .line 120
    invoke-direct {p0, v0}, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->isHeaderViewPos(I)Z

    move-result v1

    if-nez v1, :cond_18

    invoke-direct {p0, v0}, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->isFooterViewPos(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 121
    :cond_18
    sget-object v0, Lcom/lxj/easyadapter/WrapperUtils;->INSTANCE:Lcom/lxj/easyadapter/WrapperUtils;

    invoke-virtual {v0, p1}, Lcom/lxj/easyadapter/WrapperUtils;->setFullSpan(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_1d
    return-void
.end method

.method public final onViewHolderCreated(Lcom/lxj/easyadapter/ViewHolder;Landroid/view/View;)V
    .registers 4

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "itemView"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected final setListener(Landroid/view/ViewGroup;Lcom/lxj/easyadapter/ViewHolder;I)V
    .registers 5

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "viewHolder"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0, p3}, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->isEnabled(I)Z

    move-result p1

    if-nez p1, :cond_11

    return-void

    .line 67
    :cond_11
    invoke-virtual {p2}, Lcom/lxj/easyadapter/ViewHolder;->getConvertView()Landroid/view/View;

    move-result-object p1

    new-instance p3, Lcom/lxj/easyadapter/MultiItemTypeAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p2}, Lcom/lxj/easyadapter/MultiItemTypeAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/lxj/easyadapter/MultiItemTypeAdapter;Lcom/lxj/easyadapter/ViewHolder;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    invoke-virtual {p2}, Lcom/lxj/easyadapter/ViewHolder;->getConvertView()Landroid/view/View;

    move-result-object p1

    new-instance p3, Lcom/lxj/easyadapter/MultiItemTypeAdapter$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p2}, Lcom/lxj/easyadapter/MultiItemTypeAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/lxj/easyadapter/MultiItemTypeAdapter;Lcom/lxj/easyadapter/ViewHolder;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public final setOnItemClickListener(Lcom/lxj/easyadapter/MultiItemTypeAdapter$OnItemClickListener;)V
    .registers 3

    const-string v0, "onItemClickListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    iput-object p1, p0, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->mOnItemClickListener:Lcom/lxj/easyadapter/MultiItemTypeAdapter$OnItemClickListener;

    return-void
.end method

.method protected final useItemDelegateManager()Z
    .registers 2

    .line 157
    iget-object v0, p0, Lcom/lxj/easyadapter/MultiItemTypeAdapter;->mItemDelegateManager:Lcom/lxj/easyadapter/ItemDelegateManager;

    invoke-virtual {v0}, Lcom/lxj/easyadapter/ItemDelegateManager;->getItemViewDelegateCount()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
