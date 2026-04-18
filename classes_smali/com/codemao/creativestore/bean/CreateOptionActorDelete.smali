.class public Lcom/codemao/creativestore/bean/CreateOptionActorDelete;
.super Ljava/lang/Object;
.source "CreateOptionActorDelete.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private actors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/ActorVO;",
            ">;"
        }
    .end annotation
.end field

.field private indexs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private newActor:Lcom/codemao/creativestore/bean/ActorVO;

.field private oldActor:Lcom/codemao/creativestore/bean/ActorVO;


# direct methods
.method public constructor <init>(Lcom/codemao/creativestore/bean/ActorVO;Lcom/codemao/creativestore/bean/ActorVO;)V
    .registers 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/codemao/creativestore/bean/CreateOptionActorDelete;->newActor:Lcom/codemao/creativestore/bean/ActorVO;

    .line 15
    iput-object p2, p0, Lcom/codemao/creativestore/bean/CreateOptionActorDelete;->oldActor:Lcom/codemao/creativestore/bean/ActorVO;

    .line 16
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/codemao/creativestore/bean/CreateOptionActorDelete;->actors:Ljava/util/List;

    .line 17
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/codemao/creativestore/bean/CreateOptionActorDelete;->indexs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getActors()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/ActorVO;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/codemao/creativestore/bean/CreateOptionActorDelete;->actors:Ljava/util/List;

    return-object v0
.end method

.method public getIndexs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/codemao/creativestore/bean/CreateOptionActorDelete;->indexs:Ljava/util/List;

    return-object v0
.end method

.method public getNewActor()Lcom/codemao/creativestore/bean/ActorVO;
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/codemao/creativestore/bean/CreateOptionActorDelete;->newActor:Lcom/codemao/creativestore/bean/ActorVO;

    return-object v0
.end method

.method public getOldActor()Lcom/codemao/creativestore/bean/ActorVO;
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/codemao/creativestore/bean/CreateOptionActorDelete;->oldActor:Lcom/codemao/creativestore/bean/ActorVO;

    return-object v0
.end method

.method public setNewActor(Lcom/codemao/creativestore/bean/ActorVO;)V
    .registers 2

    .line 25
    iput-object p1, p0, Lcom/codemao/creativestore/bean/CreateOptionActorDelete;->newActor:Lcom/codemao/creativestore/bean/ActorVO;

    return-void
.end method

.method public setOldActor(Lcom/codemao/creativestore/bean/ActorVO;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lcom/codemao/creativestore/bean/CreateOptionActorDelete;->oldActor:Lcom/codemao/creativestore/bean/ActorVO;

    return-void
.end method
