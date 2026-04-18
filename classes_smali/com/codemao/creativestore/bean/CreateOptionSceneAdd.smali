.class public Lcom/codemao/creativestore/bean/CreateOptionSceneAdd;
.super Ljava/lang/Object;
.source "CreateOptionSceneAdd.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private lastPosition:I

.field private postion:I

.field private sceneVO:Lcom/codemao/creativestore/bean/SceneVO;


# direct methods
.method public constructor <init>(IILcom/codemao/creativestore/bean/SceneVO;)V
    .registers 4

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/codemao/creativestore/bean/CreateOptionSceneAdd;->lastPosition:I

    .line 20
    iput p2, p0, Lcom/codemao/creativestore/bean/CreateOptionSceneAdd;->postion:I

    .line 21
    iput-object p3, p0, Lcom/codemao/creativestore/bean/CreateOptionSceneAdd;->sceneVO:Lcom/codemao/creativestore/bean/SceneVO;

    return-void
.end method


# virtual methods
.method public getLastPosition()I
    .registers 2

    .line 11
    iget v0, p0, Lcom/codemao/creativestore/bean/CreateOptionSceneAdd;->lastPosition:I

    return v0
.end method

.method public getPostion()I
    .registers 2

    .line 34
    iget v0, p0, Lcom/codemao/creativestore/bean/CreateOptionSceneAdd;->postion:I

    return v0
.end method

.method public getSceneVO()Lcom/codemao/creativestore/bean/SceneVO;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/codemao/creativestore/bean/CreateOptionSceneAdd;->sceneVO:Lcom/codemao/creativestore/bean/SceneVO;

    return-object v0
.end method

.method public setLastPosition(I)V
    .registers 2

    .line 15
    iput p1, p0, Lcom/codemao/creativestore/bean/CreateOptionSceneAdd;->lastPosition:I

    return-void
.end method

.method public setPostion(I)V
    .registers 2

    .line 38
    iput p1, p0, Lcom/codemao/creativestore/bean/CreateOptionSceneAdd;->postion:I

    return-void
.end method

.method public setSceneVO(Lcom/codemao/creativestore/bean/SceneVO;)V
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/codemao/creativestore/bean/CreateOptionSceneAdd;->sceneVO:Lcom/codemao/creativestore/bean/SceneVO;

    return-void
.end method
