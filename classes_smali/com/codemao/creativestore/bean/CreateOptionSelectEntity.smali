.class public Lcom/codemao/creativestore/bean/CreateOptionSelectEntity;
.super Ljava/lang/Object;
.source "CreateOptionSelectEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private actorId:Ljava/lang/String;

.field private oldActorId:Ljava/lang/String;

.field private oldSceneId:Ljava/lang/String;

.field private sceneId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/codemao/creativestore/bean/CreateOptionSelectEntity;->oldSceneId:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/codemao/creativestore/bean/CreateOptionSelectEntity;->oldActorId:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/codemao/creativestore/bean/CreateOptionSelectEntity;->sceneId:Ljava/lang/String;

    .line 16
    iput-object p4, p0, Lcom/codemao/creativestore/bean/CreateOptionSelectEntity;->actorId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getActorId()Ljava/lang/String;
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/codemao/creativestore/bean/CreateOptionSelectEntity;->actorId:Ljava/lang/String;

    return-object v0
.end method

.method public getOldActorId()Ljava/lang/String;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/codemao/creativestore/bean/CreateOptionSelectEntity;->oldActorId:Ljava/lang/String;

    return-object v0
.end method

.method public getOldSceneId()Ljava/lang/String;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/codemao/creativestore/bean/CreateOptionSelectEntity;->oldSceneId:Ljava/lang/String;

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/codemao/creativestore/bean/CreateOptionSelectEntity;->sceneId:Ljava/lang/String;

    return-object v0
.end method

.method public setActorId(Ljava/lang/String;)V
    .registers 2

    .line 48
    iput-object p1, p0, Lcom/codemao/creativestore/bean/CreateOptionSelectEntity;->actorId:Ljava/lang/String;

    return-void
.end method

.method public setOldActorId(Ljava/lang/String;)V
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/codemao/creativestore/bean/CreateOptionSelectEntity;->oldActorId:Ljava/lang/String;

    return-void
.end method

.method public setOldSceneId(Ljava/lang/String;)V
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/codemao/creativestore/bean/CreateOptionSelectEntity;->oldSceneId:Ljava/lang/String;

    return-void
.end method

.method public setSceneId(Ljava/lang/String;)V
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/codemao/creativestore/bean/CreateOptionSelectEntity;->sceneId:Ljava/lang/String;

    return-void
.end method
