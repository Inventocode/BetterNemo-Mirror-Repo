.class public Lcom/codemao/creativestore/bean/AddAcotorMsgInfo;
.super Lcom/codemao/creativestore/bean/BaseJsonBean;
.source "AddAcotorMsgInfo.java"


# instance fields
.field private actors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/ActorVO;",
            ">;"
        }
    .end annotation
.end field

.field private indexes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private scene_id:Ljava/lang/String;

.field private styles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/StyleVO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Lcom/codemao/creativestore/bean/BaseJsonBean;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativestore/bean/AddAcotorMsgInfo;->actors:Ljava/util/List;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativestore/bean/AddAcotorMsgInfo;->styles:Ljava/util/List;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativestore/bean/AddAcotorMsgInfo;->indexes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getActorVOS()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/ActorVO;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/codemao/creativestore/bean/AddAcotorMsgInfo;->actors:Ljava/util/List;

    return-object v0
.end method

.method public getIndexes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/codemao/creativestore/bean/AddAcotorMsgInfo;->indexes:Ljava/util/List;

    return-object v0
.end method

.method public getScene_id()Ljava/lang/String;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/codemao/creativestore/bean/AddAcotorMsgInfo;->scene_id:Ljava/lang/String;

    return-object v0
.end method

.method public getStyles()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/StyleVO;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/codemao/creativestore/bean/AddAcotorMsgInfo;->styles:Ljava/util/List;

    return-object v0
.end method

.method public setActorVOS(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/ActorVO;",
            ">;)V"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lcom/codemao/creativestore/bean/AddAcotorMsgInfo;->actors:Ljava/util/List;

    return-void
.end method

.method public setIndexes(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/codemao/creativestore/bean/AddAcotorMsgInfo;->indexes:Ljava/util/List;

    return-void
.end method

.method public setScene_id(Ljava/lang/String;)V
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/codemao/creativestore/bean/AddAcotorMsgInfo;->scene_id:Ljava/lang/String;

    return-void
.end method

.method public setStyles(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/StyleVO;",
            ">;)V"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcom/codemao/creativestore/bean/AddAcotorMsgInfo;->styles:Ljava/util/List;

    return-void
.end method
