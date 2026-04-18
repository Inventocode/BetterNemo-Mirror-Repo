.class public Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegateManager;
.super Ljava/lang/Object;
.source "ItemViewDelegateManager.java"


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
.field private itemViewDelegates:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegateManager;->itemViewDelegates:Landroidx/collection/SparseArrayCompat;

    return-void
.end method


# virtual methods
.method public addItemViewDelegate(ILcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)V
    .registers 5

    .line 34
    iget-object v0, p0, Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegateManager;->itemViewDelegates:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e

    .line 40
    iget-object v0, p0, Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegateManager;->itemViewDelegates:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    return-void

    .line 35
    :cond_e
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "An ItemViewDelegate is already registered for the viewType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". Already registered ItemViewDelegate is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegateManager;->itemViewDelegates:Landroidx/collection/SparseArrayCompat;

    .line 38
    invoke-virtual {v1, p1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 29
    :cond_3
    iget-object v0, p0, Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegateManager;->itemViewDelegates:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v0

    .line 30
    iget-object v1, p0, Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegateManager;->itemViewDelegates:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1, v0, p1}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;",
            "Ljava/util/List<",
            "TT;>;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 61
    :goto_1
    iget-object v1, p0, Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegateManager;->itemViewDelegates:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 62
    iget-object v1, p0, Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegateManager;->itemViewDelegates:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1, v0}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;

    .line 63
    invoke-interface {v1, p2, p3}, Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;->isForViewType(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 64
    invoke-interface {v1, p1, p2, p3}, Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;->convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V

    return-void

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 68
    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No ItemViewDelegateManager added that matches position="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " in data source"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getItemViewDelegate(I)Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;
    .registers 3

    .line 22
    iget-object v0, p0, Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegateManager;->itemViewDelegates:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;

    return-object p1
.end method

.method public getItemViewDelegateCount()I
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegateManager;->itemViewDelegates:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(Ljava/util/List;I)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;I)I"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegateManager;->itemViewDelegates:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_22

    .line 50
    iget-object v1, p0, Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegateManager;->itemViewDelegates:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1, v0}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;

    .line 51
    invoke-interface {v1, p1, p2}, Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;->isForViewType(Ljava/util/List;I)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 52
    iget-object p1, p0, Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegateManager;->itemViewDelegates:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {p1, v0}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result p1

    return p1

    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 55
    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No ItemViewDelegate added that matches position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " in data source"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
