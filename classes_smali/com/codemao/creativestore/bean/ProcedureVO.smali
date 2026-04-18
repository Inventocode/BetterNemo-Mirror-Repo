.class public Lcom/codemao/creativestore/bean/ProcedureVO;
.super Ljava/lang/Object;
.source "ProcedureVO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private blocksXML:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private params:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBlocksXML()Ljava/lang/String;
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/codemao/creativestore/bean/ProcedureVO;->blocksXML:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/codemao/creativestore/bean/ProcedureVO;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/codemao/creativestore/bean/ProcedureVO;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()Ljava/util/Vector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/codemao/creativestore/bean/ProcedureVO;->params:Ljava/util/Vector;

    return-object v0
.end method

.method public setBlocksXML(Ljava/lang/String;)V
    .registers 2

    .line 48
    iput-object p1, p0, Lcom/codemao/creativestore/bean/ProcedureVO;->blocksXML:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/codemao/creativestore/bean/ProcedureVO;->id:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/codemao/creativestore/bean/ProcedureVO;->name:Ljava/lang/String;

    return-void
.end method

.method public setParams(Ljava/util/Vector;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/codemao/creativestore/bean/ProcedureVO;->params:Ljava/util/Vector;

    return-void
.end method
