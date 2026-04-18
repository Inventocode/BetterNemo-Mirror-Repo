.class public final Lcom/lxj/easyadapter/ItemDelegateManager;
.super Ljava/lang/Object;
.source "ItemDelegateManager.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private delegates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/lxj/easyadapter/ItemDelegate<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/lxj/easyadapter/ItemDelegateManager;->delegates:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final addDelegate(Lcom/lxj/easyadapter/ItemDelegate;)Lcom/lxj/easyadapter/ItemDelegateManager;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lxj/easyadapter/ItemDelegate<",
            "TT;>;)",
            "Lcom/lxj/easyadapter/ItemDelegateManager<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/lxj/easyadapter/ItemDelegateManager;->delegates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 17
    iget-object v1, p0, Lcom/lxj/easyadapter/ItemDelegateManager;->delegates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public final convert(Lcom/lxj/easyadapter/ViewHolder;Ljava/lang/Object;ILjava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lxj/easyadapter/ViewHolder;",
            "TT;I",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/lxj/easyadapter/ItemDelegateManager;->delegates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v0, :cond_34

    add-int/lit8 v3, v2, 0x1

    .line 68
    iget-object v4, p0, Lcom/lxj/easyadapter/ItemDelegateManager;->delegates:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lxj/easyadapter/ItemDelegate;

    .line 70
    invoke-interface {v2, p2, p3}, Lcom/lxj/easyadapter/ItemDelegate;->isThisType(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_32

    if-eqz p4, :cond_27

    .line 71
    invoke-interface {p4}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_27
    const/4 v1, 0x1

    :cond_28
    if-eqz v1, :cond_2e

    .line 72
    invoke-interface {v2, p1, p2, p3}, Lcom/lxj/easyadapter/ItemDelegate;->bind(Lcom/lxj/easyadapter/ViewHolder;Ljava/lang/Object;I)V

    goto :goto_31

    .line 74
    :cond_2e
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/lxj/easyadapter/ItemDelegate;->bindWithPayloads(Lcom/lxj/easyadapter/ViewHolder;Ljava/lang/Object;ILjava/util/List;)V

    :goto_31
    return-void

    :cond_32
    move v2, v3

    goto :goto_d

    :cond_34
    return-void
.end method

.method public final getItemViewDelegate(I)Lcom/lxj/easyadapter/ItemDelegate;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/lxj/easyadapter/ItemDelegate<",
            "TT;>;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/lxj/easyadapter/ItemDelegateManager;->delegates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lcom/lxj/easyadapter/ItemDelegate;

    return-object p1
.end method

.method public final getItemViewDelegateCount()I
    .registers 2

    .line 13
    iget-object v0, p0, Lcom/lxj/easyadapter/ItemDelegateManager;->delegates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public final getItemViewType(Ljava/lang/Object;I)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)I"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/lxj/easyadapter/ItemDelegateManager;->delegates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_26

    :goto_a
    add-int/lit8 v1, v0, -0x1

    .line 55
    iget-object v2, p0, Lcom/lxj/easyadapter/ItemDelegateManager;->delegates:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lxj/easyadapter/ItemDelegate;

    .line 56
    invoke-interface {v2, p1, p2}, Lcom/lxj/easyadapter/ItemDelegate;->isThisType(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 57
    iget-object p1, p0, Lcom/lxj/easyadapter/ItemDelegateManager;->delegates:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p1

    return p1

    :cond_21
    if-gez v1, :cond_24

    goto :goto_26

    :cond_24
    move v0, v1

    goto :goto_a

    :cond_26
    :goto_26
    const/4 p1, 0x0

    return p1
.end method
