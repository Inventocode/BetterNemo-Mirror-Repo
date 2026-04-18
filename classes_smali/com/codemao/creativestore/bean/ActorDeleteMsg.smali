.class public Lcom/codemao/creativestore/bean/ActorDeleteMsg;
.super Lcom/codemao/creativestore/bean/BaseJsonBean;
.source "ActorDeleteMsg.java"


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


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Lcom/codemao/creativestore/bean/BaseJsonBean;-><init>()V

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

    .line 11
    iget-object v0, p0, Lcom/codemao/creativestore/bean/ActorDeleteMsg;->actor_ids:Ljava/util/List;

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

    .line 15
    iput-object p1, p0, Lcom/codemao/creativestore/bean/ActorDeleteMsg;->actor_ids:Ljava/util/List;

    return-void
.end method
