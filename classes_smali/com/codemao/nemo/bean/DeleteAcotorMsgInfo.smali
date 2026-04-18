.class public Lcom/codemao/nemo/bean/DeleteAcotorMsgInfo;
.super Lcom/codemao/nemo/bean/BaseJsonBean;
.source "DeleteAcotorMsgInfo.java"


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
.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Lcom/codemao/nemo/bean/BaseJsonBean;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/bean/DeleteAcotorMsgInfo;->actor_ids:Ljava/util/List;

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
    iget-object v0, p0, Lcom/codemao/nemo/bean/DeleteAcotorMsgInfo;->actor_ids:Ljava/util/List;

    return-object v0
.end method

.method public getScene_id()Ljava/lang/String;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/codemao/nemo/bean/DeleteAcotorMsgInfo;->scene_id:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/codemao/nemo/bean/DeleteAcotorMsgInfo;->actor_ids:Ljava/util/List;

    return-void
.end method

.method public setScene_id(Ljava/lang/String;)V
    .registers 2

    .line 22
    iput-object p1, p0, Lcom/codemao/nemo/bean/DeleteAcotorMsgInfo;->scene_id:Ljava/lang/String;

    return-void
.end method
