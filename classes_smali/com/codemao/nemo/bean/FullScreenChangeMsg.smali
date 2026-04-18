.class public Lcom/codemao/nemo/bean/FullScreenChangeMsg;
.super Lcom/codemao/nemo/bean/BaseJsonBean;
.source "FullScreenChangeMsg.java"


# instance fields
.field private size:Lcom/codemao/nemo/bean/StageSize;

.field private visible:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    .line 10
    invoke-direct {p0}, Lcom/codemao/nemo/bean/BaseJsonBean;-><init>()V

    .line 11
    iput-boolean p1, p0, Lcom/codemao/nemo/bean/FullScreenChangeMsg;->visible:Z

    return-void
.end method


# virtual methods
.method public getSize()Lcom/codemao/nemo/bean/StageSize;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/codemao/nemo/bean/FullScreenChangeMsg;->size:Lcom/codemao/nemo/bean/StageSize;

    return-object v0
.end method

.method public isVisible()Z
    .registers 2

    .line 15
    iget-boolean v0, p0, Lcom/codemao/nemo/bean/FullScreenChangeMsg;->visible:Z

    return v0
.end method

.method public setSize(Lcom/codemao/nemo/bean/StageSize;)V
    .registers 2

    .line 27
    iput-object p1, p0, Lcom/codemao/nemo/bean/FullScreenChangeMsg;->size:Lcom/codemao/nemo/bean/StageSize;

    return-void
.end method

.method public setVisible(Z)V
    .registers 2

    .line 19
    iput-boolean p1, p0, Lcom/codemao/nemo/bean/FullScreenChangeMsg;->visible:Z

    return-void
.end method
