.class public Lcom/codemao/creativestore/bean/ActorProptyChangeMsg;
.super Lcom/codemao/creativestore/bean/BaseJsonBean;
.source "ActorProptyChangeMsg.java"


# instance fields
.field private actor_id:Ljava/lang/String;

.field private property_name:Ljava/lang/String;

.field private value:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Lcom/codemao/creativestore/bean/BaseJsonBean;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/codemao/creativestore/bean/ActorProptyChangeMsg;->actor_id:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/codemao/creativestore/bean/ActorProptyChangeMsg;->property_name:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/codemao/creativestore/bean/ActorProptyChangeMsg;->value:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getActor_id()Ljava/lang/String;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/codemao/creativestore/bean/ActorProptyChangeMsg;->actor_id:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty_name()Ljava/lang/String;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/codemao/creativestore/bean/ActorProptyChangeMsg;->property_name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/codemao/creativestore/bean/ActorProptyChangeMsg;->value:Ljava/util/Map;

    return-object v0
.end method

.method public setActor_id(Ljava/lang/String;)V
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/codemao/creativestore/bean/ActorProptyChangeMsg;->actor_id:Ljava/lang/String;

    return-void
.end method

.method public setProperty_name(Ljava/lang/String;)V
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/codemao/creativestore/bean/ActorProptyChangeMsg;->property_name:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/codemao/creativestore/bean/ActorProptyChangeMsg;->value:Ljava/util/Map;

    return-void
.end method
