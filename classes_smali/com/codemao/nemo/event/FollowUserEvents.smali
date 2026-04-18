.class public Lcom/codemao/nemo/event/FollowUserEvents;
.super Ljava/lang/Object;
.source "FollowUserEvents.java"


# instance fields
.field private type:I

.field private userId:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static creatCancelFollowUserEvents(J)Lcom/codemao/nemo/event/FollowUserEvents;
    .registers 4

    .line 23
    new-instance v0, Lcom/codemao/nemo/event/FollowUserEvents;

    invoke-direct {v0}, Lcom/codemao/nemo/event/FollowUserEvents;-><init>()V

    const/4 v1, 0x1

    .line 24
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/event/FollowUserEvents;->setType(I)V

    .line 25
    invoke-virtual {v0, p0, p1}, Lcom/codemao/nemo/event/FollowUserEvents;->setUserId(J)V

    return-object v0
.end method

.method public static creatFollowUserEvents(J)Lcom/codemao/nemo/event/FollowUserEvents;
    .registers 4

    .line 16
    new-instance v0, Lcom/codemao/nemo/event/FollowUserEvents;

    invoke-direct {v0}, Lcom/codemao/nemo/event/FollowUserEvents;-><init>()V

    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/event/FollowUserEvents;->setType(I)V

    .line 18
    invoke-virtual {v0, p0, p1}, Lcom/codemao/nemo/event/FollowUserEvents;->setUserId(J)V

    return-object v0
.end method


# virtual methods
.method public getType()I
    .registers 2

    .line 30
    iget v0, p0, Lcom/codemao/nemo/event/FollowUserEvents;->type:I

    return v0
.end method

.method public getUserId()J
    .registers 3

    .line 38
    iget-wide v0, p0, Lcom/codemao/nemo/event/FollowUserEvents;->userId:J

    return-wide v0
.end method

.method public setType(I)V
    .registers 2

    .line 34
    iput p1, p0, Lcom/codemao/nemo/event/FollowUserEvents;->type:I

    return-void
.end method

.method public setUserId(J)V
    .registers 3

    .line 42
    iput-wide p1, p0, Lcom/codemao/nemo/event/FollowUserEvents;->userId:J

    return-void
.end method
