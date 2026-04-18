.class public Lcom/codemao/nemo/bean/TrendsListInfo;
.super Ljava/lang/Object;
.source "TrendsListInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private counted:Z

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/TrendsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private limit:I

.field private offset:I

.field private total:I


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
            "Lcom/codemao/nemo/bean/TrendsInfo;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/codemao/nemo/bean/TrendsListInfo;->items:Ljava/util/List;

    return-object v0
.end method

.method public getLimit()I
    .registers 2

    .line 33
    iget v0, p0, Lcom/codemao/nemo/bean/TrendsListInfo;->limit:I

    return v0
.end method

.method public getOffset()I
    .registers 2

    .line 25
    iget v0, p0, Lcom/codemao/nemo/bean/TrendsListInfo;->offset:I

    return v0
.end method

.method public getTotal()I
    .registers 2

    .line 41
    iget v0, p0, Lcom/codemao/nemo/bean/TrendsListInfo;->total:I

    return v0
.end method

.method public isCounted()Z
    .registers 2

    .line 49
    iget-boolean v0, p0, Lcom/codemao/nemo/bean/TrendsListInfo;->counted:Z

    return v0
.end method

.method public setCounted(Z)V
    .registers 2

    .line 53
    iput-boolean p1, p0, Lcom/codemao/nemo/bean/TrendsListInfo;->counted:Z

    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/TrendsInfo;",
            ">;)V"
        }
    .end annotation

    .line 21
    iput-object p1, p0, Lcom/codemao/nemo/bean/TrendsListInfo;->items:Ljava/util/List;

    return-void
.end method

.method public setLimit(I)V
    .registers 2

    .line 37
    iput p1, p0, Lcom/codemao/nemo/bean/TrendsListInfo;->limit:I

    return-void
.end method

.method public setOffset(I)V
    .registers 2

    .line 29
    iput p1, p0, Lcom/codemao/nemo/bean/TrendsListInfo;->offset:I

    return-void
.end method

.method public setTotal(I)V
    .registers 2

    .line 45
    iput p1, p0, Lcom/codemao/nemo/bean/TrendsListInfo;->total:I

    return-void
.end method
