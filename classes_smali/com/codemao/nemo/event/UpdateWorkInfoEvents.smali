.class public Lcom/codemao/nemo/event/UpdateWorkInfoEvents;
.super Ljava/lang/Object;
.source "UpdateWorkInfoEvents.java"


# instance fields
.field private collecTime:I

.field private commentTime:I

.field isCollect:Z

.field private isError:Z

.field isPraise:Z

.field private newWorkName:Ljava/lang/String;

.field private tag:I

.field private type:I

.field private viewTime:I

.field private workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

.field private workId:J


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->isError:Z

    return-void
.end method

.method public static creatCancelPublishEvents(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;)Lcom/codemao/nemo/event/UpdateWorkInfoEvents;
    .registers 3

    .line 111
    new-instance v0, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;

    invoke-direct {v0}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;-><init>()V

    const/4 v1, 0x6

    .line 112
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->setType(I)V

    .line 113
    invoke-virtual {v0, p0}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->setWorkDetailInfo(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;)V

    return-object v0
.end method

.method public static creatCancelPublishOtherEvents(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;)Lcom/codemao/nemo/event/UpdateWorkInfoEvents;
    .registers 3

    .line 117
    new-instance v0, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;

    invoke-direct {v0}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;-><init>()V

    const/4 v1, 0x6

    .line 118
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->setType(I)V

    .line 119
    invoke-virtual {v0, p0}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->setWorkDetailInfo(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;)V

    const/4 p0, 0x1

    .line 120
    invoke-virtual {v0, p0}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->setError(Z)V

    return-object v0
.end method

