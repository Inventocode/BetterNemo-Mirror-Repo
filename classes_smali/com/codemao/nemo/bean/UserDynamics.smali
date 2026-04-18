.class public Lcom/codemao/nemo/bean/UserDynamics;
.super Ljava/lang/Object;
.source "UserDynamics.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/UserDynamicInfo;",
            ">;"
        }
    .end annotation
.end field

.field private limit:I

.field private offset:I

.field private page_total:I

.field private total:I

.field private totalReply:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getItems()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/UserDynamicInfo;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/codemao/nemo/bean/UserDynamics;->items:Ljava/util/List;

    return-object v0
.end method

.method public getLimit()I
    .registers 2

    .line 39
    iget v0, p0, Lcom/codemao/nemo/bean/UserDynamics;->limit:I

    return v0
.end method

.method public getOffset()I
    .registers 2

    .line 31
    iget v0, p0, Lcom/codemao/nemo/bean/UserDynamics;->offset:I

    return v0
.end method

.method public getPage_total()I
    .registers 2

    .line 15
    iget v0, p0, Lcom/codemao/nemo/bean/UserDynamics;->page_total:I

    return v0
.end method

.method public getTotal()I
    .registers 2

    .line 47
    iget v0, p0, Lcom/codemao/nemo/bean/UserDynamics;->total:I

    return v0
.end method

.method public getTotalReply()I
    .registers 2

    .line 55
    iget v0, p0, Lcom/codemao/nemo/bean/UserDynamics;->totalReply:I

    return v0
.end method

.method public setItems(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/UserDynamicInfo;",
            ">;)V"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lcom/codemao/nemo/bean/UserDynamics;->items:Ljava/util/List;

    return-void
.end method

.method public setLimit(I)V
    .registers 2

    .line 43
    iput p1, p0, Lcom/codemao/nemo/bean/UserDynamics;->limit:I

    return-void
.end method

.method public setOffset(I)V
    .registers 2

    .line 35
    iput p1, p0, Lcom/codemao/nemo/bean/UserDynamics;->offset:I

    return-void
.end method

.method public setPage_total(I)V
    .registers 2

    .line 19
    iput p1, p0, Lcom/codemao/nemo/bean/UserDynamics;->page_total:I

    return-void
.end method

.method public setTotal(I)V
    .registers 2

    .line 51
    iput p1, p0, Lcom/codemao/nemo/bean/UserDynamics;->total:I

    return-void
.end method

.method public setTotalReply(I)V
    .registers 2

    .line 59
    iput p1, p0, Lcom/codemao/nemo/bean/UserDynamics;->totalReply:I

    return-void
.end method
