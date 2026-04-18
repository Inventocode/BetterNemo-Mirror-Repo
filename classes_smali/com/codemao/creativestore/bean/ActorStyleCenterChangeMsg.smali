.class public Lcom/codemao/creativestore/bean/ActorStyleCenterChangeMsg;
.super Lcom/codemao/creativestore/bean/BaseJsonBean;
.source "ActorStyleCenterChangeMsg.java"


# instance fields
.field private actor_id:Ljava/lang/String;

.field private position:Lcom/codemao/creativestore/bean/CenterPoint;

.field private styles_center_point:Ljava/util/HashMap;
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
.method public constructor <init>(Ljava/lang/String;Ljava/util/HashMap;Lcom/codemao/creativestore/bean/CenterPoint;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/codemao/creativestore/bean/CenterPoint;",
            ">;",
            "Lcom/codemao/creativestore/bean/CenterPoint;",
            ")V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Lcom/codemao/creativestore/bean/BaseJsonBean;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/codemao/creativestore/bean/ActorStyleCenterChangeMsg;->actor_id:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/codemao/creativestore/bean/ActorStyleCenterChangeMsg;->styles_center_point:Ljava/util/HashMap;

    .line 15
    iput-object p3, p0, Lcom/codemao/creativestore/bean/ActorStyleCenterChangeMsg;->position:Lcom/codemao/creativestore/bean/CenterPoint;

    return-void
.end method


# virtual methods
.method public getActor_id()Ljava/lang/String;
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/codemao/creativestore/bean/ActorStyleCenterChangeMsg;->actor_id:Ljava/lang/String;

    return-object v0
.end method

.method public getCenterPoint()Ljava/util/HashMap;
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
    iget-object v0, p0, Lcom/codemao/creativestore/bean/ActorStyleCenterChangeMsg;->styles_center_point:Ljava/util/HashMap;

    return-object v0
.end method

.method public getPosition()Lcom/codemao/creativestore/bean/CenterPoint;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/codemao/creativestore/bean/ActorStyleCenterChangeMsg;->position:Lcom/codemao/creativestore/bean/CenterPoint;

    return-object v0
.end method

.method public setActor_id(Ljava/lang/String;)V
    .registers 2

    .line 23
    iput-object p1, p0, Lcom/codemao/creativestore/bean/ActorStyleCenterChangeMsg;->actor_id:Ljava/lang/String;

    return-void
.end method

.method public setCenterPoint(Ljava/util/HashMap;)V
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
    iput-object p1, p0, Lcom/codemao/creativestore/bean/ActorStyleCenterChangeMsg;->styles_center_point:Ljava/util/HashMap;

    return-void
.end method

.method public setPosition(Lcom/codemao/creativestore/bean/CenterPoint;)V
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/codemao/creativestore/bean/ActorStyleCenterChangeMsg;->position:Lcom/codemao/creativestore/bean/CenterPoint;

    return-void
.end method
