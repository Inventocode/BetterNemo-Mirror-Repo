.class public Lcom/codemao/creativestore/bean/CreateOptionActorRename;
.super Ljava/lang/Object;
.source "CreateOptionActorRename.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private actorVO:Lcom/codemao/creativestore/bean/ActorVO;

.field private newName:Ljava/lang/String;

.field private preName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/codemao/creativestore/bean/ActorVO;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/codemao/creativestore/bean/CreateOptionActorRename;->actorVO:Lcom/codemao/creativestore/bean/ActorVO;

    .line 12
    iput-object p2, p0, Lcom/codemao/creativestore/bean/CreateOptionActorRename;->preName:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/codemao/creativestore/bean/CreateOptionActorRename;->newName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getActorVO()Lcom/codemao/creativestore/bean/ActorVO;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/codemao/creativestore/bean/CreateOptionActorRename;->actorVO:Lcom/codemao/creativestore/bean/ActorVO;

    return-object v0
.end method

.method public getNewName()Ljava/lang/String;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/codemao/creativestore/bean/CreateOptionActorRename;->newName:Ljava/lang/String;

    return-object v0
.end method

.method public getPreName()Ljava/lang/String;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/codemao/creativestore/bean/CreateOptionActorRename;->preName:Ljava/lang/String;

    return-object v0
.end method

.method public setActorVO(Lcom/codemao/creativestore/bean/ActorVO;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/codemao/creativestore/bean/CreateOptionActorRename;->actorVO:Lcom/codemao/creativestore/bean/ActorVO;

    return-void
.end method

.method public setNewName(Ljava/lang/String;)V
    .registers 2

    .line 37
    iput-object p1, p0, Lcom/codemao/creativestore/bean/CreateOptionActorRename;->newName:Ljava/lang/String;

    return-void
.end method

.method public setPreName(Ljava/lang/String;)V
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/codemao/creativestore/bean/CreateOptionActorRename;->preName:Ljava/lang/String;

    return-void
.end method
