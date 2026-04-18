.class public Lcom/codemao/creativestore/bean/CreateOptionActorSelect;
.super Ljava/lang/Object;
.source "CreateOptionActorSelect.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private newActor:Lcom/codemao/creativestore/bean/ActorVO;

.field private oldActor:Lcom/codemao/creativestore/bean/ActorVO;


# direct methods
.method public constructor <init>(Lcom/codemao/creativestore/bean/ActorVO;Lcom/codemao/creativestore/bean/ActorVO;)V
    .registers 3

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/codemao/creativestore/bean/CreateOptionActorSelect;->oldActor:Lcom/codemao/creativestore/bean/ActorVO;

    .line 11
    iput-object p2, p0, Lcom/codemao/creativestore/bean/CreateOptionActorSelect;->newActor:Lcom/codemao/creativestore/bean/ActorVO;

    return-void
.end method


# virtual methods
.method public getNewActor()Lcom/codemao/creativestore/bean/ActorVO;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/codemao/creativestore/bean/CreateOptionActorSelect;->newActor:Lcom/codemao/creativestore/bean/ActorVO;

    return-object v0
.end method

.method public getOldActor()Lcom/codemao/creativestore/bean/ActorVO;
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/codemao/creativestore/bean/CreateOptionActorSelect;->oldActor:Lcom/codemao/creativestore/bean/ActorVO;

    return-object v0
.end method

.method public setNewActor(Lcom/codemao/creativestore/bean/ActorVO;)V
    .registers 2

    .line 27
    iput-object p1, p0, Lcom/codemao/creativestore/bean/CreateOptionActorSelect;->newActor:Lcom/codemao/creativestore/bean/ActorVO;

    return-void
.end method

.method public setOldActor(Lcom/codemao/creativestore/bean/ActorVO;)V
    .registers 2

    .line 19
    iput-object p1, p0, Lcom/codemao/creativestore/bean/CreateOptionActorSelect;->oldActor:Lcom/codemao/creativestore/bean/ActorVO;

    return-void
.end method
