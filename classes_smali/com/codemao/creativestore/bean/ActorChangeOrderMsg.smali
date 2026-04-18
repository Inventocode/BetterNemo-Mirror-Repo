.class public Lcom/codemao/creativestore/bean/ActorChangeOrderMsg;
.super Lcom/codemao/creativestore/bean/BaseJsonBean;
.source "ActorChangeOrderMsg.java"


# instance fields
.field private actor_ids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private scene_id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 12
    invoke-direct {p0}, Lcom/codemao/creativestore/bean/BaseJsonBean;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/codemao/creativestore/bean/ActorChangeOrderMsg;->scene_id:Ljava/lang/String;

    .line 14
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/codemao/creativestore/bean/ActorChangeOrderMsg;->actor_ids:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getActor_ids()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/codemao/creativestore/bean/ActorChangeOrderMsg;->actor_ids:Ljava/util/List;

    return-object v0
.end method

.method public getScene_id()Ljava/lang/String;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/codemao/creativestore/bean/ActorChangeOrderMsg;->scene_id:Ljava/lang/String;

    return-object v0
.end method

.method public setActor_ids(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/codemao/creativestore/bean/ActorChangeOrderMsg;->actor_ids:Ljava/util/List;

    return-void
.end method

.method public setScene_id(Ljava/lang/String;)V
    .registers 2

    .line 22
    iput-object p1, p0, Lcom/codemao/creativestore/bean/ActorChangeOrderMsg;->scene_id:Ljava/lang/String;

    return-void
.end method
