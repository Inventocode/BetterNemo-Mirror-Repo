.class public Lcom/codemao/creativestore/bean/CreateOptionSceneChoose;
.super Ljava/lang/Object;
.source "CreateOptionSceneChoose.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private lastActorId:Ljava/lang/String;

.field private lastPosition:I

.field private newPosition:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .registers 4

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/codemao/creativestore/bean/CreateOptionSceneChoose;->lastPosition:I

    .line 14
    iput p2, p0, Lcom/codemao/creativestore/bean/CreateOptionSceneChoose;->newPosition:I

    .line 15
    iput-object p3, p0, Lcom/codemao/creativestore/bean/CreateOptionSceneChoose;->lastActorId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLastPosition()I
    .registers 2

    .line 20
    iget v0, p0, Lcom/codemao/creativestore/bean/CreateOptionSceneChoose;->lastPosition:I

    return v0
.end method

.method public getNewPosition()I
    .registers 2

    .line 28
    iget v0, p0, Lcom/codemao/creativestore/bean/CreateOptionSceneChoose;->newPosition:I

    return v0
.end method

.method public setLastPosition(I)V
    .registers 2

    .line 24
    iput p1, p0, Lcom/codemao/creativestore/bean/CreateOptionSceneChoose;->lastPosition:I

    return-void
.end method

.method public setNewPosition(I)V
    .registers 2

    .line 32
    iput p1, p0, Lcom/codemao/creativestore/bean/CreateOptionSceneChoose;->newPosition:I

    return-void
.end method