.method public static creatCollectOrCollectEvents(JZI)Lcom/codemao/nemo/event/UpdateWorkInfoEvents;
    .registers 6

    .line 65
    new-instance v0, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;

    invoke-direct {v0}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;-><init>()V

    const/16 v1, 0x8

    .line 66
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->setType(I)V

    .line 67
    invoke-virtual {v0, p0, p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->setWorkId(J)V

    .line 68
    invoke-virtual {v0, p3}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->setTag(I)V

    .line 69
    invoke-virtual {v0, p2}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->setCollect(Z)V

    return-object v0
.end method

.method public static creatPraiseOrCancelTimeEvents(JZI)Lcom/codemao/nemo/event/UpdateWorkInfoEvents;
    .registers 6

    .line 56
    new-instance v0, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;

    invoke-direct {v0}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;-><init>()V

    const/4 v1, 0x7

    .line 57
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->setType(I)V

    .line 58
    invoke-virtual {v0, p0, p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->setWorkId(J)V

    .line 59
    invoke-virtual {v0, p3}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->setTag(I)V

    .line 60
    invoke-virtual {v0, p2}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->setPraise(Z)V

    return-object v0
.end method

.method public static creatPublishEvents(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;)Lcom/codemao/nemo/event/UpdateWorkInfoEvents;
    .registers 3

    .line 98
    new-instance v0, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;

    invoke-direct {v0}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;-><init>()V

    const/4 v1, 0x5

    .line 99
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->setType(I)V

    .line 100
    invoke-virtual {v0, p0}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->setWorkDetailInfo(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;)V

    return-object v0
.end method

.method public static creatUpdateCollectTimeEvents(JI)Lcom/codemao/nemo/event/UpdateWorkInfoEvents;
    .registers 5

    .line 90
    new-instance v0, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;

    invoke-direct {v0}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;-><init>()V

    const/4 v1, 0x2

    .line 91
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->setType(I)V

    .line 92
    invoke-virtual {v0, p0, p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->setWorkId(J)V

    .line 93
    invoke-virtual {v0, p2}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->setCollecTime(I)V

    return-object v0
.end method

.method public static creatUpdateCommentTimeEvents(JI)Lcom/codemao/nemo/event/UpdateWorkInfoEvents;
    .registers 5

    .line 82
    new-instance v0, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;

    invoke-direct {v0}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;-><init>()V

    const/4 v1, 0x4

    .line 83
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->setType(I)V

    .line 84
    invoke-virtual {v0, p0, p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->setWorkId(J)V

    .line 85
    invoke-virtual {v0, p2}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->setCommentTime(I)V

    return-object v0
.end method

.method public static creatUpdateViewTimeEvents(JI)Lcom/codemao/nemo/event/UpdateWorkInfoEvents;
    .registers 5

    .line 74
    new-instance v0, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;

    invoke-direct {v0}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;-><init>()V

    const/4 v1, 0x3

    .line 75
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->setType(I)V

    .line 76
    invoke-virtual {v0, p0, p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->setWorkId(J)V

    .line 77
    invoke-virtual {v0, p2}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->setViewTime(I)V

    return-object v0
.end method

.method public static createPublishNewEvent()Lcom/codemao/nemo/event/UpdateWorkInfoEvents;
    .registers 2

    .line 105
    new-instance v0, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;

    invoke-direct {v0}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;-><init>()V

    const/16 v1, 0x9

    .line 106
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->setType(I)V

    return-object v0
.end method


# virtual methods
.method public getCollecTime()I
    .registers 2

    .line 165
    iget v0, p0, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->collecTime:I

    return v0
.end method

.method public getCommentTime()I
    .registers 2

    .line 149
    iget v0, p0, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->commentTime:I

    return v0
.end method

.method public getNewWorkName()Ljava/lang/String;
    .registers 2

    .line 189
    iget-object v0, p0, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->newWorkName:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()I
    .registers 2

    .line 133
    iget v0, p0, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->tag:I

    return v0
.end method

.method public getType()I
    .registers 2

    .line 173
    iget v0, p0, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->type:I

    return v0
.end method

.method public getViewTime()I
    .registers 2

    .line 141
    iget v0, p0, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->viewTime:I

    return v0
.end method

.method public getWorkDetailInfo()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;
    .registers 2

    .line 205
    iget-object v0, p0, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    return-object v0
.end method

.method public getWorkId()J
    .registers 3

    .line 181
    iget-wide v0, p0, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->workId:J

    return-wide v0
.end method

.method public isCollect()Z
    .registers 2

    .line 37
    iget-boolean v0, p0, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->isCollect:Z

    return v0
.end method

.method public isError()Z
    .registers 2

    .line 125
    iget-boolean v0, p0, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->isError:Z

    return v0
.end method

.method public isPraise()Z
    .registers 2

    .line 29
    iget-boolean v0, p0, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->isPraise:Z

    return v0
.end method

.method public setCollecTime(I)V
    .registers 2

    .line 169
    iput p1, p0, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->collecTime:I

    return-void
.end method

.method public setCollect(Z)V
    .registers 2

    .line 41
    iput-boolean p1, p0, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->isCollect:Z

    return-void
.end method

.method public setCommentTime(I)V
    .registers 2

    .line 153
    iput p1, p0, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->commentTime:I

    return-void
.end method

.method public setError(Z)V
    .registers 2

    .line 129
    iput-boolean p1, p0, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->isError:Z

    return-void
.end method

.method public setPraise(Z)V
    .registers 2

    .line 33
    iput-boolean p1, p0, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->isPraise:Z

    return-void
.end method

.method public setTag(I)V
    .registers 2

    .line 137
    iput p1, p0, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->tag:I

    return-void
.end method

.method public setType(I)V
    .registers 2

    .line 177
    iput p1, p0, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->type:I

    return-void
.end method

.method public setViewTime(I)V
    .registers 2

    .line 145
    iput p1, p0, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->viewTime:I

    return-void
.end method

.method public setWorkDetailInfo(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;)V
    .registers 4

    .line 225
    iput-object p1, p0, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    .line 226
    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->workId:J

    .line 227
    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getDescription()Ljava/lang/String;

    .line 228
    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getWork_name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->newWorkName:Ljava/lang/String;

    .line 229
    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->isFork_enable()Z

    return-void
.end method

.method public setWorkId(J)V
    .registers 3

    .line 185
    iput-wide p1, p0, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->workId:J

    return-void
.end method
