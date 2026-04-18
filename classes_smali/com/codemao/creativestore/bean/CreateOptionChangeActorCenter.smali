.class public Lcom/codemao/creativestore/bean/CreateOptionChangeActorCenter;
.super Ljava/lang/Object;
.source "CreateOptionChangeActorCenter.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private newActor:Lcom/codemao/creativestore/bean/ActorVO;

.field private newCenterPoint:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/codemao/creativestore/bean/CenterPoint;",
            ">;"
        }
    .end annotation
.end field

.field private oldActor:Lcom/codemao/creativestore/bean/ActorVO;

.field private oldCenterPoint:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/codemao/creativestore/bean/CenterPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/codemao/creativestore/bean/ActorVO;Lcom/codemao/creativestore/bean/ActorVO;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativestore/bean/ActorVO;",
            "Lcom/codemao/creativestore/bean/ActorVO;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/codemao/creativestore/bean/CenterPoint;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/codemao/creativestore/bean/CenterPoint;",
            ">;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/codemao/creativestore/bean/CreateOptionChangeActorCenter;->oldActor:Lcom/codemao/creativestore/bean/ActorVO;

    .line 14
    iput-object p2, p0, Lcom/codemao/creativestore/bean/CreateOptionChangeActorCenter;->newActor:Lcom/codemao/creativestore/bean/ActorVO;

    .line 15
    iput-object p3, p0, Lcom/codemao/creativestore/bean/CreateOptionChangeActorCenter;->oldCenterPoint:Ljava/util/HashMap;

    .line 16
    iput-object p4, p0, Lcom/codemao/creativestore/bean/CreateOptionChangeActorCenter;->newCenterPoint:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getNewActor()Lcom/codemao/creativestore/bean/ActorVO;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/codemao/creativestore/bean/CreateOptionChangeActorCenter;->newActor:Lcom/codemao/creativestore/bean/ActorVO;

    return-object v0
.end method

.method public getNewCenterPoint()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/codemao/creativestore/bean/CenterPoint;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/codemao/creativestore/bean/CreateOptionChangeActorCenter;->newCenterPoint:Ljava/util/HashMap;

    return-object v0
.end method

.method public getOldActor()Lcom/codemao/creativestore/bean/ActorVO;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/codemao/creativestore/bean/CreateOptionChangeActorCenter;->oldActor:Lcom/codemao/creativestore/bean/ActorVO;

    return-object v0
.end method

.method public getOldCenterPoint()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/codemao/creativestore/bean/CenterPoint;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/codemao/creativestore/bean/CreateOptionChangeActorCenter;->oldCenterPoint:Ljava/util/HashMap;

    return-object v0
.end method

.method public setNewActor(Lcom/codemao/creativestore/bean/ActorVO;)V
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/codemao/creativestore/bean/CreateOptionChangeActorCenter;->newActor:Lcom/codemao/creativestore/bean/ActorVO;

    return-void
.end method

.method public setNewCenterPoint(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/codemao/creativestore/bean/CenterPoint;",
            ">;)V"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/codemao/creativestore/bean/CreateOptionChangeActorCenter;->newCenterPoint:Ljava/util/HashMap;

    return-void
.end method

.method public setOldActor(Lcom/codemao/creativestore/bean/ActorVO;)V
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/codemao/creativestore/bean/CreateOptionChangeActorCenter;->oldActor:Lcom/codemao/creativestore/bean/ActorVO;

    return-void
.end method

.method public setOldCenterPoint(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/codemao/creativestore/bean/CenterPoint;",
            ">;)V"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/codemao/creativestore/bean/CreateOptionChangeActorCenter;->oldCenterPoint:Ljava/util/HashMap;

    return-void
.end method
