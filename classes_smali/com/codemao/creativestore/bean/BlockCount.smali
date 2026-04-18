.class public Lcom/codemao/creativestore/bean/BlockCount;
.super Lcom/codemao/creativestore/bean/BaseJsonBean;
.source "BlockCount.java"


# instance fields
.field private all_block_count:I

.field private visible_block_count:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Lcom/codemao/creativestore/bean/BaseJsonBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getAll_block_count()I
    .registers 2

    .line 22
    iget v0, p0, Lcom/codemao/creativestore/bean/BlockCount;->all_block_count:I

    return v0
.end method

.method public getVisible_block_count()I
    .registers 2

    .line 14
    iget v0, p0, Lcom/codemao/creativestore/bean/BlockCount;->visible_block_count:I

    return v0
.end method

.method public setAll_block_count(I)V
    .registers 2

    .line 26
    iput p1, p0, Lcom/codemao/creativestore/bean/BlockCount;->all_block_count:I

    return-void
.end method

.method public setVisible_block_count(I)V
    .registers 2

    .line 18
    iput p1, p0, Lcom/codemao/creativestore/bean/BlockCount;->visible_block_count:I

    return-void
.end method
