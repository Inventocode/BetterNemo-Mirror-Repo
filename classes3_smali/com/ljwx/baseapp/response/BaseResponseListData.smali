.class public Lcom/ljwx/baseapp/response/BaseResponseListData;
.super Ljava/lang/Object;
.source "BaseResponseListData.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+TItem;>;"
        }
    .end annotation
.end field

.field private limit:Ljava/lang/Integer;

.field private offset:Ljava/lang/Integer;

.field private total:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getItems()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TItem;>;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/ljwx/baseapp/response/BaseResponseListData;->items:Ljava/util/List;

    return-object v0
.end method

.method public final getLimit()Ljava/lang/Integer;
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/ljwx/baseapp/response/BaseResponseListData;->limit:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getOffset()Ljava/lang/Integer;
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/ljwx/baseapp/response/BaseResponseListData;->offset:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getTotal()Ljava/lang/Integer;
    .registers 2

    .line 7
    iget-object v0, p0, Lcom/ljwx/baseapp/response/BaseResponseListData;->total:Ljava/lang/Integer;

    return-object v0
.end method

.method public hasMore()Z
    .registers 4

    .line 10
    iget-object v0, p0, Lcom/ljwx/baseapp/response/BaseResponseListData;->offset:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    iget-object v2, p0, Lcom/ljwx/baseapp/response/BaseResponseListData;->items:Ljava/util/List;

    if-eqz v2, :cond_14

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/ljwx/baseapp/response/BaseResponseListData;->total:Ljava/lang/Integer;

    if-eqz v2, :cond_1f

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_20

    :cond_1f
    const/4 v2, 0x0

    :goto_20
    if-ge v0, v2, :cond_23

    const/4 v1, 0x1

    :cond_23
    return v1
.end method

.method public isRefresh()Z
    .registers 3

    .line 14
    iget-object v0, p0, Lcom/ljwx/baseapp/response/BaseResponseListData;->offset:Ljava/lang/Integer;

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v1, :cond_f

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :cond_10
    :goto_10
    return v1
.end method

.method public isRefreshAndEmpty()Z
    .registers 4

    .line 18
    invoke-virtual {p0}, Lcom/ljwx/baseapp/response/BaseResponseListData;->isRefresh()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/ljwx/baseapp/response/BaseResponseListData;->items:Ljava/util/List;

    if-eqz v0, :cond_15

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    if-eqz v0, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    return v1
.end method

.method public final setItems(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TItem;>;)V"
        }
    .end annotation

    .line 4
    iput-object p1, p0, Lcom/ljwx/baseapp/response/BaseResponseListData;->items:Ljava/util/List;

    return-void
.end method

.method public final setLimit(Ljava/lang/Integer;)V
    .registers 2

    .line 5
    iput-object p1, p0, Lcom/ljwx/baseapp/response/BaseResponseListData;->limit:Ljava/lang/Integer;

    return-void
.end method

.method public final setOffset(Ljava/lang/Integer;)V
    .registers 2

    .line 6
    iput-object p1, p0, Lcom/ljwx/baseapp/response/BaseResponseListData;->offset:Ljava/lang/Integer;

    return-void
.end method

.method public final setTotal(Ljava/lang/Integer;)V
    .registers 2

    .line 7
    iput-object p1, p0, Lcom/ljwx/baseapp/response/BaseResponseListData;->total:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseResponseListData(limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ljwx/baseapp/response/BaseResponseListData;->limit:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ljwx/baseapp/response/BaseResponseListData;->offset:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ljwx/baseapp/response/BaseResponseListData;->total:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", itemsSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ljwx/baseapp/response/BaseResponseListData;->items:Ljava/util/List;

    if-eqz v1, :cond_31

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_32

    :cond_31
    const/4 v1, 0x0

    :goto_32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
