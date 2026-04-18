.class public Lcom/codemao/creativestore/bean/InitNewbeeMsg;
.super Lcom/codemao/creativestore/bean/BaseJsonBean;
.source "InitNewbeeMsg.java"


# instance fields
.field private newbeeGuideInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/NewbeeGuideInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/codemao/creativestore/bean/NewbeeGuideInfo;)V
    .registers 3

    .line 15
    invoke-direct {p0}, Lcom/codemao/creativestore/bean/BaseJsonBean;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativestore/bean/InitNewbeeMsg;->newbeeGuideInfos:Ljava/util/List;

    .line 17
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/NewbeeGuideInfo;",
            ">;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Lcom/codemao/creativestore/bean/BaseJsonBean;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/codemao/creativestore/bean/InitNewbeeMsg;->newbeeGuideInfos:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getNewbeeGuideInfos()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/NewbeeGuideInfo;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/codemao/creativestore/bean/InitNewbeeMsg;->newbeeGuideInfos:Ljava/util/List;

    return-object v0
.end method

.method public setNewbeeGuideInfos(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/NewbeeGuideInfo;",
            ">;)V"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lcom/codemao/creativestore/bean/InitNewbeeMsg;->newbeeGuideInfos:Ljava/util/List;

    return-void
.end method
