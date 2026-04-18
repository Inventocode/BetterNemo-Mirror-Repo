.class public Lcom/codemao/nemo/bean/GetActorBlockMsg;
.super Lcom/codemao/nemo/bean/BaseJsonBean;
.source "GetActorBlockMsg.java"


# instance fields
.field private entity_id:Ljava/lang/String;

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

.field private variables_track:Ljava/util/Map;
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

    .line 7
    invoke-direct {p0}, Lcom/codemao/nemo/bean/BaseJsonBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getEntity_id()Ljava/lang/String;
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/codemao/nemo/bean/GetActorBlockMsg;->entity_id:Ljava/lang/String;

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

    .line 22
    iget-object v0, p0, Lcom/codemao/nemo/bean/GetActorBlockMsg;->styles_track:Ljava/util/Map;

    return-object v0
.end method

.method public getVariables_track()Ljava/util/Map;
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

    .line 30
    iget-object v0, p0, Lcom/codemao/nemo/bean/GetActorBlockMsg;->variables_track:Ljava/util/Map;

    return-object v0
.end method

.method public setEntity_id(Ljava/lang/String;)V
    .registers 2

    .line 18
    iput-object p1, p0, Lcom/codemao/nemo/bean/GetActorBlockMsg;->entity_id:Ljava/lang/String;

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

    .line 26
    iput-object p1, p0, Lcom/codemao/nemo/bean/GetActorBlockMsg;->styles_track:Ljava/util/Map;

    return-void
.end method

.method public setVariables_track(Ljava/util/Map;)V
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

    .line 34
    iput-object p1, p0, Lcom/codemao/nemo/bean/GetActorBlockMsg;->variables_track:Ljava/util/Map;

    return-void
.end method
