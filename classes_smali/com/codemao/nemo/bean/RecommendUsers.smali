.class public Lcom/codemao/nemo/bean/RecommendUsers;
.super Ljava/lang/Object;
.source "RecommendUsers.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private counted:Z

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/RecommendUserInfo;",
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
            "Lcom/codemao/nemo/bean/RecommendUserInfo;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/codemao/nemo/bean/RecommendUsers;->items:Ljava/util/List;

    return-object v0
.end method

.method public getLimit()I
    .registers 2

    .line 30
    iget v0, p0, Lcom/codemao/nemo/bean/RecommendUsers;->limit:I

    return v0
.end method

.method public getOffset()I
    .registers 2

    .line 22
    iget v0, p0, Lcom/codemao/nemo/bean/RecommendUsers;->offset:I

    return v0
.end method

.method public getTotal()I
    .registers 2

    .line 38
    iget v0, p0, Lcom/codemao/nemo/bean/RecommendUsers;->total:I

    return v0
.end method

.method public isCounted()Z
    .registers 2

    .line 46
    iget-boolean v0, p0, Lcom/codemao/nemo/bean/RecommendUsers;->counted:Z

    return v0
.end method

.method public setCounted(Z)V
    .registers 2

    .line 50
    iput-boolean p1, p0, Lcom/codemao/nemo/bean/RecommendUsers;->counted:Z

    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/RecommendUserInfo;",
            ">;)V"
        }
    .end annotation

    .line 18
    iput-object p1, p0, Lcom/codemao/nemo/bean/RecommendUsers;->items:Ljava/util/List;

    return-void
.end method

.method public setLimit(I)V
    .registers 2

    .line 34
    iput p1, p0, Lcom/codemao/nemo/bean/RecommendUsers;->limit:I

    return-void
.end method

.method public setOffset(I)V
    .registers 2

    .line 26
    iput p1, p0, Lcom/codemao/nemo/bean/RecommendUsers;->offset:I

    return-void
.end method

.method public setTotal(I)V
    .registers 2

    .line 42
    iput p1, p0, Lcom/codemao/nemo/bean/RecommendUsers;->total:I

    return-void
.end method
