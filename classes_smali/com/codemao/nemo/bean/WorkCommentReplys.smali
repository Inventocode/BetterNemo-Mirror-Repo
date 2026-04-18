.class public Lcom/codemao/nemo/bean/WorkCommentReplys;
.super Ljava/lang/Object;
.source "WorkCommentReplys.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private counted:Z

.field private head_item:Lcom/codemao/nemo/bean/ReplyCommentInfo;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/WorkReplyItem;",
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
.method public getHead_item()Lcom/codemao/nemo/bean/ReplyCommentInfo;
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkCommentReplys;->head_item:Lcom/codemao/nemo/bean/ReplyCommentInfo;

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/WorkReplyItem;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkCommentReplys;->items:Ljava/util/List;

    return-object v0
.end method

.method public getLimit()I
    .registers 2

    .line 39
    iget v0, p0, Lcom/codemao/nemo/bean/WorkCommentReplys;->limit:I

    return v0
.end method

.method public getOffset()I
    .registers 2

    .line 31
    iget v0, p0, Lcom/codemao/nemo/bean/WorkCommentReplys;->offset:I

    return v0
.end method

.method public getTotal()I
    .registers 2

    .line 47
    iget v0, p0, Lcom/codemao/nemo/bean/WorkCommentReplys;->total:I

    return v0
.end method

.method public isCounted()Z
    .registers 2

    .line 55
    iget-boolean v0, p0, Lcom/codemao/nemo/bean/WorkCommentReplys;->counted:Z

    return v0
.end method

.method public setCounted(Z)V
    .registers 2

    .line 59
    iput-boolean p1, p0, Lcom/codemao/nemo/bean/WorkCommentReplys;->counted:Z

    return-void
.end method

.method public setHead_item(Lcom/codemao/nemo/bean/ReplyCommentInfo;)V
    .registers 2

    .line 19
    iput-object p1, p0, Lcom/codemao/nemo/bean/WorkCommentReplys;->head_item:Lcom/codemao/nemo/bean/ReplyCommentInfo;

    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/WorkReplyItem;",
            ">;)V"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lcom/codemao/nemo/bean/WorkCommentReplys;->items:Ljava/util/List;

    return-void
.end method

.method public setLimit(I)V
    .registers 2

    .line 43
    iput p1, p0, Lcom/codemao/nemo/bean/WorkCommentReplys;->limit:I

    return-void
.end method

.method public setOffset(I)V
    .registers 2

    .line 35
    iput p1, p0, Lcom/codemao/nemo/bean/WorkCommentReplys;->offset:I

    return-void
.end method

.method public setTotal(I)V
    .registers 2

    .line 51
    iput p1, p0, Lcom/codemao/nemo/bean/WorkCommentReplys;->total:I

    return-void
.end method
