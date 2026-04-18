.class public Lcom/codemao/creativestore/bean/BlockUpdateMsg;
.super Lcom/codemao/creativestore/bean/BaseJsonBean;
.source "BlockUpdateMsg.java"


# instance fields
.field private can_redo:Z

.field private can_undo:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Lcom/codemao/creativestore/bean/BaseJsonBean;-><init>()V

    return-void
.end method


# virtual methods
.method public isCan_redo()Z
    .registers 2

    .line 18
    iget-boolean v0, p0, Lcom/codemao/creativestore/bean/BlockUpdateMsg;->can_redo:Z

    return v0
.end method

.method public isCan_undo()Z
    .registers 2

    .line 10
    iget-boolean v0, p0, Lcom/codemao/creativestore/bean/BlockUpdateMsg;->can_undo:Z

    return v0
.end method

.method public setCan_redo(Z)V
    .registers 2

    .line 22
    iput-boolean p1, p0, Lcom/codemao/creativestore/bean/BlockUpdateMsg;->can_redo:Z

    return-void
.end method

.method public setCan_undo(Z)V
    .registers 2

    .line 14
    iput-boolean p1, p0, Lcom/codemao/creativestore/bean/BlockUpdateMsg;->can_undo:Z

    return-void
.end method
