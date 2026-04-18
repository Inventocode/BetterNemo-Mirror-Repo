.class public Lcom/codemao/creativestore/bean/CreateOptionActorStyleChange;
.super Ljava/lang/Object;
.source "CreateOptionActorStyleChange.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private newActorV0:Lcom/codemao/creativestore/bean/ActorVO;

.field private oldActorV0:Lcom/codemao/creativestore/bean/ActorVO;


# direct methods
.method public constructor <init>(Lcom/codemao/creativestore/bean/ActorVO;Lcom/codemao/creativestore/bean/ActorVO;)V
    .registers 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/codemao/creativestore/bean/CreateOptionActorStyleChange;->oldActorV0:Lcom/codemao/creativestore/bean/ActorVO;

    .line 12
    iput-object p2, p0, Lcom/codemao/creativestore/bean/CreateOptionActorStyleChange;->newActorV0:Lcom/codemao/creativestore/bean/ActorVO;

    return-void
.end method


# virtual methods
.method public getNewActorV0()Lcom/codemao/creativestore/bean/ActorVO;
    .registers 2

    .line 24
    iget-object v0, p0, Lcom/codemao/creativestore/bean/CreateOptionActorStyleChange;->newActorV0:Lcom/codemao/creativestore/bean/ActorVO;

    return-object v0
.end method

.method public getOldActorV0()Lcom/codemao/creativestore/bean/ActorVO;
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/codemao/creativestore/bean/CreateOptionActorStyleChange;->oldActorV0:Lcom/codemao/creativestore/bean/ActorVO;

    return-object v0
.end method

.method public setNewActorV0(Lcom/codemao/creativestore/bean/ActorVO;)V
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/codemao/creativestore/bean/CreateOptionActorStyleChange;->newActorV0:Lcom/codemao/creativestore/bean/ActorVO;

    return-void
.end method

.method public setOldActorV0(Lcom/codemao/creativestore/bean/ActorVO;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/codemao/creativestore/bean/CreateOptionActorStyleChange;->oldActorV0:Lcom/codemao/creativestore/bean/ActorVO;

    return-void
.end method
