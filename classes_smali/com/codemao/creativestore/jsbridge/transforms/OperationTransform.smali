.class public Lcom/codemao/creativestore/jsbridge/transforms/OperationTransform;
.super Ljava/lang/Object;
.source "OperationTransform.java"


# direct methods
.method public static buildDeleteActorsData(Lcom/codemao/creativestore/bean/ActorVO;Lcom/codemao/creativestore/bean/ActorVO;Ljava/util/List;Ljava/util/List;)Lcom/codemao/creativestore/bean/CreateOptionInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativestore/bean/ActorVO;",
            "Lcom/codemao/creativestore/bean/ActorVO;",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/ActorVO;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/codemao/creativestore/bean/CreateOptionInfo<",
            "Lcom/codemao/creativestore/bean/CreateOptionActorDelete;",
            ">;"
        }
    .end annotation

    .line 28
    new-instance v0, Lcom/codemao/creativestore/bean/CreateOptionActorDelete;

    invoke-direct {v0, p0, p1}, Lcom/codemao/creativestore/bean/CreateOptionActorDelete;-><init>(Lcom/codemao/creativestore/bean/ActorVO;Lcom/codemao/creativestore/bean/ActorVO;)V

    .line 29
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/CreateOptionActorDelete;->getActors()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 30
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/CreateOptionActorDelete;->getIndexs()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 31
    new-instance p0, Lcom/codemao/creativestore/bean/CreateOptionInfo;

    const/4 p1, 0x6

    invoke-direct {p0, p1, v0}, Lcom/codemao/creativestore/bean/CreateOptionInfo;-><init>(ILjava/lang/Object;)V

    return-object p0
.end method
