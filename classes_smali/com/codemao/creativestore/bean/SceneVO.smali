.class public Lcom/codemao/creativestore/bean/SceneVO;
.super Ljava/lang/Object;
.source "SceneVO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private actors:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blocksXML:Ljava/lang/String;

.field private transient currentActorId:Ljava/lang/String;

.field private current_style_id:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private scale:Ljava/lang/String;

.field private styles:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private visible:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActors()Ljava/util/Vector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/codemao/creativestore/bean/SceneVO;->actors:Ljava/util/Vector;

    return-object v0
.end method

.method public getBackGroudInfo()Lcom/codemao/creativestore/bean/ActorVO;
    .registers 4

    .line 93
    new-instance v0, Lcom/codemao/creativestore/bean/ActorVO;

    invoke-direct {v0}, Lcom/codemao/creativestore/bean/ActorVO;-><init>()V

    const/4 v1, 0x1

    .line 94
    iput-boolean v1, v0, Lcom/codemao/creativestore/bean/ActorVO;->isBackground:Z

    .line 95
    iget-boolean v1, p0, Lcom/codemao/creativestore/bean/SceneVO;->visible:Z

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/ActorVO;->setVisible(Z)V

    .line 96
    iget-object v1, p0, Lcom/codemao/creativestore/bean/SceneVO;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/ActorVO;->setName(Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lcom/codemao/creativestore/bean/SceneVO;->blocksXML:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/ActorVO;->setBlocksXML(Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/codemao/creativestore/bean/SceneVO;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/ActorVO;->setId(Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/codemao/creativestore/bean/SceneVO;->styles:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/ActorVO;->setStyles(Ljava/util/Vector;)V

    .line 100
    iget-object v1, p0, Lcom/codemao/creativestore/bean/SceneVO;->current_style_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/ActorVO;->setCurrent_style_id(Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    .line 101
    invoke-virtual {v0, v1, v2}, Lcom/codemao/creativestore/bean/ActorVO;->setRotation(D)V

    .line 102
    invoke-virtual {v0, v1, v2}, Lcom/codemao/creativestore/bean/ActorVO;->setScale(D)V

    .line 103
    invoke-virtual {v0, v1, v2}, Lcom/codemao/creativestore/bean/ActorVO;->setX(D)V

    .line 104
    invoke-virtual {v0, v1, v2}, Lcom/codemao/creativestore/bean/ActorVO;->setY(D)V

    return-object v0
.end method

.method public getBlocksXML()Ljava/lang/String;
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/codemao/creativestore/bean/SceneVO;->blocksXML:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentActorId()Ljava/lang/String;
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/codemao/creativestore/bean/SceneVO;->currentActorId:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrent_style_id()Ljava/lang/String;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/codemao/creativestore/bean/SceneVO;->current_style_id:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/codemao/creativestore/bean/SceneVO;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/codemao/creativestore/bean/SceneVO;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getScale()Ljava/lang/String;
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/codemao/creativestore/bean/SceneVO;->scale:Ljava/lang/String;

    return-object v0
.end method

.method public getStyles()Ljava/util/Vector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/codemao/creativestore/bean/SceneVO;->styles:Ljava/util/Vector;

    return-object v0
.end method

.method public isVisible()Z
    .registers 2

    .line 75
    iget-boolean v0, p0, Lcom/codemao/creativestore/bean/SceneVO;->visible:Z

    return v0
.end method

.method public setActors(Ljava/util/Vector;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/codemao/creativestore/bean/SceneVO;->actors:Ljava/util/Vector;

    return-void
.end method

.method public setBlocksXML(Ljava/lang/String;)V
    .registers 2

    .line 87
    iput-object p1, p0, Lcom/codemao/creativestore/bean/SceneVO;->blocksXML:Ljava/lang/String;

    return-void
.end method

.method public setCurrentActorId(Ljava/lang/String;)V
    .registers 2

    .line 23
    iput-object p1, p0, Lcom/codemao/creativestore/bean/SceneVO;->currentActorId:Ljava/lang/String;

    return-void
.end method

.method public setCurrent_style_id(Ljava/lang/String;)V
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/codemao/creativestore/bean/SceneVO;->current_style_id:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    .line 31
    iput-object p1, p0, Lcom/codemao/creativestore/bean/SceneVO;->id:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 47
    iput-object p1, p0, Lcom/codemao/creativestore/bean/SceneVO;->name:Ljava/lang/String;

    return-void
.end method

.method public setScale(Ljava/lang/String;)V
    .registers 2

    .line 55
    iput-object p1, p0, Lcom/codemao/creativestore/bean/SceneVO;->scale:Ljava/lang/String;

    return-void
.end method

.method public setStyles(Ljava/util/Vector;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/codemao/creativestore/bean/SceneVO;->styles:Ljava/util/Vector;

    return-void
.end method

.method public setVisible(Z)V
    .registers 2

    .line 79
    iput-boolean p1, p0, Lcom/codemao/creativestore/bean/SceneVO;->visible:Z

    return-void
.end method
