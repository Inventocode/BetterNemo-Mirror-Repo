.class public Lcom/codemao/nemo/event/UpdateWorkInfoKnEvents;
.super Ljava/lang/Object;
.source "UpdateWorkInfoKnEvents.java"


# instance fields
.field private type:I

.field private workDetailInfo:Lcom/codemao/nemo/bean/CreativeWorkDetailKnInfo;

.field private workId:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static creatPublishEvents(Lcom/codemao/nemo/bean/CreativeWorkDetailKnInfo;)Lcom/codemao/nemo/event/UpdateWorkInfoKnEvents;
    .registers 3

    .line 99
    new-instance v0, Lcom/codemao/nemo/event/UpdateWorkInfoKnEvents;

    invoke-direct {v0}, Lcom/codemao/nemo/event/UpdateWorkInfoKnEvents;-><init>()V

    const/4 v1, 0x5

    .line 100
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/event/UpdateWorkInfoKnEvents;->setType(I)V

    .line 101
    invoke-virtual {v0, p0}, Lcom/codemao/nemo/event/UpdateWorkInfoKnEvents;->setWorkDetailInfo(Lcom/codemao/nemo/bean/CreativeWorkDetailKnInfo;)V

    return-object v0
.end method


# virtual methods
.method public getType()I
    .registers 2

    .line 174
    iget v0, p0, Lcom/codemao/nemo/event/UpdateWorkInfoKnEvents;->type:I

    return v0
.end method

.method public getWorkDetailInfo()Lcom/codemao/nemo/bean/CreativeWorkDetailKnInfo;
    .registers 2

    .line 206
    iget-object v0, p0, Lcom/codemao/nemo/event/UpdateWorkInfoKnEvents;->workDetailInfo:Lcom/codemao/nemo/bean/CreativeWorkDetailKnInfo;

    return-object v0
.end method

.method public getWorkId()J
    .registers 3

    .line 182
    iget-wide v0, p0, Lcom/codemao/nemo/event/UpdateWorkInfoKnEvents;->workId:J

    return-wide v0
.end method

.method public setType(I)V
    .registers 2

    .line 178
    iput p1, p0, Lcom/codemao/nemo/event/UpdateWorkInfoKnEvents;->type:I

    return-void
.end method

.method public setWorkDetailInfo(Lcom/codemao/nemo/bean/CreativeWorkDetailKnInfo;)V
    .registers 4

    .line 226
    iput-object p1, p0, Lcom/codemao/nemo/event/UpdateWorkInfoKnEvents;->workDetailInfo:Lcom/codemao/nemo/bean/CreativeWorkDetailKnInfo;

    .line 227
    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/codemao/nemo/event/UpdateWorkInfoKnEvents;->workId:J

    .line 228
    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getDescription()Ljava/lang/String;

    .line 229
    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getWork_name()Ljava/lang/String;

    .line 230
    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->isFork_enable()Z

    return-void
.end method
