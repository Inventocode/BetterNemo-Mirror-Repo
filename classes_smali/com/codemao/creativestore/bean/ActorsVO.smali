.class public Lcom/codemao/creativestore/bean/ActorsVO;
.super Lcom/codemao/creativestore/bean/BaseJsonBean;
.source "ActorsVO.java"


# instance fields
.field private actors_dict:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/codemao/creativestore/bean/ActorVO;",
            ">;"
        }
    .end annotation
.end field

.field private current_actor:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Lcom/codemao/creativestore/bean/BaseJsonBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getActors_dict()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/codemao/creativestore/bean/ActorVO;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/codemao/creativestore/bean/ActorsVO;->actors_dict:Ljava/util/Map;

    return-object v0
.end method

.method public getCurrent_actor()Ljava/lang/String;
    .registers 2

    .line 11
    iget-object v0, p0, Lcom/codemao/creativestore/bean/ActorsVO;->current_actor:Ljava/lang/String;

    return-object v0
.end method

.method public setActors_dict(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/codemao/creativestore/bean/ActorVO;",
            ">;)V"
        }
    .end annotation

    .line 23
    iput-object p1, p0, Lcom/codemao/creativestore/bean/ActorsVO;->actors_dict:Ljava/util/Map;

    return-void
.end method

.method public setCurrent_actor(Ljava/lang/String;)V
    .registers 2

    .line 15
    iput-object p1, p0, Lcom/codemao/creativestore/bean/ActorsVO;->current_actor:Ljava/lang/String;

    return-void
.end method
