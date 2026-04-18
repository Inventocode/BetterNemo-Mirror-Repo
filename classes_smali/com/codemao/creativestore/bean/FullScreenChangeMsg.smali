.class public Lcom/codemao/creativestore/bean/FullScreenChangeMsg;
.super Lcom/codemao/creativestore/bean/BaseJsonBean;
.source "FullScreenChangeMsg.java"


# instance fields
.field private visible:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    .line 10
    invoke-direct {p0}, Lcom/codemao/creativestore/bean/BaseJsonBean;-><init>()V

    .line 11
    iput-boolean p1, p0, Lcom/codemao/creativestore/bean/FullScreenChangeMsg;->visible:Z

    return-void
.end method


# virtual methods
.method public isVisible()Z
    .registers 2

    .line 15
    iget-boolean v0, p0, Lcom/codemao/creativestore/bean/FullScreenChangeMsg;->visible:Z

    return v0
.end method

.method public setVisible(Z)V
    .registers 2

    .line 19
    iput-boolean p1, p0, Lcom/codemao/creativestore/bean/FullScreenChangeMsg;->visible:Z

    return-void
.end method
