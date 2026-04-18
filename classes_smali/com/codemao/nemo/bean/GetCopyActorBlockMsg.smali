.class public Lcom/codemao/nemo/bean/GetCopyActorBlockMsg;
.super Lcom/codemao/nemo/bean/BaseJsonBean;
.source "GetCopyActorBlockMsg.java"


# instance fields
.field private new_actor_id:Ljava/lang/String;

.field private original_actor_id:Ljava/lang/String;

.field private styles_track:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Lcom/codemao/nemo/bean/BaseJsonBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getNew_actor_id()Ljava/lang/String;
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/codemao/nemo/bean/GetCopyActorBlockMsg;->new_actor_id:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginal_actor_id()Ljava/lang/String;
    .registers 2

    .line 13
    iget-object v0, p0, Lcom/codemao/nemo/bean/GetCopyActorBlockMsg;->original_actor_id:Ljava/lang/String;

    return-object v0
.end method

.method public getStyles_track()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/codemao/nemo/bean/GetCopyActorBlockMsg;->styles_track:Ljava/util/Map;

    return-object v0
.end method

.method public setNew_actor_id(Ljava/lang/String;)V
    .registers 2

    .line 25
    iput-object p1, p0, Lcom/codemao/nemo/bean/GetCopyActorBlockMsg;->new_actor_id:Ljava/lang/String;

    return-void
.end method

.method public setOriginal_actor_id(Ljava/lang/String;)V
    .registers 2

    .line 17
    iput-object p1, p0, Lcom/codemao/nemo/bean/GetCopyActorBlockMsg;->original_actor_id:Ljava/lang/String;

    return-void
.end method

.method public setStyles_track(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcom/codemao/nemo/bean/GetCopyActorBlockMsg;->styles_track:Ljava/util/Map;

    return-void
.end method
