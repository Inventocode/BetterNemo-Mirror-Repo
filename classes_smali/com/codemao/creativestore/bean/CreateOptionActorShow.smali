.class public Lcom/codemao/creativestore/bean/CreateOptionActorShow;
.super Ljava/lang/Object;
.source "CreateOptionActorShow.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private actorVO:Lcom/codemao/creativestore/bean/ActorVO;

.field private isVisible:Z


# direct methods
.method public constructor <init>(Lcom/codemao/creativestore/bean/ActorVO;Z)V
    .registers 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/codemao/creativestore/bean/CreateOptionActorShow;->actorVO:Lcom/codemao/creativestore/bean/ActorVO;

    .line 12
    iput-boolean p2, p0, Lcom/codemao/creativestore/bean/CreateOptionActorShow;->isVisible:Z

    return-void
.end method


# virtual methods
.method public getActorVO()Lcom/codemao/creativestore/bean/ActorVO;
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/codemao/creativestore/bean/CreateOptionActorShow;->actorVO:Lcom/codemao/creativestore/bean/ActorVO;

    return-object v0
.end method

.method public isVisible()Z
    .registers 2

    .line 24
    iget-boolean v0, p0, Lcom/codemao/creativestore/bean/CreateOptionActorShow;->isVisible:Z

    return v0
.end method

.method public setActorVO(Lcom/codemao/creativestore/bean/ActorVO;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/codemao/creativestore/bean/CreateOptionActorShow;->actorVO:Lcom/codemao/creativestore/bean/ActorVO;

    return-void
.end method

.method public setVisible(Z)V
    .registers 2

    .line 28
    iput-boolean p1, p0, Lcom/codemao/creativestore/bean/CreateOptionActorShow;->isVisible:Z

    return-void
.end method
