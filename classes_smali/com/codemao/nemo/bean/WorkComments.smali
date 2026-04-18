.class public Lcom/codemao/nemo/bean/WorkComments;
.super Ljava/lang/Object;
.source "WorkComments.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private counted:Z

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/WorkCommentItem;",
            ">;"
        }
    .end annotation
.end field

.field private limit:I

.field private offset:I

.field private page_total:I

.field private total:I

.field private total_reply:I


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
            "Lcom/codemao/nemo/bean/WorkCommentItem;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkComments;->items:Ljava/util/List;

    return-object v0
.end method

.method public getLimit()I
    .registers 2

    .line 48
    iget v0, p0, Lcom/codemao/nemo/bean/WorkComments;->limit:I

    return v0
.end method

.method public getOffset()I
    .registers 2

    .line 40
    iget v0, p0, Lcom/codemao/nemo/bean/WorkComments;->offset:I

    return v0
.end method

.method public getPage_total()I
    .registers 2

    .line 24
    iget v0, p0, Lcom/codemao/nemo/bean/WorkComments;->page_total:I

    return v0
.end method

.method public getTotal()I
    .registers 2

    .line 56
    iget v0, p0, Lcom/codemao/nemo/bean/WorkComments;->total:I

    return v0
.end method

.method public getTotal_reply()I
    .registers 2

    .line 64
    iget v0, p0, Lcom/codemao/nemo/bean/WorkComments;->total_reply:I

    return v0
.end method

.method public isCounted()Z
    .registers 2

    .line 16
    iget-boolean v0, p0, Lcom/codemao/nemo/bean/WorkComments;->counted:Z

    return v0
.end method

.method public setCounted(Z)V
    .registers 2

    .line 20
    iput-boolean p1, p0, Lcom/codemao/nemo/bean/WorkComments;->counted:Z

    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/WorkCommentItem;",
            ">;)V"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcom/codemao/nemo/bean/WorkComments;->items:Ljava/util/List;

    return-void
.end method

.method public setLimit(I)V
    .registers 2

    .line 52
    iput p1, p0, Lcom/codemao/nemo/bean/WorkComments;->limit:I

    return-void
.end method

.method public setOffset(I)V
    .registers 2

    .line 44
    iput p1, p0, Lcom/codemao/nemo/bean/WorkComments;->offset:I

    return-void
.end method

.method public setPage_total(I)V
    .registers 2

    .line 28
    iput p1, p0, Lcom/codemao/nemo/bean/WorkComments;->page_total:I

    return-void
.end method

.method public setTotal(I)V
    .registers 2

    .line 60
    iput p1, p0, Lcom/codemao/nemo/bean/WorkComments;->total:I

    return-void
.end method

.method public setTotal_reply(I)V
    .registers 2

    .line 68
    iput p1, p0, Lcom/codemao/nemo/bean/WorkComments;->total_reply:I

    return-void
.end method
