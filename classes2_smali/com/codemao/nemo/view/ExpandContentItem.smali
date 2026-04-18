.class public abstract Lcom/codemao/nemo/view/ExpandContentItem;
.super Ljava/lang/Object;
.source "ExpandContentItem.java"


# instance fields
.field public expandHeight:I

.field public isCaculated:Z

.field public isExpand:Z

.field public isOverMax:Z

.field public shrinkHeight:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/codemao/nemo/view/ExpandContentItem;->isOverMax:Z

    .line 5
    iput-boolean v0, p0, Lcom/codemao/nemo/view/ExpandContentItem;->isExpand:Z

    .line 6
    iput-boolean v0, p0, Lcom/codemao/nemo/view/ExpandContentItem;->isCaculated:Z

    return-void
.end method


# virtual methods
.method public abstract getExpandContent()Ljava/lang/CharSequence;
.end method

.method public getExpandHeight()I
    .registers 2

    .line 13
    iget v0, p0, Lcom/codemao/nemo/view/ExpandContentItem;->expandHeight:I

    return v0
.end method

.method public getShrinkHeight()I
    .registers 2

    .line 21
    iget v0, p0, Lcom/codemao/nemo/view/ExpandContentItem;->shrinkHeight:I

    return v0
.end method

.method public isCaculated()Z
    .registers 2

    .line 29
    iget-boolean v0, p0, Lcom/codemao/nemo/view/ExpandContentItem;->isCaculated:Z

    return v0
.end method

.method public isExpand()Z
    .registers 2

    .line 45
    iget-boolean v0, p0, Lcom/codemao/nemo/view/ExpandContentItem;->isExpand:Z

    return v0
.end method

.method public isOverMax()Z
    .registers 2

    .line 37
    iget-boolean v0, p0, Lcom/codemao/nemo/view/ExpandContentItem;->isOverMax:Z

    return v0
.end method

.method public setCaculated(Z)V
    .registers 2

    .line 33
    iput-boolean p1, p0, Lcom/codemao/nemo/view/ExpandContentItem;->isCaculated:Z

    return-void
.end method

.method public setExpand(Z)V
    .registers 2

    .line 49
    iput-boolean p1, p0, Lcom/codemao/nemo/view/ExpandContentItem;->isExpand:Z

    return-void
.end method

.method public setExpandHeight(I)V
    .registers 2

    .line 17
    iput p1, p0, Lcom/codemao/nemo/view/ExpandContentItem;->expandHeight:I

    return-void
.end method

.method public setOverMax(Z)V
    .registers 2

    .line 41
    iput-boolean p1, p0, Lcom/codemao/nemo/view/ExpandContentItem;->isOverMax:Z

    return-void
.end method

.method public setShrinkHeight(I)V
    .registers 2

    .line 25
    iput p1, p0, Lcom/codemao/nemo/view/ExpandContentItem;->shrinkHeight:I

    return-void
.end method
