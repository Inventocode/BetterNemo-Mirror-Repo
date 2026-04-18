.class public Lcom/codemao/creativestore/bean/CreateOptionActorPropertyChange;
.super Ljava/lang/Object;
.source "CreateOptionActorPropertyChange.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private newActorV0:Lcom/codemao/creativestore/bean/ActorVO;

.field private newCenter:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/codemao/creativestore/bean/CenterPoint;",
            ">;"
        }
    .end annotation
.end field

.field private oldActorV0:Lcom/codemao/creativestore/bean/ActorVO;

.field private oldCenter:Ljava/util/HashMap;
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
.method public constructor <init>(Lcom/codemao/creativestore/bean/ActorVO;Lcom/codemao/creativestore/bean/ActorVO;)V
    .registers 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/codemao/creativestore/bean/CreateOptionActorPropertyChange;->oldActorV0:Lcom/codemao/creativestore/bean/ActorVO;

    .line 16
    iput-object p2, p0, Lcom/codemao/creativestore/bean/CreateOptionActorPropertyChange;->newActorV0:Lcom/codemao/creativestore/bean/ActorVO;

    return-void
.end method

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

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/codemao/creativestore/bean/CreateOptionActorPropertyChange;->oldActorV0:Lcom/codemao/creativestore/bean/ActorVO;

    .line 21
    iput-object p2, p0, Lcom/codemao/creativestore/bean/CreateOptionActorPropertyChange;->newActorV0:Lcom/codemao/creativestore/bean/ActorVO;

    .line 22
    iput-object p3, p0, Lcom/codemao/creativestore/bean/CreateOptionActorPropertyChange;->oldCenter:Ljava/util/HashMap;

    .line 23
    iput-object p4, p0, Lcom/codemao/creativestore/bean/CreateOptionActorPropertyChange;->newCenter:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getNewActorV0()Lcom/codemao/creativestore/bean/ActorVO;
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/codemao/creativestore/bean/CreateOptionActorPropertyChange;->newActorV0:Lcom/codemao/creativestore/bean/ActorVO;

    return-object v0
.end method

.method public getNewCenter()Ljava/util/HashMap;
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

    .line 35
    iget-object v0, p0, Lcom/codemao/creativestore/bean/CreateOptionActorPropertyChange;->newCenter:Ljava/util/HashMap;

    return-object v0
.end method

.method public getOldActorV0()Lcom/codemao/creativestore/bean/ActorVO;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/codemao/creativestore/bean/CreateOptionActorPropertyChange;->oldActorV0:Lcom/codemao/creativestore/bean/ActorVO;

    return-object v0
.end method

.method public getOldCenter()Ljava/util/HashMap;
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

    .line 27
    iget-object v0, p0, Lcom/codemao/creativestore/bean/CreateOptionActorPropertyChange;->oldCenter:Ljava/util/HashMap;

    return-object v0
.end method

.method public setNewActorV0(Lcom/codemao/creativestore/bean/ActorVO;)V
    .registers 2

    .line 55
    iput-object p1, p0, Lcom/codemao/creativestore/bean/CreateOptionActorPropertyChange;->newActorV0:Lcom/codemao/creativestore/bean/ActorVO;

    return-void
.end method

.method public setNewCenter(Ljava/util/HashMap;)V
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

    .line 39
    iput-object p1, p0, Lcom/codemao/creativestore/bean/CreateOptionActorPropertyChange;->newCenter:Ljava/util/HashMap;

    return-void
.end method

.method public setOldActorV0(Lcom/codemao/creativestore/bean/ActorVO;)V
    .registers 2

    .line 47
    iput-object p1, p0, Lcom/codemao/creativestore/bean/CreateOptionActorPropertyChange;->oldActorV0:Lcom/codemao/creativestore/bean/ActorVO;

    return-void
.end method

.method public setOldCenter(Ljava/util/HashMap;)V
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

    .line 31
    iput-object p1, p0, Lcom/codemao/creativestore/bean/CreateOptionActorPropertyChange;->oldCenter:Ljava/util/HashMap;

    return-void
.end method
