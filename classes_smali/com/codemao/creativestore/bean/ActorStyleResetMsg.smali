.class public Lcom/codemao/creativestore/bean/ActorStyleResetMsg;
.super Lcom/codemao/creativestore/bean/BaseJsonBean;
.source "ActorStyleResetMsg.java"


# instance fields
.field private current_style_id:Ljava/lang/String;

.field private entity_id:Ljava/lang/String;

.field private style_ids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 14
    invoke-direct {p0}, Lcom/codemao/creativestore/bean/BaseJsonBean;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativestore/bean/ActorStyleResetMsg;->style_ids:Ljava/util/List;

    .line 16
    iput-object p1, p0, Lcom/codemao/creativestore/bean/ActorStyleResetMsg;->entity_id:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/codemao/creativestore/bean/ActorStyleResetMsg;->current_style_id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCurrent_style_id()Ljava/lang/String;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/codemao/creativestore/bean/ActorStyleResetMsg;->current_style_id:Ljava/lang/String;

    return-object v0
.end method

.method public getEntity_id()Ljava/lang/String;
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/codemao/creativestore/bean/ActorStyleResetMsg;->entity_id:Ljava/lang/String;

    return-object v0
.end method

.method public getStyle_ids()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/codemao/creativestore/bean/ActorStyleResetMsg;->style_ids:Ljava/util/List;

    return-object v0
.end method

.method public setCurrent_style_id(Ljava/lang/String;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/codemao/creativestore/bean/ActorStyleResetMsg;->current_style_id:Ljava/lang/String;

    return-void
.end method

.method public setEntity_id(Ljava/lang/String;)V
    .registers 2

    .line 34
    iput-object p1, p0, Lcom/codemao/creativestore/bean/ActorStyleResetMsg;->entity_id:Ljava/lang/String;

    return-void
.end method

.method public setStyle_ids(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lcom/codemao/creativestore/bean/ActorStyleResetMsg;->style_ids:Ljava/util/List;

    return-void
.end method
