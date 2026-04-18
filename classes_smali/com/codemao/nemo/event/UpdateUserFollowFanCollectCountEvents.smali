.class public Lcom/codemao/nemo/event/UpdateUserFollowFanCollectCountEvents;
.super Ljava/lang/Object;
.source "UpdateUserFollowFanCollectCountEvents.java"


# instance fields
.field private count:I

.field private type:I

.field private userId:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static creatUpdateCollectCountEvents(JI)Lcom/codemao/nemo/event/UpdateUserFollowFanCollectCountEvents;
    .registers 5

    .line 37
    new-instance v0, Lcom/codemao/nemo/event/UpdateUserFollowFanCollectCountEvents;

    invoke-direct {v0}, Lcom/codemao/nemo/event/UpdateUserFollowFanCollectCountEvents;-><init>()V

    const/4 v1, 0x2

    .line 38
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/event/UpdateUserFollowFanCollectCountEvents;->setType(I)V

    .line 39
    invoke-virtual {v0, p0, p1}, Lcom/codemao/nemo/event/UpdateUserFollowFanCollectCountEvents;->setUserId(J)V

    .line 40
    invoke-virtual {v0, p2}, Lcom/codemao/nemo/event/UpdateUserFollowFanCollectCountEvents;->setCount(I)V

    return-object v0
.end method

.method public static creatUpdateFansCountEvents(JI)Lcom/codemao/nemo/event/UpdateUserFollowFanCollectCountEvents;
    .registers 5

    .line 29
    new-instance v0, Lcom/codemao/nemo/event/UpdateUserFollowFanCollectCountEvents;

    invoke-direct {v0}, Lcom/codemao/nemo/event/UpdateUserFollowFanCollectCountEvents;-><init>()V

    const/4 v1, 0x1

    .line 30
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/event/UpdateUserFollowFanCollectCountEvents;->setType(I)V

    .line 31
    invoke-virtual {v0, p0, p1}, Lcom/codemao/nemo/event/UpdateUserFollowFanCollectCountEvents;->setUserId(J)V

    .line 32
    invoke-virtual {v0, p2}, Lcom/codemao/nemo/event/UpdateUserFollowFanCollectCountEvents;->setCount(I)V

    return-object v0
.end method

.method public static creatUpdateFollowCountEvents(JI)Lcom/codemao/nemo/event/UpdateUserFollowFanCollectCountEvents;
    .registers 5

    .line 20
    new-instance v0, Lcom/codemao/nemo/event/UpdateUserFollowFanCollectCountEvents;

    invoke-direct {v0}, Lcom/codemao/nemo/event/UpdateUserFollowFanCollectCountEvents;-><init>()V

    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/event/UpdateUserFollowFanCollectCountEvents;->setType(I)V

    .line 22
    invoke-virtual {v0, p0, p1}, Lcom/codemao/nemo/event/UpdateUserFollowFanCollectCountEvents;->setUserId(J)V

    .line 23
    invoke-virtual {v0, p2}, Lcom/codemao/nemo/event/UpdateUserFollowFanCollectCountEvents;->setCount(I)V

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 61
    iget v0, p0, Lcom/codemao/nemo/event/UpdateUserFollowFanCollectCountEvents;->count:I

    return v0
.end method

.method public getType()I
    .registers 2

    .line 45
    iget v0, p0, Lcom/codemao/nemo/event/UpdateUserFollowFanCollectCountEvents;->type:I

    return v0
.end method

.method public getUserId()J
    .registers 3

    .line 53
    iget-wide v0, p0, Lcom/codemao/nemo/event/UpdateUserFollowFanCollectCountEvents;->userId:J

    return-wide v0
.end method

.method public setCount(I)V
    .registers 2

    .line 65
    iput p1, p0, Lcom/codemao/nemo/event/UpdateUserFollowFanCollectCountEvents;->count:I

    return-void
.end method

.method public setType(I)V
    .registers 2

    .line 49
    iput p1, p0, Lcom/codemao/nemo/event/UpdateUserFollowFanCollectCountEvents;->type:I

    return-void
.end method

.method public setUserId(J)V
    .registers 3

    .line 57
    iput-wide p1, p0, Lcom/codemao/nemo/event/UpdateUserFollowFanCollectCountEvents;->userId:J

    return-void
.end method
