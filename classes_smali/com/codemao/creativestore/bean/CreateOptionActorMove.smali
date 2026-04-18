.class public Lcom/codemao/creativestore/bean/CreateOptionActorMove;
.super Ljava/lang/Object;
.source "CreateOptionActorMove.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private actorId:Ljava/lang/String;

.field private x:D

.field private y:D


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActorId()Ljava/lang/String;
    .registers 2

    .line 12
    iget-object v0, p0, Lcom/codemao/creativestore/bean/CreateOptionActorMove;->actorId:Ljava/lang/String;

    return-object v0
.end method

.method public getX()D
    .registers 3

    .line 20
    iget-wide v0, p0, Lcom/codemao/creativestore/bean/CreateOptionActorMove;->x:D

    return-wide v0
.end method

.method public getY()D
    .registers 3

    .line 28
    iget-wide v0, p0, Lcom/codemao/creativestore/bean/CreateOptionActorMove;->y:D

    return-wide v0
.end method

.method public setActorId(Ljava/lang/String;)V
    .registers 2

    .line 16
    iput-object p1, p0, Lcom/codemao/creativestore/bean/CreateOptionActorMove;->actorId:Ljava/lang/String;

    return-void
.end method

.method public setX(D)V
    .registers 3

    .line 24
    iput-wide p1, p0, Lcom/codemao/creativestore/bean/CreateOptionActorMove;->x:D

    return-void
.end method

.method public setY(D)V
    .registers 3

    .line 32
    iput-wide p1, p0, Lcom/codemao/creativestore/bean/CreateOptionActorMove;->y:D

    return-void
.end method
